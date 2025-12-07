uint64_t Handle.contactID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Handle.init(name:handleKind:contactID:isOwner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v11 = *a3;
  v12 = a3[1];
  v13 = *(a3 + 16);
  *a7 = a1;
  *(a7 + 8) = a2;
  result = sub_1B5E1BA74(0, 0, 0xFFu);
  *(a7 + 16) = v11;
  *(a7 + 24) = v12;
  *(a7 + 32) = v13;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
  return result;
}

uint64_t sub_1B5E1B254(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x694B656C646E6168 && a2 == 0xEA0000000000646ELL;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x72656E774F7369 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B5EA5F00();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1B5E1B3BC(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x694B656C646E6168;
      break;
    case 2:
      result = 0x49746361746E6F63;
      break;
    case 3:
      result = 0x72656E774F7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5E1B440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1B5EA5FD0();
  a4(v8, v6);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E1B494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E1B254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E1B4BC(uint64_t a1)
{
  v2 = sub_1B5E1BAA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E1B4F8(uint64_t a1)
{
  v2 = sub_1B5E1BAA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Handle.encode(to:)()
{
  sub_1B5DF7168();
  v18 = v1;
  v3 = v2;
  v4 = sub_1B5DF33E0(&qword_1EB90E2D0, &qword_1B5EB3868);
  sub_1B5DF5DA8();
  v6 = v5;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  v10 = *(v0 + 16);
  v16 = *(v0 + 24);
  v17 = v10;
  v22 = *(v0 + 32);
  v11 = *(v0 + 40);
  v14 = *(v0 + 48);
  v15 = v11;
  v13[3] = *(v0 + 56);
  sub_1B5DF3BFC(v3, v3[3]);
  sub_1B5E1BAA0();
  sub_1B5EA6040();
  LOBYTE(v19) = 0;
  v12 = v18;
  sub_1B5EA5E10();
  if (!v12)
  {
    v19 = v17;
    v20 = v16;
    v21 = v22;
    sub_1B5E1BA48(v17, v16, v22);
    sub_1B5E1BAF4();
    sub_1B5EA5E40();
    sub_1B5E1BA74(v19, v20, v21);
    LOBYTE(v19) = 2;
    sub_1B5EA5E10();
    LOBYTE(v19) = 3;
    sub_1B5EA5E60();
  }

  (*(v6 + 8))(v9, v4);
  sub_1B5DF7180();
}

void Handle.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B5DF7168();
  v25 = v24;
  v27 = v26;
  sub_1B5DF33E0(&qword_1EB90E2D8, &qword_1B5EB3870);
  sub_1B5DF5DA8();
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v28);
  sub_1B5DF3BFC(v25, v25[3]);
  sub_1B5E1BAA0();
  sub_1B5EA6030();
  if (v23)
  {
    sub_1B5DF3FB8(v25);

    sub_1B5E1BA74(0, 0, 0xFFu);
  }

  else
  {
    LOBYTE(v48) = 0;
    sub_1B5E1C524();
    v29 = sub_1B5EA5D30();
    v44 = v30;
    LOBYTE(v45) = 1;
    sub_1B5E1BB48();
    sub_1B5EA5D60();
    v41 = v29;
    v42 = v27;
    v31 = v49;
    v43 = v48;
    v32 = v50;
    sub_1B5E1BA74(0, 0, 0xFFu);
    LOBYTE(v48) = 2;
    sub_1B5E1C524();
    v33 = sub_1B5EA5D30();
    v35 = v34;
    v40 = v33;
    sub_1B5E1C524();
    v36 = sub_1B5EA5D80();
    v37 = sub_1B5E1C4F0();
    v38(v37);
    *&v45 = v41;
    *(&v45 + 1) = v44;
    *&v46 = v43;
    *(&v46 + 1) = v31;
    v47[0] = v32;
    *&v47[8] = v40;
    *&v47[16] = v35;
    v47[24] = v36 & 1;
    v39 = v46;
    *v42 = v45;
    v42[1] = v39;
    v42[2] = *v47;
    *(v42 + 41) = *&v47[9];
    sub_1B5E066DC(&v45, &v48);
    sub_1B5DF3FB8(v25);
    v48 = v41;
    v49 = v44;
    v50 = v43;
    v51 = v31;
    v52 = v32;
    v53 = v40;
    v54 = v35;
    v55 = v36 & 1;
    sub_1B5E06738(&v48);
  }

  sub_1B5DF7180();
}

uint64_t sub_1B5E1BA48(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B5E1BA5C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B5E1BA5C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1B5E1BA74(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B5E1BA88(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B5E1BA88(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1B5E1BAA0()
{
  result = qword_1EB90D278;
  if (!qword_1EB90D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D278);
  }

  return result;
}

unint64_t sub_1B5E1BAF4()
{
  result = qword_1EB90CE68;
  if (!qword_1EB90CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CE68);
  }

  return result;
}

unint64_t sub_1B5E1BB48()
{
  result = qword_1EB90CE60;
  if (!qword_1EB90CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CE60);
  }

  return result;
}

__n128 sub_1B5E1BB9C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B5E1BBB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t sub_1B5E1BC0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_1B5E1BC80(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B5E1BC94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_1B5E1BCD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

_BYTE *storeEnumTagSinglePayload for Handle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Handle.Kind.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B5E1BF08(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B5E1BFB8()
{
  result = qword_1EB90E2E0;
  if (!qword_1EB90E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E2E0);
  }

  return result;
}

unint64_t sub_1B5E1C010()
{
  result = qword_1EB90E2E8;
  if (!qword_1EB90E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E2E8);
  }

  return result;
}

unint64_t sub_1B5E1C068()
{
  result = qword_1EB90E2F0;
  if (!qword_1EB90E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E2F0);
  }

  return result;
}

unint64_t sub_1B5E1C0C0()
{
  result = qword_1EB90E2F8;
  if (!qword_1EB90E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E2F8);
  }

  return result;
}

unint64_t sub_1B5E1C118()
{
  result = qword_1EB90E300;
  if (!qword_1EB90E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E300);
  }

  return result;
}

unint64_t sub_1B5E1C170()
{
  result = qword_1EB90D268;
  if (!qword_1EB90D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D268);
  }

  return result;
}

unint64_t sub_1B5E1C1C8()
{
  result = qword_1EB90D270;
  if (!qword_1EB90D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D270);
  }

  return result;
}

unint64_t sub_1B5E1C220()
{
  result = qword_1EB90D238;
  if (!qword_1EB90D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D238);
  }

  return result;
}

unint64_t sub_1B5E1C278()
{
  result = qword_1EB90D240;
  if (!qword_1EB90D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D240);
  }

  return result;
}

unint64_t sub_1B5E1C2D0()
{
  result = qword_1EB90D210;
  if (!qword_1EB90D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D210);
  }

  return result;
}

unint64_t sub_1B5E1C328()
{
  result = qword_1EB90D218;
  if (!qword_1EB90D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D218);
  }

  return result;
}

unint64_t sub_1B5E1C380()
{
  result = qword_1EB90D228;
  if (!qword_1EB90D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D228);
  }

  return result;
}

unint64_t sub_1B5E1C3D8()
{
  result = qword_1EB90D230;
  if (!qword_1EB90D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D230);
  }

  return result;
}

unint64_t sub_1B5E1C430()
{
  result = qword_1EB90D250;
  if (!qword_1EB90D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D250);
  }

  return result;
}

unint64_t sub_1B5E1C488()
{
  result = qword_1EB90D258;
  if (!qword_1EB90D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D258);
  }

  return result;
}

uint64_t sub_1B5E1C548(uint64_t a1)
{

  return sub_1B5EA5D10();
}

uint64_t sub_1B5E1C568(uint64_t a1, uint64_t a2)
{

  return sub_1B5EA5E00();
}

uint64_t sub_1B5E1C590(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x796C706572 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B5EA5F00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B5E1C61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E1C590(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B5E1C648(uint64_t a1)
{
  v2 = sub_1B5E1C8F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E1C684(uint64_t a1)
{
  v2 = sub_1B5E1C8F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E1C6C0(uint64_t a1)
{
  v2 = sub_1B5E1C944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E1C6FC(uint64_t a1)
{
  v2 = sub_1B5E1C944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SuggestedAction.encode(to:)(void *a1)
{
  v2 = sub_1B5DF33E0(&qword_1EB90E308, &qword_1B5EB4000);
  sub_1B5DF5DA8();
  v4 = v3;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_1B5DF33E0(&qword_1EB90E310, &qword_1B5EB4008);
  sub_1B5DF5DA8();
  v10 = v9;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E1C8F0();
  sub_1B5EA6040();
  sub_1B5E1C944();
  sub_1B5EA5E00();
  (*(v4 + 8))(v7, v2);
  return (*(v10 + 8))(v13, v8);
}

unint64_t sub_1B5E1C8F0()
{
  result = qword_1EB90E318;
  if (!qword_1EB90E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E318);
  }

  return result;
}

unint64_t sub_1B5E1C944()
{
  result = qword_1EB90E320;
  if (!qword_1EB90E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E320);
  }

  return result;
}

uint64_t SuggestedAction.hashValue.getter()
{
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](0);
  return sub_1B5EA6020();
}

void SuggestedAction.init(from:)(void *a1)
{
  v3 = sub_1B5DF33E0(&qword_1EB90E328, &qword_1B5EB4010);
  sub_1B5DF5DA8();
  v37 = v4;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = sub_1B5DF33E0(&qword_1EB90E330, &qword_1B5EB4018);
  sub_1B5DF5DA8();
  v38 = v9;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E1C8F0();
  sub_1B5EA6030();
  if (v1)
  {
    goto LABEL_9;
  }

  v35 = v7;
  v36 = a1;
  v13 = sub_1B5EA5DE0();
  sub_1B5DF9704(v13, 0);
  v17 = v12;
  if (v15 == v16 >> 1)
  {
    v37 = v14;
LABEL_8:
    v28 = v8;
    v29 = v38;
    v30 = sub_1B5EA5BF0();
    swift_allocError();
    v32 = v31;
    sub_1B5DF33E0(&qword_1EB90DB08, &qword_1B5EAF520);
    *v32 = &type metadata for SuggestedAction;
    sub_1B5EA5D20();
    sub_1B5EA5BE0();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v29 + 8))(v17, v28);
    a1 = v36;
LABEL_9:
    v33 = a1;
    goto LABEL_10;
  }

  if (v15 < (v16 >> 1))
  {
    v18 = sub_1B5DFA42C();
    v20 = v19;
    v22 = v21;
    swift_unknownObjectRelease();
    v23 = v20 == v22 >> 1;
    v24 = v36;
    v25 = v37;
    if (v23)
    {
      sub_1B5E1C944();
      v26 = v35;
      sub_1B5EA5D10();
      v27 = v38;
      swift_unknownObjectRelease();
      (*(v25 + 8))(v26, v3);
      (*(v27 + 8))(v17, v8);
      v33 = v24;
LABEL_10:
      sub_1B5DF3FB8(v33);
      return;
    }

    v37 = v18;
    goto LABEL_8;
  }

  __break(1u);
}

unint64_t sub_1B5E1CDF4()
{
  result = qword_1EB90E338;
  if (!qword_1EB90E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E338);
  }

  return result;
}

_BYTE *sub_1B5E1CE58(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B5E1CF18()
{
  result = qword_1EB90E340;
  if (!qword_1EB90E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E340);
  }

  return result;
}

unint64_t sub_1B5E1CF70()
{
  result = qword_1EB90E348;
  if (!qword_1EB90E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E348);
  }

  return result;
}

unint64_t sub_1B5E1CFC8()
{
  result = qword_1EB90E350;
  if (!qword_1EB90E350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E350);
  }

  return result;
}

unint64_t sub_1B5E1D020()
{
  result = qword_1EB90E358;
  if (!qword_1EB90E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E358);
  }

  return result;
}

unint64_t sub_1B5E1D078()
{
  result = qword_1EB90E360;
  if (!qword_1EB90E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E360);
  }

  return result;
}

uint64_t type metadata accessor for Summary(uint64_t a1)
{
  result = qword_1ED7D2118;
  if (!qword_1ED7D2118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Summary.visualConcepts.getter()
{
  type metadata accessor for Summary(0);
}

uint64_t Summary.visualConcepts.setter()
{
  v2 = *(sub_1B5E1F374() + 28);

  *(v1 + v2) = v0;
  return result;
}

uint64_t Summary.suggestedActions.getter()
{
  type metadata accessor for Summary(0);
}

uint64_t Summary.suggestedActions.setter()
{
  v2 = *(sub_1B5E1F374() + 36);

  *(v1 + v2) = v0;
  return result;
}

uint64_t Summary.safetyClassification.getter()
{
  result = sub_1B5E1F3E4();
  *v0 = *(v1 + *(result + 40));
  return result;
}

uint64_t Summary.safetyClassification.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Summary(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t sub_1B5E1D5BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1B5E1F438(a1, a2, a3, a4);
  sub_1B5DF5EB8();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1B5E1D644(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1B5E1F438(a1, a2, a3, a4);
  sub_1B5DF5EB8();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t Summary.init(topic:topLine:synopsis:visualConcepts:visualTopLine:suggestedActions:safetyClassification:inferenceEnvironmentInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>, uint64_t a9@<X7>)
{
  v40 = *a7;
  v10 = sub_1B5EA4190();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v11, v12, v13, v10);
  v14 = type metadata accessor for Summary(0);
  v15 = v14[5];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v16, v17, v18, v10);
  v19 = v14[6];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v20, v21, v22, v10);
  v23 = v14[7];
  v24 = v14[8];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v25, v26, v27, v10);
  v28 = v14[10];
  *(a8 + v28) = 2;
  v29 = v14[11];
  type metadata accessor for InferenceEnvironmentInfo(0);
  sub_1B5DF5DF0();
  sub_1B5DF3658(v30, v31, v32, v33);
  sub_1B5E1F4A0(a1, a8);
  sub_1B5E1F4A0(a2, a8 + v15);
  sub_1B5E1F4A0(a3, a8 + v19);
  *(a8 + v23) = a4;
  sub_1B5E1F4A0(a5, a8 + v24);
  *(a8 + v14[9]) = a6;
  *(a8 + v28) = v40;
  return sub_1B5E1D644(a9, a8 + v29, &qword_1EB90D990, &qword_1B5EAE990);
}

uint64_t sub_1B5E1D82C(uint64_t a1, uint64_t a2)
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

    else
    {
      v7 = a1 == 0x736973706F6E7973 && a2 == 0xE800000000000000;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F436C6175736976 && a2 == 0xEE0073747065636ELL;
        if (v8 || (sub_1B5EA5F00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F546C6175736976 && a2 == 0xED0000656E694C70;
          if (v9 || (sub_1B5EA5F00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001B5EA8C30 == a2;
            if (v10 || (sub_1B5EA5F00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001B5EA8C50 == a2;
              if (v11 || (sub_1B5EA5F00() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000018 && 0x80000001B5EA7840 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1B5EA5F00();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B5E1DAB8(char a1)
{
  result = 0x6369706F74;
  switch(a1)
  {
    case 1:
      result = 0x656E694C706F74;
      break;
    case 2:
      result = 0x736973706F6E7973;
      break;
    case 3:
      result = 0x6F436C6175736976;
      break;
    case 4:
      result = 0x6F546C6175736976;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5E1DBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E1D82C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E1DBF4(uint64_t a1)
{
  v2 = sub_1B5E1DFC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E1DC30(uint64_t a1)
{
  v2 = sub_1B5E1DFC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Summary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1B5DF33E0(&qword_1EB90E370, &qword_1B5EB42C8);
  sub_1B5DF5DA8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E1DFC0();
  sub_1B5EA6040();
  LOBYTE(v19) = 0;
  sub_1B5EA4190();
  sub_1B5E1F2F4();
  sub_1B5E1E9E4(v11, v12, MEMORY[0x1E6968850]);
  sub_1B5E1F368();
  sub_1B5EA5E40();
  if (!v2)
  {
    v13 = type metadata accessor for Summary(0);
    sub_1B5E1F30C();
    sub_1B5E1F30C();
    v19 = *(v3 + v13[7]);
    v18 = 3;
    sub_1B5DF33E0(&qword_1EB90E378, &qword_1B5EB42D0);
    sub_1B5E1E8B0(&qword_1EB90CE20, &qword_1EB90D1C8, MEMORY[0x1E6968850], MEMORY[0x1E69E6300]);
    sub_1B5E1F354();
    sub_1B5EA5E40();
    sub_1B5E1F30C();
    v19 = *(v3 + v13[9]);
    v18 = 5;
    sub_1B5DF33E0(&qword_1EB90E380, &qword_1B5EB42D8);
    sub_1B5E1E014(&qword_1EB90CDD0, sub_1B5E1E08C, MEMORY[0x1E69E6300]);
    sub_1B5E1F354();
    sub_1B5EA5EA0();
    LOBYTE(v19) = *(v3 + v13[10]);
    v18 = 6;
    sub_1B5E1E0E0();
    sub_1B5EA5E40();
    LOBYTE(v19) = 7;
    type metadata accessor for InferenceEnvironmentInfo(0);
    sub_1B5E1F33C();
    sub_1B5E1E9E4(v14, v15, &protocol conformance descriptor for InferenceEnvironmentInfo);
    sub_1B5E1F354();
    sub_1B5EA5E40();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B5E1DFC0()
{
  result = qword_1EB90D208;
  if (!qword_1EB90D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D208);
  }

  return result;
}

uint64_t sub_1B5E1E014(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B5DFD694(&qword_1EB90E380, &qword_1B5EB42D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B5E1E08C()
{
  result = qword_1EB90D0E0;
  if (!qword_1EB90D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D0E0);
  }

  return result;
}

unint64_t sub_1B5E1E0E0()
{
  result = qword_1EB90CEF8;
  if (!qword_1EB90CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CEF8);
  }

  return result;
}

uint64_t Summary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_1B5DF33E0(&qword_1EB90D990, &qword_1B5EAE990);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = v57 - v4;
  v5 = sub_1B5DF33E0(&qword_1EB90E368, &qword_1B5EB42C0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v61 = v57 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v57 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v62 = v57 - v13;
  sub_1B5DF33E0(&qword_1EB90E388, &qword_1B5EB42E0);
  sub_1B5DF5DA8();
  v63 = v15;
  v64 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v57 - v16;
  v18 = type metadata accessor for Summary(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B5EA4190();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v23, v24, v25, v22);
  v68 = v18[5];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v26, v27, v28, v22);
  v72 = v18[6];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v29, v30, v31, v22);
  v69 = v18[8];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v32, v33, v34, v22);
  v35 = v18[10];
  v21[v35] = 2;
  v65 = v18;
  v36 = v18[11];
  v37 = type metadata accessor for InferenceEnvironmentInfo(0);
  v70 = v36;
  sub_1B5DF5DF0();
  sub_1B5DF3658(v38, v39, v40, v37);
  v41 = a1[3];
  v71 = a1;
  sub_1B5DF3BFC(a1, v41);
  sub_1B5E1DFC0();
  v66 = v17;
  v42 = v67;
  sub_1B5EA6030();
  if (v42)
  {
    v46 = v68;
    v47 = v69;
    sub_1B5DF3FB8(v71);
    sub_1B5E1F470(v21);
    sub_1B5E1F470(&v21[v46]);
    sub_1B5E1F470(&v21[v72]);

    sub_1B5E1F470(&v21[v47]);
    return sub_1B5DF4428(&v21[v70], &qword_1EB90D990, &qword_1B5EAE990);
  }

  else
  {
    v67 = v35;
    v57[1] = v37;
    LOBYTE(v74) = 0;
    sub_1B5E1F2F4();
    sub_1B5E1E9E4(v43, v44, MEMORY[0x1E6968868]);
    v45 = v62;
    sub_1B5E1F368();
    sub_1B5E1F38C();
    sub_1B5EA5D60();
    sub_1B5E1D644(v45, v21, &qword_1EB90E368, &qword_1B5EB42C0);
    LOBYTE(v74) = 1;
    sub_1B5E1F368();
    sub_1B5EA5D60();
    sub_1B5E1D644(v12, &v21[v68], &qword_1EB90E368, &qword_1B5EB42C0);
    LOBYTE(v74) = 2;
    v48 = v61;
    sub_1B5E1F368();
    sub_1B5E1F38C();
    sub_1B5EA5D60();
    v49 = v69;
    sub_1B5E1D644(v48, &v21[v72], &qword_1EB90E368, &qword_1B5EB42C0);
    sub_1B5DF33E0(&qword_1EB90E378, &qword_1B5EB42D0);
    v73 = 3;
    sub_1B5E1E8B0(&qword_1EB90CE18, &qword_1EB90D1C0, MEMORY[0x1E6968868], MEMORY[0x1E69E6330]);
    sub_1B5E1F3FC();
    sub_1B5E1F38C();
    sub_1B5EA5D60();
    *&v21[v65[7]] = v74;
    LOBYTE(v74) = 4;
    v50 = v60;
    sub_1B5E1F368();
    sub_1B5EA5D60();
    sub_1B5E1D644(v50, &v21[v49], &qword_1EB90E368, &qword_1B5EB42C0);
    sub_1B5DF33E0(&qword_1EB90E380, &qword_1B5EB42D8);
    v73 = 5;
    sub_1B5E1E014(&qword_1EB90CDC8, sub_1B5E1E93C, MEMORY[0x1E69E6330]);
    sub_1B5E1F3FC();
    sub_1B5E1F38C();
    sub_1B5EA5DC0();
    *&v21[v65[9]] = v74;
    v73 = 6;
    sub_1B5E1E990();
    sub_1B5E1F38C();
    sub_1B5EA5D60();
    v21[v67] = v74;
    LOBYTE(v74) = 7;
    sub_1B5E1F33C();
    sub_1B5E1E9E4(v51, v52, &protocol conformance descriptor for InferenceEnvironmentInfo);
    v53 = v59;
    sub_1B5E1F38C();
    sub_1B5EA5D60();
    v54 = sub_1B5E1F398();
    v55(v54);
    sub_1B5E1D644(v53, &v21[v70], &qword_1EB90D990, &qword_1B5EAE990);
    sub_1B5E1EA2C(v21, v58);
    sub_1B5DF3FB8(v71);
    return sub_1B5E1EA90(v21);
  }
}

uint64_t sub_1B5E1E8B0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B5DFD694(&qword_1EB90E378, &qword_1B5EB42D0);
    sub_1B5E1F2F4();
    sub_1B5E1E9E4(a2, v8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B5E1E93C()
{
  result = qword_1EB90D0D8;
  if (!qword_1EB90D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D0D8);
  }

  return result;
}

unint64_t sub_1B5E1E990()
{
  result = qword_1EB90D280;
  if (!qword_1EB90D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D280);
  }

  return result;
}

uint64_t sub_1B5E1E9E4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B5E1EA2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Summary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E1EA90(uint64_t a1)
{
  v2 = type metadata accessor for Summary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void Summary.init(topic:topLine:synopsis:visualConcepts:visualTopLine:suggestedActions:safetyClassification:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X6>, uint64_t a6@<X8>, uint64_t a7@<X3>, uint64_t a8@<X5>)
{
  HIDWORD(v43) = *a5;
  v11 = sub_1B5EA4190();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v12, v13, v14, v11);
  v15 = type metadata accessor for Summary(0);
  v16 = v15[5];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v17, v18, v19, v11);
  v20 = v15[6];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v21, v22, v23, v11);
  v24 = v15[8];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v25, v26, v27, v11);
  sub_1B5E1F3C0();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v28, v29, v30, v31);
  sub_1B5E1F3A8(a1, a6);
  sub_1B5E1F3A8(a2, a6 + v16);
  sub_1B5E1F3A8(a3, a6 + v20);
  v32 = sub_1B5E1F3A8(a4, a6 + v24);
  sub_1B5E1F424(v32, v33, v34, v35, v36, v37, v38, v39, a2, a3, a4, v43, a7, a8);
  *(a6 + v8) = v44;
}

uint64_t Summary.init(topic:topLine:synopsis:suggestedActions:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>, uint64_t a5@<X2>)
{
  v6 = sub_1B5EA4190();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v7, v8, v9, v6);
  v10 = type metadata accessor for Summary(0);
  v11 = v10[5];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v12, v13, v14, v6);
  v15 = v10[6];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v16, v17, v18, v6);
  v20 = v10[7];
  v19 = v10[8];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v21, v22, v23, v6);
  v24 = v10[10];
  *(a2 + v24) = 2;
  type metadata accessor for InferenceEnvironmentInfo(0);
  sub_1B5DF5DF0();
  sub_1B5DF3658(v25, v26, v27, v28);
  sub_1B5E1D644(a3, a2, &qword_1EB90E368, &qword_1B5EB42C0);
  sub_1B5E1D644(a4, a2 + v11, &qword_1EB90E368, &qword_1B5EB42C0);
  sub_1B5E1D644(a5, a2 + v15, &qword_1EB90E368, &qword_1B5EB42C0);
  sub_1B5DF4428(a2 + v19, &qword_1EB90E368, &qword_1B5EB42C0);
  sub_1B5DF5DF0();
  result = sub_1B5DF3658(v29, v30, v31, v6);
  *(a2 + v20) = 0;
  *(a2 + v10[9]) = a1;
  *(a2 + v24) = 2;
  return result;
}

void Summary.init(topic:topLine:synopsis:visualConcepts:visualTopLine:suggestedActions:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>, uint64_t a6@<X3>, uint64_t a7@<X5>)
{
  v10 = sub_1B5EA4190();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v11, v12, v13, v10);
  v14 = type metadata accessor for Summary(0);
  v15 = v14[5];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v16, v17, v18, v10);
  v19 = v14[6];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v20, v21, v22, v10);
  v23 = v14[8];
  sub_1B5DF5DF0();
  sub_1B5DF3658(v24, v25, v26, v10);
  sub_1B5E1F3C0();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v27, v28, v29, v30);
  sub_1B5E1F3A8(a1, a5);
  sub_1B5E1F3A8(a2, a5 + v15);
  sub_1B5E1F3A8(a3, a5 + v19);
  v31 = sub_1B5E1F3A8(a4, a5 + v23);
  sub_1B5E1F424(v31, v32, v33, v34, v35, v36, v37, v38, v39, a2, a3, a4, a6, a7);
  *(a5 + v7) = 2;
}

