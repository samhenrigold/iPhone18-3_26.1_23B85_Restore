uint64_t sub_22C5AC2E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_22C5AC33C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22C5AC3A0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_22C5AC3F4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

_BYTE *sub_22C5AC53C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_22C5AD750(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22C5AC614(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_22C5AD750(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Statement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22C5AC7D8(unsigned __int8 *a1, int a2)
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

  return sub_22C37E27C(a1);
}

_BYTE *sub_22C5AC824(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C5AC8D4()
{
  result = qword_27D9BEA20;
  if (!qword_27D9BEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA20);
  }

  return result;
}

unint64_t sub_22C5AC92C()
{
  result = qword_27D9BEA28;
  if (!qword_27D9BEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA28);
  }

  return result;
}

unint64_t sub_22C5AC984()
{
  result = qword_27D9BEA30;
  if (!qword_27D9BEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA30);
  }

  return result;
}

unint64_t sub_22C5AC9DC()
{
  result = qword_27D9BEA38;
  if (!qword_27D9BEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA38);
  }

  return result;
}

unint64_t sub_22C5ACA34()
{
  result = qword_27D9BEA40;
  if (!qword_27D9BEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA40);
  }

  return result;
}

unint64_t sub_22C5ACA8C()
{
  result = qword_27D9BEA48;
  if (!qword_27D9BEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA48);
  }

  return result;
}

unint64_t sub_22C5ACAE4()
{
  result = qword_27D9BEA50;
  if (!qword_27D9BEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA50);
  }

  return result;
}

unint64_t sub_22C5ACB3C()
{
  result = qword_27D9BEA58;
  if (!qword_27D9BEA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA58);
  }

  return result;
}

unint64_t sub_22C5ACB94()
{
  result = qword_27D9BEA60;
  if (!qword_27D9BEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA60);
  }

  return result;
}

unint64_t sub_22C5ACBEC()
{
  result = qword_27D9BEA68;
  if (!qword_27D9BEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA68);
  }

  return result;
}

unint64_t sub_22C5ACC44()
{
  result = qword_27D9BEA70;
  if (!qword_27D9BEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA70);
  }

  return result;
}

unint64_t sub_22C5ACC9C()
{
  result = qword_27D9BEA78;
  if (!qword_27D9BEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA78);
  }

  return result;
}

unint64_t sub_22C5ACCF4()
{
  result = qword_27D9BEA80;
  if (!qword_27D9BEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA80);
  }

  return result;
}

unint64_t sub_22C5ACD4C()
{
  result = qword_27D9BEA88;
  if (!qword_27D9BEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA88);
  }

  return result;
}

unint64_t sub_22C5ACDA4()
{
  result = qword_27D9BEA90;
  if (!qword_27D9BEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA90);
  }

  return result;
}

unint64_t sub_22C5ACDFC()
{
  result = qword_27D9BEA98;
  if (!qword_27D9BEA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEA98);
  }

  return result;
}

unint64_t sub_22C5ACE54()
{
  result = qword_27D9BEAA0;
  if (!qword_27D9BEAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAA0);
  }

  return result;
}

unint64_t sub_22C5ACEAC()
{
  result = qword_27D9BEAA8;
  if (!qword_27D9BEAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAA8);
  }

  return result;
}

unint64_t sub_22C5ACF04()
{
  result = qword_27D9BEAB0;
  if (!qword_27D9BEAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAB0);
  }

  return result;
}

unint64_t sub_22C5ACF5C()
{
  result = qword_27D9BEAB8;
  if (!qword_27D9BEAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAB8);
  }

  return result;
}

unint64_t sub_22C5ACFB4()
{
  result = qword_27D9BEAC0;
  if (!qword_27D9BEAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAC0);
  }

  return result;
}

unint64_t sub_22C5AD00C()
{
  result = qword_27D9BEAC8;
  if (!qword_27D9BEAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAC8);
  }

  return result;
}

unint64_t sub_22C5AD064()
{
  result = qword_27D9BEAD0;
  if (!qword_27D9BEAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAD0);
  }

  return result;
}

unint64_t sub_22C5AD0BC()
{
  result = qword_27D9BEAD8;
  if (!qword_27D9BEAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAD8);
  }

  return result;
}

unint64_t sub_22C5AD114()
{
  result = qword_27D9BEAE0;
  if (!qword_27D9BEAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAE0);
  }

  return result;
}

unint64_t sub_22C5AD16C()
{
  result = qword_27D9BEAE8;
  if (!qword_27D9BEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAE8);
  }

  return result;
}

unint64_t sub_22C5AD1C4()
{
  result = qword_27D9BEAF0;
  if (!qword_27D9BEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAF0);
  }

  return result;
}

unint64_t sub_22C5AD21C()
{
  result = qword_27D9BEAF8;
  if (!qword_27D9BEAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEAF8);
  }

  return result;
}

unint64_t sub_22C5AD274()
{
  result = qword_27D9BEB00;
  if (!qword_27D9BEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB00);
  }

  return result;
}

unint64_t sub_22C5AD2CC()
{
  result = qword_27D9BEB08;
  if (!qword_27D9BEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB08);
  }

  return result;
}

unint64_t sub_22C5AD324()
{
  result = qword_27D9BEB10;
  if (!qword_27D9BEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB10);
  }

  return result;
}

unint64_t sub_22C5AD37C()
{
  result = qword_27D9BEB18;
  if (!qword_27D9BEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB18);
  }

  return result;
}

unint64_t sub_22C5AD3D4()
{
  result = qword_27D9BEB20;
  if (!qword_27D9BEB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB20);
  }

  return result;
}

unint64_t sub_22C5AD428()
{
  result = qword_27D9BEB28;
  if (!qword_27D9BEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB28);
  }

  return result;
}

unint64_t sub_22C5AD47C()
{
  result = qword_27D9BEB30;
  if (!qword_27D9BEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB30);
  }

  return result;
}

unint64_t sub_22C5AD4D0()
{
  result = qword_27D9BEB38;
  if (!qword_27D9BEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB38);
  }

  return result;
}

unint64_t sub_22C5AD524()
{
  result = qword_27D9BEB40;
  if (!qword_27D9BEB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BEB40);
  }

  return result;
}

uint64_t sub_22C5AD628(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83978];

  return sub_22C5AADDC(a1, a2, v3);
}

void sub_22C5AD6A4()
{
  v0[18] = 0;
  v0[19] = 0;
  v0[16] = 0;
}

uint64_t sub_22C5AD738()
{
}

void sub_22C5AD784()
{
  v0[20] = 0;
  v0[21] = 0;
  v0[17] = 1;
}

uint64_t sub_22C5AD808()
{

  return sub_22C4722FC(v0, 0);
}

unint64_t sub_22C5AD828(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 120);

  return sub_22C36F9F4(v5, v2, (v3 - 104));
}

uint64_t sub_22C5AD848()
{

  return sub_22C90B64C();
}

uint64_t sub_22C5AD860()
{

  return sub_22C90B64C();
}

void sub_22C5AD8D0()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v6 = v5(0);
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v8);
  sub_22C36BA64();
  v31 = v10;
  v11 = *(v4 + 16);
  if (v11 < 2)
  {
LABEL_2:
    sub_22C36CC48();
    return;
  }

  v26 = v2;
  v12 = 0;
  v13 = v11 >> 1;
  v14 = v11 - 1;
  v27 = v11 >> 1;
  v28 = (v9 + 40);
  while (1)
  {
    if (v12 == v14)
    {
      goto LABEL_11;
    }

    v15 = *(v4 + 16);
    if (v12 >= v15)
    {
      break;
    }

    v16 = v0;
    sub_22C36BA94();
    v30 = v17;
    v18 = v4 + v17;
    v20 = *(v19 + 72);
    v21 = v4;
    v22 = *(v19 + 16);
    v29 = v20 * v12;
    v22(v31, v18 + v20 * v12, v6);
    if (v14 >= v15)
    {
      goto LABEL_14;
    }

    v23 = v20 * v14;
    v24 = v18 + v20 * v14;
    v0 = v16;
    v22(v16, v24, v6);
    v4 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = v26(v21);
    }

    v25 = *v28;
    (*v28)(v4 + v30 + v29, v16, v6);
    if (v14 >= *(v4 + 16))
    {
      goto LABEL_15;
    }

    v25(v4 + v30 + v23, v31, v6);
    v13 = v27;
LABEL_11:
    ++v12;
    --v14;
    if (v13 == v12)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_22C5ADAD8(uint64_t a1, unint64_t a2)
{
  if (a2 > 2)
  {
    return 1;
  }

  else
  {
    return qword_22C9205B0[a2];
  }
}

uint64_t sub_22C5ADAF8(uint64_t a1)
{
  v2 = sub_22C5C9648();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C5ADB34(uint64_t a1)
{
  v2 = sub_22C5C9648();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C5ADB94@<X0>(void *a1@<X8>)
{
  v20 = a1;
  v27 = sub_22C9089DC();
  v1 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C908A0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22C9087DC();
  v29 = result;
  v28 = result;
  v9 = *(result + 16);
  v25 = v5 + 8;
  v26 = v5 + 16;
  v10 = (v1 + 88);
  v24 = *MEMORY[0x277D1E858];
  v11 = *MEMORY[0x277D1E6F8];
  v22 = *MEMORY[0x277D1E798];
  v23 = v11;
  v21 = *MEMORY[0x277D1E778];
  v12 = (v1 + 8);
  while (1)
  {
    v13 = v9;
    if (!v9)
    {
LABEL_15:
      MEMORY[0x28223BE20](result);
      *(&v20 - 2) = &v29;
      sub_22C5C8A88(sub_22C5CA270, v9, v19, v20);
    }

    if (v9 > *(v28 + 16))
    {
      break;
    }

    --v9;
    (*(v5 + 16))(v7, v28 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v13 - 1), v4);
    sub_22C9089EC();
    (*(v5 + 8))(v7, v4);
    v14 = v27;
    v15 = (*v10)(v3, v27);
    result = (*v12)(v3, v14);
    if (v15 == v24 || v15 == v23 || v15 == v22 || v15 == v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C5ADE64()
{
  v2 = sub_22C37335C();
  v4 = sub_22C3A5908(v2, v3);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C37BDA4();
  v6 = sub_22C36D39C();
  sub_22C4E719C(v6, v7, &qword_27D9BD820, &unk_22C9195C0);
  v8 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_userLocale;
  sub_22C5CA80C();
  swift_beginAccess();
  sub_22C5CA290(v1, v0 + v8);
  return swift_endAccess();
}

uint64_t sub_22C5ADF1C()
{
  sub_22C369980();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22C9063DC();
  v1[4] = v3;
  sub_22C3699B8(v3);
  v1[5] = v4;
  v1[6] = sub_22C3856B8();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v5);
  v1[13] = sub_22C3699D4();
  v6 = sub_22C90046C();
  v1[14] = v6;
  sub_22C3699B8(v6);
  v1[15] = v7;
  v1[16] = sub_22C3856B8();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v8 = sub_22C90070C();
  v1[20] = v8;
  sub_22C3699B8(v8);
  v1[21] = v9;
  v1[22] = sub_22C3699D4();
  v10 = sub_22C901DDC();
  v1[23] = v10;
  sub_22C3699B8(v10);
  v1[24] = v11;
  v1[25] = sub_22C3699D4();
  v12 = sub_22C90210C();
  v1[26] = v12;
  sub_22C3699B8(v12);
  v1[27] = v13;
  v1[28] = sub_22C3699D4();
  v14 = sub_22C3A5908(&qword_27D9BD698, &qword_22C9187B0);
  sub_22C369914(v14);
  v1[29] = sub_22C3699D4();
  v15 = sub_22C902D7C();
  v1[30] = v15;
  sub_22C3699B8(v15);
  v1[31] = v16;
  v1[32] = sub_22C3699D4();
  v17 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  sub_22C369914(v17);
  v1[33] = sub_22C3699D4();
  v18 = sub_22C9021DC();
  v1[34] = v18;
  sub_22C3699B8(v18);
  v1[35] = v19;
  v1[36] = sub_22C3699D4();
  v20 = sub_22C90077C();
  v1[37] = v20;
  sub_22C3699B8(v20);
  v1[38] = v21;
  v1[39] = sub_22C3856B8();
  v1[40] = swift_task_alloc();
  v22 = sub_22C3A5908(&qword_27D9BEB48, &unk_22C91FF10);
  sub_22C369914(v22);
  v1[41] = sub_22C3856B8();
  v1[42] = swift_task_alloc();
  v23 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_22C5AE308(uint64_t a1)
{
  v193 = v1;
  sub_22C90877C();
  v3 = v1[41];
  v2 = v1[42];
  v4 = sub_22C9068CC();
  sub_22C36C640(v2, 0, 1, v4);
  v5 = sub_22C36BAFC();
  sub_22C4E719C(v5, v6, v7, v8);
  v9 = sub_22C370B74(v3, 1, v4);
  v10 = v1[41];
  if (v9 == 1)
  {
    sub_22C36DD28(v1[41], &qword_27D9BEB48, &unk_22C91FF10);
    sub_22C903FBC();
    v11 = sub_22C9063CC();
    v12 = sub_22C90AADC();
    v13 = sub_22C36FBB4(v12);
    v14 = v1[42];
    if (v13)
    {
      sub_22C3720F4();
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22C366000, v11, v12, "Locale does not exist", v15, 2u);
      v16 = sub_22C3816C4();
      MEMORY[0x2318B9880](v16);
    }

    v17 = sub_22C36D264();
    v18(v17);
    goto LABEL_5;
  }

  v22 = v1[37];
  v24 = v1[35];
  v23 = v1[36];
  v25 = v1[33];
  v155 = v1[34];
  v175 = v1[30];
  v169 = v1[27];
  v172 = v1[26];
  v157 = v1[28];
  v158 = v1[25];
  v182 = v1[23];
  v187 = v1[24];
  v26 = v1[21];
  v161 = v1[20];
  v164 = v1[22];
  sub_22C9068BC();
  sub_22C36BBA8();
  (*(v27 + 8))(v10, v4);
  sub_22C9021CC();
  (*(v24 + 8))(v23, v155);
  sub_22C5CA7E8();
  v28 = sub_22C36BBCC();
  v29(v28);
  v30 = sub_22C37EF10();
  v31(v30);
  sub_22C36BECC();
  sub_22C36C640(v32, v33, v34, v22);
  sub_22C5ADE64();
  sub_22C36DD28(v25, &qword_27D9BD820, &unk_22C9195C0);
  sub_22C9020FC();
  (*(v187 + 104))(v158, *MEMORY[0x277D1C230], v182);
  (*(v26 + 104))(v164, *MEMORY[0x277CC9668], v161);
  sub_22C9006BC();
  sub_22C9006CC();

  v35 = sub_22C374C34();
  v36(v35);
  sub_22C5C6304();
  sub_22C36FCCC();
  sub_22C9020EC();

  (*(v187 + 8))(v158, v182);
  (*(v169 + 8))(v157, v172);
  v37 = sub_22C36FD7C();
  sub_22C36D0A8(v37, v38, v175);
  if (v50)
  {
    sub_22C36DD28(v1[29], &qword_27D9BD698, &qword_22C9187B0);
    sub_22C903FBC();
    v39 = sub_22C9063CC();
    v40 = sub_22C90AADC();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v1[42];
    if (v41)
    {
      sub_22C3720F4();
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_22C366000, v39, v40, "Failed to load planner overrides asset from Asset Manager. Unable to locate UAF asset nor side loaded asset!", v43, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v44 = sub_22C36CA88();
    v45(v44);
    v46 = sub_22C36BAFC();
    v47(v46);
    v19 = v42;
  }

  else
  {
    v49 = v1[13];
    v48 = v1[14];
    (*(v1[31] + 32))(v1[32], v1[29], v1[30]);
    sub_22C902D5C();
    sub_22C36D0A8(v49, 1, v48);
    if (v50)
    {
      sub_22C36DD28(v1[13], &qword_27D9BB138, &qword_22C90DB70);
      sub_22C903FBC();
      v51 = sub_22C9063CC();
      v52 = sub_22C90AADC();
      v53 = os_log_type_enabled(v51, v52);
      v14 = v1[42];
      v54 = v1[38];
      v183 = v1[37];
      v188 = v1[40];
      v55 = v1[31];
      v179 = v1[32];
      v56 = v1[30];
      if (!v53)
      {

        v93 = sub_22C3726C4();
        v94(v93);
        (*(v55 + 8))(v179, v56);
        (*(v54 + 8))(v188, v183);
LABEL_5:
        v19 = v14;
        goto LABEL_6;
      }

      sub_22C3720F4();
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_22C366000, v51, v52, "Asset Bundle URL does not exist", v57, 2u);
      v58 = sub_22C37B310();
      MEMORY[0x2318B9880](v58);

      v59 = sub_22C3726C4();
      v60(v59);
      (*(v55 + 8))(v179, v56);
      (*(v54 + 8))(v188, v183);
      v19 = v14;
    }

    else
    {
      v61 = v1[18];
      v62 = v1[15];
      (*(v62 + 32))(v1[19], v1[13], v1[14]);
      v63 = *(v62 + 16);
      v64 = sub_22C36BA00();
      v63(v64);
      sub_22C5CAE5C(v61, &v191);
      if (v191)
      {
        v65 = v192;
        v66 = v1[3] + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore;
        v67 = *v66;
        v68 = *(v66 + 8);
        v69 = *(v66 + 16);
        *v66 = v191;
        *(v66 + 8) = v65;
        sub_22C36E030(v67, v68, v69);
      }

      else
      {
        sub_22C9003EC();
        sub_22C5B9AC0();
        v96 = v95;

        if ((v96 & 1) == 0)
        {
          sub_22C903FBC();
          v125 = sub_22C36BA00();
          v63(v125);
          v126 = sub_22C9063CC();
          v168 = sub_22C90AADC();
          v127 = sub_22C36FBB4(v168);
          v128 = v1[42];
          v129 = v1[40];
          v130 = v1[38];
          v131 = v1[31];
          v186 = v1[32];
          v190 = v1[37];
          v178 = v1[19];
          v181 = v1[30];
          v132 = v1[17];
          v134 = v1[14];
          v133 = v1[15];
          v135 = v1[5];
          v171 = v1[4];
          v174 = v1[12];
          if (v127)
          {
            sub_22C36BED8();
            v166 = v128;
            v136 = swift_slowAlloc();
            sub_22C370220();
            v163 = v130;
            v137 = swift_slowAlloc();
            v191 = v137;
            *v136 = 136315138;
            sub_22C5CA628();
            sub_22C5C87F4(v138, v139, MEMORY[0x277CC9290]);
            v160 = v129;
            v140 = sub_22C90B47C();
            v156 = v126;
            v142 = v141;
            v143 = *(v133 + 8);
            v144 = sub_22C380120();
            v143(v144);
            sub_22C36F9F4(v140, v142, &v191);
            sub_22C37BB14();

            *(v136 + 4) = v132;
            sub_22C5CA598();
            _os_log_impl(v145, v146, v147, v148, v149, v150);
            sub_22C36FF94(v137);
            v151 = sub_22C3816C4();
            MEMORY[0x2318B9880](v151);
            v152 = sub_22C36ACAC();
            MEMORY[0x2318B9880](v152);

            (*(v135 + 8))(v174, v171);
            (v143)(v178, v134);
            (*(v131 + 8))(v186, v181);
            (*(v163 + 8))(v160, v190);
            v19 = v166;
          }

          else
          {

            v153 = *(v133 + 8);
            v154 = sub_22C380120();
            v153(v154);
            (*(v135 + 8))(v174, v171);
            (v153)(v178, v134);
            (*(v131 + 8))(v186, v181);
            (*(v130 + 8))(v129, v190);
            v19 = v128;
          }

          goto LABEL_6;
        }
      }

      sub_22C9003BC();
      sub_22C9003EC();
      v70 = sub_22C36BAFC();
      v189 = v71;
      v71(v70);
      sub_22C372164();
      sub_22C5C7D5C();
      v73 = v72;
      v75 = v74;

      if (v75)
      {
        sub_22C903FBC();

        v76 = sub_22C9063CC();
        sub_22C90AABC();

        v77 = sub_22C3729E4();
        v79 = os_log_type_enabled(v77, v78);
        v80 = v1[11];
        v81 = v1[5];
        v184 = v1[4];
        if (v79)
        {
          sub_22C36BED8();
          v176 = v80;
          v82 = swift_slowAlloc();
          sub_22C370220();
          v83 = swift_slowAlloc();
          v191 = v83;
          *v82 = 136315138;
          v84 = sub_22C36BAFC();
          *(v82 + 4) = sub_22C36F9F4(v84, v85, v86);
          sub_22C5CA970();
          _os_log_impl(v87, v88, v89, v90, v91, v92);
          sub_22C36FF94(v83);
          sub_22C369B50();
          MEMORY[0x2318B9880]();
          sub_22C369B50();
          MEMORY[0x2318B9880]();

          (*(v81 + 8))(v176, v184);
        }

        else
        {

          (*(v81 + 8))(v80, v184);
        }

        v97 = (v1[3] + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_assetVersion);
        *v97 = v73;
        v97[1] = v75;
      }

      sub_22C903FBC();
      v98 = sub_22C36BA00();
      v63(v98);
      v99 = sub_22C9063CC();
      v165 = sub_22C90AACC();
      v100 = os_log_type_enabled(v99, v165);
      v101 = v1[42];
      v102 = v1[40];
      v103 = v1[38];
      v104 = v1[31];
      v180 = v1[32];
      v185 = v1[37];
      v173 = v1[19];
      v177 = v1[30];
      v105 = v1[16];
      v106 = v1[14];
      v107 = v1[5];
      v167 = v1[4];
      v170 = v1[10];
      if (v100)
      {
        sub_22C36BED8();
        v162 = v103;
        v108 = swift_slowAlloc();
        sub_22C370220();
        v159 = v102;
        v109 = swift_slowAlloc();
        v191 = v109;
        *v108 = 136315138;
        sub_22C5CA628();
        sub_22C5C87F4(v110, v111, MEMORY[0x277CC9290]);
        sub_22C90B47C();
        v112 = sub_22C380120();
        v189(v112);
        v113 = sub_22C379ED8();
        sub_22C36F9F4(v113, v114, v115);
        sub_22C37BB14();

        *(v108 + 4) = v105;
        sub_22C5CA598();
        _os_log_impl(v116, v117, v118, v119, v120, v121);
        sub_22C36FF94(v109);
        v122 = sub_22C3816C4();
        MEMORY[0x2318B9880](v122);
        v123 = sub_22C36ACAC();
        MEMORY[0x2318B9880](v123);

        (*(v107 + 8))(v170, v167);
        (v189)(v173, v106);
        (*(v104 + 8))(v180, v177);
        (*(v162 + 8))(v159, v185);
      }

      else
      {

        v124 = sub_22C380120();
        v189(v124);
        (*(v107 + 8))(v170, v167);
        (v189)(v173, v106);
        (*(v104 + 8))(v180, v177);
        (*(v103 + 8))(v102, v185);
      }

      v19 = v101;
    }
  }

LABEL_6:
  sub_22C36DD28(v19, &qword_27D9BEB48, &unk_22C91FF10);

  sub_22C369C50();

  return v20();
}

uint64_t sub_22C5AF29C()
{
  sub_22C369980();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22C908A0C();
  v1[5] = v4;
  sub_22C3699B8(v4);
  v1[6] = v5;
  v1[7] = sub_22C3699D4();
  v6 = sub_22C90580C();
  v1[8] = v6;
  sub_22C3699B8(v6);
  v1[9] = v7;
  v1[10] = sub_22C3699D4();
  v8 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  sub_22C369914(v8);
  v1[11] = sub_22C3699D4();
  v9 = sub_22C3A5908(&qword_27D9BEB50, &qword_22C91FF30);
  sub_22C369914(v9);
  v1[12] = sub_22C3699D4();
  v10 = sub_22C90553C();
  v1[13] = v10;
  sub_22C3699B8(v10);
  v1[14] = v11;
  v1[15] = sub_22C3699D4();
  v12 = sub_22C9087BC();
  v1[16] = v12;
  sub_22C3699B8(v12);
  v1[17] = v13;
  v1[18] = *(v14 + 64);
  v1[19] = sub_22C3699D4();
  v15 = type metadata accessor for PlanOverridesService.PlanOverridesRequest(0);
  v1[20] = v15;
  sub_22C369914(v15);
  v1[21] = sub_22C3699D4();
  v16 = type metadata accessor for PlanOverridesService.PlanOverridesResponse(0);
  v1[22] = v16;
  sub_22C369914(v16);
  v1[23] = sub_22C3699D4();
  v17 = sub_22C90880C();
  v1[24] = v17;
  sub_22C3699B8(v17);
  v1[25] = v18;
  v1[26] = sub_22C3856B8();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v19 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C3699B8(v19);
  v1[29] = v20;
  v1[30] = sub_22C3856B8();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v21 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v21);
  v1[36] = sub_22C3856B8();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v22 = sub_22C90069C();
  v1[42] = v22;
  sub_22C3699B8(v22);
  v1[43] = v23;
  v1[44] = sub_22C3699D4();
  v24 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_22C5AF678()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[3];
  v4 = type metadata accessor for PlannerServiceContext(0);
  sub_22C4E719C(v3 + *(v4 + 20), v1, &qword_27D9BB190, qword_22C90DD90);
  v5 = sub_22C36CCF8();
  if (sub_22C370B74(v5, v6, v2) == 1)
  {
    sub_22C36DD28(v0[41], &qword_27D9BB190, qword_22C90DD90);
    sub_22C5C86BC();
    sub_22C37A198();
    swift_allocError();
    *v7 = xmmword_22C911490;
    swift_willThrow();

    sub_22C369A24();

    return v8();
  }

  else
  {
    v10 = v0[25];
    v11 = v0[5];
    (*(v0[43] + 32))(v0[44], v0[41], v0[42]);
    sub_22C90878C();
    sub_22C9087DC();
    v0[45] = *(v10 + 8);
    v0[46] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12 = sub_22C36D264();
    v45 = v13;
    v13(v12);
    v14 = sub_22C36BD58();
    sub_22C3A5950(v14);

    v15 = sub_22C36CCF8();
    sub_22C36D0A8(v15, v16, v11);
    if (v17)
    {
      sub_22C36DD28(v0[35], &qword_27D9BA808, &qword_22C90C6E0);
      sub_22C36CCF8();
      sub_22C3827B4();
      sub_22C36C640(v18, v19, v20, v21);
    }

    else
    {
      sub_22C9088DC();
      v22 = sub_22C36BBCC();
      v23(v22);
    }

    v24 = v0[40];
    v25 = v0[19];
    v27 = v0[16];
    v26 = v0[17];
    v44 = v0[4];
    sub_22C59ED68(v0[44], v24);
    sub_22C36DD28(v24, &qword_27D9BB190, qword_22C90DD90);
    sub_22C90878C();
    sub_22C3A909C();
    v0[47] = v28;
    v29 = sub_22C3726C4();
    v45(v29);
    sub_22C90878C();
    v30 = sub_22C372280();
    v31(v30);
    v32 = (*(v26 + 80) + 24) & ~*(v26 + 80);
    v33 = swift_allocObject();
    v0[48] = v33;
    *(v33 + 16) = v44;
    (*(v26 + 32))(v33 + v32, v25, v27);

    v34 = swift_task_alloc();
    v0[49] = v34;
    sub_22C5C87F4(&qword_27D9BEB60, type metadata accessor for PlanOverridesService.PlanOverridesRequest, &protocol conformance descriptor for PlanOverridesService.PlanOverridesRequest);
    sub_22C5C87F4(&qword_27D9BEB68, type metadata accessor for PlanOverridesService.PlanOverridesRequest, &protocol conformance descriptor for PlanOverridesService.PlanOverridesRequest);
    sub_22C5C87F4(&qword_27D9BEB70, type metadata accessor for PlanOverridesService.PlanOverridesResponse, &protocol conformance descriptor for PlanOverridesService.PlanOverridesResponse);
    sub_22C5C87F4(&qword_27D9BEB78, type metadata accessor for PlanOverridesService.PlanOverridesResponse, &protocol conformance descriptor for PlanOverridesService.PlanOverridesResponse);
    *v34 = v0;
    v34[1] = sub_22C5AFBE0;
    sub_22C5CAD40();

    return MEMORY[0x28215E710](v35, v36, v37, v38, v39, v40, v41, v42);
  }
}

void sub_22C5AFBE0()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  v3[50] = v0;

  if (v0)
  {
  }

  else
  {
    v6 = v3[21];
    v7 = v3[4];
    sub_22C5C8874(v6, type metadata accessor for PlanOverridesService.PlanOverridesRequest);

    MEMORY[0x2822009F8](sub_22C5AFD38, v7, 0);
  }
}

uint64_t sub_22C5AFD38()
{
  v1 = v0[34];
  v2 = v0[5];
  sub_22C5CAA04();
  sub_22C4E719C(v3, v4, v5, &qword_22C90C6E0);
  v6 = sub_22C370B74(v1, 1, v2);

  sub_22C36DD28(v1, &qword_27D9BA808, &qword_22C90C6E0);
  v7 = sub_22C372280();
  sub_22C4E719C(v7, v8, &qword_27D9BA808, &qword_22C90C6E0);
  v9 = sub_22C36CCF8();
  sub_22C36D0A8(v9, v10, v2);
  if (v11)
  {
    sub_22C36DD28(v0[33], &qword_27D9BA808, &qword_22C90C6E0);
    v14 = 1;
  }

  else
  {
    sub_22C9087FC();
    v12 = sub_22C36BBCC();
    v13(v12);
    v14 = 0;
  }

  v15 = v0[45];
  v16 = v0[5];
  sub_22C36C640(v0[39], v14, 1, v0[42]);
  sub_22C90878C();
  sub_22C9087DC();
  v17 = sub_22C36CA88();
  v15(v17);
  v18 = sub_22C36BD58();
  sub_22C3A5950(v18);

  v19 = sub_22C36CCF8();
  sub_22C36D0A8(v19, v20, v16);
  if (v11)
  {
    sub_22C36DD28(v0[32], &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C36CCF8();
    sub_22C3827B4();
    sub_22C36C640(v21, v22, v23, v24);
  }

  else
  {
    sub_22C9088DC();
    v25 = sub_22C36BBCC();
    v26(v25);
  }

  v27 = v0[42];
  sub_22C90552C();

  sub_22C9054FC();
  v28 = sub_22C90578C();
  *(swift_task_alloc() + 16) = v6 != 1;
  sub_22C9062CC();

  sub_22C36BECC();
  sub_22C36C640(v29, v30, v31, v28);
  sub_22C90550C();
  v32 = sub_22C3806B8();
  sub_22C4E719C(v32, v33, v34, v35);
  v36 = sub_22C37EF1C();
  sub_22C36D0A8(v36, v37, v27);
  if (v11)
  {
    sub_22C36DD28(v0[37], &qword_27D9BB190, qword_22C90DD90);
    v46 = 1;
  }

  else
  {
    v38 = v0[42];
    sub_22C90624C();
    v39 = sub_22C372164();
    v40(v39);
    sub_22C36BECC();
    sub_22C36C640(v41, v42, v43, v38);
    sub_22C90623C();
    v44 = sub_22C377B94();
    v45(v44);
    v46 = 0;
  }

  v47 = v0[38];
  v86 = v0[44];
  v88 = v0[29];
  v89 = v0[23];
  v48 = v0[15];
  v87 = v0[13];
  v50 = v0[10];
  v49 = v0[11];
  v90 = v0[5];
  v51 = sub_22C90625C();
  sub_22C36C640(v49, v46, 1, v51);
  sub_22C90538C();
  *(swift_task_alloc() + 16) = v48;
  sub_22C9062CC();

  sub_22C59D250(v50, v86, v47);

  v52 = sub_22C36D7F0();
  v53(v52);
  sub_22C37017C();
  sub_22C36DD28(v54, v55, v56);
  sub_22C37017C();
  sub_22C36DD28(v57, v58, v59);
  v60 = sub_22C50B61C();
  v61(v60, v87);
  sub_22C3A5908(&qword_27D9BE098, &qword_22C91CE70);
  v62 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_22C90F800;
  sub_22C4E719C(v89, v63 + v62, &qword_27D9BA808, &qword_22C90C6E0);
  sub_22C5CA6E4();
  sub_22C4E719C(v64, v65, v66, &qword_22C90C6E0);
  sub_22C5CA6E4();
  sub_22C4E7208(v67, v68, v69, &qword_22C90C6E0);
  v70 = sub_22C37EF1C();
  if (sub_22C370B74(v70, v71, v90) == 1)
  {
    sub_22C36DD28(v0[30], &qword_27D9BA808, &qword_22C90C6E0);
    v91 = MEMORY[0x277D84F90];
  }

  else
  {
    v72 = *(v0[6] + 32);
    v72(v0[7], v0[30], v0[5]);
    v73 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C36D270();
      sub_22C590488();
      v73 = v84;
    }

    v75 = *(v73 + 16);
    v74 = *(v73 + 24);
    if (v75 >= v74 >> 1)
    {
      sub_22C369AB0(v74);
      sub_22C590488();
      v73 = v85;
    }

    v91 = v73;
    v77 = v0[6];
    v76 = v0[7];
    v78 = v0[5];
    *(v73 + 16) = v75 + 1;
    v72(v73 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v75, v76, v78);
  }

  v79 = v0[23];
  swift_setDeallocating();
  sub_22C590000();
  sub_22C5C8874(v79, type metadata accessor for PlanOverridesService.PlanOverridesResponse);
  v80 = sub_22C388EF4();
  v81(v80);

  v82 = v0[1];

  return v82(v91);
}

uint64_t PlanOverridesService.PlanOverridesRequest.init(transcript:)()
{
  sub_22C90880C();
  sub_22C36985C();
  v0 = sub_22C36BBCC();

  return v1(v0);
}

uint64_t sub_22C5B04FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v5 = sub_22C908A0C();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[11] = v6;
  *v6 = v4;
  v6[1] = sub_22C5B065C;

  return sub_22C5B2B70();
}

