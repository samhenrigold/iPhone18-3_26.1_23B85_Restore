unint64_t sub_19750622C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1975062EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_19752282C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEC000000656D614ELL || (sub_19752282C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_19752282C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70795465756C6176 && a2 == 0xED0000656D614E65 || (sub_19752282C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_19752282C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x75526574656C6564 && a2 == 0xEA0000000000656CLL || (sub_19752282C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4E65737265766E69 && a2 == 0xEB00000000656D61 || (sub_19752282C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000197529E90 == a2 || (sub_19752282C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000197529EB0 == a2 || (sub_19752282C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x69646F4D68736168 && a2 == 0xEC00000072656966)
  {

    return 9;
  }

  else
  {
    v6 = sub_19752282C();

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

uint64_t sub_197506648(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_19752282C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEC000000656D614ELL || (sub_19752282C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_19752282C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70795465756C6176 && a2 == 0xED0000656D614E65 || (sub_19752282C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_19752282C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6974704F7369 && a2 == 0xEA00000000006C61)
  {

    return 5;
  }

  else
  {
    v6 = sub_19752282C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_19750685C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_19752282C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEC000000656D614ELL || (sub_19752282C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_19752282C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70795465756C6176 && a2 == 0xED0000656D614E65 || (sub_19752282C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69646F4D68736168 && a2 == 0xEC00000072656966 || (sub_19752282C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6974704F7369 && a2 == 0xEA00000000006C61)
  {

    return 5;
  }

  else
  {
    v6 = sub_19752282C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_197506A70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000197529EF0 == a2 || (sub_19752282C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000197529F10 == a2 || (sub_19752282C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7571696E5573695FLL && a2 == 0xE900000000000065 || (sub_19752282C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000197529F30 == a2 || (sub_19752282C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000197529F50 == a2 || (sub_19752282C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F7473626D6F745FLL && a2 == 0xEA0000000000656ELL || (sub_19752282C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x67696C746F70735FLL && a2 == 0xEA00000000007468)
  {

    return 6;
  }

  else
  {
    v5 = sub_19752282C();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_197506CD0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_197506D08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_197506D40(uint64_t a1)
{
  v2 = v1;
  v13.val[0] = *(*v1 + 80);
  v13.val[1] = v13.val[0];
  v3 = &v10;
  vst2q_f64(v3, v13);
  type metadata accessor for Schema.Index.Types(0, &v10);
  v12 = sub_1975215CC();
  sub_19752228C();
  sub_197521AAC();
  if (sub_197521A5C())
  {
    v4 = 4;
    do
    {
      v5 = v4 - 4;
      v6 = sub_197521A3C();
      sub_1975219EC();
      if (v6)
      {

        v8 = v4 - 3;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7 = sub_19752222C();
        v8 = v4 - 3;
        if (__OFADD__(v5, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      v10 = v7;
      v11 = 0;
      sub_197521AAC();
      sub_197521A7C();
      ++v4;
    }

    while (v8 != sub_197521A5C());
  }

  *(v2 + 16) = v12;
  return v2;
}

unint64_t sub_197506ECC()
{
  result = qword_1EAF2BDC8;
  if (!qword_1EAF2BDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BDC0, &qword_1975320E0);
    sub_197506F70(&qword_1EAF2BDD0, &qword_1EAF2AE60, &qword_19752C0E0, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BDC8);
  }

  return result;
}

uint64_t sub_197506F70(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_197506FD0()
{
  result = qword_1EAF2BDD8;
  if (!qword_1EAF2BDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BDC0, &qword_1975320E0);
    sub_197507054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BDD8);
  }

  return result;
}

unint64_t sub_197507054()
{
  result = qword_1EAF2BDE0;
  if (!qword_1EAF2BDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2AE60, &qword_19752C0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BDE0);
  }

  return result;
}

unint64_t sub_1975070E8()
{
  result = qword_1EAF2BDF0;
  if (!qword_1EAF2BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BDF0);
  }

  return result;
}

unint64_t sub_197507140()
{
  result = qword_1EAF2BE00;
  if (!qword_1EAF2BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BE00);
  }

  return result;
}

unint64_t sub_197507198()
{
  result = qword_1EAF2BE08;
  if (!qword_1EAF2BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BE08);
  }

  return result;
}

unint64_t sub_1975072F4()
{
  result = qword_1EAF2BE10[0];
  if (!qword_1EAF2BE10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAF2BE10);
  }

  return result;
}

uint64_t sub_197507898(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 38))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_1975078F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 38) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 38) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t _s12RelationshipC10DeleteRuleOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s12RelationshipC10DeleteRuleOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s12RelationshipC6OptionVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t _s12RelationshipC6OptionVwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of Schema.Index.__allocating_init(_:)()
{
  return (*(v0 + 104))();
}

{
  return (*(v0 + 112))();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_197507D04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_197507D4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t _s9AttributeC6OptionV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9AttributeC6OptionV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s12RelationshipC10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s12RelationshipC10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1975080C0(unsigned int *a1, int a2)
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

  return *a1;
}

_WORD *sub_197508110(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1975081C0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_197508250(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_197508318()
{
  result = qword_1EAF2BF18;
  if (!qword_1EAF2BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF18);
  }

  return result;
}

unint64_t sub_197508370()
{
  result = qword_1EAF2BF20;
  if (!qword_1EAF2BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF20);
  }

  return result;
}

unint64_t sub_1975083C8()
{
  result = qword_1EAF2BF28;
  if (!qword_1EAF2BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF28);
  }

  return result;
}

unint64_t sub_197508420()
{
  result = qword_1EAF2BF30;
  if (!qword_1EAF2BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF30);
  }

  return result;
}

unint64_t sub_197508478()
{
  result = qword_1EAF2BF38;
  if (!qword_1EAF2BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF38);
  }

  return result;
}

unint64_t sub_1975084D0()
{
  result = qword_1EAF2BF40;
  if (!qword_1EAF2BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF40);
  }

  return result;
}

unint64_t sub_197508528()
{
  result = qword_1EAF2BF48;
  if (!qword_1EAF2BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF48);
  }

  return result;
}

unint64_t sub_197508580()
{
  result = qword_1EAF2BF50;
  if (!qword_1EAF2BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF50);
  }

  return result;
}

unint64_t sub_1975085D8()
{
  result = qword_1EAF2BF58;
  if (!qword_1EAF2BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF58);
  }

  return result;
}

unint64_t sub_197508630()
{
  result = qword_1EAF2BF60;
  if (!qword_1EAF2BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF60);
  }

  return result;
}

unint64_t sub_197508688()
{
  result = qword_1EAF2BF68;
  if (!qword_1EAF2BF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF68);
  }

  return result;
}

unint64_t sub_1975086E0()
{
  result = qword_1EAF2BF70;
  if (!qword_1EAF2BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF70);
  }

  return result;
}

unint64_t sub_197508738()
{
  result = qword_1EAF2BF78;
  if (!qword_1EAF2BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF78);
  }

  return result;
}

unint64_t sub_197508790()
{
  result = qword_1EAF2BF80;
  if (!qword_1EAF2BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF80);
  }

  return result;
}

unint64_t sub_1975087E8()
{
  result = qword_1EAF2BF88;
  if (!qword_1EAF2BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF88);
  }

  return result;
}

unint64_t sub_197508840()
{
  result = qword_1EAF2BF90;
  if (!qword_1EAF2BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF90);
  }

  return result;
}

unint64_t sub_197508898()
{
  result = qword_1EAF2BF98;
  if (!qword_1EAF2BF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BF98);
  }

  return result;
}

unint64_t sub_1975088F0()
{
  result = qword_1EAF2BFA0;
  if (!qword_1EAF2BFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BFA0);
  }

  return result;
}

unint64_t sub_197508948()
{
  result = qword_1EAF2BFA8;
  if (!qword_1EAF2BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BFA8);
  }

  return result;
}

unint64_t sub_19750899C()
{
  result = qword_1EAF2BFB0;
  if (!qword_1EAF2BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BFB0);
  }

  return result;
}

uint64_t sub_197508C08()
{
  result = getSDSystemVersionSDK_Spring2024();
  qword_1EAF33EA0 = result;
  return result;
}

uint64_t sub_197508C2C()
{
  result = getSDSystemVersionSDK_Fall2024();
  qword_1EAF33E00 = result;
  return result;
}

uint64_t sub_197508C50()
{
  result = getSDSystemVersionSDK_Fall2025();
  qword_1EAF33EA8 = result;
  return result;
}

uint64_t sub_197508C74()
{
  result = sub_19752178C();
  qword_1ED7CE5D0 = result;
  return result;
}

uint64_t sub_197508CAC()
{
  result = sub_19752178C();
  qword_1ED7CE5C0 = result;
  return result;
}

uint64_t sub_197508CE4()
{
  result = sub_19752178C();
  qword_1ED7CE5E0 = result;
  return result;
}

uint64_t sub_197508D1C()
{
  result = sub_19752178C();
  qword_1ED7CE5D8 = result;
  return result;
}

uint64_t sub_197508D54()
{
  result = sub_19752178C();
  qword_1ED7CE5C8 = result;
  return result;
}

uint64_t sub_197508D8C()
{
  result = sub_19752178C();
  qword_1ED7CE5F0 = result;
  return result;
}

uint64_t sub_197508DC4()
{
  result = sub_19752178C();
  qword_1ED7CE608 = result;
  return result;
}

uint64_t sub_197508DFC()
{
  result = sub_19752178C();
  qword_1ED7CE600 = result;
  return result;
}

uint64_t sub_197508E34()
{
  result = sub_19752178C();
  qword_1ED7CE5E8 = result;
  return result;
}

uint64_t sub_197508E6C()
{
  result = sub_19752178C();
  qword_1ED7CE5F8 = result;
  return result;
}

uint64_t sub_197508ED8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BFB8, &qword_1975333E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1975333C0;
  if (qword_1ED7C7470 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED7CE5D0;
  *(v0 + 32) = qword_1ED7CE5D0;
  v2 = qword_1ED7C7478;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED7CE5D8;
  *(v0 + 40) = qword_1ED7CE5D8;
  v5 = qword_1ED7C7490;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED7CE5F0;
  *(v0 + 48) = qword_1ED7CE5F0;
  v8 = qword_1ED7C74A0;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED7CE600;
  *(v0 + 56) = qword_1ED7CE600;
  v11 = qword_1ED7C7498;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED7CE5F8;
  *(v0 + 64) = qword_1ED7CE5F8;
  v14 = v13;
  return v0;
}

uint64_t sub_197509068()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BFB8, &qword_1975333E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1975333C0;
  if (qword_1ED7C7460 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED7CE5C0;
  *(v0 + 32) = qword_1ED7CE5C0;
  v2 = qword_1ED7C7468;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED7CE5C8;
  *(v0 + 40) = qword_1ED7CE5C8;
  v5 = qword_1ED7C7480;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED7CE5E0;
  *(v0 + 48) = qword_1ED7CE5E0;
  v8 = qword_1ED7C74A8;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED7CE608;
  *(v0 + 56) = qword_1ED7CE608;
  v11 = qword_1ED7C7488;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED7CE5E8;
  *(v0 + 64) = qword_1ED7CE5E8;
  v14 = v13;
  return v0;
}

uint64_t PersistentIdentifier.entityName.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      v2 = v1[9];
    }

    else
    {
      return sub_19750A588();
    }
  }

  else
  {
    v3 = [v1 entityName];
    v2 = sub_1975217BC();
  }

  return v2;
}

uint64_t PersistentIdentifier.storeIdentifier.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      v2 = v1[2];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = [v1 storeIdentifier];
    v2 = sub_1975217BC();
  }

  return v2;
}

uint64_t static PersistentIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  sub_1974028EC(*a1, v4);
  sub_1974028EC(v3, v5);
  v6 = sub_19742291C(v2, v4, v3, v5);
  sub_1974028C8(v3, v5);
  sub_1974028C8(v2, v4);
  return v6 & 1;
}

BOOL sub_197509390(void *a1, unsigned __int8 a2, uint64_t *a3, char a4)
{
  if (!a4)
  {
    if (!a2)
    {
      v7 = [a3 compare_] == -1;
      return (v7 & 1) == 0;
    }

    type metadata accessor for PersistentIdentifierImplementation();
    swift_allocObject();
    v8 = sub_19750C5E0(a3);
    sub_1974028C8(a3, 0);
    v9 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (a4 == 1)
  {
    if (a2 == 1)
    {
      v7 = sub_19750C8BC(a3, a1);
      return (v7 & 1) == 0;
    }

    v8 = a3;
    v9 = a2;
    if (a2)
    {
      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for PersistentIdentifierImplementation();
    swift_allocObject();
    v14 = sub_19750C5E0(a1);
    sub_1974028C8(a1, 0);
LABEL_18:
    v7 = sub_19750C8BC(v8, v14);

    return (v7 & 1) == 0;
  }

  if (a2 != 2)
  {
    type metadata accessor for PersistentIdentifierImplementation();
    v8 = swift_allocObject();
    v8[5] = 0;
    v8[6] = 0;
    v8[7] = sub_19750A470();
    v8[8] = v17;
    v8[9] = sub_19750A588();
    v8[10] = v18;
    v8[2] = 0;
    v8[3] = 0;
    *(v8 + 16) = 256;
    v9 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_13:
    if (v9 == 1)
    {

      v14 = a1;
    }

    else
    {
      type metadata accessor for PersistentIdentifierImplementation();
      v14 = swift_allocObject();
      v14[5] = 0;
      v14[6] = 0;
      v14[7] = sub_19750A470();
      v14[8] = v15;
      v14[9] = sub_19750A588();
      v14[10] = v16;
      v14[2] = 0;
      v14[3] = 0;
      *(v14 + 16) = 256;
    }

    goto LABEL_18;
  }

  v10 = sub_19750A588();
  v12 = v11;
  if (v10 == sub_19750A588() && v12 == v13)
  {
  }

  else
  {
    v7 = 1;
    v20 = sub_19752282C();

    if (v20)
    {
      return (v7 & 1) == 0;
    }
  }

  if (a3[8] == a1[8] && a3[9] == a1[9] || (v7 = 0, (sub_19752282C() & 1) != 0))
  {
    v21 = sub_19750A470();
    v23 = v22;
    if (v21 == sub_19750A470() && v23 == v24)
    {

      v7 = 0;
    }

    else
    {
      v25 = sub_19752282C();

      v7 = (v25 & 1) != 0;
    }
  }

  return (v7 & 1) == 0;
}

id PersistentIdentifier.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

uint64_t sub_1975096BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D656C706D69 && a2 == 0xEE006E6F69746174)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19752282C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_197509764(uint64_t a1)
{
  v2 = sub_19750C868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1975097A0(uint64_t a1)
{
  v2 = sub_19750C868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersistentIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BFC0, &qword_1975333F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19750C868();
  sub_197522AFC();
  if (!v2)
  {
    type metadata accessor for PersistentIdentifierImplementation();
    sub_19750DC34(&qword_1EAF2BFD0, v10, type metadata accessor for PersistentIdentifierImplementation, &unk_197533CD8);
    sub_19752261C();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
    *(a2 + 8) = 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersistentIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BFD8, &qword_1975333F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19750C868();
  sub_197522B0C();
  if (v9)
  {
    if (v9 == 1)
    {

      v10 = v8;
    }

    else
    {
      type metadata accessor for PersistentIdentifierImplementation();
      v10 = swift_allocObject();
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = sub_19750A470();
      *(v10 + 64) = v11;
      *(v10 + 72) = sub_19750A588();
      *(v10 + 80) = v12;
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 32) = 256;
    }
  }

  else
  {
    type metadata accessor for PersistentIdentifierImplementation();
    swift_allocObject();
    v10 = sub_19750C5E0(v8);
    sub_1974028C8(v8, 0);
  }

  v15[3] = v10;
  type metadata accessor for PersistentIdentifierImplementation();
  sub_19750DC34(&qword_1EAF2BFE0, v13, type metadata accessor for PersistentIdentifierImplementation, &unk_197533CB0);
  sub_1975226EC();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_197509BBC(uint64_t a1)
{
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      MEMORY[0x19A8E1190](1);
      return sub_197452CB8(a1);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    return sub_197521F4C();
  }
}

uint64_t *static PersistentIdentifier.identifier<A>(for:entityName:primaryKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v18[0] = a6;
  v18[1] = a7;
  v18[2] = a8;
  v19 = a10;
  v20 = a11;
  type metadata accessor for GenericPersistentIdentifierImplementation(0, v18);

  result = sub_19750D4B8(a1, a2, a3, a4, a5);
  *a9 = result;
  *(a9 + 8) = 1;
  return result;
}

uint64_t _s9SwiftData20PersistentIdentifierV2IDV9hashValueSivg_0()
{
  v1 = *(v0 + 8);
  sub_197522A5C();
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_197452CB8(v3);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_197521F4C();
  }

  return sub_197522A9C();
}

id sub_197509E44@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

BOOL sub_197509E90(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v8 = *a1;
  v9 = v2;
  v6 = v3;
  v7 = v4;
  return !_s9SwiftData20PersistentIdentifierV1loiySbAC_ACtFZ_0(&v8, &v6);
}

BOOL sub_197509EE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v8 = *a1;
  v9 = v2;
  v6 = v3;
  v7 = v4;
  return _s9SwiftData20PersistentIdentifierV1loiySbAC_ACtFZ_0(&v6, &v8);
}

uint64_t sub_197509F5C(uint64_t a1, char a2)
{
  sub_197522A5C();
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_197452CB8(v4);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_197521F4C();
  }

  return sub_197522A9C();
}

id sub_19750A03C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

uint64_t sub_19750A0D8(uint64_t a1)
{
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      MEMORY[0x19A8E1190](1);
      return sub_197452CB8(a1);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    return sub_197521F4C();
  }
}

uint64_t sub_19750A1C0(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_197522A5C();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_197452CB8(v4);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_197521F4C();
  }

  return sub_197522A9C();
}

uint64_t sub_19750A29C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = *(v2 + 16);
  }

  else
  {
    if (qword_1EAF2ADB0 != -1)
    {
      v3 = swift_once();
    }

    v5 = qword_1EAF33EB0;
    MEMORY[0x1EEE9AC00](v3, a2);

    os_unfair_lock_lock(v5 + 4);
    v6 = v2;
    sub_19750E0D8(v9);
    os_unfair_lock_unlock(v5 + 4);
    v4 = v9[0];
    v7 = v9[1];

    *(v6 + 16) = v4;
    *(v6 + 24) = v7;
  }

  return v4;
}

uint64_t sub_19750A3B8@<X0>(void *a2@<X8>)
{
  v3 = sub_19750A588();
  MEMORY[0x19A8DFF80](v3);

  MEMORY[0x19A8DFF80](47, 0xE100000000000000);
  v4 = sub_19750A470();
  MEMORY[0x19A8DFF80](v4);

  *a2 = 0x6474666977732D78;
  a2[1] = v6;
  return result;
}

uint64_t sub_19750A470()
{
  v1 = v0;
  v2 = sub_19752135C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 40))
  {
    v7 = *(v0 + 32);
  }

  else
  {
    sub_19752134C();
    v7 = sub_19752133C();
    v9 = v8;
    (*(v3 + 8))(v6, v2);
    *(v1 + 32) = v7;
    *(v1 + 40) = v9;
  }

  return v7;
}

uint64_t sub_19750A588()
{
  if (v0[9])
  {
    v1 = v0[8];
  }

  else
  {
    v1 = sub_1973F7AAC(v0[6]);
    v0[8] = v1;
    v0[9] = v2;
  }

  return v1;
}

uint64_t sub_19750A600()
{

  return swift_deallocClassInstance();
}

uint64_t sub_19750A648()
{
  sub_197522A5C();
  sub_19750A470();
  sub_19752180C();

  sub_19750A588();
  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_19750A6CC(uint64_t a1)
{
  sub_19750A470();
  sub_19752180C();

  sub_19750A588();
  sub_19752180C();
}

uint64_t sub_19750A74C(uint64_t a1)
{
  sub_197522A5C();
  sub_19750A470();
  sub_19752180C();

  sub_19750A588();
  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_19750A7CC()
{
  v0 = sub_19750A470();
  v2 = v1;
  if (v0 == sub_19750A470() && v2 == v3)
  {
  }

  else
  {
    v5 = sub_19752282C();

    v6 = 0;
    if ((v5 & 1) == 0)
    {
      return v6 & 1;
    }
  }

  v7 = sub_19750A588();
  v9 = v8;
  if (v7 == sub_19750A588() && v9 == v10)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_19752282C();
  }

  return v6 & 1;
}

unint64_t sub_19750A8E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19750D1B4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_19750A910(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000617461;
  v4 = 0xEA00000000006174;
  v5 = 0x616465726F632D78;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000197523720;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6474666977732D78;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_19750A980()
{
  sub_197522A5C();
  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_19750AA34(uint64_t a1)
{
  sub_19752180C();
}

uint64_t sub_19750AAD4(uint64_t a1)
{
  sub_197522A5C();
  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_19750AB84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x616465726F632D78;
  v4 = 0xEA00000000006174;
  v5 = 0x8000000197523720;
  if (v2 != 1)
  {
    v3 = 0xD000000000000012;
    v4 = 0x8000000197523720;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6474666977732D78;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEB00000000617461;
  }

  v8 = 0x616465726F632D78;
  if (*a2 == 1)
  {
    v5 = 0xEA00000000006174;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6474666977732D78;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEB00000000617461;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19752282C();
  }

  return v11 & 1;
}

uint64_t sub_19750AC9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B000, &qword_19752C760);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1EAF33EB0 = result;
  return result;
}

uint64_t sub_19750ACDC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = *(v2 + 40);
  }

  else
  {
    if (qword_1EAF2ADB0 != -1)
    {
      v3 = swift_once();
    }

    v5 = qword_1EAF33EB0;
    MEMORY[0x1EEE9AC00](v3, a2);

    os_unfair_lock_lock(v5 + 4);
    v6 = v2;
    sub_19750DC98(v9);
    os_unfair_lock_unlock(v5 + 4);
    v4 = v9[0];
    v7 = v9[1];

    *(v6 + 40) = v4;
    *(v6 + 48) = v7;
  }

  return v4;
}