uint64_t sub_1B5E1EEE4(uint64_t a1)
{
  sub_1B5E1F0BC(319, &qword_1ED7D29B0, MEMORY[0x1E6968848]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1B5E1F058(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1B5E07014(319, &qword_1ED7D2020, &type metadata for SuggestedAction, MEMORY[0x1E69E62F8]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_1B5E07014(319, qword_1ED7D2BA8, &type metadata for SummarySafetyClassification, MEMORY[0x1E69E6720]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_1B5E1F0BC(319, qword_1ED7D2C08, type metadata accessor for InferenceEnvironmentInfo);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_1B5E1F058(uint64_t a1)
{
  if (!qword_1ED7D2038)
  {
    sub_1B5DFD694(&qword_1EB90E378, &qword_1B5EB42D0);
    v1 = sub_1B5EA5AD0();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7D2038);
    }
  }
}

void sub_1B5E1F0BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B5EA5AD0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Summary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B5E1F1F0()
{
  result = qword_1EB90E390;
  if (!qword_1EB90E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E390);
  }

  return result;
}

unint64_t sub_1B5E1F248()
{
  result = qword_1EB90D1F8;
  if (!qword_1EB90D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D1F8);
  }

  return result;
}

unint64_t sub_1B5E1F2A0()
{
  result = qword_1EB90D200;
  if (!qword_1EB90D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D200);
  }

  return result;
}

uint64_t sub_1B5E1F30C()
{
  *(v2 - 72) = v1;

  return sub_1B5EA5E40();
}

uint64_t sub_1B5E1F374()
{

  return type metadata accessor for Summary(0);
}

uint64_t sub_1B5E1F3A8(uint64_t a1, uint64_t a2)
{

  return sub_1B5E1D644(a1, a2, v2, v3);
}

uint64_t sub_1B5E1F3C0()
{
  *(v0 + *(v1 + 40)) = 2;

  return type metadata accessor for InferenceEnvironmentInfo(0);
}

uint64_t sub_1B5E1F3E4()
{

  return type metadata accessor for Summary(0);
}

uint64_t sub_1B5E1F438(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1B5DF33E0(a3, a4);
}

uint64_t sub_1B5E1F458@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1B5E1D644(v3, v4 + a3, a1, a2);
}

uint64_t sub_1B5E1F470(uint64_t a1)
{

  return sub_1B5DF4428(a1, v1, v2);
}

uint64_t sub_1B5E1F488@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1B5E1D5BC(v4 + a3, v3, a1, a2);
}

uint64_t sub_1B5E1F4A0(uint64_t a1, uint64_t a2)
{

  return sub_1B5E1D644(a1, a2, v3, v2);
}

uint64_t sub_1B5E1F4C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656661537369 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B5EA5F00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B5E1F554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E1F4C8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B5E1F580(uint64_t a1)
{
  v2 = sub_1B5E1F720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E1F5BC(uint64_t a1)
{
  v2 = sub_1B5E1F720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SummarySafetyClassification.encode(to:)(void *a1)
{
  sub_1B5DF33E0(&qword_1EB90E398, &qword_1B5EB44A0);
  sub_1B5E1FC14();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E1F720();
  sub_1B5EA6040();
  sub_1B5EA5E60();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_1B5E1F720()
{
  result = qword_1ED7D1F40;
  if (!qword_1ED7D1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D1F40);
  }

  return result;
}

uint64_t SummarySafetyClassification.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1B5DF33E0(&qword_1EB90E3A0, &qword_1B5EB44A8);
  sub_1B5E1FC14();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E1F720();
  sub_1B5EA6030();
  if (!v2)
  {
    v11 = sub_1B5EA5D80();
    (*(v7 + 8))(v10, v3);
    *a2 = v11 & 1;
  }

  return sub_1B5DF3FB8(a1);
}

uint64_t getEnumTagSinglePayload for SummarySafetyClassification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SummarySafetyClassification(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SummarySafetyClassification.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B5E1FB10()
{
  result = qword_1EB90E3A8;
  if (!qword_1EB90E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E3A8);
  }

  return result;
}

unint64_t sub_1B5E1FB68()
{
  result = qword_1ED7D1F30;
  if (!qword_1ED7D1F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D1F30);
  }

  return result;
}

unint64_t sub_1B5E1FBC0()
{
  result = qword_1ED7D1F38;
  if (!qword_1ED7D1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D1F38);
  }

  return result;
}

uint64_t sub_1B5E1FCA8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B5EA53B0();
  sub_1B5E1FE5C(v3, a2);
  sub_1B5DFD794(v3, a2);
  sub_1B5EA4E20();
  return sub_1B5EA5390();
}

uint64_t sub_1B5E1FD34()
{
  v0 = sub_1B5EA53B0();
  sub_1B5E1FE5C(v0, qword_1EB90D180);
  sub_1B5DFD794(v0, qword_1EB90D180);
  sub_1B5EA4E20();
  return sub_1B5EA5390();
}

uint64_t sub_1B5E1FDC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = sub_1B5EA53B0();
  v8 = sub_1B5DFD794(v7, a2);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t *sub_1B5E1FE5C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

BOOL related decl e for ClassificationClientError.isDataValidationMissingRequiredDataErrorCode.getter()
{
  type metadata accessor for ClassificationClientError(0);
  sub_1B5E1FF38();
  sub_1B5E2000C();
  if (v1 < 4000)
  {
    return 0;
  }

  sub_1B5E2000C();
  return v1 < 4200;
}

unint64_t sub_1B5E1FF38()
{
  result = qword_1EB90DA50;
  if (!qword_1EB90DA50)
  {
    type metadata accessor for ClassificationClientError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DA50);
  }

  return result;
}

BOOL related decl e for ClassificationClientError.isDataValidationInvalidInputErrorCode.getter()
{
  type metadata accessor for ClassificationClientError(0);
  sub_1B5E1FF38();
  sub_1B5E2000C();
  if (v1 < 5000)
  {
    return 0;
  }

  sub_1B5E2000C();
  return v1 < 5200;
}

uint64_t sub_1B5E2000C()
{

  return sub_1B5EA41E0();
}