uint64_t sub_22C5B065C()
{
  sub_22C36FB38();
  v2 = *v1;
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;

  v5 = *(v2 + 24);
  if (v0)
  {

    v6 = sub_22C5B08E8;
  }

  else
  {
    v6 = sub_22C5B0788;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22C5B0788()
{
  v2 = v0[6];
  sub_22C36D3E0(v2);
  if (v3)
  {
    v4 = v0[4];
    v5 = v0[5];
    sub_22C36DD28(v2, &qword_27D9BA808, &qword_22C90C6E0);
    v6 = sub_22C5B13C8(v4);
    sub_22C58B564(v6, v5);

    sub_22C36D3E0(v5);
    if (v3)
    {
      v10 = sub_22C36DD28(v0[5], &qword_27D9BA808, &qword_22C90C6E0);
      v7 = 1;
      goto LABEL_7;
    }

    v11 = sub_22C5CA848();
    (v1)(v11);
    sub_22C37017C();
    v10 = v1();
  }

  else
  {
    v8 = *(v0[8] + 32);
    sub_22C37A060();
    v8();
    v9 = sub_22C370018();
    v10 = (v8)(v9);
  }

  v7 = 0;
LABEL_7:
  sub_22C5CAD04(v10, v7);

  sub_22C369C50();

  return v12();
}

uint64_t sub_22C5B08E8()
{
  sub_22C36D5EC();
  sub_22C36A748();
  sub_22C36C640(v2, v3, v4, v5);
  v7 = v0[4];
  v6 = v0[5];
  sub_22C36DD28(v0[6], &qword_27D9BA808, &qword_22C90C6E0);
  v8 = sub_22C5B13C8(v7);
  sub_22C58B564(v8, v6);

  sub_22C36D3E0(v6);
  if (v9)
  {
    v11 = sub_22C36DD28(v0[5], &qword_27D9BA808, &qword_22C90C6E0);
    v12 = 1;
  }

  else
  {
    v10 = sub_22C5CA848();
    (v1)(v10);
    sub_22C37017C();
    v11 = v1();
    v12 = 0;
  }

  sub_22C5CAD04(v11, v12);

  sub_22C369C50();

  return v13();
}

uint64_t PlanOverridesService.PlanOverridesRequest.transcript.getter()
{
  sub_22C90880C();
  sub_22C36985C();
  v0 = sub_22C36BA00();

  return v1(v0);
}

uint64_t sub_22C5B0A84(uint64_t a1)
{
  v2 = sub_22C5C88CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5B0AC0(uint64_t a1)
{
  v2 = sub_22C5C88CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlanOverridesService.PlanOverridesRequest.encode(to:)()
{
  sub_22C3A5908(&qword_27D9BEB80, &qword_22C91FF50);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  sub_22C383814();
  v1 = sub_22C38644C();
  sub_22C374168(v1, v2);
  v3 = sub_22C5C88CC();
  sub_22C5CAD5C(&type metadata for PlanOverridesService.PlanOverridesRequest.CodingKeys, v4, v3);
  sub_22C90880C();
  sub_22C5CA64C();
  sub_22C5C87F4(v5, v6, MEMORY[0x277D1E630]);
  sub_22C5CA928();
  sub_22C90B41C();
  v7 = sub_22C36D384();
  return v8(v7);
}

void PlanOverridesService.PlanOverridesRequest.init(from:)()
{
  sub_22C370030();
  v3 = v2;
  v26 = v4;
  v5 = sub_22C90880C();
  sub_22C369824();
  v24 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  v27 = v8;
  v9 = sub_22C3A5908(&qword_27D9BEB90, &qword_22C91FF58);
  sub_22C369824();
  v25 = v10;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for PlanOverridesService.PlanOverridesRequest(0);
  v15 = sub_22C369914(v14);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  sub_22C5CA768();
  v16 = sub_22C37BD98();
  sub_22C374168(v16, v17);
  sub_22C5C88CC();
  sub_22C90B6BC();
  if (!v0)
  {
    v18 = v24;
    sub_22C5CA64C();
    sub_22C5C87F4(v19, v20, MEMORY[0x277D1E638]);
    sub_22C90B32C();
    (*(v25 + 8))(v13, v9);
    (*(v18 + 32))(v1, v27, v5);
    v21 = sub_22C38A024();
    sub_22C5C8974(v21, v22);
  }

  sub_22C36FF94(v3);
  sub_22C36FB20();
}

uint64_t sub_22C5B0EBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C5B0F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C5B0EBC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C5B0F74(uint64_t a1)
{
  v2 = sub_22C5C8920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C5B0FB0(uint64_t a1)
{
  v2 = sub_22C5C8920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlanOverridesService.PlanOverridesResponse.encode(to:)()
{
  sub_22C3A5908(&qword_27D9BEB98, &qword_22C91FF60);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  sub_22C383814();
  v1 = sub_22C38644C();
  sub_22C374168(v1, v2);
  v3 = sub_22C5C8920();
  sub_22C5CAD5C(&type metadata for PlanOverridesService.PlanOverridesResponse.CodingKeys, v4, v3);
  sub_22C908A0C();
  sub_22C37BE68();
  sub_22C5C87F4(v5, v6, MEMORY[0x277D1E898]);
  sub_22C5CA928();
  sub_22C90B3AC();
  v7 = sub_22C36D384();
  return v8(v7);
}

void PlanOverridesService.PlanOverridesResponse.init(from:)()
{
  sub_22C370030();
  v2 = v1;
  v21 = v3;
  v4 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C37BDA4();
  sub_22C3A5908(&qword_27D9BEBA8, &qword_22C91FF68);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22C36EC5C();
  v8 = type metadata accessor for PlanOverridesService.PlanOverridesResponse(v7);
  v9 = sub_22C369914(v8);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  sub_22C374168(v2, v2[3]);
  sub_22C5C8920();
  sub_22C90B6BC();
  if (!v0)
  {
    sub_22C908A0C();
    sub_22C37BE68();
    sub_22C5C87F4(v13, v14, MEMORY[0x277D1E8A8]);
    sub_22C90B2BC();
    v15 = sub_22C371510();
    v16(v15);
    v17 = sub_22C3863FC();
    sub_22C4E7208(v17, v18, v19, v20);
    sub_22C5C8974(v12, v21);
  }

  sub_22C36FF94(v2);
  sub_22C36FB20();
}

uint64_t sub_22C5B135C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D8D0];
  sub_22C90645C();
  sub_22C36985C();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_22C5B13C8(uint64_t a1)
{
  v299 = a1;
  v2 = sub_22C902D3C();
  v3 = sub_22C369914(v2);
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  sub_22C3698F8(v4);
  v5 = sub_22C90888C();
  v6 = sub_22C36A7A4(v5, &v296);
  v271 = v7;
  MEMORY[0x28223BE20](v6);
  sub_22C3698A8();
  sub_22C3698F8(v8);
  v9 = sub_22C90700C();
  v10 = sub_22C369914(v9);
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  sub_22C3698F8(v11);
  v12 = sub_22C90654C();
  v13 = sub_22C36A7A4(v12, &v305);
  v277 = v14;
  MEMORY[0x28223BE20](v13);
  sub_22C3698A8();
  sub_22C3698F8(v15);
  v269 = sub_22C901FAC();
  sub_22C36985C();
  MEMORY[0x28223BE20](v16);
  sub_22C3698A8();
  sub_22C3698F8(v17);
  v18 = sub_22C9063DC();
  v19 = sub_22C36A7A4(v18, &v304);
  v274 = v20;
  MEMORY[0x28223BE20](v19);
  sub_22C3698A8();
  sub_22C36D234(v21);
  v22 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C369914(v22);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  sub_22C36D5B4();
  sub_22C3698F8(v24);
  v25 = sub_22C908EAC();
  sub_22C369824();
  v280 = v26;
  MEMORY[0x28223BE20](v27);
  sub_22C3698A8();
  sub_22C3698F8(v28);
  v286 = sub_22C90384C();
  sub_22C369824();
  v283 = v29;
  MEMORY[0x28223BE20](v30);
  sub_22C3698A8();
  v287 = v31;
  sub_22C36BA0C();
  sub_22C9036EC();
  sub_22C369824();
  v288 = v33;
  v289 = v32;
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA64();
  v301 = v35;
  v36 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C369914(v36);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v37);
  sub_22C36D5B4();
  v291 = v38;
  v39 = sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  sub_22C369914(v39);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v40);
  sub_22C36D5B4();
  v290 = v41;
  sub_22C36BA0C();
  v300 = sub_22C9037EC();
  sub_22C369824();
  v302 = v42;
  MEMORY[0x28223BE20](v43);
  sub_22C369ABC();
  sub_22C50B4C8();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA64();
  v285 = v45;
  sub_22C36BA0C();
  sub_22C9089DC();
  sub_22C369824();
  v295 = v47;
  v296 = v46;
  MEMORY[0x28223BE20](v46);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v48);
  sub_22C36CAC0();
  sub_22C9079FC();
  sub_22C369824();
  v293 = v50;
  v294 = v49;
  MEMORY[0x28223BE20](v49);
  sub_22C3698A8();
  v292 = v51;
  sub_22C36BA0C();
  v52 = sub_22C90880C();
  sub_22C369824();
  v54 = v53;
  MEMORY[0x28223BE20](v55);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v56);
  v58 = &v257 - v57;
  v59 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v60 = sub_22C3699B8(v59);
  v272 = v61;
  MEMORY[0x28223BE20](v60);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v62);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v63);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v65);
  v67 = &v257 - v66;
  v68 = sub_22C908A0C();
  sub_22C369824();
  v297 = v69;
  MEMORY[0x28223BE20](v70);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v71);
  sub_22C36BA64();
  v298 = v72;
  swift_getKeyPath();
  sub_22C901F3C();

  if ((v303 & 0x100000000) == 0)
  {
    v264 = v25;
    v73 = *&v303;
    sub_22C90878C();
    v74 = sub_22C9087DC();
    v75 = *(v54 + 8);
    v263 = v52;
    v262 = v54 + 8;
    v261 = v75;
    (v75)(v58, v52);
    v303 = v74;
    v76 = sub_22C372164();
    sub_22C3A5908(v76, v77);
    sub_22C369E24();
    sub_22C44178C();
    sub_22C3D32C8(v78, v79, v80, v81);
    sub_22C907F3C();

    v82 = sub_22C36CCF8();
    sub_22C36D0A8(v82, v83, v68);
    if (v84)
    {
      sub_22C36DD28(v67, &qword_27D9BA808, &qword_22C90C6E0);
    }

    else
    {
      v85 = v297;
      v86 = v297 + 32;
      v87 = sub_22C36BBCC();
      v260 = v88;
      v88(v87);
      sub_22C9089EC();
      v89 = sub_22C372280();
      if (v90(v89) == *MEMORY[0x277D1E808])
      {
        v259 = v86;
        v91 = sub_22C372280();
        v92(v91);
        v93 = sub_22C372FA4();
        v94(v93);
        v95 = v291;
        sub_22C90798C();
        v96 = sub_22C903F4C();
        v97 = sub_22C36FD7C();
        sub_22C36D0A8(v97, v98, v96);
        if (v84)
        {
          v99 = sub_22C36BBCC();
          v100(v99);
          (*(v85 + 8))(v298, v68);
          sub_22C36DD28(v95, &qword_27D9BD290, &qword_22C917EC0);
          v101 = v290;
          sub_22C36A748();
          sub_22C36C640(v102, v103, v104, v300);
        }

        else
        {
          v258 = v68;
          v111 = sub_22C903F1C();
          sub_22C36BBA8();
          v112 = sub_22C3806B8();
          v113(v112);
          v291 = v111;
          v114 = v300;
          v115 = v302;
          v268 = *(v111 + 16);
          if (v268)
          {
            v116 = 0;
            sub_22C36BA94();
            v267 = v291 + v117;
            v266 = v115 + 16;
            v265 = *MEMORY[0x277D1ECF8];
            v118 = (v115 + 8);
            v120 = v119 + 8;
            v121 = v73 + -0.0001;
            while (v116 < *(v291 + 16))
            {
              (*(v115 + 16))(v1, v267 + *(v115 + 72) * v116, v114);
              sub_22C90371C();
              v122 = sub_22C36FC08();
              v123(v122);
              sub_22C369908();
              if (v84)
              {
                v124 = sub_22C36FC08();
                v125(v124);
                sub_22C90373C();
                if (v121 < v126)
                {

                  v115 = v302;
                  v101 = v290;
                  v129 = sub_22C3863FC();
                  v114 = v300;
                  v130(v129);
                  goto LABEL_22;
                }

                v114 = v300;
                (*v118)(v1, v300);
              }

              else
              {
                (*v118)(v1, v114);
                v127 = sub_22C36FC08();
                v128(v127);
              }

              v115 = v302;
              if (v268 == ++v116)
              {
                goto LABEL_20;
              }
            }

            __break(1u);
            goto LABEL_47;
          }

LABEL_20:

          v101 = v290;
LABEL_22:
          sub_22C3827B4();
          sub_22C36C640(v131, v132, v133, v134);
          v135 = sub_22C37EF1C();
          sub_22C36D0A8(v135, v136, v114);
          v137 = v285;
          v138 = v284;
          if (!v84)
          {
            v145 = sub_22C3806B8();
            v146(v145);
            v101 = v115;
            sub_22C90371C();
            v148 = v288;
            v147 = v289;
            if ((*(v288 + 88))(v138, v289) != *MEMORY[0x277D1ECF8])
            {
              v160 = sub_22C36D384();
              v161(v160);
              v162 = sub_22C5CA6B4();
              v163(v162);
              v164 = sub_22C5CA6A0();
              v165(v164);
              v166 = sub_22C50B61C();
              v167(v166, v147);
              return MEMORY[0x277D84F90];
            }

            (*(v148 + 96))(v138, v147);
            sub_22C37205C();
            v149 = sub_22C36FC08();
            v150(v149);
            sub_22C36D2E8();
            sub_22C90383C();
            sub_22C37EF1C();
            sub_22C5CA8DC();
            sub_22C36D0A8(v151, v152, v153);
            if (!v84)
            {
              sub_22C5CA6E4();
              v168();
              v303 = 0;
              v304 = 0xE000000000000000;
              sub_22C90AF5C();
              v169 = sub_22C908E7C();
              v171 = v170;

              v303 = v169;
              v304 = v171;
              MEMORY[0x2318B7850](0x223D70706128, 0xE600000000000000);
              v172 = sub_22C90381C();
              MEMORY[0x2318B7850](v172);

              MEMORY[0x2318B7850](0x616D6D6F63202C22, 0xEC000000223D646ELL);
              v173 = sub_22C90382C();
              v175 = v174;
              MEMORY[0x2318B7850](v173);

              MEMORY[0x2318B7850](10530, 0xE200000000000000);
              v176 = v303;
              v177 = v304;
              sub_22C36D818();
              sub_22C903FBC();

              v178 = sub_22C9063CC();
              sub_22C90AACC();

              v179 = sub_22C5CAE14();
              v301 = v176;
              if (v179)
              {
                sub_22C36BED8();
                v180 = swift_slowAlloc();
                sub_22C370220();
                v181 = swift_slowAlloc();
                v303 = v181;
                *v180 = 136315138;
                v182 = sub_22C441720();
                *(v180 + 4) = sub_22C36F9F4(v182, v183, v184);
                sub_22C5CA598();
                _os_log_impl(v185, v186, v187, v188, v189, v190);
                sub_22C36FF94(v181);
                v191 = sub_22C3816C4();
                MEMORY[0x2318B9880](v191);
                v192 = sub_22C36ACAC();
                MEMORY[0x2318B9880](v192);
              }

              sub_22C36FB04();
              v193(v175, v275);
              v194 = v276;
              sub_22C37205C();
              sub_22C90878C();
              sub_22C9087DC();
              v195 = sub_22C36FBFC();
              v261(v195);
              v196 = sub_22C36BD58();
              sub_22C3A5950(v196);

              v197 = sub_22C36CCF8();
              v198 = v258;
              sub_22C36D0A8(v197, v199, v258);
              if (v84)
              {

                sub_22C36DD28(v194, &qword_27D9BA808, &qword_22C90C6E0);
                v232 = 1;
                v206 = v281;
                v120 = v287;
              }

              else
              {
                sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
                sub_22C369A48();
                v200 = sub_22C9070DC();
                sub_22C3699B8(v200);
                v288 = *(v201 + 72);
                v203 = (*(v202 + 80) + 32) & ~*(v202 + 80);
                v204 = swift_allocObject();
                v291 = v204;
                *(v204 + 16) = xmmword_22C90FB40;
                v284 = v204 + v203;
                sub_22C9087AC();
                sub_22C90882C();

                v205 = sub_22C90381C();
                v206 = v270;
                *v270 = v205;
                v206[1] = v207;
                v279 = *MEMORY[0x277D1DEF8];
                v208 = v279;
                v209 = sub_22C906F2C();
                sub_22C36985C();
                v275 = *(v210 + 104);
                v275(v206, v208, v209);
                v290 = v177;
                LODWORD(v274) = *MEMORY[0x277D1DAA8];
                v211 = v277 + 104;
                v212 = *(v277 + 104);
                v213 = v212(v206);
                v289 = v212;
                v277 = v211;
                v214 = MEMORY[0x2318B4580](v213);
                sub_22C374490();
                sub_22C9070BC();
                LOBYTE(v303) = 1;
                sub_22C37B090();
                sub_22C386758();
                sub_22C36ECB4();
                sub_22C90708C();
                sub_22C9087AC();
                sub_22C90882C();

                *v206 = sub_22C90382C();
                v206[1] = v215;
                v275(v206, v279, v209);
                v216 = (v212)(v206, v274, v278);
                MEMORY[0x2318B4580](v216);
                sub_22C9070BC();
                LOBYTE(v303) = 1;
                sub_22C37B090();
                v217 = v288;
                sub_22C36ECB4();
                sub_22C90708C();
                v288 = v214 + 2 * v217;
                sub_22C9087AC();
                sub_22C90882C();

                sub_22C908E7C();
                sub_22C3A5908(&qword_27D9BC0B8, &qword_22C91CB80);
                v218 = *(sub_22C3A5908(&qword_27D9BAA38, &unk_22C911F90) - 8);
                v219 = *(v218 + 72);
                v220 = (*(v218 + 80) + 32) & ~*(v218 + 80);
                v221 = swift_allocObject();
                *(v221 + 16) = xmmword_22C90F870;
                v222 = (v221 + v220);
                *v222 = 7368801;
                v222[1] = 0xE300000000000000;
                sub_22C901F4C();
                v223 = (v222 + v219);
                *v223 = 0x646E616D6D6F63;
                v223[1] = 0xE700000000000000;
                sub_22C901F4C();
                sub_22C909F0C();
                sub_22C38644C();
                v120 = v287;
                sub_22C906A9C();
                v224 = (v289)(v206, *MEMORY[0x277D1DA78], v278);
                MEMORY[0x2318B4580](v224);
                sub_22C9070BC();
                LOBYTE(v303) = 1;
                sub_22C37B090();
                sub_22C90708C();
                v225 = sub_22C37BA1C();
                v226(v225);
                sub_22C36D818();
                sub_22C9088AC();
                sub_22C36D2E8();
                sub_22C90889C();
                v228 = v295;
                v227 = v296;
                (*(v295 + 104))(v222, *MEMORY[0x277D1E6F8], v296);
                sub_22C370208();
                sub_22C90893C();
                v229 = v222;
                v198 = v258;
                (*(v228 + 8))(v229, v227);
                v230 = sub_22C372164();
                v231(v230);
                v232 = 0;
              }

              sub_22C36C640(v206, v232, 1, v198);
              sub_22C3A5908(&qword_27D9BE098, &qword_22C91CE70);
              v233 = v198;
              v234 = (*(v272 + 80) + 32) & ~*(v272 + 80);
              v235 = swift_allocObject();
              *(v235 + 16) = xmmword_22C90F800;
              sub_22C4E719C(v206, v235 + v234, &qword_27D9BA808, &qword_22C90C6E0);
              sub_22C5CA6E4();
              sub_22C4E719C(v236, v237, v238, &qword_22C90C6E0);
              v239 = v273;
              sub_22C5CA6E4();
              sub_22C4E7208(v240, v241, v242, &qword_22C90C6E0);
              v243 = sub_22C37EF1C();
              sub_22C36D0A8(v243, v244, v233);
              if (v84)
              {
                sub_22C36DD28(v239, &qword_27D9BA808, &qword_22C90C6E0);
                v109 = MEMORY[0x277D84F90];
                v245 = v264;
                v246 = v297;
                v1 = v283;
LABEL_45:
                swift_setDeallocating();
                sub_22C590000();
                sub_22C36DD28(v281, &qword_27D9BA808, &qword_22C90C6E0);
                sub_22C36FB04();
                v252(v282, v245);
                (*(v1 + 8))(v120, v286);
                (*(v302 + 8))(v285, v300);
                v253 = sub_22C5CA6B4();
                v254(v253);
                (*(v246 + 8))(v298, v233);
                return v109;
              }

              sub_22C5CA800();
              v247();
              v109 = MEMORY[0x277D84F90];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v1 = v283;
              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_42:
                v250 = *(v109 + 16);
                v249 = *(v109 + 24);
                if (v250 >= v249 >> 1)
                {
                  sub_22C369AB0(v249);
                  sub_22C590488();
                  v109 = v256;
                }

                *(v109 + 16) = v250 + 1;
                v246 = v297;
                sub_22C36BA94();
                v233 = v258;
                sub_22C5CA800();
                v251();
                v245 = v264;
                goto LABEL_45;
              }

LABEL_47:
              sub_22C36D270();
              sub_22C590488();
              v109 = v255;
              goto LABEL_42;
            }

            v154 = sub_22C36FC2C();
            v155(v154);
            (*(v302 + 8))(v137, v300);
            v156 = sub_22C5CA6B4();
            v157(v156);
            v158 = sub_22C5CA6A0();
            v159(v158);
            v143 = &qword_27D9BC1E8;
            v144 = &qword_22C9123B0;
LABEL_26:
            sub_22C36DD28(v101, v143, v144);
            return MEMORY[0x277D84F90];
          }

          v139 = sub_22C5CA6B4();
          v140(v139);
          v141 = sub_22C5CA6A0();
          v142(v141);
        }

        v143 = &qword_27D9BD2A8;
        v144 = &qword_22C920540;
        goto LABEL_26;
      }

      v105 = sub_22C38644C();
      v106(v105);
      v107 = sub_22C372280();
      v108(v107);
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22C5B2B3C@<X0>(uint64_t a1@<X8>)
{
  result = sub_22C901E3C();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_22C5B2B70()
{
  sub_22C369980();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v4);
  v1[15] = sub_22C3699D4();
  v5 = sub_22C908A0C();
  v1[16] = v5;
  sub_22C3699B8(v5);
  v1[17] = v6;
  v1[18] = sub_22C3699D4();
  v7 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  sub_22C369914(v7);
  v1[19] = sub_22C3699D4();
  v8 = sub_22C908EAC();
  v1[20] = v8;
  sub_22C3699B8(v8);
  v1[21] = v9;
  v1[22] = sub_22C3699D4();
  v10 = type metadata accessor for FetchedTools(0);
  sub_22C369914(v10);
  v1[23] = sub_22C3699D4();
  v11 = sub_22C908AEC();
  v1[24] = v11;
  sub_22C3699B8(v11);
  v1[25] = v12;
  v1[26] = sub_22C3699D4();
  v13 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  sub_22C369914(v13);
  v1[27] = sub_22C3699D4();
  v14 = sub_22C9036EC();
  v1[28] = v14;
  sub_22C3699B8(v14);
  v1[29] = v15;
  v1[30] = sub_22C3856B8();
  v1[31] = swift_task_alloc();
  v16 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C369914(v16);
  v1[32] = sub_22C3856B8();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v17 = sub_22C9037EC();
  v1[35] = v17;
  sub_22C3699B8(v17);
  v1[36] = v18;
  v1[37] = sub_22C3699D4();
  v19 = sub_22C9063DC();
  v1[38] = v19;
  sub_22C3699B8(v19);
  v1[39] = v20;
  v1[40] = sub_22C3856B8();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v21 = sub_22C90880C();
  v1[46] = v21;
  sub_22C3699B8(v21);
  v1[47] = v22;
  v1[48] = sub_22C3856B8();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v23 = sub_22C3A5908(&qword_27D9BEBB0, &unk_22C91FF78);
  sub_22C369914(v23);
  v1[51] = sub_22C3699D4();
  v24 = sub_22C907C8C();
  v1[52] = v24;
  sub_22C3699B8(v24);
  v1[53] = v25;
  v1[54] = sub_22C3856B8();
  v1[55] = swift_task_alloc();
  v26 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_22C5B2FAC(uint64_t a1)
{
  v2 = v1[52];
  v3 = v1[47];
  sub_22C90878C();
  v4 = sub_22C9087DC();
  v5 = *(v3 + 8);
  v6 = sub_22C36ECB4();
  v5(v6);
  v1[10] = v4;
  v7 = sub_22C372164();
  sub_22C3A5908(v7, v8);
  sub_22C369E24();
  sub_22C44178C();
  sub_22C3D32C8(v9, v10, v11, v12);
  sub_22C3806B8();
  sub_22C907EFC();

  v13 = sub_22C36CCF8();
  sub_22C36D0A8(v13, v14, v2);
  if (v15)
  {
    sub_22C36DD28(v1[51], &qword_27D9BEBB0, &unk_22C91FF78);
    sub_22C903FBC();
    v16 = sub_22C9063CC();
    sub_22C90AADC();
    v17 = sub_22C370214();
    if (os_log_type_enabled(v17, v18))
    {
      sub_22C3720F4();
      v19 = swift_slowAlloc();
      sub_22C36C890(v19);
      sub_22C37F89C();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v25 = v1[16];

    v26 = sub_22C36BAFC();
    v27(v26);
    sub_22C36A748();
    sub_22C36C640(v28, v29, v30, v25);
    goto LABEL_6;
  }

  v31 = v1[55];
  sub_22C5CA7E8();
  v32(v31);
  sub_22C903FBC();
  v33 = sub_22C36BA00();
  v34(v33);
  v35 = sub_22C9063CC();
  v36 = sub_22C90AACC();
  if (sub_22C36FBB4(v36))
  {
    v195 = v36;
    v196 = v35;
    v197 = v5;
    sub_22C36BED8();
    v38 = swift_slowAlloc();
    sub_22C370220();
    v193 = swift_slowAlloc();
    v194 = v38;
    *v38 = 136315138;
    v39 = sub_22C907C6C();
    v40 = *(v39 + 16);
    if (v40)
    {
      v41 = v1[36];
      v42 = *(v41 + 16);
      v41 += 16;
      v204 = v42;
      v43 = v39 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
      v203 = *(v41 + 56);
      v44 = MEMORY[0x277D84F90];
      do
      {
        v45 = v1[28];
        v46 = v1[20];
        v47 = sub_22C372FA4();
        v204(v47);
        sub_22C90371C();
        sub_22C9036BC();
        v48 = sub_22C36D400();
        v49(v48, v45);
        v50 = sub_22C36CCF8();
        v52 = sub_22C370B74(v50, v51, v46);
        v53 = v1[34];
        if (v52 == 1)
        {
          v54 = sub_22C36FCCC();
          v55(v54);
          sub_22C36DD28(v53, &qword_27D9BC1E8, &qword_22C9123B0);
        }

        else
        {
          v199 = sub_22C908E7C();
          v57 = v56;
          v58 = sub_22C36FCCC();
          v59(v58);
          v60 = sub_22C380120();
          v61(v60);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_22C36D270();
            sub_22C590270(v65, v66, v67, v44);
            v44 = v68;
          }

          v63 = *(v44 + 16);
          v62 = *(v44 + 24);
          if (v63 >= v62 >> 1)
          {
            v69 = sub_22C369AB0(v62);
            sub_22C590270(v69, v63 + 1, 1, v44);
            v44 = v70;
          }

          *(v44 + 16) = v63 + 1;
          v64 = v44 + 16 * v63;
          *(v64 + 32) = v199;
          *(v64 + 40) = v57;
        }

        v43 += v203;
        --v40;
      }

      while (v40);
    }

    else
    {

      v44 = MEMORY[0x277D84F90];
    }

    v78 = v1[53];
    v77 = v1[54];
    v79 = v1[52];
    v205 = v1[45];
    v81 = v1[38];
    v80 = v1[39];
    MEMORY[0x2318B7AD0](v44, MEMORY[0x277D837D0]);
    sub_22C5CAC34();

    v73 = *(v78 + 8);
    v73(v77, v79);
    v82 = sub_22C36FC2C();
    v85 = sub_22C36F9F4(v82, v83, v84);

    *(v194 + 1) = v85;
    sub_22C5CA61C(&dword_22C366000, v196, v195, "Tools coming into overrides are: %s");
    _os_log_impl(v86, v87, v88, v89, v90, v91);
    sub_22C36FF94(v193);
    v92 = sub_22C36ACAC();
    MEMORY[0x2318B9880](v92);
    v93 = sub_22C36D66C();
    MEMORY[0x2318B9880](v93);

    v75 = *(v80 + 8);
    v75(v205, v81);
    v5 = v197;
  }

  else
  {
    v71 = v1[53];
    v72 = v1[39];

    v73 = *(v71 + 8);
    v74 = sub_22C36BBCC();
    (v73)(v74);
    v75 = *(v72 + 8);
    v76 = sub_22C36D264();
    (v75)(v76);
  }

  v1[56] = v75;
  v1[57] = v73;
  v198 = v75;
  v94 = v1[27];
  sub_22C3870A4();
  swift_beginAccess();
  sub_22C37017C();
  sub_22C4E719C(v95, v96, v97, &unk_22C9195C0);
  v98 = sub_22C90077C();
  v99 = sub_22C370B74(v94, 1, v98);
  v100 = sub_22C36BBCC();
  sub_22C36DD28(v100, v101, &unk_22C9195C0);
  if (v99 == 1)
  {
    sub_22C5C86BC();
    sub_22C37A198();
    swift_allocError();
    *v102 = xmmword_22C9114A0;
    swift_willThrow();
    v103 = sub_22C36BBCC();
    (v73)(v103);

    sub_22C369A24();
LABEL_25:
    sub_22C5CAD40();

    __asm { BRAA            X1, X16 }
  }

  (*(v1[25] + 16))(v1[26], v1[14] + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_toolbox, v1[24]);
  v104 = sub_22C36BD58();
  sub_22C3FE8BC(v104, v105);
  v108 = v1[49];
  (*(v1[25] + 8))(v1[26], v1[24]);
  v109 = v1[5];
  v110 = v1[6];
  sub_22C374168(v1 + 2, v109);
  sub_22C90878C();
  (*(v110 + 8))(v108, v109, v110);
  v111 = v1[23];
  v112 = sub_22C36BBCC();
  v5(v112);
  v113 = sub_22C4AF4A0();
  sub_22C5C8874(v111, type metadata accessor for FetchedTools);
  v114 = *(v113 + 16);
  if (v114)
  {
    v202 = *(v1[29] + 16);
    sub_22C36BA94();
    v116 = v113 + v115;
    v201 = *(v117 + 56);
    v200 = (v118 + 32);
    v206 = MEMORY[0x277D84F90];
    do
    {
      v120 = v1[32];
      v119 = v1[33];
      v121 = v1[20];
      v122 = sub_22C372164();
      v202(v122);
      sub_22C9036BC();
      sub_22C4E7208(v120, v119, &qword_27D9BC1E8, &qword_22C9123B0);
      v123 = sub_22C37170C();
      v124(v123);
      v125 = sub_22C36CCF8();
      if (sub_22C370B74(v125, v126, v121) == 1)
      {
        sub_22C36DD28(v1[33], &qword_27D9BC1E8, &qword_22C9123B0);
      }

      else
      {
        v127 = *v200;
        (*v200)(v1[22], v1[33], v1[20]);
        v128 = v206;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C36D270();
          sub_22C591C4C();
          v128 = v133;
        }

        v130 = *(v128 + 16);
        v129 = *(v128 + 24);
        if (v130 >= v129 >> 1)
        {
          sub_22C369AB0(v129);
          sub_22C591C4C();
          v128 = v134;
        }

        *(v128 + 16) = v130 + 1;
        sub_22C37054C();
        v206 = v128;
        v127(v128 + v131 + *(v132 + 72) * v130);
      }

      v116 += v201;
      --v114;
    }

    while (v114);
  }

  sub_22C90878C();
  v135 = sub_22C9087DC();
  v136 = sub_22C36BAFC();
  v5(v136);
  v1[11] = v135;
  sub_22C907EEC();

  v137 = sub_22C9079FC();
  v138 = sub_22C37EF1C();
  if (sub_22C370B74(v138, v139, v137) == 1)
  {
    sub_22C36DD28(v1[19], &qword_27D9BD798, &unk_22C919070);
    v140 = MEMORY[0x277D84F90];
  }

  else
  {
    v140 = MEMORY[0x2318B4EB0]();
    sub_22C36BBA8();
    v141 = sub_22C37170C();
    v142(v141);
  }

  v143 = v1[48];
  v144 = v1[14];
  sub_22C90878C();
  sub_22C5CA6E4();
  sub_22C5B5ADC(v145, v146, v147, v143, v148);
  v149 = v1[15];
  (v5)(v1[48], v1[46]);

  sub_22C36D3E0(v149);
  if (v15)
  {
    sub_22C36DD28(v1[15], &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C903FBC();
    v150 = sub_22C9063CC();
    sub_22C90AACC();
    v151 = sub_22C370214();
    if (os_log_type_enabled(v151, v152))
    {
      sub_22C3720F4();
      v153 = swift_slowAlloc();
      sub_22C36C890(v153);
      sub_22C37F89C();
      _os_log_impl(v154, v155, v156, v157, v158, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v159 = v1[16];

    v160 = sub_22C36ECB4();
    v198(v160);
    v161 = sub_22C36BAFC();
    (v73)(v161);
    sub_22C36A748();
    v165 = v159;
    goto LABEL_60;
  }

  v167 = v1[17];
  v166 = v1[18];
  v168 = v1[15];
  v169 = v1[16];
  v170 = v1[14];
  v171 = *(v167 + 32);
  v1[58] = v171;
  v1[59] = (v167 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v172 = v171(v166, v168, v169);
  v173 = *(v170 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_delayDuration);
  if (v173 < 1)
  {
    v190 = sub_22C5CA744();
    v191(v190);
    sub_22C37017C();
    v144();
    sub_22C36BECC();
    v165 = v140;
LABEL_60:
    sub_22C36C640(v162, v163, v164, v165);
    sub_22C36FF94(v1 + 2);
LABEL_6:
    sub_22C5CA944();

    sub_22C369C50();
    goto LABEL_25;
  }

  v174 = *(v1[14] + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_delayDurationVariation);
  v175 = -v174;
  if (__OFSUB__(0, v174))
  {
    __break(1u);
    goto LABEL_62;
  }

  v172 = 2 * v174;
  if (v174 < v175)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v174 == v175)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v172 = sub_22C5C8B28(v172);
  if (__OFADD__(v173, v172 + v175))
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v176 = (v173 + v172 + v175) & ~((v173 + v172 + v175) >> 63);
  sub_22C903FBC();
  v177 = sub_22C9063CC();
  sub_22C90AABC();
  v178 = sub_22C370214();
  if (os_log_type_enabled(v178, v179))
  {
    sub_22C36BED8();
    v180 = swift_slowAlloc();
    *v180 = 134217984;
    *(v180 + 4) = v176;
    sub_22C37F89C();
    _os_log_impl(v181, v182, v183, v184, v185, 0xCu);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v186 = v1[39];

  v1[60] = (v186 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v187 = sub_22C36BAFC();
  v172 = (v198)(v187);
  if ((v176 * 1000000) >> 64 != (1000000 * v176) >> 63)
  {
    goto LABEL_65;
  }

  if (1000000 * v176 < 0)
  {
LABEL_66:
    __break(1u);
    return MEMORY[0x282200480](v172);
  }

  v188 = swift_task_alloc();
  v1[61] = v188;
  *v188 = v1;
  v188[1] = sub_22C5B4058;
  sub_22C5CAD40();

  return MEMORY[0x282200480](v172);
}

uint64_t sub_22C5B4058()
{
  sub_22C36FB38();
  v2 = *v1;
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;

  v5 = *(v2 + 112);
  if (v0)
  {

    v6 = sub_22C5CA3A8;
  }

  else
  {
    v6 = sub_22C5B4184;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22C5B4184(uint64_t a1)
{
  sub_22C903FBC();
  v2 = sub_22C9063CC();
  sub_22C90AABC();
  v3 = sub_22C370214();
  if (os_log_type_enabled(v3, v4))
  {
    sub_22C3720F4();
    v5 = swift_slowAlloc();
    sub_22C36C890(v5);
    sub_22C37F89C();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v11 = v1[56];
  v12 = v1[43];

  v13 = sub_22C36BAFC();
  (v11)(v13);
  v14 = sub_22C5CA744();
  v15(v14);
  sub_22C37017C();
  v11();
  sub_22C36BECC();
  sub_22C36C640(v16, v17, v18, v12);
  sub_22C36FF94(v1 + 2);
  sub_22C5CA944();

  sub_22C369C50();

  return v19();
}

id *sub_22C5B43AC()
{
  static Session.Transcript.userQuery(event:)();
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore;
  v3 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v5 = *(v2 + 8);
  v4 = *(v2 + 16);
  v18[0] = v3;
  v18[1] = v5;
  v18[2] = v4;
  v6 = v3;
  v7 = v5;
  v8 = v4;
  v9 = sub_22C36BAFC();
  v11 = sub_22C5CB200(v9, v10);

  if (v11[2] >= 2uLL)
  {
    v18[0] = v11;
    if (qword_27D9BA6F0 != -1)
    {
      swift_once();
    }

    v12 = sub_22C37170C();
    v14 = sub_22C3A5908(v12, v13);
    sub_22C37AA60(v14, qword_27D9BE6C8);
    v15 = sub_22C36CA88();
    sub_22C3A5908(v15, v16);
    sub_22C3D32C8(&qword_27D9BEC90, &qword_27D9BE730, &qword_22C91E320, MEMORY[0x277D83970]);
    sub_22C3D32C8(&qword_27D9BEC98, &qword_27D9BE998, &qword_22C91E400, MEMORY[0x277CC8C98]);
    sub_22C3863FC();
    sub_22C90A4BC();
    sub_22C37BB14();

    return v18;
  }

  return v11;
}

uint64_t sub_22C5B4568(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v185 = a2;
  v176 = a3;
  v177 = a4;
  v160 = sub_22C9063DC();
  sub_22C369824();
  v192 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22C3698E4();
  v153 = v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  v175 = v10;
  sub_22C36BA0C();
  v174 = sub_22C906ECC();
  sub_22C369824();
  v191 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v173 = v13;
  sub_22C36BA0C();
  v172 = sub_22C9089DC();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  v167 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA64();
  v171 = v19;
  sub_22C36BA0C();
  v182 = sub_22C901FAC();
  sub_22C369824();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_22C3698E4();
  v158 = v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA64();
  v162 = v25;
  sub_22C36BA0C();
  v188 = sub_22C90069C();
  sub_22C369824();
  v190 = v26;
  MEMORY[0x28223BE20](v27);
  sub_22C3698E4();
  v157 = v28;
  sub_22C369930();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA64();
  v194 = v30;
  v31 = sub_22C36BA0C();
  v32 = type metadata accessor for PlanOverridesService.EventReference(v31);
  sub_22C369824();
  v166 = v33;
  MEMORY[0x28223BE20](v34);
  sub_22C3698E4();
  v193 = v35;
  sub_22C369930();
  MEMORY[0x28223BE20](v36);
  v38 = &v151 - v37;
  v198 = sub_22C908A0C();
  sub_22C369824();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  sub_22C3698E4();
  v152 = v42;
  sub_22C369930();
  MEMORY[0x28223BE20](v43);
  sub_22C373000();
  v44 = a1[1];
  v196 = *a1;
  v197 = v44;

  sub_22C36ECB4();
  v170 = v32;
  v45 = sub_22C909F0C();
  sub_22C36ECB4();
  v46 = sub_22C909F0C();
  v47 = v184 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore;
  v183 = v40 + 16;
  v205 = v46;
  v48 = *(v185 + 16);
  v178 = &v200[2];
  v161 = v21 + 16;
  v163 = v21;
  v181 = v21 + 8;
  v186 = (v190 + 32);
  v187 = (v15 + 8);
  v169 = v15 + 88;
  v168 = *MEMORY[0x277D1E798];
  v155 = (v191 + 32);
  v156 = v15 + 96;
  v159 = (v192 + 8);
  v154 = v191 + 8;
  v179 = (v40 + 8);
  v180 = v40;
  v49 = v48 - 1;
  v195 = v38;
  v165 = v184 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore;
  while (1)
  {
    if (v49 == -1)
    {

      return v45;
    }

    sub_22C37054C();
    v52 = *(v51 + 16);
    v53 = v198;
    v52(v4, v185 + v50 + *(v51 + 72) * v49, v198);
    v54 = *v47;
    if (!*v47)
    {

      v122 = sub_22C385558();
      v123(v122, v53);
      return v45;
    }

    v164 = v52;
    v189 = v49;
    v190 = v45;
    v55 = v4;
    v58 = v47 + 8;
    v57 = *(v47 + 8);
    v191 = *(v58 + 8);
    v56 = v191;
    v192 = v57;
    sub_22C5CA130(v201);
    memcpy(v204, v201, sizeof(v204));
    v59 = v196;
    v60 = v197;
    sub_22C90A1DC();
    v61 = v54;
    v62 = v57;
    v63 = v56;
    v64 = sub_22C90A0EC();

    sub_22C36D2A8();
    v65 = swift_allocObject();
    v65[2] = v204;
    v65[3] = v59;
    v65[4] = v60;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_22C5CA138;
    *(v66 + 24) = v65;
    v200[4] = sub_22C5CA144;
    v200[5] = v66;
    v200[0] = MEMORY[0x277D85DD0];
    v200[1] = 1107296256;
    v200[2] = sub_22C5C8528;
    v200[3] = &unk_283FBD5A0;
    v67 = _Block_copy(v200);

    [v63 lookupKey:v64 resultBlock:v67];

    _Block_release(v67);
    sub_22C5CA700();
    LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

    sub_22C36E030(v54, v192, v191);
    if (v59)
    {
      break;
    }

    memcpy(v202, v204, sizeof(v202));
    memcpy(v203, v204, sizeof(v203));
    if (sub_22C4DDD30(v203) == 1)
    {
      v124 = sub_22C5CA824();
      v125(v124, v198);

      return v190;
    }

    memcpy(v200, v203, sizeof(v200));
    v4 = v55;
    sub_22C5B862C();
    v68 = v198;
    if ((v69 & 1) == 0)
    {

      v126 = v153;
      sub_22C903FBC();
      v127 = v152;
      v128 = sub_22C441720();
      v164(v128);
      memcpy(v200, v202, sizeof(v200));
      sub_22C472384(v200, v199);
      v129 = sub_22C9063CC();
      v130 = sub_22C90AACC();
      sub_22C36DD28(v202, &qword_27D9BEC80, &unk_22C920630);
      if (os_log_type_enabled(v129, v130))
      {
        v131 = sub_22C383050();
        v196 = sub_22C37A180();
        v199[0] = v196;
        *v131 = 136315394;
        sub_22C37BE68();
        sub_22C5C87F4(v132, v133, MEMORY[0x277D1E8B0]);
        sub_22C90B47C();
        v134 = sub_22C387194();
        v197 = v55;
        v135 = *v179;
        (*v179)(v134, v68);
        v136 = sub_22C37B9B0();
        sub_22C36F9F4(v136, v137, v138);
        sub_22C387194();

        *(v131 + 4) = v127;
        *(v131 + 12) = 2080;
        v139 = v203[0];

        sub_22C36DD28(v202, &qword_27D9BEC80, &unk_22C920630);
        v140 = sub_22C37B9B0();
        sub_22C36F9F4(v140, v141, v142);
        sub_22C387194();

        *(v131 + 14) = v139;
        _os_log_impl(&dword_22C366000, v129, v130, "Transcript event fails to match previous statement. This shouldn't happen. Transcript event %s. Stored statement id: %s", v131, 0x16u);
        swift_arrayDestroy();
        v143 = sub_22C37B310();
        MEMORY[0x2318B9880](v143);
        v144 = sub_22C3816C4();
        MEMORY[0x2318B9880](v144);

        v145 = sub_22C385558();
        v146(v145);
        v135(v197, v68);
      }

      else
      {

        sub_22C36DD28(v202, &qword_27D9BEC80, &unk_22C920630);
        v147 = *v179;
        v148 = sub_22C36EC6C();
        (v147)(v148);
        (*v159)(v126, v160);
        v149 = sub_22C372158();
        (v147)(v149);
      }

      return v190;
    }

    sub_22C9087FC();
    v70 = v171;
    sub_22C9089EC();
    v71 = sub_22C9089AC();
    v72 = *v187;
    (*v187)(v70, v172);
    v73 = v190;
    if (*(v71 + 16))
    {
      v75 = v162;
      v74 = v163;
      sub_22C36BA94();
      (*(v74 + 16))(v75, v71 + v76, v182);

      v77 = sub_22C901F9C();
      v78 = sub_22C3720DC();
      v79(v78);
    }

    else
    {

      v77 = 1;
    }

    v80 = v167;
    v81 = *v186;
    v82 = v195;
    (*v186)(v195, v194, v188);
    v83 = *(v170 + 20);
    *(v82 + v83) = v77;
    sub_22C9089EC();
    v84 = sub_22C3819EC();
    v86 = v85(v84);
    if (v86 == v168)
    {
      v87 = sub_22C3819EC();
      v88(v87);
      (*v155)(v173, v80, v174);
      sub_22C903FBC();
      v89 = sub_22C9063CC();
      v90 = sub_22C90AACC();
      v91 = sub_22C370214();
      if (os_log_type_enabled(v91, v92))
      {
        sub_22C3720F4();
        v93 = swift_slowAlloc();
        sub_22C36C890(v93);
        _os_log_impl(&dword_22C366000, v89, v90, "Transcript event is a statementEvaluated event; we are going to use .resultStatementId instead", v72, 2u);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      (*v159)(v175, v160);
      sub_22C9087FC();
      sub_22C906E1C();
      v94 = sub_22C901F9C();
      v95 = sub_22C5CA5C8();
      v96(v95);
      v97 = sub_22C36D400();
      v98(v97, v174);
      sub_22C3872A0();
      v99 = v195;
      sub_22C5C8874(v195, v100);
      v101 = sub_22C5CAA58();
      v81(v101);
      *(v99 + v83) = v94;
    }

    else
    {
      v102 = sub_22C3819EC();
      (v72)(v102);
      v99 = v195;
    }

    v103 = sub_22C90A1DC();
    v105 = v104;

    sub_22C3831E0();
    sub_22C5CA0B8(v99, v193);
    swift_isUniquelyReferenced_nonNull_native();
    v200[0] = v73;
    v106 = sub_22C36E2BC(v103, v105);
    if (__OFADD__(*(v73 + 16), (v107 & 1) == 0))
    {
      goto LABEL_35;
    }

    v108 = v106;
    v109 = v107;
    sub_22C3A5908(&qword_27D9BEC88, &unk_22C920530);
    if (sub_22C90B15C())
    {
      v110 = sub_22C36E2BC(v103, v105);
      if ((v109 & 1) != (v111 & 1))
      {
        goto LABEL_37;
      }

      v108 = v110;
    }

    v45 = v200[0];
    if (v109)
    {
      sub_22C5CAC9C();
      sub_22C5CA184(v193, v112);
    }

    else
    {
      sub_22C36ED48(v200[0] + 8 * (v108 >> 6));
      v113 = (*(v45 + 48) + 16 * v108);
      *v113 = v103;
      v113[1] = v105;
      sub_22C5CAC9C();
      sub_22C386250();
      sub_22C5C8974(v193, v114);
      v115 = *(v45 + 16);
      v116 = __OFADD__(v115, 1);
      v117 = v115 + 1;
      if (v116)
      {
        goto LABEL_36;
      }

      *(v45 + 16) = v117;
    }

    sub_22C3872A0();
    sub_22C5C8874(v195, v118);
    v119 = sub_22C385558();
    v120(v119, v198);
    v47 = v165;
    v121 = v189;
    if (!v203[11])
    {
      sub_22C36DD28(v202, &qword_27D9BEC80, &unk_22C920630);
      return v45;
    }

    v196 = v203[10];
    v197 = v203[11];

    sub_22C36DD28(v202, &qword_27D9BEC80, &unk_22C920630);
    v49 = v121 - 1;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void sub_22C5B530C()
{
  sub_22C36BA7C();
  v1 = v0;
  sub_22C9026BC();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C3698A8();
  sub_22C36BA0C();
  sub_22C907DEC();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C9089DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C36EC5C();
  v5 = sub_22C908A0C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  sub_22C906ECC();
  sub_22C369824();
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C5CA768();
  if (*(v1 + 16) < 2uLL)
  {
LABEL_7:
    sub_22C36CC48();
    return;
  }

  sub_22C5AD8D0();
  if (*(v13 + 16) >= 2uLL)
  {
    sub_22C36BA94();
    (*(v7 + 16))(v11, v14 + *(v7 + 72) + v15, v5);

    sub_22C9089EC();
    v16 = sub_22C380120();
    v17(v16);
    v18 = sub_22C371510();
    if (v19(v18) == *MEMORY[0x277D1E798])
    {
      v20 = sub_22C371510();
      v21(v20);
      sub_22C5CA714();
      v22();
      sub_22C906EBC();
      sub_22C907DAC();
      v23 = sub_22C5CA720();
      v24(v23);
      v25 = sub_22C372158();
      v26(v25);
      v27 = sub_22C38674C();
      v28(v27);
      v29 = sub_22C38674C();
    }

    else
    {
      v29 = sub_22C371510();
    }

    v30(v29);
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22C5B56F0()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  sub_22C388C54();
  v50 = sub_22C9063DC();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  sub_22C381AEC();
  MEMORY[0x28223BE20](v9);
  sub_22C36CAC0();
  v10 = sub_22C5B43AC();
  v11 = v10;
  v12 = v10[2];
  if (v12)
  {
    v44 = v1;
    v47 = v0;
    v48 = (v7 + 8);
    v13 = v12 - 1;
    v14 = 4;
    v45 = v3;
    v46 = v5;
    v49 = v10;
    while (1)
    {
      memcpy(v52, &v11[v14], 0xD0uLL);
      if (v3)
      {
        v15 = v52[0];
        v16 = v52[1];
        if (LOBYTE(v52[23]) == 2 || (v52[23] & 1) == 0)
        {
          sub_22C5CAB7C();
          sub_22C903FBC();
          sub_22C5CAB7C();
          v32 = sub_22C9063CC();
          v33 = sub_22C90AACC();
          sub_22C4723E0(v52);
          v34 = sub_22C3729E4();
          if (os_log_type_enabled(v34, v35))
          {
            sub_22C36BED8();
            v36 = swift_slowAlloc();
            sub_22C370220();
            v37 = swift_slowAlloc();
            v51[0] = v37;
            *v36 = 136315138;

            sub_22C4723E0(v52);
            v38 = sub_22C36F9F4(v15, v16, v51);

            *(v36 + 4) = v38;
            _os_log_impl(&dword_22C366000, v32, v33, "The penultimateEventIsPrompting, and applyToPromptScenarios is false, so skipping override: %s", v36, 0xCu);
            sub_22C36FF94(v37);
            v3 = v45;
            sub_22C369B50();
            MEMORY[0x2318B9880]();
            sub_22C369B50();
            MEMORY[0x2318B9880]();
          }

          else
          {
            sub_22C4723E0(v52);
          }

          (*v48)(v47, v50);
          v5 = v46;
          v11 = v49;
          if (!v13)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

        sub_22C5CAB7C();
        sub_22C903FBC();
        sub_22C5CAB7C();
        v17 = sub_22C9063CC();
        v18 = sub_22C90AACC();
        sub_22C4723E0(v52);
        v19 = sub_22C3729E4();
        if (os_log_type_enabled(v19, v20))
        {
          sub_22C36BED8();
          swift_slowAlloc();
          sub_22C3735E4();
          v21 = swift_slowAlloc();
          v51[0] = v21;
          *v3 = 136315138;

          v22 = sub_22C36F9F4(v15, v16, v51);

          *(v3 + 4) = v22;
          sub_22C5CA61C(&dword_22C366000, v17, v18, "The penultimateEventIsPrompting, however applyToPromptScenarios is true, so evaluating override: %s");
          _os_log_impl(v23, v24, v25, v26, v27, v28);
          sub_22C36FF94(v21);
          sub_22C369B50();
          MEMORY[0x2318B9880]();
          v3 = v45;
          sub_22C369B50();
          MEMORY[0x2318B9880]();

          (*v48)(v44, v50);
        }

        else
        {

          v39 = sub_22C36D400();
          v40(v39, v50);
        }

        v11 = v49;
        v29 = *v5;
      }

      else
      {
        v29 = *v5;
        sub_22C5CAB7C();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C36D270();
        sub_22C593968();
        v29 = v41;
      }

      v31 = *(v29 + 16);
      v30 = *(v29 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_22C369AB0(v30);
        sub_22C3827B4();
        sub_22C593968();
        v29 = v42;
      }

      *(v29 + 16) = v31 + 1;
      memcpy((v29 + 208 * v31 + 32), v52, 0xD0uLL);
      *v5 = v29;
      if (!v13)
      {
LABEL_22:

        sub_22C36CC48();
        return;
      }

LABEL_19:
      --v13;
      v14 += 26;
    }
  }

  sub_22C36CC48();
}

uint64_t sub_22C5B5ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v463 = a3;
  v464 = a4;
  v444 = a2;
  v459 = a5;
  v452 = sub_22C90075C();
  sub_22C369824();
  v454 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  v451 = v11;
  v12 = sub_22C3A5908(&qword_27D9BBC00, &unk_22C911240);
  sub_22C369914(v12);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  sub_22C36D5B4();
  v450 = v14;
  sub_22C36BA0C();
  v484 = sub_22C90077C();
  sub_22C369824();
  v453 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  v449 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA64();
  v473 = v19;
  v20 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  v21 = sub_22C369914(v20);
  MEMORY[0x28223BE20](v21);
  sub_22C3698E4();
  v457 = v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA58();
  v487 = v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  sub_22C36BA64();
  v489 = v26;
  v27 = sub_22C3A5908(&qword_27D9BC068, &qword_22C920590);
  sub_22C369914(v27);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v28);
  sub_22C36D5B4();
  *&v458 = v29;
  sub_22C36BA0C();
  v474 = sub_22C9088CC();
  sub_22C369824();
  v456 = v30;
  MEMORY[0x28223BE20](v31);
  sub_22C3698A8();
  v455 = v32;
  sub_22C36BA0C();
  v479 = sub_22C9063DC();
  sub_22C369824();
  v461 = v33;
  MEMORY[0x28223BE20](v34);
  sub_22C3698E4();
  v448 = v35;
  sub_22C369930();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA58();
  v443 = v37;
  sub_22C369930();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA58();
  v442 = v39;
  sub_22C369930();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA58();
  v462 = v41;
  sub_22C369930();
  MEMORY[0x28223BE20](v42);
  sub_22C36BA58();
  v467 = v43;
  sub_22C369930();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA58();
  v469 = v45;
  sub_22C369930();
  MEMORY[0x28223BE20](v46);
  sub_22C36BA58();
  *&v445 = v47;
  sub_22C369930();
  MEMORY[0x28223BE20](v48);
  sub_22C36BA58();
  v460 = v49;
  sub_22C369930();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA58();
  v466 = v51;
  sub_22C369930();
  MEMORY[0x28223BE20](v52);
  sub_22C36BA64();
  v482 = v53;
  sub_22C36BA0C();
  v480 = sub_22C9089DC();
  sub_22C369824();
  v478 = v54;
  MEMORY[0x28223BE20](v55);
  sub_22C3698A8();
  v477 = v56;
  v57 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v58 = sub_22C369914(v57);
  MEMORY[0x28223BE20](v58);
  sub_22C3698E4();
  v488 = v59;
  sub_22C369930();
  MEMORY[0x28223BE20](v60);
  sub_22C373000();
  v61 = sub_22C90880C();
  sub_22C369824();
  v63 = v62;
  MEMORY[0x28223BE20](v64);
  sub_22C3698E4();
  v465 = v65;
  sub_22C369930();
  MEMORY[0x28223BE20](v66);
  sub_22C36BA58();
  v476 = v67;
  sub_22C369930();
  MEMORY[0x28223BE20](v68);
  sub_22C36BA58();
  v486 = v69;
  sub_22C369930();
  MEMORY[0x28223BE20](v70);
  v72 = &v439 - v71;
  v73 = sub_22C908A0C();
  sub_22C369824();
  v490 = v74;
  MEMORY[0x28223BE20](v75);
  sub_22C3698E4();
  v485 = v76;
  sub_22C369930();
  MEMORY[0x28223BE20](v77);
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v78);
  sub_22C36BA58();
  v468 = v79;
  sub_22C369930();
  MEMORY[0x28223BE20](v80);
  sub_22C36CAC0();
  v483 = a1;
  sub_22C90878C();
  v81 = sub_22C9087DC();
  v82 = *(v63 + 8);
  v83 = v72;
  v84 = v73;
  v471 = v63 + 8;
  v472 = v61;
  v470 = v82;
  (v82)(v83, v61);
  v85 = v490;
  sub_22C3A5950(v81);

  v86 = sub_22C5CA7F4();
  sub_22C36D0A8(v86, v87, v73);
  if (v91)
  {
    sub_22C36DD28(v6, &qword_27D9BA808, &qword_22C90C6E0);
  }

  else
  {
    v88 = v85[4];
    v491 = v73;
    v88(v5, v6, v73);
    v89 = v477;
    v447 = v5;
    sub_22C9089EC();
    v90 = (v478[11])(v89, v480);
    v91 = v90 == *MEMORY[0x277D1E858] || v90 == *MEMORY[0x277D1E740];
    if (!v91 && v90 != *MEMORY[0x277D1E788] && v90 != *MEMORY[0x277D1E798] && v90 != *MEMORY[0x277D1E808] && v90 != *MEMORY[0x277D1E768] && v90 != *MEMORY[0x277D1E778])
    {
      sub_22C903FBC();
      v172 = sub_22C9063CC();
      sub_22C90AACC();
      v173 = sub_22C37E2D0();
      if (os_log_type_enabled(v173, v174))
      {
        sub_22C3720F4();
        v176 = swift_slowAlloc();
        *v176 = 0;
        sub_22C3839B4();
        _os_log_impl(v177, v178, v179, v180, v176, 2u);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      (*(v461 + 8))(v482, v479);
      v181 = v491;
      (v85[1])(v447, v491);
      sub_22C36A748();
      sub_22C36C640(v182, v183, v184, v181);
      v185 = sub_22C388EF4();
      return v186(v185);
    }

    v97 = sub_22C36FBFC();
    v98(v97);
    v99 = v466;
    sub_22C903FBC();
    v100 = sub_22C9063CC();
    sub_22C90AACC();
    v101 = sub_22C37E2D0();
    if (os_log_type_enabled(v101, v102))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C3839B4();
      sub_22C5CA7D0();
      _os_log_impl(v103, v104, v105, v106, v107, v108);
      v109 = sub_22C36D66C();
      MEMORY[0x2318B9880](v109);
    }

    (*(v461 + 8))(v99, v479);
    v84 = v491;
    (v85[1])(v447, v491);
  }

  v110 = v488;
  v111 = v486;
  sub_22C90878C();
  sub_22C5ADB94(v110);
  v112 = v470;
  (v470)(v111, v472);
  v113 = sub_22C5CA7F4();
  sub_22C36D0A8(v113, v114, v84);
  if (v91)
  {
    sub_22C36DD28(v110, &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C36A748();
    v118 = v84;
    return sub_22C36C640(v115, v116, v117, v118);
  }

  v120 = (v490 + 4);
  v119 = v490[4];
  v491 = v84;
  v482 = v119;
  (v119)(v468, v110, v84);
  sub_22C90878C();
  v121 = sub_22C9087DC();
  v122 = sub_22C441720();
  v112(v122);
  v123 = 0;
  v124 = *(v121 + 16);
  v486 = v120;
  v488 = (v120 - 24);
  v466 = MEMORY[0x277D84F90];
  isEscapingClosureAtFileLocation = v475;
  while (v124 != v123)
  {
    if (v123 >= *(v121 + 16))
    {
      __break(1u);
LABEL_179:

      sub_22C381330();
      v428();
      v415 = 0;
      goto LABEL_180;
    }

    v126 = (*(v490 + 80) + 32) & ~*(v490 + 80);
    v120 = v490[9];
    (v490[2])(v7, v121 + v126 + v120 * v123, v491);
    v127 = sub_22C5B7FA8(v7);
    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_187;
    }

    if (v127)
    {
      (v482)(v485, v7, v491);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v131 = v466;
      v500[0] = v466;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v132 = *(v466 + 16) + 1;
        v475 = 0;
        sub_22C3B6068(0, v132, 1);
        isEscapingClosureAtFileLocation = v475;
        v131 = v500[0];
      }

      v134 = *(v131 + 16);
      v133 = *(v131 + 24);
      v135 = v134 + 1;
      if (v134 >= v133 >> 1)
      {
        v136 = sub_22C369AB0(v133);
        v475 = isEscapingClosureAtFileLocation;
        v480 = v137;
        v478 = v138;
        sub_22C3B6068(v136, v137, 1);
        v135 = v480;
        v134 = v478;
        isEscapingClosureAtFileLocation = v475;
        v131 = v500[0];
      }

      ++v123;
      *(v131 + 16) = v135;
      v466 = v131;
      (v482)(v131 + v126 + v134 * v120, v485, v491);
    }

    else
    {
      v128 = sub_22C5CA824();
      v129(v128, v491);
      ++v123;
    }
  }

  v475 = isEscapingClosureAtFileLocation;

  v139 = v460;
  sub_22C903FBC();
  v140 = v466;

  v141 = sub_22C9063CC();
  sub_22C90AACC();

  v142 = sub_22C5CA9D4();
  if (os_log_type_enabled(v142, v143))
  {
    sub_22C36BED8();
    swift_slowAlloc();
    sub_22C3735E4();
    v144 = swift_slowAlloc();
    v500[0] = v144;
    *v121 = 136315138;
    v145 = MEMORY[0x2318B7AD0](v140, v491);
    sub_22C36F9F4(v145, v146, v500);
    sub_22C5CAE44();
    *(v121 + 4) = &unk_22C90D000;
    sub_22C5CA550();
    _os_log_impl(v147, v148, v149, v150, v151, v152);
    sub_22C36FF94(v144);
    v153 = sub_22C36ACAC();
    MEMORY[0x2318B9880](v153);
    v154 = sub_22C36D66C();
    MEMORY[0x2318B9880](v154);
  }

  v476 = *(v461 + 8);
  v476(v139, v479);
  v155 = v481;
  v156 = v489;
  v157 = v474;
  v158 = v458;
  v159 = v465;
  sub_22C90878C();
  v160 = sub_22C9087DC();
  (v470)(v159, v472);
  v500[0] = v160;
  v161 = sub_22C372164();
  v163 = sub_22C3A5908(v161, v162);
  sub_22C369E24();
  sub_22C44178C();
  v446 = sub_22C3D32C8(v164, v165, v166, v167);
  v447 = v163;
  sub_22C907DFC();

  v168 = sub_22C5CA7F4();
  v170 = "Statement";
  if (sub_22C370B74(v168, v169, v157) == 1)
  {
    sub_22C36DD28(v158, &qword_27D9BC068, &qword_22C920590);
    v482 = MEMORY[0x277D84F90];
    v171 = v487;
    goto LABEL_63;
  }

  v188 = v455;
  sub_22C5CA7E8();
  v189(v188, v158, v157);
  v190 = sub_22C90886C();
  v171 = v487;
  if (!v191)
  {
    v207 = sub_22C380120();
    v208(v207);
    v482 = MEMORY[0x277D84F90];
    goto LABEL_63;
  }

  v192 = v190;
  v193 = v191;
  v194 = v155 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore;
  isEscapingClosureAtFileLocation = *(v155 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore);
  if (isEscapingClosureAtFileLocation)
  {
    v195 = *(v194 + 16);
    v490 = *(v194 + 8);
    v196 = v490;
    sub_22C5CA130(v496);
    memcpy(v500, v496, sizeof(v500));
    sub_22C5CA738();
    sub_22C90A1DC();
    v197 = isEscapingClosureAtFileLocation;
    v198 = v196;
    v199 = v195;
    sub_22C36EC6C();
    v200 = sub_22C90A0EC();

    sub_22C36D2A8();
    v201 = swift_allocObject();
    v202 = v192;
    v203 = v201;
    v201[2] = v500;
    v201[3] = v202;
    v486 = v202;
    v201[4] = v193;
    v204 = swift_allocObject();
    *(v204 + 16) = sub_22C5CA3AC;
    *(v204 + 24) = v203;
    v492[4] = sub_22C5CA3B8;
    v492[5] = v204;
    v492[0] = MEMORY[0x277D85DD0];
    v492[1] = 1107296256;
    v492[2] = sub_22C5C8528;
    v492[3] = &unk_283FBD690;
    v205 = _Block_copy(v492);

    [v199 lookupKey:v200 resultBlock:v205];

    _Block_release(v205);
    sub_22C5CA700();
    LOBYTE(v205) = swift_isEscapingClosureAtFileLocation();

    sub_22C36E030(isEscapingClosureAtFileLocation, v490, v195);
    v206 = v445;
    if (v205)
    {
      goto LABEL_186;
    }

    memcpy(v497, v500, sizeof(v497));
    sub_22C375CEC();
    if (sub_22C4DDD30(v498) != 1)
    {

      v482 = v499;
      v171 = v487;
      v156 = v489;
      v224 = v474;
      v225 = v455;
      if (v499)
      {
      }

      else
      {
        v482 = MEMORY[0x277D84F90];
      }

      v155 = v481;
      v226 = v456;
      sub_22C36DD28(v497, &qword_27D9BEC80, &unk_22C920630);
      (*(v226 + 8))(v225, v224);
      goto LABEL_62;
    }

    v155 = v481;
    v156 = v489;
    v157 = v474;
  }

  else
  {
    v206 = v445;
  }

  sub_22C903FBC();

  v209 = sub_22C9063CC();
  sub_22C90AACC();

  v210 = sub_22C5CA9D4();
  if (os_log_type_enabled(v210, v211))
  {
    sub_22C36BED8();
    v212 = swift_slowAlloc();
    sub_22C370220();
    v213 = swift_slowAlloc();
    v500[0] = v213;
    *v212 = 136315138;
    v214 = sub_22C5CA738();
    v217 = v206;
    v218 = sub_22C36F9F4(v214, v215, v216);

    *(v212 + 4) = v218;
    sub_22C3839B4();
    _os_log_impl(v219, v220, v221, v222, v212, 0xCu);
    sub_22C36FF94(v213);
    v155 = v481;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v156 = v489;
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v223 = v217;
  }

  else
  {

    v223 = sub_22C5CABB8();
  }

  v476(v223, v479);
  (*(v456 + 8))(v455, v157);
  v482 = MEMORY[0x277D84F90];
  v171 = v487;
LABEL_62:
  v170 = "Statement";
LABEL_63:
  v492[0] = MEMORY[0x277D84F90];
  sub_22C5B530C();
  LODWORD(v474) = v227;
  isEscapingClosureAtFileLocation = v483;
  v480 = *(v482 + 2);
  if (v480)
  {
    v228 = 0;
    v229 = v155 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore;
    v478 = &v497[2];
    v230 = (v482 + 40);
    v477 = MEMORY[0x277D84F90];
    v231 = *(v170 + 465);
    v460 = (v482 + 40);
LABEL_65:
    v232 = &v230[2 * v228];
    while (v480 != v228)
    {
      if (v228 >= *(v482 + 2))
      {
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:

        v435 = sub_22C5CA824();
        v436(v435, v491);

        __break(1u);
        return result;
      }

      v233 = *v229;
      if (*v229)
      {
        v485 = v232;
        v486 = v228;
        v235 = *(v232 - 1);
        v234 = *v232;
        v236 = v229;
        v237 = *(v229 + 16);
        v238 = v236;
        v490 = *(v236 + 8);
        v239 = v490;
        sub_22C5CA130(v498);
        v240 = sub_22C5CA72C();
        memcpy(v240, v241, 0xD0uLL);
        sub_22C90A1DC();

        sub_22C5CA1E8(v233, v239, v237);
        sub_22C36EC6C();
        v242 = sub_22C90A0EC();

        sub_22C36D2A8();
        v243 = swift_allocObject();
        v243[2] = v500;
        v243[3] = v235;
        v243[4] = v234;
        v244 = swift_allocObject();
        *(v244 + 16) = sub_22C5CA3AC;
        *(v244 + 24) = v243;
        v497[4] = sub_22C5CA3B8;
        v497[5] = v244;
        v497[0] = MEMORY[0x277D85DD0];
        v497[1] = v231;
        v497[2] = sub_22C5C8528;
        v497[3] = &unk_283FBD618;
        v245 = _Block_copy(v497);

        [v237 lookupKey:v242 resultBlock:v245];

        _Block_release(v245);
        sub_22C5CA700();
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        sub_22C36E030(v233, v490, v237);
        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_185;
        }

        v155 = v481;
        isEscapingClosureAtFileLocation = v483;
        v228 = v486;
        v171 = v487;
        v229 = v238;
        v232 = v485;
      }

      else
      {
        sub_22C5CA130(v498);
        v246 = sub_22C5CA72C();
        memcpy(v246, v247, 0xD0uLL);
      }

      sub_22C375CEC();
      v91 = sub_22C4DDD30(v498) == 1;
      v156 = v489;
      if (!v91)
      {
        memcpy(v497, v500, sizeof(v497));
        v248 = swift_isUniquelyReferenced_nonNull_native();
        v249 = isEscapingClosureAtFileLocation;
        if ((v248 & 1) == 0)
        {
          sub_22C36D270();
          sub_22C593968();
          v477 = v253;
        }

        v251 = v477[2];
        v250 = v477[3];
        if (v251 >= v250 >> 1)
        {
          sub_22C369AB0(v250);
          sub_22C593968();
          v477 = v254;
        }

        ++v228;
        memcpy(v496, v497, sizeof(v496));
        v252 = v477;
        v477[2] = v251 + 1;
        memcpy(&v252[26 * v251 + 4], v496, 0xD0uLL);
        v171 = v487;
        isEscapingClosureAtFileLocation = v249;
        v230 = v460;
        goto LABEL_65;
      }

      memcpy(v497, v500, sizeof(v497));
      sub_22C36DD28(v497, &qword_27D9BEC80, &unk_22C920630);
      v232 += 2;
      ++v228;
    }

    v492[0] = v477;
  }

  else
  {
  }

  sub_22C5B56F0();
  v255 = v492[0];
  v256 = *(v492[0] + 16);
  if (!v256)
  {
LABEL_159:

    sub_22C903FBC();
    v382 = sub_22C9063CC();
    sub_22C90AACC();
    v383 = sub_22C37E2D0();
    if (os_log_type_enabled(v383, v384))
    {
      sub_22C3720F4();
      *swift_slowAlloc() = 0;
      sub_22C3839B4();
      sub_22C5CA7D0();
      _os_log_impl(v385, v386, v387, v388, v389, v390);
      v391 = sub_22C36D66C();
      MEMORY[0x2318B9880](v391);
    }

    v392 = sub_22C5CABB8();
    v476(v392, v479);
    v393 = sub_22C5CA680();
    v394 = v491;
    v395(v393, v491);
    sub_22C36A748();
    v118 = v394;
    return sub_22C36C640(v115, v116, v117, v118);
  }

  v480 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_userLocale;
  sub_22C3870A4();
  swift_beginAccess();
  v257 = 0;
  v455 = (v453 + 32);
  v460 = (v453 + 8);
  v474 = v461 + 8;
  v440 = v453 + 16;
  v441 = (v454 + 8);
  v477 = (v256 - 1);
  v258 = 32;
  *&v259 = 136315138;
  v445 = v259;
  *&v259 = 136315650;
  v458 = v259;
  isEscapingClosureAtFileLocation = v484;
  v478 = v255;
  while (1)
  {
    if (v257 >= v255[2])
    {
      goto LABEL_184;
    }

    v490 = v257;
    v486 = v258;
    memcpy(v500, v255 + v258, sizeof(v500));
    v260 = v500[20];
    v261 = v500[21];
    v482 = v500[0];
    v485 = v500[1];
    sub_22C4E719C(v155 + v480, v156, &qword_27D9BD820, &unk_22C9195C0);
    if (!v261)
    {
      v285 = sub_22C5CA72C();
      sub_22C472384(v285, v286);
      goto LABEL_106;
    }

    v262 = sub_22C3720DC();
    sub_22C4E719C(v262, v263, &qword_27D9BD820, &unk_22C9195C0);
    sub_22C36D0A8(v171, 1, isEscapingClosureAtFileLocation);
    if (v91)
    {
      v264 = sub_22C5CA72C();
      sub_22C472384(v264, v265);
      v266 = sub_22C441720();
      sub_22C36DD28(v266, v267, &unk_22C9195C0);
LABEL_89:
      sub_22C36DD28(v156, &qword_27D9BD820, &unk_22C9195C0);
      goto LABEL_90;
    }

    (*v455)(v473, v171, isEscapingClosureAtFileLocation);
    v287 = sub_22C9006BC();
    if (v260 == v287 && v261 == v288)
    {
      break;
    }

    sub_22C36D7F0();
    v290 = sub_22C90B4FC();
    v291 = sub_22C5CA72C();
    sub_22C472384(v291, v292);

    if (v290)
    {
      goto LABEL_105;
    }

    v293 = v451;
    v294 = v473;
    sub_22C90076C();
    v295 = v450;
    sub_22C90074C();
    (*v441)(v293, v452);
    v296 = sub_22C9006FC();
    v297 = sub_22C36FD7C();
    sub_22C36D0A8(v297, v298, v296);
    if (v91)
    {
      sub_22C36DD28(v295, &qword_27D9BBC00, &unk_22C911240);
      (*v460)(v294, v484);
      v156 = v489;
      goto LABEL_89;
    }

    v370 = sub_22C9006EC();
    v372 = v371;
    sub_22C36BBA8();
    v373 = sub_22C3720DC();
    v374(v373);
    if (v260 == v370 && v261 == v372)
    {
      v156 = v489;
      goto LABEL_104;
    }

    sub_22C36D7F0();
    v376 = sub_22C90B4FC();

    v377 = sub_22C5CACD0();
    v378(v377);
    v156 = v489;
    sub_22C36DD28(v489, &qword_27D9BD820, &unk_22C9195C0);
    if (v376)
    {
      goto LABEL_107;
    }

LABEL_90:
    sub_22C903FBC();
    v268 = sub_22C5CA72C();
    sub_22C472384(v268, v269);

    v270 = sub_22C9063CC();
    v271 = sub_22C90AACC();
    sub_22C4723E0(v500);

    if (!os_log_type_enabled(v270, v271))
    {
      sub_22C4723E0(v500);

LABEL_155:
      sub_22C381330();
      v381();
      v156 = v489;
      goto LABEL_156;
    }

    sub_22C370220();
    v272 = swift_slowAlloc();
    v273 = v155;
    v456 = swift_slowAlloc();
    v498[0] = v456;
    *v272 = v458;
    v274 = v485;

    v275 = sub_22C36F9F4(v482, v274, v498);

    *(v272 + 4) = v275;
    *(v272 + 12) = 2080;

    sub_22C4723E0(v500);
    v276 = sub_22C36D7F0();
    v279 = sub_22C36F9F4(v276, v277, v278);

    *(v272 + 14) = v279;
    *(v272 + 22) = 2080;
    v280 = v273 + v480;
    v281 = v457;
    sub_22C4E719C(v280, v457, &qword_27D9BD820, &unk_22C9195C0);
    v282 = v484;
    if (sub_22C370B74(v281, 1, v484))
    {
      v283 = sub_22C36FBFC();
      sub_22C36DD28(v283, v284, &unk_22C9195C0);
    }

    else
    {
      v349 = sub_22C37F8AC();
      v350(v349);
      v351 = sub_22C36FBFC();
      v353 = sub_22C36DD28(v351, v352, &unk_22C9195C0);
      MEMORY[0x2318ADBB0](v353);
      v354 = sub_22C5CA824();
      v355(v354, v282);
    }

    v255 = v478;
    v356 = v490;
    v357 = sub_22C38674C();
    v360 = sub_22C36F9F4(v357, v358, v359);

    *(v272 + 24) = v360;
    _os_log_impl(&dword_22C366000, v270, v271, "Skipping override statement %s. Its locale: %s does not match the userLocale: %s", v272, 0x20u);
    swift_arrayDestroy();
    v361 = sub_22C37B310();
    MEMORY[0x2318B9880](v361);
    v362 = sub_22C36ACAC();
    MEMORY[0x2318B9880](v362);

    sub_22C381330();
    v363();
    v155 = v481;
    v156 = v489;
LABEL_157:
    isEscapingClosureAtFileLocation = v484;
    if (v477 == v356)
    {
      goto LABEL_159;
    }

    v258 = v486 + 208;
    v257 = (v356 + 1);
    v171 = v487;
  }

  v299 = sub_22C5CA72C();
  sub_22C472384(v299, v300);
LABEL_104:

LABEL_105:
  v301 = sub_22C5CACD0();
  v302(v301);
LABEL_106:
  sub_22C36DD28(v156, &qword_27D9BD820, &unk_22C9195C0);
LABEL_107:
  sub_22C375CEC();
  if (!sub_22C5A9D9C())
  {
    sub_22C903FBC();
    v339 = sub_22C5CA72C();
    sub_22C472384(v339, v340);
    v341 = sub_22C9063CC();
    v342 = sub_22C90AACC();
    sub_22C4723E0(v500);
    v343 = sub_22C3729E4();
    if (os_log_type_enabled(v343, v344))
    {
      v345 = v500[22];
      sub_22C370220();
      v346 = swift_slowAlloc();
      v498[0] = swift_slowAlloc();
      *v346 = v458;
      v347 = v485;

      v348 = sub_22C36F9F4(v482, v347, v498);

      *(v346 + 4) = v348;
      *(v346 + 12) = 2080;
      if (v345)
      {
      }

      else
      {
        v345 = MEMORY[0x277D84F90];
      }

      sub_22C4723E0(v500);
      MEMORY[0x2318B7AD0](v345, MEMORY[0x277D837D0]);

      v364 = sub_22C374C34();
      v367 = sub_22C36F9F4(v364, v365, v366);

      *(v346 + 14) = v367;
      *(v346 + 22) = 2080;
      if (qword_27D9BA6D8 != -1)
      {
        swift_once();
      }

      v368 = 0xE500000000000000;
      v369 = 0x454E4F4850;
      v155 = v481;
      switch(byte_27D9E3FC8)
      {
        case 1:
          v368 = 0xE300000000000000;
          v369 = 4473168;
          break;
        case 2:
          v368 = 0xE800000000000000;
          v369 = 0x4E414D4553524F48;
          break;
        case 3:
          v368 = 0xE400000000000000;
          v369 = 1398097242;
          break;
        case 4:
          v369 = 0x4F454D4143;
          break;
        case 5:
          v369 = 0x4843544157;
          break;
        case 6:
          v368 = 0xE300000000000000;
          v369 = 5390659;
          break;
        case 7:
          v368 = 0xE900000000000041;
          v369 = 0x544952414752414DLL;
          break;
        case 8:
          v368 = 0xE700000000000000;
          v369 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v379 = sub_22C36F9F4(v369, v368, v498);

      *(v346 + 24) = v379;
      _os_log_impl(&dword_22C366000, v341, v342, "Skipping override statement %s. Its userInterfaceIdioms: %s do not match the device userInterfaceIdiom: %s", v346, 0x20u);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      v380 = sub_22C36D66C();
      MEMORY[0x2318B9880](v380);
    }

    else
    {
      sub_22C4723E0(v500);
    }

    goto LABEL_155;
  }

  v303 = MEMORY[0x277D84F98];
  v495 = MEMORY[0x277D84F98];
  sub_22C375CEC();
  v304 = v463;
  sub_22C5B862C();
  v306 = v305;

  if ((v306 & 1) == 0)
  {
    sub_22C4723E0(v500);
    goto LABEL_156;
  }

  v494 = v303;
  sub_22C375CEC();
  v307 = v465;
  sub_22C90878C();
  v308 = sub_22C5B4568(v498, v466, v304, v307);
  v310 = v309;
  (v470)(v307, v472);
  swift_beginAccess();
  v494 = v308;
  sub_22C903FBC();
  v311 = sub_22C9063CC();
  sub_22C90AACC();
  v312 = sub_22C37E2D0();
  v314 = os_log_type_enabled(v312, v313);
  v453 = v310;
  if (v314)
  {
    sub_22C36BED8();
    swift_slowAlloc();
    sub_22C3735E4();
    v315 = swift_slowAlloc();
    v498[0] = v315;
    *v307 = v445;
    type metadata accessor for PlanOverridesService.EventReference(0);

    sub_22C909EDC();
    sub_22C5CAC34();

    v316 = sub_22C36FC2C();
    v319 = sub_22C36F9F4(v316, v317, v318);
    v155 = v481;

    *(v307 + 4) = v319;
    v156 = v489;
    sub_22C5CA61C(&dword_22C366000, v311, v304, "Interested eventIdsReferences are: %s");
    _os_log_impl(v320, v321, v322, v323, v324, v325);
    sub_22C36FF94(v315);
    v326 = sub_22C36ACAC();
    MEMORY[0x2318B9880](v326);
    v327 = sub_22C36D66C();
    MEMORY[0x2318B9880](v327);
  }

  sub_22C381330();
  v328();
  v329 = MEMORY[0x277D84F90];
  if (v500[15])
  {
    v330 = v500[15];
  }

  else
  {
    v330 = MEMORY[0x277D84F90];
  }

  v493 = v330;
  if (v500[8])
  {
    v331 = v500[8];
  }

  else
  {
    v331 = MEMORY[0x277D84F90];
  }

  v456 = v331;
  if (v500[9])
  {
    v329 = v500[9];
  }

  v454 = v329;

  v332 = v465;
  sub_22C90878C();
  v333 = sub_22C9087DC();
  (v470)(v332, v472);
  v492[6] = v333;
  sub_22C907ECC();

  if (!v498[2])
  {

    sub_22C4723E0(v500);

    sub_22C90735C();
    sub_22C3A5F00();
    sub_22C37A198();
    swift_allocError();
    sub_22C377534(v396, v503, v502, v501);
    v397 = sub_22C5CA680();
    v398(v397, v491);
  }

  sub_22C375CEC();
  v334 = v475;
  sub_22C5A9F18();
  v475 = v334;
  if (v334)
  {

    v399 = sub_22C5CA680();
    v400(v399, v491);
    sub_22C4723E0(v500);
  }

  v337 = v335;
  v338 = v336;
  if (!v500[3])
  {
    v120 = MEMORY[0x277D84F90];
    if (v335)
    {
      goto LABEL_165;
    }

LABEL_125:

    sub_22C4723E0(v500);

LABEL_156:
    v255 = v478;
    v356 = v490;
    goto LABEL_157;
  }

  v120 = MEMORY[0x277D84F90];
  if (v500[5])
  {
  }

  if ((v337 & 1) == 0)
  {
    goto LABEL_125;
  }

LABEL_165:
  v401 = v500[24];
  v402 = v500[25];

  if (*(v338 + 16))
  {
    v403 = v338;
  }

  else
  {

    v403 = v444;
  }

  v439 = v308;
  v444 = v403;
  if (v402)
  {
    v404 = HIBYTE(v402) & 0xF;
    if ((v402 & 0x2000000000000000) == 0)
    {
      v404 = v401 & 0xFFFFFFFFFFFFLL;
    }

    if (v404)
    {
      sub_22C903FBC();

      isEscapingClosureAtFileLocation = sub_22C9063CC();
      sub_22C90AACC();

      if (!sub_22C5CAE14())
      {
        goto LABEL_179;
      }

      v405 = swift_slowAlloc();
      sub_22C370220();
      v406 = swift_slowAlloc();
      v498[0] = v406;
      *v405 = 136315394;
      v407 = sub_22C908EAC();
      v408 = MEMORY[0x2318B7B00](v403, v407);
      sub_22C36F9F4(v408, v409, v498);
      sub_22C5CAE44();
      sub_22C5CAC60();
      *(v405 + 14) = 0;
      sub_22C5CAD7C(&dword_22C366000, v410, v411, "Override Matched with Model Response: %s.\nshouldRunPostPlanProcessing: %{BOOL}d");
      sub_22C36FF94(v406);
      v412 = sub_22C37F88C();
      MEMORY[0x2318B9880](v412);
      v413 = v453;
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      sub_22C381330();
      v414();
      v415 = 0;
      goto LABEL_176;
    }
  }

  sub_22C903FBC();

  v416 = sub_22C9063CC();
  sub_22C90AACC();

  if (sub_22C5CAE14())
  {
    v417 = swift_slowAlloc();
    sub_22C370220();
    v418 = swift_slowAlloc();
    v498[0] = v418;
    *v417 = 136315394;
    v419 = sub_22C908EAC();
    v420 = MEMORY[0x2318B7B00](v403, v419);
    sub_22C36F9F4(v420, v421, v498);
    sub_22C5CAE44();
    sub_22C5CAC60();
    v415 = 1;
    *(v417 + 14) = 1;
    sub_22C5CAD7C(&dword_22C366000, v422, v423, "Override Matched! %s.\nshouldRunPostPlanProcessing: %{BOOL}d");
    sub_22C36FF94(v418);
    v424 = sub_22C37F88C();
    MEMORY[0x2318B9880](v424);
    v413 = v453;
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    sub_22C381330();
    v425();
LABEL_176:
    v426 = v456;
    goto LABEL_181;
  }

  sub_22C381330();
  v427();
  v415 = 1;
LABEL_180:
  v426 = v456;
  v413 = v453;
LABEL_181:
  v429 = v439;

  LOBYTE(v437) = v415;
  sub_22C5BBA0C(&v493, v430, v431, v483, v432, v429, v482, v485, v413, v120, v426, v454, v437, v438, v439, v440, v441, v442, v443, v444, v445, *(&v445 + 1), v446, v447, v448);

  sub_22C4723E0(v500);

  v433 = sub_22C5CA680();
  v434(v433, v491);
}

uint64_t sub_22C5B7FA8(uint64_t a1)
{
  v3 = sub_22C90069C();
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C908A0C();
  v67 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v66 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v65 = &v53 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v12 = sub_22C9063DC();
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C9089DC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  sub_22C9089EC();
  v21 = (*(v15 + 88))(v20, v14);
  v24 = v21 == *MEMORY[0x277D1E858] || v21 == *MEMORY[0x277D1E798] || v21 == *MEMORY[0x277D1E778];
  v62 = *(v15 + 8);
  v62(v20, v14);
  if (v24)
  {
    v57 = 1;
    v58 = v1;
    sub_22C903FBC();
    v25 = *(v67 + 16);
    v25(v11, a1, v5);
    v25(v65, a1, v5);
    v25(v66, a1, v5);
    v26 = sub_22C9063CC();
    v27 = sub_22C90AACC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v53 = v28;
      v56 = swift_slowAlloc();
      v69 = v56;
      *v28 = 136315650;
      v29 = v59;
      v55 = v26;
      sub_22C9087FC();
      sub_22C5C87F4(&qword_27D9BEC38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v54 = v27;
      v30 = v61;
      v31 = sub_22C90B47C();
      v33 = v32;
      (*(v60 + 8))(v29, v30);
      v67 = *(v67 + 8);
      (v67)(v11, v5);
      v34 = sub_22C36F9F4(v31, v33, &v69);

      v35 = v53;
      *(v53 + 1) = v34;
      *(v35 + 6) = 2080;
      v36 = v65;
      sub_22C9089EC();
      v37 = sub_22C90898C();
      v39 = v38;
      v62(v18, v14);
      (v67)(v36, v5);
      v40 = sub_22C36F9F4(v37, v39, &v69);

      *(v35 + 14) = v40;
      *(v35 + 11) = 2080;
      v41 = v35;
      v42 = v66;
      sub_22C9089EC();
      v43 = sub_22C9089AC();
      v62(v18, v14);
      v44 = sub_22C901FAC();
      v45 = MEMORY[0x2318B7AD0](v43, v44);
      v47 = v46;

      (v67)(v42, v5);
      v48 = sub_22C36F9F4(v45, v47, &v69);

      *(v41 + 3) = v48;
      v49 = v55;
      _os_log_impl(&dword_22C366000, v55, v54, "Interested Event: %s, %s, %s", v41, 0x20u);
      v50 = v56;
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v50, -1, -1);
      MEMORY[0x2318B9880](v41, -1, -1);
    }

    else
    {

      v51 = *(v67 + 8);
      v51(v66, v5);
      v51(v65, v5);
      v51(v11, v5);
    }

    (*(v63 + 8))(v68, v64);
    return v57;
  }

  return v24;
}

void sub_22C5B862C()
{
  sub_22C36BA7C();
  v5 = v4;
  sub_22C388C54();
  sub_22C90069C();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C3698A8();
  sub_22C36BA0C();
  v243 = sub_22C908A0C();
  sub_22C369824();
  v237 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  v245 = v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA58();
  v244 = v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA58();
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA58();
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA58();
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA58();
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v240 = v17;
  v241 = v18;
  MEMORY[0x28223BE20](v17);
  sub_22C3698E4();
  v242 = v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  v228 = v21;
  sub_22C369930();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA58();
  v224 = v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA58();
  v226 = v25;
  sub_22C369930();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA58();
  v229 = v27;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA58();
  v230 = v29;
  sub_22C369930();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA64();
  v231 = v31;
  sub_22C36BA0C();
  v238 = sub_22C9026BC();
  sub_22C369824();
  v233 = v32;
  MEMORY[0x28223BE20](v33);
  sub_22C3698E4();
  sub_22C369930();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA64();
  v246 = v35;
  sub_22C36BA0C();
  sub_22C907DEC();
  sub_22C369824();
  v234 = v36;
  v235 = v37;
  MEMORY[0x28223BE20](v36);
  sub_22C3698E4();
  v225 = v38;
  sub_22C369930();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA64();
  v232 = v40;
  sub_22C36BA0C();
  v247 = sub_22C906ECC();
  sub_22C369824();
  v236 = v41;
  MEMORY[0x28223BE20](v42);
  sub_22C3698E4();
  v227 = v43;
  sub_22C369930();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA64();
  v239 = v45;
  sub_22C36BA0C();
  sub_22C906B9C();
  sub_22C369824();
  MEMORY[0x28223BE20](v46);
  sub_22C3698A8();
  sub_22C36BA0C();
  sub_22C906B6C();
  sub_22C369824();
  MEMORY[0x28223BE20](v47);
  sub_22C3698A8();
  sub_22C36BA0C();
  sub_22C906C4C();
  sub_22C369824();
  v249 = v49;
  v251 = v48;
  MEMORY[0x28223BE20](v48);
  sub_22C369838();
  sub_22C5CA768();
  sub_22C90873C();
  sub_22C369824();
  v248 = v50;
  MEMORY[0x28223BE20](v51);
  sub_22C369838();
  sub_22C37B6BC();
  v52 = sub_22C9089DC();
  sub_22C369824();
  v54 = v53;
  MEMORY[0x28223BE20](v55);
  sub_22C369ABC();
  sub_22C5CA690();
  MEMORY[0x28223BE20](v56);
  sub_22C36CAC0();
  memcpy(v258, v5, sizeof(v258));
  sub_22C9089EC();
  v57 = sub_22C9087DC();
  v256 = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C369E24();
  v257 = sub_22C3D32C8(v58, &qword_27D9BA9F0, &qword_22C912420, v59);
  v253 = v57;
  sub_22C9089CC();
  v60 = *(v54 + 8);
  v61 = sub_22C3819EC();
  v60(v61);
  sub_22C36FF94(&v253);
  v62 = sub_22C3806B8();
  v64 = v63(v62);
  if (v64 != *MEMORY[0x277D1E858])
  {
    if (v64 == *MEMORY[0x277D1E6F8])
    {
      v76 = sub_22C372164();
LABEL_20:
      (v60)(v76, v77);
      goto LABEL_21;
    }

    if (v64 != *MEMORY[0x277D1E798])
    {
      v249 = v52;
      v251 = v0;
      sub_22C903FBC();
      v71 = v237;
      v94 = *(v237 + 16);
      v94(v244, v2, v243);
      v67 = v243;
      v94(v245, v2, v243);
      v3 = sub_22C9063CC();
      v95 = sub_22C90AACC();
      if (os_log_type_enabled(v3, v95))
      {
        sub_22C383050();
        v253 = sub_22C5CA600();
        *v95 = 136315394;
        v96 = sub_22C9088FC();
        v97 = *(v237 + 8);
        v97(v244, v243);
        v98 = sub_22C372FA4();
        sub_22C36F9F4(v98, v99, v100);
        sub_22C38B194();

        *(v95 + 4) = v96;
        *(v95 + 12) = 2080;
        sub_22C9089EC();
        v101 = sub_22C90898C();
        v102 = v1;
        v103 = v52;
        (v60)(v102, v52);
        v97(v245, v243);
        v104 = sub_22C372FA4();
        sub_22C36F9F4(v104, v105, v106);
        sub_22C38B194();

        *(v95 + 14) = v101;
        sub_22C5CAAC8(&dword_22C366000, v107, v95, "Skipping event: %s %s");
        swift_arrayDestroy();
        sub_22C369B50();
        MEMORY[0x2318B9880]();
        v108 = sub_22C37F88C();
        MEMORY[0x2318B9880](v108);

        (*(v241 + 8))(v242, v240);
LABEL_19:
        v76 = v251;
        v77 = v103;
        goto LABEL_20;
      }

LABEL_18:

      v109 = *(v71 + 8);
      v109(v245, v67);
      v109(v244, v67);
      v110 = sub_22C5CA7C4();
      v111(v110);
      v103 = v249;
      goto LABEL_19;
    }

    v78 = sub_22C372164();
    v79(v78);
    sub_22C5CA7E8();
    v80 = sub_22C5CA640();
    v81(v80);
    if (v258[6])
    {
      v82 = v238;
      v83 = v233;
      v84 = v246;
      if (*(v258[6] + 16))
      {
        v85 = *(v258[6] + 32);
      }

      else
      {
        v85 = 6;
      }
    }

    else
    {
      v85 = 6;
      v82 = v238;
      v83 = v233;
      v84 = v246;
    }

    sub_22C906EBC();
    sub_22C907DAC();
    v112 = *(v235 + 8);
    v112(v232, v234);
    v113 = v83;
    v115 = *(v83 + 88);
    v114 = v83 + 88;
    v116 = v115(v84, v82);
    if (v116 == *MEMORY[0x277D1CBF0])
    {
      if (v85 != 6 && (sub_22C3D3A2C(v85, 0) & 1) != 0)
      {
        sub_22C903FBC();
        sub_22C5CA570();
        v117 = sub_22C383CF8();
        v118(v117);
        sub_22C5CAB4C();
        v119 = sub_22C9063CC();
        sub_22C90AACC();
        sub_22C5CAB94();
        if (sub_22C5CAB34())
        {
          sub_22C383050();
          v253 = sub_22C5CA600();
          sub_22C386590(v253, 4.8151e-34);
          sub_22C3887BC();
          v122 = sub_22C5C87F4(v120, v121, MEMORY[0x277CC9628]);
          v123 = sub_22C5CA5D4(v122);
          v124 = sub_22C3774FC(v123);
          v125(v124);
          v126 = sub_22C372164();
          v127(v126);
          sub_22C5CA774();
          sub_22C36A024();

          *(v114 + 14) = sub_22C5CA470();
          sub_22C38679C(&dword_22C366000, v128, v129, "Matched actionSuccess event: %s with statement id: %s");
          sub_22C5CA5A8();
          v130 = sub_22C37B310();
          MEMORY[0x2318B9880](v130);
          v131 = sub_22C37F88C();
          MEMORY[0x2318B9880](v131);

          sub_22C5CABC4();
          v133 = v231;
LABEL_44:
          v132(v133, v240);
          v176 = sub_22C5CABD0();
          v177(v176);
LABEL_47:
          v82 = v238;
          goto LABEL_48;
        }

        goto LABEL_46;
      }
    }

    else if (v116 == *MEMORY[0x277D1CBA8])
    {
      if (v85 != 6 && (sub_22C3D3A2C(v85, 1) & 1) != 0)
      {
        sub_22C903FBC();
        sub_22C5CA570();
        v134 = sub_22C383CF8();
        v135(v134);
        sub_22C5CAB4C();
        v119 = sub_22C9063CC();
        sub_22C90AACC();
        sub_22C5CAB94();
        if (sub_22C5CAB34())
        {
          sub_22C383050();
          v253 = sub_22C5CA600();
          sub_22C386590(v253, 4.8151e-34);
          sub_22C3887BC();
          v138 = sub_22C5C87F4(v136, v137, MEMORY[0x277CC9628]);
          v139 = sub_22C5CA5D4(v138);
          v140 = sub_22C3774FC(v139);
          v141(v140);
          v142 = sub_22C372164();
          v143(v142);
          sub_22C5CA774();
          sub_22C36A024();

          *(v114 + 14) = sub_22C5CA470();
          sub_22C38679C(&dword_22C366000, v144, v145, "Matched actionConfirmation event: %s with statement id: %s");
          sub_22C5CA5A8();
          v146 = sub_22C37B310();
          MEMORY[0x2318B9880](v146);
          v147 = sub_22C37F88C();
          MEMORY[0x2318B9880](v147);

          sub_22C5CABC4();
          v133 = v230;
          goto LABEL_44;
        }

LABEL_46:

        v178 = sub_22C3819EC();
        v179(v178);
        v180 = sub_22C5CA7C4();
        v181(v180);
        (*(v236 + 8))(v239, v247);
        goto LABEL_47;
      }
    }

    else if (v116 == *MEMORY[0x277D1CBB8])
    {
      if (v85 != 6 && (sub_22C3D3A2C(v85, 2) & 1) != 0)
      {
        sub_22C903FBC();
        sub_22C5CA570();
        v148 = sub_22C383CF8();
        v149(v148);
        sub_22C5CAB4C();
        v119 = sub_22C9063CC();
        sub_22C90AACC();
        sub_22C5CAB94();
        if (sub_22C5CAB34())
        {
          sub_22C383050();
          v253 = sub_22C5CA600();
          sub_22C386590(v253, 4.8151e-34);
          sub_22C3887BC();
          v152 = sub_22C5C87F4(v150, v151, MEMORY[0x277CC9628]);
          v153 = sub_22C5CA5D4(v152);
          v154 = sub_22C3774FC(v153);
          v155(v154);
          v156 = sub_22C372164();
          v157(v156);
          sub_22C5CA774();
          sub_22C36A024();

          *(v114 + 14) = sub_22C5CA470();
          sub_22C38679C(&dword_22C366000, v158, v159, "Matched parameterNeedsValue event: %s with statement id: %s");
          sub_22C5CA5A8();
          v160 = sub_22C37B310();
          MEMORY[0x2318B9880](v160);
          v161 = sub_22C37F88C();
          MEMORY[0x2318B9880](v161);

          sub_22C5CABC4();
          v133 = v229;
          goto LABEL_44;
        }

        goto LABEL_46;
      }
    }

    else
    {
      if (v116 != *MEMORY[0x277D1CBD0])
      {
        if (v116 == *MEMORY[0x277D1CBD8])
        {
          v182 = v246;
          if (v85 == 6 || (sub_22C3D3A2C(v85, 4) & 1) == 0)
          {
            (*(v236 + 8))(v239, v247);
          }

          else
          {
            sub_22C903FBC();
            sub_22C5CA570();
            v183 = sub_22C383CF8();
            v184(v183);
            sub_22C5CAB4C();
            v185 = sub_22C9063CC();
            sub_22C90AACC();
            sub_22C5CAB94();
            if (sub_22C5CAB34())
            {
              sub_22C383050();
              v253 = sub_22C5CA600();
              sub_22C386590(v253, 4.8151e-34);
              sub_22C3887BC();
              v188 = sub_22C5C87F4(v186, v187, MEMORY[0x277CC9628]);
              v189 = sub_22C5CA5D4(v188);
              v190 = sub_22C3774FC(v189);
              v191(v190);
              v192 = sub_22C372164();
              v193(v192);
              sub_22C5CA774();
              sub_22C36A024();

              *(v114 + 14) = sub_22C5CA470();
              sub_22C38679C(&dword_22C366000, v194, v195, "Matched parameterDisambiguation event: %s with statement id: %s");
              sub_22C5CA5A8();
              v196 = sub_22C37B310();
              MEMORY[0x2318B9880](v196);
              v197 = sub_22C37F88C();
              MEMORY[0x2318B9880](v197);

              (*(v241 + 8))(v224, v240);
              v198 = sub_22C5CABD0();
              v199(v198);
            }

            else
            {

              v220 = sub_22C3819EC();
              v221(v220);
              v222 = sub_22C5CA7C4();
              v223(v222);
              (*(v236 + 8))(v239, v247);
            }

            v82 = v238;
            v182 = v246;
          }

          (*(v113 + 8))(v182, v82);
          goto LABEL_21;
        }

        sub_22C903FBC();
        v200 = sub_22C36D264();
        v201(v200);
        v202 = sub_22C9063CC();
        sub_22C90AACC();
        v203 = sub_22C37E2D0();
        if (os_log_type_enabled(v203, v204))
        {
          sub_22C36BED8();
          swift_slowAlloc();
          sub_22C3735E4();
          v252 = swift_slowAlloc();
          v253 = v252;
          *v239 = 136315138;
          v250 = v202;
          sub_22C906EBC();
          sub_22C907DAC();
          v112(v225, v234);
          v205 = sub_22C90A1AC();
          v206 = *(v236 + 8);
          v206(v227, v247);
          v207 = sub_22C38644C();
          sub_22C36F9F4(v207, v208, v209);
          sub_22C36A024();

          *(v239 + 4) = v205;
          sub_22C5CA550();
          _os_log_impl(v210, v211, v212, v213, v214, v215);
          sub_22C36FF94(v252);
          v216 = sub_22C37F88C();
          MEMORY[0x2318B9880](v216);
          v217 = sub_22C36D66C();
          MEMORY[0x2318B9880](v217);

          (*(v241 + 8))(v228, v240);
          v206(v239, v247);
        }

        else
        {

          v218 = *(v236 + 8);
          v218(v227, v247);
          (*(v241 + 8))(v228, v240);
          v219 = sub_22C370018();
          (v218)(v219);
        }

LABEL_48:
        (*(v113 + 8))(v246, v82);
        goto LABEL_21;
      }

      if (v85 != 6 && (sub_22C3D3A2C(v85, 3) & 1) != 0)
      {
        sub_22C903FBC();
        sub_22C5CA570();
        v162 = sub_22C383CF8();
        v163(v162);
        sub_22C5CAB4C();
        v119 = sub_22C9063CC();
        sub_22C90AACC();
        sub_22C5CAB94();
        if (sub_22C5CAB34())
        {
          sub_22C383050();
          v253 = sub_22C5CA600();
          sub_22C386590(v253, 4.8151e-34);
          sub_22C3887BC();
          v166 = sub_22C5C87F4(v164, v165, MEMORY[0x277CC9628]);
          v167 = sub_22C5CA5D4(v166);
          v168 = sub_22C3774FC(v167);
          v169(v168);
          v170 = sub_22C372164();
          v171(v170);
          sub_22C5CA774();
          sub_22C36A024();

          *(v114 + 14) = sub_22C5CA470();
          sub_22C38679C(&dword_22C366000, v172, v173, "Matched parameterConfirmation event: %s with statement id: %s");
          sub_22C5CA5A8();
          v174 = sub_22C37B310();
          MEMORY[0x2318B9880](v174);
          v175 = sub_22C37F88C();
          MEMORY[0x2318B9880](v175);

          sub_22C5CABC4();
          v133 = v226;
          goto LABEL_44;
        }

        goto LABEL_46;
      }
    }

    (*(v236 + 8))(v239, v247);
    goto LABEL_48;
  }

  v65 = sub_22C372164();
  v66(v65);
  v67 = v248;
  sub_22C5CA7E8();
  v68 = sub_22C37EF10();
  v69(v68);
  sub_22C90763C();
  v70 = (*(v249 + 88))(v3, v251);
  v71 = v249;
  if (v70 != *MEMORY[0x277D1DDC8])
  {
    if (v70 == *MEMORY[0x277D1DDD0] || v70 == *MEMORY[0x277D1DDD8])
    {
      v86 = sub_22C5CA640();
      v87(v86);
      v88 = sub_22C5CA738();
      v89(v88);
      sub_22C906B5C();
      v253 = v258[2];
      v254 = v258[3];
      v255 = v258[4];
      v256 = v258[5];
      sub_22C5AA6B4(v258[2], v258[3]);
      sub_22C37170C();
      sub_22C5BA254();

      sub_22C472340(v253, v254);
      v90 = sub_22C5CA738();
      v91(v90);
      v92 = sub_22C3720DC();
      v93(v92);
      goto LABEL_21;
    }

    if (v70 != *MEMORY[0x277D1DD78])
    {
      sub_22C90B4EC();
      __break(1u);
      goto LABEL_18;
    }
  }

  v72 = sub_22C3720DC();
  v73(v72);
  v74 = sub_22C5CA640();
  v75(v74);
LABEL_21:
  sub_22C36CC48();
}

void sub_22C5B9AC0()
{
  sub_22C370030();
  v53 = v0;
  v5 = v4;
  v7 = v6;
  v8 = sub_22C9063DC();
  sub_22C369824();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  sub_22C49CA04();
  MEMORY[0x28223BE20](v12);
  sub_22C50B4C8();
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  type metadata accessor for PlanOverrideLoader();
  swift_initStackObject();
  sub_22C3819EC();
  sub_22C5A9504();
  if (!v1)
  {
    v46 = v7;
    v47 = v3;
    v48 = v10;
    v49 = v8;
    v16 = v51;
    if (v51)
    {
      sub_22C903FBC();

      v17 = sub_22C9063CC();
      sub_22C90AACC();
      v18 = sub_22C370214();
      if (os_log_type_enabled(v18, v19))
      {
        sub_22C36BED8();
        v20 = swift_slowAlloc();
        *v20 = 134217984;
        *(v20 + 4) = *(v16 + 16);

        sub_22C5CA970();
        _os_log_impl(v21, v22, v23, v24, v25, v26);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      else
      {
      }

      (*(v48 + 8))(v15, v49);
      v50 = v16;
      sub_22C5CB74C(&v50, &v51);
      v39 = v52;
      v40 = v53 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore;
      v41 = *(v53 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore);
      v42 = *(v53 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore + 8);
      v43 = *(v53 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore + 16);
      *v40 = v51;
      *(v40 + 16) = v39;
      sub_22C36E030(v41, v42, v43);
      sub_22C5CA80C();
      swift_beginAccess();
      os_unfair_lock_lock((v53 + 120));
      swift_endAccess();
      sub_22C36E278(0, &qword_27D9BEBB8, 0x277CCAC68);
      v44 = sub_22C909F0C();
      swift_beginAccess();
      *(v53 + 112) = v44;

      sub_22C5CA80C();
      swift_beginAccess();
      os_unfair_lock_unlock((v53 + 120));
      swift_endAccess();
    }

    else
    {
      sub_22C903FBC();

      v27 = sub_22C9063CC();
      sub_22C90AADC();

      v28 = sub_22C5CA9D4();
      if (os_log_type_enabled(v28, v29))
      {
        sub_22C36BED8();
        swift_slowAlloc();
        sub_22C3735E4();
        v30 = swift_slowAlloc();
        *&v51 = v30;
        *v53 = 136315138;
        *(v53 + 4) = sub_22C36F9F4(v46, v5, &v51);
        sub_22C5CA550();
        _os_log_impl(v31, v32, v33, v34, v35, v36);
        sub_22C36FF94(v30);
        v37 = sub_22C36ACAC();
        MEMORY[0x2318B9880](v37);
        v38 = sub_22C36D66C();
        MEMORY[0x2318B9880](v38);
      }

      (*(v48 + 8))(v2, v49);
    }
  }

  sub_22C36FB20();
}

void sub_22C5B9F40()
{
  sub_22C36BA7C();
  sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C5CA80C();
  swift_beginAccess();
  os_unfair_lock_lock((v0 + 120));
  swift_endAccess();
  sub_22C3870A4();
  swift_beginAccess();

  sub_22C371510();
  v2 = sub_22C633A20();

  if (!v2)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    sub_22C38B194();

    v4 = sub_22C371510();
    v6 = sub_22C5C85A0(v4, v5, 1);
    sub_22C5CA80C();
    swift_beginAccess();
    v7 = v6;
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v0 + 112);
    sub_22C5CAA58();
    sub_22C62E1B0();
    *(v0 + 112) = v8;
    swift_endAccess();
  }

  sub_22C5CA80C();
  swift_beginAccess();
  os_unfair_lock_unlock((v0 + 120));
  swift_endAccess();
  sub_22C36CC48();
}

void sub_22C5BA254()
{
  sub_22C36BA7C();
  v81 = v1;
  v82 = v2;
  v4 = v3;
  v6 = v5;
  v84 = v7;
  v8 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  sub_22C369914(v8);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C5CA768();
  v10 = sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v12);
  sub_22C37A1A4();
  MEMORY[0x28223BE20](v13);
  sub_22C50B4C8();
  MEMORY[0x28223BE20](v14);
  sub_22C5CA6F0();
  if (*(v4 + 8))
  {
    v83 = v6;
    v80 = v15;
    v16 = *(v4 + 24);
    if ((*(v4 + 16) & 1) == 0)
    {
      if (v16)
      {
        v35 = *(v4 + 24);
      }

      else
      {
        v35 = MEMORY[0x277D84F90];
      }

      v36 = *(v35 + 16);

      if (v36)
      {
        sub_22C903FBC();
        v37 = sub_22C9063CC();
        v38 = sub_22C90AACC();
        if (sub_22C5CAB64(v38))
        {
          sub_22C3720F4();
          *swift_slowAlloc() = 0;
          sub_22C5CA7D0();
          _os_log_impl(v39, v40, v41, v42, v43, v44);
          v45 = sub_22C36D66C();
          MEMORY[0x2318B9880](v45);
        }

        v46 = sub_22C36BBCC();
        v47(v46);
      }

      sub_22C3870A4();
      swift_beginAccess();
      sub_22C5CADDC();
      sub_22C3858B4();
      sub_22C372158();
      v48 = sub_22C90AD1C();
      v50 = v49;
      v51 = sub_22C5CA738();
      sub_22C36DD28(v51, v52, &unk_22C9195C0);
      sub_22C5CADDC();
      sub_22C372158();
      v53 = sub_22C90AD1C();
      v55 = v54;
      v56 = sub_22C5CA738();
      sub_22C36DD28(v56, v57, &unk_22C9195C0);
      if (v48 == v53 && v50 == v55)
      {

        goto LABEL_36;
      }

      sub_22C37A060();
      sub_22C90B4FC();

      goto LABEL_26;
    }

    v79 = *v4;
    sub_22C5B9F40();
    if (v17)
    {
      v18 = v17;
      v19 = v84;
      v20 = sub_22C90A0EC();
      v21 = [v18 matchesInString:v20 options:0 range:{0, sub_22C90A30C()}];

      sub_22C36E278(0, &qword_27D9BEC78, 0x277CCACC0);
      v22 = sub_22C90A5EC();

      v23 = sub_22C36E2B8();
      if (v23 == 1)
      {
        if (sub_22C36E2B8())
        {
          sub_22C633A2C();
          if ((v22 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x2318B8460](0, v22);
          }

          else
          {
            v24 = *(v22 + 32);
          }

          v25 = v24;

          sub_22C903FBC();

          v26 = sub_22C9063CC();
          v27 = sub_22C90AACC();

          if (sub_22C388294())
          {
            sub_22C36BED8();
            v28 = v18;
            v29 = swift_slowAlloc();
            sub_22C370220();
            v85 = swift_slowAlloc();
            *v29 = 136315138;
            *(v29 + 4) = sub_22C5CAB00();
            _os_log_impl(&dword_22C366000, v26, v27, "Regex matched with pattern: %s", v29, 0xCu);
            sub_22C36FF94(v85);
            v19 = v84;
            sub_22C369B50();
            MEMORY[0x2318B9880]();
            v18 = v28;
            sub_22C369B50();
            MEMORY[0x2318B9880]();
          }

          v30 = sub_22C379ED8();
          v31(v30);
          if (v16)
          {
            v32 = v16;
          }

          else
          {
            v32 = MEMORY[0x277D84F90];
          }

          sub_22C5BA92C(v19, v83, v25, v81, v32, v82, v33, v34, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);

LABEL_26:

          goto LABEL_36;
        }

        sub_22C903FBC();

        v68 = sub_22C9063CC();
        v69 = sub_22C90AADC();

        if (sub_22C388294())
        {
          sub_22C383050();
          sub_22C5CA600();
          *v16 = 136315394;
          *(v16 + 4) = sub_22C5CAB00();
          *(v16 + 12) = 2080;
          v70 = sub_22C372158();
          *(v16 + 14) = sub_22C36F9F4(v70, v71, v72);
          sub_22C5CAAC8(&dword_22C366000, v73, v69, "Unable to retrieve first regex match for pattern: %s and utterance: %s despite there being at least one match");
          swift_arrayDestroy();
          v74 = sub_22C3816C4();
          MEMORY[0x2318B9880](v74);
          v75 = sub_22C37F88C();
          MEMORY[0x2318B9880](v75);
        }

        v76 = sub_22C5CA720();
        v77(v76, v10);
      }

      else
      {
        v59 = v23;

        if (v59 < 2)
        {
        }

        else
        {
          sub_22C903FBC();

          v60 = sub_22C9063CC();
          v61 = sub_22C90AADC();

          if (sub_22C388294())
          {
            sub_22C383050();
            sub_22C5CA600();
            *v83 = 136315394;
            *(v83 + 4) = sub_22C5CAB00();
            *(v83 + 12) = 2080;
            v62 = sub_22C37FE24();
            *(v83 + 14) = sub_22C36F9F4(v62, v63, v64);
            sub_22C5CAAC8(&dword_22C366000, v65, v61, "Regex matched the input more than once for pattern: %s and utterance: %s");
            swift_arrayDestroy();
            v66 = sub_22C36D66C();
            MEMORY[0x2318B9880](v66);
            v67 = sub_22C37F88C();
            MEMORY[0x2318B9880](v67);
          }

          (*(v80 + 8))(v0, v10);
        }
      }
    }
  }

LABEL_36:
  sub_22C36CC48();
}

void sub_22C5BA92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v24;
  a20 = v25;
  v214 = v26;
  v28 = v27;
  v247 = v29;
  v224 = v30;
  v218 = v31;
  v217 = v32;
  v33 = sub_22C90361C();
  sub_22C369824();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  sub_22C3698E4();
  v253 = v37;
  sub_22C369930();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA58();
  v242 = v39;
  sub_22C369930();
  MEMORY[0x28223BE20](v40);
  sub_22C373000();
  v243 = sub_22C3A5908(&qword_27D9BEC60, &qword_22C920510);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v41);
  sub_22C383814();
  v42 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v42);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v43);
  v45 = &v212 - v44;
  v46 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v47 = sub_22C369914(v46);
  MEMORY[0x28223BE20](v47);
  sub_22C3698E4();
  v240 = v48;
  sub_22C369930();
  MEMORY[0x28223BE20](v49);
  sub_22C381AEC();
  MEMORY[0x28223BE20](v50);
  sub_22C387B64();
  v51 = sub_22C90952C();
  sub_22C369824();
  v53 = v52;
  MEMORY[0x28223BE20](v54);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v55);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA64();
  v249 = v57;
  v232 = sub_22C3A5908(&qword_27D9BEC68, &qword_22C920518);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v58);
  sub_22C36D5B4();
  sub_22C36D234(v59);
  v60 = sub_22C3A5908(&qword_27D9BEC70, &unk_22C920520);
  v61 = sub_22C369914(v60);
  MEMORY[0x28223BE20](v61);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v62);
  sub_22C36BA64();
  sub_22C3698F8(v63);
  v64 = sub_22C9063DC();
  v65 = sub_22C36A7A4(v64, &v253);
  v220 = v66;
  MEMORY[0x28223BE20](v65);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v67);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v68);
  sub_22C36BA64();
  sub_22C36D234(v69);
  v70 = 0;
  v71 = v28 + 32;
  v72 = *(v28 + 16);
  v244 = v53 + 16;
  v237 = (v53 + 32);
  v226 = v53;
  v241 = (v53 + 8);
  v257 = v35 + 8;
  v258 = v35 + 16;
  v246 = v51;
  v250 = v21;
  v248 = v45;
  v252 = v22;
  v222 = v72;
  v239 = v33;
  for (i = v71; ; v71 = i)
  {
    if (v70 == v72)
    {
      goto LABEL_54;
    }

    v73 = v51;
    v228 = v70;
    v74 = (v71 + 24 * v70);
    v76 = *v74;
    v75 = v74[1];
    v77 = v74[2];

    v234 = v77;

    v219 = v76;
    v223 = v75;
    v78 = sub_22C90A0EC();
    v79 = [v224 rangeWithName_];
    v81 = v80;

    if (v79 == sub_22C8FFDFC())
    {
      goto LABEL_56;
    }

    v255 = v79;
    v216 = v81;
    v256 = &v79[v81];
    if (__OFADD__(v79, v81))
    {
      goto LABEL_67;
    }

    v82 = v73;
    v215 = v228 + 1;

    v84 = 0;
    v85 = v248;
LABEL_6:
    v86 = *(v83 + 16);
    v87 = v232;
    v88 = v231;
    if (v84 == v86)
    {
      v230 = v84;
    }

    else
    {
      if (v84 >= v86)
      {
        __break(1u);
LABEL_67:
        __break(1u);
        return;
      }

      v89 = v84 + 1;
      sub_22C37054C();
      v94 = v90 + v91 + *(v92 + 72) * v93;
      v95 = *(v232 + 48);
      v96 = v225;
      *v225 = v93;
      (*(v92 + 16))(v96 + v95, v94, v82);
      sub_22C4E7208(v96, v231, &qword_27D9BEC68, &qword_22C920518);
      v88 = v231;
      v230 = v89;
      v87 = v232;
    }

    sub_22C3827B4();
    sub_22C36C640(v97, v98, v99, v100);
    v101 = v88;
    v102 = v229;
    sub_22C4E7208(v101, v229, &qword_27D9BEC70, &unk_22C920520);
    sub_22C36D3E0(v102);
    if (!v130)
    {
      break;
    }

    sub_22C37022C(&a14);

    sub_22C5CA8DC();
    v104 = v218;
    sub_22C90AA2C();
    if (v170)
    {
LABEL_63:

      sub_22C374490();
      sub_22C903FBC();

      v200 = sub_22C9063CC();
      sub_22C90AADC();

      v201 = sub_22C5CA9D4();
      if (os_log_type_enabled(v201, v202))
      {
        v203 = sub_22C383050();
        v259[0] = sub_22C37A180();
        *v203 = 136315394;
        *(v203 + 4) = sub_22C36F9F4(v45, v104, v259);
        *(v203 + 12) = 2080;
        v204 = sub_22C90AC0C();
        v206 = sub_22C36F9F4(v204, v205, v259);

        *(v203 + 14) = v206;
        sub_22C3839B4();
        _os_log_impl(v207, v208, v209, v210, v203, 0x16u);
        swift_arrayDestroy();
        v211 = sub_22C36D66C();
        MEMORY[0x2318B9880](v211);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      sub_22C36FB04();
      v199 = v102;
      goto LABEL_61;
    }

    v171 = sub_22C90A4AC();
    v45 = v87;
    v21 = MEMORY[0x2318B76D0](v171);

    v172 = v214;
    swift_isUniquelyReferenced_nonNull_native();
    v259[0] = *v172;
    sub_22C36CA88();
    sub_22C62D0D4();

    *v172 = v259[0];
    v70 = v215;
    v72 = v222;
    v51 = v246;
  }

  sub_22C5CA818(*v102);
  v103 = v102 + *(v87 + 48);
  v236 = *v237;
  v236(v249, v103, v82);
  v45 = 0;
  v245 = *(v247 + 16);
  v104 = &qword_27D9BB0C0;
  while (1)
  {
    while (1)
    {
LABEL_12:
      if (v45 == v245)
      {

        swift_bridgeObjectRelease_n();
        sub_22C36D818();
        sub_22C903FBC();
        v173 = sub_22C5CAC54();
        v174 = v246;
        v175(v173, v249, v246);
        v176 = sub_22C9063CC();
        v177 = sub_22C90AACC();
        if (sub_22C5CAB64(v177))
        {
          sub_22C370220();
          v178 = swift_slowAlloc();
          sub_22C370220();
          v179 = swift_slowAlloc();
          v259[0] = v179;
          *v178 = 136315650;
          v180 = sub_22C9094FC();
          v181 = sub_22C5CA8E8();
          (qword_27D9BB0C0)(v181);
          v182 = sub_22C36BBCC();
          sub_22C36F9F4(v182, v183, v184);
          sub_22C37BB14();

          *(v178 + 4) = v180;
          *(v178 + 12) = 2048;
          *(v178 + 14) = v255;
          *(v178 + 22) = 2048;
          *(v178 + 24) = v256;
          _os_log_impl(&dword_22C366000, v176, v177, "Unable to find span with label: %s and within range: [%ld, %ld] returned by the EntitySpanMatcher", v178, 0x20u);
          sub_22C36FF94(v179);
          v185 = sub_22C3816C4();
          MEMORY[0x2318B9880](v185);
          v186 = sub_22C37F88C();
          MEMORY[0x2318B9880](v186);

          sub_22C36FB04();
          v188 = v227;
        }

        else
        {

          v189 = sub_22C5CA8E8();
          (qword_27D9BB0C0)(v189);
          sub_22C36FB04();
          v188 = v45;
        }

        v187(v188, v221);
        (qword_27D9BB0C0)(v249, v174);
        goto LABEL_54;
      }

      v105 = sub_22C9039FC();
      sub_22C3699B8(v105);
      v251 = v247 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v107 + 72) * v45;
      sub_22C9039CC();
      v108 = sub_22C9093BC();
      sub_22C36D0A8(v85, 1, v108);
      if (v130)
      {
        sub_22C36DD28(v85, &qword_27D9BB908, &qword_22C910960);
        v112 = 1;
        v109 = v252;
      }

      else
      {
        v109 = v252;
        sub_22C90935C();
        sub_22C36BBA8();
        v110 = sub_22C38644C();
        v111(v110);
        v112 = 0;
      }

      v254 = v45 + 1;
      v113 = v246;
      sub_22C36C640(v109, v112, 1, v246);
      v114 = sub_22C36D400();
      v115(v114, v249, v113);
      sub_22C36BECC();
      sub_22C36C640(v116, v117, v118, v113);
      v119 = *(v243 + 48);
      v120 = v250;
      sub_22C4E719C(v109, v250, &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C4E719C(v20, v120 + v119, &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C36D3E0(v120);
      if (v130)
      {
        break;
      }

      v129 = v240;
      sub_22C4E719C(v120, v240, &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C36D3E0(v120 + v119);
      if (v130)
      {
        sub_22C5CA664();
        sub_22C36DD28(v131, v132, v133);
        sub_22C5CA664();
        sub_22C36DD28(v134, v135, v136);
        v137 = sub_22C5CA824();
        v138(v137, v113);
        v33 = v239;
        goto LABEL_24;
      }

      v139 = v235;
      v236(v235, (v120 + v119), v113);
      sub_22C5C87F4(&qword_28142FA78, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);
      v238 = sub_22C90A0BC();
      v140 = *v241;
      (*v241)(v139, v113);
      sub_22C5CA664();
      sub_22C36DD28(v141, v142, v143);
      sub_22C5CA664();
      sub_22C36DD28(v144, v145, v146);
      v140(v129, v113);
      sub_22C5CA664();
      sub_22C36DD28(v147, v148, v149);
      v33 = v239;
      v85 = v248;
      v45 = v254;
      if (v238)
      {
        goto LABEL_26;
      }
    }

    sub_22C5CA664();
    sub_22C36DD28(v121, v122, v123);
    sub_22C5CA664();
    sub_22C36DD28(v124, v125, v126);
    sub_22C36D3E0(v120 + v119);
    if (v130)
    {
      break;
    }

LABEL_24:
    sub_22C36DD28(v120, &qword_27D9BEC60, &qword_22C920510);
    v85 = v248;
    v45 = v254;
  }

  v127 = sub_22C36D39C();
  sub_22C36DD28(v127, v128, &qword_22C90D960);
  v45 = v254;
LABEL_26:
  v150 = sub_22C9039DC();
  v21 = 0;
  v73 = *(v150 + 16);
  while (2)
  {
    if (v73 == v21)
    {

      v155 = v233;
      if (v233)
      {
LABEL_38:
        if (v155 != *(v234 + 16) - 1)
        {
LABEL_47:
          v82 = v246;
          (*v241)(v249, v246);
          v85 = v248;
          v83 = v234;
          v84 = v230;
          goto LABEL_6;
        }

        v162 = sub_22C9039DC();
        v163 = 0;
        v73 = *(v162 + 16);
        while (v73 != v163)
        {
          if (v163 >= *(v162 + 16))
          {
            __break(1u);
            goto LABEL_59;
          }

          sub_22C36BA94();
          (*(v35 + 16))(v253, v162 + v164 + *(v35 + 72) * v163++, v33);
          v165 = sub_22C90360C();
          v166 = sub_22C380120();
          v167(v166);
          v130 = v165 == v256;
          v104 = &qword_27D9BB0C0;
          if (v130)
          {

            goto LABEL_47;
          }
        }
      }

      else
      {
        v102 = sub_22C9039DC();
        v156 = 0;
        v157 = v102[2];
        while (v157 != v156)
        {
          if (v156 >= v102[2])
          {
            __break(1u);
            goto LABEL_63;
          }

          sub_22C36BA94();
          sub_22C5CAC74();
          v158 = v242;
          v159(v242);
          ++v156;
          v160 = sub_22C90359C();
          v161 = v158;
          v104 = &qword_27D9BB0C0;
          (*(v35 + 8))(v161, v33);
          if (v160 == v255)
          {

            v155 = v233;
            goto LABEL_38;
          }
        }
      }

LABEL_46:

      v85 = v248;
      goto LABEL_12;
    }

    if (v21 < *(v150 + 16))
    {
      sub_22C36BA94();
      sub_22C5CAC74();
      v151(v23);
      if (sub_22C90359C() < v255)
      {

        v168 = sub_22C385558();
        v169(v168, v33);
        v85 = v248;
        goto LABEL_12;
      }

      ++v21;
      v152 = sub_22C90360C();
      v153 = sub_22C385558();
      v154(v153, v33);
      if (v256 < v152)
      {
        goto LABEL_46;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_56:
  sub_22C37443C();
  sub_22C903FBC();
  sub_22C5CA9C8(&v255);

  sub_22C383834(&v249);

  v45 = sub_22C9063CC();
  sub_22C90AACC();

  if (sub_22C5CAE2C())
  {
    v190 = sub_22C383050();
    v259[0] = sub_22C37A180();
    *v190 = 136315394;

    v191 = sub_22C36F9F4(v219, v23, v259);

    *(v190 + 4) = v191;
    *(v190 + 12) = 2080;
    *(v190 + 14) = sub_22C36F9F4(v217, v21, v259);
    sub_22C5CA530();
    _os_log_impl(v192, v193, v194, v195, v196, 0x16u);
    swift_arrayDestroy();
    v197 = sub_22C37F88C();
    MEMORY[0x2318B9880](v197);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {
LABEL_59:
  }

  sub_22C36FB04();
  v199 = v73;
LABEL_61:
  v198(v199, v221);
LABEL_54:
  sub_22C36CC48();
}

void sub_22C5BBA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned __int8 a25)
{
  sub_22C370030();
  a19 = v28;
  a20 = v29;
  v257 = v30;
  v258 = v31;
  v33 = v32;
  v34 = sub_22C902D3C();
  v35 = sub_22C369914(v34);
  MEMORY[0x28223BE20](v35);
  sub_22C3698A8();
  sub_22C3698F8(v36);
  v37 = sub_22C9089DC();
  v38 = sub_22C36A7A4(v37, &v265);
  MEMORY[0x28223BE20](v38);
  sub_22C3698A8();
  sub_22C36D234(v39);
  v40 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v41 = sub_22C369914(v40);
  MEMORY[0x28223BE20](v41);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v42);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v44);
  sub_22C36BA64();
  sub_22C3698F8(v45);
  v46 = sub_22C908A0C();
  sub_22C369824();
  MEMORY[0x28223BE20](v47);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v48);
  sub_22C36BA64();
  sub_22C3698F8(v49);
  v50 = sub_22C90888C();
  sub_22C369824();
  v256 = v51;
  MEMORY[0x28223BE20](v52);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA64();
  sub_22C3698F8(v55);
  sub_22C90880C();
  sub_22C369824();
  MEMORY[0x28223BE20](v56);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v57);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v58);
  sub_22C36BA64();
  sub_22C3698F8(v59);
  sub_22C9087BC();
  sub_22C369824();
  v251 = v61;
  v252 = v60;
  MEMORY[0x28223BE20](v60);
  sub_22C3698A8();
  sub_22C3698F8(v62);
  v63 = sub_22C908AEC();
  v64 = sub_22C36A7A4(v63, &v256);
  v249 = v65;
  MEMORY[0x28223BE20](v64);
  sub_22C3698A8();
  v67 = sub_22C3698F8(v66);
  v237 = type metadata accessor for PlanPostProcessor(v67);
  sub_22C36985C();
  MEMORY[0x28223BE20](v68);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v69);
  sub_22C36BA64();
  v253 = v70;
  sub_22C36BA0C();
  v255 = sub_22C9063DC();
  sub_22C369824();
  v72 = v71;
  MEMORY[0x28223BE20](v73);
  sub_22C3698E4();
  sub_22C3698D4();
  v75 = MEMORY[0x28223BE20](v74);
  MEMORY[0x28223BE20](v75);
  sub_22C49CA04();
  MEMORY[0x28223BE20](v76);
  sub_22C5CA6F0();
  if (!*(*v33 + 16))
  {
    sub_22C36A748();
    v107 = v46;
    goto LABEL_13;
  }

  v78 = v33;
  v228 = v77;
  v247 = v46;
  v254 = v50;
  v234 = a24;
  v233 = a23;
  v79 = a21;
  v80 = a22;
  sub_22C903FBC();
  v81 = sub_22C9063CC();
  v82 = sub_22C90AACC();
  if (os_log_type_enabled(v81, v82))
  {
    sub_22C3720F4();
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_22C366000, v81, v82, "Replacing expressions with correct event ids", v83, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880](v84);
  }

  HIDWORD(v235) = a25;

  v85 = *(v72 + 8);
  v86 = v255;
  v85(v25, v255);
  v87 = v257;
  sub_22C5BCBB8(v78, v258, v257, v79, v80, v233, v234, v88, v228, v229, v230, v231, v232, v233, v234, v235, v237, v239, v241, v243);
  v89 = *v78;

  sub_22C903FBC();

  v90 = sub_22C9063CC();
  sub_22C90AACC();
  v258 = v89;

  v91 = sub_22C5CA91C();
  if (os_log_type_enabled(v91, v92))
  {
    sub_22C36BED8();
    swift_slowAlloc();
    sub_22C3735E4();
    v86 = swift_slowAlloc();
    a10 = v86;
    *v89 = 136315138;
    v93 = sub_22C9070DC();
    v94 = MEMORY[0x2318B7AD0](v258, v93);
    sub_22C36F9F4(v94, v95, &a10);
    sub_22C5CAE44();
    *(v89 + 4) = v87;
    v87 = v257;
    sub_22C5CA550();
    _os_log_impl(v96, v97, v98, v99, v100, v101);
    sub_22C36FF94(v86);
    v102 = sub_22C36ACAC();
    MEMORY[0x2318B9880](v102);
    v103 = sub_22C36D66C();
    MEMORY[0x2318B9880](v103);
  }

  v85(v27, v255);
  if ((v236 & 1) == 0)
  {
    sub_22C90878C();
    v118 = sub_22C5CAC54();
    v119(v118);
    v120 = sub_22C9087DC();
    sub_22C370208();
    sub_22C3A5950(v121);

    sub_22C5CAC28();
    sub_22C4E719C(v122, v123, v124, v125);
    v126 = sub_22C36CCF8();
    sub_22C36D0A8(v126, v127, v247);
    if (v128)
    {

      sub_22C37A060();
      sub_22C36DD28(v129, v130, v131);
      sub_22C5CA9A0();
      sub_22C3A5F00();
      sub_22C37A198();
      swift_allocError();
      sub_22C377534(v132, v264, v263, v262);
      v133 = sub_22C372280();
      sub_22C36DD28(v133, v134, &qword_22C90C6E0);
      (*(v256 + 8))(v85, v254);
      sub_22C36FB04();
      sub_22C3837F8();
      v135();
      goto LABEL_23;
    }

    sub_22C36DD28(v86, &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C37443C();
    sub_22C3806E8();
    v136();
    v137 = v256;
    v138 = sub_22C37BA1C();
    v139(v138, v85, v254);
    sub_22C36D818();
    sub_22C9088AC();
    sub_22C38B1DC(&v263.n128_i64[1]);

    sub_22C370208();
    sub_22C5CA790(v140, v141, v142, v143, v144, v145, v146, v147, v120);
    sub_22C36D2E8();
    (*(v148 + 104))(v86);
    sub_22C90893C();
    v149 = sub_22C36D384();
    v150(v149);
    v151 = sub_22C50B61C();
    v152(v151, v247);
    (*(v137 + 8))(v245, v254);
    sub_22C36FB04();
    sub_22C3837F8();
    v153();
    sub_22C36BECC();
    v107 = v247;
LABEL_13:
    sub_22C36C640(v104, v105, v106, v107);
    goto LABEL_23;
  }

  v108 = v258;

  v109 = *(v249 + 16);
  v109();
  v110 = *(v251 + 16);
  v110(v250, v87, v252);
  *v253 = MEMORY[0x277D84F98];
  (v109)(v253 + v238[5], v248, v242);
  *(v253 + v238[8]) = v108;
  v110(v253 + v238[6], v250, v252);
  v111 = v253 + v238[7];

  sub_22C90878C();
  sub_22C901FAC();
  sub_22C369A48();
  sub_22C908C5C();
  sub_22C5CA3DC();
  sub_22C5C87F4(v112, v113, MEMORY[0x277D1C348]);
  sub_22C44178C();
  v114 = sub_22C909F0C();
  (*(v251 + 8))(v250, v252);
  sub_22C36FB04();
  v115(v248, v242);
  *&v111[*(type metadata accessor for TranscriptValueFetcher(0) + 20)] = v114;
  sub_22C5CA0B8(v253, v240);
  PlanPostProcessor.process()();
  if (v26)
  {
    v116 = v244;
    v117 = v257;
    sub_22C5CA498();
    sub_22C903FBC();
    v156 = v26;
    v157 = sub_22C9063CC();
    sub_22C90AADC();

    if (sub_22C5CAE14())
    {
      sub_22C36BED8();
      v158 = swift_slowAlloc();
      sub_22C37080C();
      v159 = swift_slowAlloc();
      *v158 = 138412290;
      v160 = v26;
      v161 = _swift_stdlib_bridgeErrorToNSError();
      *(v158 + 4) = v161;
      *v159 = v161;
      sub_22C5CA598();
      _os_log_impl(v162, v163, v164, v165, v166, v167);
      sub_22C36DD28(v159, &qword_27D9BB158, qword_22C910FD0);
      v168 = sub_22C3816C4();
      MEMORY[0x2318B9880](v168);
      v169 = sub_22C36ACAC();
      MEMORY[0x2318B9880](v169);
    }

    else
    {
    }

    v170 = v246;
    v171 = v247;
    sub_22C5CA580();
    v172();
  }

  else
  {
    sub_22C90941C();
    sub_22C909F0C();
    sub_22C37205C();
    v117 = v257;
    sub_22C90878C();
    v154 = sub_22C36ECB4();
    v208 = sub_22C4006B0(v154, v155, v250);
    sub_22C3837F8();
    v209();

    sub_22C37A078();
    sub_22C903FBC();
    v116 = sub_22C9063CC();
    v210 = sub_22C90AACC();
    if (os_log_type_enabled(v116, v210))
    {
      sub_22C36BED8();
      v211 = swift_slowAlloc();
      sub_22C370220();
      v212 = swift_slowAlloc();
      a10 = v212;
      *v211 = 136315138;
      v213 = sub_22C9070DC();

      MEMORY[0x2318B7AD0](v214, v213);
      sub_22C5CAC34();

      v215 = sub_22C36FC2C();
      v218 = sub_22C36F9F4(v215, v216, v217);
      v117 = v257;

      *(v211 + 4) = v218;
      sub_22C5CAA1C(&dword_22C366000, v116, v210, "After entering PlanPostProcessor %s");
      _os_log_impl(v219, v220, v221, v222, v223, v224);
      sub_22C36FF94(v212);
      v225 = sub_22C36ACAC();
      MEMORY[0x2318B9880](v225);
      v171 = v247;
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      sub_22C5CA580();
      v226();
      sub_22C5CA498();
      v258 = v208;
      v170 = v246;
    }

    else
    {

      sub_22C5CA580();
      v227();
      sub_22C5CA498();
      v258 = v208;
      v170 = v246;
      v171 = v247;
    }
  }

  sub_22C90878C();
  (*(v256 + 104))(v170, *MEMORY[0x277D1E6C8], v254);
  v173 = sub_22C9087DC();
  sub_22C37443C();
  sub_22C3A5950(v174);

  sub_22C5CAC28();
  sub_22C4E719C(v175, v176, v177, v178);
  v179 = sub_22C36CCF8();
  sub_22C36D0A8(v179, v180, v171);
  if (v128)
  {

    sub_22C37A060();
    sub_22C36DD28(v181, v182, v183);
    sub_22C5CA9A0();
    sub_22C3A5F00();
    sub_22C37A198();
    swift_allocError();
    sub_22C377534(v184, v261, v260, v259);
    v185 = sub_22C379ED8();
    sub_22C36DD28(v185, v186, &qword_22C90C6E0);
    (*(v256 + 8))(v170, v254);
    sub_22C36FB04();
    sub_22C3837F8();
    v187();
  }

  else
  {
    sub_22C36DD28(v117, &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C37443C();
    v188 = v256;
    v189 = sub_22C5CAC54();
    v190(v189, v173, v171);
    v191 = sub_22C37BA1C();
    v192(v191, v170, v254);
    sub_22C36D818();
    sub_22C9088AC();
    sub_22C38B1DC(&v263.n128_i64[1]);

    sub_22C370208();
    sub_22C5CA790(v193, v194, v195, v196, v197, v198, v199, v200, v173);
    sub_22C37205C();
    (*(v201 + 104))(v170);
    sub_22C90893C();
    v202 = sub_22C3806B8();
    v203(v202);
    (*(v117 + 8))(v116, v171);
    (*(v188 + 8))(v246, v254);
    sub_22C36FB04();
    sub_22C3837F8();
    v204();
    sub_22C36BECC();
    sub_22C36C640(v205, v206, v207, v171);
  }

LABEL_23:
  sub_22C36FB20();
}

void sub_22C5BCBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  v857 = v20;
  v839 = v24;
  v895 = v25;
  v856[3] = v26;
  v858 = v27;
  v910 = v28;
  v849 = v29;
  v31 = v30;
  v32 = sub_22C3A5908(&qword_27D9BEC18, &unk_22C9204A0);
  sub_22C369914(v32);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v33);
  sub_22C36D5B4();
  sub_22C3698F8(v34);
  v35 = sub_22C9081CC();
  v36 = sub_22C36A7A4(v35, v887);
  v920 = v37;
  MEMORY[0x28223BE20](v36);
  sub_22C3698A8();
  sub_22C36D234(v38);
  v39 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  sub_22C369914(v39);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v40);
  sub_22C36D5B4();
  sub_22C3698F8(v41);
  v42 = sub_22C9079FC();
  v43 = sub_22C36A7A4(v42, &v906);
  v45 = v44;
  MEMORY[0x28223BE20](v43);
  sub_22C3698A8();
  sub_22C36D234(v46);
  v47 = sub_22C3A5908(&qword_27D9BEC20, &qword_22C9204B8);
  sub_22C369914(v47);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v48);
  sub_22C36D5B4();
  v50 = sub_22C3698F8(v49);
  v901 = type metadata accessor for ContextRule(v50);
  sub_22C36985C();
  MEMORY[0x28223BE20](v51);
  sub_22C3698A8();
  sub_22C36D234(v52);
  v53 = sub_22C3A5908(&qword_27D9BEC58, &qword_22C922F70);
  sub_22C369914(v53);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v54);
  sub_22C36D5B4();
  sub_22C3698F8(v55);
  v56 = sub_22C9063DC();
  v57 = sub_22C36A7A4(v56, &v894);
  v928 = v58;
  MEMORY[0x28223BE20](v57);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v59);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v60);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v61);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v62);
  sub_22C36BA64();
  sub_22C3698F8(v63);
  v64 = sub_22C906F2C();
  v65 = sub_22C36A7A4(v64, &v919);
  v67 = v66;
  MEMORY[0x28223BE20](v65);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v68);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v69);
  sub_22C36BA64();
  sub_22C3698F8(v70);
  v71 = sub_22C90731C();
  v72 = sub_22C36A7A4(v71, &v817);
  v74 = v73;
  MEMORY[0x28223BE20](v72);
  sub_22C3698A8();
  sub_22C3698F8(v75);
  v76 = sub_22C906D7C();
  v77 = sub_22C36A7A4(v76, v888);
  v931 = v78;
  MEMORY[0x28223BE20](v77);
  sub_22C3698A8();
  sub_22C36D234(v79);
  v80 = sub_22C3A5908(&qword_27D9BAA00, &qword_22C911F60);
  v81 = sub_22C369914(v80);
  MEMORY[0x28223BE20](v81);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v82);
  sub_22C373000();
  v83 = sub_22C90832C();
  v84 = sub_22C36A7A4(v83, &v830);
  v925 = v85;
  MEMORY[0x28223BE20](v84);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v86);
  sub_22C36BA64();
  sub_22C3698F8(v87);
  v88 = sub_22C90726C();
  v89 = sub_22C36A7A4(v88, v836);
  v929 = v90;
  MEMORY[0x28223BE20](v89);
  sub_22C3698A8();
  sub_22C3698F8(v91);
  v92 = sub_22C90769C();
  sub_22C369824();
  v927 = v93;
  MEMORY[0x28223BE20](v94);
  sub_22C3698A8();
  sub_22C3698F8(v95);
  v96 = sub_22C906ACC();
  v97 = sub_22C36A7A4(v96, v875);
  v924 = v98;
  MEMORY[0x28223BE20](v97);
  sub_22C3698A8();
  sub_22C3698F8(v99);
  v100 = sub_22C906F5C();
  v101 = sub_22C36A7A4(v100, &v820);
  v906 = v102;
  MEMORY[0x28223BE20](v101);
  sub_22C3698A8();
  sub_22C3698F8(v103);
  v104 = sub_22C9071EC();
  v105 = sub_22C36A7A4(v104, v822);
  v917 = v106;
  MEMORY[0x28223BE20](v105);
  sub_22C3698A8();
  sub_22C3698F8(v107);
  v108 = sub_22C90734C();
  v109 = sub_22C36A7A4(v108, v829);
  v915 = v110;
  MEMORY[0x28223BE20](v109);
  sub_22C3698A8();
  sub_22C36D234(v111);
  v112 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v113 = sub_22C369914(v112);
  MEMORY[0x28223BE20](v113);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v114);
  sub_22C36BA64();
  sub_22C3698F8(v115);
  v116 = sub_22C906CDC();
  v117 = sub_22C36A7A4(v116, &v826);
  v912 = v118;
  MEMORY[0x28223BE20](v117);
  sub_22C3698A8();
  sub_22C3698F8(v119);
  v120 = sub_22C9072EC();
  v121 = sub_22C36A7A4(v120, v842);
  v914 = v122;
  MEMORY[0x28223BE20](v121);
  sub_22C3698A8();
  sub_22C3698F8(v123);
  v124 = sub_22C906B3C();
  v125 = sub_22C36A7A4(v124, v848);
  v904 = v126;
  MEMORY[0x28223BE20](v125);
  sub_22C3698A8();
  sub_22C3698F8(v127);
  v128 = sub_22C90700C();
  v129 = sub_22C369914(v128);
  MEMORY[0x28223BE20](v129);
  sub_22C3698A8();
  v131 = sub_22C3698F8(v130);
  v132 = type metadata accessor for PlanOverridesService.EventReference(v131);
  v133 = sub_22C36A7A4(v132, &v918);
  v822[2] = v134;
  MEMORY[0x28223BE20](v133);
  sub_22C3698A8();
  sub_22C3698F8(v135);
  v136 = sub_22C90069C();
  v137 = sub_22C36A7A4(v136, &v916);
  v890 = v138;
  MEMORY[0x28223BE20](v137);
  sub_22C3698A8();
  sub_22C3698F8(v139);
  v919 = sub_22C9089DC();
  sub_22C369824();
  v903 = v140;
  MEMORY[0x28223BE20](v141);
  sub_22C3698A8();
  v918 = v142;
  v143 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v143);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v144);
  sub_22C36D5B4();
  sub_22C3698F8(v145);
  v916 = sub_22C908A0C();
  sub_22C369824();
  v921 = v146;
  MEMORY[0x28223BE20](v147);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v148);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v149);
  sub_22C36BA64();
  sub_22C3698F8(v150);
  v151 = sub_22C90880C();
  v152 = sub_22C36A7A4(v151, &v902);
  v902 = v153;
  MEMORY[0x28223BE20](v152);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v154);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v155);
  sub_22C36BA64();
  sub_22C3698F8(v156);
  v157 = sub_22C9069FC();
  v158 = sub_22C36A7A4(v157, &v853);
  i = v159;
  MEMORY[0x28223BE20](v158);
  sub_22C3698A8();
  sub_22C3698F8(v160);
  v161 = sub_22C90654C();
  v162 = sub_22C36A7A4(v161, &a14);
  v164 = v163;
  MEMORY[0x28223BE20](v162);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v165);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v166);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v167);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v168);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v169);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v170);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v171);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v172);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v173);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v174);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v175);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v176);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v177);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v178);
  sub_22C36BA64();
  sub_22C3698F8(v179);
  v180 = sub_22C9070DC();
  sub_22C369824();
  v886 = v181;
  MEMORY[0x28223BE20](v182);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v183);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v184);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v185);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v186);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v187);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v188);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v189);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v190);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v191);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v192);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v193);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v194);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v195);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v196);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v197);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v198);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v199);
  sub_22C36BA64();
  sub_22C3698F8(v200);
  v201 = sub_22C901FAC();
  sub_22C369824();
  v926 = v202;
  MEMORY[0x28223BE20](v203);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v204);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v205);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v206);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v207);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v208);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v209);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v210);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v211);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v212);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v213);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v214);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v215);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v216);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v217);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v218);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v219);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v220);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v221);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v222);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v223);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v224);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v225);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v226);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v227);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v228);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v229);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v230);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v231);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v232);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v233);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v234);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v235);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v236);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v237);
  sub_22C36BA58();
  v930 = v238;
  sub_22C369930();
  MEMORY[0x28223BE20](v239);
  sub_22C36BA58();
  v922 = v240;
  sub_22C369930();
  MEMORY[0x28223BE20](v241);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v242);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v243);
  sub_22C36BA64();
  sub_22C36D234(v244);
  sub_22C5CA3DC();
  sub_22C5C87F4(v245, v246, MEMORY[0x277D1C348]);
  v934 = sub_22C909F0C();
  v898 = v31;
  v247 = *v31;
  v248 = *(*v31 + 16);
  if (!v248)
  {
LABEL_195:

    sub_22C36CC48();
    return;
  }

  v897 = v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v832 = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_214;
  }

  v251 = v920;