uint64_t sub_19750ADF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = 0xEA00000000006174;
  v6 = 0x616465726F632D78;
  if (v4 != 1)
  {
    v6 = 0xD000000000000012;
    v5 = 0x8000000197523720;
  }

  if (*(a1 + 32))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6474666977732D78;
  }

  if (v4)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xEB00000000617461;
  }

  MEMORY[0x19A8DFF80](v7, v8);

  MEMORY[0x19A8DFF80](3092282, 0xE300000000000000);
  v9 = *(a1 + 24);
  if (v9)
  {

    v13 = sub_1975218CC();
    v14 = v10;
    sub_19752184C();
    v9 = v13;
    v11 = v14;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  MEMORY[0x19A8DFF80](v9, v11);

  MEMORY[0x19A8DFF80](*(a1 + 72), *(a1 + 80));
  MEMORY[0x19A8DFF80](47, 0xE100000000000000);
  result = MEMORY[0x19A8DFF80](*(a1 + 56), *(a1 + 64));
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_19750AF98()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_19750B00C(uint64_t a1)
{
  v2 = *v1;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v2);
  return sub_197522A9C();
}

uint64_t sub_19750B050()
{
  v1 = *v0;
  v2 = 0x65644965726F7473;
  v3 = 0x4B7972616D697270;
  v4 = 0x614E797469746E65;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F706D65547369;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_19750B10C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19750D200(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_19750B14C(uint64_t a1)
{
  v2 = sub_19750DB78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19750B188(uint64_t a1)
{
  v2 = sub_19750DB78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19750B1C4(void *a1)
{
  v2 = swift_allocObject();
  sub_19750B214(a1);
  return v2;
}

uint64_t sub_19750B214(void *a1)
{
  v4 = sub_1975212CC();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C0C8, &unk_197533D50);
  v8 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v9);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  v10 = a1[3];
  v28 = a1;
  v11 = a1;
  v13 = &v25 - v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_19750DB78();
  sub_197522AFC();
  if (v2)
  {
    v16 = v1;

    type metadata accessor for PersistentIdentifierImplementation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = v7;
    v33 = 0;
    v14 = v27;
    v16 = v1;
    *(v1 + 16) = sub_1975224FC();
    *(v1 + 24) = v17;
    v32 = 1;
    v18 = v8;
    *(v1 + 33) = sub_1975225FC() & 1;
    v31 = 2;
    *(v1 + 56) = sub_1975225EC();
    *(v1 + 64) = v19;
    v30 = 3;
    *(v1 + 72) = sub_1975225EC();
    *(v1 + 80) = v20;
    v29 = 4;
    sub_19750DC34(&qword_1EAF2AF10, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v21 = v25;
    sub_19752261C();
    sub_19752129C();
    v22 = v14;
    v23 = sub_1975224CC();

    if (v23 >= 3)
    {
      v24 = 2;
    }

    else
    {
      v24 = v23;
    }

    (*(v26 + 8))(v21, v4);
    (*(v18 + 8))(v13, v22);
    *(v16 + 32) = v24;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v16;
}

uint64_t sub_19750B634(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v25 - v4;
  v6 = sub_1975212CC();
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF2C0D8, qword_197533D60);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v25 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19750DB78();
  sub_197522B0C();
  LOBYTE(v27) = 0;
  v15 = v26;
  sub_19752267C();
  if (v15)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v26 = v9;
  v16 = v25;
  LOBYTE(v27) = 1;
  sub_19752269C();
  LOBYTE(v27) = 2;
  sub_19752268C();
  v18 = v11;
  LOBYTE(v27) = 3;
  v19 = sub_19752268C();
  sub_19750ACDC(v19, v20);
  v21 = v5;
  sub_1975212AC();

  if ((*(v16 + 48))(v5, 1, v6) == 1)
  {
    sub_19750DBCC(v5);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1975221EC();
    v24 = *(v29 + 40);
    v23 = *(v29 + 48);

    v27 = v24;
    v28 = v23;
    MEMORY[0x19A8DFF80](0xD000000000000013, 0x800000019752A6C0);
    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
    v22 = v26;
    (*(v16 + 32))(v26, v21, v6);
    LOBYTE(v27) = 4;
    sub_19750DC34(&qword_1EAF2AF18, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1975226EC();
    (*(v16 + 8))(v22, v6);
    return (*(v18 + 8))(v14, v10);
  }

  return result;
}

uint64_t sub_19750BA5C()
{
  sub_197522A5C();
  sub_197452CB8(v1);
  return sub_197522A9C();
}

uint64_t sub_19750BAC4(uint64_t a1)
{
  sub_197522A5C();
  sub_197452CB8(v2);
  return sub_197522A9C();
}

uint64_t sub_19750BB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_19750ACDC(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_19750BB48@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 192))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_19750BBC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6972506465707974 && a2 == 0xEF79654B7972616DLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_19752282C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_19750BC50()
{
  sub_197522A5C();
  MEMORY[0x19A8E1190](0);
  return sub_197522A9C();
}

uint64_t sub_19750BC94(uint64_t a1)
{
  sub_197522A5C();
  MEMORY[0x19A8E1190](0);
  return sub_197522A9C();
}

uint64_t sub_19750BCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19750BBC8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_19750BD30@<X0>(_BYTE *a2@<X8>)
{
  result = sub_19750E0A4();
  *a2 = result & 1;
  return result;
}

uint64_t sub_19750BD6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_19750BDC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_19750BE14(void *a1)
{
  v2 = swift_allocObject();
  sub_19750BE64(a1, v3);
  return v2;
}

uint64_t sub_19750BE64(void *a1, uint64_t a2)
{
  v4 = *(*v2 + 216);
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v23 = &v21 - v5;
  v7 = v6[28];
  v9 = *(v8 + 232);
  v10 = v6[31];
  v11 = v6[32];
  *&v28 = v4;
  *(&v28 + 1) = v7;
  v25 = v10;
  v26 = v7;
  v27 = v9;
  v29 = v9;
  v30 = v10;
  v31 = v11;
  v24 = v11;
  type metadata accessor for GenericPersistentIdentifierImplementation.CodingKeys(255, &v28);
  swift_getWitnessTable();
  v12 = sub_19752264C();
  v22 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v21 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v32;
  sub_197522AFC();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    *&v19 = v4;
    *(&v19 + 1) = v26;
    v28 = v19;
    v29 = v27;
    v30 = v25;
    v31 = v24;
    type metadata accessor for GenericPersistentIdentifierImplementation(0, &v28);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v21;
    v18 = v23;
    sub_19752261C();
    (*(v17 + 32))(v2 + *(*v2 + 264), v18, v4);
    sub_197505A1C(a1, &v28);
    sub_19750B214(&v28);
    (*(v22 + 8))(v15, v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v2;
}

uint64_t sub_19750C1DC(void *a1, uint64_t a2)
{
  v4 = *(*v2 + 216);
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v21 = v19 - v5;
  v7 = *(v6 + 240);
  v23 = v4;
  v24 = *(v8 + 224);
  v25 = v7;
  v20 = *(v8 + 248);
  v26 = v20;
  type metadata accessor for GenericPersistentIdentifierImplementation.CodingKeys(255, &v23);
  swift_getWitnessTable();
  v9 = sub_19752278C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v19 - v12;
  v14 = v27;
  result = sub_19750B634(a1);
  if (!v14)
  {
    v27 = v10;
    v16 = a1[3];
    v19[1] = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    v17 = v22;
    sub_197522B0C();
    v18 = v21;
    (*(v17 + 16))(v21, v2 + *(*v2 + 264), v4);
    sub_1975226EC();
    (*(v17 + 8))(v18, v4);
    return (*(v27 + 8))(v13, v9);
  }

  return result;
}

char *sub_19750C4F0()
{
  v1 = *v0;

  (*(*(*(v1 + 216) - 8) + 8))(v0 + *(*v0 + 264));
  return v0;
}

uint64_t sub_19750C588()
{
  sub_19750C4F0();

  return swift_deallocClassInstance();
}

uint64_t sub_19750C5E0(void *a1)
{
  v2 = v1;
  v4 = sub_1975212CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  v9 = [a1 persistentStore];
  if (v9 && (v10 = v9, v11 = [v9 identifier], v10, v11))
  {
    v12 = sub_1975217BC();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *(v2 + 16) = v12;
  *(v2 + 24) = v14;
  *(v2 + 33) = [a1 isTemporaryID];
  *(v2 + 32) = 1;
  v15 = [a1 URIRepresentation];
  sub_19752127C();

  v16 = sub_19752123C();
  v18 = v17;
  (*(v5 + 8))(v8, v4);
  *(v2 + 56) = v16;
  *(v2 + 64) = v18;
  v19 = [a1 entityName];
  v20 = sub_1975217BC();
  v22 = v21;

  *(v2 + 72) = v20;
  *(v2 + 80) = v22;
  return v2;
}

uint64_t sub_19750C7A0(void *a1, void *a2)
{
  v4 = a1[7] == a2[7] && a1[8] == a2[8];
  if (!v4 && (sub_19752282C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[9] == a2[9] && a1[10] == a2[10];
  if (!v5 && (sub_19752282C() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[3];
  v7 = a2[3];
  result = (v6 | v7) == 0;
  if (v6 && v7)
  {
    if (a1[2] == a2[2] && v6 == v7)
    {
      return 1;
    }

    else
    {

      return sub_19752282C();
    }
  }

  return result;
}

unint64_t sub_19750C868()
{
  result = qword_1EAF2BFC8;
  if (!qword_1EAF2BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BFC8);
  }

  return result;
}

uint64_t sub_19750C8BC(void *a1, void *a2)
{
  v5 = a1[2];
  v4 = a1[3];
  if (v4)
  {
    v6 = a1[2];
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v9 = a2[2];
  v8 = a2[3];
  if (v8)
  {
    v10 = a2[2];
  }

  else
  {
    v10 = 0;
  }

  if (v8)
  {
    v11 = a2[3];
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  if (v6 == v10 && v7 == v11)
  {

    if (v4)
    {
LABEL_19:
      if (!v8 || (v5 != v9 || v4 != v8) && (sub_19752282C() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v13 = 1;
    v14 = sub_19752282C();

    if (v14)
    {
      return v13;
    }

    if (v4)
    {
      goto LABEL_19;
    }
  }

  if (v8)
  {
    return 0;
  }

LABEL_26:
  if (a1[9] != a2[9] || a1[10] != a2[10])
  {
    v13 = 1;
    if (sub_19752282C())
    {
      return v13;
    }

    if ((sub_19752282C() & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[7] == a2[7] && a1[8] == a2[8])
  {
    return 0;
  }

  v13 = 1;
  if ((sub_19752282C() & 1) == 0)
  {
    return 0;
  }

  return v13;
}

uint64_t sub_19750CA54(void *a1, char a2, void *a3, unsigned __int8 a4)
{
  if (!a2)
  {
    if (a4)
    {
      type metadata accessor for PersistentIdentifierImplementation();
      swift_allocObject();
      v8 = sub_19750C5E0(a1);
      sub_1974028C8(a1, 0);
      v9 = a4;
      if (!a4)
      {
LABEL_17:
        type metadata accessor for PersistentIdentifierImplementation();
        swift_allocObject();
        v10 = sub_19750C5E0(a3);
        sub_1974028C8(a3, 0);
LABEL_18:
        v17 = sub_19750C8BC(v8, v10);

        return v17 & 1;
      }

LABEL_9:
      if (v9 == 1)
      {

        v10 = a3;
      }

      else
      {
        type metadata accessor for PersistentIdentifierImplementation();
        v10 = swift_allocObject();
        v10[5] = 0;
        v10[6] = 0;
        v10[7] = sub_19750A470();
        v10[8] = v15;
        v10[9] = sub_19750A588();
        v10[10] = v16;
        v10[2] = 0;
        v10[3] = 0;
        *(v10 + 16) = 256;
      }

      goto LABEL_18;
    }

    return [a1 compare_] == -1;
  }

  if (a2 != 1)
  {
    if (a4 != 2)
    {
      type metadata accessor for PersistentIdentifierImplementation();
      v8 = swift_allocObject();
      v8[5] = 0;
      v8[6] = 0;
      v8[7] = sub_19750A470();
      v8[8] = v18;
      v8[9] = sub_19750A588();
      v8[10] = v19;
      v8[2] = 0;
      v8[3] = 0;
      *(v8 + 16) = 256;
      v9 = a4;
      if (!a4)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    v11 = sub_19750A588();
    v13 = v12;
    if (v11 == sub_19750A588() && v13 == v14)
    {
    }

    else
    {
      v20 = 1;
      v21 = sub_19752282C();

      if (v21)
      {
        return v20;
      }
    }

    if (a1[8] != a3[8] || a1[9] != a3[9])
    {
      v20 = 0;
      if ((sub_19752282C() & 1) == 0)
      {
        return v20;
      }
    }

    v22 = sub_19750A470();
    v24 = v23;
    if (v22 == sub_19750A470() && v24 == v25)
    {

      return 0;
    }

    v20 = 1;
    v26 = sub_19752282C();

    if ((v26 & 1) == 0)
    {
      return 0;
    }

    return v20;
  }

  if (a4 != 1)
  {

    v8 = a1;
    v9 = a4;
    if (!a4)
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  return sub_19750C8BC(a1, a3);
}

BOOL _s9SwiftData20PersistentIdentifierV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      v5 = *a1;
      if (v4 == 1)
      {
        sub_1974028EC(v5, 1);
        sub_1974028EC(v3, 1);
        v6 = sub_19750C8BC(v2, v3);
        sub_1974028C8(v3, 1);
        sub_1974028C8(v2, 1);
        return v6 & 1;
      }

      v8 = v2;
      if (!v4)
      {
        goto LABEL_18;
      }

      goto LABEL_7;
    }

    if (v4 != 2)
    {
      type metadata accessor for PersistentIdentifierImplementation();
      v8 = swift_allocObject();
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = sub_19750A470();
      *(v8 + 64) = v20;
      *(v8 + 72) = sub_19750A588();
      *(v8 + 80) = v21;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 256;
      if (!v4)
      {
LABEL_18:
        type metadata accessor for PersistentIdentifierImplementation();
        swift_allocObject();
        v9 = sub_19750C5E0(v3);
        sub_1974028C8(v3, 0);
LABEL_19:
        v19 = sub_19750C8BC(v8, v9);

        return v19 & 1;
      }

LABEL_7:
      if (v4 == 1)
      {

        v9 = v3;
      }

      else
      {
        type metadata accessor for PersistentIdentifierImplementation();
        v9 = swift_allocObject();
        *(v9 + 40) = 0;
        *(v9 + 48) = 0;
        *(v9 + 56) = sub_19750A470();
        *(v9 + 64) = v17;
        *(v9 + 72) = sub_19750A588();
        *(v9 + 80) = v18;
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *(v9 + 32) = 256;
      }

      goto LABEL_19;
    }

    v10 = sub_19750A588();
    v12 = v11;
    if (v10 == sub_19750A588() && v12 == v13)
    {
    }

    else
    {
      v15 = 1;
      v16 = sub_19752282C();

      if (v16)
      {
        return v15;
      }
    }

    if (v2[8] != v3[8] || v2[9] != v3[9])
    {
      v15 = 0;
      if ((sub_19752282C() & 1) == 0)
      {
        return v15;
      }
    }

    v22 = sub_19750A470();
    v24 = v23;
    if (v22 == sub_19750A470() && v24 == v25)
    {

      return 0;
    }

    v15 = 1;
    v26 = sub_19752282C();

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      type metadata accessor for PersistentIdentifierImplementation();
      swift_allocObject();
      v8 = sub_19750C5E0(v2);
      sub_1974028C8(v2, 0);
      goto LABEL_7;
    }

    return [*a1 compare_] == -1;
  }

  return v15;
}

uint64_t sub_19750D068(uint64_t a1, uint64_t a2)
{
  v4 = sub_19750A588();
  v6 = v5;
  if (v4 == sub_19750A588() && v6 == v7)
  {
  }

  else
  {
    v8 = 1;
    v9 = sub_19752282C();

    if (v9)
    {
      return v8;
    }
  }

  if (*(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) || (v8 = 0, (sub_19752282C() & 1) != 0))
  {
    v10 = sub_19750A470();
    v12 = v11;
    if (v10 == sub_19750A470() && v12 == v13)
    {

      return 0;
    }

    v8 = 1;
    v14 = sub_19752282C();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_19750D1B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1975224CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19750D200(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65644965726F7473 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_19752282C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F706D65547369 && a2 == 0xEB00000000797261 || (sub_19752282C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B7972616D697270 && a2 == 0xEA00000000007965 || (sub_19752282C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E797469746E65 && a2 == 0xEA0000000000656DLL || (sub_19752282C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000019752A6E0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_19752282C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t *sub_19750D3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(*(*v5 + 216) - 8) + 16))(v5 + *(*v5 + 264), a5, *(*v5 + 216));
  v10 = sub_1975227DC();
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 56) = v10;
  *(v5 + 64) = v11;
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 32) = 2;
  return v5;
}

uint64_t *sub_19750D4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 232);
  v13[0] = *(v5 + 216);
  v13[1] = v11;
  v13[2] = *(v5 + 248);
  type metadata accessor for GenericPersistentIdentifierImplementation(0, v13);
  swift_allocObject();
  return sub_19750D3D4(a1, a2, a3, a4, a5);
}

unint64_t sub_19750D54C()
{
  result = qword_1EAF2BFE8;
  if (!qword_1EAF2BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BFE8);
  }

  return result;
}

unint64_t sub_19750D5A4()
{
  result = qword_1EAF2BFF0[0];
  if (!qword_1EAF2BFF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAF2BFF0);
  }

  return result;
}

uint64_t sub_19750D630(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for PersistentIdentifierImplementation.Scheme(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersistentIdentifierImplementation.Scheme(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_19750D818(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19750D860(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_19750D8E4()
{
  result = qword_1EAF2C078;
  if (!qword_1EAF2C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C078);
  }

  return result;
}

unint64_t sub_19750D938()
{
  result = qword_1EAF2C080;
  if (!qword_1EAF2C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C080);
  }

  return result;
}

unint64_t sub_19750D990()
{
  result = qword_1EAF2C088;
  if (!qword_1EAF2C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C088);
  }

  return result;
}

unint64_t sub_19750D9E8()
{
  result = qword_1EAF2C090;
  if (!qword_1EAF2C090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2C098, qword_197533A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C090);
  }

  return result;
}

unint64_t sub_19750DA50()
{
  result = qword_1EAF2C0A0;
  if (!qword_1EAF2C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C0A0);
  }

  return result;
}

unint64_t sub_19750DAB4()
{
  result = qword_1EAF2C0B8;
  if (!qword_1EAF2C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C0B8);
  }

  return result;
}

unint64_t sub_19750DB0C()
{
  result = qword_1EAF2C0C0;
  if (!qword_1EAF2C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C0C0);
  }

  return result;
}

unint64_t sub_19750DB78()
{
  result = qword_1EAF2C0D0;
  if (!qword_1EAF2C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C0D0);
  }

  return result;
}

uint64_t sub_19750DBCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19750DC34(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
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

void *sub_19750DCCC@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersistentIdentifierImplementation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersistentIdentifierImplementation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_19750DE6C(unsigned int *a1, int a2)
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

  return *a1;
}

_WORD *sub_19750DEBC(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_19750DF68()
{
  result = qword_1EAF2C160;
  if (!qword_1EAF2C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C160);
  }

  return result;
}

unint64_t sub_19750DFC0()
{
  result = qword_1EAF2C168;
  if (!qword_1EAF2C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C168);
  }

  return result;
}

unint64_t sub_19750E018()
{
  result = qword_1EAF2C170;
  if (!qword_1EAF2C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C170);
  }

  return result;
}

uint64_t Schema._coreDataMakeManagedObjectModel()@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19741AB44();
  v3 = result;
  if (result)
  {
    result = sub_19741CD8C(0, &qword_1EAF2B6B0, 0x1E695D638);
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  return result;
}

id sub_19750E1C0(void *a1)
{
  v3 = sub_1974DBEE8(v1, 1);
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAC0, &unk_197531960);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_197530980;
    *(v5 + 32) = a1;
    *(v5 + 40) = v4;
    sub_19741CD8C(0, &qword_1EAF2B6B0, 0x1E695D638);
    v6 = a1;
    v7 = v4;
    v8 = sub_1975219BC();

    v9 = [objc_opt_self() modelByMergingModels_];
  }

  else
  {
    if (qword_1EAF2ACE8 != -1)
    {
      swift_once();
    }

    v10 = sub_19752157C();
    __swift_project_value_buffer(v10, qword_1EAF33E08);
    v11 = sub_19752155C();
    v12 = sub_197521DDC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1973F2000, v11, v12, "Failed to create an NSManagedObjectModel for this Schema mergedWith another NSManagedObjectModel", v13, 2u);
      MEMORY[0x19A8E1B50](v13, -1, -1);
    }

    return 0;
  }

  return v9;
}

double Schema._coreDataManagedObjectModel(mergedWith:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_197404860(a1, v8);
  v3 = sub_19741CD8C(0, &qword_1EAF2B6B0, 0x1E695D638);
  if (swift_dynamicCast())
  {
    v4 = sub_19750E1C0(v7);
    if (v4)
    {
      v5 = v4;
      *(a2 + 24) = v3;

      *a2 = v5;
      return result;
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t static Schema._coreDataMakeManagedObjectModel(_:)@<X0>(void *a2@<X8>)
{
  v8 = 0;
  v7 = 1uLL;
  swift_allocObject();

  v4 = Schema.init(_:version:)(v3, &v7);
  v5 = sub_1974DBEE8(v4, 1);

  if (v5)
  {
    result = sub_19741CD8C(0, &qword_1EAF2B6B0, 0x1E695D638);
  }

  else
  {
    result = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v5;
  a2[3] = result;
  return result;
}

double static Schema._coreDataManagedObjectModel(for:mergedWith:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_197404860(a2, v10);
  v5 = sub_19741CD8C(0, &qword_1EAF2B6B0, 0x1E695D638);
  if (swift_dynamicCast())
  {
    v6 = sub_19750FB74(a1, v9);
    if (v6)
    {
      v7 = v6;
      *(a3 + 24) = v5;

      *a3 = v7;
      return result;
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_19750E574()
{
  swift_beginAccess();
  v2 = *(v0 + 80);
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    type metadata accessor for Schema.Attribute();
    sub_19750FE74(&qword_1ED7CA320, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
    sub_197521C1C();
    v2 = v34;
    v3 = v35;
    v4 = v36;
    v5 = v37;
    v6 = v38;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v28 = v2;
  v10 = (v4 + 64) >> 6;
  while (v2 < 0)
  {
    v15 = sub_19752212C();
    if (!v15)
    {
      return sub_1973FF47C(v2);
    }

    v32 = v15;
    type metadata accessor for Schema.Attribute();
    swift_dynamicCast();
    v1 = i;
    v13 = v5;
    v14 = v6;
    if (!i)
    {
      return sub_1973FF47C(v2);
    }

LABEL_18:
    if ((*(v1 + 120) & 0x40) != 0)
    {
      swift_beginAccess();
      v16 = *(v1 + 56);
      for (i = v16; ; v16 = i)
      {
        v17 = swift_conformsToProtocol2();
        if (!v17 || v16 == 0)
        {
          break;
        }

        sub_1973F732C(v16, &i, v16, v17);
      }

      if (!dynamic_cast_existential_2_conditional(v16, v16, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]))
      {
        goto LABEL_29;
      }

      swift_beginAccess();
      v19 = *(v1 + 24);
      i = *(v1 + 16);
      v31 = v19;

      MEMORY[0x19A8DFF80](0x706164414E4F534ALL, 0xEB00000000726574);
      sub_197521EEC();

      v2 = v28;
    }

    v5 = v13;
    v6 = v14;
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v1 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v1)
    {
      return sub_1973FF47C(v2);
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return sub_1973FF47C(v2);
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  i = 0;
  v31 = 0xE000000000000000;
  sub_1975221EC();
  v32 = i;
  v33 = v31;
  MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x800000019752A8E0);
  swift_beginAccess();
  v21 = *(v1 + 16);
  v22 = *(v1 + 24);

  MEMORY[0x19A8DFF80](v21, v22);

  MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
  v23 = *(v1 + 56);
  v29 = v23;
  v24 = swift_conformsToProtocol2();
  if (v24 && v23)
  {
    v25 = v24;
    do
    {
      sub_1973F732C(v23, &v29, v23, v25);
      v23 = v29;
      v25 = swift_conformsToProtocol2();
      if (v25)
      {
        v26 = v23 == 0;
      }

      else
      {
        v26 = 1;
      }
    }

    while (!v26);
  }

  v27 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v27);

  MEMORY[0x19A8DFF80](41, 0xE100000000000000);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

id sub_19750E9D4()
{
  v1 = v0;
  swift_beginAccess();
  if (sub_1975217DC() == 0x7470697263736564 && v2 == 0xEB000000006E6F69)
  {
    goto LABEL_80;
  }

  v4 = sub_19752282C();

  if (v4)
  {
    goto LABEL_79;
  }

  v61 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v5 = *(v1 + 128);
  if (v5 >> 62)
  {
    goto LABEL_65;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  swift_beginAccess();
  swift_beginAccess();
  if (v6)
  {
    v7 = 0;
    v59 = v5 & 0xFFFFFFFFFFFFFF8;
    v60 = (v5 & 0xC000000000000001);
    v57 = v5;
    v58 = v6;
    while (1)
    {
      if (v60)
      {
        v8 = MEMORY[0x19A8E0960](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v7 >= *(v59 + 16))
        {
          goto LABEL_64;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          v6 = sub_1975220EC();
          goto LABEL_8;
        }
      }

      v10 = [v8 propertyDescription];
      if (!v10)
      {
        goto LABEL_78;
      }

      v11 = v10;
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
        goto LABEL_77;
      }

      v13 = v12;
      if (*(v1 + 96) == 1)
      {
        [v12 setOptional_];
      }

      v14 = sub_19752181C();

      if (v14 >= 1 && (*(v1 + 120) & 2) != 0)
      {
        break;
      }

      v15 = sub_19752181C();

      if (v15 < 1)
      {
        goto LABEL_30;
      }

      v16 = v11;
      v17 = [v13 renamingIdentifier];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1975217BC();
        v21 = v20;

        if (v21)
        {
          if (v19 == *(v1 + 32) && v21 == *(v1 + 40))
          {

            goto LABEL_27;
          }

          v22 = sub_19752282C();

          if (v22)
          {
LABEL_27:

            v23 = sub_19752178C();

            [v13 setRenamingIdentifier_];

            v16 = v23;
          }
        }

        v5 = v57;
      }

LABEL_30:
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24 && *(v1 + 96) == 1)
      {
        v25 = v24;
        v26 = v11;
        v27 = [v25 elements];
        sub_19741CD8C(0, &qword_1ED7C7700, 0x1E695D530);
        v28 = sub_1975219CC();

        sub_19750F8EC(v28);
      }

      v29 = v11;
      MEMORY[0x19A8E00D0]();
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1975219FC();
      }

      sub_197521A4C();

      ++v7;
      if (v9 == v58)
      {
        v11 = v61;
        goto LABEL_41;
      }
    }

    v16 = v11;
    goto LABEL_27;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_41:

  v30 = [objc_allocWithZone(MEMORY[0x1E695D5A0]) init];

  v31 = sub_19752178C();

  [v30 setName_];

  swift_beginAccess();

  v32 = sub_19752181C();

  if (v32 >= 1)
  {

    v33 = sub_19752178C();

    [v30 setRenamingIdentifier_];
  }

  swift_beginAccess();
  if (*(v1 + 112))
  {

    v34 = sub_19752181C();

    if (v34 >= 1)
    {
      if (*(v1 + 112))
      {

        v35 = sub_19752178C();
      }

      else
      {
        v35 = 0;
      }

      [v30 setVersionHashModifier_];
    }
  }

  swift_beginAccess();
  [v30 setOptional_];
  swift_beginAccess();
  v36 = *(v1 + 48);
  v37 = (v36 + 67);
  v38 = *(v36 + 16) + 1;
  do
  {
    if (!--v38)
    {
      goto LABEL_67;
    }

    v39 = *v37;
    v37 += 40;
  }

  while (v39 != 1);
  [v30 setPreservesValueInHistoryOnDeletion_];
  if (v11 >> 62)
  {
    v40 = sub_1975220EC();
    if (v40)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v40 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
LABEL_54:
      if (v40 >= 1)
      {
        for (i = 0; i != v40; ++i)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v44 = MEMORY[0x19A8E0960](i, v11);
          }

          else
          {
            v44 = *(v11 + 8 * i + 32);
          }

          v45 = v44;
          [v44 setPreservesValueInHistoryOnDeletion_];
          objc_opt_self();
          v46 = swift_dynamicCastObjCClass();
          if (v46)
          {
            v42 = [v46 elements];
            sub_19741CD8C(0, &qword_1ED7C7700, 0x1E695D530);
            v43 = sub_1975219CC();

            sub_19750F90C(v43);
          }

          else
          {
          }
        }

        goto LABEL_67;
      }

      __break(1u);
LABEL_77:

LABEL_78:
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000002CLL, 0x800000019752A720);
      type metadata accessor for Schema.Attribute();
      sub_19752235C();
      while (1)
      {
LABEL_79:
        sub_1975223EC();
        __break(1u);
LABEL_80:
      }
    }
  }

LABEL_67:
  v47 = *(v1 + 48);
  v48 = (v47 + 68);
  v49 = *(v47 + 16) + 1;
  while (--v49)
  {
    v50 = *v48;
    v48 += 40;
    if (v50 == 1)
    {
      [v30 setIndexedBySpotlight_];
      break;
    }
  }

  v51 = *(v1 + 48);
  v52 = (v51 + 66);
  v53 = *(v51 + 16) + 1;
  while (--v53)
  {
    v54 = *v52;
    v52 += 40;
    if (v54 == 1)
    {
      [v30 setAllowsCloudEncryption_];
      break;
    }
  }

  sub_19741CD8C(0, &qword_1ED7C7700, 0x1E695D530);
  v55 = sub_1975219BC();

  [v30 setElements_];

  return v30;
}

void sub_19750F2AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v34 = a2;
  v13 = sub_197521F5C();
  v35 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v34 - v16;
  v36 = *(a7 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v34 - v23;
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || (sub_19752132C(), swift_dynamicCastMetatype()) || (type metadata accessor for Decimal(0), swift_dynamicCastMetatype()) || swift_dynamicCastMetatype() || (sub_19752135C(), swift_dynamicCastMetatype()) || (sub_1975212CC(), swift_dynamicCastMetatype()) || swift_dynamicCastMetatype())
  {
    [a3 setAttributeType_];
    [a3 setValueTransformerName_];
    *&v38 = a4;
    *(&v38 + 1) = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C180, &unk_197534030);
    sub_1975217CC();
    v25 = sub_19752178C();

    [a3 setAttributeValueClassName_];
  }

  else
  {
    swift_beginAccess();
    *a6 = 1;
    [a3 setAttributeType_];
    v26 = v34;
    swift_beginAccess();
    sub_197413B20(v26 + 64, &v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
    v27 = swift_dynamicCast();
    v28 = *(v36 + 56);
    if (v27)
    {
      v28(v17, 0, 1, a7);
      v29 = v36;
      (*(v36 + 32))(v24, v17, a7);
      (*(v29 + 16))(v21, v24, a7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5C8, &unk_19752EA10);
      if (swift_dynamicCast())
      {
        sub_19749B314(v37, &v38);
        __swift_project_boxed_opaque_existential_0Tm_0(&v38, v39);
        sub_197520BAC();
        swift_allocObject();
        sub_197520B9C();
        v30 = sub_197520B8C();
        v32 = v31;

        *&v37[0] = v30;
        *(&v37[0] + 1) = v32;
        v33 = sub_19752281C();
        sub_19750FD6C(v37);
        [a3 setDefaultValue_];
        swift_unknownObjectRelease();
        (*(v36 + 8))(v24, a7);
        __swift_destroy_boxed_opaque_existential_0Tm_1(&v38);
      }

      else
      {
        (*(v36 + 8))(v24, a7);
        memset(v37, 0, sizeof(v37));
        sub_19750FE14(v37, &qword_1EAF2B5D0, &unk_197534040);
      }
    }

    else
    {
      v28(v17, 1, 1, a7);
      (*(v35 + 8))(v17, v13);
    }
  }
}

void sub_19750F92C(unint64_t a1, SEL *a2, void (*a3)(uint64_t))
{
  if (a1 >> 62)
  {
    v6 = sub_1975220EC();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v6; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x19A8E0960](i, a1);
      }

      else
      {
        v10 = *(a1 + 8 * i + 32);
      }

      v11 = v10;
      [v10 *a2];
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v8 = [v12 elements];
        sub_19741CD8C(0, &qword_1ED7C7700, 0x1E695D530);
        v9 = sub_1975219CC();

        a3(v9);
      }

      else
      {
      }
    }
  }
}