uint64_t ClassificationXPCRequest.Error.hashValue.getter()
{
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](0);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E200E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B5E26258(12383) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B5E26258(12639);

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B5E20184(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D726177657270 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001B5EA7470 == a2;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001B5EA7490 == a2;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x80000001B5EA74B0 == a2;
        if (v8 || (sub_1B5EA5F00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000019 && 0x80000001B5EA74D0 == a2;
          if (v9 || (sub_1B5EA5F00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000019 && 0x80000001B5EA74F0 == a2;
            if (v10 || (sub_1B5EA5F00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001ELL && 0x80000001B5EA7510 == a2;
              if (v11 || (sub_1B5EA5F00() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000014 && 0x80000001B5EA8D30 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1B5EA5F00();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B5E203FC(char a1)
{
  result = 0x6D726177657270;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5E2050C(uint64_t a1)
{
  v2 = sub_1B5E21B84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E20548(uint64_t a1)
{
  v2 = sub_1B5E21B84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E20584(uint64_t a1)
{
  v2 = sub_1B5E2198C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E205C0(uint64_t a1)
{
  v2 = sub_1B5E2198C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E205FC(uint64_t a1)
{
  v2 = sub_1B5E21A90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E20638(uint64_t a1)
{
  v2 = sub_1B5E21A90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E20674(uint64_t a1)
{
  v2 = sub_1B5E21938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E206B0(uint64_t a1)
{
  v2 = sub_1B5E21938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E206EC(uint64_t a1)
{
  v2 = sub_1B5E219E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E20728(uint64_t a1)
{
  v2 = sub_1B5E219E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E20764(uint64_t a1)
{
  v2 = sub_1B5E218E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E207A0(uint64_t a1)
{
  v2 = sub_1B5E218E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E207E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E20184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E2080C(uint64_t a1)
{
  v2 = sub_1B5E217D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E20848(uint64_t a1)
{
  v2 = sub_1B5E217D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E20884(uint64_t a1)
{
  v2 = sub_1B5E21BD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E208C0(uint64_t a1)
{
  v2 = sub_1B5E21BD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E208FC(uint64_t a1)
{
  v2 = sub_1B5E21890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E20938(uint64_t a1)
{
  v2 = sub_1B5E21890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClassificationXPCRequest.Request.encode(to:)(void *a1)
{
  v132 = sub_1B5DF33E0(&qword_1EB90E3B0, &qword_1B5EB4740);
  sub_1B5DF5DA8();
  v130 = v3;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5DFA50C();
  sub_1B5E26144(v5);
  sub_1B5DF33E0(&qword_1EB90E3B8, &qword_1B5EB4748);
  sub_1B5DF5DA8();
  v136 = v7;
  v137 = v6;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5DFA50C();
  v135 = v9;
  sub_1B5DF33E0(&qword_1EB90E3C0, &qword_1B5EB4750);
  sub_1B5DF5DA8();
  v133 = v11;
  v134 = v10;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v12);
  sub_1B5DFA50C();
  v131 = v13;
  v129 = sub_1B5DF33E0(&qword_1EB90E3C8, &qword_1B5EB4758);
  sub_1B5DF5DA8();
  v128 = v14;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v15);
  sub_1B5DFA50C();
  sub_1B5E26144(v16);
  v126 = sub_1B5DF33E0(&qword_1EB90E3D0, &qword_1B5EB4760);
  sub_1B5DF5DA8();
  v125 = v17;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v18);
  sub_1B5DFA50C();
  sub_1B5E26144(v19);
  v122[6] = type metadata accessor for UserNotification(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v20);
  sub_1B5DFD7E8();
  v139 = v22 - v21;
  v123 = sub_1B5DF33E0(&qword_1EB90E3D8, &qword_1B5EB4768);
  sub_1B5DF5DA8();
  v122[8] = v23;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v24);
  sub_1B5DFA50C();
  sub_1B5E26144(v25);
  v122[1] = type metadata accessor for TextMessage(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v26);
  sub_1B5DFD7E8();
  v138 = v28 - v27;
  v122[5] = sub_1B5DF33E0(&qword_1EB90E3E0, &qword_1B5EB4770);
  sub_1B5DF5DA8();
  v122[4] = v29;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v30);
  sub_1B5DFA50C();
  sub_1B5E26144(v31);
  type metadata accessor for MailMessage(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v32);
  sub_1B5DFD7E8();
  sub_1B5E26144(v34 - v33);
  v35 = sub_1B5DF33E0(&qword_1EB90E3E8, &qword_1B5EB4778);
  sub_1B5DF5DA8();
  v122[0] = v36;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v122 - v38;
  type metadata accessor for ClassificationXPCRequest.Request(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v40);
  sub_1B5DFD7E8();
  v43 = v42 - v41;
  sub_1B5DF33E0(&qword_1EB90E3F0, &qword_1B5EB4780);
  sub_1B5DF5DA8();
  v141 = v44;
  v142 = v45;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v122 - v47;
  v49 = a1[3];
  sub_1B5DF3BFC(a1, v49);
  sub_1B5E217D8();
  v144 = v48;
  sub_1B5EA6040();
  sub_1B5E2182C(v140, v43);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v85 = sub_1B5DF33E0(&qword_1EB90E440, &qword_1B5EB5B20);
      sub_1B5E26150(v85);
      v87 = *(v86 + 24);
      v88 = v138;
      sub_1B5E21A34(v43, v138, type metadata accessor for TextMessage);
      LOBYTE(v145[0]) = 2;
      sub_1B5E21A90();
      v89 = v122[7];
      sub_1B5E260F8();
      sub_1B5EA5E00();
      LOBYTE(v145[0]) = 0;
      sub_1B5E26000();
      sub_1B5E21AE4(v90, v91, &protocol conformance descriptor for TextMessage);
      v92 = v123;
      v93 = v143;
      sub_1B5EA5EA0();
      if (v93)
      {

        sub_1B5E25FA0();
        v94(v89, v92);
        sub_1B5E26018();
        v77 = v88;
        goto LABEL_13;
      }

      sub_1B5E26220();
      v147 = v87;
      v148 = 1;
      sub_1B5E11DC0();
      sub_1B5E2608C();
      sub_1B5EA5EA0();
      sub_1B5E25FA0();
      v114(v89, v92);
      sub_1B5E26018();
      sub_1B5E21B2C(v138, v115);
      v116 = sub_1B5E25F5C();
      v117(v116);
      goto LABEL_25;
    case 2u:
      v66 = v43 + *(sub_1B5DF33E0(&qword_1EB90E438, &unk_1B5EB47A0) + 48);
      v67 = *(v66 + 8);
      v140 = *v66;
      LODWORD(v138) = *(v66 + 16);
      v68 = *(v66 + 24);
      v69 = v139;
      sub_1B5E21A34(v43, v139, type metadata accessor for UserNotification);
      LOBYTE(v145[0]) = 3;
      sub_1B5E219E0();
      v70 = v124;
      sub_1B5E260F8();
      sub_1B5EA5E00();
      LOBYTE(v145[0]) = 0;
      sub_1B5E26030();
      sub_1B5E21AE4(v71, v72, &protocol conformance descriptor for UserNotification);
      v73 = v126;
      v74 = v143;
      sub_1B5EA5EA0();
      if (!v74)
      {
        v145[0] = v140;
        v145[1] = v67;
        v146 = v138;
        v147 = v68;
        v148 = 1;
        sub_1B5E1810C();
        sub_1B5E2608C();
        sub_1B5EA5EA0();
        sub_1B5E25FA0();
        v106(v70, v73);
        sub_1B5E25E80();
        sub_1B5E21B2C(v139, v107);
        v108 = sub_1B5E25F5C();
        v109(v108);
      }

      sub_1B5E25FA0();
      v75(v70, v73);
      sub_1B5E25E80();
      v77 = v69;
LABEL_13:
      sub_1B5E21B2C(v77, v76);
      v61 = sub_1B5E25F5C();
      return v60(v61, v62);
    case 3u:
      sub_1B5E2617C();
      LOBYTE(v145[0]) = 4;
      sub_1B5E2198C();
      sub_1B5E25FAC(&type metadata for ClassificationXPCRequest.Request.ClassifyMailMessageThreadCodingKeys, v145);
      v145[0] = v48;
      v148 = 0;
      v78 = sub_1B5E26240();
      sub_1B5DF33E0(v78, v79);
      sub_1B5E25E98(&qword_1EB90E430);
      v80 = sub_1B5E2608C();
      sub_1B5E26104(v80);
      if (v1)
      {
        goto LABEL_15;
      }

      sub_1B5E25F7C();
      sub_1B5E06C00();
      v110 = sub_1B5E2608C();
      sub_1B5E261BC(v110);
      goto LABEL_24;
    case 4u:
      sub_1B5E2617C();
      LOBYTE(v145[0]) = 5;
      sub_1B5E21938();
      sub_1B5E25FAC(&type metadata for ClassificationXPCRequest.Request.ClassifyTextMessageThreadCodingKeys, v145);
      v145[0] = v48;
      v148 = 0;
      v63 = sub_1B5E26240();
      sub_1B5DF33E0(v63, v64);
      sub_1B5E25E98(&qword_1EB90D078);
      v65 = sub_1B5E2608C();
      sub_1B5E26104(v65);
      if (v1)
      {
        goto LABEL_15;
      }

      sub_1B5E25F7C();
      sub_1B5E11F20();
      v105 = sub_1B5E2608C();
      sub_1B5E261BC(v105);
      goto LABEL_24;
    case 5u:
      sub_1B5E2617C();
      LOBYTE(v145[0]) = 6;
      sub_1B5E218E4();
      sub_1B5E25FAC(&type metadata for ClassificationXPCRequest.Request.ClassifyUserNotificationThreadCodingKeys, v145);
      v145[0] = v48;
      v148 = 0;
      v95 = sub_1B5E26240();
      sub_1B5DF33E0(v95, v96);
      sub_1B5E25E98(&qword_1EB90E410);
      v97 = sub_1B5E2608C();
      sub_1B5E26104(v97);
      if (v1)
      {
LABEL_15:

        v98 = sub_1B5E25F5C();
        v99(v98);
        sub_1B5E260B8();
        v100(v35, v49);
      }

      sub_1B5E25F7C();
      sub_1B5E1826C();
      v118 = sub_1B5E2608C();
      sub_1B5E261BC(v118);
LABEL_24:
      v119 = sub_1B5E25F5C();
      v120(v119);
      sub_1B5E260B8();
      v121(v144, v49);
      goto LABEL_25;
    case 6u:
      LOBYTE(v145[0]) = 7;
      sub_1B5E21890();
      v101 = v127;
      v102 = v141;
      v103 = v144;
      sub_1B5EA5E00();
      v104 = v132;
      sub_1B5EA5E70();
      (*(v130 + 8))(v101, v104);
      sub_1B5E260B8();
      v61 = v103;
      v62 = v102;
      return v60(v61, v62);
    case 7u:
      LOBYTE(v145[0]) = 0;
      sub_1B5E21BD8();
      sub_1B5EA5E00();
      sub_1B5E25FA0();
      v81(v39, v35);
      sub_1B5E260B8();
      v82 = sub_1B5E26234();
      return v83(v82);
    default:
      v50 = sub_1B5DF33E0(&qword_1EB90E448, &qword_1B5EB47B0);
      sub_1B5E26150(v50);
      v52 = *(v51 + 24);
      sub_1B5E21A34(v43, v122[2], type metadata accessor for MailMessage);
      LOBYTE(v145[0]) = 1;
      sub_1B5E21B84();
      v53 = v141;
      v54 = v144;
      sub_1B5EA5E00();
      LOBYTE(v145[0]) = 0;
      sub_1B5E25FD4();
      sub_1B5E21AE4(v55, v56, &protocol conformance descriptor for MailMessage);
      v57 = v143;
      sub_1B5EA5EA0();
      if (v57)
      {

        sub_1B5E25FA0();
        v58 = sub_1B5E26234();
        v59(v58);
        sub_1B5E26054();
        sub_1B5E260B8();
        v61 = v54;
        v62 = v53;
        return v60(v61, v62);
      }

      else
      {
        sub_1B5E26220();
        v147 = v52;
        v148 = 1;
        sub_1B5E06AA0();
        sub_1B5E2608C();
        sub_1B5EA5EA0();
        sub_1B5E25FA0();
        v111 = sub_1B5E26234();
        v112(v111);
        sub_1B5E26054();
        sub_1B5E260B8();
        v113(v54, v53);
LABEL_25:
      }
  }
}

unint64_t sub_1B5E217D8()
{
  result = qword_1EB90D3F8;
  if (!qword_1EB90D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3F8);
  }

  return result;
}

uint64_t sub_1B5E2182C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationXPCRequest.Request(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B5E21890()
{
  result = qword_1EB90E3F8;
  if (!qword_1EB90E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E3F8);
  }

  return result;
}

unint64_t sub_1B5E218E4()
{
  result = qword_1EB90E400;
  if (!qword_1EB90E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E400);
  }

  return result;
}

unint64_t sub_1B5E21938()
{
  result = qword_1EB90D360;
  if (!qword_1EB90D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D360);
  }

  return result;
}

unint64_t sub_1B5E2198C()
{
  result = qword_1EB90E420;
  if (!qword_1EB90E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E420);
  }

  return result;
}

unint64_t sub_1B5E219E0()
{
  result = qword_1EB90D388;
  if (!qword_1EB90D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D388);
  }

  return result;
}

uint64_t sub_1B5E21A34(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1B5DF5EB8();
  v4 = sub_1B5DFA488();
  v5(v4);
  return a2;
}

unint64_t sub_1B5E21A90()
{
  result = qword_1EB90D3B0;
  if (!qword_1EB90D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3B0);
  }

  return result;
}

uint64_t sub_1B5E21AE4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B5E21B2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1B5DF5EB8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1B5E21B84()
{
  result = qword_1EB90D3C8;
  if (!qword_1EB90D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3C8);
  }

  return result;
}

unint64_t sub_1B5E21BD8()
{
  result = qword_1EB90D3E0;
  if (!qword_1EB90D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3E0);
  }

  return result;
}

uint64_t ClassificationXPCRequest.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v151 = a2;
  v148 = sub_1B5DF33E0(&qword_1EB90E450, &qword_1B5EB47B8);
  sub_1B5DF5DA8();
  v140 = v3;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5DFA50C();
  v157 = v5;
  v150 = sub_1B5DF33E0(&qword_1EB90E458, &qword_1B5EB47C0);
  sub_1B5DF5DA8();
  v142 = v6;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5DFA50C();
  v164 = v8;
  v149 = sub_1B5DF33E0(&qword_1EB90E460, &qword_1B5EB47C8);
  sub_1B5DF5DA8();
  v141 = v9;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5DFA50C();
  v158 = v11;
  v147 = sub_1B5DF33E0(&qword_1EB90E468, &qword_1B5EB47D0);
  sub_1B5DF5DA8();
  v139 = v12;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v13);
  sub_1B5DFA50C();
  v156 = v14;
  v146 = sub_1B5DF33E0(&qword_1EB90E470, &qword_1B5EB47D8);
  sub_1B5DF5DA8();
  v138 = v15;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v16);
  sub_1B5DFA50C();
  v155 = v17;
  v163 = sub_1B5DF33E0(&qword_1EB90E478, &qword_1B5EB47E0);
  sub_1B5DF5DA8();
  v137 = v18;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v19);
  sub_1B5DFA50C();
  v154 = v20;
  v145 = sub_1B5DF33E0(&qword_1EB90E480, &qword_1B5EB47E8);
  sub_1B5DF5DA8();
  v136 = v21;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v22);
  sub_1B5DFA50C();
  v153 = v23;
  v144 = sub_1B5DF33E0(&qword_1EB90E488, &qword_1B5EB47F0);
  sub_1B5DF5DA8();
  v143 = v24;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v25);
  sub_1B5DFA50C();
  v152 = v26;
  v162 = sub_1B5DF33E0(&qword_1EB90E490, &unk_1B5EB47F8);
  sub_1B5DF5DA8();
  v160 = v27;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v129 - v29;
  v159 = type metadata accessor for ClassificationXPCRequest.Request(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v31);
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v32);
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v33);
  sub_1B5E2616C();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v129 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v129 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v129 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = &v129 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v129 - v47;
  v165 = a1;
  v49 = sub_1B5E26240();
  sub_1B5DF3BFC(v49, v50);
  sub_1B5E217D8();
  v161 = v30;
  v51 = v166;
  sub_1B5EA6030();
  if (v51)
  {
    goto LABEL_9;
  }

  v131 = v37;
  v132 = v46;
  v133 = v43;
  v134 = v40;
  v166 = v48;
  sub_1B5EA5DE0();
  result = sub_1B5DFA434();
  if (v54 == v55 >> 1)
  {
LABEL_8:
    v68 = v159;
    v69 = sub_1B5EA5BF0();
    swift_allocError();
    v71 = v70;
    sub_1B5DF33E0(&qword_1EB90DB08, &qword_1B5EAF520);
    *v71 = v68;
    sub_1B5EA5D20();
    sub_1B5EA5BE0();
    (*(*(v69 - 8) + 104))(v71, *MEMORY[0x1E69E6AF8], v69);
    swift_willThrow();
    swift_unknownObjectRelease();
    v72 = sub_1B5E25F50();
    v73(v72);
LABEL_9:
    v74 = v165;
    return sub_1B5DF3FB8(v74);
  }

  v130 = 0;
  if (v54 < (v55 >> 1))
  {
    v129 = *(v53 + v54);
    v56 = sub_1B5DFA42C();
    v58 = v57;
    v60 = v59;
    swift_unknownObjectRelease();
    v61 = v56;
    if (v58 == v60 >> 1)
    {
      v62 = v130;
      switch(v129)
      {
        case 1:
          LOBYTE(v167) = 1;
          sub_1B5E21B84();
          sub_1B5E25EF0(&type metadata for ClassificationXPCRequest.Request.ClassifyMailMessageCodingKeys);
          v164 = v61;
          type metadata accessor for MailMessage(0);
          LOBYTE(v167) = 0;
          sub_1B5E25FD4();
          sub_1B5E21AE4(v84, v85, &protocol conformance descriptor for MailMessage);
          v79 = v132;
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          sub_1B5DF33E0(&qword_1EB90E448, &qword_1B5EB47B0);
          sub_1B5E2619C();
          sub_1B5E06A48();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          swift_unknownObjectRelease();
          v120 = sub_1B5E26048();
          v121(v120);
          v122 = sub_1B5E25F14();
          v123(v122);
          goto LABEL_19;
        case 2:
          LOBYTE(v167) = 2;
          sub_1B5E21A90();
          sub_1B5E25EF0(&type metadata for ClassificationXPCRequest.Request.ClassifyTextMessageCodingKeys);
          v164 = v61;
          type metadata accessor for TextMessage(0);
          LOBYTE(v167) = 0;
          sub_1B5E26000();
          sub_1B5E21AE4(v77, v78, &protocol conformance descriptor for TextMessage);
          v79 = v133;
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          sub_1B5DF33E0(&qword_1EB90E440, &qword_1B5EB5B20);
          sub_1B5E2619C();
          sub_1B5E11D68();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          swift_unknownObjectRelease();
          v111 = sub_1B5E26048();
          v112(v111);
          v113 = sub_1B5E25F14();
          v114(v113);
LABEL_19:
          swift_storeEnumTagMultiPayload();
          sub_1B5E25E3C();
          v119 = v79;
          goto LABEL_21;
        case 3:
          LOBYTE(v167) = 3;
          sub_1B5E219E0();
          v80 = v155;
          sub_1B5E25EF0(&type metadata for ClassificationXPCRequest.Request.ClassifyUserNotificationCodingKeys);
          type metadata accessor for UserNotification(0);
          LOBYTE(v167) = 0;
          sub_1B5E26030();
          sub_1B5E21AE4(v81, v82, &protocol conformance descriptor for UserNotification);
          sub_1B5E261FC();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          sub_1B5DF33E0(&qword_1EB90E438, &unk_1B5EB47A0);
          sub_1B5E2619C();
          sub_1B5E180B4();
          sub_1B5E260F8();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          v97 = v138;
          swift_unknownObjectRelease();
          (*(v97 + 8))(v80, v62);
          v115 = sub_1B5E25F14();
          v116(v115);
          v117 = v134;
          swift_storeEnumTagMultiPayload();
          sub_1B5E25E3C();
          v119 = v117;
          goto LABEL_21;
        case 4:
          LOBYTE(v167) = 4;
          sub_1B5E2198C();
          sub_1B5E25EF0(&type metadata for ClassificationXPCRequest.Request.ClassifyMailMessageThreadCodingKeys);
          v75 = sub_1B5DFA488();
          sub_1B5DF33E0(v75, v76);
          LOBYTE(v167) = 0;
          sub_1B5E25EC4(&qword_1EB90E4A0);
          sub_1B5E260C4();
          sub_1B5E261FC();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          sub_1B5E261AC();
          sub_1B5E06BA8();
          sub_1B5E260F8();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          v92 = v160;
          swift_unknownObjectRelease();
          v93 = sub_1B5E2607C();
          v94(v93);
          v95 = sub_1B5E25F24();
          v96(v95);
          sub_1B5E25F34(v167);
          goto LABEL_20;
        case 5:
          LOBYTE(v167) = 5;
          sub_1B5E21938();
          sub_1B5E25EF0(&type metadata for ClassificationXPCRequest.Request.ClassifyTextMessageThreadCodingKeys);
          v86 = sub_1B5DFA488();
          sub_1B5DF33E0(v86, v87);
          LOBYTE(v167) = 0;
          sub_1B5E25EC4(&qword_1EB90D070);
          sub_1B5E260C4();
          sub_1B5E261FC();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          sub_1B5E261AC();
          sub_1B5E11EC8();
          sub_1B5E260F8();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          v92 = v160;
          swift_unknownObjectRelease();
          v107 = sub_1B5E2607C();
          v108(v107);
          v109 = sub_1B5E25F24();
          v110(v109);
          sub_1B5E25F34(v167);
          goto LABEL_20;
        case 6:
          LOBYTE(v167) = 6;
          sub_1B5E218E4();
          sub_1B5E25EF0(&type metadata for ClassificationXPCRequest.Request.ClassifyUserNotificationThreadCodingKeys);
          v90 = sub_1B5DFA488();
          sub_1B5DF33E0(v90, v91);
          LOBYTE(v167) = 0;
          sub_1B5E25EC4(&qword_1EB90E498);
          sub_1B5E260C4();
          sub_1B5E261FC();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          sub_1B5E261AC();
          sub_1B5E18214();
          sub_1B5E260F8();
          sub_1B5E25F94();
          sub_1B5EA5DC0();
          v92 = v160;
          swift_unknownObjectRelease();
          v124 = sub_1B5E2607C();
          v125(v124);
          v126 = sub_1B5E25F24();
          v127(v126);
          sub_1B5E25F34(v167);
LABEL_20:
          swift_storeEnumTagMultiPayload();
          sub_1B5E25E3C();
          v119 = v92;
LABEL_21:
          v67 = v166;
          sub_1B5E21A34(v119, v166, v118);
          goto LABEL_22;
        case 7:
          LOBYTE(v167) = 7;
          sub_1B5E21890();
          sub_1B5E25EF0(&type metadata for ClassificationXPCRequest.Request.TestTaskCancellationCodingKeys);
          v83 = v148;
          sub_1B5E25F94();
          sub_1B5EA5D90();
          v74 = v165;
          v99 = v98;
          swift_unknownObjectRelease();
          v100 = sub_1B5E25F6C();
          v101(v100, v83);
          v102 = sub_1B5E25F24();
          v103(v102);
          v104 = v135;
          *v135 = v99;
          swift_storeEnumTagMultiPayload();
          sub_1B5E25E3C();
          v105 = v104;
          v67 = v166;
          sub_1B5E21A34(v105, v166, v106);
          goto LABEL_23;
        default:
          LOBYTE(v167) = 0;
          sub_1B5E21BD8();
          v63 = v152;
          sub_1B5EA5D10();
          if (v62)
          {
            v88 = sub_1B5E25F50();
            v89(v88);
            swift_unknownObjectRelease();
            goto LABEL_9;
          }

          swift_unknownObjectRelease();
          sub_1B5E25FA0();
          v64(v63, v144);
          v65 = sub_1B5E25F50();
          v66(v65);
          v67 = v166;
          swift_storeEnumTagMultiPayload();
LABEL_22:
          v74 = v165;
LABEL_23:
          sub_1B5E25E3C();
          sub_1B5E21A34(v67, v151, v128);
          break;
      }

      return sub_1B5DF3FB8(v74);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t ClassificationXPCRequest.RequestInfo.requestIdentifier.setter()
{
  sub_1B5DFA47C();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ClassificationXPCRequest.RequestInfo.useCaseIdentifier.setter()
{
  sub_1B5DFA47C();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

Sage::ClassificationXPCRequest::RequestInfo __swiftcall ClassificationXPCRequest.RequestInfo.init(requestIdentifier:useCaseIdentifier:)(Swift::String requestIdentifier, Swift::String useCaseIdentifier)
{
  *v2 = requestIdentifier;
  v2[1] = useCaseIdentifier;
  result.useCaseIdentifier = useCaseIdentifier;
  result.requestIdentifier = requestIdentifier;
  return result;
}

uint64_t sub_1B5E22F08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001B5EA8AB0 == a2;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B5EA8D50 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B5EA5F00();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B5E2300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1B5EA5FD0();
  a4(v8, v6);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E23060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E22F08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E23088(uint64_t a1)
{
  v2 = sub_1B5E248F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E230C4(uint64_t a1)
{
  v2 = sub_1B5E248F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClassificationXPCRequest.RequestInfo.encode(to:)(void *a1)
{
  v4 = sub_1B5DF33E0(&qword_1EB90E4A8, &qword_1B5EB4808);
  sub_1B5DF5DA8();
  v12 = v5;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v9;
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E248F0();
  sub_1B5EA6040();
  v14 = 0;
  sub_1B5EA5E50();
  if (!v2)
  {
    v13 = 1;
    sub_1B5EA5E50();
  }

  return (*(v12 + 8))(v8, v4);
}

uint64_t ClassificationXPCRequest.RequestInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B5DF33E0(&qword_1EB90E4B0, &unk_1B5EB4810);
  sub_1B5DF5DA8();
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E248F0();
  sub_1B5EA6030();
  if (v2)
  {
    return sub_1B5DF3FB8(a1);
  }

  v6 = sub_1B5EA5D70();
  v8 = v7;
  v9 = sub_1B5EA5D70();
  v11 = v10;
  v15 = v9;
  v12 = sub_1B5E26048();
  v13(v12);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v15;
  a2[3] = v11;

  sub_1B5DF3FB8(a1);
}

uint64_t sub_1B5E23480(uint64_t a1)
{
  v2 = type metadata accessor for ClassificationXPCRequest.Request(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5E2182C(a1, v4);
  return sub_1B5E23560(v4);
}

uint64_t sub_1B5E2350C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_request;
  sub_1B5E26214();
  swift_beginAccess();
  return sub_1B5E2182C(v1 + v3, a1);
}

uint64_t sub_1B5E23560(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_request;
  swift_beginAccess();
  sub_1B5E25CF8(a1, v1 + v3);
  return swift_endAccess();
}

double sub_1B5E235C0@<D0>(uint64_t a1@<X8>)
{
  sub_1B5E23654(&v5);
  result = *&v5;
  v3 = v6;
  v4 = v7;
  *a1 = v5;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return result;
}

uint64_t sub_1B5E23604(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  *&v5 = *a1;
  *(&v5 + 1) = v1;
  v6 = v2;
  v7 = v3;

  return sub_1B5E236B4(&v5);
}

uint64_t sub_1B5E23654@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_requestInfo);
  sub_1B5E26214();
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = v5;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v7;
}

uint64_t sub_1B5E236B4(__int128 *a1)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = v1 + OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_requestInfo;
  swift_beginAccess();
  *v4 = v6;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
}

id ClassificationXPCRequest.__allocating_init(request:requestInfo:)()
{
  sub_1B5DFA47C();
  v3 = objc_allocWithZone(v1);
  return ClassificationXPCRequest.init(request:requestInfo:)(v2, v0);
}

id ClassificationXPCRequest.init(request:requestInfo:)(uint64_t a1, __int128 *a2)
{
  v10 = *a2;
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  sub_1B5E2182C(a1, &v2[OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_request]);
  v6 = &v2[OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_requestInfo];
  *v6 = v10;
  *(v6 + 2) = v4;
  *(v6 + 3) = v5;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ClassificationXPCRequest(0);
  v7 = objc_msgSendSuper2(&v11, sel_init);
  sub_1B5E25E54();
  sub_1B5E21B2C(a1, v8);
  return v7;
}

id ClassificationXPCRequest.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1B5E2624C();
  return ClassificationXPCRequest.init(coder:)(v2);
}

id ClassificationXPCRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ClassificationXPCRequest.Request(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B5DFD7E8();
  v7 = v6 - v5;
  sub_1B5E243CC(v6 - v5);
  sub_1B5E25E3C();
  sub_1B5E21A34(v7, &v2[v8], v9);
  sub_1B5E23F34();
  v11 = v17;
  v12 = v18;
  v13 = &v2[OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_requestInfo];
  *v13 = v16;
  *(v13 + 2) = v11;
  *(v13 + 3) = v12;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for XPCValue();
  v14 = objc_msgSendSuper2(&v15, sel_init);

  return v14;
}

void sub_1B5E23B44(void *a1)
{
  sub_1B5EA3934(a1);
  sub_1B5E26214();
  swift_beginAccess();
  v2 = qword_1ED7D2050;

  if (v2 != -1)
  {
    sub_1B5E25FEC();
    swift_once();
  }

  sub_1B5E24A04();
  v3 = sub_1B5EA4160();
  v5 = v4;

  v6 = sub_1B5EA42C0();
  sub_1B5E24A58(v3, v5);
  v7 = sub_1B5EA5670();
  [a1 encodeObject:v6 forKey:v7];
}

uint64_t sub_1B5E23E08()
{
  type metadata accessor for ClassificationXPCRequest.Request(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1B5DFD7E8();
  v4 = v3 - v2;
  v5 = OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_request;
  sub_1B5E26214();
  swift_beginAccess();
  sub_1B5E2182C(v0 + v5, v4);
  if (qword_1ED7D2050 != -1)
  {
    sub_1B5E25FEC();
    swift_once();
  }

  sub_1B5E21AE4(&qword_1EB90CF20, type metadata accessor for ClassificationXPCRequest.Request, &protocol conformance descriptor for ClassificationXPCRequest.Request);
  sub_1B5EA4160();
  sub_1B5E25E54();
  sub_1B5E21B2C(v4, v6);
  return sub_1B5DFA488();
}

uint64_t sub_1B5E23F34()
{
  sub_1B5E25D5C();
  v1 = sub_1B5EA5AB0();
  if (v1)
  {
    v2 = v1;
    sub_1B5EA42D0();

    v0 = 0xF000000000000000;
  }

  type metadata accessor for XPCValue();
  v3 = sub_1B5E26048();
  v5 = sub_1B5EA3B74(v3, v4);
  swift_willThrow();
  if (qword_1ED7D2988 != -1)
  {
    sub_1B5E25E6C();
    swift_once();
  }

  v6 = sub_1B5EA53B0();
  sub_1B5DFD794(v6, qword_1ED7D2990);
  v7 = sub_1B5E2624C();
  v8 = sub_1B5EA5380();
  v9 = sub_1B5EA5A40();

  if (os_log_type_enabled(v8, v9))
  {
    sub_1B5E26208();
    swift_slowAlloc();
    sub_1B5E2618C();
    v10 = swift_slowAlloc();
    *v0 = 138543362;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v0 + 4) = v12;
    *v10 = v12;
    sub_1B5E260D8();
    _os_log_impl(v13, v14, v15, v16, v17, v18);
    sub_1B5E2499C(v10);
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
  }

  return swift_willThrow();
}

id ClassificationXPCRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B5E241C4()
{
  sub_1B5E25E54();
  sub_1B5E21B2C(v0 + v1, v2);
}

id ClassificationXPCRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClassificationXPCRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B5E243CC@<X0>(uint64_t a3@<X8>)
{
  sub_1B5E25D5C();
  v4 = sub_1B5EA5AB0();
  if (v4)
  {
    v5 = v4;
    sub_1B5EA42D0();
  }

  type metadata accessor for XPCValue();
  v6 = sub_1B5E2624C();
  v7 = sub_1B5EA3B74(v6, 0xEC00000065756C61);
  swift_willThrow();
  if (qword_1ED7D2988 != -1)
  {
    sub_1B5E25E6C();
    swift_once();
  }

  v8 = sub_1B5EA53B0();
  sub_1B5DFD794(v8, qword_1ED7D2990);
  v9 = sub_1B5E2624C();
  v10 = sub_1B5EA5380();
  v11 = sub_1B5EA5A40();

  if (os_log_type_enabled(v10, v11))
  {
    sub_1B5E26208();
    swift_slowAlloc();
    sub_1B5E2618C();
    v12 = swift_slowAlloc();
    *a3 = 138543362;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(a3 + 4) = v14;
    *v12 = v14;
    sub_1B5E260D8();
    _os_log_impl(v15, v16, v17, v18, v19, v20);
    sub_1B5E2499C(v12);
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330](v21);
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330](v22);
  }

  return swift_willThrow();
}

uint64_t ClassificationXPCRequest.Request.Category.description.getter()
{
  v1 = 0x6966697373616C63;
  if (*v0 != 1)
  {
    v1 = 1953719668;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D726177657270;
  }
}

Sage::ClassificationXPCRequest::Request::Category_optional __swiftcall ClassificationXPCRequest.Request.Category.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B5EA5D00();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B5E2470C@<X0>(uint64_t *a1@<X8>)
{
  result = ClassificationXPCRequest.Request.Category.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ClassificationXPCRequest.Request.category.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  type metadata accessor for ClassificationXPCRequest.Request(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5DFD7E8();
  v7 = v6 - v5;
  sub_1B5E2182C(v2, v6 - v5);
  sub_1B5E26234();
  result = swift_getEnumCaseMultiPayload();
  v9 = 0;
  switch(result)
  {
    case 1:
      sub_1B5DF33E0(&qword_1EB90E440, &qword_1B5EB5B20);
      sub_1B5E26124();

      v10 = type metadata accessor for TextMessage;
      goto LABEL_7;
    case 2:
      sub_1B5DF33E0(&qword_1EB90E438, &unk_1B5EB47A0);
      sub_1B5E26124();

      v10 = type metadata accessor for UserNotification;
      goto LABEL_7;
    case 3:
    case 4:
    case 5:
      v10 = type metadata accessor for ClassificationXPCRequest.Request;
      goto LABEL_7;
    case 6:
      v9 = 2;
      goto LABEL_8;
    case 7:
      goto LABEL_8;
    default:
      sub_1B5DF33E0(&qword_1EB90E448, &qword_1B5EB47B0);
      sub_1B5E26124();

      v10 = type metadata accessor for MailMessage;
LABEL_7:
      result = sub_1B5E21B2C(v7, v10);
      v9 = 1;
LABEL_8:
      *a1 = v9;
      return result;
  }
}

uint64_t sub_1B5E248A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B5DFD694(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B5E248F0()
{
  result = qword_1EB90D410;
  if (!qword_1EB90D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D410);
  }

  return result;
}

uint64_t sub_1B5E24964(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B5E2499C(uint64_t a1)
{
  v2 = sub_1B5DF33E0(&unk_1EB90F890, &qword_1B5EB6DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B5E24A04()
{
  result = qword_1EB90CF30;
  if (!qword_1EB90CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CF30);
  }

  return result;
}

uint64_t sub_1B5E24A58(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_1B5E24AB4()
{
  result = qword_1EB90E4B8;
  if (!qword_1EB90E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E4B8);
  }

  return result;
}

unint64_t sub_1B5E24B0C()
{
  result = qword_1EB90E4C0;
  if (!qword_1EB90E4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E4C0);
  }

  return result;
}

uint64_t sub_1B5E24B68(uint64_t a1)
{
  result = type metadata accessor for ClassificationXPCRequest.Request(319);
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

void sub_1B5E24CAC(uint64_t a1)
{
  sub_1B5E24E44(319, &qword_1EB90D880, type metadata accessor for MailMessage);
  if (v1 <= 0x3F)
  {
    sub_1B5E24E44(319, &qword_1EB90D800, type metadata accessor for TextMessage);
    if (v2 <= 0x3F)
    {
      sub_1B5E24E44(319, &qword_1EB90D770, type metadata accessor for UserNotification);
      if (v3 <= 0x3F)
      {
        sub_1B5E24E9C(319, qword_1EB90D660, &qword_1EB90E428, &qword_1B5EB4798);
        if (v4 <= 0x3F)
        {
          sub_1B5E24E9C(319, &qword_1EB90D658, &qword_1EB90E418, &qword_1B5EB4790);
          if (v5 <= 0x3F)
          {
            sub_1B5E24E9C(319, &qword_1EB90D650, &qword_1EB90E408, &qword_1B5EB4788);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B5E24E44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v4 = a3(255);
    v5 = sub_1B5E261D8(v4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B5E24E9C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    v5 = sub_1B5DFD694(a3, a4);
    v6 = sub_1B5E261D8(v5);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ClassificationXPCRequest.Request.Category(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ClassificationXPCRequest.Request.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B5E2512C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B5E25208(unsigned __int8 *a1, int a2)
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

  return sub_1B5DF31F8(a1);
}

_BYTE *sub_1B5E25254(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B5E25304()
{
  result = qword_1EB90E4C8;
  if (!qword_1EB90E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E4C8);
  }

  return result;
}

unint64_t sub_1B5E2535C()
{
  result = qword_1EB90E4D0;
  if (!qword_1EB90E4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E4D0);
  }

  return result;
}

unint64_t sub_1B5E253B4()
{
  result = qword_1EB90E4D8;
  if (!qword_1EB90E4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E4D8);
  }

  return result;
}

unint64_t sub_1B5E2540C()
{
  result = qword_1EB90E4E0;
  if (!qword_1EB90E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E4E0);
  }

  return result;
}

unint64_t sub_1B5E25464()
{
  result = qword_1EB90E4E8;
  if (!qword_1EB90E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E4E8);
  }

  return result;
}

unint64_t sub_1B5E254BC()
{
  result = qword_1EB90E4F0;
  if (!qword_1EB90E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E4F0);
  }

  return result;
}

unint64_t sub_1B5E25514()
{
  result = qword_1EB90E4F8;
  if (!qword_1EB90E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E4F8);
  }

  return result;
}

unint64_t sub_1B5E2556C()
{
  result = qword_1EB90E500;
  if (!qword_1EB90E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E500);
  }

  return result;
}

unint64_t sub_1B5E255C4()
{
  result = qword_1EB90E508;
  if (!qword_1EB90E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E508);
  }

  return result;
}

unint64_t sub_1B5E2561C()
{
  result = qword_1EB90D400;
  if (!qword_1EB90D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D400);
  }

  return result;
}

unint64_t sub_1B5E25674()
{
  result = qword_1EB90D408;
  if (!qword_1EB90D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D408);
  }

  return result;
}

unint64_t sub_1B5E256CC()
{
  result = qword_1EB90D3D0;
  if (!qword_1EB90D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3D0);
  }

  return result;
}

unint64_t sub_1B5E25724()
{
  result = qword_1EB90D3D8;
  if (!qword_1EB90D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3D8);
  }

  return result;
}

unint64_t sub_1B5E2577C()
{
  result = qword_1EB90D3B8;
  if (!qword_1EB90D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3B8);
  }

  return result;
}

unint64_t sub_1B5E257D4()
{
  result = qword_1EB90D3C0;
  if (!qword_1EB90D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3C0);
  }

  return result;
}

unint64_t sub_1B5E2582C()
{
  result = qword_1EB90D3A0;
  if (!qword_1EB90D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3A0);
  }

  return result;
}

unint64_t sub_1B5E25884()
{
  result = qword_1EB90D3A8;
  if (!qword_1EB90D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3A8);
  }

  return result;
}