LABEL_4:
  v252 = 0;
  v884 = v164 + 88;
  v872 = (v928 + 8);
  v794 = v164 + 8;
  v883 = v164 + 96;
  v792 = v74 + 32;
  v891 = *MEMORY[0x277D1DAA8];
  v874[1] = v164 + 104;
  v790 = v74 + 8;
  v875[1] = *MEMORY[0x277D1DA98];
  v798 = v906 + 32;
  v796 = v906 + 8;
  *&v250 = 136315138;
  v785 = v250;
  v804 = (v917 + 4);
  v848[3] = *MEMORY[0x277D1DA78];
  v802 = (v917 + 1);
  v841 = *MEMORY[0x277D1DA70];
  sub_22C5CABE4();
  v825 = *MEMORY[0x277D1DA88];
  v807 = (v925 + 2);
  v806 = (v925 + 1);
  v821 = *MEMORY[0x277D1DAD8];
  v811 = *MEMORY[0x277D1DAD0];
  v808 = *MEMORY[0x277D1DAE8];
  HIDWORD(v805) = *MEMORY[0x277D1DAC8];
  HIDWORD(v800) = *MEMORY[0x277D1DAB0];
  LODWORD(v800) = *MEMORY[0x277D1DAE0];
  v871 = *MEMORY[0x277D1DEF8];
  v860 = *MEMORY[0x277D1DEE8];
  v906 = v886 + 8;
  v74 = v926 + 8;
  v928 = v926 + 16;
  v893 = (v926 + 32);
  v878 = v886 + 40;
  v912 = v926 + 40;
  sub_22C5CA910(v929 + 32);
  sub_22C5CABE4();
  sub_22C5CA910(v253);
  sub_22C5CABE4();
  sub_22C5CA910(v254);
  v819[2] = v255;
  v823[1] = i + 32;
  v823[0] = v902 + 32;
  v917 = (v903 + 8);
  v915 = v921 + 16;
  v829[0] = v921 + 32;
  v877 = v902 + 8;
  v887[2] = v921 + 8;
  v887[1] = v890 + 32;
  v822[0] = i + 8;
  v831 = v924 + 4;
  sub_22C5CA910(v927 + 8);
  v829[1] = v256;
  sub_22C5CA910(v931 + 32);
  v847 = v257;
  v870 = (v67 + 32);
  v869 = (v67 + 16);
  v867[1] = v67 + 88;
  v867[0] = v67 + 8;
  v861 = (v67 + 96);
  sub_22C5CABE4();
  v863 = v258;
  v842[1] = v251 + 32;
  sub_22C5CA910((v251 + 8));
  v862 = v259;
  v846 = (v67 + 104);
  v923 = v21;
  v931 = v201;
  v887[0] = v180;
  v882 = v248;
  v905 = v260;
  v925 = v74;
  while (1)
  {
    if (v252 == v248)
    {
      goto LABEL_200;
    }

    sub_22C5CA898();
    if (v261)
    {
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      v251 = v920;
      sub_22C887620();
      v247 = v780;
      goto LABEL_4;
    }

    v248 = (*(v886 + 80) + 32) & ~*(v886 + 80);
    v164 = *(v886 + 16);
    v914 = *(v886 + 72) * v252;
    v262 = sub_22C37022C(&v910);
    (v164)(v262);
    sub_22C370208();
    sub_22C9068FC();
    v263 = sub_22C37B9B0();
    v902 = v264;
    v264(v263);
    sub_22C37A078();
    sub_22C5C5D50();
    v265 = v74;
    v74 = v925;
    v929 = *v925;
    v929(v265, v201);
    sub_22C5CAA04();
    v927 = v266;
    (v266)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C887620();
      v247 = v698;
    }

    sub_22C5CA898();
    if (v261)
    {
      goto LABEL_202;
    }

    v267 = v247 + v248;
    v248 = v914;
    v67 = v267 + v914;
    sub_22C90707C();
    sub_22C5CA540();
    sub_22C5CA898();
    if (v261)
    {
      goto LABEL_203;
    }

    v268 = sub_22C37022C(&a10);
    (v164)(v268);
    sub_22C37205C();
    sub_22C90702C();
    sub_22C37025C();
    sub_22C5CA6C4();
    v269();
    sub_22C369908();
    v897 = v247;
    v903 = v252;
    v896 = v267;
    if (v307)
    {
      v270 = sub_22C37025C();
      v271(v270, v248);
      v252 = *v870;
      v272 = sub_22C37B9B0();
      (v252)(v272);
      v164 = *v869;
      v273 = v873;
      v274 = sub_22C36BA00();
      (v164)(v274);
      sub_22C36BA4C();
      v275 = sub_22C37BD98();
      v276(v275);
      sub_22C369908();
      if (v307)
      {
        sub_22C36BA4C();
        v277 = sub_22C37BD98();
        v278(v277);
        v21 = *v273;
        v247 = v273[1];
        sub_22C37A078();
        sub_22C903FBC();
        v279 = sub_22C9063CC();
        v280 = sub_22C90AACC();
        v281 = sub_22C370214();
        if (os_log_type_enabled(v281, v282))
        {
          sub_22C3720F4();
          v283 = swift_slowAlloc();
          sub_22C5CA670(v283);
          sub_22C5CA7D0();
          _os_log_impl(v284, v285, v286, v287, v288, v289);
          v290 = sub_22C36D66C();
          MEMORY[0x2318B9880](v290);
        }

        v291 = *v872;
        (*v872)(v867[4], v874[0]);
        v292 = sub_22C37FE24();
        v74 = sub_22C5C5BB0(v292, v293, v858);
        v67 = v294;
        sub_22C36D818();
        sub_22C37FE24();
        sub_22C5C51D8();

        v295 = sub_22C36CCF8();
        v296 = v889;
        sub_22C36D0A8(v295, v297, v889);
        if (!v307)
        {

          sub_22C3806E8();
          (v252)();
          sub_22C37A078();
          sub_22C903FBC();
          v407 = sub_22C9063CC();
          sub_22C90AACC();
          v408 = sub_22C370214();
          if (os_log_type_enabled(v408, v409))
          {
            sub_22C3720F4();
            v411 = swift_slowAlloc();
            sub_22C5CA670(v411);
            sub_22C5CA7D0();
            _os_log_impl(v412, v413, v414, v415, v416, v417);
            sub_22C369B50();
            MEMORY[0x2318B9880]();
          }

          v291(v855, v874[0]);
          v252 = v836[2];
          sub_22C5CA4F8();
          v418();
          v180 = v854;
          v419 = v889;
          (v164)(v837[4], v854, v889);
          sub_22C36FD6C();
          sub_22C5CA520();
          v420();
          v74 = v908;
          v67 = v908;
          sub_22C9070CC();
          MEMORY[0x2318B4580]();
          sub_22C5CA83C();
          sub_22C37BA44();
          sub_22C9070BC();
          sub_22C5CA410();
          sub_22C37A078();
          sub_22C388EF4();
          sub_22C90708C();
          v164 = v867[0];
          v248 = *v867[0];
          v421 = sub_22C441720();
          (v248)(v421);
          (v248)(v885, v419);
          sub_22C3735C4();
          v422();
          sub_22C386A40();
          v423();
          sub_22C374D00();
          v21 = v923;
          if (v261)
          {
            goto LABEL_208;
          }

          v424 = sub_22C377FE0();
          v426 = v67;
          goto LABEL_119;
        }

        sub_22C36DD28(v280, &qword_27D9BEC58, &qword_22C922F70);
        sub_22C5CA9C8(v856);
        sub_22C5CA4F8();
        v298();
        v252 = v296;
        v180 = v838;
        *v838 = v74;
        *(v180 + 8) = v67;
        v299 = sub_22C37025C();
        v300(v299, v871, v252);
        sub_22C37BB00();
        sub_22C5CA520();
        v302 = v301();
        v248 = sub_22C5CA8A4(v302);
        MEMORY[0x2318B4580]();
        sub_22C5CA83C();
        sub_22C37BA44();
        sub_22C9070BC();
        sub_22C5CA410();
        sub_22C36D818();
        sub_22C38A024();
        sub_22C90708C();
        sub_22C36BA4C();
        v303(v885, v252);
        sub_22C3735C4();
        v304();
        sub_22C386A40();
        v305();
        sub_22C374D00();
        if (v261)
        {
          goto LABEL_207;
        }

        sub_22C377FE0();
        sub_22C3806E8();
        v306();
        sub_22C5CA540();
        v21 = v923;
      }

      else
      {
        sub_22C369908();
        v180 = v887[0];
        if (v327)
        {
          sub_22C36BA4C();
          v328(v273, v889);
          v329 = *v273;

          sub_22C37A078();
          sub_22C903FBC();
          v67 = sub_22C9063CC();
          sub_22C90AACC();
          v330 = sub_22C370214();
          if (os_log_type_enabled(v330, v331))
          {
            sub_22C3720F4();
            v332 = swift_slowAlloc();
            sub_22C5CA670(v332);
            sub_22C5CA7D0();
            _os_log_impl(v333, v334, v335, v336, v337, v338);
            v339 = sub_22C36D66C();
            MEMORY[0x2318B9880](v339);
          }

          sub_22C36BA4C();
          sub_22C5CAC1C();
          v340();
          v248 = *(v329 + 16);

          sub_22C5CAC10();
          sub_22C5CAC04();
          v924 = v248;
          if (!v248)
          {
LABEL_91:
            sub_22C5CA9C8(v851);
            sub_22C5CA5F4();
            v480();
            *v834 = v329;
            v481 = sub_22C37025C();
            v164 = v889;
            v482(v481, v860, v889);
            sub_22C37BB00();
            sub_22C5CA520();
            v483();

            v248 = sub_22C9070CC();
            MEMORY[0x2318B4580]();
            sub_22C5CA83C();
            sub_22C36D2E8();
            sub_22C9070BC();
            sub_22C5CA410();
            sub_22C36D818();
            sub_22C38A024();
            v180 = v887[0];
            sub_22C90708C();
            sub_22C36BA4C();
            v484(v885, v164);
            v74 = v925;
            sub_22C38BB88();
            v485();
            sub_22C5CA7DC();
            v486();
            v67 = v897;
            v252 = v903;
            if (v903 >= v897[2].isa)
            {
              goto LABEL_210;
            }

            sub_22C377FE0();
            sub_22C3806E8();
            v487();

            *v898 = v67;
            v21 = v923;
            sub_22C5CA904();
            v247 = v67;
            goto LABEL_121;
          }

          v21 = 0;
          while (2)
          {
            if (v21 >= *(v329 + 16))
            {
              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
LABEL_199:
              __break(1u);
LABEL_200:
              __break(1u);
              goto LABEL_201;
            }

            v164 = (*(v926 + 80) + 32) & ~*(v926 + 80);
            sub_22C5CA5F4();
            v341();
            v67 = v267;
            sub_22C901F7C();
            if (v342)
            {
              v248 = v342;
              sub_22C37A078();
              sub_22C5C75F4();

              sub_22C36D0A8(v267, 1, v901);
              if (v307)
              {
                sub_22C36DD28(v267, &qword_27D9BEC20, &qword_22C9204B8);
              }

              else
              {
                v343 = v876;
                sub_22C37A168();
                v180 = v880;
                sub_22C5C8974(v267, v880);
                sub_22C36D2E8();
                sub_22C90878C();
                v248 = sub_22C9087DC();
                v344 = sub_22C5CA450();
                v345(v344, v879);
                *&v932 = v248;
                v267 = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
                sub_22C369E24();
                sub_22C5CAA04();
                sub_22C3D32C8(v346, v347, v348, v349);
                sub_22C5CACB0();
                sub_22C37443C();
                sub_22C907EEC();
                v67 = v881;

                sub_22C36D3E0(&qword_22C912420);
                if (!v350)
                {
                  sub_22C36BA4C();
                  v267 = v868;
                  v355 = sub_22C3863FC();
                  v356(v355);
                  v357 = (v180 + *(v901 + 24));
                  v358 = v357[1];
                  v932 = *v357;
                  v933 = v358;
                  sub_22C5C6C44();
                  sub_22C36FD7C();
                  sub_22C5CA8DC();
                  sub_22C36D0A8(v359, v360, v361);
                  v201 = v931;
                  if (v362)
                  {
                    v363 = sub_22C5CA450();
                    v364(v363, v67);
                    sub_22C5CAC04();
                    v365 = sub_22C3863FC();
                    v248 = v925;
                    (v929)(v365);
                    sub_22C36AC94();
                    sub_22C5C8874(v180, v366);
                    v367 = v343;
                    v74 = v248;
                    sub_22C36DD28(v367, &qword_27D9BEC18, &unk_22C9204A0);
                    sub_22C5CAC10();
                  }

                  else
                  {
                    sub_22C36BA4C();
                    v368 = sub_22C37BA1C();
                    v369(v368, v343, v248);
                    sub_22C9068FC();
                    swift_isUniquelyReferenced_nonNull_native();
                    sub_22C5CAC04();
                    if ((v370 & 1) == 0)
                    {
                      sub_22C887650();
                      v329 = v378;
                    }

                    v67 = v881;
                    sub_22C5CAC10();
                    v74 = v925;
                    sub_22C36BA4C();
                    v371(v865, v248);
                    sub_22C36BA4C();
                    v372(v868, v67);
                    sub_22C5CA7DC();
                    v373();
                    if (v21 >= *(v329 + 16))
                    {
                      goto LABEL_206;
                    }

                    v374 = sub_22C386408();
                    v375(v374, v864, v201);
                    sub_22C36AC94();
                    sub_22C5C8874(v880, v376);
                  }

LABEL_43:
                  if (v924 == ++v21)
                  {
                    goto LABEL_91;
                  }

                  continue;
                }

                sub_22C36AC94();
                sub_22C5C8874(v180, v351);
                sub_22C36DD28(&qword_22C912420, &qword_27D9BD798, &unk_22C919070);
                v201 = v931;
                sub_22C5CAC10();
                sub_22C5CAC04();
                v74 = v925;
              }
            }

            break;
          }

          sub_22C5C5EA0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C887650();
            v329 = v377;
          }

          sub_22C5CA7DC();
          v352();
          if (v21 >= *(v329 + 16))
          {
            goto LABEL_197;
          }

          v353 = sub_22C386408();
          v354(v353, v180, v201);
          goto LABEL_43;
        }

        sub_22C37A078();
        sub_22C903FBC();
        v427 = sub_22C9063CC();
        sub_22C90AACC();
        v428 = sub_22C370214();
        os_log_type_enabled(v428, v429);
        sub_22C5CAA7C();
        if (v430)
        {
          sub_22C3720F4();
          v431 = swift_slowAlloc();
          sub_22C5CA670(v431);
          sub_22C5CA7D0();
          _os_log_impl(v432, v433, v434, v435, v436, v437);
          v438 = sub_22C36D66C();
          MEMORY[0x2318B9880](v438);
        }

        sub_22C36BA4C();
        sub_22C5CAC1C();
        v439();
        v67 = v867[0];
        v248 = *v867[0];
        v164 = v889;
        (*v867[0])(v885, v889);
        sub_22C37EFC0();
        sub_22C38BB88();
        v440();
        v441 = sub_22C380550();
        (v929)(v441);
        (v248)(v873, v164);
      }

