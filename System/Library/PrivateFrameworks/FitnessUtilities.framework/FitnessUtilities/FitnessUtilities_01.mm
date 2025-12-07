unint64_t sub_24B7D2858()
{
  result = qword_27F059B20;
  if (!qword_27F059B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059B20);
  }

  return result;
}

unint64_t sub_24B7D28AC()
{
  result = qword_27F059B28;
  if (!qword_27F059B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059B28);
  }

  return result;
}

uint64_t DynamicPredicateEquatableValue.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (v3 <= 3)
  {
    if (*(v1 + 16) <= 1u)
    {
      if (!*(v1 + 16))
      {
        MEMORY[0x24C24AAF0](0);
        v4 = v2 + 1;
        return MEMORY[0x24C24AAF0](v4);
      }

      v6 = 1;
LABEL_18:
      MEMORY[0x24C24AAF0](v6);
      v4 = v2;
      return MEMORY[0x24C24AAF0](v4);
    }

    if (v3 != 2)
    {
      v6 = 3;
      goto LABEL_18;
    }

    v5 = 2;
    goto LABEL_21;
  }

  if (*(v1 + 16) > 5u)
  {
    if (v3 == 6)
    {
      v5 = 6;
    }

    else
    {
      v5 = 7;
    }

LABEL_21:
    MEMORY[0x24C24AAF0](v5);

    return sub_24B7DAAE8();
  }

  if (v3 == 4)
  {
    MEMORY[0x24C24AAF0](4);
  }

  else
  {
    MEMORY[0x24C24AAF0](5);
  }

  sub_24B7DAAE8();
}

uint64_t DynamicPredicateEquatableValue.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_24B7DB0F8();
  DynamicPredicateEquatableValue.hash(into:)(v3);
  return sub_24B7DB128();
}

uint64_t sub_24B7D2BB8()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_24B7DB0F8();
  DynamicPredicateEquatableValue.hash(into:)(v3);
  return sub_24B7DB128();
}

uint64_t sub_24B7D2C10(uint64_t a1)
{
  sub_24B7DB0F8();
  DynamicPredicateEquatableValue.hash(into:)(v2);
  return sub_24B7DB128();
}

BOOL _s16FitnessUtilities30DynamicPredicateEquatableValueO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 3)
  {
    if (*(a1 + 16) <= 1u)
    {
      if (!*(a1 + 16))
      {
        if (!*(a2 + 16))
        {
          sub_24B7C3854(*a1, v3, 0);
          sub_24B7C3854(v5, v6, 0);
          return v5 == v2;
        }

        goto LABEL_33;
      }

      if (v7 == 1)
      {
        sub_24B7C3854(*a1, v3, 1u);
        v16 = v5;
        v17 = v6;
        v18 = 1;
LABEL_26:
        sub_24B7C3854(v16, v17, v18);
        return v2 == v5;
      }

      goto LABEL_33;
    }

    if (v4 != 2)
    {
      if (v7 == 3)
      {
        sub_24B7C3854(*a1, v3, 3u);
        v16 = v5;
        v17 = v6;
        v18 = 3;
        goto LABEL_26;
      }

LABEL_33:
      sub_24B7C33EC(v5, v6, v7);
      sub_24B7C3854(v2, v3, v4);
      sub_24B7C3854(v5, v6, v7);
      return 0;
    }

    if (v7 == 2)
    {
      if (v2 == v5 && v3 == v6)
      {
        sub_24B7C33EC(*a1, v3, 2u);
        sub_24B7C33EC(v2, v3, 2u);
        sub_24B7C3854(v2, v3, 2u);
        v13 = v2;
        v14 = v3;
        v15 = 2;
LABEL_31:
        sub_24B7C3854(v13, v14, v15);
        return 1;
      }

      v9 = sub_24B7DB088();
      sub_24B7C33EC(v5, v6, 2u);
      sub_24B7C33EC(v2, v3, 2u);
      sub_24B7C3854(v2, v3, 2u);
      v10 = v5;
      v11 = v6;
      v12 = 2;
      goto LABEL_37;
    }

LABEL_32:

    goto LABEL_33;
  }

  if (*(a1 + 16) <= 5u)
  {
    if (v4 == 4)
    {
      if (v7 != 4)
      {
        goto LABEL_33;
      }

      v9 = sub_24B7C5DEC(*a1, *a2);
      sub_24B7C3854(v2, v3, 4u);
      v10 = v5;
      v11 = v6;
      v12 = 4;
    }

    else
    {
      if (v7 != 5)
      {
        goto LABEL_33;
      }

      v9 = sub_24B7C5FA8(*a1, *a2);
      sub_24B7C3854(v2, v3, 5u);
      v10 = v5;
      v11 = v6;
      v12 = 5;
    }

    goto LABEL_37;
  }

  if (v4 != 6)
  {
    if (v7 == 7)
    {
      if (v2 == v5 && v3 == v6)
      {
        sub_24B7C33EC(*a1, v3, 7u);
        sub_24B7C33EC(v2, v3, 7u);
        sub_24B7C3854(v2, v3, 7u);
        v13 = v2;
        v14 = v3;
        v15 = 7;
        goto LABEL_31;
      }

      v9 = sub_24B7DB088();
      sub_24B7C33EC(v5, v6, 7u);
      sub_24B7C33EC(v2, v3, 7u);
      sub_24B7C3854(v2, v3, 7u);
      v10 = v5;
      v11 = v6;
      v12 = 7;
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v7 != 6)
  {
    goto LABEL_32;
  }

  if (v2 == v5 && v3 == v6)
  {
    sub_24B7C33EC(*a1, v3, 6u);
    sub_24B7C33EC(v2, v3, 6u);
    sub_24B7C3854(v2, v3, 6u);
    v13 = v2;
    v14 = v3;
    v15 = 6;
    goto LABEL_31;
  }

  v9 = sub_24B7DB088();
  sub_24B7C33EC(v5, v6, 6u);
  sub_24B7C33EC(v2, v3, 6u);
  sub_24B7C3854(v2, v3, 6u);
  v10 = v5;
  v11 = v6;
  v12 = 6;
LABEL_37:
  sub_24B7C3854(v10, v11, v12);
  return v9 & 1;
}