unint64_t sub_1B5E258DC()
{
  result = qword_1EB90D378;
  if (!qword_1EB90D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D378);
  }

  return result;
}

unint64_t sub_1B5E25934()
{
  result = qword_1EB90D380;
  if (!qword_1EB90D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D380);
  }

  return result;
}

unint64_t sub_1B5E2598C()
{
  result = qword_1EB90D368;
  if (!qword_1EB90D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D368);
  }

  return result;
}

unint64_t sub_1B5E259E4()
{
  result = qword_1EB90D370;
  if (!qword_1EB90D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D370);
  }

  return result;
}

unint64_t sub_1B5E25A3C()
{
  result = qword_1EB90D350;
  if (!qword_1EB90D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D350);
  }

  return result;
}

unint64_t sub_1B5E25A94()
{
  result = qword_1EB90D358;
  if (!qword_1EB90D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D358);
  }

  return result;
}

unint64_t sub_1B5E25AEC()
{
  result = qword_1EB90D340;
  if (!qword_1EB90D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D340);
  }

  return result;
}

unint64_t sub_1B5E25B44()
{
  result = qword_1EB90D348;
  if (!qword_1EB90D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D348);
  }

  return result;
}

unint64_t sub_1B5E25B9C()
{
  result = qword_1EB90D390;
  if (!qword_1EB90D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D390);
  }

  return result;
}

unint64_t sub_1B5E25BF4()
{
  result = qword_1EB90D398;
  if (!qword_1EB90D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D398);
  }

  return result;
}

unint64_t sub_1B5E25C4C()
{
  result = qword_1EB90D3E8;
  if (!qword_1EB90D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3E8);
  }

  return result;
}

unint64_t sub_1B5E25CA4()
{
  result = qword_1EB90D3F0;
  if (!qword_1EB90D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D3F0);
  }

  return result;
}

uint64_t sub_1B5E25CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationXPCRequest.Request(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B5E25D5C()
{
  result = qword_1ED7D29B8;
  if (!qword_1ED7D29B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7D29B8);
  }

  return result;
}

uint64_t sub_1B5E25DA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B5E24A58(result, a2);
  }

  return result;
}

unint64_t sub_1B5E25DB4()
{
  result = qword_1EB90CF28;
  if (!qword_1EB90CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CF28);
  }

  return result;
}

uint64_t sub_1B5E25E98(unint64_t *a1)
{

  return sub_1B5E248A8(a1, v1, v2, &protocol conformance descriptor for ClassifiableThread<A>);
}

uint64_t sub_1B5E25EC4(unint64_t *a1)
{

  return sub_1B5E248A8(a1, v1, v2, &protocol conformance descriptor for ClassifiableThread<A>);
}

uint64_t sub_1B5E25EF0(uint64_t a1)
{

  return sub_1B5EA5D10();
}

uint64_t sub_1B5E25F34@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 - 256);
  *v4 = v2;
  *(v4 + 8) = a1;
  *(v4 + 16) = *(v3 - 112);
  return v4;
}

void sub_1B5E25F7C()
{
  v2 = *(v1 - 168);
  *(v1 - 128) = *(v1 - 176);
  *(v1 - 120) = v2;
  *(v1 - 112) = v0;
  *(v1 - 89) = 1;
}

uint64_t sub_1B5E25FAC(uint64_t a1, uint64_t a2)
{

  return sub_1B5EA5E00();
}

uint64_t sub_1B5E26054()
{

  return sub_1B5E21B2C(v0, type metadata accessor for MailMessage);
}

uint64_t sub_1B5E26098(uint64_t a1, __n128 a2)
{

  return swift_once();
}

uint64_t sub_1B5E26104(uint64_t a1)
{

  return sub_1B5EA5EA0();
}

uint64_t sub_1B5E26124()
{
}

uint64_t sub_1B5E26150(uint64_t result)
{
  v3 = v1 + *(result + 48);
  *(v2 - 168) = *v3;
  *(v2 - 176) = *(v3 + 16);
  return result;
}

void sub_1B5E2617C()
{
  v2 = *(v0 + 16);
  *(v1 - 176) = *(v0 + 8);
  *(v1 - 168) = v2;
}

uint64_t sub_1B5E261BC(uint64_t a1)
{

  return sub_1B5EA5EA0();
}

uint64_t sub_1B5E261D8(uint64_t a1)
{

  return swift_getTupleTypeMetadata2();
}

void sub_1B5E26220()
{
  *(v1 - 128) = *(v1 - 168);
  *(v1 - 120) = v0;
  *(v1 - 112) = *(v1 - 176);
}

uint64_t sub_1B5E26258(uint64_t a1)
{

  return sub_1B5EA5F00();
}

uint64_t ClassificationXPCResult.Error.hashValue.getter()
{
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](0);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E262F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684631414 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xEE00746C75736552)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B5EA5F00();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B5E263C4(char a1)
{
  if (a1)
  {
    return 0x797469726F697270;
  }

  else
  {
    return 1684631414;
  }
}