LABEL_120:
      sub_22C5CA904();
      goto LABEL_121;
    }

    sub_22C369908();
    if (v307)
    {
      v308 = sub_22C5CA3BC();
      v310(v308, *(v309 - 256));
      sub_22C36BA4C();
      v180 = v853;
      v311 = sub_22C371530();
      v312(v311);
      sub_22C36D2E8();
      MEMORY[0x2318B4220]();
      sub_22C37BA44();
      sub_22C377B94();
      sub_22C5C5EA0();
      sub_22C386758();
      sub_22C906D6C();
      sub_22C370208();
      sub_22C5C5EA0();
      v313 = v201;
      v314 = v201;
      v315 = v927;
      (v927)(v850, v913, v313);
      v316 = sub_22C37170C();
      v315(v316);
      v317 = sub_22C37FE04(v874);
      (v315)(v317, v74, v314);
      sub_22C3759C4();
      sub_22C36BBCC();
      sub_22C906D5C();
      sub_22C36FD6C();
      sub_22C5CA520();
      v318();
      v248 = sub_22C9070CC();
      MEMORY[0x2318B4580]();
      sub_22C5CA83C();
      sub_22C36D2E8();
      sub_22C9070BC();
      sub_22C5CA410();
      sub_22C36D818();
      v247 = v897;
      v252 = v903;
      sub_22C90708C();
      v319 = v74;
      v74 = v925;
      v67 = v929;
      v929(v319, v931);
      (v67)(v21, v931);
      (v67)(v164, v931);
      (v67)(v867[2], v931);
      v320 = sub_22C37025C();
      v321(v320, v867[3]);
      v201 = v931;
      sub_22C3735C4();
      v322();
      v323 = sub_22C380550();
      (v67)(v323);
      sub_22C5CA898();
      if (v261)
      {
        goto LABEL_205;
      }

      goto LABEL_24;
    }

    sub_22C369908();
    if (v379)
    {
      v380 = sub_22C5CA3BC();
      v382(v380, *(v381 - 256));
      sub_22C36BA4C();
      v383 = sub_22C5CAC54();
      v384(v383, v248, v852);
      sub_22C37443C();
      sub_22C906ABC();
      sub_22C90768C();
      v385 = *v830;
      v386 = v832;
      (*v830)(v201, v832);
      v387 = sub_22C36D39C();
      sub_22C5C18D8(v387, v388, v910, v389, v390, v391, v392, v393, v785, *(&v785 + 1), v788, v790, v792, v794, v796, v798, v800, v802, v804, v805);
      v21 = v394;
      v247 = v395;

      if (!v247)
      {
        sub_22C906ABC();
        v21 = sub_22C90768C();
        v247 = v396;
        v385(v201, v386);
      }

      v397 = sub_22C906A8C();
      sub_22C370208();
      v398 = v908;
      sub_22C9068FC();
      sub_22C9070CC();
      sub_22C5CA510();
      v164 = v400 | v399;
      v401 = v934;
      LOBYTE(v783) = sub_22C90704C();
      v782 = v839;
      v781 = v895;
      sub_22C37BA44();
      v180 = v398;
      v67 = v857;
      sub_22C5C3118(v21, v247, v397, v386, v402, v849, v401, v910, v781, v782, v783, v784, v786, v787, v789, v791, v793, v795, v797, v799, v801, v803);

      v403 = v386;
      v201 = v931;
      v74 = v925;
      v248 = v929;
      v929(v403, v931);
      sub_22C36BA4C();
      v404(v252, v852);
      sub_22C3735C4();
      v405();
      v406 = sub_22C380550();
      (v248)(v406);
      sub_22C374D00();
      if (v261)
      {
        goto LABEL_209;
      }

      v324 = sub_22C377FE0();
      v326 = v164;
      goto LABEL_58;
    }

    sub_22C369908();
    if (v442)
    {
      v443 = sub_22C5CA3BC();
      v445(v443, *(v444 - 256));
      sub_22C36BA4C();
      v446 = sub_22C382D34();
      v448 = v447(v446);
      v449 = MEMORY[0x2318B3EC0](v448);
      sub_22C36D818();
      v67 = v910;
      sub_22C90878C();
      sub_22C36BA4C();
      v450(v909, v248, v879);
      v451 = 0;
      v904 = *(v449 + 16);
      v859 = MEMORY[0x277D84F90];
      v452 = v907;
      i = v449;
      while (v451 != v904)
      {
        sub_22C5CA898();
        if (v261)
        {
          goto LABEL_198;
        }

        v453 = v927;
        v454 = (*(v926 + 80) + 32) & ~*(v926 + 80);
        v455 = v449 + v454;
        v456 = *(v926 + 72);
        v457 = v922;
        (v927)(v922, v455 + v456 * v451, v201);
        v920 = v451 + 1;
        v458 = sub_22C9087DC();
        v453(v930, v457, v201);
        v180 = *(v458 + 16);
        v924 = v458;
        if (v180)
        {
LABEL_73:
          v201 = v180 - 1;
          sub_22C37054C();
          v21 = v458 + v459 + *(v460 + 72) * (v180 - 1);
          v461 = v918;
          sub_22C9089EC();
          v74 = sub_22C9089AC();
          (*v917)(v461, v919);
          v462 = v454;
          v248 = v74 + v454;
          v463 = *(v74 + 16) + 1;
          do
          {
            if (!--v463)
            {

              --v180;
              v21 = v923;
              v458 = v924;
              v201 = v931;
              v454 = v462;
              if (v180)
              {
                goto LABEL_73;
              }

              goto LABEL_78;
            }

            v164 = v248 + v456;
            sub_22C5CA3DC();
            sub_22C5C87F4(&qword_27D9BAA28, v464, MEMORY[0x277D1C358]);
            v248 += v456;
          }

          while ((sub_22C90A0BC() & 1) == 0);

          v67 = v924;
          if (v180 <= v924[2].isa)
          {
            sub_22C36BA4C();
            v248 = v899;
            v467 = sub_22C36FC08();
            v180 = v916;
            v468(v467);
            sub_22C36BECC();
            sub_22C36C640(v469, v470, v471, v180);

            v21 = v923;
            v201 = v931;
            goto LABEL_81;
          }

          goto LABEL_199;
        }

LABEL_78:
        v248 = v899;
        v465 = sub_22C36CCF8();
        v180 = v916;
        sub_22C36C640(v465, v466, 1, v916);

LABEL_81:
        v164 = v929;
        v67 = v925;
        v929(v930, v201);
        (v164)(v922, v201);
        v472 = sub_22C36CCF8();
        sub_22C36D0A8(v472, v473, v180);
        v449 = i;
        v451 = v920;
        if (v307)
        {
          sub_22C36DD28(v248, &qword_27D9BA808, &qword_22C90C6E0);
        }

        else
        {
          v67 = *v829[0];
          sub_22C38B1DC(&v843);
          sub_22C3806E8();
          (v67)();
          (v67)(v833, v164, v180);
          sub_22C5CABAC();
          v474 = swift_isUniquelyReferenced_nonNull_native();
          if (v474)
          {
            v475 = v859;
          }

          else
          {
            sub_22C36D270();
            sub_22C590488();
          }

          v164 = *(v475 + 16);
          v476 = *(v475 + 24);
          v248 = v164 + 1;
          if (v164 >= v476 >> 1)
          {
            sub_22C369AB0(v476);
            sub_22C590488();
          }

          *(v475 + 16) = v248;
          sub_22C37054C();
          v859 = v477;
          (v67)(v477 + v478 + *(v479 + 72) * v164, v833, v180);
        }

        v452 = v907;
      }

      sub_22C36BA4C();
      v509(v909, v879);

      v510 = sub_22C5CABAC();
      v247 = *(v510 + 16);
      if (v247)
      {
        v511 = v21;
        v512 = v510;
        *&v932 = MEMORY[0x277D84F90];
        sub_22C3B7488(0, v247, 0);
        v513 = v932;
        sub_22C37054C();
        v515 = v512 + v514;
        v164 = *(v516 + 72);
        v180 = *(v516 + 16);
        do
        {
          v517 = sub_22C37022C(&v915);
          (v180)(v517, v515, v916);
          sub_22C9087FC();
          sub_22C36BA4C();
          v518 = sub_22C36BBCC();
          v519(v518);
          *&v932 = v513;
          v521 = *(v513 + 16);
          v520 = *(v513 + 24);
          v248 = v521 + 1;
          if (v521 >= v520 >> 1)
          {
            v523 = sub_22C37E190(v520);
            sub_22C3B7488(v523, v524, v525);
            v513 = v932;
          }

          *(v513 + 16) = v248;
          sub_22C37054C();
          sub_22C5CA800();
          v522();
          v515 += v164;
          --v247;
        }

        while (v247);
        sub_22C5CABAC();

        v201 = v931;
        v452 = v907;
        v21 = v511;
      }

      else
      {
      }

      sub_22C5C15DC();
      v74 = v550;

      v252 = *(v74 + 16);
      if (v252)
      {
        *&v932 = MEMORY[0x277D84F90];
        sub_22C5CAD9C();
        v67 = v932;
        sub_22C37054C();
        v247 = v74 + v551;
        v164 = *(v552 + 72);
        do
        {
          sub_22C3831E0();
          sub_22C5CAC28();
          sub_22C5CA0B8(v553, v554);
          sub_22C5CAB1C(*(v248 + *(v888[2] + 20)));
          sub_22C3872A0();
          sub_22C5C8874(v248, v555);
          *&v932 = v67;
          v180 = *(v67 + 16);
          v556 = *(v67 + 24);
          v248 = v180 + 1;
          if (v180 >= v556 >> 1)
          {
            sub_22C37E190(v556);
            sub_22C3B6EDC();
            v67 = v932;
          }

          *(v67 + 16) = v248;
          sub_22C37054C();
          (*(v558 + 32))(v67 + v557 + *(v558 + 72) * v180, v452, v201);
          v247 += v164;
          --v252;
        }

        while (v252);
      }

      else
      {

        v67 = MEMORY[0x277D84F90];
      }

      sub_22C383834(&v844);
      sub_22C5CA4F8();
      v559();
      sub_22C37205C();
      sub_22C9069DC();
      sub_22C37BB00();
      sub_22C5CA520();
      v561 = v560();
      v248 = sub_22C5CA8A4(v561);
      MEMORY[0x2318B4580]();
      sub_22C5CA83C();
      sub_22C37BA44();
      sub_22C9070BC();
      sub_22C5CA410();
      sub_22C383824();
      sub_22C90708C();
      sub_22C36BA4C();
      v562(v835, v836[0]);
      sub_22C3735C4();
      v563();
      sub_22C386A40();
      v564();
      sub_22C374D00();
      if (v261)
      {
        goto LABEL_212;
      }

      goto LABEL_118;
    }

    sub_22C369908();
    v248 = v828;
    if (v488)
    {
      break;
    }

    sub_22C369908();
    v248 = v824;
    if (v526)
    {
      sub_22C37F35C();
      v527 = sub_22C37BA1C();
      v180 = v911;
      v528(v527, v911);
      sub_22C36BA4C();
      v529 = sub_22C5CA560();
      v530(v529);
      sub_22C374490();
      MEMORY[0x2318B47A0]();
      v67 = v247;
      sub_22C901F7C();
      sub_22C386130();
      v531 = sub_22C36FC2C();
      v164 = v929;
      (v929)(v531);
      v532 = sub_22C36BA00();
      sub_22C5C13AC(v532, v533, v849);
      sub_22C3869F0();

      if ((v248 & 0x100000000) != 0)
      {
        v565 = sub_22C5CA450();
        v567 = v842;
        goto LABEL_130;
      }

      v534 = sub_22C3759F4(&v831);
      v927(v534);
      sub_22C5CAB1C(v248);
      v252 = v164;
      sub_22C37BA44();
      MEMORY[0x2318B47B0](v247);
      sub_22C36FD6C();
      v536 = v535(v164, v821, v180);
      sub_22C5CA8C0(v536);
      sub_22C5CA510();
      v67 = v538 | v537;
      MEMORY[0x2318B4580]();
      sub_22C5CA830();
      sub_22C37443C();
      sub_22C9070BC();
      sub_22C5CA3F4();
      v539 = sub_22C383824();
      sub_22C5CADBC(v539, v540, v541, v542);
      v543 = sub_22C5CA450();
      v544(v543, v824);
      sub_22C3735C4();
      v545();
      v546 = sub_22C380550();
      (v164)(v546);
      sub_22C3827A0();
      if (*(v547 - 256) >= v548)
      {
        goto LABEL_216;
      }

      goto LABEL_108;
    }

    sub_22C369908();
    if (v568)
    {
      v569 = sub_22C5CA3BC();
      v180 = *(v570 - 256);
      v571(v569, v180);
      sub_22C36BA4C();
      v572 = v819[0];
      v573 = sub_22C379ED8();
      v252 = v819[1];
      v574(v573);
      v575 = sub_22C90724C();
      sub_22C5C5BB0(v575, v576, v858);

      (v927)(v816, v913, v931);
      v248 = sub_22C90721C();
      sub_22C90725C();
      MEMORY[0x2318B4710]();
      sub_22C37BA44();
      sub_22C36ECB4();
      v74 = v925;
      sub_22C90722C();
      sub_22C36FD6C();
      v578 = v577(v164, v811, v180);
      sub_22C5CA8C0(v578);
      sub_22C5CA510();
      v67 = v580 | v579;
      MEMORY[0x2318B4580]();
      sub_22C5CA830();
      sub_22C36D2E8();
      sub_22C9070BC();
      sub_22C5CA3F4();
      sub_22C36D818();
      v247 = v897;
      sub_22C90708C();
      sub_22C36BA4C();
      v581 = v572;
      v201 = v931;
      v582(v581, v252);
      sub_22C3735C4();
      v583();
      v584 = sub_22C372158();
      (v929)(v584);
      if (v903 >= *(v247 + 16))
      {
        goto LABEL_215;
      }

      sub_22C377FE0();
      sub_22C3806E8();
      v585();
      sub_22C5CA540();
      v21 = v923;
      goto LABEL_128;
    }

    sub_22C369908();
    if (v588)
    {
      v590 = sub_22C5CA3BC();
      v592(v590, *(v591 - 256));
      sub_22C36BA4C();
      v593 = sub_22C382D34();
      v595 = v594(v593);
      v596 = MEMORY[0x2318B57A0](v595);
      v597 = 0;
      v599 = v596 + 64;
      v598 = *(v596 + 64);
      v859 = v596;
      v600 = 1 << *(v596 + 32);
      if (v600 < 64)
      {
        v601 = ~(-1 << v600);
      }

      else
      {
        v601 = -1;
      }

      v602 = v601 & v598;
      v603 = (v600 + 63) >> 6;
      v67 = MEMORY[0x277D84F98];
      v164 = &unk_22C911F70;
      v904 = v596 + 64;
      for (i = v603; ; v603 = i)
      {
        v924 = v67;
        if (!v602)
        {
          v248 = v840;
          while (1)
          {
            v604 = v597 + 1;
            if (__OFADD__(v597, 1))
            {
              goto LABEL_204;
            }

            if (v604 >= v603)
            {
              v643 = sub_22C37170C();
              sub_22C3A5908(v643, v644);
              v645 = sub_22C36CCF8();
              sub_22C36C640(v645, v646, 1, v647);
              v602 = 0;
              goto LABEL_144;
            }

            v602 = *(v599 + 8 * v604);
            ++v597;
            if (v602)
            {
              v597 = v604;
              break;
            }
          }
        }

        sub_22C5CACBC();
        v607 = (*(v859 + 48) + 16 * (v606 | (v605 << 6)));
        v608 = *v607;
        v609 = v607[1];
        v610 = v926;
        sub_22C383834(&v922);
        sub_22C5CA5F4();
        v611();
        v612 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
        v613 = *(v612 + 48);
        v614 = v840;
        *v840 = v608;
        *(v614 + 1) = v609;
        (*(v610 + 32))(&v614[v613], v74, v201);
        sub_22C36BECC();
        sub_22C36C640(v615, v616, v617, v612);

        v21 = v923;
LABEL_144:
        v618 = sub_22C36FC08();
        sub_22C4E7208(v618, v619, &qword_27D9BAA00, &qword_22C911F60);
        v620 = sub_22C37170C();
        v622 = sub_22C3A5908(v620, v621);
        v623 = sub_22C5CA7F4();
        sub_22C36D0A8(v623, v624, v622);
        if (v307)
        {
          break;
        }

        v625 = *v21;
        v626 = *(v21 + 8);
        v627 = v21 + *(v622 + 48);
        v920 = *v893;
        (v920)(v843, v627, v201);
        sub_22C36D818();
        sub_22C5C5EA0();
        sub_22C5CA5F4();
        v628();
        v67 = v924;
        v248 = swift_isUniquelyReferenced_nonNull_native();
        *&v932 = v67;
        v180 = v625;
        v629 = v625;
        v164 = v626;
        v630 = sub_22C36E2BC(v629, v626);
        if (__OFADD__(*(v67 + 16), (v631 & 1) == 0))
        {
          goto LABEL_211;
        }

        v21 = v630;
        v74 = v631;
        sub_22C3A5908(&qword_27D9BEC30, &qword_22C9226B0);
        if (sub_22C90B15C())
        {
          v632 = sub_22C36E2BC(v180, v626);
          if ((v74 & 1) != (v633 & 1))
          {
            goto LABEL_222;
          }

          v21 = v632;
        }

        if (v74)
        {

          v67 = v932;
          (*(v926 + 40))(*(v932 + 56) + *(v926 + 72) * v21, v845, v201);
          v634 = sub_22C38B1D0(v867);
          v635 = v929;
          (v929)(v634);
          v636 = sub_22C38B1D0(&v866);
          v635(v636);
        }

        else
        {
          v67 = v932;
          sub_22C36ED48(v932 + 8 * (v21 >> 6));
          v637 = (*(v67 + 48) + 16 * v21);
          *v637 = v180;
          v637[1] = v626;
          (v920)(*(v67 + 56) + *(v926 + 72) * v21, v845, v201);
          v638 = sub_22C38B1D0(v867);
          v248 = v925;
          v164 = v929;
          (v929)(v638);
          v639 = sub_22C38B1D0(&v866);
          (v164)(v639);
          v640 = *(v67 + 16);
          v641 = __OFADD__(v640, 1);
          v642 = (v640 + 1);
          if (v641)
          {
            goto LABEL_213;
          }

          *(v67 + 16) = v642;
        }

        v21 = v923;
        v164 = &unk_22C911F70;
        v599 = v904;
      }

      sub_22C5CABAC();

      v180 = v807;
      v664 = *v807;
      v247 = v814;
      v164 = v815;
      (*v807)(v812[4], v814, v815);
      sub_22C9082DC();
      sub_22C383834(&v827);
      v252 = v913;
      sub_22C5CA5F4();
      v665();
      v666 = sub_22C5CA738();
      v664(v666);
      sub_22C36FD6C();
      sub_22C5CA520();
      v668 = v667();
      sub_22C5CA8C0(v668);
      sub_22C5CA510();
      v67 = v670 | v669;
      MEMORY[0x2318B4580]();
      sub_22C5CA830();
      sub_22C37443C();
      sub_22C9070BC();
      sub_22C5CA3F4();
      sub_22C37A078();
      v201 = v931;
      sub_22C90708C();
      v74 = v806;
      v248 = *v806;
      v671 = sub_22C370018();
      (v248)(v671);
      (v248)(v247, v164);
      sub_22C3735C4();
      v672();
      sub_22C386A40();
      v673();
      sub_22C374D00();
      if (v261)
      {
        goto LABEL_217;
      }

      v324 = sub_22C377FE0();
      v326 = v67;
      goto LABEL_58;
    }

    v252 = v808;
    v180 = v892;
    if (v589 != v808)
    {
      sub_22C369908();
      if (v307)
      {
        v675 = sub_22C5CA3BC();
        v677(v675, *(v676 - 256));
        sub_22C36BA4C();
        v678 = sub_22C382D34();
        v679(v678);
        sub_22C36D818();
        sub_22C906CBC();
        v680 = sub_22C36CCF8();
        sub_22C36D0A8(v680, v681, v201);
        if (v307)
        {
          sub_22C36DD28(v248, &qword_27D9BC030, &unk_22C911CC0);
          v67 = 0;
          v248 = 0;
          sub_22C5CAA7C();
          v74 = v925;
        }

        else
        {
          v164 = v248;
          v67 = sub_22C901F7C();
          v248 = v699;
          sub_22C386A40();
          v700();
          sub_22C5CAA7C();
        }

        v701 = sub_22C36BBCC();
        sub_22C5C13AC(v701, v702, v849);
        sub_22C37BB14();

        if ((v67 & 0x100000000) == 0)
        {
          sub_22C383834(&v818);
          sub_22C5CA4F8();
          v703();
          sub_22C36D818();
          sub_22C5CAB1C(v67);
          sub_22C36BECC();
          sub_22C36C640(v704, v705, v706, v201);
          sub_22C37205C();
          MEMORY[0x2318B41A0](v248);
          sub_22C37BB00();
          sub_22C5CA520();
          v708 = v707();
          sub_22C5CA8A4(v708);
          sub_22C5CA510();
          v67 = v710 | v709;
          MEMORY[0x2318B4580]();
          sub_22C5CA830();
          sub_22C37BA44();
          sub_22C9070BC();
          sub_22C5CA3F4();
          sub_22C383824();
          v74 = v925;
          sub_22C90708C();
          sub_22C36BA4C();
          v711 = sub_22C5CAC88();
          v712(v711);
          sub_22C3735C4();
          v713();
          sub_22C385DC0();
          sub_22C5CA7DC();
          v714();
          sub_22C5CA898();
          if (v261)
          {
            goto LABEL_220;
          }

          goto LABEL_118;
        }

        sub_22C36BA4C();
        v732 = sub_22C5CAC88();
        v733(v732);
        sub_22C37EFC0();
        sub_22C3735C4();
        v734();
        v735 = sub_22C380550();
        (v929)(v735);
      }

      else
      {
        v252 = HIDWORD(v805);
        if (v674 == HIDWORD(v805))
        {
          sub_22C37F35C();
          sub_22C37BA1C();
          sub_22C5CA6C4();
          v682();
          sub_22C36BA4C();
          v683 = sub_22C5CA560();
          v684(v683);
          sub_22C386758();
          MEMORY[0x2318B46A0]();
          sub_22C374490();
          sub_22C5C5EA0();
          v685 = sub_22C3759F4(v819);
          v164 = v927;
          v927(v685);
          sub_22C5CA714();
          (v164)();
          sub_22C37205C();
          MEMORY[0x2318B46B0]();
          v686 = sub_22C37BB00();
          v688 = v687(v686, HIDWORD(v805), v248);
          sub_22C5CAAAC(v688);
          sub_22C5CA510();
          MEMORY[0x2318B4580]();
          sub_22C5CA830();
          sub_22C37443C();
          sub_22C9070BC();
          sub_22C5CA3F4();
          v689 = sub_22C383824();
          sub_22C5CAAE4(v689, v690, v691, v692);
          sub_22C385DC0();
          v74 = v925;
          v67 = v929;
          (v929)();
          v693 = sub_22C372158();
          (v67)(v693);
          v694 = sub_22C5CA450();
          v695(v694);
          sub_22C3735C4();
          v696();
          v697 = sub_22C380550();
          (v67)(v697);
          sub_22C5CA42C();
          if (v261)
          {
            goto LABEL_219;
          }

          goto LABEL_24;
        }

        v252 = HIDWORD(v800);
        if (v674 == HIDWORD(v800))
        {
          sub_22C37F35C();
          sub_22C37BA1C();
          sub_22C5CA6C4();
          v715();
          sub_22C36BA4C();
          v716 = sub_22C5CA560();
          v717(v716);
          sub_22C386758();
          MEMORY[0x2318B4410]();
          sub_22C374490();
          sub_22C5C5EA0();
          v718 = sub_22C3759F4(&v813);
          v164 = v927;
          v927(v718);
          sub_22C5CA714();
          (v164)();
          sub_22C37205C();
          MEMORY[0x2318B4420]();
          v719 = sub_22C37BB00();
          v721 = v720(v719, HIDWORD(v800), v248);
          sub_22C5CAAAC(v721);
          sub_22C5CA510();
          MEMORY[0x2318B4580]();
          sub_22C5CA830();
          sub_22C37443C();
          sub_22C9070BC();
          sub_22C5CA3F4();
          v722 = sub_22C383824();
          sub_22C5CAAE4(v722, v723, v724, v725);
          v726 = sub_22C36FC2C();
          v74 = v925;
          v67 = v929;
          (v929)(v726);
          v727 = sub_22C372158();
          (v67)(v727);
          v728 = sub_22C5CA450();
          v729(v728);
          sub_22C3735C4();
          v730();
          v731 = sub_22C380550();
          (v67)(v731);
          sub_22C374D00();
          if (v261)
          {
            goto LABEL_221;
          }

          goto LABEL_24;
        }

        sub_22C369908();
        if (!v307)
        {
          sub_22C37205C();
          sub_22C903FBC();
          v750 = sub_22C37FE04(v812);
          v252 = v887[0];
          (v164)(v750, v908, v887[0]);
          v67 = sub_22C9063CC();
          v751 = sub_22C90AACC();
          v752 = sub_22C370214();
          if (os_log_type_enabled(v752, v753))
          {
            sub_22C36BED8();
            v247 = swift_slowAlloc();
            sub_22C370220();
            v927 = swift_slowAlloc();
            *&v932 = v927;
            *v247 = v785;
            v755 = sub_22C377B94();
            (v164)(v755);
            sub_22C36D7F0();
            sub_22C90A1AC();
            v756 = sub_22C5CAA64();
            v164 = *(v757 - 256);
            (v164)(v756);
            v758 = sub_22C36ECB4();
            v761 = sub_22C36F9F4(v758, v759, v760);

            *(v247 + 4) = v761;
            _os_log_impl(&dword_22C366000, v67, v751, "No event ids or capture group names need to be replaced for %s", v247, 0xCu);
            sub_22C36FF94(v927);
            v762 = sub_22C36D66C();
            MEMORY[0x2318B9880](v762);
            v763 = sub_22C3816C4();
            MEMORY[0x2318B9880](v763);

            sub_22C37025C();
            sub_22C5CAC1C();
            v764();
            v765 = sub_22C37EFC0();
            (v164)(v765, v252);
          }

          else
          {

            v766 = sub_22C5CAA64();
            v67 = *(v767 - 256);
            (v67)(v766);
            sub_22C37025C();
            sub_22C5CAC1C();
            v768();
            v769 = sub_22C36D7F0();
            (v67)(v769);
          }

          v770 = sub_22C380550();
          v74 = v925;
          (v929)(v770);
          v180 = v252;
          sub_22C385DC0();
          sub_22C36BA4C();
          v771(v894, v911);
          sub_22C5CA904();
          sub_22C5CAA7C();
          goto LABEL_59;
        }

        v736 = sub_22C5CA3BC();
        v738(v736, *(v737 - 256));
        sub_22C36BA4C();
        v739 = sub_22C382D34();
        v741 = v740(v739);
        v248 = MEMORY[0x2318B47E0](v741);
        v742 = *(v248 + 16);
        if (v742)
        {
          *&v932 = MEMORY[0x277D84F90];

          sub_22C5CAD9C();
          v743 = v932;
          sub_22C37054C();
          v924 = v248;
          v745 = v248 + v744;
          v247 = v934;
          v180 = *(v746 + 72);
          v164 = v809;
          do
          {

            sub_22C37FE24();
            sub_22C5C5EA0();

            *&v932 = v743;
            v748 = *(v743 + 16);
            v747 = *(v743 + 24);
            v248 = v748 + 1;
            if (v748 >= v747 >> 1)
            {
              sub_22C37E190(v747);
              sub_22C3B6EDC();
              v743 = v932;
            }

            *(v743 + 16) = v248;
            sub_22C36BA4C();
            v749();
            v745 += v180;
            --v742;
          }

          while (v742);
        }

        else
        {
        }

        v252 = v810;
        v74 = v913;
        sub_22C5CA5F4();
        v772();
        sub_22C37205C();
        sub_22C9069DC();
        sub_22C37BB00();
        sub_22C5CA520();
        v774 = v773();
        sub_22C5CA8A4(v774);
        sub_22C5CA510();
        v67 = v776 | v775;
        MEMORY[0x2318B4580]();
        sub_22C5CA830();
        sub_22C37BA44();
        sub_22C9070BC();
        sub_22C5CA3F4();
        sub_22C36D818();
        sub_22C37F8AC();
        sub_22C90708C();
        sub_22C36BA4C();
        v777();
        sub_22C3735C4();
        v778();
        sub_22C386A40();
        v779();
        sub_22C374D00();
        v21 = v923;
        if (v261)
        {
          __break(1u);
          goto LABEL_195;
        }

LABEL_118:
        v424 = sub_22C377FE0();
        v426 = v248;
LABEL_119:
        v425(v424, v426, v180);
        sub_22C5CA540();
      }

      goto LABEL_120;
    }

    sub_22C37F35C();
    sub_22C37BA1C();
    sub_22C5CA6C4();
    v648();
    sub_22C36BA4C();
    v649 = sub_22C5CA560();
    v650(v649);
    sub_22C386758();
    MEMORY[0x2318B4800]();
    sub_22C374490();
    sub_22C5C5EA0();
    v651 = sub_22C3759F4(v823);
    v164 = v927;
    v927(v651);
    sub_22C5CA714();
    (v164)();
    sub_22C37205C();
    MEMORY[0x2318B4810]();
    v652 = sub_22C37BB00();
    v654 = v653(v652, v808, v248);
    v248 = sub_22C5CAAAC(v654);
    MEMORY[0x2318B4580]();
    sub_22C5CA83C();
    sub_22C37443C();
    sub_22C9070BC();
    sub_22C5CA410();
    v655 = sub_22C383824();
    sub_22C5CAAE4(v655, v656, v657, v658);
    sub_22C385DC0();
    v74 = v925;
    v67 = v929;
    (v929)();
    v659 = sub_22C372158();
    (v67)(v659);
    v660 = sub_22C5CA450();
    v661(v660, v813);
    sub_22C3735C4();
    v662();
    v663 = sub_22C380550();
    (v67)(v663);
    sub_22C5CA42C();
    if (v261)
    {
      goto LABEL_218;
    }