unint64_t sub_24B7D302C()
{
  result = qword_27F059B30;
  if (!qword_27F059B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059B30);
  }

  return result;
}

unint64_t sub_24B7D3084()
{
  result = qword_27F059B38;
  if (!qword_27F059B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059B38);
  }

  return result;
}

uint64_t sub_24B7D30D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 >= 8)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B7D3114(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_24B7D315C(uint64_t result, unsigned int a2)
{
  if (a2 > 7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 8;
    LOBYTE(a2) = 8;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DynamicPredicateEquatableValue.Stripped(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicPredicateEquatableValue.Stripped(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DynamicPredicateEquatableValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DynamicPredicateEquatableValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B7D34B0()
{
  result = qword_27F059B40;
  if (!qword_27F059B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059B40);
  }

  return result;
}

unint64_t sub_24B7D3508()
{
  result = qword_27F059B48;
  if (!qword_27F059B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059B48);
  }

  return result;
}

unint64_t sub_24B7D3560()
{
  result = qword_27F059B50;
  if (!qword_27F059B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059B50);
  }

  return result;
}

unint64_t sub_24B7D35B8()
{
  result = qword_27F059B58;
  if (!qword_27F059B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059B58);
  }

  return result;
}

unint64_t sub_24B7D3610()
{
  result = qword_27F059B60;
  if (!qword_27F059B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059B60);
  }

  return result;
}

unint64_t sub_24B7D3668()
{
  result = qword_27F059B68;
  if (!qword_27F059B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059B68);
  }

  return result;
}

unint64_t sub_24B7D36C0()
{
  result = qword_27F059B70;
  if (!qword_27F059B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059B70);
  }

  return result;
}

unint64_t sub_24B7D3718()
{
  result = qword_27F059B78;
  if (!qword_27F059B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059B78);
  }

  return result;
}

unint64_t sub_24B7D3770()
{
  result = qword_27F059B80;
  if (!qword_27F059B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059B80);
  }

  return result;
}

unint64_t sub_24B7D37C8()
{
  result = qword_27F059B88;
  if (!qword_27F059B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059B88);
  }

  return result;
}

unint64_t sub_24B7D3820()
{
  result = qword_27F059B90;
  if (!qword_27F059B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059B90);
  }

  return result;
}

unint64_t sub_24B7D3878()
{
  result = qword_27F059B98;
  if (!qword_27F059B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059B98);
  }

  return result;
}

unint64_t sub_24B7D38D0()
{
  result = qword_27F059BA0;
  if (!qword_27F059BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059BA0);
  }

  return result;
}

unint64_t sub_24B7D3928()
{
  result = qword_27F059BA8;
  if (!qword_27F059BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059BA8);
  }

  return result;
}

unint64_t sub_24B7D3980()
{
  result = qword_27F059BB0;
  if (!qword_27F059BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059BB0);
  }

  return result;
}

unint64_t sub_24B7D39D8()
{
  result = qword_27F059BB8;
  if (!qword_27F059BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059BB8);
  }

  return result;
}

unint64_t sub_24B7D3A30()
{
  result = qword_27F059BC0;
  if (!qword_27F059BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059BC0);
  }

  return result;
}

unint64_t sub_24B7D3A88()
{
  result = qword_27F059BC8;
  if (!qword_27F059BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059BC8);
  }

  return result;
}

unint64_t sub_24B7D3AE0()
{
  result = qword_27F059BD0;
  if (!qword_27F059BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059BD0);
  }

  return result;
}

unint64_t sub_24B7D3B38()
{
  result = qword_27F059BD8;
  if (!qword_27F059BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059BD8);
  }

  return result;
}

unint64_t sub_24B7D3B90()
{
  result = qword_27F059BE0;
  if (!qword_27F059BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059BE0);
  }

  return result;
}

unint64_t sub_24B7D3BE8()
{
  result = qword_27F059BE8;
  if (!qword_27F059BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059BE8);
  }

  return result;
}

unint64_t sub_24B7D3C40()
{
  result = qword_27F059BF0;
  if (!qword_27F059BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059BF0);
  }

  return result;
}

unint64_t sub_24B7D3C98()
{
  result = qword_27F059BF8;
  if (!qword_27F059BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059BF8);
  }

  return result;
}

unint64_t sub_24B7D3CF0()
{
  result = qword_27F059C00;
  if (!qword_27F059C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059C00);
  }

  return result;
}

unint64_t sub_24B7D3D48()
{
  result = qword_27F059C08;
  if (!qword_27F059C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059C08);
  }

  return result;
}

unint64_t sub_24B7D3DA0()
{
  result = qword_27F059C10;
  if (!qword_27F059C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059C10);
  }

  return result;
}