id sub_19750FA8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{

  v5 = a3(v4);

  return v5;
}

uint64_t sub_19750FADC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_19741CB08(&v12, v10 + 40 * a1 + 32);
}

id sub_19750FB74(uint64_t a1, void *a2)
{
  v17 = 1uLL;
  type metadata accessor for Schema();
  v18 = 0;
  swift_allocObject();

  v4 = Schema.init(_:version:)(v3, &v17);
  v5 = sub_1974DBEE8(v4, 1);
  if (v5)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAC0, &unk_197531960);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_197530980;
    *(v7 + 32) = a2;
    *(v7 + 40) = v6;
    sub_19741CD8C(0, &qword_1EAF2B6B0, 0x1E695D638);
    v8 = a2;
    v9 = v6;
    v10 = sub_1975219BC();

    v11 = [objc_opt_self() modelByMergingModels_];
  }

  else
  {
    if (qword_1EAF2ACE8 != -1)
    {
      swift_once();
    }

    v12 = sub_19752157C();
    __swift_project_value_buffer(v12, qword_1EAF33E08);
    v13 = sub_19752155C();
    v14 = sub_197521DDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1973F2000, v13, v14, "Failed to create an NSManagedObjectModel for entityTypes mergedWith another NSManagedObjectModel", v15, 2u);
      MEMORY[0x19A8E1B50](v15, -1, -1);
    }

    return 0;
  }

  return v11;
}

unint64_t sub_19750FDC0()
{
  result = qword_1EAF2C1A0[0];
  if (!qword_1EAF2C1A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAF2C1A0);
  }

  return result;
}