LABEL_24:
    v324 = sub_22C377FE0();
    v326 = v248;
LABEL_58:
    v325(v324, v326, v180);
    sub_22C5CA540();
    sub_22C5CA904();
LABEL_59:
    v21 = v923;
LABEL_121:
    if (++v252 == v248)
    {
      goto LABEL_195;
    }
  }

  sub_22C37F35C();
  v489 = sub_22C37BA1C();
  v180 = v911;
  v490(v489, v911);
  sub_22C36BA4C();
  v491 = sub_22C5CA560();
  v492(v491);
  sub_22C374490();
  MEMORY[0x2318B3FE0]();
  v67 = v247;
  sub_22C901F7C();
  sub_22C386130();
  v493 = sub_22C36FC2C();
  v164 = v929;
  (v929)(v493);
  v494 = sub_22C36BA00();
  sub_22C5C13AC(v494, v495, v849);
  sub_22C3869F0();

  if ((v248 & 0x100000000) != 0)
  {
    v565 = sub_22C5CA450();
    v567 = v848;
LABEL_130:
    v566(v565, *(v567 - 32));
    sub_22C37EFC0();
    sub_22C3735C4();
    v586();
    v587 = sub_22C380550();
    (v164)(v587);
    sub_22C5CA904();
    sub_22C385DC0();
    goto LABEL_121;
  }

  v496 = sub_22C3759F4(v837);
  v927(v496);
  sub_22C5CAB1C(v248);
  v67 = v267;
  sub_22C906B2C();
  v252 = v164;
  sub_22C37BA44();
  sub_22C906B1C();
  sub_22C36FD6C();
  v498 = v497(v164, v825, v180);
  v248 = sub_22C5CA8C0(v498);
  MEMORY[0x2318B4580]();
  sub_22C5CA83C();
  sub_22C37443C();
  sub_22C9070BC();
  sub_22C5CA410();
  v499 = sub_22C383824();
  sub_22C5CADBC(v499, v500, v501, v502);
  v503 = sub_22C5CA450();
  v504(v503, v828);
  sub_22C3735C4();
  v505();
  v506 = sub_22C380550();
  (v164)(v506);
  sub_22C3827A0();
  if (*(v507 - 256) < v508)
  {
LABEL_108:
    sub_22C377FE0();
    sub_22C3806E8();
    v549();
    sub_22C5CA540();
LABEL_128:
    sub_22C5CA904();
    sub_22C5CAA7C();
    goto LABEL_121;
  }

  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  sub_22C90B54C();
  __break(1u);
}