uint64_t sub_24B7D3DF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5463696D616E7964 && a2 == 0xEF657A6953657079;
  if (v4 || (sub_24B7DB088() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A695364697267 && a2 == 0xED00007373616C43 || (sub_24B7DB088() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B7DF850 == a2 || (sub_24B7DB088() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656765746E69 && a2 == 0xE700000000000000 || (sub_24B7DB088() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6874615079656BLL && a2 == 0xE700000000000000 || (sub_24B7DB088() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_24B7DB088() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_24B7DB088() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024B7DF870 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24B7DB088();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

char *sub_24B7D40AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059C18, &unk_24B7DE9C0);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t AsyncSequence.erased()(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_24B7DAD98();
}

uint64_t sub_24B7D42D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24B7BB190;

  return sub_24B7D42C0();
}

uint64_t sub_24B7D4388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[1] = a1;
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B7DACB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - v10;
  sub_24B7DA9C8();
  sub_24B7DAD18();
  swift_getTupleTypeMetadata2();
  (*(v5 + 16))(v7, a2, a3);
  sub_24B7DACF8();
  return (*(v9 + 8))(v11, v8);
}

uint64_t AsyncStreamPublisher.publish<>()()
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059C20, &qword_24B7DE9E0);
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = &v21 - v2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059C28, &qword_24B7DE9E8);
  MEMORY[0x28223BE20](v22);
  v5 = &v21 - v4;
  swift_beginAccess();
  v6 = *(v0 + 112);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = (v1 + 8);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v9; result = sub_24B7D5094(v5))
  {
    v14 = i;
LABEL_9:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(v6 + 48);
    v18 = sub_24B7DA9C8();
    (*(*(v18 - 8) + 16))(v5, v17 + *(*(v18 - 8) + 72) * v16, v18);
    v19 = *(v6 + 56);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059C30, &qword_24B7DE9F0);
    (*(*(v20 - 8) + 16))(&v5[*(v22 + 48)], v19 + *(*(v20 - 8) + 72) * v16, v20);
    sub_24B7DACE8();
    (*v11)(v3, v23);
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++i;
    if (v9)
    {
      i = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B7D4800(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B7DAD18();
  v5 = sub_24B7DAE58();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_24B7DA9C8();
  MEMORY[0x28223BE20](v8);
  (*(v10 + 16))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v11 = *(v4 - 8);
  (*(v11 + 16))(v7, a1, v4);
  (*(v11 + 56))(v7, 0, 1, v4);
  swift_beginAccess();
  sub_24B7BAC3C();
  sub_24B7DA9F8();
  sub_24B7DAA08();
  return swift_endAccess();
}

uint64_t sub_24B7D49F0(uint64_t a1)
{
  v2 = sub_24B7DAD18();
  v3 = sub_24B7DAE58();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_24B7DA9C8();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  (*(*(v2 - 8) + 56))(v5, 1, 1, v2);
  swift_beginAccess();
  sub_24B7BAC3C();
  sub_24B7DA9F8();
  sub_24B7DAA08();
  return swift_endAccess();
}

uint64_t sub_24B7D4BA4(uint64_t a1, uint64_t a2)
{
  sub_24B7DA9C8();
  sub_24B7DAD18();
  swift_getTupleTypeMetadata2();
  return sub_24B7DAD08();
}

uint64_t sub_24B7D4C30(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = sub_24B7DA9C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0597F8, &qword_24B7DCEA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_24B7DACA8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v13 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = *(v5 + 80);
  *(v14 + 5) = a2;
  (*(v7 + 32))(&v14[v13], &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_24B7C7B14(0, 0, v11, &unk_24B7DEA80, v14);
}

uint64_t sub_24B7D4E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24B7D4E50, a4, 0);
}