uint64_t sub_1B5E26438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E262F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E26460(uint64_t a1)
{
  v2 = sub_1B5E26990();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E2649C(uint64_t a1)
{
  v2 = sub_1B5E26990();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E264D8(uint64_t a1)
{
  v2 = sub_1B5E26A48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E26514(uint64_t a1)
{
  v2 = sub_1B5E26A48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E26550(uint64_t a1)
{
  v2 = sub_1B5E26A9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E2658C(uint64_t a1)
{
  v2 = sub_1B5E26A9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClassificationXPCResult.Result.encode(to:)(void *a1)
{
  sub_1B5DF33E0(&qword_1EB90E510, &qword_1B5EB5650);
  sub_1B5DF5DA8();
  v35 = v4;
  v36 = v3;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5E28304(v6, v31);
  v7 = type metadata accessor for PriorityResult(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5DF33E0(&qword_1EB90E518, &qword_1B5EB5658);
  sub_1B5DF5DA8();
  v31 = v11;
  v32 = v10;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for ClassificationXPCResult.Result(0);
  v16 = sub_1B5E01CF8(v15);
  MEMORY[0x1EEE9AC00](v16);
  sub_1B5E2829C();
  v17 = sub_1B5DF33E0(&qword_1EB90E520, &qword_1B5EB5660);
  sub_1B5DF5DA8();
  v19 = v18;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v31 - v21;
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E26990();
  sub_1B5EA6040();
  sub_1B5E269E4(v37, v1);
  v23 = sub_1B5E282E4();
  if (sub_1B5DF46E0(v23, v24, v7) == 1)
  {
    v38 = 0;
    sub_1B5E26A9C();
    sub_1B5EA5E00();
    (*(v31 + 8))(v14, v32);
  }

  else
  {
    v26 = v33;
    sub_1B5E279C0(v1, v33, type metadata accessor for PriorityResult);
    v39 = 1;
    sub_1B5E26A48();
    v27 = v34;
    sub_1B5EA5E00();
    sub_1B5E282B4();
    sub_1B5E27978(v28, v29, &protocol conformance descriptor for PriorityResult);
    v30 = v36;
    sub_1B5EA5EA0();
    (*(v35 + 8))(v27, v30);
    sub_1B5E27A20(v26, type metadata accessor for PriorityResult);
  }

  return (*(v19 + 8))(v22, v17);
}

unint64_t sub_1B5E26990()
{
  result = qword_1EB90D480;
  if (!qword_1EB90D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D480);
  }

  return result;
}

uint64_t sub_1B5E269E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationXPCResult.Result(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B5E26A48()
{
  result = qword_1EB90D498;
  if (!qword_1EB90D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D498);
  }

  return result;
}

unint64_t sub_1B5E26A9C()
{
  result = qword_1EB90D468;
  if (!qword_1EB90D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D468);
  }

  return result;
}

void ClassificationXPCResult.Result.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  sub_1B5DF33E0(&qword_1EB90E528, &qword_1B5EB5668);
  sub_1B5DF5DA8();
  v62 = v3;
  v63 = v4;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v57 - v6;
  sub_1B5DF33E0(&qword_1EB90E530, &qword_1B5EB5670);
  sub_1B5DF5DA8();
  v60 = v7;
  v61 = v8;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5E28304(v10, v57);
  v11 = sub_1B5DF33E0(&qword_1EB90E538, &unk_1B5EB5678);
  sub_1B5DF5DA8();
  v67 = v12;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for ClassificationXPCResult.Result(0);
  sub_1B5DF5EB8();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v57 - v21;
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E26990();
  v23 = v68;
  sub_1B5EA6030();
  if (v23)
  {
    goto LABEL_8;
  }

  v68 = v16;
  v57 = v20;
  v58 = v22;
  v24 = v15;
  v25 = sub_1B5EA5DE0();
  sub_1B5DF9704(v25, 0);
  v29 = a1;
  v59 = v11;
  if (v27 == v28 >> 1)
  {
LABEL_7:
    v37 = sub_1B5EA5BF0();
    swift_allocError();
    v39 = v38;
    sub_1B5DF33E0(&qword_1EB90DB08, &qword_1B5EAF520);
    *v39 = v68;
    v40 = v59;
    sub_1B5EA5D20();
    sub_1B5EA5BE0();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v67 + 8))(v24, v40);
    a1 = v29;
LABEL_8:
    sub_1B5DF3FB8(a1);
    return;
  }

  if (v27 < (v28 >> 1))
  {
    v30 = *(v26 + v27);
    v31 = sub_1B5DFA42C();
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      v36 = v67;
      if (v30)
      {
        v68 = v31;
        v70 = 1;
        sub_1B5E26A48();
        sub_1B5EA5D10();
        v42 = type metadata accessor for PriorityResult(0);
        sub_1B5E282B4();
        sub_1B5E27978(v43, v44, &protocol conformance descriptor for PriorityResult);
        v45 = v57;
        sub_1B5EA5DC0();
        swift_unknownObjectRelease();
        v51 = sub_1B5E28318();
        v52(v51);
        (*(v36 + 8))(v24, v59);
        sub_1B5DF3658(v45, 0, 1, v42);
        sub_1B5E282CC();
        v53 = v58;
        sub_1B5E279C0(v45, v58, v54);
        a1 = v29;
        v55 = v66;
      }

      else
      {
        v69 = 0;
        sub_1B5E26A9C();
        v41 = v64;
        sub_1B5EA5D10();
        v55 = v66;
        swift_unknownObjectRelease();
        (*(v61 + 8))(v41, v60);
        v46 = sub_1B5E282F0();
        v47(v46);
        type metadata accessor for PriorityResult(0);
        v53 = v58;
        v48 = sub_1B5E282E4();
        sub_1B5DF3658(v48, v49, 1, v50);
      }

      sub_1B5E282CC();
      sub_1B5E279C0(v53, v55, v56);
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B5E27120(uint64_t a1)
{
  v2 = type metadata accessor for ClassificationXPCResult.Result(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5E269E4(a1, v4);
  return sub_1B5E27200(v4);
}

uint64_t sub_1B5E271AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC4Sage23ClassificationXPCResult_result;
  sub_1B5E26214();
  swift_beginAccess();
  return sub_1B5E269E4(v1 + v3, a1);
}

uint64_t sub_1B5E27200(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Sage23ClassificationXPCResult_result;
  swift_beginAccess();
  sub_1B5E2821C(a1, v1 + v3);
  return swift_endAccess();
}

id ClassificationXPCResult.__allocating_init(result:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B5E269E4(a1, v3 + OBJC_IVAR____TtC4Sage23ClassificationXPCResult_result);
  v7.receiver = v3;
  v7.super_class = v1;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  sub_1B5E28284();
  sub_1B5E27A20(a1, v5);
  return v4;
}

id ClassificationXPCResult.init(result:)(uint64_t a1)
{
  sub_1B5E269E4(a1, v1 + OBJC_IVAR____TtC4Sage23ClassificationXPCResult_result);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ClassificationXPCResult(0);
  v3 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B5E28284();
  sub_1B5E27A20(a1, v4);
  return v3;
}

id ClassificationXPCResult.init(coder:)(void *a1)
{
  v3 = sub_1B5DF33E0(&qword_1EB90E540, &qword_1B5EB5688);
  sub_1B5E01CF8(v3);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for ClassificationXPCResult.Result(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5E242B8(v6);
  sub_1B5DF3658(v6, 0, 1, v7);
  sub_1B5E279C0(v6, v10, type metadata accessor for ClassificationXPCResult.Result);
  sub_1B5E269E4(v10, v1 + OBJC_IVAR____TtC4Sage23ClassificationXPCResult_result);
  v11 = type metadata accessor for XPCValue();
  v15.receiver = v1;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, sel_init);

  sub_1B5E27A20(v10, type metadata accessor for ClassificationXPCResult.Result);
  return v12;
}

uint64_t sub_1B5E2756C()
{
  v2 = type metadata accessor for ClassificationXPCResult.Result(0);
  v3 = sub_1B5E01CF8(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5E2829C();
  v4 = OBJC_IVAR____TtC4Sage23ClassificationXPCResult_result;
  sub_1B5E26214();
  swift_beginAccess();
  sub_1B5E269E4(v0 + v4, v1);
  type metadata accessor for PriorityResult(0);
  v5 = sub_1B5E282E4();
  v8 = sub_1B5DF46E0(v5, v6, v7);
  sub_1B5E28284();
  result = sub_1B5E27A20(v1, v9);
  if (v8 != 1)
  {
    sub_1B5E27B00();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B5E27648@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for ClassificationXPCResult.Result(0);
  v5 = sub_1B5E01CF8(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5E2829C();
  v6 = OBJC_IVAR____TtC4Sage23ClassificationXPCResult_result;
  sub_1B5E26214();
  swift_beginAccess();
  sub_1B5E269E4(v1 + v6, v2);
  type metadata accessor for PriorityResult(0);
  v7 = sub_1B5E282E4();
  if (sub_1B5DF46E0(v7, v8, v9) != 1)
  {
    return sub_1B5E279C0(v2, a1, type metadata accessor for PriorityResult);
  }

  sub_1B5E28284();
  sub_1B5E27A20(v2, v10);
  sub_1B5E27B00();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1B5E27748()
{
  type metadata accessor for ClassificationXPCResult.Result(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B5E2829C();
  v3 = OBJC_IVAR____TtC4Sage23ClassificationXPCResult_result;
  sub_1B5E26214();
  swift_beginAccess();
  sub_1B5E269E4(v0 + v3, v1);
  if (qword_1ED7D2050 != -1)
  {
    swift_once();
  }

  sub_1B5E27978(&qword_1EB90CF60, type metadata accessor for ClassificationXPCResult.Result, &protocol conformance descriptor for ClassificationXPCResult.Result);
  v4 = sub_1B5EA4160();
  sub_1B5E28284();
  sub_1B5E27A20(v1, v5);
  return v4;
}

id ClassificationXPCResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClassificationXPCResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClassificationXPCResult(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B5E27978(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B5E279C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1B5DF5EB8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1B5E27A20(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1B5DF5EB8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B5E27A98(uint64_t a1)
{
  v2 = sub_1B5DF33E0(&qword_1EB90E540, &qword_1B5EB5688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B5E27B00()
{
  result = qword_1EB90E548;
  if (!qword_1EB90E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E548);
  }

  return result;
}

unint64_t sub_1B5E27B58()
{
  result = qword_1EB90E550;
  if (!qword_1EB90E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E550);
  }

  return result;
}

uint64_t sub_1B5E27BB4(uint64_t a1)
{
  result = type metadata accessor for ClassificationXPCResult.Result(319);
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

uint64_t sub_1B5E27D6C(uint64_t a1)
{
  v1 = type metadata accessor for PriorityResult(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for ClassificationXPCResult.Result.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B5E27EB0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B5E27F60()
{
  result = qword_1EB90E558;
  if (!qword_1EB90E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E558);
  }

  return result;
}

unint64_t sub_1B5E27FB8()
{
  result = qword_1EB90E560;
  if (!qword_1EB90E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E560);
  }

  return result;
}

unint64_t sub_1B5E28010()
{
  result = qword_1EB90D458;
  if (!qword_1EB90D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D458);
  }

  return result;
}

unint64_t sub_1B5E28068()
{
  result = qword_1EB90D460;
  if (!qword_1EB90D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D460);
  }

  return result;
}

unint64_t sub_1B5E280C0()
{
  result = qword_1EB90D488;
  if (!qword_1EB90D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D488);
  }

  return result;
}

unint64_t sub_1B5E28118()
{
  result = qword_1EB90D490;
  if (!qword_1EB90D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D490);
  }

  return result;
}

unint64_t sub_1B5E28170()
{
  result = qword_1EB90D470;
  if (!qword_1EB90D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D470);
  }

  return result;
}

unint64_t sub_1B5E281C8()
{
  result = qword_1EB90D478;
  if (!qword_1EB90D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D478);
  }

  return result;
}

uint64_t sub_1B5E2821C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationXPCResult.Result(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ClassificationClient.UseCase.identifier.getter()
{
  v1 = *v0;
  sub_1B5EA5BC0();

  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  switch(v1)
  {
    case 1:
      v3 = 0xD000000000000013;
      v4 = "classifyTextMessage";
      goto LABEL_4;
    case 2:
      sub_1B5E2CFBC();
      v3 = v5 + 5;
      break;
    case 3:
    case 4:
      sub_1B5E2CFBC();
      v3 = v6 + 6;
      break;
    case 5:
      sub_1B5E2CFBC();
      v3 = v7 + 11;
      break;
    case 6:
      break;
    case 7:
      v2 = 0xEF6D726177657250;
      v3 = 0x7966697373616C63;
      break;
    default:
      v3 = 0xD000000000000013;
      v4 = "classifyMailMessage";
LABEL_4:
      v2 = (v4 - 32) | 0x8000000000000000;
      break;
  }

  MEMORY[0x1B8C8A360](v3, v2);

  return 0x6966697373616C63;
}

uint64_t *sub_1B5E28498(__n128 a1)
{
  if (qword_1EB90D2E0 != -1)
  {
    sub_1B5E2CDD8(&qword_1EB90D2E0, a1);
  }

  return &qword_1EB90D2E8;
}

id static ClassificationXPCService.interface.getter(__n128 a1)
{
  if (qword_1EB90D2E0 != -1)
  {
    sub_1B5E2CDD8(&qword_1EB90D2E0, a1);
  }

  sub_1B5E2D094(&qword_1EB90D2E8);
  v1 = qword_1EB90D2E8;

  return v1;
}

void static ClassificationXPCService.interface.setter(uint64_t a1, __n128 a2)
{
  if (qword_1EB90D2E0 != -1)
  {
    sub_1B5E2CDD8(&qword_1EB90D2E0, a2);
  }

  v3 = sub_1B5E2D108();
  sub_1B5E2D240(v3);
  v4 = qword_1EB90D2E8;
  qword_1EB90D2E8 = a1;
}

uint64_t static ClassificationXPCService.interface.modify(__n128 a1)
{
  if (qword_1EB90D2E0 != -1)
  {
    sub_1B5E2CDD8(&qword_1EB90D2E0, a1);
  }

  sub_1B5E2CF7C();
  return sub_1B5E2D0FC();
}

id sub_1B5E2860C@<X0>(void *a1@<X8>, __n128 a2@<Q0>)
{
  sub_1B5E28498(a2);
  swift_beginAccess();
  v3 = qword_1EB90D2E8;
  *a1 = qword_1EB90D2E8;

  return v3;
}

void sub_1B5E2866C(id *a1)
{
  v1 = *a1;
  sub_1B5E28498(v2);
  swift_beginAccess();
  v3 = qword_1EB90D2E8;
  qword_1EB90D2E8 = v1;
}

uint64_t sub_1B5E28734(uint64_t *a1)
{
  sub_1B5E2D094(a1);
  v2 = *a1;

  return v2;
}

uint64_t sub_1B5E2878C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_1B5E2D240(a3);
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_1B5E28828@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  sub_1B5E2D094(a1);
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t sub_1B5E2887C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  sub_1B5E2D240(a5);
  *a5 = v9;
  *a6 = v8;
}

uint64_t *sub_1B5E288F8(__n128 a1)
{
  if (qword_1EB90D318 != -1)
  {
    sub_1B5E2CE18(&qword_1EB90D318, a1);
  }

  return &qword_1EB90D310;
}

uint64_t static ClassificationXPCService.selectorClasses.getter(__n128 a1)
{
  if (qword_1EB90D318 != -1)
  {
    sub_1B5E2CE18(&qword_1EB90D318, a1);
  }

  sub_1B5E2D094(&qword_1EB90D310);
}

uint64_t static ClassificationXPCService.selectorClasses.setter(uint64_t a1, __n128 a2)
{
  if (qword_1EB90D318 != -1)
  {
    sub_1B5E2CE18(&qword_1EB90D318, a2);
  }

  v3 = sub_1B5E2D108();
  sub_1B5E2D240(v3);
  qword_1EB90D310 = a1;
}

uint64_t static ClassificationXPCService.selectorClasses.modify(__n128 a1)
{
  if (qword_1EB90D318 != -1)
  {
    sub_1B5E2CE18(&qword_1EB90D318, a1);
  }

  sub_1B5E2CF7C();
  return sub_1B5E2D0FC();
}

uint64_t sub_1B5E28A60@<X0>(void *a1@<X8>, __n128 a2@<Q0>)
{
  sub_1B5E288F8(a2);
  swift_beginAccess();
  *a1 = qword_1EB90D310;
}

uint64_t sub_1B5E28AB4(uint64_t *a1)
{
  v1 = *a1;

  sub_1B5E288F8(v2);
  swift_beginAccess();
  qword_1EB90D310 = v1;
}

uint64_t sub_1B5E28B10()
{
  v0 = sub_1B5EA53B0();
  sub_1B5E1FE5C(v0, qword_1EB90D2F8);
  v1 = sub_1B5DFD794(v0, qword_1EB90D2F8);
  if (qword_1EB90D8E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B5DFD794(v0, qword_1EB90D8F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1B5E28BD8(__n128 a1)
{
  if (qword_1EB90D2F0 != -1)
  {
    sub_1B5E2CDF8(&qword_1EB90D2F0, a1);
  }

  v1 = sub_1B5EA53B0();

  return sub_1B5DFD794(v1, qword_1EB90D2F8);
}

uint64_t static ClassificationXPCService.logger.getter@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  if (qword_1EB90D2F0 != -1)
  {
    sub_1B5E2CDF8(&qword_1EB90D2F0, a2);
  }

  v3 = sub_1B5EA53B0();
  v4 = sub_1B5DFD794(v3, qword_1EB90D2F8);
  sub_1B5E2D094(v4);
  sub_1B5E2D1D8();
  return (*(v5 + 16))(a1, v4, v3);
}

uint64_t static ClassificationXPCService.logger.setter(uint64_t a1, __n128 a2)
{
  if (qword_1EB90D2F0 != -1)
  {
    sub_1B5E2CDF8(&qword_1EB90D2F0, a2);
  }

  v3 = sub_1B5EA53B0();
  v4 = sub_1B5DFD794(v3, qword_1EB90D2F8);
  swift_beginAccess();
  v5 = *(v3 - 8);
  (*(v5 + 24))(v4, a1, v3);
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t static ClassificationXPCService.logger.modify(__n128 a1)
{
  if (qword_1EB90D2F0 != -1)
  {
    sub_1B5E2CDF8(&qword_1EB90D2F0, a1);
  }

  v1 = sub_1B5EA53B0();
  sub_1B5DFD794(v1, qword_1EB90D2F8);
  swift_beginAccess();
  return sub_1B5E2D0FC();
}

uint64_t sub_1B5E28E34@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = sub_1B5E28BD8(a2);
  swift_beginAccess();
  v4 = sub_1B5EA53B0();
  return (*(*(v4 - 8) + 16))(a1, v3, v4);
}

uint64_t sub_1B5E28EB0(uint64_t a1, __n128 a2)
{
  v3 = sub_1B5E28BD8(a2);
  swift_beginAccess();
  v4 = sub_1B5EA53B0();
  (*(*(v4 - 8) + 24))(v3, a1, v4);
  return swift_endAccess();
}

uint64_t ClassificationClient.__allocating_init()()
{
  v0 = swift_allocObject();
  ClassificationClient.init()(v0, v1);
  return v0;
}

uint64_t ClassificationClient.init()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  sub_1B5E2C374(qword_1EB90D4C0, a2, type metadata accessor for ClassificationClient, &protocol conformance descriptor for ClassificationClient);
  sub_1B5DF33E0(&qword_1EB90E588, &unk_1B5EB5AE0);
  swift_allocObject();

  *(v2 + 16) = sub_1B5EA4DA0();

  return v2;
}

uint64_t ClassificationClient.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1B5E29088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ClassificationClient();

  return MEMORY[0x1EEE2EE60](a1, v5, a3);
}

uint64_t ClassificationClient.prewarm(for:requestIdentifier:completion:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  v12 = sub_1B5E01CF8(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  v15 = *a1;
  v16 = sub_1B5EA5920();
  sub_1B5DF3658(v14, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  *(v17 + 48) = v15;
  *(v17 + 56) = a4;
  *(v17 + 64) = a5;
  *(v17 + 72) = v5;

  sub_1B5E2C264(a4, a5);

  sub_1B5E2A07C(0, 0, v14, &unk_1B5EB5AF8, v17);
}

uint64_t sub_1B5E29288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v11;
  *(v8 + 24) = a5;
  *(v8 + 32) = a7;
  *(v8 + 96) = a6;
  *(v8 + 16) = a4;
  *(v8 + 56) = type metadata accessor for ClassificationXPCRequest.Request(0);
  *(v8 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B5E29330, 0, 0);
}

uint64_t sub_1B5E29330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1B5E2D228();
  a18 = v20;
  a19 = v21;
  sub_1B5E2D114();
  a17 = v19;
  v22 = *(v19 + 64);
  v24 = *(v19 + 16);
  v23 = *(v19 + 24);
  LOBYTE(a9) = *(v19 + 96);
  v25 = ClassificationClient.UseCase.identifier.getter();
  v27 = v26;
  swift_storeEnumTagMultiPayload();
  *&a9 = v24;
  *(&a9 + 1) = v23;
  a10 = v25;
  a11 = v27;
  v28 = objc_allocWithZone(type metadata accessor for ClassificationXPCRequest(0));

  *(v19 + 72) = ClassificationXPCRequest.init(request:requestInfo:)(v22, &a9);
  v29 = swift_task_alloc();
  *(v19 + 80) = v29;
  *v29 = v19;
  v29[1] = sub_1B5E2942C;
  sub_1B5E2D210();

  return sub_1B5E29754(v30);
}

uint64_t sub_1B5E2942C()
{
  sub_1B5E01DFC();
  v3 = v2;
  sub_1B5E2CF58();
  v4 = *v1;
  sub_1B5E2CE38();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    v7 = sub_1B5E295B8;
  }

  else
  {

    v7 = sub_1B5E29538;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B5E29538()
{
  sub_1B5E01DFC();
  v1 = v0[4];
  v2 = v0[9];
  if (v1)
  {
    v1(v0[2], v0[3]);
  }

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E295B8(__n128 a1)
{
  v2 = v1[4];
  if (v2)
  {
    v2(v1[2], v1[3]);
  }

  if (qword_1EB90D8E8 != -1)
  {
    sub_1B5E2CF9C(&qword_1EB90D8E8, a1);
  }

  v3 = v1[11];
  v4 = sub_1B5EA53B0();
  sub_1B5DFD794(v4, qword_1EB90D8F0);
  v5 = v3;
  v6 = sub_1B5EA5380();
  v7 = sub_1B5EA5A40();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[11];
  v10 = v1[9];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    sub_1B5E2D1F0(&dword_1B5DED000, v15, v16, "Prewarm failed with error: %{public}@");
    sub_1B5E2CCBC(v12, &unk_1EB90F890, &qword_1B5EB6DC0);
    sub_1B5E2D07C();
    sub_1B5E2D07C();
  }

  else
  {
  }

  sub_1B5E2CF4C();

  return v17();
}

uint64_t sub_1B5E29754(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  type metadata accessor for ClassificationXPCRequest.Request(0);
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B5E297E4, 0, 0);
}

uint64_t sub_1B5E297E4(__n128 a1)
{
  v27 = v1;
  if (qword_1EB90D8E8 != -1)
  {
    sub_1B5E2CF9C(&qword_1EB90D8E8, a1);
  }

  v2 = v1[15];
  v3 = sub_1B5EA53B0();
  v1[18] = sub_1B5DFD794(v3, qword_1EB90D8F0);
  v4 = v2;
  v5 = sub_1B5EA5380();
  v6 = sub_1B5EA5A60();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[17];
    v8 = v1[15];
    v9 = swift_slowAlloc();
    swift_slowAlloc();
    *v9 = 136446722;
    sub_1B5E2D094(v8 + OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_requestInfo);

    v10 = sub_1B5E5B1CC();

    *(v9 + 4) = v10;
    *(v9 + 12) = 2082;

    v11 = sub_1B5E5B1CC();

    *(v9 + 14) = v11;
    *(v9 + 22) = 2082;
    v12 = OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_request;
    sub_1B5E2D094(v8 + OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_request);
    sub_1B5E2CF64();
    sub_1B5E2CA74(v8 + v12, v7, v13);
    ClassificationXPCRequest.Request.category.getter(&v26);
    sub_1B5E2CAD8(v7);
    sub_1B5E2CFF4();
    v14 = sub_1B5E5B1CC();

    *(v9 + 24) = v14;
    _os_log_impl(&dword_1B5DED000, v5, v6, "ClassificationClient sending request with requestIdentifier=%{public}s, useCaseIdentifier=%{public}s, category=%{public}s", v9, 0x20u);
    swift_arrayDestroy();
    sub_1B5E2D07C();
    sub_1B5E2D07C();
  }

  else
  {
  }

  v15 = v1[15];
  v16 = v1[16];
  v17 = OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_requestInfo;
  v1[19] = OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_requestInfo;
  v18 = (v15 + v17);
  sub_1B5E2D094(v15 + v17);
  v20 = *v18;
  v19 = v18[1];
  v1[20] = v19;
  v21 = swift_task_alloc();
  v1[21] = v21;
  *(v21 + 16) = v16;
  *(v21 + 24) = v15;
  v22 = swift_task_alloc();
  v1[22] = v22;
  v22[2] = v16;
  v22[3] = v20;
  v22[4] = v19;

  v23 = swift_task_alloc();
  v1[23] = v23;
  v24 = type metadata accessor for ClassificationXPCResult(0);
  *v23 = v1;
  v23[1] = sub_1B5E29B58;

  return MEMORY[0x1EEE6DE18](v1 + 14, &unk_1B5EB5EB0, v21, sub_1B5E2CA48, v22, 0, 0, v24);
}

uint64_t sub_1B5E29B58()
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

  if (v0)
  {
    v7 = sub_1B5E29DC4;
  }

  else
  {

    v7 = sub_1B5E29C78;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B5E29C78()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = sub_1B5EA5380();
  v4 = sub_1B5EA5A60();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136315138;

    v6 = sub_1B5E5B1CC();

    *(v5 + 4) = v6;
    sub_1B5E2D1F0(&dword_1B5DED000, v7, v8, "ClassificationClient received response from request with requestIdentifier=%s");
    sub_1B5DF3FB8(v11);
    sub_1B5E2D07C();
    sub_1B5E2D07C();
  }

  v9 = *(v0 + 8);

  return v9(v1);
}

uint64_t sub_1B5E29DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_1B5E2D0E0();
  a23 = v25;
  a24 = v26;
  sub_1B5E2D1E4();
  a22 = v24;
  v27 = v24[24];
  v28 = v24[15];

  v29 = v28;
  v30 = v27;
  v31 = sub_1B5EA5380();
  v32 = sub_1B5EA5A40();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = v24[17];
    v34 = v24[15];
    v35 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    a10 = swift_slowAlloc();
    a11 = a10;
    *v35 = 136446978;

    v36 = sub_1B5E5B1CC();

    *(v35 + 4) = v36;
    *(v35 + 12) = 2082;

    v37 = sub_1B5E5B1CC();

    *(v35 + 14) = v37;
    *(v35 + 22) = 2082;
    v38 = OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_request;
    sub_1B5E2D094(v34 + OBJC_IVAR____TtC4Sage24ClassificationXPCRequest_request);
    sub_1B5E2CF64();
    sub_1B5E2CA74(v34 + v38, v33, v39);
    ClassificationXPCRequest.Request.category.getter(&a12 + 7);
    sub_1B5E2CAD8(v33);
    sub_1B5E2CFF4();
    v40 = v24[24];
    v41 = sub_1B5E5B1CC();

    *(v35 + 24) = v41;
    *(v35 + 32) = 2114;
    v42 = v40;
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 34) = v43;
    *a9 = v43;
    _os_log_impl(&dword_1B5DED000, v31, v32, "ClassificationClient request with requestIdentifier=%{public}s, useCaseIdentifier=%{public}s, category=%{public}s failed with error: %{public}@", v35, 0x2Au);
    sub_1B5E2CCBC(a9, &unk_1EB90F890, &qword_1B5EB6DC0);
    sub_1B5E2D07C();
    swift_arrayDestroy();
    sub_1B5E2D07C();
    sub_1B5E2D07C();
  }

  swift_willThrow();

  sub_1B5E2CF4C();
  sub_1B5E2D0AC();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1B5E2A07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  v10 = sub_1B5E01CF8(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  sub_1B5E2CC4C(a3, v26 - v11);
  v13 = sub_1B5EA5920();
  v14 = sub_1B5DF46E0(v12, 1, v13);

  if (v14 == 1)
  {
    sub_1B5E2CCBC(v12, &qword_1EB90E590, &qword_1B5EB6080);
  }

  else
  {
    sub_1B5EA5910();
    sub_1B5E2D1D8();
    (*(v15 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1B5EA58B0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1B5EA56F0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1B5E2CCBC(a3, &qword_1EB90E590, &qword_1B5EB6080);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B5E2CCBC(a3, &qword_1EB90E590, &qword_1B5EB6080);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t ClassificationClient.PrewarmCategory.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B5EA5D00();

  *a3 = v4 != 0;
  return result;
}

uint64_t ClassificationClient.prewarm(category:)()
{
  v0 = sub_1B5EA4340();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  sub_1B5EA4330();
  v4 = sub_1B5EA4300();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  ClassificationClient.prewarm(for:requestIdentifier:)(&v10, v7);
}

uint64_t ClassificationClient.classifyPriority(_:options:)()
{
  sub_1B5E01DFC();
  v3 = sub_1B5E2D034(v1, v2);
  *(v0 + 40) = v3;
  sub_1B5E01CF8(v3);
  v4 = sub_1B5E2D0C8();
  sub_1B5E2CE88(v4);
  v5 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  sub_1B5E01DFC();
  v3 = sub_1B5E2D034(v1, v2);
  *(v0 + 40) = v3;
  sub_1B5E01CF8(v3);
  v4 = sub_1B5E2D0C8();
  sub_1B5E2CE88(v4);
  v5 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  sub_1B5E01DFC();
  v3 = sub_1B5E2D034(v1, v2);
  *(v0 + 40) = v3;
  sub_1B5E01CF8(v3);
  v4 = sub_1B5E2D0C8();
  sub_1B5E2CE88(v4);
  v5 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  sub_1B5E2CED8();
  v2 = sub_1B5E2D014(v1);
  *(v0 + 32) = v2;
  sub_1B5E01CF8(v2);
  v3 = sub_1B5E2D0C8();
  sub_1B5E2CEA8(v3);
  v4 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  sub_1B5E2CED8();
  v2 = sub_1B5E2D014(v1);
  *(v0 + 32) = v2;
  sub_1B5E01CF8(v2);
  v3 = sub_1B5E2D0C8();
  sub_1B5E2CEA8(v3);
  v4 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  sub_1B5E2CED8();
  v2 = sub_1B5E2D014(v1);
  *(v0 + 32) = v2;
  sub_1B5E01CF8(v2);
  v3 = sub_1B5E2D0C8();
  sub_1B5E2CEA8(v3);
  v4 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B5E2A628()
{
  sub_1B5E2D0E0();
  sub_1B5E2D1E4();
  sub_1B5E2CF34();
  sub_1B5DF33E0(&qword_1EB90E448, &qword_1B5EB47B0);
  sub_1B5E2D17C();
  sub_1B5E2CF04();
  swift_storeEnumTagMultiPayload();
  v0 = objc_allocWithZone(sub_1B5E2D198());
  sub_1B5E2D160();

  v1 = sub_1B5E2D108();
  v3 = ClassificationXPCRequest.init(request:requestInfo:)(v1, v2);
  sub_1B5E2D054(v3);
  v4 = swift_task_alloc();
  v5 = sub_1B5E2D060(v4);
  *v5 = v6;
  sub_1B5E2CFD0(v5);
  sub_1B5E2D0AC();

  return sub_1B5E29754(v7);
}

uint64_t sub_1B5E2A724()
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

uint64_t sub_1B5E2A828()
{
  sub_1B5E2CED8();
  v1 = v0[13];
  v2 = v0[10];
  sub_1B5E27648(v0[2]);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E2A8B0()
{
  sub_1B5E01DFC();

  sub_1B5E2CF4C();

  return v1();
}

uint64_t sub_1B5E2A988()
{
  sub_1B5E2D0E0();
  sub_1B5E2D1E4();
  sub_1B5E2CF34();
  sub_1B5DF33E0(&qword_1EB90E440, &qword_1B5EB5B20);
  sub_1B5E2D17C();
  sub_1B5E2CF04();
  swift_storeEnumTagMultiPayload();
  v0 = objc_allocWithZone(sub_1B5E2D198());
  sub_1B5E2D160();

  v1 = sub_1B5E2D108();
  v3 = ClassificationXPCRequest.init(request:requestInfo:)(v1, v2);
  sub_1B5E2D054(v3);
  v4 = swift_task_alloc();
  v5 = sub_1B5E2D060(v4);
  *v5 = v6;
  sub_1B5E2CFD0(v5);
  sub_1B5E2D0AC();

  return sub_1B5E29754(v7);
}

uint64_t sub_1B5E2AA84()
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

uint64_t sub_1B5E2ABFC()
{
  sub_1B5E2D0E0();
  sub_1B5E2D1E4();
  sub_1B5E2CF34();
  sub_1B5DF33E0(&qword_1EB90E438, &unk_1B5EB47A0);
  sub_1B5E2D17C();
  sub_1B5E2CF04();
  swift_storeEnumTagMultiPayload();
  v0 = objc_allocWithZone(type metadata accessor for ClassificationXPCRequest(0));
  sub_1B5E2D160();

  v1 = sub_1B5E2D108();
  v3 = ClassificationXPCRequest.init(request:requestInfo:)(v1, v2);
  sub_1B5E2D054(v3);
  v4 = swift_task_alloc();
  v5 = sub_1B5E2D060(v4);
  *v5 = v6;
  sub_1B5E2CFD0(v5);
  sub_1B5E2D0AC();

  return sub_1B5E29754(v7);
}

uint64_t sub_1B5E2AE4C()
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

uint64_t sub_1B5E2AF50()
{
  sub_1B5E2CED8();
  v1 = v0[13];
  v2 = v0[10];
  sub_1B5E27648(v0[2]);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E2AFD8()
{
  sub_1B5E01DFC();

  sub_1B5E2CF4C();

  return v1();
}

uint64_t sub_1B5E2B17C()
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

uint64_t sub_1B5E2B3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B5E2B3F8, 0, 0);
}

uint64_t sub_1B5E2B3F8(uint64_t a1, void (*a2)(void *a1, uint64_t a2, uint64_t a3), uint64_t a3, uint64_t a4)
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
    a4 = type metadata accessor for ClassificationXPCResult(0);
    *v8 = v4;
    v8[1] = sub_1B5E2B4F0;
    a1 = v4[2];
    a2 = sub_1B5E2CBF4;
    a3 = v7;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30](a1, a2, a3, a4);
}

uint64_t sub_1B5E2B4F0()
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

    return MEMORY[0x1EEE6DFA0](sub_1B5E2B61C, 0, 0);
  }

  else
  {

    sub_1B5E2CF4C();

    return v7();
  }
}

uint64_t sub_1B5E2B61C()
{
  sub_1B5E01DFC();

  sub_1B5E2CF4C();

  return v0();
}

void sub_1B5E2B680(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_1B5E2CBFC;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B5E2B774;
  v10[3] = &unk_1F2D65E18;
  v9 = _Block_copy(v10);

  [a1 performClassificationRequest:a4 with:v9];
  _Block_release(v9);
}

void sub_1B5E2B774(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1B5E2B800(uint64_t a1, uint64_t a2)
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

  sub_1B5E639C0(0, 0, v7, &unk_1B5EB5EC8, v9);

  if (qword_1EB90D8E8 != -1)
  {
    swift_once();
  }

  v10 = sub_1B5EA53B0();
  sub_1B5DFD794(v10, qword_1EB90D8F0);

  v11 = sub_1B5EA5380();
  v12 = sub_1B5EA5A60();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15[1] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v11, v12, "Classification request with identifier %{public}s was cancelled by client.", v13, 0xCu);
    sub_1B5DF3FB8(v14);
    MEMORY[0x1B8C8B330](v14, -1, -1);
    MEMORY[0x1B8C8B330](v13, -1, -1);
  }
}

uint64_t sub_1B5E2BA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B5E2BA34, 0, 0);
}