uint64_t sub_19750FE14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_19750FE74(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19750FEBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19750FF04(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_19750FFC4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result + a3;
  if (__OFADD__(a3, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = __OFADD__(v6, a4);
  v8 = &v6[a4];
  if (v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a4 != -1 || v8 != 0x8000000000000000)
  {
    return sub_197521AFC();
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_19751000C()
{

  return v0;
}

uint64_t sub_197510044()
{
  sub_19751000C();

  return swift_deallocClassInstance();
}

uint64_t sub_197510098(uint64_t a1)
{
  result = sub_197521F5C();
  if (v2 <= 0x3F)
  {
    result = sub_197521F5C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_197510138(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  if (v5)
  {
    v12 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v12 = *(*(*(a3 + 16) - 8) + 64) + 1;
  }

  v13 = *(v8 + 80);
  if (v9)
  {
    v14 = 7;
  }

  else
  {
    v14 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v12 + v13;
  if (v11 < a2)
  {
    v16 = ((((((((v14 + *(*(v7 - 8) + 64) + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v17 = a2 - v11;
    v18 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = v17 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    v21 = v19 >= 2 ? v20 : 0;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_32;
        }
      }
    }

    else if (v21)
    {
      v22 = *(a1 + v16);
      if (v22)
      {
LABEL_32:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v11 + (v24 | v23) + 1;
      }
    }

    if (!v11)
    {
      return 0;
    }
  }

  if (v6 >= v10)
  {
    v25 = (*(v4 + 48))(a1);
  }

  else
  {
    v25 = (*(v8 + 48))((a1 + v15) & ~v13, v9, v7);
  }

  if (v25 >= 2)
  {
    return v25 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_197510340(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  v15 = v11 - 1;
  if (!v11)
  {
    v15 = 0;
  }

  if (v15 <= v8)
  {
    v16 = v8;
  }

  else
  {
    v16 = v15;
  }

  if (!v7)
  {
    ++v12;
  }

  v17 = v12 + v13;
  if (!v11)
  {
    ++v14;
  }

  v18 = ((((((((v14 + ((v12 + v13) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 < a3)
  {
    v19 = a3 - v16;
    if (((((((((v14 + ((v12 + v13) & ~v13) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v20 = v19 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v5 = v21;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v16)
  {
    if (((((((((v14 + ((v12 + v13) & ~v13) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v22 = a2 - v16;
    }

    else
    {
      v22 = 1;
    }

    if (((((((((v14 + ((v12 + v13) & ~v13) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v23 = ~v16 + a2;
      v24 = a1;
      bzero(a1, v18);
      a1 = v24;
      *v24 = v23;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v18) = v22;
      }

      else
      {
        *(a1 + v18) = v22;
      }
    }

    else if (v5)
    {
      *(a1 + v18) = v22;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *(a1 + v18) = 0;
  }

  else if (v5)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return;
  }

LABEL_43:
  if (v8 >= v15)
  {
    if (v8 >= a2)
    {
      v36 = *(v6 + 56);

      v36();
    }

    else
    {
      if (v12 <= 3)
      {
        v29 = ~(-1 << (8 * v12));
      }

      else
      {
        v29 = -1;
      }

      if (v12)
      {
        v30 = v29 & (~v8 + a2);
        if (v12 <= 3)
        {
          v31 = v12;
        }

        else
        {
          v31 = 4;
        }

        v32 = a1;
        bzero(a1, v12);
        if (v31 > 2)
        {
          if (v31 == 3)
          {
            *v32 = v30;
            *(v32 + 2) = BYTE2(v30);
          }

          else
          {
            *v32 = v30;
          }
        }

        else if (v31 == 1)
        {
          *v32 = v30;
        }

        else
        {
          *v32 = v30;
        }
      }
    }
  }

  else
  {
    v25 = (a1 + v17) & ~v13;
    if (v15 >= a2)
    {
      v33 = *(v10 + 56);
      v34 = a2 + 1;
      v35 = (a1 + v17) & ~v13;

      v33(v35, v34, v11, v9);
    }

    else
    {
      if (v14 <= 3)
      {
        v26 = ~(-1 << (8 * v14));
      }

      else
      {
        v26 = -1;
      }

      if (v14)
      {
        v27 = v26 & (~v15 + a2);
        if (v14 <= 3)
        {
          v28 = v14;
        }

        else
        {
          v28 = 4;
        }

        bzero(((a1 + v17) & ~v13), v14);
        if (v28 > 2)
        {
          if (v28 == 3)
          {
            *v25 = v27;
            *(v25 + 2) = BYTE2(v27);
          }

          else
          {
            *v25 = v27;
          }
        }

        else if (v28 == 1)
        {
          *v25 = v27;
        }

        else
        {
          *v25 = v27;
        }
      }
    }
  }
}

uint64_t sub_1975106D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_19751071C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19751073C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

uint64_t sub_197510784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1975107CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_197510814(uint64_t result, int a2, int a3)
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

uint64_t sub_1975108B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_197510888(a1, *(a2 + 16));
  *a3 = result;
  a3[1] = 0;
  a3[2] = v5;
  return result;
}

uint64_t sub_197510904(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69828](a1, a2, WitnessTable, v5);
}

uint64_t (*sub_1975109A0(uint64_t **a1, void **a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_197510A78(v7, *a2, *v3, v3[1], v3[2], *(a3 + 16));
  return sub_197510A30;
}

void sub_197510A30(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_197510A78(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v11 = *(a6 - 8);
  *a1 = a6;
  a1[1] = v11;
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  a1[2] = v12;
  sub_19750FFC4(a2, a3, a4, a5);
  return sub_197510B64;
}

void sub_197510B64(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_197510BB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69838](a1, WitnessTable, v3);
}

uint64_t sub_197510CB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69820](a1, a2, WitnessTable, v5);
}

uint64_t sub_197510D38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

__n128 sub_197510DB0@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_197510DC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_197510E24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_197511298(v1, a1, WitnessTable);

  return v4;
}

unint64_t sub_197510F04()
{
  result = qword_1EAF2C3B8;
  if (!qword_1EAF2C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C3B8);
  }

  return result;
}

uint64_t sub_197511078(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2C3B0, &qword_1975342A0);
    sub_197510F04();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1975111B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1975216DC();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_19751129C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1975216DC();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_197521D4C();
  result = sub_1975216DC();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_1975113DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  (*(a3 + 16))(&v9, ObjectType, a3);
  v6 = v9;
  if (!v10)
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v6, 0);
    sub_197521F4C();
    sub_1974028C8(v6, 0);
    v7 = v6;
    v8 = 0;
    goto LABEL_5;
  }

  if (v10 == 1)
  {
    MEMORY[0x19A8E1190](1);
    sub_1974028EC(v6, 1);
    sub_197452CB8(a1);
    sub_1974028C8(v6, 1);
    v7 = v6;
    v8 = 1;
LABEL_5:

    sub_1974028C8(v7, v8);
    return;
  }

  MEMORY[0x19A8E1190](2);
  sub_1974028EC(v6, 2);
  sub_19750A470();
  sub_19752180C();

  sub_19750A588();
  sub_19752180C();
  sub_1974028C8(v6, 2);
  sub_1974028C8(v6, 2);
}

uint64_t sub_197511570(uint64_t a1, uint64_t a2)
{
  sub_197522A5C();
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(&v6, ObjectType, a2);
  v4 = v6;
  if (v7)
  {
    if (v7 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v4, 1);
      sub_197452CB8(v8);
      sub_1974028C8(v4, 1);
      sub_1974028C8(v4, 1);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v4, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
      sub_1974028C8(v4, 2);
      sub_1974028C8(v4, 2);
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v4, 0);
    sub_197521F4C();
    sub_1974028C8(v4, 0);
    sub_1974028C8(v4, 0);
  }

  return sub_197522A9C();
}

uint64_t sub_197511708(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_197522A5C();
  ObjectType = swift_getObjectType();
  (*(v2 + 16))(&v7, ObjectType, v2);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    if (v8 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v4, 1);
      sub_197452CB8(v9);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v4, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v4, 0);
    sub_197521F4C();
  }

  sub_1974028C8(v4, v5);
  sub_1974028C8(v4, v5);
  return sub_197522A9C();
}

unint64_t sub_197511850()
{
  swift_getObjectType();
  v0 = sub_19752283C();
  MEMORY[0x19A8DFF80](v0);

  return 0xD000000000000011;
}

unint64_t sub_1975118CC()
{
  v1 = *(v0 + 16);
  v2 = sub_19752162C();
  strcpy(v11, "KnownKeysMap: ");
  HIBYTE(v11[1]) = -18;
  MEMORY[0x19A8DFF80](v2);

  v3 = v11[0];
  v4 = v11[1];
  v11[0] = 0xD000000000000014;
  v11[1] = 0x800000019752AB90;
  MEMORY[0x19A8DFF80](v3, v4);

  MEMORY[0x19A8DFF80](0x3A7365756C617620, 0xE900000000000020);

  swift_beginAccess();
  v5 = *(v1 + 32);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  v7 = MEMORY[0x19A8E0130](v5, v6);
  v9 = v8;

  MEMORY[0x19A8DFF80](v7, v9);

  return 0xD000000000000014;
}

id sub_197511A4C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  v3 = *(v1 + 32);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

uint64_t sub_197511A60@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (result = sub_1973F4028(result, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v6 + 56) + 8 * result);
    result = swift_beginAccess();
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v9 = *(v5 + 32);
      if (v8 < *(v9 + 16))
      {
        return sub_197413B20(v9 + 32 * v8 + 32, a3);
      }
    }

    __break(1u);
  }

  else
  {
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_197511AFC()
{

  sub_1974028C8(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_197511BB4()
{
  v1 = sub_19752162C();
  strcpy(v10, "KnownKeysMap: ");
  HIBYTE(v10[1]) = -18;
  MEMORY[0x19A8DFF80](v1);

  v2 = v10[0];
  v3 = v10[1];
  v10[0] = 0xD000000000000014;
  v10[1] = 0x800000019752AB90;
  MEMORY[0x19A8DFF80](v2, v3);

  MEMORY[0x19A8DFF80](0x3A7365756C617620, 0xE900000000000020);

  swift_beginAccess();
  v4 = *(v0 + 32);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  v6 = MEMORY[0x19A8E0130](v4, v5);
  v8 = v7;

  MEMORY[0x19A8DFF80](v6, v8);

  return 0xD000000000000014;
}

uint64_t sub_197511D34()
{
  v0 = sub_19752162C();
  strcpy(v2, "KnownKeysMap: ");
  MEMORY[0x19A8DFF80](v0);

  return v2[0];
}

uint64_t sub_197511DB4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v7 = *(v3 + 16);
  if (!*(v7 + 16))
  {
    goto LABEL_10;
  }

  v9 = sub_1973F4028(a2, a3);
  if ((v10 & 1) == 0)
  {
    goto LABEL_10;
  }

  v11 = v9;

  v5 = *(*(v7 + 56) + 8 * v11);
  swift_beginAccess();
  v12 = *(v4 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 32) = v12;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = sub_19751C104(v12);
    *(v4 + 32) = v12;
    if ((v5 & 0x8000000000000000) == 0)
    {
LABEL_5:
      if (v5 < v12[2])
      {
        sub_1973F7958(a1, &v12[4 * v5 + 4]);
        *(v4 + 32) = v12;
        swift_endAccess();
        return sub_1973F9E68(a1);
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  sub_1975221EC();

  MEMORY[0x19A8DFF80](a2, v5);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197511F20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_197511F68(uint64_t result, int a2, int a3)
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

unint64_t sub_197511FB8()
{
  result = qword_1EAF2C450[0];
  if (!qword_1EAF2C450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAF2C450);
  }

  return result;
}

uint64_t sub_197512030(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197512074()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  if (v2 != swift_getAssociatedTypeWitness())
  {
    v6 = sub_1974C23A4(v2, v3, v4, v5)[2];
LABEL_5:

    v13 = *(v6 + 16);
    swift_beginAccess();
    v9 = *(v6 + 32);

    type metadata accessor for KnownKeysDictionary();
    v10 = swift_allocObject();
    *(v10 + 16) = v13;
    *(v10 + 32) = v9;
    *(v1 + 16) = v10;
    PersistentModel.persistentModelID.getter(v2, v3, &v14);
    v11 = v15;
    *(v1 + 24) = v14;
    *(v1 + 32) = v11;
    return v1;
  }

  v7 = *(v3 + 56);
  v7(v17, v2, v3);
  v16 = v2;
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData(0, v2, v3, v8);
  if (swift_dynamicCast())
  {
    v6 = *(v14 + 16);
    goto LABEL_5;
  }

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x800000019752ABB0);
  v7(v17, v2, v3);
  sub_1975227FC();
  __swift_destroy_boxed_opaque_existential_1(v17);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1975122EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModelSnapshot(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_197512074();
}

uint64_t sub_197512340@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  if (*(v3 + 48) != 1)
  {
    v15 = *(v3 + 16);
    v16 = *(v15 + 24);
    v17 = *(v16 + 16);

    if (!v17)
    {
      goto LABEL_26;
    }

    v18 = sub_1973F7814(a1);
    if ((v19 & 1) == 0)
    {
      goto LABEL_26;
    }

    v20 = *(*(v16 + 56) + 8 * v18);
    swift_beginAccess();
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v21 = *(v15 + 32);
      if (v20 < *(v21 + 16))
      {
        sub_197413B20(v21 + 32 * v20 + 32, &v26);

        if (*(&v27 + 1))
        {
          sub_1974028B8(&v26, v28);
          v22 = *(v6 + *MEMORY[0x1E69E77B0] + 8);
          swift_dynamicCast();
          PersistentModel.persistentModelID.getter(v22, a2, a3);
          return swift_unknownObjectRelease();
        }

        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v7 = *(v3 + 16);
  v8 = *(v7 + 24);
  v9 = *(v8 + 16);

  if (v9)
  {
    v10 = sub_1973F7814(a1);
    if (v11)
    {
      v12 = *(*(v8 + 56) + 8 * v10);
      swift_beginAccess();
      if ((v12 & 0x8000000000000000) == 0)
      {
        v13 = *(v7 + 32);
        if (v12 < *(v13 + 16))
        {
          sub_197413B20(v13 + 32 * v12 + 32, v28);
          goto LABEL_14;
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v26 = 0u;
      v27 = 0u;

LABEL_27:
      __break(1u);
LABEL_28:
      sub_1973FE5EC(&v26, &qword_1EAF2AF20, &unk_19752F320);
      goto LABEL_29;
    }
  }

  memset(v28, 0, sizeof(v28));
LABEL_14:

  sub_197413B20(v28, &v26);
  if (*(&v27 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
    if (swift_dynamicCast())
    {
      sub_1973FE5EC(v28, &qword_1EAF2AF20, &unk_19752F320);
      result = swift_unknownObjectRelease();
      *a3 = v24;
      *(a3 + 8) = v25;
      return result;
    }
  }

  else
  {
    sub_1973FE5EC(&v26, &qword_1EAF2AF20, &unk_19752F320);
  }

  sub_197413B20(v28, &v26);
  if (!*(&v27 + 1))
  {
    goto LABEL_28;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000026, 0x800000019752B620);
    sub_197522B2C();
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0x206D6F726620, 0xE600000000000000);
    type metadata accessor for KnownKeysDictionary();
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    sub_1975227FC();
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  result = sub_1973FE5EC(v28, &qword_1EAF2AF20, &unk_19752F320);
  *a3 = v24;
  *(a3 + 8) = v25;
  return result;
}

char *sub_197512784(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a3;
  v29[1] = *v3;
  v6 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v7 = sub_197521F5C();
  v29[0] = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = v29 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9, v13);
  v15 = v29 - v14;
  v16 = v3[2];
  v17 = *(v16 + 24);
  v18 = *(v17 + 16);

  if (!v18 || (v19 = sub_1973F7814(a1), (v20 & 1) == 0))
  {
    v32 = 0u;
    v33 = 0u;

    goto LABEL_10;
  }

  v21 = *(*(v17 + 56) + 8 * v19);
  swift_beginAccess();
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = *(v16 + 32);
  v22 = *(v23 + 16);
  if (v21 >= v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_197413B20(v23 + 32 * v21 + 32, &v32);

  if (*(&v33 + 1))
  {
    sub_1974028B8(&v32, &v38);
    if (*(v4 + 48) == 1)
    {
      sub_197404860(&v38, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm_7(&v38);
        v31[4] = v36;
        v31[0] = v32;
        v31[1] = v33;
        v31[3] = v35;
        v31[2] = v34;
        v24 = v32;
        sub_1974416CC(v35, *(&v35 + 1), v36, *(&v36 + 1));
        __swift_destroy_boxed_opaque_existential_1Tm_7(v31 + 1);
        return v24;
      }

      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v32 = 0u;
      v33 = 0u;
      sub_1973FE5EC(&v32, &qword_1EAF2B5F8, &qword_19752EA50);
      sub_197404860(&v38, &v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm_7(&v38);
        return *&v31[0];
      }

      *&v32 = 0;
      *(&v32 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000028, 0x800000019752B6A0);
      MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752B340);
      MEMORY[0x19A8DFF80](2606, 0xE200000000000000);
      sub_19752235C();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      *&v31[0] = v4;
      sub_1975227FC();
      goto LABEL_20;
    }

    sub_197404860(&v38, &v32);
    v26 = swift_dynamicCast();
    v22 = *(v12 + 56);
    if (v26)
    {
      v22(v11, 0, 1, v6);
      (*(v12 + 32))(v15, v11, v6);
      v27 = sub_19743055C(1, v6, v30);
      (*(v12 + 8))(v15, v6);
      __swift_destroy_boxed_opaque_existential_1Tm_7(&v38);
      return v27;
    }

LABEL_18:
    v22(v11, 1, 1, v6);
    (*(v29[0] + 8))(v11, v7);
    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000025, 0x800000019752B650);
    *&v31[0] = a1;
    sub_197522B2C();
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x800000019752B680);
    v28 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v28);

    MEMORY[0x19A8DFF80](0x746F672074756220, 0xE900000000000020);
    sub_19752235C();
    MEMORY[0x19A8DFF80](8238, 0xE200000000000000);
    *&v31[0] = v4;
    sub_1975227FC();
LABEL_20:
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

LABEL_10:
  sub_1973FE5EC(&v32, &qword_1EAF2AF20, &unk_19752F320);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_197512DF4(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  sub_1973FBC40(a1, a2);
  return v4;
}

uint64_t sub_197512E44()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = v0;
    type metadata accessor for _ModelMetadata();
    swift_allocObject();
    v1 = sub_1973FD110();
    *(v2 + 40) = v1;
  }

  return v1;
}

uint64_t sub_197512EB8(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  sub_197518E60(a1, a2);
  return v4;
}

uint64_t sub_197512F10(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  sub_197517B98(a1, a2);
  return v4;
}

uint64_t sub_197512F60(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  sub_197517264(v3, a2);
  return v3;
}

void sub_197512FA8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_197446EF8(a3, a4, &v10);
  if (AssociatedTypeWitness)
  {
    sub_19743099C(&v10, v13);
    v5 = __swift_project_boxed_opaque_existential_1Tm_5(v13, v13[3]);
    MEMORY[0x1EEE9AC00](v5, v5);
    (*(v7 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1Tm_1(&v10);
    sub_1975218EC();
    while (1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(&v10, AssociatedTypeWitness);
      sub_197521F8C();
      if (!v9)
      {
        break;
      }

      a1(v9);
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1Tm_7(&v10);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v13);
  }
}

uint64_t sub_197513168(uint64_t a1)
{
  sub_197512E44();
  swift_beginAccess();

  sub_19747D9D8(&v3, a1);
  swift_endAccess();
}

id sub_1975131F4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  v3 = *(v1 + 40);
  *(a1 + 8) = v3;
  return sub_1974ADEAC(v2, v3);
}

void (*sub_19751327C(uint64_t a1))()
{
  *a1 = 0;
  *(a1 + 8) = -1;
  return sub_1975132A8;
}

uint64_t sub_1975137B0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  *a1 = result;
  return result;
}

uint64_t (*sub_1975137E8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 112))();
  return sub_19751387C;
}

void sub_19751387C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1975139F4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(v1 + 24);
  *a1 = v3;
  v4 = *(v1 + 32);
  *(a1 + 8) = v4;
  sub_1974ADEAC(v3, v4);
  return sub_197513A48;
}

void sub_197513A48(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    sub_1974ADEAC(*a1, v3);
    v5 = *(v4 + 24);
    *(v4 + 24) = v2;
    v6 = *(v4 + 32);
    *(v4 + 32) = v3;
    sub_1974A1014(v5, v6);
    v7 = v2;
    v8 = v3;
  }

  else
  {
    v7 = *(v4 + 24);
    *(v4 + 24) = v2;
    v8 = *(v4 + 32);
    *(v4 + 32) = v3;
  }

  sub_1974A1014(v7, v8);
}

uint64_t sub_197513AC8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EAF2ADA8 != -1)
  {
    swift_once();
  }

  if (dyld_program_sdk_at_least())
  {
    v6 = sub_197512E44();
    swift_beginAccess();
    v7 = *(v6 + 88);

    LOBYTE(v6) = sub_197473058(a1, v7);

    if (v6)
    {
      if (qword_1EAF2AC88 != -1)
      {
        swift_once();
      }

      v8 = sub_19752157C();
      __swift_project_value_buffer(v8, qword_1EAF33DD0);

      v9 = sub_19752155C();
      v10 = sub_197521DDC();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v53[0] = v12;
        *v11 = 136315138;
        *&v50 = a1;
        sub_197522B2C();

        v13 = sub_1975217CC();
        v15 = sub_197462310(v13, v14, v53);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_1973F2000, v9, v10, "Attempting to read a value after it has been invalidated, forKey: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_7(v12);
        MEMORY[0x19A8E1B50](v12, -1, -1);
        MEMORY[0x19A8E1B50](v11, -1, -1);
      }
    }
  }

  if (*(v3 + 48) != 1)
  {
    v24 = *(v3 + 16);
    v25 = *(v24 + 24);
    v26 = *(v25 + 16);

    if (v26 && (v27 = sub_1973F7814(a1), (v28 & 1) != 0))
    {
      v29 = *(*(v25 + 56) + 8 * v27);
      swift_beginAccess();
      if ((v29 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v30 = *(v24 + 32);
      if (v29 >= *(v30 + 16))
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      sub_197413B20(v30 + 32 * v29 + 32, &v50);
    }

    else
    {
      v50 = 0u;
      v51 = 0u;
    }

    if (*(&v51 + 1))
    {
      sub_1974028B8(&v50, v53);
      swift_dynamicCast();
      return v49[0];
    }

    goto LABEL_45;
  }

  v16 = *(sub_197512E44() + 16);

  if (!v16)
  {
LABEL_46:
    v53[0] = 0;
    v53[1] = 0xE000000000000000;
    sub_1975221EC();

    v53[0] = 0xD000000000000017;
    v53[1] = 0x800000019752B400;
    sub_197433F28(&v50);
    *&v55[0] = v50;
    BYTE8(v55[0]) = BYTE8(v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
    v46 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v46);

    goto LABEL_52;
  }

  v17 = *(v3 + 16);
  v18 = *(v17 + 24);
  v19 = *(v18 + 16);

  if (v19)
  {
    v20 = sub_1973F7814(a1);
    if (v21)
    {
      v22 = *(*(v18 + 56) + 8 * v20);
      swift_beginAccess();
      if ((v22 & 0x8000000000000000) == 0)
      {
        v23 = *(v17 + 32);
        if (v22 < *(v23 + 16))
        {
          sub_197413B20(v23 + 32 * v22 + 32, v55);
          goto LABEL_26;
        }

        goto LABEL_44;
      }

      goto LABEL_42;
    }
  }

  memset(v55, 0, 32);
LABEL_26:

  sub_197413B20(v55, v53);
  if (v54)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
    if (swift_dynamicCast())
    {
      sub_1973FE5EC(v55, &qword_1EAF2AF20, &unk_19752F320);

      sub_1974028C8(v50, SBYTE8(v50));
      *v53 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
      swift_dynamicCast();
      return v50;
    }
  }

  else
  {
    sub_1973FE5EC(v53, &qword_1EAF2AF20, &unk_19752F320);
  }

  sub_197413B20(v55, v53);
  if (v54)
  {
    if (swift_dynamicCast())
    {
      v32 = v50;
      v33 = BYTE8(v50);
      v53[0] = v50;
      LOBYTE(v53[1]) = BYTE8(v50);
      v53[0] = sub_1974309B4(v53);
      v53[1] = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
      swift_dynamicCast();
      v35 = v50;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
      v36 = swift_allocObject();
      v53[0] = v36;
      *(v36 + 16) = v50;
      *(v36 + 24) = v33;
      *(v36 + 32) = v35;
      *(v36 + 40) = a2;

      sub_1974028EC(v32, v33);
      swift_unknownObjectRetain();
      sub_1973FCF28(v53, a1);

      sub_1974028C8(v32, v33);
      sub_1973FE5EC(v55, &qword_1EAF2AF20, &unk_19752F320);
      return v35;
    }
  }

  else
  {
    sub_1973FE5EC(v53, &qword_1EAF2AF20, &unk_19752F320);
  }

  sub_197413B20(v55, v49);
  if (!v49[3])
  {
    sub_1973FE5EC(v49, &qword_1EAF2AF20, &unk_19752F320);
    v50 = 0u;
    v51 = 0u;
    v52 = 0;
    goto LABEL_49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4E0, &qword_197534B50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    goto LABEL_49;
  }

  if (!*(&v51 + 1))
  {
LABEL_49:
    sub_1973FE5EC(&v50, &qword_1EAF2C4E8, &qword_197534B58);
    goto LABEL_52;
  }

  v48 = a2;
  sub_19743099C(&v50, v53);
  if (*(*(v3 + 40) + 16))
  {
    v37 = *(v3 + 24);
    v38 = *(v3 + 32);
    sub_1974ADEAC(v37, *(v3 + 32));
    if (v38 != 255)
    {
      v39 = __swift_project_boxed_opaque_existential_1Tm_5(v53, v54);
      v40 = *v39;
      v41 = v39[1];
      v42 = *(v39 + 16);

      sub_197428988(v40, v41, v42, v37, v38, &v50);
      v43 = v50;
      LOBYTE(v41) = BYTE8(v50);
      *&v50 = sub_1974309B4(&v50);
      *(&v50 + 1) = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
      swift_dynamicCast();
      v35 = v49[0];
      *(&v51 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
      v45 = swift_allocObject();
      *&v50 = v45;
      *(v45 + 16) = v43;
      *(v45 + 24) = v41;
      *(v45 + 32) = v35;
      *(v45 + 40) = v48;

      sub_1974028EC(v43, v41);
      swift_unknownObjectRetain();
      sub_1973FCF28(&v50, a1);

      sub_1974A1014(v37, v38);

      sub_1974028C8(v43, v41);
      sub_1973FE5EC(v55, &qword_1EAF2AF20, &unk_19752F320);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v53);
      return v35;
    }

    *&v50 = 0;
    *(&v50 + 1) = 0xE000000000000000;

    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000060, 0x800000019752B420);
    v49[0] = v3;
    sub_1975227FC();
  }

  else
  {
    *&v50 = 0;
    *(&v50 + 1) = 0xE000000000000000;
    sub_1975221EC();

    *&v50 = 0xD000000000000017;
    *(&v50 + 1) = 0x800000019752B400;
    sub_197433F28(v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
    v47 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v47);
  }

LABEL_52:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19751456C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v50 - v11;
  if (*(v3 + 48) != 1)
  {
LABEL_29:
    v41 = *(v4 + 16);
    v42 = *(v41 + 24);
    v43 = *(v42 + 16);

    if (!v43 || (v44 = sub_1973F7814(a1), (v45 & 1) == 0))
    {
      v67 = 0u;
      v68 = 0u;
      goto LABEL_35;
    }

    v46 = *(*(v42 + 56) + 8 * v44);
    swift_beginAccess();
    if ((v46 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v47 = *(v41 + 32);
      if (v46 < *(v47 + 16))
      {
        sub_197413B20(v47 + 32 * v46 + 32, &v67);
LABEL_35:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
        return swift_dynamicCast();
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v53 = v10;
  v54 = v8;
  v55 = v9;
  v56 = a3;
  v13 = *(sub_197512E44() + 16);

  if (!v13)
  {
LABEL_42:
    *&v67 = 0;
    *(&v67 + 1) = 0xE000000000000000;
    sub_1975221EC();

    *&v67 = 0xD000000000000017;
    *(&v67 + 1) = 0x800000019752B400;
    sub_197433F28(&v57);
    v72[0] = v57;
    LOBYTE(v72[1]) = BYTE8(v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
    v48 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v48);

    goto LABEL_43;
  }

  v14 = *(v3 + 16);
  v15 = *(v14 + 24);
  v16 = *(v15 + 16);

  if (v16 && (v17 = sub_1973F7814(a1), (v18 & 1) != 0))
  {
    v19 = *(*(v15 + 56) + 8 * v17);
    swift_beginAccess();
    if ((v19 & 0x8000000000000000) != 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v20 = *(v14 + 32);
    if (v19 >= *(v20 + 16))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    sub_197413B20(v20 + 32 * v19 + 32, v72);
  }

  else
  {
    memset(v72, 0, 32);
  }

  sub_197413B20(v72, &v57);
  if (!*(&v58 + 1))
  {
    sub_1973FE5EC(&v57, &qword_1EAF2AF20, &unk_19752F320);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    goto LABEL_15;
  }

  if (!v67)
  {
LABEL_15:
    sub_1973FE5EC(&v67, &qword_1EAF2B5F8, &qword_19752EA50);
    sub_197413B20(v72, &v67);
    if (*(&v68 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
      if (swift_dynamicCast())
      {
        v21 = v57;
        v22 = v54;
        sub_19744CC48(v57, v13, v7, v54);
        *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
        v23 = swift_allocObject();
        *&v67 = v23;
        v23[2] = v21;
        v23[6] = v7;
        v23[7] = v22;
        boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v23 + 3);
        v25 = v55;
        (*(v55 + 16))(boxed_opaque_existential_1Tm_1, v12, v7);
        v23[8] = 1;
        v23[9] = 0;
        v23[10] = 0;
        v23[11] = 0;

        sub_1973FCF28(&v67, a1);

        sub_1973FE5EC(v72, &qword_1EAF2AF20, &unk_19752F320);
        return (*(v25 + 32))(v56, v12, v7);
      }
    }

    else
    {
      sub_1973FE5EC(&v67, &qword_1EAF2AF20, &unk_19752F320);
    }

    sub_197413B20(v72, &v64);
    if (v66)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4E0, &qword_197534B50);
      if (swift_dynamicCast())
      {
        if (*(&v58 + 1))
        {
          sub_19743099C(&v57, &v67);
          v27 = *(*(v4 + 40) + 16);
          if (!v27)
          {
            goto LABEL_44;
          }

          v28 = *(v4 + 32);
          v51 = *(v4 + 24);
          sub_1974ADEAC(v51, v28);
          v52 = v28;
          if (v28 != 255)
          {
            v29 = __swift_project_boxed_opaque_existential_1Tm_5(&v67, *(&v68 + 1));
            v30 = *v29;
            v31 = v29[1];
            v32 = *(v29 + 16);

            v33 = v32;
            v34 = v51;
            v35 = sub_197450578(v30, v31, v33, v51, v52);
            v36 = v27;
            v53 = v27;
            v37 = v54;
            sub_19744CC48(v35, v36, v7, v54);
            *(&v58 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
            v38 = swift_allocObject();
            *&v57 = v38;
            v38[2] = v35;
            v38[6] = v7;
            v38[7] = v37;
            v39 = __swift_allocate_boxed_opaque_existential_1Tm_1(v38 + 3);
            v40 = v55;
            (*(v55 + 16))(v39, v12, v7);
            v38[8] = 1;
            v38[9] = 0;
            v38[10] = 0;
            v38[11] = 0;

            sub_1973FCF28(&v57, a1);

            sub_1974A1014(v34, v52);

            sub_1973FE5EC(v72, &qword_1EAF2AF20, &unk_19752F320);
            (*(v40 + 32))(v56, v12, v7);
            return __swift_destroy_boxed_opaque_existential_1Tm_7(&v67);
          }

          *&v57 = 0;
          *(&v57 + 1) = 0xE000000000000000;

          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000060, 0x800000019752B420);
          v64 = v4;
          sub_1975227FC();
          while (1)
          {
LABEL_43:
            sub_1975223EC();
            __break(1u);
LABEL_44:
            *&v57 = 0;
            *(&v57 + 1) = 0xE000000000000000;
            sub_1975221EC();

            *&v57 = 0xD000000000000017;
            *(&v57 + 1) = 0x800000019752B400;
            sub_197433F28(&v64);
            v62 = v64;
            v63 = v65;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
            v49 = sub_1975217CC();
            MEMORY[0x19A8DFF80](v49);
          }
        }
      }

      else
      {
        *&v59 = 0;
        v57 = 0u;
        v58 = 0u;
      }

      sub_1973FE5EC(v72, &qword_1EAF2AF20, &unk_19752F320);
    }

    else
    {
      sub_1973FE5EC(v72, &qword_1EAF2AF20, &unk_19752F320);

      sub_1973FE5EC(&v64, &qword_1EAF2AF20, &unk_19752F320);
      v57 = 0u;
      v58 = 0u;
      *&v59 = 0;
    }

    sub_1973FE5EC(&v57, &qword_1EAF2C4E8, &qword_197534B58);
    goto LABEL_29;
  }

  sub_1973FE5EC(v72, &qword_1EAF2AF20, &unk_19752F320);

  v57 = v67;
  v58 = v68;
  v59 = v69;
  v60 = v70;
  v61 = v71;

  sub_1974416CC(v60, *(&v60 + 1), v61, *(&v61 + 1));
  sub_19743099C((&v57 + 8), &v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B680, &unk_197534B40);
  return swift_dynamicCast();
}

uint64_t sub_197514EBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  sub_197512E44();
  swift_beginAccess();
  sub_19751CC3C(a1);
  swift_endAccess();

  if (*(v3 + 48) == 1)
  {
    v11 = &type metadata for PersistentIdentifier;
    v8 = *(v7 + *MEMORY[0x1E69E77B0] + 8);

    PersistentModel.persistentModelID.getter(v8, a3, v10);
  }

  else
  {
    v11 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
    v10[0] = a2;

    swift_unknownObjectRetain();
  }

  sub_1973FCF28(v10, a1);
}

uint64_t sub_197515020(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  if (*(v5 + 48) == 1)
  {
    v10 = *(v8 + *MEMORY[0x1E69E77B0] + 8);

    v11 = sub_19743055C(0, v10, a5);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
    v15[0] = v11;
  }

  else
  {
    v16 = *(v8 + *MEMORY[0x1E69E77B0] + 8);
    v12 = v16;
    boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v15);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm_1, a2, v12);
  }

  sub_1973FCF28(v15, a1);
}

uint64_t sub_19751516C@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, v7, &v36);
  if (v37)
  {
    if (v37 == 1)
    {
      v9 = *(v36 + 33);
      sub_1974028C8(v36, 1);
      if ((v9 & 1) == 0)
      {
        return PersistentModel.persistentModelID.getter(ObjectType, v7, a4);
      }
    }

    else
    {
      sub_1974028C8(v36, 2);
    }
  }

  else
  {
    v10 = v36;
    v11 = [v36 isTemporaryID];
    sub_1974028C8(v10, 0);
    if ((v11 & 1) == 0)
    {
      return PersistentModel.persistentModelID.getter(ObjectType, v7, a4);
    }
  }

  if (*a2)
  {
    v34 = a4;
    if (qword_1EAF2AC88 != -1)
    {
      swift_once();
    }

    v12 = sub_19752157C();
    __swift_project_value_buffer(v12, qword_1EAF33DD0);

    swift_unknownObjectRetain();
    v13 = sub_19752155C();
    v14 = sub_197521DDC();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38 = v33;
      *v15 = 136315394;
      PersistentModel.persistentModelID.getter(ObjectType, v7, &v36);
      v16 = sub_1975217CC();
      v18 = sub_197462310(v16, v17, &v38);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      v36 = a3;

      v19 = sub_1975217CC();
      v21 = sub_197462310(v19, v20, &v38);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_1973F2000, v13, v14, "Illegal attempt to flip a temporary object to a future %s: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8E1B50](v33, -1, -1);
      MEMORY[0x19A8E1B50](v15, -1, -1);
    }

    a4 = v34;
  }

  else
  {
    if (qword_1EAF2AC88 != -1)
    {
      swift_once();
    }

    v22 = sub_19752157C();
    __swift_project_value_buffer(v22, qword_1EAF33DD0);

    v23 = sub_19752155C();
    v24 = sub_197521DDC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v35;
      *v25 = 136315138;

      v26 = sub_1975217CC();
      v28 = ObjectType;
      v29 = v7;
      v30 = a4;
      v31 = sub_197462310(v26, v27, &v36);

      *(v25 + 4) = v31;
      a4 = v30;
      v7 = v29;
      ObjectType = v28;
      _os_log_impl(&dword_1973F2000, v23, v24, "This backing data has retained a temporary object ID beyond the mutations to the context %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v35);
      MEMORY[0x19A8E1B50](v35, -1, -1);
      MEMORY[0x19A8E1B50](v25, -1, -1);
    }
  }

  return PersistentModel.persistentModelID.getter(ObjectType, v7, a4);
}

uint64_t sub_197515578(int a1, _BYTE *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    if (a3 == 1 && (a2[33] & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (![a2 isTemporaryID])
  {
    goto LABEL_11;
  }

  if (qword_1EAF2AC88 != -1)
  {
    swift_once();
  }

  v10 = sub_19752157C();
  __swift_project_value_buffer(v10, qword_1EAF33DD0);
  sub_1974028EC(a2, a3);

  v11 = sub_19752155C();
  v12 = sub_197521DDC();
  sub_1974028C8(a2, a3);

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315394;
    sub_1974028EC(a2, a3);
    v15 = sub_1975217CC();
    v17 = sub_197462310(v15, v16, &v24);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    swift_beginAccess();
    v18 = *(a4 + 16);
    v19 = *(a4 + 24);

    v20 = sub_197462310(v18, v19, &v24);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_1973F2000, v11, v12, "%%@ is attempting to flip a captured a temporary persistentIdentifier for %s on %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8E1B50](v14, -1, -1);
    MEMORY[0x19A8E1B50](v13, -1, -1);
  }

LABEL_11:
  v24 = a2;
  LOBYTE(v25) = a3;
  v24 = sub_1974309B4(&v24);
  v25 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
  swift_dynamicCast();
  return v23;
}

uint64_t sub_197515800()
{

  sub_1974A1014(*(v0 + 24), *(v0 + 32));
}

void sub_19751583C()
{
  sub_1975221EC();
  v0 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v0);

  MEMORY[0x19A8DFF80](0xD00000000000003CLL, 0x800000019752AFA0);
  sub_1975223EC();
  __break(1u);
}

id sub_1975158E8@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (v3 == 255)
  {
    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    *a1 = v4;
    *(a1 + 8) = v3;
    return sub_1974028EC(v4, v3);
  }

  return result;
}

void sub_19751598C()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000059, 0x800000019752AEF0);
  sub_1975158E8(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_197515A60()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000059, 0x800000019752AEF0);
  sub_1975158E8(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_197515B34()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000059, 0x800000019752AEF0);
  sub_1975158E8(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_197515C08()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000059, 0x800000019752AEF0);
  sub_1975158E8(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

uint64_t sub_197515F20@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 40);
  a1[3] = type metadata accessor for _ModelMetadata();
  *a1 = v3;
}

void sub_197515FC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4D8, &qword_197534B38);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v12 - v3;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1975221EC();
  v15 = v13;
  v16 = v14;
  MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x800000019752AE20);
  v5 = *(v0 + 24);
  v13 = *(v0 + 16);
  LOBYTE(v14) = v5;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206874697720, 0xE600000000000000);
  v6 = *(*(v0 + 40) + 16);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v8 = sub_19752135C();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v4, v6 + v7, v8);
    v10 = 0;
  }

  else
  {
    v8 = sub_19752135C();
    v9 = *(v8 - 8);
    v10 = 1;
  }

  (*(v9 + 56))(v4, v10, 1, v8);
  v11 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v11);

  sub_1975223EC();
  __break(1u);
}

void sub_1975161F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4D8, &qword_197534B38);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v12 - v3;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1975221EC();
  v15 = v13;
  v16 = v14;
  MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x800000019752AE20);
  v5 = *(v0 + 24);
  v13 = *(v0 + 16);
  LOBYTE(v14) = v5;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206874697720, 0xE600000000000000);
  v6 = *(*(v0 + 40) + 16);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v8 = sub_19752135C();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v4, v6 + v7, v8);
    v10 = 0;
  }

  else
  {
    v8 = sub_19752135C();
    v9 = *(v8 - 8);
    v10 = 1;
  }

  (*(v9 + 56))(v4, v10, 1, v8);
  v11 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v11);

  sub_1975223EC();
  __break(1u);
}

void sub_19751642C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4D8, &qword_197534B38);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v12 - v3;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1975221EC();
  v15 = v13;
  v16 = v14;
  MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x800000019752AE20);
  v5 = *(v0 + 24);
  v13 = *(v0 + 16);
  LOBYTE(v14) = v5;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206874697720, 0xE600000000000000);
  v6 = *(*(v0 + 40) + 16);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v8 = sub_19752135C();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v4, v6 + v7, v8);
    v10 = 0;
  }

  else
  {
    v8 = sub_19752135C();
    v9 = *(v8 - 8);
    v10 = 1;
  }

  (*(v9 + 56))(v4, v10, 1, v8);
  v11 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v11);

  sub_1975223EC();
  __break(1u);
}

void sub_197516660()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4D8, &qword_197534B38);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v12 - v3;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1975221EC();
  v15 = v13;
  v16 = v14;
  MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x800000019752AE20);
  v5 = *(v0 + 24);
  v13 = *(v0 + 16);
  LOBYTE(v14) = v5;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206874697720, 0xE600000000000000);
  v6 = *(*(v0 + 40) + 16);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v8 = sub_19752135C();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v4, v6 + v7, v8);
    v10 = 0;
  }

  else
  {
    v8 = sub_19752135C();
    v9 = *(v8 - 8);
    v10 = 1;
  }

  (*(v9 + 56))(v4, v10, 1, v8);
  v11 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v11);

  sub_1975223EC();
  __break(1u);
}