uint64_t sub_24B7D4E50()
{
  sub_24B7D49F0(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24B7D4EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B7DAA28();

  return sub_24B7D4F0C(a1, v6, a2, a3);
}

unint64_t sub_24B7D4F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_24B7DAA78();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_24B7D5094(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059C28, &qword_24B7DE9E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B7D5144(uint64_t a1)
{
  v3 = *(sub_24B7DA9C8() - 8);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_24B7D4C30(a1, v4, v5);
}

uint64_t sub_24B7D51B8(uint64_t a1)
{
  v4 = *(sub_24B7DA9C8() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24B7BB190;

  return sub_24B7D4E30(a1, v6, v7, v8, v1 + v5);
}

uint64_t DynamicPredicateLogicalDescriptor.lhs.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DynamicPredicateLogicalDescriptor.rhs.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DynamicPredicateLogicalDescriptor.init(lhs:logicalOperator:rhs:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2 & 1;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_24B7D5324()
{
  v1 = 0x4F6C616369676F6CLL;
  if (*v0 != 1)
  {
    v1 = 7563378;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7563372;
  }
}

uint64_t sub_24B7D5378@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B7D6048(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B7D53A0(uint64_t a1)
{
  v2 = sub_24B7D5614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7D53DC(uint64_t a1)
{
  v2 = sub_24B7D5614();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicPredicateLogicalDescriptor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059C38, &qword_24B7DEA90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v12 = *(v1 + 8);
  v11 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7D5614();

  sub_24B7DB158();
  v14 = v8;
  v13 = 0;
  sub_24B7D5668();
  sub_24B7DB048();

  if (!v2)
  {
    v9 = v11;
    LOBYTE(v14) = v12;
    v13 = 1;
    sub_24B7D56BC();
    sub_24B7DB048();
    v14 = v9;
    v13 = 2;
    sub_24B7DB048();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B7D5614()
{
  result = qword_27F059C40;
  if (!qword_27F059C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059C40);
  }

  return result;
}

unint64_t sub_24B7D5668()
{
  result = qword_27F059C48;
  if (!qword_27F059C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059C48);
  }

  return result;
}

unint64_t sub_24B7D56BC()
{
  result = qword_27F059C50;
  if (!qword_27F059C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059C50);
  }

  return result;
}

uint64_t DynamicPredicateLogicalDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059C58, &qword_24B7DEA98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7D5614();
  sub_24B7DB148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = 0;
  sub_24B7D5980();
  sub_24B7DAFB8();
  v9 = v15;
  v14 = 1;
  sub_24B7D59D4();
  sub_24B7DAFB8();
  v13 = v15;
  v14 = 2;
  sub_24B7DAFB8();
  (*(v6 + 8))(v8, v5);
  v11 = v15;
  *a2 = v9;
  *(a2 + 8) = v13;
  *(a2 + 16) = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B7D5980()
{
  result = qword_27F059C60;
  if (!qword_27F059C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059C60);
  }

  return result;
}

unint64_t sub_24B7D59D4()
{
  result = qword_27F059C68;
  if (!qword_27F059C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059C68);
  }

  return result;
}

uint64_t DynamicPredicateLogicalDescriptor.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[2];
  DynamicPredicateDescriptor.hash(into:)(a1, v3);
  sub_24B7DAAE8();

  return DynamicPredicateDescriptor.hash(into:)(a1, v4);
}

uint64_t DynamicPredicateLogicalDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_24B7DB0F8();
  DynamicPredicateDescriptor.hash(into:)(v4, v1);
  sub_24B7DAAE8();

  DynamicPredicateDescriptor.hash(into:)(v4, v2);
  return sub_24B7DB128();
}

uint64_t sub_24B7D5B78()
{
  v1 = *v0;
  v2 = v0[2];
  sub_24B7DB0F8();
  DynamicPredicateDescriptor.hash(into:)(v4, v1);
  sub_24B7DAAE8();

  DynamicPredicateDescriptor.hash(into:)(v4, v2);
  return sub_24B7DB128();
}

uint64_t sub_24B7D5C10(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[2];
  DynamicPredicateDescriptor.hash(into:)(a1, v3);
  sub_24B7DAAE8();

  return DynamicPredicateDescriptor.hash(into:)(a1, v4);
}

uint64_t sub_24B7D5C94(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  sub_24B7DB0F8();
  DynamicPredicateDescriptor.hash(into:)(v5, v2);
  sub_24B7DAAE8();

  DynamicPredicateDescriptor.hash(into:)(v5, v3);
  return sub_24B7DB128();
}

uint64_t _s16FitnessUtilities33DynamicPredicateLogicalDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((static DynamicPredicateDescriptor.== infix(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    v6 = 29295;
  }

  else
  {
    v6 = 6581857;
  }

  if (v2)
  {
    v7 = 0xE200000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4)
  {
    v8 = 29295;
  }

  else
  {
    v8 = 6581857;
  }

  if (v4)
  {
    v9 = 0xE200000000000000;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v6 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = sub_24B7DB088();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return static DynamicPredicateDescriptor.== infix(_:_:)(v3, v5);
}

unint64_t sub_24B7D5E24()
{
  result = qword_27F059C70;
  if (!qword_27F059C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059C70);
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

uint64_t sub_24B7D5E98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24B7D5EDC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24B7D5F44()
{
  result = qword_27F059C78;
  if (!qword_27F059C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059C78);
  }

  return result;
}

unint64_t sub_24B7D5F9C()
{
  result = qword_27F059C80;
  if (!qword_27F059C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059C80);
  }

  return result;
}

unint64_t sub_24B7D5FF4()
{
  result = qword_27F059C88;
  if (!qword_27F059C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059C88);
  }

  return result;
}

uint64_t sub_24B7D6048(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7563372 && a2 == 0xE300000000000000;
  if (v3 || (sub_24B7DB088() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4F6C616369676F6CLL && a2 == 0xEF726F7461726570 || (sub_24B7DB088() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7563378 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B7DB088();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t AttributedString.isEmptyOrWhiteSpace.getter()
{
  v21 = sub_24B7DA8F8();
  v0 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059C90, &qword_24B7DEDC8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - v4;
  v6 = sub_24B7DA8D8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  sub_24B7DA8C8();
  v19 = v12;
  v20 = v7;
  (*(v7 + 16))(v10, v12, v6);
  v13 = MEMORY[0x277CC8B30];
  sub_24B7D68B4(&qword_280DD1798, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
  sub_24B7DAB38();
  sub_24B7D68B4(&qword_280DD1790, v13, MEMORY[0x277CC8B48]);
  do
  {
    sub_24B7DADD8();
    sub_24B7D68B4(&qword_280DD1780, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
    v14 = v21;
    v15 = sub_24B7DAA78();
    (*(v0 + 8))(v2, v14);
    if (v15)
    {
      break;
    }

    v16 = sub_24B7DAE28();

    (v16)(v22, 0);
    sub_24B7DADE8();
    LOBYTE(v16) = sub_24B7DAA58();
  }

  while ((v16 & 1) != 0);
  sub_24B7D6854(v5, &qword_27F059C90, &qword_24B7DEDC8);
  (*(v20 + 8))(v19, v6);
  return v15 & 1;
}

uint64_t AttributedString.mergingAttributesWith(_:mergePolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B7DA8E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059C98, &qword_24B7DEDD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_24B7DA918();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B7D67E4(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24B7D6854(v10, &qword_27F059C98, &qword_24B7DEDD0);
    v15 = sub_24B7DA908();
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    (*(v5 + 104))(v7, *MEMORY[0x277CC8B80], v4);
    v17 = sub_24B7DA908();
    sub_24B7D68B4(&qword_27F059CA0, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
    sub_24B7DA958();
    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v14, v11);
    return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
  }
}

uint64_t sub_24B7D67E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059C98, &qword_24B7DEDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B7D6854(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24B7D68B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

FitnessUtilities::DynamicPredicateLogicalOperator_optional __swiftcall DynamicPredicateLogicalOperator.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_24B7DAF38();

  if (v1 == 1)
  {
    v2.value = FitnessUtilities_DynamicPredicateLogicalOperator_or;
  }

  else
  {
    v2.value = FitnessUtilities_DynamicPredicateLogicalOperator_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t DynamicPredicateLogicalOperator.rawValue.getter(char a1)
{
  if (a1)
  {
    return 29295;
  }

  else
  {
    return 6581857;
  }
}

uint64_t sub_24B7D6974(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 29295;
  }

  else
  {
    v3 = 6581857;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (*a2)
  {
    v5 = 29295;
  }

  else
  {
    v5 = 6581857;
  }

  if (*a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B7DB088();
  }

  return v8 & 1;
}

uint64_t sub_24B7D6A08@<X0>(char *a2@<X8>)
{
  v3 = sub_24B7DAF38();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24B7D6A68(uint64_t *a1@<X8>)
{
  v2 = 6581857;
  if (*v1)
  {
    v2 = 29295;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_24B7D6B48()
{
  result = qword_27F059CA8;
  if (!qword_27F059CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059CA8);
  }

  return result;
}

uint64_t sub_24B7D6B9C()
{
  sub_24B7DB0F8();
  sub_24B7DAAE8();

  return sub_24B7DB128();
}

uint64_t sub_24B7D6C0C(uint64_t a1)
{
  sub_24B7DAAE8();
}

uint64_t sub_24B7D6C68(uint64_t a1)
{
  sub_24B7DB0F8();
  sub_24B7DAAE8();

  return sub_24B7DB128();
}

unint64_t sub_24B7D6CE4()
{
  result = qword_27F059CB0;
  if (!qword_27F059CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059CB0);
  }

  return result;
}

id NSWrappedKey.__allocating_init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_24B7D722C(a1);
  (*(*(*(v2 + 10) - 8) + 8))(a1);
  return v5;
}

id NSWrappedKey.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = sub_24B7D722C(a1);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_24B7D6EA4(void *a1)
{
  v1 = a1;
  v2 = NSWrappedKey.hash.getter();

  return v2;
}

uint64_t NSWrappedKey.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_24B7D72E4(a1, v5);
  if (!v6)
  {
    sub_24B7D7354(v5);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = sub_24B7DAA78();

  return v2 & 1;
}

uint64_t sub_24B7D7068(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_24B7DAE88();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = NSWrappedKey.isEqual(_:)(v8);

  sub_24B7D7354(v8);
  return v6 & 1;
}

id NSWrappedKey.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NSWrappedKey.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24B7D722C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  (*(*(*((*MEMORY[0x277D85000] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)], a1);
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_24B7D72E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059CB8, &qword_24B7DEF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B7D7354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059CB8, &qword_24B7DEF00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B7D73EC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B7D74C4(uint64_t a1)
{
  v2 = sub_24B7D80EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7D7500(uint64_t a1)
{
  v2 = sub_24B7D80EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7D753C()
{
  v1 = 0x6E61656C6F6F62;
  v2 = 0x7974696C61757165;
  if (*v0 != 2)
  {
    v2 = 0x6C616369676F6CLL;
  }

  if (*v0)
  {
    v1 = 0x73697261706D6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B7D75BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B7D95F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B7D75F0(uint64_t a1)
{
  v2 = sub_24B7D7EA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7D762C(uint64_t a1)
{
  v2 = sub_24B7D7EA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7D7668(uint64_t a1)
{
  v2 = sub_24B7D8044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7D76A4(uint64_t a1)
{
  v2 = sub_24B7D8044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7D76E0(uint64_t a1)
{
  v2 = sub_24B7D7F9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7D771C(uint64_t a1)
{
  v2 = sub_24B7D7F9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7D7758(uint64_t a1)
{
  v2 = sub_24B7D7EF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7D7794(uint64_t a1)
{
  v2 = sub_24B7D7EF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicPredicateDescriptor.encode(to:)(void *a1, unint64_t a2)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059CC0, &qword_24B7DEF30);
  v49 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v48 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059CC8, &qword_24B7DEF38);
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059CD0, &qword_24B7DEF40);
  v46 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059CD8, &qword_24B7DEF48);
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059CE0, &qword_24B7DEF50);
  v53 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v14 = &v44 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7D7EA0();
  sub_24B7DB158();
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v19 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v20 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v22 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v23 = *(v19 + 40);
      v24 = *(v19 + 48);
      v25 = *(v19 + 56);
      LOBYTE(v54) = 2;
      sub_24B7C33EC(v20, v21, v22);
      sub_24B7C33EC(v23, v24, v25);
      sub_24B7D7F9C();
      v26 = v47;
      sub_24B7DAFE8();
      v48 = v20;
      v49 = v24;
      v54 = v20;
      v55 = v21;
      LOBYTE(v56) = v22;
      v52 = v23;
      v57 = v23;
      v58 = v24;
      LOBYTE(v59) = v25;
      sub_24B7D7FF0();
      v27 = v51;
      sub_24B7DB048();
      (*(v50 + 8))(v26, v27);
      (*(v53 + 8))(v14, v61);
      sub_24B7C3854(v48, v21, v22);
      return sub_24B7C3854(v52, v49, v25);
    }

    else
    {
      v38 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v39 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v40 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      LOBYTE(v54) = 3;
      sub_24B7D7EF4();

      v41 = v48;
      v42 = v61;
      sub_24B7DAFE8();
      v54 = v38;
      LOBYTE(v55) = v39;
      v56 = v40;
      sub_24B7D7F48();
      v43 = v52;
      sub_24B7DB048();
      (*(v49 + 8))(v41, v43);
      (*(v53 + 8))(v14, v42);
    }
  }

  else if (v15)
  {
    v28 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    LODWORD(v51) = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v30 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v29 = *(v28 + 32);
    v32 = *(v28 + 48);
    v48 = *(v28 + 56);
    v31 = v48;
    v49 = v29;
    v33 = *(v28 + 40);
    v34 = *(v28 + 64);
    LOBYTE(v54) = 1;
    v50 = v30;
    sub_24B7BD918(v30, v29, v33);
    v52 = v32;
    sub_24B7BD918(v32, v31, v34);
    sub_24B7D8044();
    v35 = v61;
    sub_24B7DAFE8();
    LOBYTE(v54) = v51;
    v55 = v30;
    v36 = v49;
    v56 = v49;
    LOBYTE(v57) = v33;
    v58 = v32;
    v37 = v48;
    v59 = v48;
    v60 = v34;
    sub_24B7D8098();
    sub_24B7DB048();
    (*(v46 + 8))(v9, v7);
    (*(v53 + 8))(v14, v35);
    sub_24B7BDEB8(v50, v36, v33);
    return sub_24B7BDEB8(v52, v37, v34);
  }

  else
  {
    v16 = *(a2 + 16);
    LOBYTE(v54) = 0;
    sub_24B7D80EC();
    v17 = v61;
    sub_24B7DAFE8();
    LOBYTE(v54) = v16;
    sub_24B7D8140();
    sub_24B7DB048();
    (*(v45 + 8))(v12, v10);
    return (*(v53 + 8))(v14, v17);
  }
}

unint64_t sub_24B7D7EA0()
{
  result = qword_27F059CE8;
  if (!qword_27F059CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059CE8);
  }

  return result;
}

unint64_t sub_24B7D7EF4()
{
  result = qword_27F059CF0;
  if (!qword_27F059CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059CF0);
  }

  return result;
}

unint64_t sub_24B7D7F48()
{
  result = qword_27F059CF8;
  if (!qword_27F059CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059CF8);
  }

  return result;
}

unint64_t sub_24B7D7F9C()
{
  result = qword_27F059D00;
  if (!qword_27F059D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D00);
  }

  return result;
}

unint64_t sub_24B7D7FF0()
{
  result = qword_27F059D08;
  if (!qword_27F059D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D08);
  }

  return result;
}

unint64_t sub_24B7D8044()
{
  result = qword_27F059D10;
  if (!qword_27F059D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D10);
  }

  return result;
}

unint64_t sub_24B7D8098()
{
  result = qword_27F059D18;
  if (!qword_27F059D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D18);
  }

  return result;
}

unint64_t sub_24B7D80EC()
{
  result = qword_27F059D20;
  if (!qword_27F059D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D20);
  }

  return result;
}

unint64_t sub_24B7D8140()
{
  result = qword_27F059D28;
  if (!qword_27F059D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D28);
  }

  return result;
}

void *sub_24B7D81AC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B7D8664(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t DynamicPredicateDescriptor.hash(into:)(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v5 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v8 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v9 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v10 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      MEMORY[0x24C24AAF0](2);
      sub_24B7C33EC(v5, v6, v9);
      sub_24B7C33EC(v7, v8, v10);
      DynamicPredicateEquatableValue.hash(into:)(a1);
      DynamicPredicateEquatableValue.hash(into:)(a1);
      sub_24B7C3854(v5, v6, v9);
      return sub_24B7C3854(v7, v8, v10);
    }

    else
    {
      v11 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      MEMORY[0x24C24AAF0](3);

      DynamicPredicateDescriptor.hash(into:)(a1, v11);
      sub_24B7DAAE8();

      DynamicPredicateDescriptor.hash(into:)(a1, v12);
    }
  }

  else if (v3)
  {
    MEMORY[0x24C24AAF0](1);
    return DynamicPredicateComparisonDescriptor.hash(into:)(a1);
  }

  else
  {
    MEMORY[0x24C24AAF0](0);
    return sub_24B7DB118();
  }
}

uint64_t DynamicPredicateDescriptor.hashValue.getter(unint64_t a1)
{
  sub_24B7DB0F8();
  DynamicPredicateDescriptor.hash(into:)(v3, a1);
  return sub_24B7DB128();
}

uint64_t sub_24B7D8440()
{
  v1 = *v0;
  sub_24B7DB0F8();
  DynamicPredicateDescriptor.hash(into:)(v3, v1);
  return sub_24B7DB128();
}

uint64_t sub_24B7D8490(uint64_t a1)
{
  v2 = *v1;
  sub_24B7DB0F8();
  DynamicPredicateDescriptor.hash(into:)(v4, v2);
  return sub_24B7DB128();
}

uint64_t _s16FitnessUtilities26DynamicPredicateDescriptorO2eeoiySbAC_ACtFZ_0(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v2 == 2)
    {
      if (a2 >> 62 == 2)
      {
        v4 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        v5 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        *v22 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v22[16] = v5;
        *v23 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v23[16] = v4;
        *v19 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v19[16] = v6;
        *v20 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v20[16] = v7;
        v3 = _s16FitnessUtilities34DynamicPredicateEqualityDescriptorV2eeoiySbAC_ACtFZ_0(v22, v19);
        return v3 & 1;
      }
    }

    else if (a2 >> 62 == 3)
    {
      v13 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v14 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v15 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v17 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      *v22 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v22[8] = v14;
      *&v22[16] = v13;
      *v19 = v15;
      v19[8] = v16;
      *&v19[16] = v17;
      v3 = _s16FitnessUtilities33DynamicPredicateLogicalDescriptorV2eeoiySbAC_ACtFZ_0(v22, v19);
      return v3 & 1;
    }

LABEL_12:
    v3 = 0;
    return v3 & 1;
  }

  if (v2)
  {
    if (a2 >> 62 == 1)
    {
      v8 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v9 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v10 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v12 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v22[0] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      *&v22[8] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v23[0] = v9;
      *&v23[8] = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v24 = v8;
      v19[0] = v10;
      *&v19[8] = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v20[0] = v11;
      *&v20[8] = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v21 = v12;
      v3 = _s16FitnessUtilities36DynamicPredicateComparisonDescriptorV2eeoiySbAC_ACtFZ_0(v22, v19);
      return v3 & 1;
    }

    goto LABEL_12;
  }

  if (a2 >> 62)
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 16) ^ *(a2 + 16) ^ 1;
  return v3 & 1;
}

void *sub_24B7D8664(void *a1)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059DB0, &qword_24B7DF690);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v47 = &v38 - v2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059DB8, &qword_24B7DF698);
  v45 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v46 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059DC0, &qword_24B7DF6A0);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059DC8, &qword_24B7DF6A8);
  v40 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059DD0, &unk_24B7DF6B0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24B7D7EA0();
  v15 = v48;
  sub_24B7DB148();
  if (!v15)
  {
    v16 = v9;
    v48 = v7;
    v17 = v6;
    v18 = v46;
    v19 = v47;
    v20 = sub_24B7DAFC8();
    v21 = (2 * *(v20 + 16)) | 1;
    v50 = v20;
    v51 = v20 + 32;
    v52 = 0;
    v53 = v21;
    v22 = sub_24B7C1760();
    if (v22 == 4 || v52 != v53 >> 1)
    {
      v24 = sub_24B7DAEE8();
      swift_allocError();
      v7 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059630, &qword_24B7DBDD0);
      *v7 = &type metadata for DynamicPredicateDescriptor;
      sub_24B7DAF58();
      sub_24B7DAED8();
      (*(*(v24 - 8) + 104))(v7, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v11 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else if (v22 > 1u)
    {
      if (v22 == 2)
      {
        v54 = 2;
        sub_24B7D7F9C();
        v27 = v18;
        v28 = v10;
        sub_24B7DAF48();
        v29 = swift_allocObject();
        sub_24B7D97B0();
        v30 = v39;
        sub_24B7DAFB8();
        (*(v45 + 8))(v27, v30);
        (*(v11 + 8))(v13, v28);
        swift_unknownObjectRelease();
        v7 = (v29 | 0x8000000000000000);
      }

      else
      {
        v54 = 3;
        sub_24B7D7EF4();
        sub_24B7DAF48();
        v48 = v10;
        v36 = swift_allocObject();
        sub_24B7D975C();
        v37 = v41;
        sub_24B7DAFB8();
        (*(v44 + 8))(v19, v37);
        (*(v11 + 8))(v13, v48);
        swift_unknownObjectRelease();
        v7 = (v36 | 0xC000000000000000);
      }
    }

    else if (v22)
    {
      v54 = 1;
      sub_24B7D8044();
      v31 = v17;
      v32 = v10;
      sub_24B7DAF48();
      v34 = swift_allocObject();
      sub_24B7D9804();
      v35 = v43;
      sub_24B7DAFB8();
      (*(v42 + 8))(v31, v35);
      (*(v11 + 8))(v13, v32);
      swift_unknownObjectRelease();
      v7 = (v34 | 0x4000000000000000);
    }

    else
    {
      v54 = 0;
      sub_24B7D80EC();
      v23 = v10;
      sub_24B7DAF48();
      v7 = swift_allocObject();
      sub_24B7D9858();
      v33 = v48;
      sub_24B7DAFB8();
      (*(v40 + 8))(v16, v33);
      (*(v11 + 8))(v13, v23);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v49);
  return v7;
}

unint64_t sub_24B7D8F44()
{
  result = qword_27F059D30;
  if (!qword_27F059D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D30);
  }

  return result;
}