void sub_1B5E2BA34()
{
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

void sub_1B5E2BB18(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B5EA5670();
  [a1 cancelRequestWithIdentifier_];
}

uint64_t ClassificationClient.testTaskCancellation(sleepDuration:)()
{
  sub_1B5E01DFC();
  v1[3] = v0;
  v1[2] = v2;
  v3 = type metadata accessor for ClassificationXPCRequest.Request(0);
  v1[4] = v3;
  sub_1B5E01CF8(v3);
  v1[5] = sub_1B5E2D0C8();
  v4 = sub_1B5EA4340();
  v1[6] = v4;
  v1[7] = *(v4 - 8);
  v1[8] = sub_1B5E2D0C8();
  v5 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B5E2BC4C(uint64_t a1)
{
  v16 = v1;
  v3 = v1[7];
  v2 = v1[8];
  v5 = v1[5];
  v4 = v1[6];
  v6 = v1[2];
  sub_1B5EA4330();
  v7 = sub_1B5EA4300();
  v9 = v8;
  (*(v3 + 8))(v2, v4);
  *v5 = v6;
  swift_storeEnumTagMultiPayload();
  *&v13 = v7;
  *(&v13 + 1) = v9;
  v14 = 0xD000000000000022;
  v15 = 0x80000001B5EA8E10;
  objc_allocWithZone(type metadata accessor for ClassificationXPCRequest(0));
  v1[9] = ClassificationXPCRequest.init(request:requestInfo:)(v5, &v13);
  v10 = swift_task_alloc();
  v1[10] = v10;
  *v10 = v1;
  v11 = sub_1B5E2CEC4(v10);

  return sub_1B5E29754(v11);
}

uint64_t sub_1B5E2BD88()
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

uint64_t sub_1B5E2BE8C()
{
  sub_1B5E2CED8();
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  sub_1B5E2756C();

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E2BF1C()
{
  sub_1B5E01DFC();

  sub_1B5E2CF4C();

  return v1();
}

unint64_t ClassificationClient.UseCase.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      return result;
    case 7:
      result = 0x7966697373616C63;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1B5E2C0A8()
{
  sub_1B5E2D114();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  v8 = sub_1B5E2CEE4(v7);
  *v8 = v9;
  v8[1] = sub_1B5E2C184;
  v10 = sub_1B5E2CEF4();

  return sub_1B5E29288(v10, v11, v1, v2, v3, v6, v4, v5);
}

uint64_t sub_1B5E2C184()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v1 = *v0;
  sub_1B5E2CE38();
  *v2 = v1;

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E2C264(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

Sage::ClassificationClient::UseCase_optional __swiftcall ClassificationClient.UseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B5EA5D00();

  if (v3 >= 6)
  {
    v5 = 8;
  }

  else
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B5E2C2D0(uint64_t a1, uint64_t a2)
{
  result = sub_1B5E2C374(qword_1EB90D4C0, a2, type metadata accessor for ClassificationClient, &protocol conformance descriptor for ClassificationClient);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B5E2C374(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1B5E2C3C0()
{
  result = qword_1EB90E5A0;
  if (!qword_1EB90E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E5A0);
  }

  return result;
}

unint64_t sub_1B5E2C424()
{
  result = qword_1EB90E5A8;
  if (!qword_1EB90E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E5A8);
  }

  return result;
}

unint64_t sub_1B5E2C49C@<X0>(unint64_t *a1@<X8>)
{
  result = ClassificationClient.UseCase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *sub_1B5E2C5AC(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ClassificationClient.UseCase(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B5E2C72C()
{
  result = qword_1EB90E5B0;
  if (!qword_1EB90E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E5B0);
  }

  return result;
}

unint64_t sub_1B5E2C780()
{
  result = qword_1EB90E5B8;
  if (!qword_1EB90E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E5B8);
  }

  return result;
}

uint64_t sub_1B5E2C7D4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B5E2C8CC;

  return v6(a1);
}

uint64_t sub_1B5E2C8CC()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v1 = *v0;
  sub_1B5E2CE38();
  *v2 = v1;

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E2C9B0()
{
  sub_1B5E2CED8();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_1B5E2CEE4(v2);
  *v3 = v4;
  v3[1] = sub_1B5E2C184;
  v5 = sub_1B5E2CEF4();

  return sub_1B5E2B3D4(v5, v6, v1);
}

uint64_t sub_1B5E2CA74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  sub_1B5E2D1D8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B5E2CAD8(uint64_t a1)
{
  v2 = type metadata accessor for ClassificationXPCRequest.Request(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B5E2CB34()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = sub_1B5E2CEE4(v5);
  *v6 = v7;
  v6[1] = sub_1B5E2CDCC;
  v8 = sub_1B5E2CEF4();

  return sub_1B5E2BA10(v8, v9, v1, v2, v3, v4);
}

uint64_t sub_1B5E2CBFC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1B5E2CC34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B5E2CC4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E2CCBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1B5DF33E0(a2, a3);
  sub_1B5E2D1D8();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1B5E2CD18()
{
  sub_1B5E2CED8();
  v0 = swift_task_alloc();
  v1 = sub_1B5E2CEE4(v0);
  *v1 = v2;
  v1[1] = sub_1B5E2CDCC;
  v3 = sub_1B5E2CEF4();

  return v4(v3);
}

uint64_t sub_1B5E2CDD8(uint64_t a1, __n128 a2)
{

  return swift_once();
}

uint64_t sub_1B5E2CDF8(uint64_t a1, __n128 a2)
{

  return swift_once();
}

uint64_t sub_1B5E2CE18(uint64_t a1, __n128 a2)
{

  return swift_once();
}

__n128 sub_1B5E2CE88(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = *v1;
  *(v2 + 56) = *v1;
  *(v2 + 112) = v1[1].n128_u8[0];
  *(v2 + 72) = v1[1].n128_u64[1];
  return result;
}

__n128 sub_1B5E2CEA8(unint64_t a1)
{
  v4 = *v2;
  v3[2].n128_u64[1] = a1;
  v3[3].n128_u64[0] = v4;
  v3[3].n128_u64[1] = *v1;
  result = *(v1 + 8);
  v3[4] = result;
  return result;
}

uint64_t sub_1B5E2CF04()
{
  *v5 = v4;
  *(v5 + 8) = v2;
  *(v5 + 16) = v3;
  *(v5 + 24) = v0;
  return v1;
}

void *sub_1B5E2CF1C()
{
  *v3 = v2;
  v3[1] = v4;
  v3[2] = v0;
  v3[3] = v1;
  return v3;
}

uint64_t sub_1B5E2CF7C()
{

  return swift_beginAccess();
}

uint64_t sub_1B5E2CF9C(uint64_t a1, __n128 a2)
{

  return swift_once();
}

uint64_t sub_1B5E2D014(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;

  return type metadata accessor for ClassificationXPCRequest.Request(0);
}

uint64_t sub_1B5E2D034(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;

  return type metadata accessor for ClassificationXPCRequest.Request(0);
}

void sub_1B5E2D07C()
{

  JUMPOUT(0x1B8C8B330);
}

uint64_t sub_1B5E2D094(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1B5E2D0C8()
{

  return swift_task_alloc();
}

uint64_t sub_1B5E2D120()
{

  return type metadata accessor for ClassificationXPCRequest(0);
}

uint64_t sub_1B5E2D144()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1B5E2D160()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1B5E2D17C()
{

  return sub_1B5E2CA74(v2, v1, v0);
}

uint64_t sub_1B5E2D198()
{

  return type metadata accessor for ClassificationXPCRequest(0);
}

id sub_1B5E2D1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{

  return ClassificationXPCRequest.init(request:requestInfo:)(v9, &a9);
}

void sub_1B5E2D1F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1B5E2D240(uint64_t a1)
{

  return swift_beginAccess();
}

void sub_1B5E2D258()
{
  sub_1B5DFD8A8();
  v1 = v0;
  v3 = v2;
  v61 = sub_1B5EA5160();
  sub_1B5DF5DA8();
  v59 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5E34D14();
  v58 = v6;
  v7 = sub_1B5DF33E0(&qword_1EB90E5E0, &qword_1B5EB6040);
  sub_1B5E01CF8(v7);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  v11 = sub_1B5DF33E0(&unk_1EB90E780, &unk_1B5EB60F0);
  sub_1B5E01CF8(v11);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v12);
  sub_1B5DFA50C();
  v62 = v13;
  sub_1B5E34DC8();
  v14 = sub_1B5EA55A0();
  sub_1B5DF5DA8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1B5DFD7F8();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  swift_defaultActor_initialize();
  v24 = type metadata accessor for SessionConfiguration(0);
  v60 = v24[6];
  sub_1B5EA5420();
  (*(v16 + 104))(v20, *MEMORY[0x1E69C63F8], v14);
  v25 = sub_1B5EA5590();
  v26 = *(v16 + 8);
  v26(v20, v14);
  v26(v23, v14);
  if (v25)
  {
    v27 = sub_1B5EA48D0();
    sub_1B5E10A64(v27, v10);

    v28 = sub_1B5EA4660();
    if (sub_1B5DF46E0(v10, 1, v28) != 1)
    {
      v34 = v62;
      sub_1B5EA4640();
      (*(*(v28 - 8) + 8))(v10, v28);
      v35 = sub_1B5EA42B0();
      sub_1B5DF3658(v34, 0, 1, v35);
      sub_1B5DF4428(v34, &unk_1EB90E780, &unk_1B5EB60F0);
      v36 = (v3 + v24[8]);
      v37 = *v36;
      v38 = v36[1];
      v39 = (v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_identifier);
      *v39 = v37;
      v39[1] = v38;
      v40 = (v3 + v24[7]);
      v41 = v40[1];
      v1[14] = *v40;
      v1[15] = v41;
      sub_1B5E34AEC(v3, v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_configuration, type metadata accessor for SessionConfiguration);
      v1[17] = MEMORY[0x1E69E7CD0];
      *(v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_position) = 0;

      v42 = v58;
      sub_1B5EA5150();
      (*(v59 + 32))(v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_toolChoice, v42, v61);
      v43 = MEMORY[0x1E69E7CC0];
      *(v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_tools) = MEMORY[0x1E69E7CC0];
      *(v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_instructionsTemplateVariableBindings) = v43;
      type metadata accessor for GenerativeExperiencesSessionClientData(0);
      sub_1B5E34D28();
      sub_1B5E34900(v44, v45, MEMORY[0x1E69C6410]);
      v46 = sub_1B5EA55E0();
      v47 = v60;
      sub_1B5E2D848(v3 + v60, v46, v63);

      sub_1B5DF33E0(&qword_1EB90E638, &qword_1B5EB60B0);
      v48 = (type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0) - 8);
      v49 = (*(*v48 + 80) + 32) & ~*(*v48 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1B5EAFC20;
      sub_1B5EA5450();
      sub_1B5DF5EB8();
      (*(v51 + 16))(v50 + v49, v3 + v47);
      sub_1B5EA47C0();
      sub_1B5DF5DF0();
      sub_1B5DF3658(v52, v53, v54, v55);
      v56 = v50 + v49 + v48[8];
      v57 = v63[1];
      *v56 = v63[0];
      *(v56 + 16) = v57;
      *(v56 + 32) = v64;
      sub_1B5E34A98();
      v1[16] = v50;
      goto LABEL_6;
    }

    sub_1B5DF4428(v10, &qword_1EB90E5E0, &qword_1B5EB6040);
    sub_1B5EA42B0();
    v29 = v62;
    sub_1B5DF5DF0();
    sub_1B5DF3658(v30, v31, v32, v33);
    sub_1B5DF4428(v29, &unk_1EB90E780, &unk_1B5EB60F0);
  }

  type metadata accessor for GenerativeExperiencesSessionClientData(0);
  swift_defaultActor_destroy();
  sub_1B5E34D60();
  sub_1B5E34A98();
  sub_1B5DFA488();
  swift_deallocPartialClassInstance();
LABEL_6:
  sub_1B5E34EB4();
  sub_1B5DFD8C0();
}

uint64_t sub_1B5E2D848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v69 = a3;
  v5 = sub_1B5DF33E0(&qword_1EB90E5D0, &qword_1B5EB6030);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v66 - v6;
  v8 = sub_1B5EA4B10();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B5EA55A0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v67 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v74 = &v66 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v66 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v66 - v21;
  v72 = a1;
  sub_1B5EA5420();
  v70 = v13;
  v23 = *(v13 + 88);
  v73 = v12;
  v24 = v23(v22, v12);
  v25 = *MEMORY[0x1E69C63F8];
  v71 = v9;
  if (v24 == v25)
  {
    v77 = 0xD000000000000013;
    v78 = 0x80000001B5EA9170;
    strcpy(v76, "specialToken.");
    HIWORD(v76[1]) = -4864;
    v26 = sub_1B5EA4360();
    sub_1B5DF3658(v7, 1, 1, v26);
    sub_1B5EA4AC0();
    sub_1B5DF4428(v7, &qword_1EB90E5D0, &qword_1B5EB6030);
    v27 = sub_1B5EA4AB0();
    v29 = v28;
    v30 = *(v9 + 8);
    v30(v11, v8);
LABEL_11:
    MEMORY[0x1B8C8A360](v27, v29);

    v38 = v76[0];
    v39 = v76[1];
    v76[0] = 95;
    v76[1] = 0xE100000000000000;
    sub_1B5EA5420();
    if (*(a2 + 16) && (sub_1B5E5AEC0(), (v41 & 1) != 0))
    {
      v42 = *(*(a2 + 56) + 8 * v40);
    }

    else
    {
      v42 = 0;
    }

    v68 = *(v70 + 8);
    v68(v20, v73);
    v75 = v42;
    v43 = sub_1B5EA5ED0();
    MEMORY[0x1B8C8A360](v43);

    MEMORY[0x1B8C8A360](v76[0], v76[1]);

    v76[0] = 0;
    v76[1] = 0xE000000000000000;
    sub_1B5EA5BC0();

    v76[0] = 2128763;
    v76[1] = 0xE300000000000000;
    MEMORY[0x1B8C8A360](v38, v39);

    MEMORY[0x1B8C8A360](0x207B7B7D7D20, 0xE600000000000000);
    v45 = v77;
    v44 = v78;
    MEMORY[0x1B8C8A360](v77, v78);
    MEMORY[0x1B8C8A360](0xD000000000000013, 0x80000001B5EA9150);
    v46 = sub_1B5EA4360();
    sub_1B5DF3658(v7, 1, 1, v46);
    sub_1B5EA4AF0();
    sub_1B5DF4428(v7, &qword_1EB90E5D0, &qword_1B5EB6030);
    v47 = sub_1B5EA4AB0();
    v49 = v48;
    v30(v11, v8);
    MEMORY[0x1B8C8A360](v47, v49);

    MEMORY[0x1B8C8A360](8224032, 0xE300000000000000);
    v50 = v76[0];
    v51 = v76[1];

    sub_1B5EA5420();
    swift_isUniquelyReferenced_nonNull_native();
    v76[0] = a2;
    sub_1B5E5AEC0();
    if (__OFADD__(*(a2 + 16), (v53 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v54 = v52;
      v55 = v53;
      sub_1B5DF33E0(&qword_1EB90E5F8, &unk_1B5EB6050);
      v56 = sub_1B5EA5C70();
      v57 = v76[0];
      if (v56)
      {
        sub_1B5E5AEC0();
        if ((v55 & 1) != (v59 & 1))
        {
LABEL_25:
          sub_1B5EA5F40();
          __break(1u);
          goto LABEL_26;
        }

        v54 = v58;
      }

      if ((v55 & 1) == 0)
      {
        (*(v70 + 16))(v67, v74, v73);
        sub_1B5E9FE10();
      }

      v60 = *(v57 + 56);
      v61 = *(v60 + 8 * v54);
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (!v62)
      {
        *(v60 + 8 * v54) = v63;
        result = (v68)(v74, v73);
        v65 = v69;
        *v69 = v50;
        v65[1] = v51;
        v65[2] = v57;
        v65[3] = v45;
        v65[4] = v44;
        return result;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v24 == *MEMORY[0x1E69C63E0])
  {
    v77 = 1919251317;
    v78 = 0xE400000000000000;
    strcpy(v76, "specialToken.");
    HIWORD(v76[1]) = -4864;
    v31 = sub_1B5EA4360();
    sub_1B5DF3658(v7, 1, 1, v31);
    sub_1B5EA4AE0();
    sub_1B5DF4428(v7, &qword_1EB90E5D0, &qword_1B5EB6030);
    v27 = sub_1B5EA4AB0();
    v29 = v32;
    v33 = v71;
LABEL_10:
    v30 = *(v33 + 8);
    v30(v11, v8);
    goto LABEL_11;
  }

  v34 = v71;
  if (v24 == *MEMORY[0x1E69C6400])
  {
    v77 = 0x6E61747369737361;
    v78 = 0xE900000000000074;
    strcpy(v76, "specialToken.");
    HIWORD(v76[1]) = -4864;
    v35 = sub_1B5EA4360();
    sub_1B5DF3658(v7, 1, 1, v35);
    sub_1B5EA4B00();
LABEL_9:
    sub_1B5DF4428(v7, &qword_1EB90E5D0, &qword_1B5EB6030);
    v27 = sub_1B5EA4AB0();
    v29 = v37;
    v33 = v34;
    goto LABEL_10;
  }

  if (v24 == *MEMORY[0x1E69C63D8])
  {
    v77 = 1819242356;
    v78 = 0xE400000000000000;
    strcpy(v76, "specialToken.");
    HIWORD(v76[1]) = -4864;
    v36 = sub_1B5EA4360();
    sub_1B5DF3658(v7, 1, 1, v36);
    sub_1B5EA4AD0();
    goto LABEL_9;
  }

LABEL_26:
  result = sub_1B5EA5CA0();
  __break(1u);
  return result;
}

void sub_1B5E2E05C()
{
  sub_1B5DFD8A8();
  v53[1] = v2;
  v53[2] = v1;
  v54 = v3;
  v4 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
  sub_1B5DF5DA8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5E34D14();
  v57 = v8;
  sub_1B5E34DC8();
  v53[0] = sub_1B5EA5450();
  sub_1B5DF5DA8();
  v58 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5E34D14();
  v12 = v11;
  v13 = sub_1B5DF33E0(&qword_1EB90E5D8, &qword_1B5EB6038);
  sub_1B5E01CF8(v13);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v53 - v15;
  v17 = OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_position;
  sub_1B5E34DAC(v0 + 128);
  while (1)
  {
    v18 = *(v0 + 128);
    v19 = *(v18 + 16);
    if (*(v0 + v17) >= v19 - 1)
    {
      break;
    }

    sub_1B5E34E78(v0 + 128);
    if (v19)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 128) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B5E34A84(v18);
        v18 = v25;
      }

      if (!*(v18 + 16))
      {
        __break(1u);
        return;
      }

      sub_1B5E34EF8();
      v23 = v18 + v21 + *(v6 + 72) * v22;
      *(v18 + 16) = v22;
      *(v0 + 128) = v18;
      sub_1B5E34A20(v23, v16);
      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    sub_1B5DF3658(v16, v24, 1, v4);
    sub_1B5DF4428(v16, &qword_1EB90E5D8, &qword_1B5EB6038);
    swift_endAccess();
  }

  if (*(v0 + 120))
  {
    v26 = v54;
    sub_1B5E30FD0();
    sub_1B5E1A084();
    sub_1B5EA5470();
    sub_1B5DF5DF0();
    sub_1B5DF3658(v27, v28, v29, v30);
    v31 = sub_1B5EA4E40();
    sub_1B5DF3658(v26, 0, 1, v31);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      v59 = MEMORY[0x1E69E7CC0];

      sub_1B5E5BF1C(0, v19, 0);
      sub_1B5E34D90();
      v34 = v18 + v33;
      v35 = *(v6 + 72);
      v32 = v59;
      v36 = (v58 + 16);
      v55 = v58 + 32;
      v56 = v35;
      v37 = v53[0];
      do
      {
        v38 = v57;
        sub_1B5E34AEC(v34, v57, type metadata accessor for GenerativeExperiencesSessionClientData.Conversation);
        (*v36)(v12, v38, v37);
        sub_1B5E34A98();
        v59 = v32;
        v40 = *(v32 + 16);
        v39 = *(v32 + 24);
        if (v40 >= v39 >> 1)
        {
          v43 = sub_1B5E34E0C(v39);
          sub_1B5E5BF1C(v43, v40 + 1, 1);
          v32 = v59;
        }

        *(v32 + 16) = v40 + 1;
        sub_1B5E34D40();
        (*(v42 + 32))(v32 + v41 + *(v42 + 72) * v40, v12, v37);
        v34 += v56;
        --v19;
      }

      while (v19);
    }

    v44 = sub_1B5EA5460();
    v59 = v32;
    sub_1B5E341A8(v44);
    sub_1B5EA5480();
    sub_1B5EA5470();
    v45 = sub_1B5E34D9C();
    sub_1B5DF3658(v45, v46, v47, v48);
    sub_1B5EA4E40();
    sub_1B5DF5DF0();
    sub_1B5DF3658(v49, v50, v51, v52);
  }

  sub_1B5E34EB4();
  sub_1B5DFD8C0();
}

uint64_t sub_1B5E2E434()
{
  sub_1B5E01DFC();
  v1[17] = v2;
  v1[18] = v0;
  v1[16] = v3;
  v4 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
  v1[19] = v4;
  sub_1B5E01C50(v4);
  v1[20] = v5;
  v1[21] = sub_1B5E2D0C8();
  v6 = sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5E01CF8(v6);
  v1[22] = sub_1B5E2D0C8();
  v7 = sub_1B5EA5450();
  v1[23] = v7;
  sub_1B5E01C50(v7);
  v1[24] = v8;
  v1[25] = sub_1B5E2D0C8();
  v9 = sub_1B5DF33E0(&qword_1EB90E5D8, &qword_1B5EB6038);
  sub_1B5E01CF8(v9);
  v1[26] = sub_1B5E34E90();
  v1[27] = swift_task_alloc();
  v10 = sub_1B5E34D50();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1B5E2E58C()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_position;
  v0[28] = OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_position;
  sub_1B5E2D094(v2 + 128);
  while (1)
  {
    v4 = *(v2 + 128);
    v5 = *(v4 + 16);
    if (*(v2 + v3) >= v5 - 1)
    {
      break;
    }

    sub_1B5E34E78(v2 + 128);
    if (v5)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 128) = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B5E34A84(v4);
        v4 = v13;
      }

      if (!*(v4 + 16))
      {
        __break(1u);
        return;
      }

      sub_1B5E34EF8();
      v9 = v4 + v7 + *(v1 + 72) * v8;
      *(v4 + 16) = v8;
      *(v2 + 128) = v4;
      sub_1B5E34A20(v9, v10);
      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = v0[27];
    sub_1B5DF3658(v12, v11, 1, v0[19]);
    sub_1B5DF4428(v12, &qword_1EB90E5D8, &qword_1B5EB6038);
    swift_endAccess();
  }

  swift_task_alloc();
  sub_1B5E34EEC();
  v0[29] = v14;
  *v14 = v15;
  v14[1] = sub_1B5E2E724;

  sub_1B5E2F928();
}

uint64_t sub_1B5E2E724()
{
  sub_1B5E01DFC();
  v2 = *v1;
  sub_1B5E34F1C();
  *v3 = v2;
  v4 = *v1;
  sub_1B5E34F1C();
  *v5 = v4;
  v2[30] = v0;

  if (v0)
  {
    v6 = v2[18];

    return MEMORY[0x1EEE6DFA0](sub_1B5E2EC78, v6, 0);
  }

  else
  {
    swift_task_alloc();
    sub_1B5E34EEC();
    v2[31] = v7;
    *v7 = v8;
    v7[1] = sub_1B5E2E888;

    return sub_1B5E2FE80();
  }
}

uint64_t sub_1B5E2E888(uint64_t a1)
{
  v3 = *v2;
  sub_1B5E34F1C();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 256) = v1;

  v6 = *(v3 + 144);
  if (v1)
  {
    v7 = sub_1B5E2ED0C;
  }

  else
  {
    v7 = sub_1B5E2E9B0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B5E2E9B0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 152);
  sub_1B5E2EDB8(*(*(v0 + 144) + 128), v1);
  if (sub_1B5DF46E0(v1, 1, v2) == 1)
  {
    sub_1B5DF4428(*(v0 + 208), &qword_1EB90E5D8, &qword_1B5EB6038);
    sub_1B5EA55A0();
    sub_1B5E34D28();
    sub_1B5E34900(v3, v4, MEMORY[0x1E69C6410]);
    v5 = sub_1B5EA55E0();
  }

  else
  {
    v5 = *(*(v0 + 208) + *(*(v0 + 152) + 24) + 16);

    sub_1B5E34D78();
    sub_1B5E34A98();
  }

  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v8 = *(v0 + 176);
  v9 = *(v0 + 184);
  v25 = v9;
  v26 = *(v0 + 224);
  v10 = *(v0 + 168);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  type metadata accessor for GenerativeExperiencesSessionClientData(0);
  sub_1B5E2D848(v6, v5, (v0 + 16));

  (*(v7 + 16))(v10, v6, v9);
  sub_1B5E11D08(v8, v10 + *(v12 + 20), &qword_1EB90E5C0, &unk_1B5EB6EB0);
  v13 = v10 + *(v12 + 24);
  v14 = *(v0 + 16);
  v15 = *(v0 + 32);
  *(v13 + 32) = *(v0 + 48);
  *v13 = v14;
  *(v13 + 16) = v15;
  sub_1B5E34E78(v11 + 128);
  sub_1B5E32A70(sub_1B5E6D8EC);
  v16 = *(*(v11 + 128) + 16);
  sub_1B5E32B14(v16, sub_1B5E6D8EC);
  v17 = *(v11 + 128);
  *(v17 + 16) = v16 + 1;
  sub_1B5E34D40();
  sub_1B5E34A20(v10, v17 + v18 + *(v19 + 72) * v16);
  *(v11 + 128) = v17;
  swift_endAccess();
  sub_1B5DF4428(v8, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  result = (*(v7 + 8))(v6, v25);
  v21 = *(v11 + v26);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(*(v0 + 144) + *(v0 + 224)) = v23;

    sub_1B5E2CF4C();

    return v24();
  }

  return result;
}

uint64_t sub_1B5E2EC78()
{
  sub_1B5E34EC0();

  sub_1B5E2CF4C();

  return v0();
}

uint64_t sub_1B5E2ED0C()
{
  sub_1B5E34EC0();
  (*(v0[24] + 8))(v0[25], v0[23]);

  sub_1B5E2CF4C();

  return v1();
}

uint64_t sub_1B5E2EDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
    sub_1B5E34AEC(a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a2, type metadata accessor for GenerativeExperiencesSessionClientData.Conversation);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
    v7 = a2;
    v8 = 1;
  }

  return sub_1B5DF3658(v7, v8, 1, v9);
}