void sub_197516B80(void *a1)
{
  sub_1975221EC();
  sub_197522B2C();
  sub_1975227FC();
  MEMORY[0x19A8DFF80](0xD000000000000044, 0x800000019752B100);
  sub_1975223EC();
  __break(1u);
}

void sub_197516C88(void *a1)
{
  sub_1975221EC();
  sub_197522B2C();
  sub_1975227FC();
  MEMORY[0x19A8DFF80](0xD000000000000044, 0x800000019752B100);
  sub_1975223EC();
  __break(1u);
}

void sub_197516D90(void *a1)
{
  sub_1975221EC();
  sub_197522B2C();
  sub_1975227FC();
  MEMORY[0x19A8DFF80](0xD000000000000044, 0x800000019752B100);
  sub_1975223EC();
  __break(1u);
}

void sub_197516E98(void *a1)
{
  sub_1975221EC();
  sub_197522B2C();
  sub_1975227FC();
  MEMORY[0x19A8DFF80](0xD000000000000044, 0x800000019752B100);
  sub_1975223EC();
  __break(1u);
}

void sub_197516FA0(void *a1)
{
  sub_1975221EC();
  sub_197522B2C();
  sub_1975227FC();
  MEMORY[0x19A8DFF80](0xD000000000000044, 0x800000019752B100);
  sub_1975223EC();
  __break(1u);
}

void sub_1975170A8(void *a1)
{
  sub_1975221EC();
  sub_197522B2C();
  sub_1975227FC();
  MEMORY[0x19A8DFF80](0xD000000000000044, 0x800000019752B100);
  sub_1975223EC();
  __break(1u);
}

void sub_1975171B8()
{
  sub_1975221EC();
  sub_197522B8C();

  MEMORY[0x19A8DFF80](0xD000000000000027, 0x800000019752B090);
  sub_1975223EC();
  __break(1u);
}

uint64_t sub_197517264(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *a2;
  v5 = *(a2 + 8);
  *(v2 + 16) = 0;
  v6 = (v2 + 16);
  *(v3 + 24) = -1;
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v8 = *(v3 + 24);
  *(v3 + 24) = v5;
  sub_1974A1014(v7, v8);
  v9 = type metadata accessor for _ModelMetadata();
  swift_allocObject();
  v10 = sub_1973FD110();
  *(v10 + 24) |= 0x100000u;
  *(v3 + 56) = v9;
  *(v3 + 32) = v10;
  return v3;
}

id sub_197517308@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 24);
  if (v4 == 255)
  {
    sub_1975221EC();
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0xD000000000000031, 0x800000019752B050);
    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 16);
    *a1 = v5;
    *(a1 + 8) = v4;
    return sub_1974028EC(v5, v4);
  }

  return result;
}

void sub_19751741C()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000061, 0x800000019752AFE0);
  sub_197517308(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_1975174F0()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000061, 0x800000019752AFE0);
  sub_197517308(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_1975175C4()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000061, 0x800000019752AFE0);
  sub_197517308(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_197517698()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000061, 0x800000019752AFE0);
  sub_197517308(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

id sub_19751777C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a1 = v4;
  v5 = *(v3 + 24);
  *(a1 + 8) = v5;
  return sub_1974ADEAC(v4, v5);
}

void sub_1975177D0(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = v3;
  v6 = *(v2 + 24);
  *(v2 + 24) = v4;
  sub_1974A1014(v5, v6);
}

void sub_197517A60(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v1 + 32);
  *(v1 + 32) = v2;
  v5 = *(v1 + 40);
  *(v1 + 40) = v3;
  sub_1974A1014(v4, v5);
}

void (*sub_197517A7C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(v1 + 32);
  *a1 = v3;
  v4 = *(v1 + 40);
  *(a1 + 8) = v4;
  sub_1974ADEAC(v3, v4);
  return sub_197517AD0;
}

void sub_197517AD0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    sub_1974ADEAC(*a1, v3);
    v5 = *(v4 + 32);
    *(v4 + 32) = v2;
    v6 = *(v4 + 40);
    *(v4 + 40) = v3;
    sub_1974A1014(v5, v6);
    v7 = v2;
    v8 = v3;
  }

  else
  {
    v7 = *(v4 + 32);
    *(v4 + 32) = v2;
    v8 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  sub_1974A1014(v7, v8);
}

uint64_t sub_197517B50@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  a1[3] = type metadata accessor for _ModelMetadata();
  *a1 = v3;
}

uint64_t *sub_197517B98(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *a2;
  v7 = *(a2 + 8);
  type metadata accessor for _ModelMetadata();
  swift_allocObject();
  v2[3] = sub_1973FD110();
  v2[4] = 0;
  *(v2 + 20) = 255;
  v8 = *(v5 + 240);
  type metadata accessor for KnownKeysDictionary();
  v9 = swift_allocObject();
  v10 = sub_1973FCD6C(a1, v8);
  v9[2] = v10;
  v9[3] = v11;
  memset(v15, 0, sizeof(v15));
  v9[4] = sub_1973FE64C(v15, v10[2]);
  v3[2] = v9;
  v12 = v3[4];
  v3[4] = v6;
  v13 = *(v3 + 40);
  *(v3 + 40) = v7;
  sub_1974A1014(v12, v13);
  return v3;
}

void sub_197517CA0()
{
  type metadata accessor for _ModelMetadata();
  swift_allocObject();
  *(v0 + 24) = sub_1973FD110();
  *(v0 + 32) = 0;
  *(v0 + 40) = 255;
  sub_1975223EC();
  __break(1u);
}

uint64_t sub_197517D2C(uint64_t *a1)
{
  v4 = *(v2 + 16);

  v5 = sub_1973F8364(a1);
  v7 = *(v4 + 16);
  if (!*(v7 + 16))
  {

    goto LABEL_7;
  }

  v8 = sub_1973F4028(v5, v6);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_7:
    memset(v14, 0, sizeof(v14));
    goto LABEL_8;
  }

  v11 = *(*(v7 + 56) + 8 * v8);
  result = swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v4 + 32);
    if (v11 < *(v13 + 16))
    {
      sub_197413B20(v13 + 32 * v11 + 32, v14);
LABEL_8:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
      return swift_dynamicCast();
    }
  }

  __break(1u);
  return result;
}

id sub_197517E74(uint64_t *a1)
{
  v3 = *(v1 + 16);

  v4 = sub_1973F8364(a1);
  v6 = *(v3 + 16);
  if (*(v6 + 16))
  {
    v7 = sub_1973F4028(v4, v5);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v7);
      result = swift_beginAccess();
      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v12 = *(v3 + 32);
        if (v10 < *(v12 + 16))
        {
          sub_197413B20(v12 + 32 * v10 + 32, &v18);
          goto LABEL_8;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {
  }

  v18 = 0u;
  v19 = 0u;
LABEL_8:

  sub_197413B20(&v18, &v16);
  if (*(&v17 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
    if (swift_dynamicCast())
    {
      sub_1973FE5EC(&v18, &qword_1EAF2AF20, &unk_19752F320);
      sub_1974028C8(v13, v14);
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
      goto LABEL_13;
    }
  }

  else
  {
    sub_1973FE5EC(&v16, &qword_1EAF2AF20, &unk_19752F320);
  }

  v16 = v18;
  v17 = v19;
  if (!*(&v19 + 1))
  {
    sub_1973FE5EC(&v16, &qword_1EAF2AF20, &unk_19752F320);
    return 0;
  }

LABEL_13:
  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1975180B0(uint64_t *a1)
{
  v3 = *(v1 + 16);

  v4 = sub_1973F8364(a1);
  v6 = *(v3 + 16);
  if (*(v6 + 16))
  {
    v7 = sub_1973F4028(v4, v5);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v7);
      result = swift_beginAccess();
      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v12 = *(v3 + 32);
        if (v10 < *(v12 + 16))
        {
          sub_197413B20(v12 + 32 * v10 + 32, v18);
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }
  }

  else
  {
  }

  memset(v18, 0, sizeof(v18));
LABEL_8:

  sub_197413B20(v18, &v16);
  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
    if (swift_dynamicCast())
    {
      sub_1973FE5EC(v18, &qword_1EAF2AF20, &unk_19752F320);
      sub_1974028C8(v14, SBYTE8(v14));
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
      swift_dynamicCast();
      return v14;
    }
  }

  else
  {
    sub_1973FE5EC(&v16, &qword_1EAF2AF20, &unk_19752F320);
  }

  result = sub_197413B20(v18, &v14);
  if (!*(&v15 + 1))
  {
    goto LABEL_17;
  }

  sub_1973FE5EC(v18, &qword_1EAF2AF20, &unk_19752F320);
  sub_1974028B8(&v14, &v16);
  swift_dynamicCast();
  return v13;
}

uint64_t sub_1975182F4(uint64_t *a1)
{
  v4 = *(v2 + 16);

  v5 = sub_1973F8364(a1);
  v7 = *(v4 + 16);
  if (!*(v7 + 16))
  {

    goto LABEL_7;
  }

  v8 = sub_1973F4028(v5, v6);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_7:
    memset(v14, 0, sizeof(v14));
    goto LABEL_8;
  }

  v11 = *(*(v7 + 56) + 8 * v8);
  result = swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v4 + 32);
    if (v11 < *(v13 + 16))
    {
      sub_197413B20(v13 + 32 * v11 + 32, v14);
LABEL_8:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
      return swift_dynamicCast();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19751843C(uint64_t *a1)
{
  v4 = *(v2 + 16);

  v5 = sub_1973F8364(a1);
  v7 = *(v4 + 16);
  if (!*(v7 + 16))
  {

    goto LABEL_7;
  }

  v8 = sub_1973F4028(v5, v6);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_7:
    v26 = 0u;
    v27 = 0u;
LABEL_8:

    sub_197413B20(&v26, &v16);
    if (*(&v17 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
      if (swift_dynamicCast())
      {
        if (v21)
        {
          sub_1973FE5EC(&v26, &qword_1EAF2AF20, &unk_19752F320);
          v16 = v21;
          v17 = v22;
          v18 = v23;
          v19 = v24;
          v20 = v25;

          sub_1974416CC(v19, *(&v19 + 1), v20, *(&v20 + 1));
          sub_19743099C((&v16 + 8), &v21);
          v14 = &qword_1EAF2B680;
          v15 = &unk_197534B40;
LABEL_15:
          __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
          return swift_dynamicCast();
        }
      }

      else
      {
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        v21 = 0u;
        v22 = 0u;
      }
    }

    else
    {
      sub_1973FE5EC(&v16, &qword_1EAF2AF20, &unk_19752F320);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
    }

    sub_1973FE5EC(&v21, &qword_1EAF2B5F8, &qword_19752EA50);
    v21 = v26;
    v22 = v27;
    v14 = &qword_1EAF2AF20;
    v15 = &unk_19752F320;
    goto LABEL_15;
  }

  v11 = *(*(v7 + 56) + 8 * v8);
  result = swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v4 + 32);
    if (v11 < *(v13 + 16))
    {
      sub_197413B20(v13 + 32 * v11 + 32, &v26);
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1975186A8(uint64_t *a1)
{
  v4 = *(v2 + 16);

  v5 = sub_1973F8364(a1);
  v7 = *(v4 + 16);
  if (!*(v7 + 16))
  {

    goto LABEL_7;
  }

  v8 = sub_1973F4028(v5, v6);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_7:
    v26 = 0u;
    v27 = 0u;
LABEL_8:

    sub_197413B20(&v26, &v16);
    if (*(&v17 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
      if (swift_dynamicCast())
      {
        if (v21)
        {
          sub_1973FE5EC(&v26, &qword_1EAF2AF20, &unk_19752F320);
          v16 = v21;
          v17 = v22;
          v18 = v23;
          v19 = v24;
          v20 = v25;

          sub_1974416CC(v19, *(&v19 + 1), v20, *(&v20 + 1));
          sub_19743099C((&v16 + 8), &v21);
          v14 = &qword_1EAF2B680;
          v15 = &unk_197534B40;
LABEL_15:
          __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
          return swift_dynamicCast();
        }
      }

      else
      {
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        v21 = 0u;
        v22 = 0u;
      }
    }

    else
    {
      sub_1973FE5EC(&v16, &qword_1EAF2AF20, &unk_19752F320);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
    }

    sub_1973FE5EC(&v21, &qword_1EAF2B5F8, &qword_19752EA50);
    v21 = v26;
    v22 = v27;
    v14 = &qword_1EAF2AF20;
    v15 = &unk_19752F320;
    goto LABEL_15;
  }

  v11 = *(*(v7 + 56) + 8 * v8);
  result = swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v4 + 32);
    if (v11 < *(v13 + 16))
    {
      sub_197413B20(v13 + 32 * v11 + 32, &v26);
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197518914(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = sub_1973F8364(a1);
  v7 = v6;
  v8 = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  v11[3] = v8;
  boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v11);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1Tm_1, a2, v8);
  sub_197511DB4(v11, v5, v7);
}

uint64_t sub_1975189FC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = sub_1973F8364(a1);
  v7 = v6;
  if (a2)
  {
    v8 = *(*(v4 + *MEMORY[0x1E69E77B0] + 8) + 16);
    v9 = a2;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v11[1] = 0;
    v11[2] = 0;
  }

  v11[0] = v9;
  v11[3] = v8;
  swift_unknownObjectRetain();
  sub_197511DB4(v11, v5, v7);
}