uint64_t sub_24B7D8F98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24B7D8FF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
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

unint64_t sub_24B7D90CC()
{
  result = qword_27F059D38;
  if (!qword_27F059D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D38);
  }

  return result;
}

unint64_t sub_24B7D9124()
{
  result = qword_27F059D40;
  if (!qword_27F059D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D40);
  }

  return result;
}

unint64_t sub_24B7D917C()
{
  result = qword_27F059D48;
  if (!qword_27F059D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D48);
  }

  return result;
}

unint64_t sub_24B7D91D4()
{
  result = qword_27F059D50;
  if (!qword_27F059D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D50);
  }

  return result;
}

unint64_t sub_24B7D922C()
{
  result = qword_27F059D58;
  if (!qword_27F059D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D58);
  }

  return result;
}

unint64_t sub_24B7D9284()
{
  result = qword_27F059D60;
  if (!qword_27F059D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D60);
  }

  return result;
}

unint64_t sub_24B7D92DC()
{
  result = qword_27F059D68;
  if (!qword_27F059D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D68);
  }

  return result;
}

unint64_t sub_24B7D9334()
{
  result = qword_27F059D70;
  if (!qword_27F059D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D70);
  }

  return result;
}

unint64_t sub_24B7D938C()
{
  result = qword_27F059D78;
  if (!qword_27F059D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D78);
  }

  return result;
}