uint64_t sub_1B5E2EEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_1B5DF33E0(&qword_1EB90E630, &unk_1B5EB60A0);
    sub_1B5E11D08(a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a2, &qword_1EB90E630, &unk_1B5EB60A0);
    v7 = sub_1B5E34D9C();
    v10 = v6;
  }

  else
  {
    sub_1B5DF33E0(&qword_1EB90E630, &unk_1B5EB60A0);
    sub_1B5DF5DF0();
  }

  return sub_1B5DF3658(v7, v8, v9, v10);
}

uint64_t sub_1B5E2EFB0(uint64_t a1)
{
  v3 = sub_1B5EA4EE0();
  sub_1B5DF5DA8();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v9);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  sub_1B5EA5920();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v13, v14, v15, v16);
  (*(v5 + 16))(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v17 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = v1;
  (*(v5 + 32))(&v18[v17], &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_1B5E2A07C(0, 0, v12, &unk_1B5EB6090, v18);
}

uint64_t sub_1B5E2F150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B5E2F170, a4, 0);
}

uint64_t sub_1B5E2F170()
{
  sub_1B5E01DFC();
  sub_1B5E305C4();
  sub_1B5E2CF4C();

  return v0();
}

uint64_t sub_1B5E2F1C8(uint64_t a1)
{
  v3 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v3);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  sub_1B5EA5920();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v7, v8, v9, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v11[5] = a1;

  sub_1B5E2A07C(0, 0, v6, &unk_1B5EB60C0, v11);
}

uint64_t sub_1B5E2F2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B5E2F2CC, a4, 0);
}

uint64_t sub_1B5E2F2CC()
{
  sub_1B5E01DFC();
  sub_1B5E306D0();
  sub_1B5E2CF4C();

  return v0();
}

uint64_t sub_1B5E2F324()
{
  sub_1B5E01DFC();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5E01CF8(v3);
  v1[7] = sub_1B5E2D0C8();
  v4 = sub_1B5E34D50();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B5E2F3A8(__n128 a1)
{
  v2 = v1[6];
  v3 = OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_position;
  if (*(v2 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_position) < 2)
  {
    if (qword_1EB90D178 != -1)
    {
      sub_1B5E34CF4(&qword_1EB90D178, a1);
    }

    v15 = sub_1B5EA53B0();
    sub_1B5DFD794(v15, qword_1EB90D180);
    v16 = sub_1B5EA5380();
    v17 = sub_1B5EA5A40();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = sub_1B5E34E60();
      sub_1B5E34EA8(v18);
      sub_1B5E34F28(&dword_1B5DED000, v19, v20, "Unable to perform undo operation.");
      sub_1B5E34DF0();
    }

    sub_1B5EA47C0();
  }

  else
  {
    sub_1B5E31C7C();
    v5 = v4;
    v6 = v4 - 1;
    *(v2 + v3) = v4 - 1;
    result = sub_1B5E2D094(v2 + 128);
    v8 = *(v2 + 128);
    if (v5 <= *(v8 + 16))
    {
      if (!v5)
      {
        __break(1u);
        return result;
      }

      v9 = v1[7];
      v10 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
      v11 = sub_1B5E01C50(v10);
      sub_1B5E11D08(v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v13 + 72) * v6 + *(v11 + 28), v9, &qword_1EB90E5C0, &unk_1B5EB6EB0);
      v14 = sub_1B5EA47C0();
      if (sub_1B5DF46E0(v9, 1, v14) != 1)
      {
        (*(*(v14 - 8) + 32))(v1[5], v1[7], v14);
        v21 = sub_1B5E34D9C();
        v24 = v14;
        goto LABEL_13;
      }

      sub_1B5DF4428(v1[7], &qword_1EB90E5C0, &unk_1B5EB6EB0);
    }

    sub_1B5EA47C0();
  }

  sub_1B5DF5DF0();
LABEL_13:
  sub_1B5DF3658(v21, v22, v23, v24);

  sub_1B5E2CF4C();

  return v25();
}

uint64_t sub_1B5E2F604()
{
  sub_1B5E01DFC();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5E01CF8(v3);
  v1[7] = sub_1B5E2D0C8();
  v4 = sub_1B5E34D50();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B5E2F688()
{
  if (!sub_1B5E2F8D8())
  {
    if (qword_1EB90D178 == -1)
    {
LABEL_7:
      v19 = sub_1B5EA53B0();
      sub_1B5DFD794(v19, qword_1EB90D180);
      v20 = sub_1B5EA5380();
      v21 = sub_1B5EA5A40();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = sub_1B5E34E60();
        sub_1B5E34EA8(v22);
        sub_1B5E34F28(&dword_1B5DED000, v23, v24, "Unable to perform redo operation. No undo operations submitted.");
        sub_1B5E34DF0();
      }

      sub_1B5EA47C0();
      sub_1B5DF5DF0();
      goto LABEL_10;
    }

LABEL_14:
    sub_1B5E34CF4(&qword_1EB90D178, v1);
    goto LABEL_7;
  }

  v2 = v0[6];
  v3 = OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_position;
  sub_1B5E31F74();
  sub_1B5E3229C();
  v5 = v4;
  *(v2 + v3) = v4;
  sub_1B5E2D094(v2 + 128);
  v7 = *(v2 + 128);
  if (v5 >= *(v7 + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v0[7];
  v9 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
  v10 = sub_1B5E01C50(v9);
  sub_1B5E11D08(v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v12 + 72) * v5 + *(v10 + 28), v8, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  v13 = sub_1B5EA47C0();
  v14 = sub_1B5DF46E0(v8, 1, v13);
  v6 = v0[7];
  if (v14 == 1)
  {
LABEL_16:
    result = sub_1B5DF4428(v6, &qword_1EB90E5C0, &unk_1B5EB6EB0);
    __break(1u);
    return result;
  }

  (*(*(v13 - 8) + 32))(v0[5], v6, v13);
  v15 = sub_1B5E34D9C();
  v18 = v13;
LABEL_10:
  sub_1B5DF3658(v15, v16, v17, v18);

  sub_1B5E2CF4C();

  return v25();
}

BOOL sub_1B5E2F8D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_position);
  sub_1B5E2D094(v0 + 128);
  return v1 < *(*(v0 + 128) + 16) - 1;
}

uint64_t sub_1B5E2F928()
{
  sub_1B5E01DFC();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1B5DF33E0(&qword_1EB90E5D0, &qword_1B5EB6030);
  sub_1B5E01CF8(v3);
  v0[4] = sub_1B5E2D0C8();
  v4 = sub_1B5EA55A0();
  sub_1B5E01CF8(v4);
  v0[5] = sub_1B5E2D0C8();
  v5 = sub_1B5EA5520();
  v0[6] = v5;
  sub_1B5E01C50(v5);
  v0[7] = v6;
  v0[8] = sub_1B5E2D0C8();
  v7 = sub_1B5EA5540();
  v0[9] = v7;
  sub_1B5E01C50(v7);
  v0[10] = v8;
  v0[11] = sub_1B5E34E90();
  v0[12] = swift_task_alloc();
  v9 = sub_1B5EA5560();
  v0[13] = v9;
  sub_1B5E01C50(v9);
  v0[14] = v10;
  v0[15] = sub_1B5E34E90();
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v11 = sub_1B5E34D50();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E2FAD4()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  sub_1B5EA5440();
  sub_1B5EA5550();
  v4 = *(v3 + 8);
  v4(v1, v2);
  v27 = v4;
  v5 = *(sub_1B5EA54E0() + 16);
  if (v5)
  {
    v6 = v0[10];
    v8 = *(v6 + 16);
    v6 += 16;
    v7 = v8;
    sub_1B5E34EF8();
    v29 = v9;
    v11 = v10 + v9;
    v12 = *(v6 + 56);
    v33 = (v13 + 88);
    v32 = *MEMORY[0x1E69C6338];
    v28 = (v6 + 16);
    v30 = (v13 + 8);
    v31 = (v6 - 8);
    v14 = MEMORY[0x1E69E7CC0];
    v34 = v8;
    do
    {
      v15 = v0[8];
      v16 = v0[6];
      v7(v0[12], v11, v0[9]);
      sub_1B5EA5530();
      if ((*v33)(v15, v16) == v32)
      {
        (*v31)(v0[12], v0[9]);
      }

      else
      {
        v7(v0[11], v0[12], v0[9]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B5E34E18();
          sub_1B5E6D9C4();
          v14 = v21;
        }

        v18 = *(v14 + 16);
        v17 = *(v14 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1B5E34E0C(v17);
          sub_1B5E6D9C4();
          v14 = v22;
        }

        v19 = v0[11];
        v20 = v0[9];
        (*v31)(v0[12], v20);
        *(v14 + 16) = v18 + 1;
        (*v28)(v14 + v29 + v18 * v12, v19, v20);
      }

      (*v30)(v0[8], v0[6]);
      v11 += v12;
      --v5;
      v7 = v34;
    }

    while (v5);
  }

  v23 = v0[17];
  v24 = v0[13];
  sub_1B5EA5420();
  sub_1B5EA54D0();
  sub_1B5EA5430();
  sub_1B5EA53F0();
  v27(v23, v24);

  sub_1B5E2CF4C();

  return v25();
}