uint64_t sub_197518AE0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = sub_1973F8364(a1);
  v7 = v6;
  v9[3] = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  v9[0] = a2;
  swift_unknownObjectRetain();
  sub_197511DB4(v9, v5, v7);
}

uint64_t sub_197518BA8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = sub_1973F8364(a1);
  v7 = v6;
  v8 = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  v11[3] = v8;
  boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v11);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1Tm_1, a2, v8);
  sub_197511DB4(v11, v5, v7);
}

uint64_t sub_197518C90(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = sub_1973F8364(a1);
  v7 = v6;
  v8 = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  v11[3] = v8;
  boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v11);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1Tm_1, a2, v8);
  sub_197511DB4(v11, v5, v7);
}

uint64_t sub_197518D78(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = sub_1973F8364(a1);
  v7 = v6;
  v8 = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  v11[3] = v8;
  boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v11);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1Tm_1, a2, v8);
  sub_197511DB4(v11, v5, v7);
}

uint64_t sub_197518E60(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  type metadata accessor for _ModelMetadata();
  swift_allocObject();
  *(v2 + 24) = sub_1973FD110();
  *(v2 + 32) = 0;
  *(v2 + 40) = 255;
  v7 = *(v6 + 240);
  type metadata accessor for KnownKeysDictionary();
  v8 = swift_allocObject();
  v9 = sub_1973FCD6C(a1, v7);
  v8[2] = v9;
  v8[3] = v10;
  v86 = 0u;
  v87 = 0u;
  v8[4] = sub_1973FE64C(&v86, v9[2]);
  *(v3 + 16) = v8;
  v12 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm_5(a2, v12);
  (*(*(v11 + 8) + 24))(&v86, v12);
  v13 = BYTE8(v86);
  v14 = *(v3 + 32);
  *(v3 + 32) = v86;
  v15 = *(v3 + 40);
  v83 = v3;
  *(v3 + 40) = v13;
  sub_1974A1014(v14, v15);
  type metadata accessor for Schema.Entity();
  v16 = sub_1973FDF38(a1, v7);
  swift_beginAccess();
  v81 = v16;
  v17 = *(v16 + 80);
  if ((v17 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    type metadata accessor for Schema.Attribute();
    sub_19751E7F8(&qword_1ED7CA320, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
    sub_197521C1C();
    v17 = v92;
    v18 = v93;
    v19 = v94;
    v20 = v95;
    v21 = v96;
  }

  else
  {
    v22 = -1 << *(v17 + 32);
    v18 = v17 + 56;
    v19 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v21 = v24 & *(v17 + 56);

    v20 = 0;
  }

  v25 = (v19 + 64) >> 6;
  v82 = a2;
  while (v17 < 0)
  {
    v30 = sub_19752212C();
    if (!v30)
    {
      goto LABEL_31;
    }

    *&v97 = v30;
    type metadata accessor for Schema.Attribute();
    swift_dynamicCast();
    v29 = v86;
    v28 = v20;
    v3 = v21;
    if (!v86)
    {
      goto LABEL_31;
    }

LABEL_17:
    v31 = *__swift_project_boxed_opaque_existential_1Tm_5(a2, a2[3]);
    swift_beginAccess();
    if (!*(v31 + 16) || (v84 = v3, v33 = *(v29 + 16), v32 = *(v29 + 24), , v34 = sub_1973F4028(v33, v32), v36 = v35, v3 = v84, , (v36 & 1) == 0))
    {

      v90 = 0u;
      v91 = 0u;
      goto LABEL_27;
    }

    sub_1973FDED4(*(v31 + 56) + 48 * v34, &v86);
    v37 = *(&v87 + 1);
    v38 = __swift_project_boxed_opaque_existential_1Tm_5(&v86, *(&v87 + 1));
    *(&v91 + 1) = v37;
    boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(&v90);
    (*(*(v37 - 8) + 16))(boxed_opaque_existential_1Tm_1, v38, v37);
    __swift_destroy_boxed_opaque_existential_1Tm_7(&v86);
    if (*(&v91 + 1))
    {
      sub_1974028B8(&v90, &v97);
      v40 = *(v83 + 16);
      v20 = *(v29 + 16);
      v3 = *(v29 + 24);
      sub_197404860(&v97, &v86);
      v41 = *(v40 + 16);
      v42 = *(v41 + 16);

      if (!v42)
      {
        goto LABEL_67;
      }

      v43 = sub_1973F4028(v20, v3);
      if ((v44 & 1) == 0)
      {
        goto LABEL_67;
      }

      v45 = v43;

      v3 = *(*(v41 + 56) + 8 * v45);
      swift_beginAccess();
      v46 = *(v40 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v40 + 32) = v46;
      if (isUniquelyReferenced_nonNull_native)
      {
        a2 = v82;
        if (v3 < 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v46 = sub_19751C104(v46);
        *(v40 + 32) = v46;
        a2 = v82;
        if (v3 < 0)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      if (v3 >= v46[2])
      {
        goto LABEL_65;
      }

      sub_1973F7958(&v86, &v46[4 * v3 + 4]);
      *(v40 + 32) = v46;
      swift_endAccess();

      sub_1973FE5EC(&v86, &qword_1EAF2AF20, &unk_19752F320);
      __swift_destroy_boxed_opaque_existential_1Tm_7(&v97);

      v20 = v28;
      v21 = v84;
    }

    else
    {

LABEL_27:
      sub_1973FE5EC(&v90, &qword_1EAF2AF20, &unk_19752F320);
      v20 = v28;
      v21 = v3;
    }
  }

  v26 = v20;
  v27 = v21;
  v28 = v20;
  if (v21)
  {
LABEL_13:
    v3 = (v27 - 1) & v27;
    v29 = *(*(v17 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));

    if (!v29)
    {
      goto LABEL_31;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    if (v28 >= v25)
    {
      break;
    }

    v27 = *(v18 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_13;
    }
  }

LABEL_31:
  sub_1973FF47C(v17);
  swift_beginAccess();
  v48 = *(v81 + 88);
  if ((v48 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_19751E7F8(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
    sub_197521C1C();
    v49 = *(&v97 + 1);
    v48 = v97;
    v50 = v98;
    v51 = v99;
    v52 = v100;
  }

  else
  {
    v53 = -1 << *(v48 + 32);
    v49 = v48 + 56;
    v50 = ~v53;
    v54 = -v53;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    else
    {
      v55 = -1;
    }

    v52 = v55 & *(v48 + 56);

    v51 = 0;
  }

  v56 = (v50 + 64) >> 6;
  while (2)
  {
    if (v48 < 0)
    {
      v61 = sub_19752212C();
      if (!v61)
      {
        goto LABEL_62;
      }

      *&v90 = v61;
      type metadata accessor for Schema.Relationship();
      swift_dynamicCast();
      v60 = v86;
      v3 = v51;
      v59 = v52;
      if (!v86)
      {
        goto LABEL_62;
      }

LABEL_50:
      v85 = v59;
      v62 = *__swift_project_boxed_opaque_existential_1Tm_5(a2, a2[3]);
      swift_beginAccess();
      if (*(v62 + 16) && (v63 = *(v60 + 16), v64 = *(v60 + 24), , v65 = sub_1973F4028(v63, v64), v20 = v66, , (v20 & 1) != 0))
      {
        sub_1973FDED4(*(v62 + 56) + 48 * v65, &v86);
        v67 = *(&v87 + 1);
        v68 = __swift_project_boxed_opaque_existential_1Tm_5(&v86, *(&v87 + 1));
        *(&v89 + 1) = v67;
        v69 = __swift_allocate_boxed_opaque_existential_1Tm_1(&v88);
        (*(*(v67 - 8) + 16))(v69, v68, v67);
        __swift_destroy_boxed_opaque_existential_1Tm_7(&v86);
        if (*(&v89 + 1))
        {
          sub_1974028B8(&v88, &v90);
          v70 = *(v83 + 16);
          v20 = *(v60 + 16);
          v71 = *(v60 + 24);
          sub_197404860(&v90, &v86);
          v72 = *(v70 + 16);
          v73 = *(v72 + 16);

          if (!v73 || (v74 = sub_1973F4028(v20, v71), (v75 & 1) == 0))
          {
            *&v88 = 0;
            *(&v88 + 1) = 0xE000000000000000;
            sub_1975221EC();

            *&v88 = 0xD000000000000029;
            *(&v88 + 1) = 0x8000000197527BD0;
            MEMORY[0x19A8DFF80](v20, v71);
            goto LABEL_69;
          }

          v76 = v74;

          v77 = *(*(v72 + 56) + 8 * v76);
          swift_beginAccess();
          v78 = *(v70 + 32);
          v79 = swift_isUniquelyReferenced_nonNull_native();
          *(v70 + 32) = v78;
          if (v79)
          {
            a2 = v82;
            if ((v77 & 0x8000000000000000) != 0)
            {
              goto LABEL_61;
            }
          }

          else
          {
            v78 = sub_19751C104(v78);
            *(v70 + 32) = v78;
            a2 = v82;
            if ((v77 & 0x8000000000000000) != 0)
            {
LABEL_61:
              __break(1u);
LABEL_62:

              sub_1973FF47C(v48);
              __swift_destroy_boxed_opaque_existential_1Tm_7(a2);
              return v83;
            }
          }

          if (v77 >= v78[2])
          {
            goto LABEL_66;
          }

          sub_1973F7958(&v86, &v78[4 * v77 + 4]);
          *(v70 + 32) = v78;
          swift_endAccess();

          sub_1973FE5EC(&v86, &qword_1EAF2AF20, &unk_19752F320);
          __swift_destroy_boxed_opaque_existential_1Tm_7(&v90);

          goto LABEL_40;
        }
      }

      else
      {

        v88 = 0u;
        v89 = 0u;
      }

      sub_1973FE5EC(&v88, &qword_1EAF2AF20, &unk_19752F320);
LABEL_40:
      v51 = v3;
      v52 = v85;
      continue;
    }

    break;
  }

  v57 = v51;
  v58 = v52;
  v3 = v51;
  if (v52)
  {
LABEL_46:
    v59 = (v58 - 1) & v58;
    v60 = *(*(v48 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v58)))));

    if (!v60)
    {
      goto LABEL_62;
    }

    goto LABEL_50;
  }

  while (1)
  {
    v3 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v3 >= v56)
    {
      goto LABEL_62;
    }

    v58 = *(v49 + 8 * v3);
    ++v57;
    if (v58)
    {
      goto LABEL_46;
    }
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  *&v90 = 0;
  *(&v90 + 1) = 0xE000000000000000;
  sub_1975221EC();

  *&v90 = 0xD000000000000029;
  *(&v90 + 1) = 0x8000000197527BD0;
  MEMORY[0x19A8DFF80](v20, v3);
LABEL_69:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197519840(void *a1)
{
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 240);
  type metadata accessor for Schema.Entity();
  v5 = sub_1973FDF38(v3, v4);
  swift_beginAccess();
  v92 = v5;
  v6 = *(v5 + 80);
  if ((v6 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    type metadata accessor for Schema.Attribute();
    sub_19751E7F8(&qword_1ED7CA320, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
    sub_197521C1C();
    v6 = v103;
    v7 = v104;
    v8 = v105;
    v9 = v106;
    v10 = v107;
  }

  else
  {
    v11 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v6 + 56);

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  while (1)
  {
    if (v6 < 0)
    {
      v20 = sub_19752212C();
      if (!v20)
      {
        goto LABEL_38;
      }

      *&v108 = v20;
      type metadata accessor for Schema.Attribute();
      swift_dynamicCast();
      v19 = v97;
      v17 = v9;
      v18 = v10;
      if (!v97)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v15 = v9;
      v16 = v10;
      v17 = v9;
      if (!v10)
      {
        while (1)
        {
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v17 >= v14)
          {
            goto LABEL_38;
          }

          v16 = *(v7 + 8 * v17);
          ++v15;
          if (v16)
          {
            goto LABEL_14;
          }
        }

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
        __break(1u);
LABEL_84:
        *&v108 = 0;
        *(&v108 + 1) = 0xE000000000000000;
        sub_1975221EC();

        *&v108 = 0xD000000000000029;
        *(&v108 + 1) = 0x8000000197527BD0;
        MEMORY[0x19A8DFF80](v9, i);
        while (1)
        {
LABEL_87:
          sub_1975223EC();
          __break(1u);
LABEL_88:
          *&v101 = 0;
          *(&v101 + 1) = 0xE000000000000000;
          sub_1975221EC();

          *&v101 = 0xD000000000000029;
          *(&v101 + 1) = 0x8000000197527BD0;
          v90 = v9;
          v91 = i;
LABEL_86:
          MEMORY[0x19A8DFF80](v90, v91);
        }
      }

LABEL_14:
      v18 = (v16 - 1) & v16;
      v19 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

      if (!v19)
      {
        goto LABEL_38;
      }
    }

    v93 = v18;
    v21 = *__swift_project_boxed_opaque_existential_1Tm_5(a1, a1[3]);
    swift_beginAccess();
    if (*(v21 + 16))
    {
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);

      v24 = sub_1973F4028(v22, v23);
      v26 = v25;

      if (v26)
      {
        break;
      }
    }

    v101 = 0u;
    v102 = 0u;
LABEL_28:
    sub_1973FE5EC(&v101, &qword_1EAF2AF20, &unk_19752F320);
    v38 = *(v96 + 16);
    v9 = *(v19 + 16);
    i = *(v19 + 24);
    v97 = 0u;
    v98 = 0u;
    v39 = *(v38 + 16);
    v40 = *(v39 + 16);

    if (!v40)
    {
      goto LABEL_84;
    }

    v41 = sub_1973F4028(v9, i);
    if ((v42 & 1) == 0)
    {
      goto LABEL_84;
    }

    v43 = v41;

    i = *(*(v39 + 56) + 8 * v43);
    swift_beginAccess();
    v44 = *(v38 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v38 + 32) = v44;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((i & 0x8000000000000000) != 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v44 = sub_19751C104(v44);
      *(v38 + 32) = v44;
      if ((i & 0x8000000000000000) != 0)
      {
        goto LABEL_78;
      }
    }

    if (i >= v44[2])
    {
      goto LABEL_79;
    }

    sub_1973F7958(&v97, &v44[4 * i + 4]);
    *(v38 + 32) = v44;
    swift_endAccess();

    sub_1973FE5EC(&v97, &qword_1EAF2AF20, &unk_19752F320);
LABEL_8:

    v9 = v17;
    v10 = v93;
  }

  sub_1973FDED4(*(v21 + 56) + 48 * v24, &v97);
  v27 = *(&v98 + 1);
  v28 = __swift_project_boxed_opaque_existential_1Tm_5(&v97, *(&v98 + 1));
  *(&v102 + 1) = v27;
  boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(&v101);
  (*(*(v27 - 8) + 16))(boxed_opaque_existential_1Tm_1, v28, v27);
  __swift_destroy_boxed_opaque_existential_1Tm_7(&v97);
  if (!*(&v102 + 1))
  {
    goto LABEL_28;
  }

  sub_1974028B8(&v101, &v108);
  v30 = *(v96 + 16);
  v9 = *(v19 + 16);
  i = *(v19 + 24);
  sub_197404860(&v108, &v97);
  v31 = *(v30 + 16);
  v32 = *(v31 + 16);

  if (!v32)
  {
    goto LABEL_88;
  }

  v33 = sub_1973F4028(v9, i);
  if ((v34 & 1) == 0)
  {
    goto LABEL_88;
  }

  v35 = v33;

  i = *(*(v31 + 56) + 8 * v35);
  swift_beginAccess();
  v36 = *(v30 + 32);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  *(v30 + 32) = v36;
  if (v37)
  {
    if ((i & 0x8000000000000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

  v36 = sub_19751C104(v36);
  *(v30 + 32) = v36;
  if ((i & 0x8000000000000000) == 0)
  {
LABEL_25:
    if (i >= v36[2])
    {
      goto LABEL_82;
    }

    sub_1973F7958(&v97, &v36[4 * i + 4]);
    *(v30 + 32) = v36;
    swift_endAccess();

    sub_1973FE5EC(&v97, &qword_1EAF2AF20, &unk_19752F320);
    __swift_destroy_boxed_opaque_existential_1Tm_7(&v108);
    goto LABEL_8;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  sub_1973FF47C(v6);
  *(v96 + 41) = 1;
  *(*(v96 + 24) + 80) = 0;
  swift_beginAccess();
  v46 = *(v92 + 88);
  if ((v46 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_19751E7F8(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
    sub_197521C1C();
    v47 = *(&v108 + 1);
    v46 = v108;
    v48 = v109;
    v49 = v110;
    v50 = v111;
  }

  else
  {
    v51 = -1 << *(v46 + 32);
    v47 = v46 + 56;
    v48 = ~v51;
    v52 = -v51;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    else
    {
      v53 = -1;
    }

    v50 = v53 & *(v46 + 56);

    v49 = 0;
  }

  v54 = (v48 + 64) >> 6;
  while (2)
  {
    if (v46 < 0)
    {
      v59 = sub_19752212C();
      if (!v59)
      {
        goto LABEL_75;
      }

      *&v101 = v59;
      type metadata accessor for Schema.Relationship();
      swift_dynamicCast();
      v58 = v97;
      i = v49;
      v57 = v50;
      if (!v97)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v55 = v49;
      v56 = v50;
      for (i = v49; !v56; ++v55)
      {
        i = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_77;
        }

        if (i >= v54)
        {
          goto LABEL_75;
        }

        v56 = *(v47 + 8 * i);
      }

      v57 = (v56 - 1) & v56;
      v58 = *(*(v46 + 48) + ((i << 9) | (8 * __clz(__rbit64(v56)))));

      if (!v58)
      {
        goto LABEL_75;
      }
    }

    v94 = v57;
    v60 = *__swift_project_boxed_opaque_existential_1Tm_5(a1, a1[3]);
    swift_beginAccess();
    if (!*(v60 + 16) || (v61 = *(v58 + 16), v62 = *(v58 + 24), , v63 = sub_1973F4028(v61, v62), v65 = v64, , (v65 & 1) == 0))
    {
      v99 = 0u;
      v100 = 0u;
LABEL_65:
      sub_1973FE5EC(&v99, &qword_1EAF2AF20, &unk_19752F320);
      v79 = *(v96 + 16);
      v9 = *(v58 + 16);
      v80 = *(v58 + 24);
      v97 = 0u;
      v98 = 0u;
      v81 = *(v79 + 16);
      v82 = *(v81 + 16);

      if (!v82 || (v83 = sub_1973F4028(v9, v80), (v84 & 1) == 0))
      {
        *&v101 = 0;
        *(&v101 + 1) = 0xE000000000000000;
        sub_1975221EC();

        *&v101 = 0xD000000000000029;
        *(&v101 + 1) = 0x8000000197527BD0;
        v90 = v9;
        v91 = v80;
        goto LABEL_86;
      }

      v85 = v83;

      v86 = *(*(v81 + 56) + 8 * v85);
      swift_beginAccess();
      v87 = *(v79 + 32);
      v88 = swift_isUniquelyReferenced_nonNull_native();
      *(v79 + 32) = v87;
      if (v88)
      {
        if ((v86 & 0x8000000000000000) != 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v87 = sub_19751C104(v87);
        *(v79 + 32) = v87;
        if ((v86 & 0x8000000000000000) != 0)
        {
          goto LABEL_80;
        }
      }

      if (v86 >= v87[2])
      {
        goto LABEL_81;
      }

      sub_1973F7958(&v97, &v87[4 * v86 + 4]);
      *(v79 + 32) = v87;
      swift_endAccess();

      sub_1973FE5EC(&v97, &qword_1EAF2AF20, &unk_19752F320);
      goto LABEL_45;
    }

    sub_1973FDED4(*(v60 + 56) + 48 * v63, &v97);
    v66 = *(&v98 + 1);
    v67 = __swift_project_boxed_opaque_existential_1Tm_5(&v97, *(&v98 + 1));
    *(&v100 + 1) = v66;
    v68 = __swift_allocate_boxed_opaque_existential_1Tm_1(&v99);
    (*(*(v66 - 8) + 16))(v68, v67, v66);
    __swift_destroy_boxed_opaque_existential_1Tm_7(&v97);
    if (!*(&v100 + 1))
    {
      goto LABEL_65;
    }

    sub_1974028B8(&v99, &v101);
    v69 = *(v96 + 16);
    v9 = *(v58 + 16);
    v70 = *(v58 + 24);
    sub_197404860(&v101, &v97);
    v71 = *(v69 + 16);
    v72 = *(v71 + 16);

    if (!v72 || (v73 = sub_1973F4028(v9, v70), (v74 & 1) == 0))
    {
      *&v99 = 0;
      *(&v99 + 1) = 0xE000000000000000;
      sub_1975221EC();

      *&v99 = 0xD000000000000029;
      *(&v99 + 1) = 0x8000000197527BD0;
      MEMORY[0x19A8DFF80](v9, v70);
      goto LABEL_87;
    }

    v75 = v73;

    v76 = *(*(v71 + 56) + 8 * v75);
    swift_beginAccess();
    v77 = *(v69 + 32);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    *(v69 + 32) = v77;
    if (v78)
    {
      if ((v76 & 0x8000000000000000) != 0)
      {
        goto LABEL_74;
      }

LABEL_62:
      if (v76 >= v77[2])
      {
        goto LABEL_83;
      }

      sub_1973F7958(&v97, &v77[4 * v76 + 4]);
      *(v69 + 32) = v77;
      swift_endAccess();

      sub_1973FE5EC(&v97, &qword_1EAF2AF20, &unk_19752F320);
      __swift_destroy_boxed_opaque_existential_1Tm_7(&v101);
LABEL_45:

      v49 = i;
      v50 = v94;
      continue;
    }

    break;
  }

  v77 = sub_19751C104(v77);
  *(v69 + 32) = v77;
  if ((v76 & 0x8000000000000000) == 0)
  {
    goto LABEL_62;
  }

LABEL_74:
  __break(1u);
LABEL_75:
  sub_1973FF47C(v46);
}

void sub_19751A3A0()
{

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  sub_1974A1014(v1, v2);
}

uint64_t sub_19751A3DC()
{

  sub_1974A1014(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t sub_19751A410()
{
  sub_19751A3DC();

  return swift_deallocClassInstance();
}

void BackingData._generateCurrentClassBackingData<A>()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v66 = a4;
  v68 = a2;
  v7 = a1;
  v67 = a5;
  v8 = *(a1 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v64 - v13;
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v64 - v17;
  (*(v19 + 32))(v74, v16, v19);
  v69 = BYTE8(v74[0]);
  if (BYTE8(v74[0]) == 255)
  {
    goto LABEL_34;
  }

  v20 = *&v74[0];
  v21 = *(v8 + 16);
  (v21)(v18, v5, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for _StitchedBackingData(0, AssociatedTypeWitness, AssociatedConformanceWitness, v24);
  if (!swift_dynamicCast())
  {
    goto LABEL_21;
  }

  v71 = *&v74[0];
  v14 = v68;
  v26 = v66;
  v27 = type metadata accessor for _KKMDBackingData(0, v68, v66, v25);
  *&v74[0] = v20;
  BYTE8(v74[0]) = v69;
  v65 = v20;
  sub_1974028EC(v20, v69);
  v64 = v27;
  v70 = swift_allocObject();
  sub_1973FBC40(v14, v74);
  v28 = sub_1973F68A4(v14, v26);
  v21 = v28;
  v20 = *(v28 + 16);
  if (!v20)
  {
LABEL_24:

    v53 = v70;
    *(v70 + 48) = v71[41];
    v54 = v67;
    v67[3] = v64;
    v54[4] = swift_getWitnessTable();

    sub_1974A1014(v65, v69);
    *v54 = v53;
    return;
  }

  v6 = 0;
  v29 = v28 + 32;
  while (1)
  {
    if (v6 >= *(v21 + 16))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_1975221EC();

      v72 = 0xD000000000000029;
      v73 = 0x8000000197527BD0;
      MEMORY[0x19A8DFF80](v14, v7);
      goto LABEL_34;
    }

    sub_1973F7E64(v29, v74);
    AssociatedConformanceWitness = *(v70 + 16);
    v7 = *(&v74[0] + 1);
    v14 = *&v74[0];

    sub_1973F82A8(v74);
    v30 = *(v71 + 2);
    v31 = *(v30 + 16);
    v32 = *(v31 + 16);

    if (v32 && (v33 = sub_1973F4028(v14, v7), (v34 & 1) != 0))
    {
      v35 = *(*(v31 + 56) + 8 * v33);
      swift_beginAccess();
      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }

      v36 = *(v30 + 32);
      if (v35 >= *(v36 + 16))
      {
        goto LABEL_32;
      }

      sub_197413B20(v36 + 32 * v35 + 32, v75);
    }

    else
    {
      memset(v75, 0, 32);
    }

    v37 = *(AssociatedConformanceWitness + 16);
    if (!*(v37 + 16))
    {
      goto LABEL_33;
    }

    v38 = sub_1973F4028(v14, v7);
    if ((v39 & 1) == 0)
    {
      goto LABEL_33;
    }

    v40 = v38;

    v14 = *(*(v37 + 56) + 8 * v40);
    swift_beginAccess();
    AssociatedTypeWitness = *(AssociatedConformanceWitness + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(AssociatedConformanceWitness + 32) = AssociatedTypeWitness;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_16;
    }

    AssociatedTypeWitness = sub_19751C104(AssociatedTypeWitness);
    *(AssociatedConformanceWitness + 32) = AssociatedTypeWitness;
    if ((v14 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_16:
    if (v14 >= AssociatedTypeWitness[2])
    {
      goto LABEL_30;
    }

    ++v6;
    sub_1973F7958(v75, &AssociatedTypeWitness[4 * v14 + 4]);
    *(AssociatedConformanceWitness + 32) = AssociatedTypeWitness;
    swift_endAccess();
    sub_1973FE5EC(v75, &qword_1EAF2AF20, &unk_19752F320);

    v29 += 96;
    if (v20 == v6)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_21:
  v42 = v20;
  (v21)(v14, v6, v7);
  v44 = type metadata accessor for _FullFutureBackingData(0, AssociatedTypeWitness, AssociatedConformanceWitness, v43);
  if (!swift_dynamicCast())
  {
    (v21)(v71, v6, v7);
    v72 = v68;
    swift_getExtendedExistentialTypeMetadata();
    if (swift_dynamicCast())
    {
      sub_1974A1014(v20, v69);
      sub_19743099C(v75, v74);
      sub_19743099C(v74, v67);
      return;
    }

    *&v74[0] = 0;
    *(&v74[0] + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0x7420656C62616E55, 0xEF2074736163206FLL);
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752AC50);
    v63 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v63);

    MEMORY[0x19A8DFF80](41, 0xE100000000000000);
    while (1)
    {
LABEL_34:
      sub_1975223EC();
      __break(1u);
    }
  }

  v45 = *&v74[0];
  v46 = v66;
  v47 = v68;
  if (swift_getAssociatedTypeWitness() != v47)
  {
    v49 = type metadata accessor for _KKMDBackingData(0, v47, v46, v48);
    *&v74[0] = v42;
    v50 = v69;
    BYTE8(v74[0]) = v69;
    sub_1974028EC(v42, v69);
    v51 = swift_allocObject();
    sub_1973FBC40(v47, v74);
    *(sub_197512E44() + 112) = 1;

    v52 = v67;
    v67[3] = v49;
    v52[4] = swift_getWitnessTable();

    sub_1974A1014(v42, v50);
    *v52 = v51;
    return;
  }

  *&v74[0] = v45;
  WitnessTable = swift_getWitnessTable();
  v56 = *(sub_1973FE71C(v44, WitnessTable) + 16);

  if (!v56)
  {
    goto LABEL_34;
  }

  v58 = type metadata accessor for _FullFutureBackingData(0, v47, v46, v57);
  *&v74[0] = v42;
  v59 = v69;
  BYTE8(v74[0]) = v69;
  sub_1974ADEAC(v42, v69);
  v60 = swift_allocObject();

  sub_1974499A4(v61, v74, v56);
  v62 = v67;
  v67[3] = v58;
  v62[4] = swift_getWitnessTable();

  sub_1974A1014(v42, v59);
  *v62 = v60;
}

void BackingData._superClassBackingData<A>(of:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = v7;
  v113 = a6;
  v112 = a4;
  v9 = a3;
  *&v114 = a1;
  v109 = a7;
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v108 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = v107 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v107 - v18;
  (*(v20 + 32))(v115, v21, v20);
  v111 = BYTE8(v115[0]);
  if (BYTE8(v115[0]) == 255)
  {
    goto LABEL_72;
  }

  v110 = *&v115[0];
  v22 = *(v10 + 16);
  v22(v19, v7, v9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for _StitchedBackingData(0, AssociatedTypeWitness, AssociatedConformanceWitness, v25);
  if (!swift_dynamicCast())
  {
    v22(v16, v7, v9);
    v33 = type metadata accessor for _FullFutureBackingData(0, AssociatedTypeWitness, AssociatedConformanceWitness, v32);
    if (swift_dynamicCast())
    {
      v107[1] = *&v115[0];
      WitnessTable = swift_getWitnessTable();
      v35 = *(sub_1973FE71C(v33, WitnessTable) + 16);

      if (!v35)
      {
        goto LABEL_72;
      }

      v36 = swift_getAssociatedTypeWitness();
      v38 = v112;
      v39 = v111;
      if (v36 == v112)
      {
        v98 = type metadata accessor for _FullFutureBackingData(0, v112, v113, v37);
        v99 = v110;
        *&v115[0] = v110;
        BYTE8(v115[0]) = v39;
        sub_1974ADEAC(v110, v39);
        v100 = swift_allocObject();

        sub_1974499A4(v101, v115, v35);
        v102 = v109;
        v109[3] = v98;
        v102[4] = swift_getWitnessTable();

        sub_1974A1014(v99, v39);
        *v102 = v100;
        return;
      }

      v40 = sub_1975214CC();
      if (v40)
      {
        v41 = v40;
        v42 = swift_conformsToProtocol2();
        v43 = v110;
        if (v42)
        {
          sub_19751C00C(v110, v39, v35, v41, &v120, v113, v42);
          v114 = *&v121[8];
          v44 = *&v121[8];
          v45 = v43;
          v46 = __swift_project_boxed_opaque_existential_1Tm_5(&v120, *&v121[8]);
          *(&v115[1] + 8) = v114;
          boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v115);
          (*(*(v44 - 8) + 16))(boxed_opaque_existential_1Tm_1, v46, v44);
          __swift_destroy_boxed_opaque_existential_1Tm_7(&v120);
          sub_19751C118(v115, &v118);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B220, &qword_19752D3B0);
          v116 = v38;
          swift_getExtendedExistentialTypeMetadata();
          if (swift_dynamicCast())
          {
            sub_1974A1014(v45, v39);

            sub_19743099C(&v117, &v120);
            sub_19743099C(&v120, v109);
            __swift_destroy_boxed_opaque_existential_1Tm_7(v115);
            return;
          }

          *&v120 = 0;
          *(&v120 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0x7420656C62616E55, 0xEF2074736163206FLL);
          sub_19752235C();
          MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752AC50);
          v106 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v106);

          goto LABEL_72;
        }

LABEL_16:
        v22(v108, v8, v9);
        v118 = v38;
        swift_getExtendedExistentialTypeMetadata();
        if (swift_dynamicCast())
        {
          sub_1974A1014(v43, v39);
          goto LABEL_59;
        }

        *&v115[0] = 0;
        *(&v115[0] + 1) = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0x7420656C62616E55, 0xEF2074736163206FLL);
        sub_1975227FC();
        MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752AC50);
        v103 = sub_197522B8C();
        MEMORY[0x19A8DFF80](v103);

        goto LABEL_72;
      }
    }

    else
    {
      v38 = v112;
      v39 = v111;
    }

    v43 = v110;
    goto LABEL_16;
  }

  v26 = *&v115[0];
  v27 = sub_1975214CC();
  *&v114 = v26;
  if (!v27)
  {
    v48 = swift_getAssociatedTypeWitness();
    v49 = v111;
    if (v48 != v112)
    {
      goto LABEL_72;
    }

    v50 = v48;
    v51 = swift_getAssociatedConformanceWitness();
    v53 = type metadata accessor for _KKMDBackingData(0, v50, v51, v52);
    *&v115[0] = v110;
    BYTE8(v115[0]) = v49;
    sub_1974028EC(v110, v49);
    v108 = v53;
    v9 = swift_allocObject();
    sub_1973FBC40(v50, v115);
    v54 = sub_1973F68A4(v50, v51);
    v55 = v54;
    v113 = *(v54 + 16);
    if (!v113)
    {
      goto LABEL_37;
    }

    v56 = 0;
    v57 = v54 + 32;
    while (v56 < *(v55 + 16))
    {
      sub_1973F7E64(v57, v115);
      v58 = v9;
      v59 = *(v9 + 16);
      v22 = *(&v115[0] + 1);
      v9 = *&v115[0];

      sub_1973F82A8(v115);
      v60 = *(v26 + 16);
      v61 = *(v60 + 16);
      v62 = *(v61 + 16);

      if (v62 && (v63 = sub_1973F4028(v9, v22), (v64 & 1) != 0))
      {
        v65 = *(*(v61 + 56) + 8 * v63);
        swift_beginAccess();
        if ((v65 & 0x8000000000000000) != 0)
        {
          goto LABEL_67;
        }

        v66 = *(v60 + 32);
        if (v65 >= *(v66 + 16))
        {
          goto LABEL_68;
        }

        sub_197413B20(v66 + 32 * v65 + 32, &v120);
      }

      else
      {
        v120 = 0u;
        *v121 = 0u;
      }

      v67 = *(v59 + 16);
      if (!*(v67 + 16))
      {
        goto LABEL_71;
      }

      v68 = sub_1973F4028(v9, v22);
      if ((v69 & 1) == 0)
      {
        goto LABEL_71;
      }

      v70 = v68;

      v26 = *(*(v67 + 56) + 8 * v70);
      swift_beginAccess();
      v71 = *(v59 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v59 + 32) = v71;
      if (isUniquelyReferenced_nonNull_native)
      {
        v9 = v58;
        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v71 = sub_19751C104(v71);
        *(v59 + 32) = v71;
        v9 = v58;
        if ((v26 & 0x8000000000000000) != 0)
        {
LABEL_36:
          __break(1u);
LABEL_37:

          *(v9 + 48) = *(v26 + 41);
          v118 = v9;

          v116 = v112;
          swift_getExtendedExistentialTypeMetadata();
          if (swift_dynamicCast())
          {
            goto LABEL_58;
          }

          *&v115[0] = 0;
          *(&v115[0] + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000010, 0x800000019752AD20);
          *&v120 = v9;
          sub_1975227FC();
          MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x800000019752AD40);
          v104 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v104);

          while (1)
          {
LABEL_72:
            sub_1975223EC();
            __break(1u);
          }
        }
      }

      if (v26 >= v71[2])
      {
        goto LABEL_64;
      }

      ++v56;
      sub_1973F7958(&v120, &v71[4 * v26 + 4]);
      *(v59 + 32) = v71;
      swift_endAccess();
      sub_1973FE5EC(&v120, &qword_1EAF2AF20, &unk_19752F320);

      v57 += 96;
      v26 = v114;
      if (v113 == v56)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    v118 = 0;
    v119 = 0xE000000000000000;
    sub_1975221EC();

    v118 = 0xD000000000000029;
    v119 = 0x8000000197527BD0;
    MEMORY[0x19A8DFF80](v9, v22);
    goto LABEL_72;
  }

  v28 = v27;
  v29 = swift_conformsToProtocol2();
  v30 = v111;
  if (!v29)
  {
    goto LABEL_72;
  }

  if (v28 != v112)
  {
    v31 = v110;
    sub_19751BF3C(v110, v111, v26, v112, v109, v113);

    sub_1974A1014(v31, v30);
    return;
  }

  v73 = swift_getAssociatedTypeWitness();
  v74 = swift_getAssociatedConformanceWitness();
  v76 = type metadata accessor for _KKMDBackingData(0, v73, v74, v75);
  *&v115[0] = v110;
  BYTE8(v115[0]) = v30;
  sub_1974028EC(v110, v30);
  v108 = v76;
  v77 = swift_allocObject();
  sub_1973FBC40(v73, v115);
  v78 = sub_1973F68A4(v73, v74);
  v79 = v78;
  v113 = *(v78 + 16);
  if (!v113)
  {
    goto LABEL_57;
  }

  v80 = 0;
  v81 = v78 + 32;
  while (1)
  {
    v82 = v114;
    if (v80 >= *(v79 + 16))
    {
      goto LABEL_65;
    }

    sub_1973F7E64(v81, v115);
    v83 = v77;
    v77 = *(v77 + 16);
    v22 = *(&v115[0] + 1);
    v9 = *&v115[0];

    sub_1973F82A8(v115);
    v84 = *(v82 + 16);
    v85 = *(v84 + 16);
    v86 = *(v85 + 16);

    if (v86 && (v87 = sub_1973F4028(v9, v22), (v88 & 1) != 0))
    {
      v89 = *(*(v85 + 56) + 8 * v87);
      swift_beginAccess();
      if ((v89 & 0x8000000000000000) != 0)
      {
        goto LABEL_69;
      }

      v90 = *(v84 + 32);
      if (v89 >= *(v90 + 16))
      {
        goto LABEL_70;
      }

      sub_197413B20(v90 + 32 * v89 + 32, &v120);
    }

    else
    {
      v120 = 0u;
      *v121 = 0u;
    }

    v91 = *(v77 + 16);
    if (!*(v91 + 16))
    {
      goto LABEL_71;
    }

    v92 = sub_1973F4028(v9, v22);
    if ((v93 & 1) == 0)
    {
      goto LABEL_71;
    }

    v94 = v92;

    v95 = *(*(v91 + 56) + 8 * v94);
    swift_beginAccess();
    v96 = *(v77 + 32);
    v97 = swift_isUniquelyReferenced_nonNull_native();
    *(v77 + 32) = v96;
    if (v97)
    {
      if ((v95 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_52;
    }

    v96 = sub_19751C104(v96);
    *(v77 + 32) = v96;
    if ((v95 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_52:
    if (v95 >= v96[2])
    {
      goto LABEL_66;
    }

    ++v80;
    sub_1973F7958(&v120, &v96[4 * v95 + 4]);
    *(v77 + 32) = v96;
    swift_endAccess();
    sub_1973FE5EC(&v120, &qword_1EAF2AF20, &unk_19752F320);

    v81 += 96;
    v77 = v83;
    if (v113 == v80)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_57:

  *(v77 + 48) = *(v114 + 41);
  v118 = v77;

  v116 = v112;
  swift_getExtendedExistentialTypeMetadata();
  if (!swift_dynamicCast())
  {
    *&v115[0] = 0;
    *(&v115[0] + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000010, 0x800000019752AD20);
    *&v120 = v77;
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752AC50);
    v105 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v105);

    goto LABEL_72;
  }

LABEL_58:
  sub_1974A1014(v110, v111);

LABEL_59:
  sub_19743099C(&v120, v115);
  sub_19743099C(v115, v109);
}

uint64_t sub_19751BF3C@<X0>(void *a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>, uint64_t a6)
{
  v11 = type metadata accessor for _StitchedBackingData(0, a4, a6, a3);
  v14 = a1;
  v15 = a2;
  sub_1974028EC(a1, a2);
  v12 = swift_allocObject();
  sub_197517B98(a4, &v14);
  *(v12 + 16) = *(a3 + 16);

  a5[3] = v11;
  result = swift_getWitnessTable();
  a5[4] = result;
  *a5 = v12;
  return result;
}

uint64_t sub_19751C00C@<X0>(void *a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t *a5@<X8>, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for _FullFutureBackingData(0, a4, a7, a3);
  v15 = a1;
  v16 = a2;
  sub_1974028EC(a1, a2);
  v12 = swift_allocObject();

  sub_1974499A4(v13, &v15, a3);
  a5[3] = v11;
  result = swift_getWitnessTable();
  a5[4] = result;
  *a5 = v12;
  return result;
}

uint64_t sub_19751C118(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t dispatch thunk of BackingData.getValue<A>(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 64))(a1, a2, a3, a4);
}

{
  return (*(a5 + 72))(a1, a2, a3, a4);
}

{
  return (*(a5 + 80))(a1, a2, a3, a4);
}

uint64_t sub_19751C2D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1975220EC();
  }

  return sub_19752224C();
}

void sub_19751C33C(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v88 = sub_1975212CC();
  v7 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v8);
  v87 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  sub_197522A5C();
  v83 = v3;
  v84 = a3;
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_197452CB8(v92);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_197521F4C();
  }

  v11 = sub_197522A9C();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  v91 = v10 + 56;
  if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_78:
    v76 = v84;
    *v84 = 0;
    *(v76 + 8) = -1;
    return;
  }

  v90 = ~v12;
  v85 = v10;
  v86 = (v7 + 8);
  while (1)
  {
    v15 = 16 * v13;
    v16 = *(v10 + 48) + 16 * v13;
    v17 = *v16;
    v18 = *(v16 + 8);
    if (!*(v16 + 8))
    {
      if (!a2)
      {
        sub_197422C6C();
        sub_1974028EC(a1, 0);
        sub_1974028EC(v17, 0);
        v14 = sub_197521F3C();
        sub_1974028C8(a1, 0);
        sub_1974028C8(v17, 0);
        if (v14)
        {
          goto LABEL_83;
        }

        goto LABEL_9;
      }

      v89 = 16 * v13;
      type metadata accessor for PersistentIdentifierImplementation();
      v24 = swift_allocObject();
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      sub_1974028EC(a1, a2);
      sub_1974028EC(v17, 0);
      v25 = [v17 persistentStore];
      if (v25 && (v26 = v25, v27 = [v25 identifier], v26, v27))
      {
        v28 = sub_1975217BC();
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      *(v24 + 16) = v28;
      *(v24 + 24) = v30;
      *(v24 + 33) = [v17 isTemporaryID];
      *(v24 + 32) = 1;
      v48 = [v17 URIRepresentation];
      v49 = v87;
      sub_19752127C();

      v50 = sub_19752123C();
      v52 = v51;
      (*v86)(v49, v88);
      *(v24 + 56) = v50;
      *(v24 + 64) = v52;
      v53 = [v17 entityName];
      v54 = sub_1975217BC();
      v56 = v55;

      *(v24 + 72) = v54;
      *(v24 + 80) = v56;
      v38 = a2;
      goto LABEL_50;
    }

    if (v18 == 1)
    {
      break;
    }

    if (a2 != 2)
    {
      v89 = 16 * v13;
      type metadata accessor for PersistentIdentifierImplementation();
      v24 = swift_allocObject();
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      sub_1974028EC(a1, a2);
      sub_1974028EC(v17, 2);
      *(v24 + 56) = sub_19750A470();
      *(v24 + 64) = v39;
      *(v24 + 72) = sub_19750A588();
      *(v24 + 80) = v40;
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = 256;
      v38 = a2;
      if (!a2)
      {
        goto LABEL_45;
      }

LABEL_50:
      if (v38 == 1)
      {
        sub_1974028EC(a1, 1);
        v41 = a1;
      }

      else
      {
        type metadata accessor for PersistentIdentifierImplementation();
        v41 = swift_allocObject();
        v41[5] = 0;
        v41[6] = 0;
        v41[7] = sub_19750A470();
        v41[8] = v57;
        v41[9] = sub_19750A588();
        v41[10] = v58;
        v41[2] = 0;
        v41[3] = 0;
        *(v41 + 16) = 256;
      }

      goto LABEL_55;
    }

    sub_1974028EC(a1, 2);
    sub_1974028EC(v17, 2);
    v31 = sub_19750A470();
    v33 = v32;
    if (v31 == sub_19750A470() && v33 == v34)
    {
    }

    else
    {
      v36 = sub_19752282C();

      if ((v36 & 1) == 0)
      {
        v37 = 2;
        LOBYTE(v18) = 2;
LABEL_70:
        sub_1974028C8(a1, v37);
        sub_1974028C8(v17, v18);
        goto LABEL_9;
      }
    }

    v71 = sub_19750A588();
    v73 = v72;
    if (v71 == sub_19750A588() && v73 == v74)
    {

      a2 = 2;
      LOBYTE(v18) = 2;
      goto LABEL_82;
    }

    v75 = sub_19752282C();

    sub_1974028C8(a1, 2);
    sub_1974028C8(v17, 2);
    if (v75)
    {
      goto LABEL_83;
    }

LABEL_9:
    v13 = (v13 + 1) & v90;
    if (((*(v91 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  if (a2 == 1)
  {
    v19 = v17[7] == a1[7] && v17[8] == a1[8];
    if (v19 || (sub_19752282C() & 1) != 0)
    {
      v20 = v17[9] == a1[9] && v17[10] == a1[10];
      if (v20 || (sub_19752282C() & 1) != 0)
      {
        v21 = v17[3];
        v22 = a1[3];
        if (v21)
        {
          if (v22)
          {
            v23 = v17[2] == a1[2] && v21 == v22;
            if (v23 || (sub_19752282C() & 1) != 0)
            {
              goto LABEL_83;
            }
          }
        }

        else if (!v22)
        {
          goto LABEL_83;
        }
      }
    }

    goto LABEL_9;
  }

  v89 = 16 * v13;
  sub_1974028EC(v17, 1);
  sub_1974028EC(a1, a2);
  sub_1974028EC(v17, 1);
  v24 = v17;
  v38 = a2;
  if (a2)
  {
    goto LABEL_50;
  }

LABEL_45:
  type metadata accessor for PersistentIdentifierImplementation();
  v41 = swift_allocObject();
  v41[5] = 0;
  v41[6] = 0;
  v42 = [a1 persistentStore];
  if (v42 && (v43 = v42, v44 = [v42 identifier], v43, v44))
  {
    v45 = sub_1975217BC();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  v41[2] = v45;
  v41[3] = v47;
  *(v41 + 33) = [a1 isTemporaryID];
  *(v41 + 32) = 1;
  v59 = [a1 URIRepresentation];
  v60 = v87;
  sub_19752127C();

  v61 = sub_19752123C();
  v63 = v62;
  (*v86)(v60, v88);
  v41[7] = v61;
  v41[8] = v63;
  v64 = [a1 entityName];
  v65 = sub_1975217BC();
  v67 = v66;

  v41[9] = v65;
  v41[10] = v67;
  v10 = v85;
LABEL_55:
  if ((*(v24 + 56) != v41[7] || *(v24 + 64) != v41[8]) && (sub_19752282C() & 1) == 0 || (*(v24 + 72) != v41[9] || *(v24 + 80) != v41[10]) && (sub_19752282C() & 1) == 0)
  {
LABEL_67:

LABEL_69:

    v37 = a2;
    goto LABEL_70;
  }

  v68 = *(v24 + 24);
  v69 = v41[3];
  if (!v68)
  {

    if (!v69)
    {
      goto LABEL_81;
    }

    goto LABEL_69;
  }

  if (!v69)
  {
    goto LABEL_67;
  }

  if (*(v24 + 16) != v41[2] || v68 != v69)
  {
    v70 = sub_19752282C();

    sub_1974028C8(a1, a2);
    sub_1974028C8(v17, v18);
    v15 = v89;
    if (v70)
    {
      goto LABEL_83;
    }

    goto LABEL_9;
  }

LABEL_81:

  v15 = v89;
LABEL_82:
  sub_1974028C8(a1, a2);
  sub_1974028C8(v17, v18);
LABEL_83:
  v77 = v83;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v77;
  v92[0] = *v77;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_19747FB74();
    v79 = v92[0];
  }

  v80 = *(v79 + 48) + v15;
  v81 = *v80;
  LOBYTE(v80) = *(v80 + 8);
  v82 = v84;
  *v84 = v81;
  *(v82 + 8) = v80;
  sub_19751CF54(v13);
  *v77 = v92[0];
}

uint64_t sub_19751CC3C(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_19752213C();

    if (v5)
    {
      v6 = sub_19751CDD8(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_19752202C();
  v8 = sub_1975216AC();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while ((sub_19752173C() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_19747FE30();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_19751D2C8(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_19751CDD8(uint64_t a1, uint64_t a2)
{

  v3 = sub_1975220EC();
  v4 = swift_unknownObjectRetain();
  v5 = sub_19747DE54(v4, v3);
  v12 = v5;
  sub_19752202C();

  v6 = sub_1975216AC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while ((sub_19752173C() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_19751D2C8(v8);
  result = sub_19752173C();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_19751CF54(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_19752207C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v23 = v9;
      v10 = v7;
      do
      {
        v11 = 16 * v6;
        v12 = *(v3 + 48) + 16 * v6;
        v13 = *v12;
        v14 = *(v12 + 8);
        sub_197522A5C();
        if (v14)
        {
          if (v14 == 1)
          {
            MEMORY[0x19A8E1190](1);
            sub_1974028EC(v13, 1);
            sub_19752180C();
            sub_19752180C();
            if (v13[3])
            {
              sub_197522A7C();
              sub_19752180C();
            }

            else
            {
              sub_197522A7C();
            }

            sub_197522A7C();
            v9 = v23;
          }

          else
          {
            MEMORY[0x19A8E1190](2);
            sub_1974028EC(v13, 2);
            sub_19750A470();
            sub_19752180C();

            sub_19750A588();
          }

          sub_19752180C();
        }

        else
        {
          MEMORY[0x19A8E1190](0);
          sub_1974028EC(v13, 0);
          sub_197521F4C();
        }

        v15 = sub_197522A9C();
        sub_1974028C8(v13, v14);
        v16 = v15 & v10;
        if (v2 >= v9)
        {
          if (v16 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v9)
        {
          goto LABEL_20;
        }

        if (v2 >= v16)
        {
LABEL_20:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + v11);
          if (16 * v2 != v11 || (v2 = v6, v18 >= v19 + 1))
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v10;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_19751D2C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_19752207C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      sub_19752202C();
      do
      {
        v10 = sub_1975216AC() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

void sub_19751D484()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000059, 0x800000019752AEF0);
  sub_1975158E8(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_19751D558()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4D8, &qword_197534B38);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v12 - v3;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1975221EC();
  v15 = v13;
  v16 = v14;
  MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x800000019752AE20);
  v5 = *(v0 + 24);
  v13 = *(v0 + 16);
  LOBYTE(v14) = v5;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206874697720, 0xE600000000000000);
  v6 = *(*(v0 + 40) + 16);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v8 = sub_19752135C();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v4, v6 + v7, v8);
    v10 = 0;
  }

  else
  {
    v8 = sub_19752135C();
    v9 = *(v8 - 8);
    v10 = 1;
  }

  (*(v9 + 56))(v4, v10, 1, v8);
  v11 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v11);

  sub_1975223EC();
  __break(1u);
}

void sub_19751D78C()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000061, 0x800000019752AFE0);
  sub_197517308(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_19751D860()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000059, 0x800000019752AEF0);
  sub_1975158E8(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_19751D934()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4D8, &qword_197534B38);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v12 - v3;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1975221EC();
  v15 = v13;
  v16 = v14;
  MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x800000019752AE20);
  v5 = *(v0 + 24);
  v13 = *(v0 + 16);
  LOBYTE(v14) = v5;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206874697720, 0xE600000000000000);
  v6 = *(*(v0 + 40) + 16);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v8 = sub_19752135C();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v4, v6 + v7, v8);
    v10 = 0;
  }

  else
  {
    v8 = sub_19752135C();
    v9 = *(v8 - 8);
    v10 = 1;
  }

  (*(v9 + 56))(v4, v10, 1, v8);
  v11 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v11);

  sub_1975223EC();
  __break(1u);
}

void sub_19751DB68()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000061, 0x800000019752AFE0);
  sub_197517308(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_19751DC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000059, 0x800000019752AEF0);
  sub_1975158E8(&v5);
  v3 = v5;
  v4 = v6;
  sub_19752235C();
  sub_1974028C8(v3, v4);
  sub_1975223EC();
  __break(1u);
}

void sub_19751DD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4D8, &qword_197534B38);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - v6;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1975221EC();
  v18 = v16;
  v19 = v17;
  MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x800000019752AE20);
  v8 = *(v3 + 24);
  v16 = *(v3 + 16);
  LOBYTE(v17) = v8;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206874697720, 0xE600000000000000);
  v9 = *(*(v3 + 40) + 16);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v11 = sub_19752135C();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v7, v9 + v10, v11);
    v13 = 0;
  }

  else
  {
    v11 = sub_19752135C();
    v12 = *(v11 - 8);
    v13 = 1;
  }

  (*(v12 + 56))(v7, v13, 1, v11);
  v14 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v14);

  sub_1975223EC();
  __break(1u);
}