unint64_t sub_24B7D93E4()
{
  result = qword_27F059D80;
  if (!qword_27F059D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D80);
  }

  return result;
}

unint64_t sub_24B7D943C()
{
  result = qword_27F059D88;
  if (!qword_27F059D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D88);
  }

  return result;
}

unint64_t sub_24B7D9494()
{
  result = qword_27F059D90;
  if (!qword_27F059D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D90);
  }

  return result;
}

unint64_t sub_24B7D94EC()
{
  result = qword_27F059D98;
  if (!qword_27F059D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059D98);
  }

  return result;
}

unint64_t sub_24B7D9544()
{
  result = qword_27F059DA0;
  if (!qword_27F059DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059DA0);
  }

  return result;
}

unint64_t sub_24B7D959C()
{
  result = qword_27F059DA8;
  if (!qword_27F059DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059DA8);
  }

  return result;
}

uint64_t sub_24B7D95F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E61656C6F6F62 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B7DB088() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73697261706D6F63 && a2 == 0xEA00000000006E6FLL || (sub_24B7DB088() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7974696C61757165 && a2 == 0xE800000000000000 || (sub_24B7DB088() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616369676F6CLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B7DB088();

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

unint64_t sub_24B7D975C()
{
  result = qword_27F059DD8;
  if (!qword_27F059DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059DD8);
  }

  return result;
}

unint64_t sub_24B7D97B0()
{
  result = qword_27F059DE0;
  if (!qword_27F059DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059DE0);
  }

  return result;
}