uint64_t sub_1B5E2FE80()
{
  sub_1B5E01DFC();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1B5EA4750();
  v0[4] = v3;
  sub_1B5E01C50(v3);
  v0[5] = v4;
  v0[6] = sub_1B5E2D0C8();
  v5 = sub_1B5EA4770();
  v0[7] = v5;
  sub_1B5E01C50(v5);
  v0[8] = v6;
  v0[9] = sub_1B5E34E90();
  v0[10] = swift_task_alloc();
  v7 = sub_1B5EA47B0();
  v0[11] = v7;
  sub_1B5E01C50(v7);
  v0[12] = v8;
  v0[13] = sub_1B5E34E90();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v9 = sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5E01CF8(v9);
  v0[16] = sub_1B5E2D0C8();
  v10 = sub_1B5EA47C0();
  v0[17] = v10;
  sub_1B5E01C50(v10);
  v0[18] = v11;
  v0[19] = sub_1B5E2D0C8();
  v12 = sub_1B5E34D50();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1B5E30058()
{
  v1 = v0[16];
  v2 = v0[17];
  sub_1B5E11D08(v0[3], v1, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  if (sub_1B5DF46E0(v1, 1, v2) == 1)
  {
    v3 = v0[17];
    sub_1B5DF4428(v0[16], &qword_1EB90E5C0, &unk_1B5EB6EB0);
    sub_1B5DF5DF0();
    v7 = v3;
LABEL_26:
    sub_1B5DF3658(v4, v5, v6, v7);

    sub_1B5E2CF4C();

    v49();
    return;
  }

  (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
  v8 = sub_1B5EA4700();
  v56 = *(v8 + 16);
  if (!v56)
  {
LABEL_25:

    v46 = v0[18];
    v45 = v0[19];
    v47 = v0[17];
    v48 = v0[2];
    (*(v46 + 16))(v48, v45, v47);
    sub_1B5EA4710();
    (*(v46 + 8))(v45, v47);
    v4 = v48;
    v5 = 0;
    v6 = 1;
    v7 = v47;
    goto LABEL_26;
  }

  v9 = 0;
  sub_1B5E34EF8();
  v53 = v10;
  v52 = v8 + v10;
  v65 = *MEMORY[0x1E69DA548];
  v64 = (v11 + 8);
  v61 = (v11 + 32);
  v63 = (v12 + 8);
  v54 = v13;
  v50 = (v13 + 32);
  v51 = (v13 + 8);
  v14 = MEMORY[0x1E69E7CC0];
  v55 = v8;
  while (v9 < *(v8 + 16))
  {
    v60 = *(v54 + 72);
    v15 = *(v54 + 16);
    v15(v0[15], v52 + v60 * v9, v0[11]);
    v16 = *(sub_1B5EA4780() + 16);
    if (v16)
    {
      v57 = v15;
      v58 = v14;
      v59 = v9;
      sub_1B5E34D40();
      v62 = v17;
      v19 = v18 + v17;
      v21 = *(v20 + 72);
      v22 = *(v20 + 16);
      v23 = MEMORY[0x1E69E7CC0];
      do
      {
        v24 = v0[4];
        v22(v0[10], v19, v0[7]);
        sub_1B5EA4760();
        v25 = sub_1B5E34ECC();
        if (v26(v25, v24) == v65)
        {
          (*v64)(v0[10], v0[7]);
        }

        else
        {
          v22(v0[9], v0[10], v0[7]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B5E34E18();
            sub_1B5E6DB74();
            v23 = v31;
          }

          v28 = *(v23 + 16);
          v27 = *(v23 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_1B5E34E0C(v27);
            sub_1B5E6DB74();
            v23 = v32;
          }

          v29 = v0[9];
          v30 = v0[7];
          (*v64)(v0[10], v30);
          *(v23 + 16) = v28 + 1;
          (*v61)(v23 + v62 + v28 * v21, v29, v30);
        }

        (*v63)(v0[6], v0[4]);
        v19 += v21;
        --v16;
      }

      while (v16);

      v14 = v58;
      v9 = v59;
      v15 = v57;
    }

    else
    {
    }

    v33 = v0[14];
    v34 = v0[13];
    v35 = v0[11];
    v15(v33, v0[15], v35);
    sub_1B5EA4790();
    v15(v34, v33, v35);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B5E34E18();
      sub_1B5E6DA9C();
      v14 = v43;
    }

    v37 = *(v14 + 16);
    v36 = *(v14 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_1B5E34E0C(v36);
      sub_1B5E6DA9C();
      v38 = v44;
    }

    else
    {
      v38 = v14;
    }

    ++v9;
    v39 = v0[15];
    v40 = v0[13];
    v41 = v0[11];
    v42 = *v51;
    (*v51)(v0[14], v41);
    v42(v39, v41);
    v14 = v38;
    *(v38 + 16) = v37 + 1;
    (*v50)(v38 + v53 + v37 * v60, v40, v41);
    v8 = v55;
    if (v9 == v56)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
}

uint64_t sub_1B5E305C4()
{
  sub_1B5E1A084();
  v2 = sub_1B5EA4EE0();
  sub_1B5DF5DA8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7F8();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  (*(v4 + 16))(v8, v0, v2);
  sub_1B5E34E78(v1 + 136);
  sub_1B5E34F04();
  sub_1B5E32B5C();
  v10 = sub_1B5E34F10();
  v11(v10);
  return swift_endAccess();
}

void sub_1B5E306D0()
{
  sub_1B5DFD8A8();
  v3 = v0;
  v5 = v4;
  v6 = sub_1B5DF33E0(&qword_1EB90E610, &qword_1B5EB6070);
  sub_1B5E01CF8(v6);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5DFA50C();
  v26 = v8;
  sub_1B5E34DC8();
  v9 = sub_1B5EA4EE0();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5DFD7F8();
  sub_1B5E34E28();
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5E34E38();
  v29 = *(v5 + 16);
  if (v29)
  {
    v13 = v12;
    sub_1B5E34D90();
    v28 = v5 + v14;
    sub_1B5E34DAC(v3 + 136);
    v15 = 0;
    v32 = *(v13 + 16);
    v16 = (v13 + 8);
    v31 = *(v13 + 72);
    v27 = v3;
    do
    {
      v32(v2, v28 + v31 * v15, v9);
      v17 = *(v3 + 136);
      if (*(v17 + 16))
      {
        v30 = v15;
        sub_1B5E34CDC();
        sub_1B5E34900(&qword_1EB90DBA8, v18, MEMORY[0x1E69C6188]);

        v19 = sub_1B5EA55F0();
        v20 = ~(-1 << *(v17 + 32));
        while (1)
        {
          v21 = v19 & v20;
          if (((*(v17 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
          {
            break;
          }

          v32(v1, *(v17 + 48) + v21 * v31, v9);
          sub_1B5E34CDC();
          sub_1B5E34900(&qword_1EB90E618, v22, MEMORY[0x1E69C6190]);
          v23 = sub_1B5EA5660();
          v24 = *v16;
          v25 = sub_1B5E34F04();
          (v24)(v25);
          v19 = v21 + 1;
          if (v23)
          {

            v3 = v27;
            sub_1B5E34E78(v27 + 136);
            sub_1B5E34310(v2, v26);
            sub_1B5DF4428(v26, &qword_1EB90E610, &qword_1B5EB6070);
            swift_endAccess();
            v24(v2, v9);
            v15 = v30;
            goto LABEL_10;
          }
        }

        v3 = v27;
        v15 = v30;
      }

      (*v16)(v2, v9);
LABEL_10:
      ++v15;
    }

    while (v15 != v29);
  }

  sub_1B5DFD8C0();
}

void sub_1B5E309CC()
{
  sub_1B5DFD8A8();
  v76 = v2;
  sub_1B5E1A084();
  v67 = sub_1B5EA5560();
  sub_1B5DF5DA8();
  v74 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5E34D14();
  v79 = v5;
  sub_1B5E34DC8();
  v6 = sub_1B5EA5450();
  sub_1B5DF5DA8();
  v75 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5DFD7E8();
  v11 = v10 - v9;
  v78 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
  sub_1B5DF5DA8();
  v73 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1B5DFD7E8();
  v16 = v15 - v14;
  v77 = sub_1B5DF33E0(&unk_1EB90E970, &unk_1B5EB66C0);
  sub_1B5DF5DA8();
  v18 = v17;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v65 - v20);
  v22 = sub_1B5DF33E0(&qword_1EB90E600, &unk_1B5EB6060);
  sub_1B5E01CF8(v22);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v23);
  sub_1B5DFA50C();
  v69 = v24;
  sub_1B5E2D094(v1 + 128);
  v28 = *(v1 + 128);
  v29 = *(v28 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  v72 = v6;
  if (v29)
  {
    v70 = v0;
    v71 = v11;
    v80 = MEMORY[0x1E69E7CC0];

    sub_1B5E5BEDC(0, v29, 0);
    v30 = v80;
    sub_1B5E34D40();
    v68 = v28;
    v32 = v28 + v31;
    v34 = *(v33 + 72);
    do
    {
      sub_1B5E34AEC(v32, v16, type metadata accessor for GenerativeExperiencesSessionClientData.Conversation);
      v35 = v16 + *(v78 + 24);
      v36 = *(v35 + 32);
      *v21 = *(v35 + 24);
      v21[1] = v36;

      sub_1B5EA5440();
      sub_1B5E34A98();
      v80 = v30;
      v38 = *(v30 + 16);
      v37 = *(v30 + 24);
      if (v38 >= v37 >> 1)
      {
        v40 = sub_1B5E34E0C(v37);
        sub_1B5E5BEDC(v40, v38 + 1, 1);
        v30 = v80;
      }

      *(v30 + 16) = v38 + 1;
      sub_1B5E34D90();
      sub_1B5E34890(v21, v30 + v39 + *(v18 + 72) * v38);
      v32 += v34;
      --v29;
    }

    while (v29);

    v11 = v71;
    v6 = v72;
  }

  v41 = sub_1B5E35354(v30, v25, v26, v27);
  v42 = sub_1B5EA5460();
  v43 = 0;
  v73 = *(v42 + 16);
  v68 = (v75 + 32);
  v70 = (v75 + 8);
  v71 = v75 + 16;
  v65[1] = v74 + 40;
  v65[2] = v74 + 32;
  v44 = (v76 + 64);
  for (i = v42; ; v42 = i)
  {
    if (v73 == v43)
    {

LABEL_23:
      sub_1B5DFD8C0();
      return;
    }

    if (v43 >= *(v42 + 16))
    {
      break;
    }

    sub_1B5E34D40();
    (*(v46 + 16))(v11, v42 + v45 + *(v46 + 72) * v43, v6);
    v47 = *(v76 + 16);
    if (v43 == v47)
    {

      (*v70)(v11, v6);
      goto LABEL_23;
    }

    if (v43 >= v47)
    {
      goto LABEL_25;
    }

    v77 = v44;
    v78 = v43;
    v49 = *(v44 - 1);
    v48 = *v44;
    v50 = v69;
    (*v68)(v69, v11, v6);

    sub_1B5EA5440();
    (*v70)(v50, v6);
    swift_isUniquelyReferenced_nonNull_native();
    v80 = v41;
    v51 = sub_1B5E5AE4C(v49, v48);
    if (__OFADD__(*(v41 + 16), (v52 & 1) == 0))
    {
      goto LABEL_26;
    }

    v53 = v51;
    v54 = v52;
    sub_1B5DF33E0(&qword_1EB90E608, &unk_1B5EBB5D0);
    if (sub_1B5EA5C70())
    {
      v55 = sub_1B5E5AE4C(v49, v48);
      if ((v54 & 1) != (v56 & 1))
      {
        goto LABEL_28;
      }

      v53 = v55;
    }

    v41 = v80;
    if (v54)
    {
      v57 = sub_1B5E34ED8();
      (*(v58 + 40))(v57, v79, v67);
    }

    else
    {
      *(v80 + 8 * (v53 >> 6) + 64) |= 1 << v53;
      v59 = (*(v41 + 48) + 16 * v53);
      *v59 = v49;
      v59[1] = v48;
      v60 = sub_1B5E34ED8();
      (*(v61 + 32))(v60, v79, v67);

      v62 = *(v41 + 16);
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (v63)
      {
        goto LABEL_27;
      }

      *(v41 + 16) = v64;
    }

    v44 = (v77 + 40);
    v43 = v78 + 1;
    v6 = v72;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_1B5EA5F40();
  __break(1u);
}

void sub_1B5E30FD0()
{
  sub_1B5DFD8A8();
  v2 = v0;
  v124 = v3;
  v123 = v4;
  v134 = v5;
  v130 = v6;
  v115 = sub_1B5EA5560();
  sub_1B5DF5DA8();
  v113 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5DFD7F8();
  v114 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v116 = &v112 - v12;
  v13 = sub_1B5DF33E0(&qword_1EB90E5C8, &qword_1B5EB6028);
  sub_1B5E01CF8(v13);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v14);
  sub_1B5DFA50C();
  v122 = v15;
  sub_1B5E34DC8();
  v129 = sub_1B5EA4E40();
  sub_1B5DF5DA8();
  v128 = v16;
  MEMORY[0x1EEE9AC00](v17);
  sub_1B5E34D14();
  v127 = v18;
  v19 = sub_1B5DF33E0(&qword_1EB90E5D0, &qword_1B5EB6030);
  sub_1B5E01CF8(v19);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v20);
  sub_1B5DFA50C();
  v119 = v21;
  sub_1B5E34DC8();
  v121 = sub_1B5EA4B10();
  sub_1B5DF5DA8();
  v120 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1B5E34D14();
  v118 = v24;
  v25 = sub_1B5E34DC8();
  v132 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(v25);
  sub_1B5DF5DA8();
  v117 = v26;
  MEMORY[0x1EEE9AC00](v27);
  sub_1B5E34D14();
  v135 = v28;
  v29 = sub_1B5DF33E0(&qword_1EB90E5D8, &qword_1B5EB6038);
  sub_1B5E01CF8(v29);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v112 - v31;
  v33 = sub_1B5DF33E0(&qword_1EB90E5E0, &qword_1B5EB6040);
  sub_1B5E01CF8(v33);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v112 - v35;
  v37 = sub_1B5EA42B0();
  sub_1B5DF5DA8();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  sub_1B5DFD7F8();
  sub_1B5E34E28();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v112 - v42;
  type metadata accessor for SessionConfiguration(0);
  v44 = sub_1B5EA48D0();
  sub_1B5E10A64(v44, v36);

  v45 = sub_1B5EA4660();
  if (sub_1B5DF46E0(v36, 1, v45) == 1)
  {
    sub_1B5DF4428(v36, &qword_1EB90E5E0, &qword_1B5EB6040);
    sub_1B5EA5CA0();
    __break(1u);
  }

  else
  {
    sub_1B5EA4640();
    (*(*(v45 - 8) + 8))(v36, v45);
    v46 = *(v39 + 32);
    v126 = v37;
    v46(v43, v1, v37);
    sub_1B5E2D094((v2 + 16));
    sub_1B5E2EDB8(v2[16], v32);
    v47 = v132;
    v48 = sub_1B5DF46E0(v32, 1, v132);
    v133 = v43;
    if (v48 == 1)
    {
      sub_1B5DF4428(v32, &qword_1EB90E5D8, &qword_1B5EB6038);
      sub_1B5EA55A0();
      sub_1B5E34D28();
      sub_1B5E34900(v49, v50, MEMORY[0x1E69C6410]);
      v51 = sub_1B5EA55E0();
    }

    else
    {
      v51 = *&v32[*(v47 + 24) + 16];

      sub_1B5E34D78();
      sub_1B5E34A98();
    }

    v125 = v39;
    v52 = sub_1B5EA5460();
    v53 = *(v52 + 16);
    v131 = v2;
    if (v53)
    {
      v138 = MEMORY[0x1E69E7CC0];
      sub_1B5E5BEFC(0, v53, 0);
      v54 = v138;
      v55 = *(sub_1B5EA5450() - 8);
      sub_1B5E34D90();
      v57 = v52 + v56;
      type metadata accessor for GenerativeExperiencesSessionClientData(0);
      v58 = *(v55 + 72);
      v59 = v51;
      do
      {

        sub_1B5E2D848(v57, v59, &v140);

        v59 = v141;

        v138 = v54;
        v61 = *(v54 + 16);
        v60 = *(v54 + 24);
        if (v61 >= v60 >> 1)
        {
          v65 = sub_1B5E34E0C(v60);
          sub_1B5E5BEFC(v65, v61 + 1, 1);
          v54 = v138;
        }

        *(v54 + 16) = v61 + 1;
        v62 = v54 + 40 * v61;
        v63 = v140;
        v64 = v141;
        *(v62 + 64) = v142;
        *(v62 + 32) = v63;
        *(v62 + 48) = v64;
        v57 += v58;
        --v53;
      }

      while (v53);

      v2 = v131;
      v47 = v132;
    }

    else
    {

      v54 = MEMORY[0x1E69E7CC0];
      v59 = v51;
    }

    v132 = v59;
    v67 = *(v2[16] + 16);
    v68 = v135;
    if (v67)
    {
      v69 = (v135 + *(v47 + 24));
      sub_1B5E34D40();
      v72 = v70 + v71;
      v74 = *(v73 + 72);
      v117 = v70;

      v75 = 0;
      v76 = 0xE000000000000000;
      do
      {
        v2 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation;
        sub_1B5E34AEC(v72, v68, type metadata accessor for GenerativeExperiencesSessionClientData.Conversation);
        v77 = *v69;
        v78 = v69[1];
        v138 = v75;
        v139 = v76;

        v79 = v77;
        v68 = v135;
        MEMORY[0x1B8C8A360](v79, v78);

        v75 = v138;
        v76 = v139;
        sub_1B5E34A98();
        v72 += v74;
        --v67;
      }

      while (v67);
    }

    else
    {
      v75 = 0;
      v76 = 0xE000000000000000;
    }

    v80 = 0;
    v81 = 0;
    v138 = v75;
    v139 = v76;
    v82 = (v54 + 64);
    v83 = 0xE000000000000000;
    v84 = *(v54 + 16);
    while (v84 != v80)
    {
      if (v80 >= *(v54 + 16))
      {
        __break(1u);
        sub_1B5E34CF4(&qword_1EB90D178, v66);
        v105 = sub_1B5EA53B0();
        sub_1B5DFD794(v105, qword_1EB90D180);
        v106 = sub_1B5EA5380();
        v107 = sub_1B5EA5A40();
        v108 = os_log_type_enabled(v106, v107);
        v109 = v126;
        if (v108)
        {
          v110 = sub_1B5E34E60();
          *v110 = 0;
          _os_log_impl(&dword_1B5DED000, v106, v107, "Failed to encode variable bindings for inclusion in template", v110, 2u);
          MEMORY[0x1B8C8B330](v110, -1, -1);
        }

        goto LABEL_28;
      }

      ++v80;
      v2 = *v82;
      v85 = *(v82 - 3);
      v67 = *(v82 - 4);
      v136 = v81;
      v137 = v83;

      MEMORY[0x1B8C8A360](v67, v85);

      v81 = v136;
      v83 = v137;
      v82 += 5;
    }

    MEMORY[0x1B8C8A360](v81, v83);

    v136 = 0;
    v137 = 0xE000000000000000;
    sub_1B5EA5BC0();

    v136 = 0xD000000000000010;
    v137 = 0x80000001B5EA90F0;
    sub_1B5EA4360();
    v86 = v119;
    sub_1B5DF5DF0();
    sub_1B5DF3658(v87, v88, v89, v90);
    v91 = v118;
    sub_1B5EA4B00();
    sub_1B5DF4428(v86, &qword_1EB90E5D0, &qword_1B5EB6030);
    v92 = sub_1B5EA4AB0();
    v94 = v93;
    (*(v120 + 8))(v91, v121);
    MEMORY[0x1B8C8A360](v92, v94);

    MEMORY[0x1B8C8A360](8224032, 0xE300000000000000);
    MEMORY[0x1B8C8A360](v136, v137);

    sub_1B5EA4250();
    sub_1B5EA4390();
    sub_1B5E34900(&qword_1EB90E5E8, MEMORY[0x1E69B2540], MEMORY[0x1E69B2538]);
    sub_1B5DFA488();
    sub_1B5EA4380();
    sub_1B5DF33E0(&qword_1EB90E5F0, &qword_1B5EB6048);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B5EAFC20;
    v96 = v124;
    *(inited + 32) = v123;
    *(inited + 40) = v96;
    v97 = v139;
    *(inited + 48) = v138;
    *(inited + 56) = v97;
    swift_bridgeObjectRetain_n();
    sub_1B5EA55E0();
    v82 = v127;
    sub_1B5EA4E30();
    v98 = v131;
    sub_1B5E309CC();
    v100 = v99;

    if (*(*(v98 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_instructionsTemplateVariableBindings) + 16))
    {

      v101 = sub_1B5EA4D50();
      v103 = v102;
      v104 = v116;
      sub_1B5EA51D0();
      sub_1B5E34DD4();

      v111 = v114;
      (*(v113 + 32))(v114, v104, v115);
      swift_isUniquelyReferenced_nonNull_native();
      v136 = v100;
      sub_1B5EA0390(v111, v101, v103);
    }

    else
    {
      sub_1B5E34DD4();
    }

    v109 = v126;
LABEL_28:
    (*(v125 + 8))(v133, v109);
    (*(v84 + 32))(v67, v82, v80);

    sub_1B5E34EB4();
    sub_1B5DFD8C0();
  }
}