void sub_19751DF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000061, 0x800000019752AFE0);
  sub_197517308(&v5);
  v3 = v5;
  v4 = v6;
  sub_19752235C();
  sub_1974028C8(v3, v4);
  sub_1975223EC();
  __break(1u);
}

void sub_19751E02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000059, 0x800000019752AEF0);
  sub_1975158E8(&v5);
  v3 = v5;
  v4 = v6;
  sub_19752235C();
  sub_1974028C8(v3, v4);
  sub_1975223EC();
  __break(1u);
}

void sub_19751E108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4D8, &qword_197534B38);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - v6;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1975221EC();
  v18 = v16;
  v19 = v17;
  MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x800000019752AE20);
  v8 = *(v3 + 24);
  v16 = *(v3 + 16);
  LOBYTE(v17) = v8;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206874697720, 0xE600000000000000);
  v9 = *(*(v3 + 40) + 16);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v11 = sub_19752135C();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v7, v9 + v10, v11);
    v13 = 0;
  }

  else
  {
    v11 = sub_19752135C();
    v12 = *(v11 - 8);
    v13 = 1;
  }

  (*(v12 + 56))(v7, v13, 1, v11);
  v14 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v14);

  sub_1975223EC();
  __break(1u);
}

void sub_19751E340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000061, 0x800000019752AFE0);
  sub_197517308(&v5);
  v3 = v5;
  v4 = v6;
  sub_19752235C();
  sub_1974028C8(v3, v4);
  sub_1975223EC();
  __break(1u);
}