unint64_t sub_24B7D9804()
{
  result = qword_27F059DE8;
  if (!qword_27F059DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059DE8);
  }

  return result;
}

unint64_t sub_24B7D9858()
{
  result = qword_27F059DF0;
  if (!qword_27F059DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059DF0);
  }

  return result;
}

uint64_t DynamicPredicatePlatform.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x656E6F6870;
  v2 = 30324;
  if (a1 != 2)
  {
    v2 = 0x6863746177;
  }

  if (a1)
  {
    v1 = 0x74656C626174;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B7D9914(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x656E6F6870;
  v3 = *a1;
  v4 = 0xE500000000000000;
  v5 = 0xE200000000000000;
  v6 = 30324;
  if (v3 != 2)
  {
    v6 = 0x6863746177;
    v5 = 0xE500000000000000;
  }

  v7 = 0x74656C626174;
  if (*a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v7 = 0x656E6F6870;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE500000000000000;
  v11 = 0xE200000000000000;
  v12 = 30324;
  if (*a2 != 2)
  {
    v12 = 0x6863746177;
    v11 = 0xE500000000000000;
  }

  if (*a2)
  {
    v2 = 0x74656C626174;
    v10 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_24B7DB088();
  }

  return v15 & 1;
}

unint64_t sub_24B7D9A2C@<X0>(Swift::String *a1@<X0>, FitnessUtilities::DynamicPredicatePlatform_optional *a2@<X8>)
{
  result = _s16FitnessUtilities24DynamicPredicatePlatformO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_24B7D9A5C(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656E6F6870;
  v4 = 0xE200000000000000;
  v5 = 30324;
  if (*v1 != 2)
  {
    v5 = 0x6863746177;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x74656C626174;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_24B7D9B90()
{
  sub_24B7DB0F8();
  sub_24B7DAAE8();

  return sub_24B7DB128();
}

uint64_t sub_24B7D9C3C(uint64_t a1)
{
  sub_24B7DAAE8();
}

uint64_t sub_24B7D9CD4(uint64_t a1)
{
  sub_24B7DB0F8();
  sub_24B7DAAE8();

  return sub_24B7DB128();
}

unint64_t _s16FitnessUtilities24DynamicPredicatePlatformO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24B7DAF38();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24B7D9DCC()
{
  result = qword_27F059DF8;
  if (!qword_27F059DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F059E00, &qword_24B7DF720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059DF8);
  }

  return result;
}

unint64_t sub_24B7D9E34()
{
  result = qword_27F059E08;
  if (!qword_27F059E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059E08);
  }

  return result;
}

unint64_t sub_24B7D9E98()
{
  result = qword_27F059E10;
  if (!qword_27F059E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F059E10);
  }

  return result;
}

BOOL Optional<A>.isEmptyOrWhiteSpace.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B7DA8B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 1;
  }

  v13[0] = a1;
  v13[1] = a2;
  sub_24B7DA8A8();
  sub_24B7BC574();
  v8 = sub_24B7DAE78();
  v10 = v9;
  (*(v5 + 8))(v7, v4);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  return v11 == 0;
}

BOOL StringProtocol.isEmptyOrWhiteSpace.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_24B7DA8B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B7DA8A8();
  v6 = sub_24B7DAE78();
  v8 = v7;
  (*(v3 + 8))(v5, v2);

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  return v9 == 0;
}

uint64_t String.init(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059E18, &qword_24B7DF820);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_24B7DA8D8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B7DA8C8();
  sub_24B7DA340(v4);
  (*(v6 + 8))(v8, v5);
  v9 = sub_24B7DAAB8();
  v10 = sub_24B7DA908();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

uint64_t sub_24B7DA340@<X0>(uint64_t a1@<X8>)
{
  v24[2] = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059E20, &qword_24B7DF830);
  v2 = MEMORY[0x28223BE20](v26);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - v5;
  v7 = sub_24B7DA8F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059E28, &qword_24B7DF838);
  MEMORY[0x28223BE20](v25);
  v12 = v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F059E30, &unk_24B7DF840);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v24 - v14;
  v16 = sub_24B7DA8D8();
  v17 = sub_24B7DA718(&qword_280DD1790, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
  v27 = v16;
  v18 = v17;
  sub_24B7DADC8();
  sub_24B7DA718(&qword_280DD1780, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
  result = sub_24B7DAA78();
  if (result)
  {
    sub_24B7DADD8();
    sub_24B7DA718(&qword_280DD1788, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
    result = sub_24B7DAA68();
    if (result)
    {
      v24[1] = v1;
      v20 = *(v8 + 32);
      v20(v6, v15, v7);
      v24[0] = v18;
      v21 = v26;
      v20(&v6[*(v26 + 48)], v10, v7);
      sub_24B7DA760(v6, v4);
      v22 = *(v21 + 48);
      v20(v12, v4, v7);
      v23 = *(v8 + 8);
      v23(&v4[v22], v7);
      sub_24B7DA7D0(v6, v4);
      v20(&v12[*(v25 + 36)], &v4[*(v21 + 48)], v7);
      v23(v4, v7);
      sub_24B7DAE18();
      return sub_24B7DA840(v12);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24B7DA718(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B7DA760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059E20, &qword_24B7DF830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B7DA7D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059E20, &qword_24B7DF830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B7DA840(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F059E28, &qword_24B7DF838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}