void sub_19751E41C()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000059, 0x800000019752AEF0);
  sub_1975158E8(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

void sub_19751E4F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4D8, &qword_197534B38);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v12 - v3;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1975221EC();
  v15 = v13;
  v16 = v14;
  MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x800000019752AE20);
  v5 = *(v0 + 24);
  v13 = *(v0 + 16);
  LOBYTE(v14) = v5;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206874697720, 0xE600000000000000);
  v6 = *(*(v0 + 40) + 16);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v8 = sub_19752135C();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v4, v6 + v7, v8);
    v10 = 0;
  }

  else
  {
    v8 = sub_19752135C();
    v9 = *(v8 - 8);
    v10 = 1;
  }

  (*(v9 + 56))(v4, v10, 1, v8);
  v11 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v11);

  sub_1975223EC();
  __break(1u);
}

void sub_19751E724()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000061, 0x800000019752AFE0);
  sub_197517308(&v2);
  v0 = v2;
  v1 = v3;
  sub_19752235C();
  sub_1974028C8(v0, v1);
  sub_1975223EC();
  __break(1u);
}

uint64_t sub_19751E7F8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19751E8C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v10 = sub_1974BFC08(MEMORY[0x1E69E7CC0]);
  v11 = a1[2];
  if (a4 & 1 | (a3 < 1))
  {
    a3 = a1[2];
  }

  if (!a3)
  {
    goto LABEL_23;
  }

  v12 = v10;

  sub_1974C1878(0, v11, a3, a1, a3);
  v14 = v13;
  v33 = a2;

  v15 = *(v14 + 16);
  if (!v15)
  {
LABEL_19:

    *a5 = v12;
    a5[1] = v33;
    a5[2] = a3;
    a5[3] = v11;
    return result;
  }

  v16 = 0;
  while (v16 < *(v14 + 16))
  {
    v17 = *(v14 + 32 + 8 * v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_19749ED9C(v16, v19);
    v22 = v12[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_21;
    }

    v26 = v21;
    if (v12[3] < v25)
    {
      sub_197479384(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_19749ED9C(v16, v27);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_24;
      }

LABEL_14:
      if (v26)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v31 = v20;
    sub_19747BF8C();
    v20 = v31;
    if (v26)
    {
LABEL_6:
      *(v12[7] + 8 * v20) = v17;

      goto LABEL_7;
    }

LABEL_15:
    v12[(v20 >> 6) + 8] |= 1 << v20;
    *(v12[6] + 8 * v20) = v16;
    *(v12[7] + 8 * v20) = v17;
    v29 = v12[2];
    v24 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v24)
    {
      goto LABEL_22;
    }

    v12[2] = v30;
LABEL_7:
    if (v15 == ++v16)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1975229CC();
  __break(1u);
  return result;
}

uint64_t FetchResultsCollection.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = v2->n128_u64[0];
  v6 = v2->n128_u64[1];
  v7 = v2[1];
  v8 = v2[1].n128_i64[0];
  if (v8 != 1)
  {
    if (v8)
    {
      if (a1 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_27;
      }

      v29 = v2[1];
      if (!*(v5 + 16))
      {
        goto LABEL_29;
      }

      v12 = sub_19749ED9C(a1 / v8, v7);
      if ((v13 & 1) == 0)
      {
        goto LABEL_29;
      }

      v14 = *(*(v5 + 56) + 8 * v12);

      if (!v14)
      {
        goto LABEL_29;
      }

      v15 = a1 % v8;
      if ((v15 & 0x8000000000000000) == 0)
      {
        if (v15 < *(v14 + 16))
        {
          v30 = v14 + 40 * v15;
          sub_197520068(v30 + 32, &v34);
          v16 = v6;
          v17 = v35.n128_i64[1];
          v18 = v36;
          __swift_project_boxed_opaque_existential_1(&v34, v35.n128_i64[1]);
          v19 = *(a2 + 16);
          v20 = v17;
          v21 = v16;
          v22 = (*(v18 + 24))(v19, v16, v19, v20, v18);
          __swift_destroy_boxed_opaque_existential_1(&v34);
          if (v22)
          {
            *&v34 = v5;
            *(&v34 + 1) = v16;
            v35 = v29;
            sub_19751ED9C(a1, a2);
          }

          if (v15 < *(v14 + 16))
          {
            sub_197520068(v30 + 32, &v34);

            v23 = v35.n128_i64[1];
            v24 = v36;
            __swift_project_boxed_opaque_existential_1(&v34, v35.n128_i64[1]);
            (*(v24 + 16))(v19, v21, v19, v23, v24);
            v25 = &v34;
            return __swift_destroy_boxed_opaque_existential_1(v25);
          }

          goto LABEL_26;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

  if (*(v5 + 16))
  {
    v9 = sub_19749ED9C(a1, v7);
    if (v10)
    {
      v11 = *(*(v5 + 56) + 8 * v9);

      if (v11)
      {
        if (*(v11 + 16))
        {
          sub_197520068(v11 + 32, &v34);

          goto LABEL_20;
        }

        goto LABEL_28;
      }
    }
  }

  v36 = 0;
  v34 = 0u;
  v35 = 0u;
LABEL_20:
  sub_1975200CC(&v34, v31);
  v26 = v32;
  if (v32)
  {
    v27 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v27 + 16))(*(a2 + 16), v6, *(a2 + 16), v26, v27);
    sub_19752013C(&v34);
    v25 = v31;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

LABEL_30:
  result = sub_19752013C(v31);
  __break(1u);
  return result;
}

void sub_19751ED9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 16);
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = *v6;
  v22 = v6[1];
  if (v5 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_22;
  }

  if (!*(v11 + 16))
  {
    goto LABEL_20;
  }

  v12 = sub_19749ED9C(v5 / v10, v7);
  if ((v13 & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v14 = *(*(v11 + 56) + 8 * v12);
  v15 = v14[2];
  if (v15)
  {
    v16 = (v4 + 8);

    v17 = 0;
    v18 = 4;
    while (1)
    {
      if (v14)
      {
        if (v17 >= v14[2])
        {
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        sub_197520068(&v14[v18], v23);
        sub_197471350(v23, v24);
        v19 = v25;
        v20 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        (*(v20 + 16))(v3, v22, v3, v19, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_19751C0DC(v14);
        }

        (*v16)(v9, v3);
        if (v17 >= v14[2])
        {
          goto LABEL_18;
        }

        __swift_assign_boxed_opaque_existential_1(&v14[v18], v24);
        __swift_destroy_boxed_opaque_existential_1(v24);
      }

      ++v17;
      v18 += 5;
      if (v15 == v17)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_16:
}

uint64_t sub_19751EFC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69828](a1, a2, WitnessTable, v5);
}

uint64_t sub_19751F058@<X0>(uint64_t *a1@<X8>)
{
  result = FetchResultsCollection.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t (*sub_19751F080(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_19751F150(v6, *a2, a3);
  return sub_19751F108;
}

void sub_19751F108(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_19751F150(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  FetchResultsCollection.subscript.getter(a2, a3);
  return sub_19751F220;
}

void sub_19751F220(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_19751F270(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69838](a1, WitnessTable, v3);
}

uint64_t sub_19751F2F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69820](a1, a2, WitnessTable, v5);
}

uint64_t sub_19751F378(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

__n128 sub_19751F3F0@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_19751F400(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_19751F45C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_19751F4D8()
{
  if (swift_dynamicCastMetatype())
  {
    sub_1974028EC(*v3, *(v3 + 8));
    return swift_dynamicCast();
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000029, 0x800000019752B830);
    MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752B340);
    MEMORY[0x19A8DFF80](0x7463656C6C6F6320, 0xEC000000736E6F69);
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19751F614(uint64_t a1, uint64_t a2)
{
  v6 = swift_conformsToProtocol2();
  if (v6 && a1)
  {
    sub_19751F780(a1, a2, a1, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
    return swift_dynamicCast();
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000025, 0x8000000197534E20);
    MEMORY[0x19A8DFF80](0xD000000000000036, 0x800000019752B760);
    MEMORY[0x19A8DFF80](0x6574736973726550, 0xEF6C65646F4D746ELL);
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19751F780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for EditingState(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v16 = sub_197404E70(a2 + v15, v12);
    MEMORY[0x1EEE9AC00](v16, v17);
    *(&v29 - 6) = a3;
    *(&v29 - 5) = a4;
    *(&v29 - 4) = v4;
    *(&v29 - 3) = a2;
    v27 = v14;
    v28 = a1;
    sub_197406BD8(v12, sub_197520638, (&v29 - 8), a3, v32);

    sub_197428DBC(v12);
    return v32[0];
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1975221EC();
    v32[0] = v30;
    v32[1] = v31;
    MEMORY[0x19A8DFF80](0xD00000000000004DLL, 0x800000019752B7A0);
    v19 = *(v4 + 16);
    v20 = [v19 description];
    v21 = sub_1975217BC();
    v23 = v22;

    MEMORY[0x19A8DFF80](v21, v23);

    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    if (!*(a2 + 16) && !swift_weakLoadStrong())
    {
      __break(1u);
    }

    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
    v24 = sub_19752160C();
    v26 = v25;

    MEMORY[0x19A8DFF80](v24, v26);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19751FA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v36 = 0;
  v15 = *(a1 + 16);
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = &v36;
  v16[7] = a1;
  v16[8] = v15;
  v16[9] = a4;
  v16[10] = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_19752065C;
  *(v17 + 24) = v16;
  v34 = sub_197520694;
  v35 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_197472418;
  v33 = &block_descriptor_4;
  v18 = _Block_copy(&aBlock);
  v19 = v15;
  v20 = a2;
  v21 = v19;

  [v21 performBlockAndWait_];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    v22 = v36;
    if (v36)
    {
      swift_unknownObjectRetain();

      *a8 = v22;

      return swift_unknownObjectRelease();
    }
  }

  aBlock = 0;
  v31 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000036, 0x800000019752B7F0);
  v24 = *(v20 + 16);
  v25 = [v24 description];
  v26 = sub_1975217BC();
  v28 = v27;

  MEMORY[0x19A8DFF80](v26, v28);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19751FD08(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v32 = a1[2];
  LOBYTE(v33) = 0;
  v14 = v32;
  v15 = sub_19742C058(&v32, a8);
  if (v15)
  {
    v16 = v15;

    *a3 = v16;

    return swift_unknownObjectRelease();
  }

  else
  {
    v18 = *(a4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFC8, &qword_19752C730);
    inited = swift_initStackObject();
    v20 = MEMORY[0x1E69E7CC8];
    v30 = a3;
    inited[2] = MEMORY[0x1E69E7CC8];
    inited[3] = v20;
    inited[4] = MEMORY[0x1E69E7CD0];
    inited[5] = v18;
    v29 = v14;
    v21 = a1[2];

    v28 = [a5 objectWithID_];
    sub_197402910(v28, a5, inited, &v32);
    v22 = v32;
    v23 = v33;
    v24 = v34;
    swift_beginAccess();
    sub_1974028EC(v23, v24);

    sub_1974028EC(v23, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_197400CA8(v22, v23, v24, v23, v24, isUniquelyReferenced_nonNull_native);
    sub_1974028C8(v23, v24);
    swift_endAccess();
    swift_beginAccess();
    v26 = sub_197400BC8(v23, v24);
    swift_endAccess();

    v32 = v22;
    v33 = v23;
    v34 = v24;
    v27 = sub_197520790(a7, &v32, a8, a9);
    sub_19743371C(v27, a8, a9);

    sub_1974028C8(v23, v24);

    swift_setDeallocating();

    *v30 = v27;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    a1[3] = v27;
    a1[4] = a9;
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_19751FFD0()
{
  swift_unknownObjectRelease();
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_197520068(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1975200CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4F0, &unk_197534B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19752013C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4F0, &unk_197534B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_197520368(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2C3B0, &qword_1975342A0);
    sub_197510F04();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197520418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_197520460(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1975204A8(uint64_t result, int a2, int a3)
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

uint64_t sub_197520524(uint64_t a1)
{
  if (swift_conformsToProtocol2() && a1)
  {
    return *(v1 + 24) == 0;
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000025, 0x8000000197534E20);
  MEMORY[0x19A8DFF80](0xD000000000000036, 0x800000019752B760);
  MEMORY[0x19A8DFF80](0x6574736973726550, 0xEF6C65646F4D746ELL);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19752069C(uint64_t a1)
{
  if (swift_dynamicCastMetatype())
  {
    return 0;
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000029, 0x800000019752B830);
  MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752B340);
  MEMORY[0x19A8DFF80](0x7463656C6C6F6320, 0xEC000000736E6F69);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197520790(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  v10 = type metadata accessor for _KKMDBackingData(0, a3, a4, a4);
  v15 = &type metadata for DefaultSnapshot;
  WitnessTable = sub_19752088C();
  v13[0] = v7;
  v13[1] = v8;
  v14 = v9;

  sub_1974028EC(v8, v9);
  v11 = sub_1973FD1A4(a1, v13);
  _SD_set_faulting_backingdata_tsd(1);
  v15 = v10;
  WitnessTable = swift_getWitnessTable();
  v13[0] = v11;
  return (*(a4 + 48))(v13, a3, a4);
}

unint64_t sub_19752088C()
{
  result = qword_1EAF2C4F8;
  if (!qword_1EAF2C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2C4F8);
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}