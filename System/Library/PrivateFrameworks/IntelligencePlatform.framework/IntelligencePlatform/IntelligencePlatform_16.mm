void sub_1ABBA7594()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4D3FB0, &qword_1ABF41AF8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABBA9C80();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABA9A364();
    v6 = sub_1ABF24DE4();
    v8 = v7;
    sub_1ABA9A364();
    v9 = sub_1ABF24DE4();
    v19 = v10;
    v17 = v9;
    sub_1ABA9A364();
    v11 = sub_1ABF24DE4();
    v15 = v12;
    v16 = v11;
    sub_1ABAD219C(&qword_1EB4D3F50, &qword_1ABF41AD0);
    sub_1ABBAA07C();
    sub_1ABAA4930();
    sub_1ABF24E64();
    v13 = sub_1ABA7BFF0();
    v14(v13);
    sub_1ABA84B54(v2);
    *v4 = v6;
    *(v4 + 8) = v8 & 1;
    *(v4 + 16) = v17;
    *(v4 + 24) = v19 & 1;
    *(v4 + 32) = v16;
    *(v4 + 40) = v15 & 1;
    *(v4 + 48) = v18;
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABBA77D0(void *a1)
{
  sub_1ABAD219C(&qword_1EB4D3F68, &qword_1ABF41AD8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7ED98();
  sub_1ABA8A074(a1);
  sub_1ABBA9DAC();
  sub_1ABA8E0D4();
  sub_1ABA892E8();
  sub_1ABF252E4();
  v3 = sub_1ABBA9E00();
  sub_1ABAA44A0(v3, v4);
  v5 = sub_1ABA8E7D0();
  return v6(v5);
}

uint64_t sub_1ABBA78D8(void *a1)
{
  sub_1ABAD219C(&qword_1EB4D3FB8, &qword_1ABF41B00);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7ED98();
  sub_1ABA8A074(a1);
  sub_1ABBA9DAC();
  sub_1ABA8E0D4();
  sub_1ABA892E8();
  sub_1ABF252C4();
  if (v2)
  {
    sub_1ABA84B54(a1);
  }

  else
  {
    sub_1ABBAA154();
    sub_1ABA948C8();
    sub_1ABF24E64();
    v5 = sub_1ABA8E7D0();
    v6(v5);
    v1 = v8;
    sub_1ABA84B54(a1);
  }

  return v1;
}

uint64_t sub_1ABBA7A14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x687469726F676C61 && a2 == 0xEA0000000000736DLL;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F4D686372616573 && a2 == 0xEA00000000006564;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001ABF87D00 == a2;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x80000001ABF87D20 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

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

unint64_t sub_1ABBA7B7C(char a1)
{
  result = 0x687469726F676C61;
  switch(a1)
  {
    case 1:
      result = 0x6F4D686372616573;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1ABBA7C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  v27 = v26;
  v28 = sub_1ABAD219C(&qword_1EB4D3F78, &qword_1ABF41AE0);
  sub_1ABA7BB64();
  v30 = v29;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v36 - v32;
  v34 = *v24;
  v37 = v24[1];
  v40 = *(v24 + 16);
  v35 = *(v24 + 17);
  v36[0] = *(v24 + 18);
  v36[1] = v35;
  sub_1ABA93E20(v27, v27[3]);
  sub_1ABBA9E54();

  sub_1ABF252E4();
  v38 = v34;
  sub_1ABAD219C(&qword_1EB4D3F80, &qword_1ABF41AE8);
  sub_1ABBA9EA8();
  sub_1ABF24F84();

  if (!v25)
  {
    v38 = v37;
    v39 = v40;
    sub_1ABBA9F80();
    sub_1ABA8BF5C();
    sub_1ABF24F84();
    LOBYTE(v38) = 2;
    sub_1ABA8BF5C();
    sub_1ABF24F44();
    LOBYTE(v38) = 3;
    sub_1ABA8BF5C();
    sub_1ABF24F44();
  }

  (*(v30 + 8))(v33, v28);
  sub_1ABA7BC90();
}

void sub_1ABBA7E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v25 = v24;
  v27 = v26;
  sub_1ABAD219C(&qword_1EB4D3FC0, &qword_1ABF41B08);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA93E20(v25, v25[3]);
  sub_1ABBA9E54();
  sub_1ABF252C4();
  if (v23)
  {
    sub_1ABA84B54(v25);
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D3F80, &qword_1ABF41AE8);
    sub_1ABBAA1A8();
    sub_1ABAA4930();
    sub_1ABF24E64();
    sub_1ABBAA280();
    sub_1ABF24E64();
    sub_1ABA9A364();
    v32 = sub_1ABF24E24();
    sub_1ABA9A364();
    v29 = sub_1ABF24E24();
    v30 = sub_1ABA7BFF0();
    v31(v30);
    *v27 = v33;
    *(v27 + 8) = v33;
    *(v27 + 16) = v34;
    *(v27 + 17) = v32 & 1;
    *(v27 + 18) = v29 & 1;

    sub_1ABA84B54(v25);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABBA8060(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x687469726F676C61 && a2 == 0xE90000000000006DLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABBA80E0(void *a1)
{
  sub_1ABAD219C(&qword_1EB4D3FA0, &qword_1ABF41AF0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7ED98();
  sub_1ABA8A074(a1);
  sub_1ABBA9FD4();
  sub_1ABA8E0D4();
  sub_1ABA892E8();
  sub_1ABF252E4();
  v3 = sub_1ABBAA028();
  sub_1ABAA44A0(v3, v4);
  v5 = sub_1ABA8E7D0();
  return v6(v5);
}

uint64_t sub_1ABBA81E8(void *a1)
{
  sub_1ABAD219C(&qword_1EB4D3FC8, &qword_1ABF41B10);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7ED98();
  sub_1ABA8A074(a1);
  sub_1ABBA9FD4();
  sub_1ABA8E0D4();
  sub_1ABA892E8();
  sub_1ABF252C4();
  if (v2)
  {
    sub_1ABA84B54(a1);
  }

  else
  {
    sub_1ABBAA2D4();
    sub_1ABA948C8();
    sub_1ABF24E64();
    v5 = sub_1ABA8E7D0();
    v6(v5);
    v1 = v8;
    sub_1ABA84B54(a1);
  }

  return v1;
}

uint64_t sub_1ABBA835C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBA71F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBA8384(uint64_t a1)
{
  v2 = sub_1ABBA9C80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBA83C0(uint64_t a1)
{
  v2 = sub_1ABBA9C80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1ABBA83FC@<D0>(uint64_t a1@<X8>)
{
  sub_1ABBA7594();
  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_1ABBA8468(uint64_t a1)
{
  v2 = sub_1ABBA9DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBA84A4(uint64_t a1)
{
  v2 = sub_1ABBA9DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBA84E0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABBA78D8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABBA8528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABBA857C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBA7A14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBA85A4(uint64_t a1)
{
  v2 = sub_1ABBA9E54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBA85E0(uint64_t a1)
{
  v2 = sub_1ABBA9E54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBA864C(uint64_t a1)
{
  v2 = sub_1ABBA9FD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBA8688(uint64_t a1)
{
  v2 = sub_1ABBA9FD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBA86C4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABBA81E8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABBA870C(uint64_t a1, uint64_t a2)
{
  sub_1ABB49734();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  result = *(a2 + 40);
  if ((*(a1 + 40) & 1) == 0)
  {
    return (*(a1 + 32) == *(a2 + 32)) & ~result;
  }

  return result;
}

uint64_t sub_1ABBA87C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);

  v8 = sub_1ABE8AF1C(v2);
  v9 = sub_1ABE8AF1C(v5);
  v10 = sub_1ABBA8880(v9, v8);

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  if ((v4 & 1) == 0)
  {
    if ((v7 & 1) == 0)
    {
      return *&v3 == *&v6;
    }

    return 0;
  }

  if (v3 == v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBA8880(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v6 = ~(-1 << v4);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v5 = ~(-1 << v9);
  }

  v10 = v5 & *(a1 + 56);
  v11 = (v4 + 63) >> 6;
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  v15 = 0;
  v29 = v2;
  while (v7)
  {
    v16 = v14;
LABEL_13:
    v17 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v18 = *(*(a2 + 48) + (v17 | (v16 << 6)));
    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_19:
    v20 = *(*(v2 + 48) + (__clz(__rbit64(v10)) | (v15 << 6)));
    v21 = v20 > 0xF7;
    if (v18 > 0xF7)
    {
LABEL_61:

      return v21;
    }

    if (v20 > 0xF7)
    {
      goto LABEL_62;
    }

    v10 &= v10 - 1;
    if (!(v18 >> 6))
    {
      if (v20 >= 0x40)
      {
        goto LABEL_62;
      }

      v23 = 0xE800000000000000;
      v24 = 0x6E656B6F54796E61;
      v25 = 0x6E656B6F54796E61;
      switch(v18)
      {
        case 1u:
          v23 = 0xE600000000000000;
          v25 = 0x786966657270;
          break;
        case 2u:
          v23 = 0xE900000000000073;
          v25 = 0x6E656B6F546C6C61;
          break;
        case 3u:
          v25 = 0x69666572506C6C61;
          v23 = 0xEB00000000736578;
          break;
        case 4u:
          v23 = 0xE600000000000000;
          v25 = 0x657361726870;
          break;
        case 5u:
          v25 = 0x6850786966657270;
          v23 = 0xEC00000065736172;
          break;
        default:
          break;
      }

      v26 = 0xE800000000000000;
      switch(v20)
      {
        case 1u:
LABEL_47:
          v26 = 0xE600000000000000;
          v24 = 0x786966657270;
          break;
        case 2u:
LABEL_49:
          v26 = 0xE900000000000073;
          v24 = 0x6E656B6F546C6C61;
          break;
        case 3u:
LABEL_50:
          v24 = 0x69666572506C6C61;
          v26 = 0xEB00000000736578;
          break;
        case 4u:
LABEL_48:
          v26 = 0xE600000000000000;
          v24 = 0x657361726870;
          break;
        case 5u:
LABEL_51:
          v24 = 0x6850786966657270;
          v26 = 0xEC00000065736172;
          break;
        default:
          goto LABEL_52;
      }

      goto LABEL_52;
    }

    if (v18 >> 6 == 1)
    {
      if ((v20 & 0xC0) != 0x40)
      {
        goto LABEL_62;
      }

      v22 = v20 & 0x3F;
      v23 = 0xE800000000000000;
      v24 = 0x6E656B6F54796E61;
      v25 = 0x6E656B6F54796E61;
      switch(v18)
      {
        case 1u:
          v23 = 0xE600000000000000;
          v25 = 0x786966657270;
          break;
        case 2u:
          v23 = 0xE900000000000073;
          v25 = 0x6E656B6F546C6C61;
          break;
        case 3u:
          v25 = 0x69666572506C6C61;
          v23 = 0xEB00000000736578;
          break;
        case 4u:
          v23 = 0xE600000000000000;
          v25 = 0x657361726870;
          break;
        case 5u:
          v25 = 0x6850786966657270;
          v23 = 0xEC00000065736172;
          break;
        default:
          break;
      }

      v26 = 0xE800000000000000;
      switch(v22)
      {
        case 1:
          goto LABEL_47;
        case 2:
          goto LABEL_49;
        case 3:
          goto LABEL_50;
        case 4:
          goto LABEL_48;
        case 5:
          goto LABEL_51;
        default:
          break;
      }

LABEL_52:
      if (v25 == v24 && v23 == v26)
      {

        v2 = v29;
      }

      else
      {
        v28 = sub_1ABF25054();

        v2 = v29;
        if ((v28 & 1) == 0)
        {
LABEL_62:

          return 0;
        }
      }
    }

    else if (v18 == 128)
    {
      if (v20 != 128)
      {
        goto LABEL_62;
      }
    }

    else if (v18 == 129)
    {
      if (v20 != 129)
      {
        goto LABEL_62;
      }
    }

    else if (v20 != 130)
    {
      goto LABEL_62;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_65;
    }

    if (v16 >= v11)
    {
      break;
    }

    v7 = *(v3 + 8 * v16);
    ++v14;
    if (v7)
    {
      v14 = v16;
      goto LABEL_13;
    }
  }

  v7 = 0;
  v18 = 248;
  if (v10)
  {
    goto LABEL_19;
  }

LABEL_14:
  while (1)
  {
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v19 >= v12)
    {
      if (v18 <= 0xF7)
      {
        goto LABEL_62;
      }

      v21 = 1;
      goto LABEL_61;
    }

    v10 = *(v8 + 8 * v19);
    ++v15;
    if (v10)
    {
      v15 = v19;
      goto LABEL_19;
    }
  }

LABEL_65:
  __break(1u);
  return result;
}

void sub_1ABBA8D30()
{
  sub_1ABA7E2A8();
  v0 = 0;
  v2 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = v1 + 32;
  for (i = (v3 + 40); ; i += 2)
  {
    if (v0 == v2)
    {
      if (!v4)
      {
        goto LABEL_24;
      }

      v7 = 0;
      v8 = 0;
      v0 = v2;
      goto LABEL_9;
    }

    if (v0 >= v2)
    {
      break;
    }

    if (__OFADD__(v0, 1))
    {
      goto LABEL_26;
    }

    v9 = (v5 + 16 * v0);
    v8 = *v9;
    v7 = v9[1];

    if (!v4)
    {
      if (v7)
      {
LABEL_23:
      }

LABEL_24:
      sub_1ABA7BC1C();
      return;
    }

    ++v0;
LABEL_9:
    v11 = *(i - 1);
    v10 = *i;

    if (!v7)
    {
      if (v10)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    if (!v10)
    {
      goto LABEL_23;
    }

    if (v8 == v11 && v7 == v10)
    {
    }

    else
    {
      v13 = sub_1ABF25054();

      if ((v13 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    --v4;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1ABBA8E60(unsigned __int8 a1, char a2)
{
  v2 = 0x7974706D65;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7974706D65;
  switch(v4)
  {
    case 1:
      v5 = 0x636E6176656C6572;
      v3 = 0xE900000000000065;
      break;
    case 2:
      v5 = 0x75747865746E6F63;
      v3 = 0xEF6C65646F4D6C61;
      break;
    case 3:
      v5 = 0xD000000000000011;
      v3 = 0x80000001ABF7F110;
      break;
    case 4:
      v5 = 0x6553726F74636576;
      v3 = 0xEC00000068637261;
      break;
    case 5:
      v3 = 0x80000001ABF7F130;
      v5 = 0xD000000000000015;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x636E6176656C6572;
      v6 = 0xE900000000000065;
      break;
    case 2:
      v2 = 0x75747865746E6F63;
      v6 = 0xEF6C65646F4D6C61;
      break;
    case 3:
      v2 = 0xD000000000000011;
      v6 = 0x80000001ABF7F110;
      break;
    case 4:
      v2 = 0x6553726F74636576;
      v6 = 0xEC00000068637261;
      break;
    case 5:
      v6 = 0x80000001ABF7F130;
      v2 = 0xD000000000000015;
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
    v8 = sub_1ABF25054();
  }

  return v8 & 1;
}

void static EntityResolutionConfig.== infix(_:_:)()
{
  sub_1ABA7E2A8();
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 139);
  v6 = *(v5 + 120);
  v7 = *(v5 + 128);
  v8 = *(v5 + 136);
  v9 = *(v5 + 139);
  if ((sub_1ABBA870C(v0, v5) & 1) == 0)
  {
    goto LABEL_17;
  }

  if ((sub_1ABACF934() & 1) == 0)
  {
    goto LABEL_17;
  }

  v10 = sub_1ABE8AF1C(v1);
  v11 = sub_1ABE8AF1C(v6);
  v12 = sub_1ABBA8880(v11, v10);

  if ((v12 & 1) == 0)
  {
    goto LABEL_17;
  }

  if ((v3 & 1) == 0)
  {
    if ((v8 & 1) != 0 || *&v2 != *&v7)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (v2 == v7)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
LABEL_12:
    v14 = sub_1ABB9B0FC(v4);
    v16 = v15;
    if (v14 != sub_1ABB9B0FC(v9) || v16 != v17)
    {
      sub_1ABF25054();
    }
  }

LABEL_17:
  sub_1ABA7BC1C();
}

id sub_1ABBA918C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1ABF23BD4();
  v9 = [a5 URLForResource:v8 withExtension:a3 subdirectory:a4];

  return v9;
}

uint64_t sub_1ABBA91FC(uint64_t a1)
{
  v1 = *(a1 + 48);
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

unint64_t sub_1ABBA9220()
{
  result = qword_1ED871678;
  if (!qword_1ED871678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871678);
  }

  return result;
}

unint64_t sub_1ABBA9274()
{
  result = qword_1EB4D3F00;
  if (!qword_1EB4D3F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F00);
  }

  return result;
}

unint64_t sub_1ABBA92C8()
{
  result = qword_1EB4D3F08;
  if (!qword_1EB4D3F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F08);
  }

  return result;
}

unint64_t sub_1ABBA931C()
{
  result = qword_1EB4D3F10;
  if (!qword_1EB4D3F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F10);
  }

  return result;
}

unint64_t sub_1ABBA9370()
{
  result = qword_1EB4D3F18;
  if (!qword_1EB4D3F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F18);
  }

  return result;
}

unint64_t sub_1ABBA93C4()
{
  result = qword_1ED871680;
  if (!qword_1ED871680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871680);
  }

  return result;
}

unint64_t sub_1ABBA9418()
{
  result = qword_1ED871638;
  if (!qword_1ED871638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871638);
  }

  return result;
}

unint64_t sub_1ABBA946C()
{
  result = qword_1ED871618;
  if (!qword_1ED871618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871618);
  }

  return result;
}

unint64_t sub_1ABBA94C0()
{
  result = qword_1ED871758;
  if (!qword_1ED871758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871758);
  }

  return result;
}

unint64_t sub_1ABBA9580()
{
  result = qword_1EB4D3F28;
  if (!qword_1EB4D3F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F28);
  }

  return result;
}

unint64_t sub_1ABBA95D8()
{
  result = qword_1EB4D3F30;
  if (!qword_1EB4D3F30)
  {
    sub_1ABAE2850(&qword_1EB4D3F38, &qword_1ABF41500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntityResolutionMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EntityResolutionMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABBA97A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 141))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1ABBA97E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 140) = 0;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 141) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 141) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1ABBA9888(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_1ABBA989C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_1ABBA98DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1ABBA992C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABBA9A04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1ABBA9A44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1ABBA9A9C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABBA9B7C()
{
  result = qword_1EB4D3F40;
  if (!qword_1EB4D3F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F40);
  }

  return result;
}

unint64_t sub_1ABBA9BD4()
{
  result = qword_1ED871668;
  if (!qword_1ED871668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871668);
  }

  return result;
}

unint64_t sub_1ABBA9C2C()
{
  result = qword_1ED871670;
  if (!qword_1ED871670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871670);
  }

  return result;
}

unint64_t sub_1ABBA9C80()
{
  result = qword_1ED871698;
  if (!qword_1ED871698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871698);
  }

  return result;
}

unint64_t sub_1ABBA9CD4()
{
  result = qword_1EB4D3F58;
  if (!qword_1EB4D3F58)
  {
    sub_1ABAE2850(&qword_1EB4D3F50, &qword_1ABF41AD0);
    sub_1ABBA9D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F58);
  }

  return result;
}

unint64_t sub_1ABBA9D58()
{
  result = qword_1EB4D3F60;
  if (!qword_1EB4D3F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F60);
  }

  return result;
}

unint64_t sub_1ABBA9DAC()
{
  result = qword_1ED871650;
  if (!qword_1ED871650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871650);
  }

  return result;
}

unint64_t sub_1ABBA9E00()
{
  result = qword_1EB4D3F70;
  if (!qword_1EB4D3F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F70);
  }

  return result;
}

unint64_t sub_1ABBA9E54()
{
  result = qword_1ED871630;
  if (!qword_1ED871630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871630);
  }

  return result;
}

unint64_t sub_1ABBA9EA8()
{
  result = qword_1EB4D3F88;
  if (!qword_1EB4D3F88)
  {
    sub_1ABAE2850(&qword_1EB4D3F80, &qword_1ABF41AE8);
    sub_1ABBA9F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F88);
  }

  return result;
}

unint64_t sub_1ABBA9F2C()
{
  result = qword_1EB4D3F90;
  if (!qword_1EB4D3F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F90);
  }

  return result;
}

unint64_t sub_1ABBA9F80()
{
  result = qword_1EB4D3F98;
  if (!qword_1EB4D3F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3F98);
  }

  return result;
}

unint64_t sub_1ABBA9FD4()
{
  result = qword_1ED871770;
  if (!qword_1ED871770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871770);
  }

  return result;
}

unint64_t sub_1ABBAA028()
{
  result = qword_1EB4D3FA8;
  if (!qword_1EB4D3FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3FA8);
  }

  return result;
}

unint64_t sub_1ABBAA07C()
{
  result = qword_1ED8713D8;
  if (!qword_1ED8713D8)
  {
    sub_1ABAE2850(&qword_1EB4D3F50, &qword_1ABF41AD0);
    sub_1ABBAA100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8713D8);
  }

  return result;
}

unint64_t sub_1ABBAA100()
{
  result = qword_1ED8716D8;
  if (!qword_1ED8716D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8716D8);
  }

  return result;
}

unint64_t sub_1ABBAA154()
{
  result = qword_1ED871608;
  if (!qword_1ED871608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871608);
  }

  return result;
}

unint64_t sub_1ABBAA1A8()
{
  result = qword_1ED8713D0;
  if (!qword_1ED8713D0)
  {
    sub_1ABAE2850(&qword_1EB4D3F80, &qword_1ABF41AE8);
    sub_1ABBAA22C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8713D0);
  }

  return result;
}

unint64_t sub_1ABBAA22C()
{
  result = qword_1ED871548;
  if (!qword_1ED871548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871548);
  }

  return result;
}

unint64_t sub_1ABBAA280()
{
  result = qword_1ED8717F8;
  if (!qword_1ED8717F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8717F8);
  }

  return result;
}

unint64_t sub_1ABBAA2D4()
{
  result = qword_1ED8716C8;
  if (!qword_1ED8716C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8716C8);
  }

  return result;
}

unint64_t sub_1ABBAA328()
{
  result = qword_1EB4D3FD0;
  if (!qword_1EB4D3FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3FD0);
  }

  return result;
}

uint64_t sub_1ABBAA37C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1ABBAA394()
{
  result = qword_1EB4D3FE0;
  if (!qword_1EB4D3FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3FE0);
  }

  return result;
}

unint64_t sub_1ABBAA3E8()
{
  result = qword_1EB4D3FF0;
  if (!qword_1EB4D3FF0)
  {
    sub_1ABAE2850(&qword_1EB4D3FE8, &qword_1ABF41B28);
    sub_1ABBAA46C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3FF0);
  }

  return result;
}

unint64_t sub_1ABBAA46C()
{
  result = qword_1EB4D3FF8;
  if (!qword_1EB4D3FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3FF8);
  }

  return result;
}

double sub_1ABBAA4C0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 133) = 0;
  return result;
}

unint64_t sub_1ABBAA4F0()
{
  result = qword_1ED871658;
  if (!qword_1ED871658)
  {
    sub_1ABAE2850(&qword_1EB4D4000, &qword_1ABF41B30);
    sub_1ABBAA574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871658);
  }

  return result;
}

unint64_t sub_1ABBAA574()
{
  result = qword_1ED871660;
  if (!qword_1ED871660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871660);
  }

  return result;
}

_BYTE *sub_1ABBAA5E8(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1ABBAA694(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABBAA774()
{
  result = qword_1EB4D4008;
  if (!qword_1EB4D4008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4008);
  }

  return result;
}

unint64_t sub_1ABBAA7CC()
{
  result = qword_1EB4D4010;
  if (!qword_1EB4D4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4010);
  }

  return result;
}

unint64_t sub_1ABBAA824()
{
  result = qword_1EB4D4018;
  if (!qword_1EB4D4018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4018);
  }

  return result;
}

unint64_t sub_1ABBAA87C()
{
  result = qword_1EB4D4020;
  if (!qword_1EB4D4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4020);
  }

  return result;
}

unint64_t sub_1ABBAA8D4()
{
  result = qword_1ED871760;
  if (!qword_1ED871760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871760);
  }

  return result;
}

unint64_t sub_1ABBAA92C()
{
  result = qword_1ED871768;
  if (!qword_1ED871768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871768);
  }

  return result;
}

unint64_t sub_1ABBAA984()
{
  result = qword_1ED871620;
  if (!qword_1ED871620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871620);
  }

  return result;
}

unint64_t sub_1ABBAA9DC()
{
  result = qword_1ED871628;
  if (!qword_1ED871628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871628);
  }

  return result;
}

unint64_t sub_1ABBAAA34()
{
  result = qword_1ED871640;
  if (!qword_1ED871640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871640);
  }

  return result;
}

unint64_t sub_1ABBAAA8C()
{
  result = qword_1ED871648;
  if (!qword_1ED871648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871648);
  }

  return result;
}

unint64_t sub_1ABBAAAE4()
{
  result = qword_1ED871688;
  if (!qword_1ED871688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871688);
  }

  return result;
}

unint64_t sub_1ABBAAB3C()
{
  result = qword_1ED871690;
  if (!qword_1ED871690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871690);
  }

  return result;
}

uint64_t sub_1ABBAABA8(uint64_t a1)
{
  swift_weakInit();
  swift_weakAssign();

  return v1;
}

uint64_t sub_1ABBAABEC()
{
  swift_weakDestroy();
  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBAAC20()
{
  v24 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = (8 * v4);

  if (v3 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v23[0] = v23;
    MEMORY[0x1EEE9AC00](v6);
    v5 = (v23 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1ABB18078(0, v4, v5);
    v7 = 0;
    v8 = 0;
    v9 = 1 << *(v1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v1 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      if (swift_weakLoadStrong())
      {

        *(v5 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1ABD21AFC(v5, v4, v7, v1);
          v19 = v18;
          goto LABEL_17;
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_16;
      }

      v15 = *(v1 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v21 = swift_slowAlloc();
  sub_1ABBAB8B0(v21, v4, v1);
  v19 = v22;
  MEMORY[0x1AC5AB8B0](v21, -1, -1);
LABEL_17:

  *(v0 + 16) = v19;
}

uint64_t sub_1ABBAAE6C()
{
  type metadata accessor for EntityResolutionCAEventLoggerProvider();
  sub_1ABA7D028();
  swift_allocObject();
  result = sub_1ABBAAEA4();
  qword_1ED87C428 = result;
  return result;
}

uint64_t sub_1ABBAAEA4()
{
  type metadata accessor for EntityResolutionCAEventLoggerProvider.GuardedData();
  v1 = swift_allocObject();
  type metadata accessor for EntityResolutionCAEventLoggerProvider.CachedLogger();
  *(v1 + 16) = sub_1ABF239C4();
  sub_1ABAD219C(&qword_1EB4D4028, &unk_1ABF42000);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_1ABBAAF2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  swift_beginAccess();
  if (!sub_1ABAE305C())
  {
    swift_endAccess();
LABEL_5:
    type metadata accessor for EntityResolutionCAEventLogger();
    sub_1ABA7D028();
    Strong = swift_allocObject();
    sub_1ABAFF390(0, &qword_1ED871D80, 0x1E69E58C0);
    *(Strong + 16) = sub_1ABF239C4();
    type metadata accessor for EntityResolutionCAEventLoggerProvider.CachedLogger();
    sub_1ABA7D028();
    v10 = swift_allocObject();

    sub_1ABBAABA8(v11);
    sub_1ABA8F240();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v7 + 16);
    sub_1ABAFB598(v10, a2, a3, isUniquelyReferenced_nonNull_native);
    *(v7 + 16) = v13;
    swift_endAccess();
    result = sub_1ABBAAC20();
    goto LABEL_6;
  }

  swift_endAccess();
  Strong = swift_weakLoadStrong();

  if (!Strong)
  {
    goto LABEL_5;
  }

LABEL_6:
  *a4 = Strong;
  return result;
}

uint64_t sub_1ABBAB094()
{

  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBAB134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1ABA8F240();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1ABA7F090();
  sub_1ABAFB6AC(v6, 0x6F43797469746E45, 0xEB00000000746E75, v7);
  *(v3 + 16) = v11;
  swift_endAccess();
  sub_1ABAFF390(0, &qword_1ED86B910, 0x1E696AEC0);

  v8 = sub_1ABBAB25C(a2, a3);
  sub_1ABA8F240();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1ABA7F090();
  sub_1ABAFB6AC(v8, 1701080941, 0xE400000000000000, v9);
  *(v3 + 16) = v11;
  return swift_endAccess();
}

id sub_1ABBAB25C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1ABF23BD4();

  v4 = [v2 initWithString_];

  return v4;
}

uint64_t sub_1ABBAB2D0(char a1, double a2)
{
  v3 = v2;
  v6 = 0xEE0079636E657461;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = 0x4C65766C6F736572;
  switch(a1)
  {
    case 1:
      v8 = 0x614C6E65676E656DLL;
      goto LABEL_4;
    case 2:
      v8 = 0x614C6E65676E6163;
LABEL_4:
      v6 = 0xED000079636E6574;
      break;
    case 3:
      v8 = 0x4C676E696B6E6172;
      break;
    default:
      break;
  }

  v9 = round((Current - a2) * 100000.0) / 100.0;
  v10 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v11 = v9;
  v12 = [v10 initWithFloat_];
  sub_1ABA8F240();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1ABA7F090();
  sub_1ABAFB6AC(v12, v8, v6, v13);
  *(v3 + 16) = v15;

  return swift_endAccess();
}

uint64_t sub_1ABBAB478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1ABA8F240();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 16);
  sub_1ABAFB6AC(v6, a2, a3, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v9;
  return swift_endAccess();
}

void sub_1ABBAB520(char a1)
{
  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  sub_1ABAFB6AC(v3, 0x6561446E496E7572, 0xEB000000006E6F6DLL, isUniquelyReferenced_nonNull_native);
  *(v1 + 16) = v6;
  swift_endAccess();
  v5 = objc_autoreleasePoolPush();
  sub_1ABBAB61C(v2);
  objc_autoreleasePoolPop(v5);
}

void sub_1ABBAB61C(uint64_t a1)
{
  type metadata accessor for Analytics();
  swift_beginAccess();
  v2 = *(a1 + 16);

  static Analytics.sendEventForProduction(eventName:prefix:eventPayload:)(0xD000000000000024, 0x80000001ABF896F0, 0, 0, v2);

  if (qword_1ED871B18 != -1)
  {
    swift_once();
  }

  v3 = sub_1ABF237F4();
  sub_1ABA7AA24(v3, qword_1ED871B20);

  v4 = sub_1ABF237D4();
  v5 = sub_1ABF24654();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315395;
    *(v6 + 4) = sub_1ABADD6D8(0xD000000000000024, 0x80000001ABF896F0, &v12);
    *(v6 + 12) = 2081;
    sub_1ABAFF390(0, &qword_1ED871D80, 0x1E69E58C0);

    v8 = sub_1ABF23984();
    v10 = v9;

    v11 = sub_1ABADD6D8(v8, v10, &v12);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1ABA78000, v4, v5, "ECR sents CA event:%s, payload:%{private}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5AB8B0](v7, -1, -1);
    MEMORY[0x1AC5AB8B0](v6, -1, -1);
  }
}

uint64_t sub_1ABBAB858()
{

  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

void sub_1ABBAB8B0(char *a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v6 = 0;
    v7 = 0;
    v8 = 1 << *(a3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a3 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v15 = v12 | (v7 << 6);
      if (swift_weakLoadStrong())
      {

        *&a1[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_18:
          sub_1ABD21AFC(a1, a2, v6, a3);

          return;
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_18;
      }

      v14 = *(a3 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABBABA08()
{
  type metadata accessor for EntityResolutionHandlerPool.EntityRerankerHandlerStore.GuardedData();
  v1 = swift_allocObject();
  type metadata accessor for EntityRerankerHandler();
  *(v1 + 16) = sub_1ABF239C4();
  sub_1ABAD219C(&qword_1EB4D4038, &qword_1ABF42098);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_1ABBABA94()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 6);
  swift_beginAccess();
  sub_1ABAD219C(&qword_1EB4D4030, &qword_1ABF42090);
  sub_1ABF23A04();
  swift_endAccess();
  os_unfair_lock_unlock(v1 + 6);

  return v0;
}

uint64_t sub_1ABBABB38()
{
  sub_1ABBABA94();
  sub_1ABA7D544();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBABB64()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 6);
  v2 = sub_1ABA8F250();
  sub_1ABBAC300(v2, v3);
  os_unfair_lock_unlock(v1 + 6);

  return v5;
}

uint64_t sub_1ABBABBCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  swift_beginAccess();
  v14 = *(v7 + 16);
  if (*(v14 + 16) && (v15 = sub_1ABA94FC8(a2, a3, v8, v9, v10, v11, v12, v13, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();
    *a4 = v17;
  }

  else
  {
    result = swift_endAccess();
    *a4 = 0;
  }

  return result;
}

uint64_t sub_1ABBABC74()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 6);
  v2 = sub_1ABA8F250();
  sub_1ABBAC2E0(v2);
  os_unfair_lock_unlock(v1 + 6);
}

void sub_1ABBABCD4(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *a1;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v7 + 16);
  sub_1ABAFB7C0(a4, a2, a3, isUniquelyReferenced_nonNull_native);
  *(v7 + 16) = v15;
  swift_endAccess();
  if (qword_1ED871B18 != -1)
  {
    swift_once();
  }

  v9 = sub_1ABF237F4();
  sub_1ABA7AA24(v9, qword_1ED871B20);

  v10 = sub_1ABF237D4();
  v11 = sub_1ABF24654();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1ABADD6D8(a2, a3, v14);
    _os_log_impl(&dword_1ABA78000, v10, v11, "EntityResolutionHandlerPool: cached for %s", v12, 0xCu);
    sub_1ABA84B54(v13);
    MEMORY[0x1AC5AB8B0](v13, -1, -1);
    MEMORY[0x1AC5AB8B0](v12, -1, -1);
  }
}

uint64_t sub_1ABBABE88()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 6);
  v2 = sub_1ABA8F250();
  sub_1ABBAC2C4(v2);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1ABBABEE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();
  sub_1ABA94FC8(a2, a3, v6, v7, v8, v9, v10, v11, v14, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  if (v12)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v5 + 16);
    sub_1ABAD219C(&qword_1EB4D2020, &qword_1ABF35210);
    sub_1ABF24C64();

    type metadata accessor for EntityRerankerHandler();
    sub_1ABF24C84();
    *(v5 + 16) = v15;
  }

  return swift_endAccess();
}

uint64_t sub_1ABBABFF0(uint64_t a1)
{
  switch(*(a1 + 139))
  {
    case 2:

      return sub_1ABBAC138(0x746C7561666564, 0xE700000000000000);
    default:
      v1 = sub_1ABF25054();

      if (v1)
      {
        return sub_1ABBAC138(0x746C7561666564, 0xE700000000000000);
      }

      return result;
  }
}

uint64_t sub_1ABBAC138(uint64_t a1, uint64_t a2)
{

  v5 = sub_1ABBABB64();

  if (v5)
  {
  }

  type metadata accessor for EntityRerankerHandler();
  result = sub_1ABBA2B30(a1, a2);
  if (!v2)
  {

    sub_1ABBABC74();
  }

  return result;
}

uint64_t sub_1ABBAC200()
{

  sub_1ABBABE88();
}

uint64_t sub_1ABBAC31C@<X0>(void *a1@<X8>)
{
  v4 = sub_1ABF21F04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ABBACBBC();
  if (!v2)
  {
    v9 = result;
    sub_1ABBACED0();
    v101 = v5;
    v102 = v4;
    *&v111 = v10;
    v103 = a1;
    v98 = 0;
    v11 = [v1 mode];
    if (v11 >= 7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    v107 = v12;
    sub_1ABBAD0D4(&v112);
    v13 = v112;
    v110 = v113;
    v14 = v115;
    v108 = v114;
    v15 = v116 | (v117 << 16);
    v109 = sub_1ABBAD1F8();
    if (qword_1ED871B18 != -1)
    {
      swift_once();
    }

    v99 = v7;
    v16 = sub_1ABF237F4();
    v106 = sub_1ABA7AA24(v16, qword_1ED871B20);

    v93 = v1;

    v17 = v108;
    sub_1ABA8F260();
    sub_1ABBAE7B0(v18, v19, v20, v21, v22);

    v104 = sub_1ABF237D4();
    v23 = sub_1ABF24654();

    v24 = v13;
    v25 = v93;
    v26 = v104;
    sub_1ABA8F260();
    sub_1ABB37314(v27, v28, v29, v30, v31);

    v32 = os_log_type_enabled(v26, v23);
    LODWORD(v106) = v15;
    v105 = v14;
    v100 = v9;
    if (v32)
    {
      LODWORD(v97) = v23;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v118 = v34;
      *v33 = 136316674;
      v35 = sub_1ABBAE7C4(v25, &selRef_text);
      if (v36)
      {
        v37 = v36;
      }

      else
      {
        v35 = 4271950;
        v37 = 0xE300000000000000;
      }

      sub_1ABADD6D8(v35, v37, &v118);
      sub_1ABA7C014();
      *(v33 + 4) = v17;
      *(v33 + 12) = 2080;
      if (v9)
      {
        v38 = MEMORY[0x1AC5A9750](v9, &type metadata for EntityClass);
      }

      else
      {
        v38 = 0;
        v39 = 0;
      }

      v112 = v38;
      v113 = v39;
      v42 = sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
      v43 = sub_1ABF23C74();
      v45 = sub_1ABADD6D8(v43, v44, &v118);

      *(v33 + 14) = v45;
      *(v33 + 22) = 2080;
      v46 = v111;
      if (v111)
      {
        v47 = sub_1ABAD219C(&qword_1EB4D4048, &qword_1ABF420A8);
        v48 = MEMORY[0x1AC5A9750](v46, v47);
      }

      else
      {
        v48 = 0;
        v49 = 0;
      }

      v112 = v48;
      v113 = v49;
      v50 = sub_1ABF23C74();
      sub_1ABADD6D8(v50, v51, &v118);
      sub_1ABA7C014();
      *(v33 + 24) = v42;
      *(v33 + 32) = 2080;
      v52 = 0xEA00000000007963;
      v53 = 0x6E6574614C776F6CLL;
      switch(v107)
      {
        case 1:
          v52 = 0xE800000000000000;
          v53 = 0x6465636E616C6162;
          break;
        case 2:
          v52 = 0xEB00000000797469;
          v53 = 0x6C61755168676968;
          break;
        case 3:
          v54 = 0x786966657270;
          goto LABEL_25;
        case 4:
          v52 = 0x80000001ABF7F180;
          v53 = 0xD000000000000014;
          break;
        case 5:
          v53 = 0xD000000000000010;
          v52 = 0x80000001ABF7F1A0;
          break;
        case 6:
          v54 = 0x646972627968;
LABEL_25:
          v53 = v54 & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
          v52 = 0xEC00000068637261;
          break;
        default:
          break;
      }

      v55 = sub_1ABADD6D8(v53, v52, &v118);

      *(v33 + 34) = v55;
      *(v33 + 42) = 2080;
      if (BYTE2(v15) == 255)
      {
        v56 = 0xE300000000000000;
        v57 = 4271950;
      }

      else if (BYTE2(v15))
      {
        if (BYTE2(v15) == 2)
        {
          v56 = 0xE600000000000000;
          v57 = 0x746573627573;
        }

        else
        {
          if (BYTE2(v15) == 1)
          {
            v57 = 0x6564756C637865;
          }

          else
          {
            v57 = 0x7463657078656E75;
          }

          if (BYTE2(v15) == 1)
          {
            v56 = 0xE700000000000000;
          }

          else
          {
            v56 = 0xEA00000000006465;
          }
        }
      }

      else
      {
        v56 = 0xEC00000065746163;
        v57 = 0x6964657250736168;
      }

      v58 = sub_1ABADD6D8(v57, v56, &v118);

      *(v33 + 44) = v58;
      *(v33 + 52) = 2080;
      if (v109)
      {
        v59 = MEMORY[0x1AC5A9750](v109, &type metadata for EntitySourceID);
        v61 = v60;
      }

      else
      {
        v59 = 4271950;
        v61 = 0xE300000000000000;
      }

      v40 = v111;
      sub_1ABADD6D8(v59, v61, &v118);
      sub_1ABA7C014();
      *(v33 + 54) = v56;
      *(v33 + 62) = 2080;
      v62 = sub_1ABBAE7C4(v25, &selRef_kgq);
      if (v63)
      {
        v64 = v63;
      }

      else
      {
        v62 = 4271950;
        v64 = 0xE300000000000000;
      }

      sub_1ABADD6D8(v62, v64, &v118);
      sub_1ABA7C014();
      *(v33 + 64) = v56;
      v65 = v104;
      _os_log_impl(&dword_1ABA78000, v104, v97, "text: %s\nentityTypeFilter: %s)\nspan: %s\nmode: %s\ncandidateConstraint: %s\nsourceIDs: %s\nkgq: %s", v33, 0x48u);
      swift_arrayDestroy();
      MEMORY[0x1AC5AB8B0](v34, -1, -1);
      MEMORY[0x1AC5AB8B0](v33, -1, -1);

      v41 = v108;
    }

    else
    {

      v40 = v111;
      v41 = v108;
    }

    v104 = sub_1ABBAE7C4(v25, &selRef_text);
    v67 = v66;
    sub_1ABA8F260();
    sub_1ABBAE7B0(v68, v69, v70, v71, v72);
    v97 = sub_1ABBAE7C4(v25, &selRef_kgq);
    v96 = v73;
    v95 = [v25 includeFeatures];
    v94 = [v25 includeInferredNames];
    LODWORD(v93) = [v25 enableBackupSearch];
    if (v40)
    {
      if (v67)
      {
        v74 = *(v40 + 16);
        if (v74)
        {
          v92 = v24;
          v112 = MEMORY[0x1E69E7CC0];

          sub_1ABADE14C(0, v74, 0);
          v75 = 32;
          v76 = v112;
          v77 = v104;
          do
          {
            v111 = *(v40 + v75);
            v112 = v76;
            v78 = *(v76 + 16);
            v79 = *(v76 + 24);

            if (v78 >= v79 >> 1)
            {
              sub_1ABADE14C((v79 > 1), v78 + 1, 1);
              v76 = v112;
            }

            *(v76 + 16) = v78 + 1;
            v80 = v76 + 32 * v78;
            *(v80 + 32) = v77;
            *(v80 + 40) = v67;
            *(v80 + 48) = v111;
            v75 += 16;
            --v74;
          }

          while (v74);

          v24 = v92;
        }

        else
        {

          v76 = MEMORY[0x1E69E7CC0];
        }

        v81 = v101;
        v41 = v108;
        goto LABEL_57;
      }
    }

    v76 = 0;
    v81 = v101;
LABEL_57:
    v82 = v99;
    sub_1ABF21EF4();
    *&v111 = sub_1ABF21EC4();
    v101 = v83;
    v84 = v41;
    v85 = v105;
    v86 = v41;
    v87 = v110;
    v88 = v106;
    sub_1ABB37314(v24, v110, v84, v105, v106);
    result = (*(v81 + 8))(v82, v102);
    v89 = v103;
    *v103 = v104;
    v89[1] = v67;
    v89[2] = v100;
    v89[3] = v76;
    v90 = v101;
    v89[4] = v111;
    v89[5] = v90;
    *(v89 + 48) = v107;
    v89[7] = v24;
    v89[8] = v87;
    v89[9] = v86;
    v89[10] = v85;
    *(v89 + 90) = BYTE2(v88);
    *(v89 + 44) = v88;
    v91 = v97;
    v89[12] = v109;
    v89[13] = v91;
    v89[14] = v96;
    *(v89 + 120) = v95;
    *(v89 + 121) = v94;
    *(v89 + 122) = v93;
  }

  return result;
}

uint64_t sub_1ABBACBBC()
{
  v2 = v1;
  v3 = sub_1ABBAE6C8(v0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v3 + 16);
  if (!v5)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v32 = MEMORY[0x1E69E7CC0];
  result = sub_1ABADE0EC(0, v5, 0);
  v7 = 0;
  v8 = v32;
  v29 = v4;
  v9 = (v4 + 40);
  v28 = v5;
  while (v7 < *(v4 + 16))
  {
    v11 = *(v9 - 1);
    v10 = *v9;

    result = sub_1ABA9B398(v11, v10);
    if (v14)
    {
      result = sub_1ABB7F054(v11, v10);
      if (v17)
      {

        sub_1ABF24AB4();

        MEMORY[0x1AC5A9410](v11, v10);
        v8 = 0x80000001ABF898E0;
        sub_1ABB32C5C();
        swift_allocError();
        *v27 = 0xD00000000000001ALL;
        *(v27 + 8) = 0x80000001ABF898E0;
        *(v27 + 16) = 2;
        swift_willThrow();

        return v8;
      }

      if (v15 >= 1844)
      {
        goto LABEL_27;
      }

      if (v16 >= 3396)
      {
        goto LABEL_28;
      }

      if (!_Records_GDEntityClass_classIds[0])
      {
        goto LABEL_31;
      }

      v18 = result;
      result = sub_1ABF23DD4();
      if (!_Records_GDEntityClass_labels)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v12 >= 1844)
      {
        goto LABEL_25;
      }

      if (v13 >= 3396)
      {
        goto LABEL_26;
      }

      if (!_Records_GDEntityClass_classIds[0])
      {
        goto LABEL_29;
      }

      v18 = result;
      result = sub_1ABF23DD4();
      if (!_Records_GDEntityClass_labels)
      {
        goto LABEL_30;
      }
    }

    v20 = result;
    v21 = v19;
    v31 = v2;
    v22 = sub_1ABF23DD4();
    v30 = v23;

    v24 = *(v32 + 16);
    v25 = *(v32 + 24);
    if (v24 >= v25 >> 1)
    {
      result = sub_1ABADE0EC((v25 > 1), v24 + 1, 1);
    }

    ++v7;
    *(v32 + 16) = v24 + 1;
    v26 = v32 + 40 * v24;
    *(v26 + 32) = v20;
    *(v26 + 40) = v21;
    *(v26 + 48) = v22;
    *(v26 + 56) = v30;
    *(v26 + 64) = v18;
    v9 += 2;
    v4 = v29;
    v2 = v31;
    if (v28 == v7)
    {

      return v8;
    }
  }

  __break(1u);
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1ABBACED0()
{
  v2 = v1;
  v3 = sub_1ABBAE720(v0, &selRef_spans, &qword_1EB4D4040, 0x1E696B098);
  if (v3)
  {
    v4 = v3;
    sub_1ABBAE7C4(v0, &selRef_text);
    if (v5)
    {
      v6 = sub_1ABAAB7C8(v4);
      if (v6)
      {
        v7 = v6;
        v20 = MEMORY[0x1E69E7CC0];
        sub_1ABADE10C(0, v6 & ~(v6 >> 63), 0);
        if ((v7 & 0x8000000000000000) == 0)
        {
          v8 = 0;
          v9 = v20;
          while (1)
          {
            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              break;
            }

            if ((v4 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1AC5AA170](v8, v4);
            }

            else
            {
              if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              v11 = *(v4 + 8 * v8 + 32);
            }

            v12 = v11;
            v18 = v11;
            sub_1ABBAD398(&v18, &v17, &v19);
            if (v2)
            {

              return;
            }

            v2 = 0;

            v13 = v19;
            v20 = v9;
            v15 = *(v9 + 16);
            v14 = *(v9 + 24);
            if (v15 >= v14 >> 1)
            {
              v16 = v19;
              sub_1ABADE10C((v14 > 1), v15 + 1, 1);
              v13 = v16;
              v9 = v20;
            }

            *(v9 + 16) = v15 + 1;
            *(v9 + 16 * v15 + 32) = v13;
            ++v8;
            if (v10 == v7)
            {

              return;
            }
          }

          __break(1u);
LABEL_21:
          __break(1u);
        }

        __break(1u);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1ABBAD0D4(uint64_t a1@<X8>)
{
  v3 = [v1 constraint];
  if (v3 == 2)
  {
    if (_Records_GDEntityPredicate_records)
    {
      v4 = *(_Records_GDEntityPredicate_records + 103);
      v5 = *(_Records_GDEntityPredicate_records + 104);
      v6 = _Records_GDEntityPredicate_records[408];
      goto LABEL_9;
    }

LABEL_15:
    __break(1u);
    return;
  }

  if (v3 == 1)
  {
    if (_Records_GDEntityPredicate_records)
    {
      v4 = *(_Records_GDEntityPredicate_records + 106);
      v5 = *(_Records_GDEntityPredicate_records + 107);
      v6 = _Records_GDEntityPredicate_records[420];
LABEL_9:
      sub_1ABA91D48(v6, v4, v5, &v10);
      v7 = v11;
      v8 = v12;
      v9 = v13;
      *a1 = v10;
      *(a1 + 16) = v7;
      *(a1 + 24) = v8;
      *(a1 + 34) = 0;
      *(a1 + 32) = v9;
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v3)
  {

    sub_1ABBAD6D0(v1, a1);
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 34) = -1;
    *(a1 + 32) = 0;
  }
}

char *sub_1ABBAD1F8()
{
  v1 = sub_1ABBAE720(v0, &selRef_sourceIDs, &qword_1EB4D4050, off_1E795FED0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1ABAAB7C8(v1);
  if (!v3)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v22 = MEMORY[0x1E69E7CC0];
  result = sub_1ABADE12C(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v22;
    v21 = v2 & 0xC000000000000001;
    v8 = v2;
    do
    {
      if (v21)
      {
        v9 = MEMORY[0x1AC5AA170](v6, v2);
      }

      else
      {
        v9 = *(v2 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = [v9 value];
      v12 = sub_1ABF23C04();
      v14 = v13;

      v15 = sub_1ABBAE7C4(v10, &selRef_source);
      v17 = v16;

      v19 = *(v22 + 16);
      v18 = *(v22 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1ABADE12C((v18 > 1), v19 + 1, 1);
      }

      ++v6;
      *(v22 + 16) = v19 + 1;
      v20 = (v22 + 32 * v19);
      v20[4] = v12;
      v20[5] = v14;
      v20[6] = v15;
      v20[7] = v17;
      v2 = v8;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1ABBAD398@<X0>(id *a1@<X0>, uint64_t *a4@<X3>, unint64_t *a5@<X8>)
{
  v6 = *a1;
  v7 = [*a1 rangeValue];
  v9 = v8;
  result = sub_1ABF23D74();
  if (v11)
  {
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000028, 0x80000001ABF89830);
    v12 = [v6 description];
LABEL_6:
    v15 = v12;
    v16 = sub_1ABF23C04();
    v18 = v17;

    MEMORY[0x1AC5A9410](v16, v18);

    MEMORY[0x1AC5A9410](0xD000000000000016, 0x80000001ABF89860);
    sub_1ABF23D44();
    v19 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v19);

LABEL_7:
    sub_1ABB32C5C();
    v20 = swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 0xE000000000000000;
    *(v21 + 16) = 2;
    result = swift_willThrow();
    *a4 = v20;
    return result;
  }

  if (__OFADD__(v7, v9))
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    result = sub_1ABF23D74();
    if (v14)
    {
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD000000000000027, 0x80000001ABF89880);
      v12 = [v6 description];
      goto LABEL_6;
    }

    if (result >> 14 < v13 >> 14)
    {
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0x20732765676E6152, 0xEE00287472617473);
      sub_1ABF24C54();
      MEMORY[0x1AC5A9410](0xD000000000000025, 0x80000001ABF898B0);
      sub_1ABF24C54();
      goto LABEL_7;
    }

    *a5 = v13;
    a5[1] = result;
  }

  return result;
}

double sub_1ABBAD6D0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1ED871B18 != -1)
  {
    swift_once();
  }

  v4 = sub_1ABF237F4();
  sub_1ABA7AA24(v4, qword_1ED871B20);
  v5 = a1;
  v6 = sub_1ABF237D4();
  v7 = sub_1ABF24664();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    [v5 constraint];
    type metadata accessor for GDCandidateConstraint(0);
    v10 = sub_1ABF23C74();
    v12 = sub_1ABADD6D8(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1ABA78000, v6, v7, "Unknown constraint: %s. Ignored.", v8, 0xCu);
    sub_1ABA84B54(v9);
    MEMORY[0x1AC5AB8B0](v9, -1, -1);
    MEMORY[0x1AC5AB8B0](v8, -1, -1);
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 34) = -1;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_1ABBAD864()
{
  v1 = v0;
  sub_1ABF252A4();
  sub_1ABBAE7C4(v0, &selRef_text);
  if (v2)
  {
    sub_1ABF25254();
    sub_1ABF23D34();
  }

  else
  {
    sub_1ABF25254();
  }

  v3 = sub_1ABBAE6C8(v0);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 40;
      do
      {

        sub_1ABF23D34();

        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }

  v6 = sub_1ABBAE720(v0, &selRef_spans, &qword_1EB4D4040, 0x1E696B098);
  if (v6)
  {
    v7 = v6;
    result = sub_1ABAAB7C8(v6);
    if (result)
    {
      v9 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v9; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1AC5AA170](i, v7);
        }

        else
        {
          v11 = *(v7 + 8 * i + 32);
        }

        v12 = v11;
        sub_1ABF247C4();
      }
    }
  }

  sub_1ABBAE7C4(v1, &selRef_kgq);
  if (v13)
  {
    sub_1ABF23D34();
  }

  MEMORY[0x1AC5AA8A0]([v1 mode]);
  memcpy(__dst, v14, sizeof(__dst));
  return sub_1ABF25284();
}

id sub_1ABBADD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1ABF23BD4();

  v8 = [v6 initWithText:v7 start:a3 end:a4];

  return v8;
}

id sub_1ABBADDF0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  if (*(v0 + 8))
  {
    sub_1ABA7D554();
    sub_1ABA80970();
    sub_1ABAFF390(0, &qword_1ED86B930, off_1E7960390);

    v3 = sub_1ABA7F0A0();
  }

  else
  {
    v3 = [objc_allocWithZone(GDSpan) init];
  }

  v4 = v3;
  if (v1)
  {
    v5 = *(v1 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v16 = MEMORY[0x1E69E7CC0];
      sub_1ABADDBD4(0, v5, 0);
      v6 = v16;
      v7 = (v1 + 56);
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;
        v10 = *(v16 + 16);
        v11 = *(v16 + 24);

        if (v10 >= v11 >> 1)
        {
          sub_1ABADDBD4(v11 > 1, v10 + 1, 1);
        }

        *(v16 + 16) = v10 + 1;
        v12 = v16 + 16 * v10;
        *(v12 + 32) = v9;
        *(v12 + 40) = v8;
        v7 += 5;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if (v2)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1ABF242F4();
  }

  v14 = objc_allocWithZone(GDMention);
  return sub_1ABBAE390(v4, v6, v13);
}

id sub_1ABBADF78()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 6);
  v8 = *(v1 + 10);
  v28 = *(v1 + 11);
  v9 = *(v1 + 12);
  v10 = v1[138];
  v27 = *(v1 + 1112);
  v25 = *(v1 + 141);
  v26 = *(v1 + 140);
  v24 = *(v1 + 142);
  v11 = *(v1 + 143);
  if (v7)
  {
    v12 = *(v1 + 7);
    v13 = *(v1 + 8);
    v14 = *(v1 + 5);
    objc_allocWithZone(GDEntitySourceID);

    v15 = sub_1ABBAE2FC(v14, v7, v12, v13);
  }

  else
  {
    v15 = 0;
  }

  result = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  if (result)
  {
    v17 = result;
    if (v8)
    {
      v18 = v9;
    }

    else
    {
      v28 = 0;
      v18 = 0;
    }

    memcpy(__dst, v1 + 14, 0x3C9uLL);
    if (sub_1ABBAE794(__dst) == 1)
    {
      v19 = 0;
    }

    else
    {
      memcpy(v29, __dst, sizeof(v29));
      v19 = sub_1ABBADA38();
    }

    v20 = sub_1ABF251C4();
    v21 = objc_allocWithZone(GDIdentifierInformation);

    v22 = sub_1ABBAE414(v26, v25, v24, v11);
    v23 = objc_allocWithZone(GDRankerItem);
    return sub_1ABBAE4F4(v17, v15, v28, v18, v19, v20, v27, v22, v3, v4, v5, v6, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1ABBAE1B4()
{
  v1 = v0[1];
  v2 = v0[7];
  v3 = v0[10];
  if (v1)
  {
    sub_1ABA7D554();
    sub_1ABA80970();
    sub_1ABAFF390(0, &qword_1ED86B930, off_1E7960390);

    v1 = sub_1ABA7F0A0();
  }

  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v6 = (v3 + 32);
    do
    {
      memcpy(v11, v6, sizeof(v11));
      sub_1ABBADF78();
      sub_1ABF24B94();
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v6 += 1160;
      --v4;
    }

    while (v4);
    v5 = v12;
  }

  if (v2 && v2[2])
  {
    v7 = v2[6];
    v8 = v2[7];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = objc_allocWithZone(GDRankerResult);
  return sub_1ABBAE608(v1, v5, v7, v8);
}

id sub_1ABBAE2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1ABF23BD4();

  if (a4)
  {
    v7 = sub_1ABF23BD4();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithValue:v6 source:v7];

  return v8;
}

id sub_1ABBAE390(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1ABF240C4();

  v7 = [v3 initWithSpan:a1 entityClasses:v6 score:a3];

  return v7;
}

id sub_1ABBAE414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1ABF240C4();

  v6 = sub_1ABF240C4();

  v7 = sub_1ABF240C4();

  v8 = sub_1ABF240C4();

  v9 = [v4 initWithNames:v5 contactIdentifiers:v6 visualIdentifiers:v7 emails:v8];

  return v9;
}

id sub_1ABBAE4F4(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char a7, void *a8, double a9, double a10, double a11, double a12, double a13)
{
  v14 = v13;
  if (a4)
  {
    v26 = sub_1ABF23BD4();
  }

  else
  {
    v26 = 0;
  }

  v27 = [v14 initWithEntityID:a1 sourceID:a2 entityClass:v26 features:a5 score:a6 nameScore:a7 & 1 contextualScore:a9 entityRelevance:a10 entityRelevanceInferenceEventId:a11 confirmationConfidence:a12 isRelationshipMatch:a13 identifierInformation:a8];

  return v27;
}

id sub_1ABBAE608(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABAFF390(0, &qword_1ED86B978, off_1E7960330);
  v7 = sub_1ABF240C4();

  if (a4)
  {
    v8 = sub_1ABF23BD4();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithSpan:a1 rankedEntities:v7 entityClass:v8];

  return v9;
}

uint64_t sub_1ABBAE6C8(void *a1)
{
  v1 = [a1 entityClassFilter];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1ABF240D4();

  return v3;
}

uint64_t sub_1ABBAE720(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1ABAFF390(0, a3, a4);
  v8 = sub_1ABF240D4();

  return v8;
}

uint64_t sub_1ABBAE794(uint64_t a1)
{
  if (*(a1 + 968))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBAE7B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE2(a5) != 255)
  {
    return sub_1ABB37294(result, a2, a3, a4, a5, SBYTE2(a5));
  }

  return result;
}

uint64_t sub_1ABBAE7C4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1ABF23C04();

  return v4;
}

void sub_1ABBAE824(char a1)
{
  switch(a1)
  {
    case 6:
      return;
    default:
      sub_1ABA7F0D0();
      break;
  }
}

unint64_t sub_1ABBAE950(char a1)
{
  result = 0xD000000000000027;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD000000000000030;
      break;
    case 2:
      result = 0xD00000000000002FLL;
      break;
    case 3:
      result = 0xD00000000000002BLL;
      break;
    case 5:
      result = 0xD00000000000002CLL;
      break;
    case 6:
      result = 0xD00000000000001FLL;
      break;
    case 7:
    case 10:
    case 25:
    case 28:
    case 35:
    case 38:
    case 105:
      result = 0xD00000000000004FLL;
      break;
    case 8:
    case 11:
    case 26:
    case 29:
    case 36:
    case 39:
    case 88:
    case 91:
      result = 0xD000000000000053;
      break;
    case 9:
    case 12:
    case 27:
    case 30:
    case 61:
    case 64:
    case 76:
    case 79:
    case 82:
    case 89:
    case 92:
      result = 0xD000000000000057;
      break;
    case 13:
    case 31:
    case 41:
      result = 0xD000000000000051;
      break;
    case 14:
    case 32:
    case 42:
    case 70:
    case 73:
    case 94:
      result = 0xD000000000000055;
      break;
    case 15:
    case 33:
    case 67:
    case 71:
    case 74:
    case 85:
    case 95:
      result = 0xD000000000000059;
      break;
    case 16:
    case 19:
    case 52:
    case 55:
    case 62:
    case 65:
    case 77:
    case 80:
    case 83:
    case 90:
    case 93:
      result = 0xD00000000000005BLL;
      break;
    case 17:
    case 20:
    case 53:
    case 56:
    case 63:
    case 66:
    case 78:
    case 81:
    case 84:
      result = 0xD00000000000005FLL;
      break;
    case 18:
    case 21:
    case 54:
    case 57:
      result = 0xD000000000000063;
      break;
    case 22:
    case 58:
    case 68:
    case 72:
    case 75:
    case 86:
    case 96:
      result = 0xD00000000000005DLL;
      break;
    case 23:
    case 59:
    case 69:
    case 87:
      result = 0xD000000000000061;
      break;
    case 24:
    case 60:
      result = 0xD000000000000065;
      break;
    case 34:
    case 37:
    case 45:
    case 48:
    case 104:
      result = 0xD00000000000004BLL;
      break;
    case 40:
    case 51:
    case 99:
    case 102:
    case 108:
    case 111:
    case 113:
      result = 0xD00000000000004DLL;
      break;
    case 43:
    case 46:
      result = 0xD000000000000043;
      break;
    case 44:
    case 47:
    case 103:
      result = 0xD000000000000047;
      break;
    case 49:
    case 97:
    case 100:
    case 106:
    case 109:
    case 118:
      result = 0xD000000000000045;
      break;
    case 50:
    case 98:
    case 101:
    case 107:
    case 110:
      result = 0xD000000000000049;
      break;
    case 112:
    case 114:
    case 115:
      result = 0xD00000000000003BLL;
      break;
    case 116:
      result = 0xD000000000000046;
      break;
    case 117:
      result = 0xD00000000000003DLL;
      break;
    case 119:
      result = 0xD000000000000038;
      break;
    case 120:
      result = 0xD00000000000003ALL;
      break;
    case 121:
      result = 0xD000000000000058;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBAF02C()
{
  result = sub_1ABE8AE5C(&unk_1F208FC48);
  qword_1EB5495B0 = result;
  return result;
}

BOOL static EntityFeatures.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 64), *(a2 + 64)), vceqq_f64(*(a1 + 80), *(a2 + 80))), vuzp1q_s32(vceqq_f64(*(a1 + 96), *(a2 + 96)), vceqq_f64(*(a1 + 112), *(a2 + 112))));
  v5 = vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48))));
  v6 = vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 320), *(a2 + 320)), vceqq_f64(*(a1 + 336), *(a2 + 336))), vuzp1q_s32(vceqq_f64(*(a1 + 352), *(a2 + 352)), vceqq_f64(*(a1 + 368), *(a2 + 368))));
  v7 = vcltzq_s8(vshlq_n_s8(vandq_s8(vandq_s8(vuzp1q_s8(v5, v4), vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 256), *(a2 + 256)), vceqq_f64(*(a1 + 272), *(a2 + 272))), vuzp1q_s32(vceqq_f64(*(a1 + 288), *(a2 + 288)), vceqq_f64(*(a1 + 304), *(a2 + 304)))), v6)), vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 128), *(a2 + 128)), vceqq_f64(*(a1 + 144), *(a2 + 144))), vuzp1q_s32(vceqq_f64(*(a1 + 160), *(a2 + 160)), vceqq_f64(*(a1 + 176), *(a2 + 176)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 192), *(a2 + 192)), vceqq_f64(*(a1 + 208), *(a2 + 208))), vuzp1q_s32(vceqq_f64(*(a1 + 224), *(a2 + 224)), vceqq_f64(*(a1 + 240), *(a2 + 240))))), vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 384), *(a2 + 384)), vceqq_f64(*(a1 + 400), *(a2 + 400))), vuzp1q_s32(vceqq_f64(*(a1 + 416), *(a2 + 416)), vceqq_f64(*(a1 + 432), *(a2 + 432)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 448), *(a2 + 448)), vceqq_f64(*(a1 + 464), *(a2 + 464))), vuzp1q_s32(vceqq_f64(*(a1 + 480), *(a2 + 480)), vceqq_f64(*(a1 + 496), *(a2 + 496))))))), 7uLL));
  v7.i8[0] = vminvq_u8(v7);
  v8 = v7.i32[0];
  v9 = vcltzq_s8(vshlq_n_s8(vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 512), *(a2 + 512)), vceqq_f64(*(a1 + 528), *(a2 + 528))), vuzp1q_s32(vceqq_f64(*(a1 + 544), *(a2 + 544)), vceqq_f64(*(a1 + 560), *(a2 + 560)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 576), *(a2 + 576)), vceqq_f64(*(a1 + 592), *(a2 + 592))), vuzp1q_s32(vceqq_f64(*(a1 + 608), *(a2 + 608)), vceqq_f64(*(a1 + 624), *(a2 + 624))))), vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 640), *(a2 + 640)), vceqq_f64(*(a1 + 656), *(a2 + 656))), vuzp1q_s32(vceqq_f64(*(a1 + 672), *(a2 + 672)), vceqq_f64(*(a1 + 688), *(a2 + 688)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 704), *(a2 + 704)), vceqq_f64(*(a1 + 720), *(a2 + 720))), vuzp1q_s32(vceqq_f64(*(a1 + 736), *(a2 + 736)), vceqq_f64(*(a1 + 752), *(a2 + 752)))))), 7uLL));
  v9.i8[0] = vminvq_u8(v9);
  v10 = v9.i32[0];
  v11 = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 768), *(a2 + 768)), vceqq_f64(*(a1 + 784), *(a2 + 784))), vuzp1q_s32(vceqq_f64(*(a1 + 800), *(a2 + 800)), vceqq_f64(*(a1 + 816), *(a2 + 816)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 832), *(a2 + 832)), vceqq_f64(*(a1 + 848), *(a2 + 848))), vuzp1q_s32(vceqq_f64(*(a1 + 864), *(a2 + 864)), vceqq_f64(*(a1 + 880), *(a2 + 880)))));
  v11.i8[0] = vminvq_u8(v11);
  v12 = v11.i32[0];
  *v11.i8 = vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 912), *(a2 + 912)), vceqq_f64(*(a1 + 928), *(a2 + 928))));
  v11.i16[0] = vminv_u16(*v11.i8);
  v13 = v8 & v10 & v12 & v11.i32[0] & (*(a1 + 952) == *(a2 + 952));
  if (*(a1 + 896) != *(a2 + 896))
  {
    v13 = 0;
  }

  if (*(a1 + 900) != *(a2 + 900))
  {
    v13 = 0;
  }

  if (v13 == 1 && *(a1 + 904) == *(a2 + 904) && *(a1 + 944) == *(a2 + 944))
  {
    return *(a1 + 960) == *(a2 + 960);
  }

  return result;
}

void EntityFeatures.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_1ABAB1064();
  v111 = v32;
  v34 = v33;
  v35 = sub_1ABAD219C(&qword_1EB4D4058, &qword_1ABF420B0);
  sub_1ABA7BB64();
  v37 = v36;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v93 - v39;
  v41 = *(v31 + 8);
  v112 = *v31;
  v42 = *(v31 + 24);
  v109 = *(v31 + 16);
  v110 = v41;
  v43 = *(v31 + 40);
  v107 = *(v31 + 32);
  v108 = v42;
  v44 = *(v31 + 56);
  v105 = *(v31 + 48);
  v106 = v43;
  v45 = *(v31 + 72);
  v103 = *(v31 + 64);
  v104 = v44;
  v46 = *(v31 + 88);
  v101 = *(v31 + 80);
  v102 = v45;
  v100 = v46;
  v47 = *(v31 + 104);
  v99 = *(v31 + 96);
  v98 = v47;
  v48 = *(v31 + 120);
  v97 = *(v31 + 112);
  v96 = v48;
  v49 = *(v31 + 136);
  v95 = *(v31 + 128);
  v93[1] = v49;
  v50 = *(v31 + 152);
  v93[2] = *(v31 + 144);
  v93[3] = v50;
  v51 = *(v31 + 168);
  v93[4] = *(v31 + 160);
  v93[5] = v51;
  v52 = *(v31 + 184);
  v93[6] = *(v31 + 176);
  v93[7] = v52;
  v53 = *(v31 + 200);
  v93[8] = *(v31 + 192);
  v93[9] = v53;
  v54 = *(v31 + 216);
  v93[10] = *(v31 + 208);
  v93[12] = v54;
  v55 = *(v31 + 232);
  v93[14] = *(v31 + 224);
  v93[16] = v55;
  v56 = *(v31 + 248);
  v93[18] = *(v31 + 240);
  v93[20] = v56;
  v94 = *(v31 + 900);
  v57 = v34[3];
  v58 = *(v31 + 264);
  v93[11] = *(v31 + 256);
  v93[13] = v58;
  v59 = *(v31 + 280);
  v93[15] = *(v31 + 272);
  v93[17] = v59;
  v60 = *(v31 + 296);
  v93[19] = *(v31 + 288);
  v93[21] = v60;
  v61 = *(v31 + 312);
  v93[22] = *(v31 + 304);
  v93[23] = v61;
  v62 = *(v31 + 328);
  v93[24] = *(v31 + 320);
  v93[25] = v62;
  v63 = *(v31 + 344);
  v93[26] = *(v31 + 336);
  v93[27] = v63;
  v64 = *(v31 + 360);
  v93[28] = *(v31 + 352);
  v93[29] = v64;
  v65 = *(v31 + 376);
  v93[30] = *(v31 + 368);
  v93[31] = v65;
  v66 = *(v31 + 392);
  v93[32] = *(v31 + 384);
  v93[33] = v66;
  v67 = *(v31 + 408);
  v93[34] = *(v31 + 400);
  v93[35] = v67;
  v68 = *(v31 + 424);
  v93[36] = *(v31 + 416);
  v93[37] = v68;
  v69 = *(v31 + 440);
  v93[38] = *(v31 + 432);
  v93[39] = v69;
  v70 = *(v31 + 456);
  v93[40] = *(v31 + 448);
  v93[41] = v70;
  v71 = *(v31 + 472);
  v93[42] = *(v31 + 464);
  v93[43] = v71;
  v72 = *(v31 + 488);
  v93[44] = *(v31 + 480);
  v93[45] = v72;
  v73 = *(v31 + 504);
  v93[46] = *(v31 + 496);
  v93[47] = v73;
  v93[48] = *(v31 + 512);
  v93[49] = *(v31 + 520);
  v93[50] = *(v31 + 528);
  v93[51] = *(v31 + 536);
  v93[52] = *(v31 + 544);
  v93[53] = *(v31 + 552);
  v93[54] = *(v31 + 560);
  v93[55] = *(v31 + 568);
  v93[56] = *(v31 + 576);
  v93[57] = *(v31 + 584);
  v93[58] = *(v31 + 592);
  v93[59] = *(v31 + 600);
  v93[60] = *(v31 + 608);
  v93[61] = *(v31 + 616);
  v93[62] = *(v31 + 624);
  v93[63] = *(v31 + 632);
  v93[64] = *(v31 + 640);
  v93[65] = *(v31 + 648);
  v93[66] = *(v31 + 656);
  v93[67] = *(v31 + 664);
  v93[68] = *(v31 + 672);
  v93[69] = *(v31 + 680);
  v93[70] = *(v31 + 688);
  v93[71] = *(v31 + 696);
  v93[72] = *(v31 + 704);
  v93[73] = *(v31 + 712);
  v93[74] = *(v31 + 720);
  v93[75] = *(v31 + 728);
  v93[76] = *(v31 + 736);
  v93[77] = *(v31 + 744);
  v93[78] = *(v31 + 752);
  v93[79] = *(v31 + 760);
  v93[80] = *(v31 + 768);
  v93[81] = *(v31 + 776);
  v93[82] = *(v31 + 784);
  v93[83] = *(v31 + 792);
  v93[84] = *(v31 + 800);
  v93[85] = *(v31 + 808);
  v93[86] = *(v31 + 816);
  v93[87] = *(v31 + 824);
  v93[88] = *(v31 + 832);
  v93[89] = *(v31 + 840);
  v93[90] = *(v31 + 848);
  v93[91] = *(v31 + 856);
  v93[92] = *(v31 + 864);
  v93[93] = *(v31 + 872);
  sub_1ABA93E20(v34, v57);
  sub_1ABBB05A0();
  sub_1ABF252E4();
  v112 = v35;
  v74 = v111;
  sub_1ABF24F54();
  if (!v74)
  {
    sub_1ABA7F0C4(1);
    sub_1ABA80994();
    sub_1ABF24F54();
    v75 = sub_1ABA7F0C4(2);
    v76.n128_u64[0] = v109;
    sub_1ABAA3030(v75, v76);
    v77 = sub_1ABA7F0C4(3);
    v78.n128_u64[0] = v108;
    sub_1ABAA3030(v77, v78);
    v79 = sub_1ABA7F0C4(4);
    v80.n128_u64[0] = v107;
    sub_1ABAA3030(v79, v80);
    v81 = sub_1ABA7F0C4(5);
    v82.n128_u64[0] = v106;
    sub_1ABAA3030(v81, v82);
    v83 = sub_1ABA7F0C4(6);
    v84.n128_u64[0] = v105;
    sub_1ABAA3030(v83, v84);
    v85 = sub_1ABA7F0C4(7);
    v86.n128_u64[0] = v104;
    sub_1ABAA3030(v85, v86);
    v87 = sub_1ABA7F0C4(8);
    v88.n128_u64[0] = v103;
    sub_1ABAA3030(v87, v88);
    v89 = sub_1ABA7F0C4(9);
    v90.n128_u64[0] = v102;
    sub_1ABAA3030(v89, v90);
    v91 = sub_1ABA7F0C4(10);
    v92.n128_u64[0] = v101;
    sub_1ABAA3030(v91, v92);
    sub_1ABA7F0C4(11);
    sub_1ABA80994();
    sub_1ABF24F54();
    sub_1ABA7F0C4(12);
    sub_1ABA7D578();
    sub_1ABA7F0C4(13);
    sub_1ABA7D578();
    sub_1ABA7F0C4(14);
    sub_1ABA7D578();
    sub_1ABA7F0C4(15);
    sub_1ABA7D578();
    sub_1ABA7F0C4(16);
    sub_1ABA7D578();
    sub_1ABA7F0C4(17);
    sub_1ABA7D578();
    sub_1ABA7F0C4(18);
    sub_1ABA7D578();
    sub_1ABA7F0C4(19);
    sub_1ABA7D578();
    sub_1ABA7F0C4(20);
    sub_1ABA7D578();
    sub_1ABA7F0C4(21);
    sub_1ABA7D578();
    sub_1ABA7F0C4(22);
    sub_1ABA7D578();
    sub_1ABA7F0C4(23);
    sub_1ABA7D578();
    sub_1ABA7F0C4(24);
    sub_1ABA7D578();
    sub_1ABA7F0C4(25);
    sub_1ABA7D578();
    sub_1ABA7F0C4(26);
    sub_1ABA7D578();
    sub_1ABA7F0C4(27);
    sub_1ABA7D578();
    sub_1ABA7F0C4(28);
    sub_1ABA7D578();
    sub_1ABA7F0C4(29);
    sub_1ABA7D578();
    sub_1ABA7F0C4(30);
    sub_1ABA7D578();
    sub_1ABA7F0C4(31);
    sub_1ABA7D578();
    sub_1ABA7F0C4(32);
    sub_1ABA7D578();
    sub_1ABA7F0C4(33);
    sub_1ABA7D578();
    sub_1ABA7F0C4(34);
    sub_1ABA7D578();
    sub_1ABA7F0C4(35);
    sub_1ABA7D578();
    sub_1ABA7F0C4(36);
    sub_1ABA7D578();
    sub_1ABA7F0C4(37);
    sub_1ABA7D578();
    sub_1ABA7F0C4(38);
    sub_1ABA7D578();
    sub_1ABA7F0C4(39);
    sub_1ABA7D578();
    sub_1ABA7F0C4(40);
    sub_1ABA7D578();
    sub_1ABA7F0C4(41);
    sub_1ABA7D578();
    sub_1ABA7F0C4(42);
    sub_1ABA7D578();
    sub_1ABA7F0C4(43);
    sub_1ABA7D578();
    sub_1ABA7F0C4(44);
    sub_1ABA7D578();
    sub_1ABA7F0C4(45);
    sub_1ABA7D578();
    sub_1ABA7F0C4(46);
    sub_1ABA7D578();
    sub_1ABA7F0C4(47);
    sub_1ABA7D578();
    sub_1ABA7F0C4(48);
    sub_1ABA7D578();
    sub_1ABA7F0C4(49);
    sub_1ABA7D578();
    sub_1ABA7F0C4(50);
    sub_1ABA7D578();
    sub_1ABA7F0C4(51);
    sub_1ABA7D578();
    sub_1ABA7F0C4(52);
    sub_1ABA7D578();
    sub_1ABA7F0C4(53);
    sub_1ABA7D578();
    sub_1ABA7F0C4(54);
    sub_1ABA7D578();
    sub_1ABA7F0C4(55);
    sub_1ABA7D578();
    sub_1ABA7F0C4(56);
    sub_1ABA7D578();
    sub_1ABA7F0C4(57);
    sub_1ABA7D578();
    sub_1ABA7F0C4(58);
    sub_1ABA7D578();
    sub_1ABA7F0C4(59);
    sub_1ABA7D578();
    sub_1ABA7F0C4(60);
    sub_1ABA7D578();
    sub_1ABA7F0C4(61);
    sub_1ABA7D578();
    sub_1ABA7F0C4(62);
    sub_1ABA7D578();
    sub_1ABA7F0C4(63);
    sub_1ABA7D578();
    sub_1ABA7F0C4(64);
    sub_1ABA7D578();
    sub_1ABA7F0C4(65);
    sub_1ABA7D578();
    sub_1ABA7F0C4(66);
    sub_1ABA7D578();
    sub_1ABA7F0C4(67);
    sub_1ABA7D578();
    sub_1ABA7F0C4(68);
    sub_1ABA7D578();
    sub_1ABA7F0C4(69);
    sub_1ABA7D578();
    sub_1ABA7F0C4(70);
    sub_1ABA7D578();
    sub_1ABA7F0C4(71);
    sub_1ABA7D578();
    sub_1ABA7F0C4(72);
    sub_1ABA7D578();
    sub_1ABA7F0C4(73);
    sub_1ABA7D578();
    sub_1ABA7F0C4(74);
    sub_1ABA7D578();
    sub_1ABA7F0C4(75);
    sub_1ABA7D578();
    sub_1ABA7F0C4(76);
    sub_1ABA7D578();
    sub_1ABA7F0C4(77);
    sub_1ABA7D578();
    sub_1ABA7F0C4(78);
    sub_1ABA7D578();
    sub_1ABA7F0C4(79);
    sub_1ABA7D578();
    sub_1ABA7F0C4(80);
    sub_1ABA7D578();
    sub_1ABA7F0C4(81);
    sub_1ABA7D578();
    sub_1ABA7F0C4(82);
    sub_1ABA7D578();
    sub_1ABA7F0C4(83);
    sub_1ABA7D578();
    sub_1ABA7F0C4(84);
    sub_1ABA7D578();
    sub_1ABA7F0C4(85);
    sub_1ABA7D578();
    sub_1ABA7F0C4(86);
    sub_1ABA7D578();
    sub_1ABA7F0C4(87);
    sub_1ABA7D578();
    sub_1ABA7F0C4(88);
    sub_1ABA7D578();
    sub_1ABA7F0C4(89);
    sub_1ABA7D578();
    sub_1ABA7F0C4(90);
    sub_1ABA7D578();
    sub_1ABA7F0C4(91);
    sub_1ABA7D578();
    sub_1ABA7F0C4(92);
    sub_1ABA7D578();
    sub_1ABA7F0C4(93);
    sub_1ABA7D578();
    sub_1ABA7F0C4(94);
    sub_1ABA7D578();
    sub_1ABA7F0C4(95);
    sub_1ABA7D578();
    sub_1ABA7F0C4(96);
    sub_1ABA7D578();
    sub_1ABA7F0C4(97);
    sub_1ABA7D578();
    sub_1ABA7F0C4(98);
    sub_1ABA7D578();
    sub_1ABA7F0C4(99);
    sub_1ABA7D578();
    sub_1ABA7F0C4(100);
    sub_1ABA7D578();
    sub_1ABA7F0C4(101);
    sub_1ABA7D578();
    sub_1ABA7F0C4(102);
    sub_1ABA7D578();
    sub_1ABA7F0C4(103);
    sub_1ABA7D578();
    sub_1ABA7F0C4(104);
    sub_1ABA7D578();
    sub_1ABA7F0C4(105);
    sub_1ABA7D578();
    sub_1ABA7F0C4(106);
    sub_1ABA7D578();
    sub_1ABA7F0C4(107);
    sub_1ABA7D578();
    sub_1ABA7F0C4(108);
    sub_1ABA7D578();
    sub_1ABA7F0C4(109);
    sub_1ABA7D578();
    sub_1ABA7F0C4(110);
    sub_1ABA80994();
    sub_1ABF24F54();
    sub_1ABA7F0C4(111);
    sub_1ABA80994();
    sub_1ABF24F54();
    sub_1ABA7AC90(112);
    sub_1ABA80994();
    sub_1ABF24F94();
    sub_1ABA7AC90(113);
    sub_1ABA80994();
    sub_1ABF24F94();
    sub_1ABA7AC90(114);
    sub_1ABA80994();
    sub_1ABF24F94();
    sub_1ABA7F0C4(115);
    sub_1ABA80994();
    sub_1ABF24F54();
    sub_1ABA7F0C4(116);
    sub_1ABA80994();
    sub_1ABF24F54();
    sub_1ABA7F0C4(117);
    sub_1ABA80994();
    sub_1ABF24F54();
    sub_1ABA7F0C4(118);
    sub_1ABA80994();
    sub_1ABF24F54();
    sub_1ABA7AC90(119);
    sub_1ABA80994();
    sub_1ABF24F94();
    sub_1ABA7F0C4(120);
    sub_1ABA80994();
    sub_1ABF24F54();
    sub_1ABA7F0C4(121);
    sub_1ABA80994();
    sub_1ABF24F54();
  }

  (*(v37 + 8))(v40, v112);
  sub_1ABAA1ED4();
}

unint64_t sub_1ABBB05A0()
{
  result = qword_1EB4CFFF0;
  if (!qword_1EB4CFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFFF0);
  }

  return result;
}

void EntityFeatures.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_1ABAB1064();
  a30 = v32;
  a31 = v33;
  v35 = v34;
  v37 = v36;
  v38 = sub_1ABAD219C(&qword_1EB4D4060, &qword_1ABF420B8);
  sub_1ABA7BB64();
  v40 = v39;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v201 - v42;
  sub_1ABA93E20(v35, v35[3]);
  sub_1ABBB05A0();
  sub_1ABF252C4();
  if (!v31)
  {
    a21 = 0;
    sub_1ABA80994();
    sub_1ABF24E34();
    v45 = v44;
    sub_1ABA8F270(1);
    sub_1ABF24E34();
    v47 = v46;
    sub_1ABA8F270(2);
    sub_1ABF24E34();
    v49 = v48;
    sub_1ABA8F270(3);
    sub_1ABF24E34();
    v51 = v50;
    sub_1ABA8F270(4);
    sub_1ABF24E34();
    v53 = v52;
    sub_1ABA8F270(5);
    sub_1ABF24E34();
    v55 = v54;
    sub_1ABA8F270(6);
    sub_1ABF24E34();
    v57 = v56;
    sub_1ABA8F270(7);
    sub_1ABF24E34();
    v305 = v58;
    sub_1ABA8F270(8);
    sub_1ABF24E34();
    v60 = v59;
    sub_1ABA8F270(9);
    sub_1ABF24E34();
    v304 = v61;
    sub_1ABA8F270(10);
    sub_1ABF24E34();
    v303 = v62;
    sub_1ABA8F270(11);
    sub_1ABF24E34();
    v302 = v63;
    sub_1ABA8F270(12);
    sub_1ABF24E34();
    v301 = v64;
    sub_1ABA8F270(13);
    sub_1ABF24E34();
    v300 = v65;
    sub_1ABA8F270(14);
    sub_1ABF24E34();
    v299 = v66;
    sub_1ABA8F270(15);
    sub_1ABF24E34();
    v298 = v67;
    sub_1ABA8F270(16);
    sub_1ABF24E34();
    v297 = v68;
    sub_1ABA8F270(17);
    sub_1ABF24E34();
    v296 = v69;
    sub_1ABA8F270(18);
    sub_1ABF24E34();
    v295 = v70;
    sub_1ABA8F270(19);
    sub_1ABF24E34();
    v294 = v71;
    sub_1ABA8F270(20);
    sub_1ABF24E34();
    v293 = v72;
    sub_1ABA8F270(21);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a29, v73);
    sub_1ABA8F270(22);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a28, v74);
    sub_1ABA8F270(23);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a27, v75);
    sub_1ABA8F270(24);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a26, v76);
    sub_1ABA8F270(25);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a25, v77);
    sub_1ABA8F270(26);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a24, v78);
    sub_1ABA8F270(27);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a23, v79);
    sub_1ABA8F270(28);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a22, v80);
    sub_1ABA8F270(29);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a18, v81);
    sub_1ABA8F270(30);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a17, v82);
    sub_1ABA8F270(31);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a16, v83);
    sub_1ABA8F270(32);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a15, v84);
    sub_1ABA8F270(33);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a14, v85);
    sub_1ABA8F270(34);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a13, v86);
    sub_1ABA8F270(35);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a12, v87);
    sub_1ABA8F270(36);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a11, v88);
    sub_1ABA8F270(37);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a10, v89);
    sub_1ABA8F270(38);
    sub_1ABF24E34();
    sub_1ABA7C02C(&a9, v90);
    sub_1ABA8F270(39);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v306, v91);
    sub_1ABA8F270(40);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v305, v92);
    sub_1ABA8F270(41);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v304, v93);
    sub_1ABA8F270(42);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v303, v94);
    sub_1ABA8F270(43);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v302, v95);
    sub_1ABA8F270(44);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v301, v96);
    sub_1ABA8F270(45);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v300, v97);
    sub_1ABA8F270(46);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v299, v98);
    sub_1ABA8F270(47);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v298, v99);
    sub_1ABA8F270(48);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v297, v100);
    sub_1ABA8F270(49);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v296, v101);
    sub_1ABA8F270(50);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v295, v102);
    sub_1ABA8F270(51);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v294, v103);
    sub_1ABA8F270(52);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v293, v104);
    sub_1ABA8F270(53);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v292, v105);
    sub_1ABA8F270(54);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v291, v106);
    sub_1ABA8F270(55);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v290, v107);
    sub_1ABA8F270(56);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v289, v108);
    sub_1ABA8F270(57);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v288, v109);
    sub_1ABA8F270(58);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v287, v110);
    sub_1ABA8F270(59);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v286, v111);
    sub_1ABA8F270(60);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v285, v112);
    sub_1ABA8F270(61);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v284, v113);
    sub_1ABA8F270(62);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v283, v114);
    sub_1ABA8F270(63);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v282, v115);
    sub_1ABA8F270(64);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v281, v116);
    sub_1ABA8F270(65);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v280, v117);
    sub_1ABA8F270(66);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v279, v118);
    sub_1ABA8F270(67);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v278, v119);
    sub_1ABA8F270(68);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v277, v120);
    sub_1ABA8F270(69);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v276, v121);
    sub_1ABA8F270(70);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v275, v122);
    sub_1ABA8F270(71);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v274, v123);
    sub_1ABA8F270(72);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v273, v124);
    sub_1ABA8F270(73);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v272, v125);
    sub_1ABA8F270(74);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v271, v126);
    sub_1ABA8F270(75);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v270, v127);
    sub_1ABA8F270(76);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v269, v128);
    sub_1ABA8F270(77);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v268, v129);
    sub_1ABA8F270(78);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v267, v130);
    sub_1ABA8F270(79);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v266, v131);
    sub_1ABA8F270(80);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v265, v132);
    sub_1ABA8F270(81);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v264, v133);
    sub_1ABA8F270(82);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v263, v134);
    sub_1ABA8F270(83);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v262, v135);
    sub_1ABA8F270(84);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v261, v136);
    sub_1ABA8F270(85);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v260, v137);
    sub_1ABA8F270(86);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v259, v138);
    sub_1ABA8F270(87);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v258, v139);
    sub_1ABA8F270(88);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v257, v140);
    sub_1ABA8F270(89);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v256, v141);
    sub_1ABA8F270(90);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v255, v142);
    sub_1ABA8F270(91);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v254, v143);
    sub_1ABA8F270(92);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v253, v144);
    sub_1ABA8F270(93);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v252, v145);
    sub_1ABA8F270(94);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v251, v146);
    sub_1ABA8F270(95);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v250, v147);
    sub_1ABA8F270(96);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v249, v148);
    sub_1ABA8F270(97);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v248, v149);
    sub_1ABA8F270(98);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v247, v150);
    sub_1ABA8F270(99);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v246, v151);
    sub_1ABA8F270(100);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v245, v152);
    sub_1ABA8F270(101);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v244, v153);
    sub_1ABA8F270(102);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v243, v154);
    sub_1ABA8F270(103);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v242, v155);
    sub_1ABA8F270(104);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v241, v156);
    sub_1ABA8F270(105);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v240, v157);
    sub_1ABA8F270(106);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v239, v158);
    sub_1ABA8F270(107);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v238, v159);
    sub_1ABA8F270(108);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v237, v160);
    sub_1ABA8F270(109);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v236, v161);
    sub_1ABA8F270(110);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v235, v162);
    sub_1ABA8F270(111);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v234, v163);
    sub_1ABA8F270(112);
    a18 = sub_1ABF24E74();
    sub_1ABA8F270(113);
    v202 = sub_1ABF24E74();
    sub_1ABA8F270(114);
    v164 = sub_1ABF24E74();
    sub_1ABA8F270(115);
    sub_1ABF24E34();
    sub_1ABA7C02C(v233, v165);
    sub_1ABA8F270(116);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v232, v166);
    sub_1ABA8F270(117);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v231, v167);
    sub_1ABA8F270(118);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v230, v168);
    sub_1ABA8F270(119);
    v169 = sub_1ABF24E74();
    sub_1ABA8F270(120);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v229, v170);
    sub_1ABA8F270(121);
    sub_1ABF24E34();
    sub_1ABA7C02C(&v228, v171);
    (*(v40 + 8))(v43, v38);
    *v37 = v45;
    *(v37 + 8) = v47;
    *(v37 + 16) = v49;
    *(v37 + 24) = v51;
    *(v37 + 32) = v53;
    *(v37 + 40) = v55;
    v172 = v304;
    v173 = v305;
    *(v37 + 48) = v57;
    *(v37 + 56) = v173;
    *(v37 + 64) = v60;
    *(v37 + 72) = v172;
    v174 = v302;
    *(v37 + 80) = v303;
    *(v37 + 88) = v174;
    v175 = v300;
    *(v37 + 96) = v301;
    *(v37 + 104) = v175;
    v176 = v298;
    *(v37 + 112) = v299;
    *(v37 + 120) = v176;
    v177 = v296;
    *(v37 + 128) = v297;
    *(v37 + 136) = v177;
    v178 = v294;
    *(v37 + 144) = v295;
    *(v37 + 152) = v178;
    v179 = v292;
    *(v37 + 160) = v293;
    *(v37 + 168) = v179;
    v180 = v290;
    *(v37 + 176) = v291;
    *(v37 + 184) = v180;
    v181 = v288;
    *(v37 + 192) = v289;
    *(v37 + 200) = v181;
    v182 = v286;
    *(v37 + 208) = v287;
    *(v37 + 216) = v182;
    v183 = v284;
    *(v37 + 224) = v285;
    *(v37 + 232) = v183;
    v184 = v282;
    *(v37 + 240) = v283;
    *(v37 + 248) = v184;
    v185 = v280;
    *(v37 + 256) = v281;
    *(v37 + 264) = v185;
    v186 = v278;
    *(v37 + 272) = v279;
    *(v37 + 280) = v186;
    v187 = v276;
    *(v37 + 288) = v277;
    *(v37 + 296) = v187;
    v188 = v274;
    *(v37 + 304) = v275;
    *(v37 + 312) = v188;
    v189 = v272;
    *(v37 + 320) = v273;
    *(v37 + 328) = v189;
    v190 = v270;
    *(v37 + 336) = v271;
    *(v37 + 344) = v190;
    v191 = v268;
    *(v37 + 352) = v269;
    *(v37 + 360) = v191;
    v192 = v266;
    *(v37 + 368) = v267;
    *(v37 + 376) = v192;
    v193 = v264;
    *(v37 + 384) = v265;
    *(v37 + 392) = v193;
    v194 = v262;
    *(v37 + 400) = v263;
    *(v37 + 408) = v194;
    v195 = v260;
    *(v37 + 416) = v261;
    *(v37 + 424) = v195;
    v196 = v258;
    *(v37 + 432) = v259;
    *(v37 + 440) = v196;
    v197 = v256;
    *(v37 + 448) = v257;
    *(v37 + 456) = v197;
    v198 = v254;
    *(v37 + 464) = v255;
    *(v37 + 472) = v198;
    v199 = v252;
    *(v37 + 480) = v253;
    *(v37 + 488) = v199;
    v200 = v250;
    *(v37 + 496) = v251;
    *(v37 + 504) = v200;
    *(v37 + 512) = v249;
    *(v37 + 520) = v248;
    *(v37 + 528) = v247;
    *(v37 + 536) = v246;
    *(v37 + 544) = v245;
    *(v37 + 552) = v244;
    *(v37 + 560) = v243;
    *(v37 + 568) = v242;
    *(v37 + 576) = v241;
    *(v37 + 584) = v240;
    *(v37 + 592) = v239;
    *(v37 + 600) = v238;
    *(v37 + 608) = v237;
    *(v37 + 616) = v236;
    *(v37 + 624) = v235;
    *(v37 + 632) = v234;
    *(v37 + 640) = v233[1];
    *(v37 + 648) = v233[0];
    *(v37 + 656) = v232;
    *(v37 + 664) = v231;
    *(v37 + 672) = v230;
    *(v37 + 680) = v229;
    *(v37 + 688) = v228;
    *(v37 + 696) = v227;
    *(v37 + 704) = v226;
    *(v37 + 712) = v225;
    *(v37 + 720) = v224;
    *(v37 + 728) = v223;
    *(v37 + 736) = v222;
    *(v37 + 744) = v221;
    *(v37 + 752) = v220;
    *(v37 + 760) = v219;
    *(v37 + 768) = v218;
    *(v37 + 776) = v217;
    *(v37 + 784) = v216;
    *(v37 + 792) = v215;
    *(v37 + 800) = v214;
    *(v37 + 808) = v213;
    *(v37 + 816) = v212;
    *(v37 + 824) = v211;
    *(v37 + 832) = v210;
    *(v37 + 840) = v209;
    *(v37 + 848) = v208;
    *(v37 + 856) = v207;
    *(v37 + 864) = v206;
    *(v37 + 872) = v205;
    *(v37 + 880) = v204;
    *(v37 + 888) = v203;
    *(v37 + 896) = a18;
    *(v37 + 900) = v202;
    *(v37 + 904) = v164;
    *(v37 + 912) = v201[5];
    *(v37 + 920) = v201[4];
    *(v37 + 928) = v201[3];
    *(v37 + 936) = v201[2];
    *(v37 + 944) = v169;
    *(v37 + 952) = v201[1];
    *(v37 + 960) = v201[0];
  }

  sub_1ABA84B54(v35);
  sub_1ABAA1ED4();
}

unint64_t sub_1ABBB173C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF24D84();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1ABBB1788(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF250B4();

  v3 = 0;
  result = 29;
  switch(v2)
  {
    case 0:
      goto LABEL_101;
    case 1:
      v3 = 1;
      goto LABEL_101;
    case 2:
      v3 = 2;
      goto LABEL_101;
    case 3:
      v3 = 3;
      goto LABEL_101;
    case 4:
      v3 = 4;
      goto LABEL_101;
    case 5:
      v3 = 5;
      goto LABEL_101;
    case 6:
      v3 = 6;
      goto LABEL_101;
    case 7:
      v3 = 7;
      goto LABEL_101;
    case 8:
      v3 = 8;
      goto LABEL_101;
    case 9:
      v3 = 9;
      goto LABEL_101;
    case 10:
      v3 = 10;
      goto LABEL_101;
    case 11:
      v3 = 11;
      goto LABEL_101;
    case 12:
      v3 = 12;
      goto LABEL_101;
    case 13:
      v3 = 13;
      goto LABEL_101;
    case 14:
      v3 = 14;
      goto LABEL_101;
    case 15:
      v3 = 15;
      goto LABEL_101;
    case 16:
      v3 = 16;
      goto LABEL_101;
    case 17:
      v3 = 17;
      goto LABEL_101;
    case 18:
      v3 = 18;
      goto LABEL_101;
    case 19:
      v3 = 19;
      goto LABEL_101;
    case 20:
      v3 = 20;
      goto LABEL_101;
    case 21:
      v3 = 21;
      goto LABEL_101;
    case 22:
      v3 = 22;
      goto LABEL_101;
    case 23:
      v3 = 23;
      goto LABEL_101;
    case 24:
      v3 = 24;
      goto LABEL_101;
    case 25:
      v3 = 25;
      goto LABEL_101;
    case 26:
      v3 = 26;
      goto LABEL_101;
    case 27:
      v3 = 27;
      goto LABEL_101;
    case 28:
      v3 = 28;
LABEL_101:
      result = v3;
      break;
    case 29:
      return result;
    case 30:
      result = 30;
      break;
    case 31:
      result = 31;
      break;
    case 32:
      result = 32;
      break;
    case 33:
      result = 33;
      break;
    case 34:
      result = 34;
      break;
    case 35:
      result = 35;
      break;
    case 36:
      result = 36;
      break;
    case 37:
      result = 37;
      break;
    case 38:
      result = 38;
      break;
    case 39:
      result = 39;
      break;
    case 40:
      result = 40;
      break;
    case 41:
      result = 41;
      break;
    case 42:
      result = 42;
      break;
    case 43:
      result = 43;
      break;
    case 44:
      result = 44;
      break;
    case 45:
      result = 45;
      break;
    case 46:
      result = 46;
      break;
    case 47:
      result = 47;
      break;
    case 48:
      result = 48;
      break;
    case 49:
      result = 49;
      break;
    case 50:
      result = 50;
      break;
    case 51:
      result = 51;
      break;
    case 52:
      result = 52;
      break;
    case 53:
      result = 53;
      break;
    case 54:
      result = 54;
      break;
    case 55:
      result = 55;
      break;
    case 56:
      result = 56;
      break;
    case 57:
      result = 57;
      break;
    case 58:
      result = 58;
      break;
    case 59:
      result = 59;
      break;
    case 60:
      result = 60;
      break;
    case 61:
      result = 61;
      break;
    case 62:
      result = 62;
      break;
    case 63:
      result = 63;
      break;
    case 64:
      result = 64;
      break;
    case 65:
      result = 65;
      break;
    case 66:
      result = 66;
      break;
    case 67:
      result = 67;
      break;
    case 68:
      result = 68;
      break;
    case 69:
      result = 69;
      break;
    case 70:
      result = 70;
      break;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    case 95:
      result = 95;
      break;
    case 96:
      result = 96;
      break;
    case 97:
      result = 97;
      break;
    case 98:
      result = 98;
      break;
    case 99:
      result = 99;
      break;
    case 100:
      result = 100;
      break;
    case 101:
      result = 101;
      break;
    case 102:
      result = 102;
      break;
    case 103:
      result = 103;
      break;
    case 104:
      result = 104;
      break;
    case 105:
      result = 105;
      break;
    case 106:
      result = 106;
      break;
    case 107:
      result = 107;
      break;
    case 108:
      result = 108;
      break;
    case 109:
      result = 109;
      break;
    case 110:
      result = 110;
      break;
    case 111:
      result = 111;
      break;
    case 112:
      result = 112;
      break;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    default:
      result = 122;
      break;
  }

  return result;
}

unint64_t sub_1ABBB1C2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABBB173C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1ABBB1C5C(void *a1@<X8>)
{
  sub_1ABBAE824(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1ABBB1CAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABBB1788(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1ABBB1CDC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1ABBAE950(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABBB1D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBB1BCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBB1D54(uint64_t a1)
{
  v2 = sub_1ABBB05A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBB1D90(uint64_t a1)
{
  v2 = sub_1ABBB05A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABBB1DCC()
{
  qword_1EB5495C8 = 0x6B6E615265676170;
  unk_1EB5495D0 = 0xE800000000000000;
  qword_1EB5495D8 = 0x6E61725F65676170;
  unk_1EB5495E0 = 0xE90000000000006BLL;
}

IntelligencePlatform::PopularityMetric __swiftcall PopularityMetric.init(name:columnName:)(Swift::String name, Swift::String columnName)
{
  *v2 = name;
  v2[1] = columnName;
  result.columnName = columnName;
  result.name = name;
  return result;
}

void sub_1ABBB1E18()
{
  qword_1EB5495E8 = 0x6565726765446E69;
  unk_1EB5495F0 = 0xE800000000000000;
  qword_1EB5495F8 = 0x65726765645F6E69;
  unk_1EB549600 = 0xE900000000000065;
}

void sub_1ABBB1E58()
{
  qword_1EB549608 = 0x657267654474756FLL;
  unk_1EB549610 = 0xE900000000000065;
  qword_1EB549618 = 0x726765645F74756FLL;
  unk_1EB549620 = 0xEA00000000006565;
}

void sub_1ABBB1E9C()
{
  strcpy(&qword_1EB549628, "entityInDegree");
  unk_1EB549637 = -18;
  qword_1EB549638 = 0xD000000000000010;
  unk_1EB549640 = 0x80000001ABF899C0;
}

void sub_1ABBB1EE8()
{
  qword_1EB549648 = 0x754F797469746E65;
  unk_1EB549650 = 0xEF65657267654474;
  qword_1EB549658 = 0xD000000000000011;
  unk_1EB549660 = 0x80000001ABF899E0;
}

void sub_1ABBB1F34()
{
  qword_1EB549668 = 0xD000000000000010;
  unk_1EB549670 = 0x80000001ABF89900;
  qword_1EB549678 = 0xD000000000000010;
  unk_1EB549680 = 0x80000001ABF899C0;
}

void sub_1ABBB1F70()
{
  qword_1EB549688 = 0xD000000000000011;
  unk_1EB549690 = 0x80000001ABF89920;
  qword_1EB549698 = 0xD000000000000014;
  unk_1EB5496A0 = 0x80000001ABF89A20;
}

void sub_1ABBB1FB0()
{
  qword_1EB5496A8 = 0xD000000000000011;
  unk_1EB5496B0 = 0x80000001ABF89940;
  qword_1EB5496B8 = 0xD000000000000014;
  unk_1EB5496C0 = 0x80000001ABF89A40;
}

void sub_1ABBB1FF0()
{
  qword_1EB5496C8 = 0xD000000000000012;
  unk_1EB5496D0 = 0x80000001ABF89960;
  qword_1EB5496D8 = 0xD000000000000015;
  unk_1EB5496E0 = 0x80000001ABF89A60;
}

void sub_1ABBB2030()
{
  qword_1EB5496E8 = 0x656572676564;
  unk_1EB5496F0 = 0xE600000000000000;
  qword_1EB5496F8 = 0x656572676564;
  unk_1EB549700 = 0xE600000000000000;
}

void sub_1ABBB2054()
{
  strcpy(&qword_1EB549708, "entityDegree");
  unk_1EB549715 = 0;
  unk_1EB549716 = -5120;
  strcpy(&qword_1EB549718, "entity_degree");
  unk_1EB549726 = -4864;
}

void sub_1ABBB20A4()
{
  qword_1EB549728 = 0xD000000000000010;
  unk_1EB549730 = 0x80000001ABF89980;
  qword_1EB549738 = 0xD000000000000012;
  unk_1EB549740 = 0x80000001ABF89A80;
}

void sub_1ABBB20E4()
{
  qword_1EB549748 = 0xD000000000000011;
  unk_1EB549750 = 0x80000001ABF899A0;
  qword_1EB549758 = 0xD000000000000013;
  unk_1EB549760 = 0x80000001ABF89AA0;
}

void sub_1ABBB2124()
{
  qword_1EB549768 = 0x6C6169636F73;
  unk_1EB549770 = 0xE600000000000000;
  qword_1EB549778 = 0x6C6169636F73;
  unk_1EB549780 = 0xE600000000000000;
}

uint64_t PopularityMetric.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PopularityMetric.columnName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall PopularityMetric.init(rawValue:)(IntelligencePlatform::PopularityMetric_optional *__return_ptr retstr, Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = rawValue._countAndFlagsBits == 0x6B6E615265676170 && rawValue._object == 0xE800000000000000;
  if (v4 || (sub_1ABA7C038(0x6B6E615265676170, 0xE800000000000000) & 1) != 0)
  {

    if (qword_1EB4D0280 != -1)
    {
      sub_1ABAA4D5C(&qword_1EB4D0280);
    }
  }

  else
  {
    v5 = countAndFlagsBits == 0x6565726765446E69 && object == 0xE800000000000000;
    if (v5 || (sub_1ABA7C038(0x6565726765446E69, 0xE800000000000000) & 1) != 0)
    {

      if (qword_1EB4D0288 != -1)
      {
        sub_1ABAA5270(&qword_1EB4D0288);
      }
    }

    else
    {
      v6 = countAndFlagsBits == 0x657267654474756FLL && object == 0xE900000000000065;
      if (v6 || (sub_1ABA7C038(0x657267654474756FLL, 0xE900000000000065) & 1) != 0)
      {

        if (qword_1EB4D0290 != -1)
        {
          sub_1ABAA57A4(&qword_1EB4D0290);
        }
      }

      else
      {
        v7 = sub_1ABAA4944() & 0xFFFFFFFFFFFFLL | 0x6E49000000000000;
        v9 = countAndFlagsBits == v7 && object == v8;
        if (v9 || (sub_1ABA7C038(v7, v8) & 1) != 0)
        {

          if (qword_1EB4D0298 != -1)
          {
            sub_1ABA97AB0(&qword_1EB4D0298);
          }
        }

        else
        {
          v10 = sub_1ABAA4944() & 0xFFFFFFFFFFFFLL | 0x754F000000000000;
          v12 = countAndFlagsBits == v10 && object == v11;
          if (v12 || (sub_1ABA7C038(v10, v11) & 1) != 0)
          {

            if (qword_1EB4D02A0 != -1)
            {
              sub_1ABA8404C(&qword_1EB4D02A0);
            }
          }

          else
          {
            sub_1ABA7F0D0();
            v14 = countAndFlagsBits == 0xD000000000000010 && v13 == object;
            if (v14 || (sub_1ABA7C038(0xD000000000000010, v13) & 1) != 0)
            {

              if (qword_1EB4D02A8 != -1)
              {
                sub_1ABA8E190(&qword_1EB4D02A8);
              }
            }

            else
            {
              sub_1ABA8E7E0();
              v16 = v4 && v15 == object;
              if (v16 || (sub_1ABA7C038(0xD000000000000011, v15) & 1) != 0)
              {

                if (qword_1EB4D02B0 != -1)
                {
                  sub_1ABA9A370(&qword_1EB4D02B0);
                }
              }

              else
              {
                sub_1ABA8E7E0();
                v18 = v4 && v17 == object;
                if (v18 || (sub_1ABA7C038(0xD000000000000011, v17) & 1) != 0)
                {

                  if (qword_1EB4D02B8 != -1)
                  {
                    sub_1ABAA5FC8(&qword_1EB4D02B8);
                  }
                }

                else
                {
                  sub_1ABA7F0D0();
                  v20 = countAndFlagsBits == 0xD000000000000012 && v19 == object;
                  if (v20 || (sub_1ABA7C038(0xD000000000000012, v19) & 1) != 0)
                  {

                    if (qword_1EB4D02C0 != -1)
                    {
                      sub_1ABA906DC(&qword_1EB4D02C0);
                    }
                  }

                  else
                  {
                    v21 = sub_1ABAA2248();
                    v22 = v4 && object == 0xE600000000000000;
                    if (v22 || (sub_1ABA7C038(v21, 0xE600000000000000) & 1) != 0)
                    {

                      if (qword_1EB4D02C8 != -1)
                      {
                        sub_1ABA9934C(&qword_1EB4D02C8);
                      }
                    }

                    else
                    {
                      v23 = sub_1ABAA4944() & 0xFFFFFFFFFFFFLL | 0x6544000000000000;
                      v25 = countAndFlagsBits == v23 && object == v24;
                      if (v25 || (sub_1ABA7C038(v23, v24) & 1) != 0)
                      {

                        if (qword_1EB4D02D0 != -1)
                        {
                          sub_1ABA8BF6C(&qword_1EB4D02D0);
                        }
                      }

                      else
                      {
                        sub_1ABA7F0D0();
                        v27 = countAndFlagsBits == 0xD000000000000010 && v26 == object;
                        if (v27 || (sub_1ABA7C038(0xD000000000000010, v26) & 1) != 0)
                        {

                          if (qword_1EB4D02D8 != -1)
                          {
                            sub_1ABA8FF90(&qword_1EB4D02D8);
                          }
                        }

                        else
                        {
                          sub_1ABA8E7E0();
                          v29 = v4 && v28 == object;
                          if (v29 || (sub_1ABA7C038(0xD000000000000011, v28) & 1) != 0)
                          {

                            if (qword_1EB4D02E0 != -1)
                            {
                              sub_1ABA948D4(&qword_1EB4D02E0);
                            }
                          }

                          else
                          {
                            v30 = sub_1ABA957A4();
                            v31 = v4 && object == 0xE600000000000000;
                            if (!v31 && (sub_1ABA7C038(v30, 0xE600000000000000) & 1) == 0)
                            {
                              sub_1ABAA2568();
                              goto LABEL_9;
                            }

                            if (qword_1EB4D02E8 != -1)
                            {
                              sub_1ABA81734(&qword_1EB4D02E8);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_1ABAA3484();
LABEL_9:

  sub_1ABA96984();
}

void __swiftcall PopularityMetric.init(columnName:)(IntelligencePlatform::PopularityMetric_optional *__return_ptr retstr, Swift::String columnName)
{
  object = columnName._object;
  countAndFlagsBits = columnName._countAndFlagsBits;
  v4 = columnName._countAndFlagsBits == 0x6E61725F65676170 && columnName._object == 0xE90000000000006BLL;
  if (v4 || (sub_1ABA7C038(0x6E61725F65676170, 0xE90000000000006BLL) & 1) != 0)
  {

    if (qword_1EB4D0280 != -1)
    {
      sub_1ABAA4D5C(&qword_1EB4D0280);
    }
  }

  else
  {
    v5 = countAndFlagsBits == 0x65726765645F6E69 && object == 0xE900000000000065;
    if (v5 || (sub_1ABA7C038(0x65726765645F6E69, 0xE900000000000065) & 1) != 0)
    {

      if (qword_1EB4D0288 != -1)
      {
        sub_1ABAA5270(&qword_1EB4D0288);
      }
    }

    else
    {
      v6 = countAndFlagsBits == 0x726765645F74756FLL && object == 0xEA00000000006565;
      if (v6 || (sub_1ABA7C038(0x726765645F74756FLL, 0xEA00000000006565) & 1) != 0)
      {

        if (qword_1EB4D0290 != -1)
        {
          sub_1ABAA57A4(&qword_1EB4D0290);
        }
      }

      else
      {
        sub_1ABA7F0D0();
        v8 = countAndFlagsBits == 0xD000000000000010 && v7 == object;
        if (v8 || (sub_1ABA7C038(0xD000000000000010, v7) & 1) != 0)
        {

          if (qword_1EB4D0298 != -1)
          {
            sub_1ABA97AB0(&qword_1EB4D0298);
          }
        }

        else
        {
          sub_1ABA7F0D0();
          v10 = countAndFlagsBits == 0xD000000000000011 && v9 == object;
          if (v10 || (sub_1ABA7C038(0xD000000000000011, v9) & 1) != 0)
          {

            if (qword_1EB4D02A0 != -1)
            {
              sub_1ABA8404C(&qword_1EB4D02A0);
            }
          }

          else
          {
            sub_1ABA8E7E0();
            v12 = v4 && v11 == object;
            if (v12 || (sub_1ABA7C038(0xD000000000000013, v11) & 1) != 0)
            {

              if (qword_1EB4D02A8 != -1)
              {
                sub_1ABA8E190(&qword_1EB4D02A8);
              }
            }

            else
            {
              sub_1ABA7F0D0();
              v14 = countAndFlagsBits == 0xD000000000000014 && v13 == object;
              if (v14 || (sub_1ABA7C038(0xD000000000000014, v13) & 1) != 0)
              {

                if (qword_1EB4D02B0 != -1)
                {
                  sub_1ABA9A370(&qword_1EB4D02B0);
                }
              }

              else
              {
                sub_1ABA7F0D0();
                v16 = countAndFlagsBits == 0xD000000000000014 && v15 == object;
                if (v16 || (sub_1ABA7C038(0xD000000000000014, v15) & 1) != 0)
                {

                  if (qword_1EB4D02B8 != -1)
                  {
                    sub_1ABAA5FC8(&qword_1EB4D02B8);
                  }
                }

                else
                {
                  sub_1ABA7F0D0();
                  v18 = countAndFlagsBits == 0xD000000000000015 && v17 == object;
                  if (v18 || (sub_1ABA7C038(0xD000000000000015, v17) & 1) != 0)
                  {

                    if (qword_1EB4D02C0 != -1)
                    {
                      sub_1ABA906DC(&qword_1EB4D02C0);
                    }
                  }

                  else
                  {
                    v19 = sub_1ABAA2248();
                    v20 = v4 && object == 0xE600000000000000;
                    if (v20 || (sub_1ABA7C038(v19, 0xE600000000000000) & 1) != 0)
                    {

                      if (qword_1EB4D02C8 != -1)
                      {
                        sub_1ABA9934C(&qword_1EB4D02C8);
                      }
                    }

                    else
                    {
                      v21 = sub_1ABAA4944() & 0xFFFFFFFFFFFFLL | 0x645F000000000000;
                      v23 = countAndFlagsBits == v21 && object == v22;
                      if (v23 || (sub_1ABA7C038(v21, v22) & 1) != 0)
                      {

                        if (qword_1EB4D02D0 != -1)
                        {
                          sub_1ABA8BF6C(&qword_1EB4D02D0);
                        }
                      }

                      else
                      {
                        sub_1ABA7F0D0();
                        v25 = countAndFlagsBits == 0xD000000000000012 && v24 == object;
                        if (v25 || (sub_1ABA7C038(0xD000000000000012, v24) & 1) != 0)
                        {

                          if (qword_1EB4D02D8 != -1)
                          {
                            sub_1ABA8FF90(&qword_1EB4D02D8);
                          }
                        }

                        else
                        {
                          sub_1ABA8E7E0();
                          v27 = v4 && v26 == object;
                          if (v27 || (sub_1ABA7C038(0xD000000000000013, v26) & 1) != 0)
                          {

                            if (qword_1EB4D02E0 != -1)
                            {
                              sub_1ABA948D4(&qword_1EB4D02E0);
                            }
                          }

                          else
                          {
                            v28 = sub_1ABA957A4();
                            v29 = v4 && object == 0xE600000000000000;
                            if (!v29 && (sub_1ABA7C038(v28, 0xE600000000000000) & 1) == 0)
                            {
                              sub_1ABAA2568();
                              goto LABEL_9;
                            }

                            if (qword_1EB4D02E8 != -1)
                            {
                              sub_1ABA81734(&qword_1EB4D02E8);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_1ABAA3484();
LABEL_9:

  sub_1ABA96984();
}

uint64_t sub_1ABBB2D88(uint64_t a1)
{
  v2 = sub_1ABBB4B94();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1ABBB2DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABBB4B94();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

void sub_1ABBB2E28()
{
  qword_1EB549788 = 0xD000000000000011;
  unk_1EB549790 = 0x80000001ABF89AC0;
  qword_1EB549798 = 0xD000000000000013;
  unk_1EB5497A0 = 0x80000001ABF89AE0;
}

void sub_1ABBB2E68()
{
  qword_1EB5497A8 = 0x6E6F437361696C61;
  unk_1EB5497B0 = 0xEB00000000746163;
  strcpy(&qword_1EB5497B8, "alias_concat");
  unk_1EB5497C5 = 0;
  unk_1EB5497C6 = -5120;
}

void __swiftcall DescriptionSignal.init(rawValue:)(IntelligencePlatform::DescriptionSignal_optional *__return_ptr retstr, Swift::String rawValue)
{
  object = rawValue._object;
  v3 = rawValue._countAndFlagsBits == 0xD000000000000011 && 0x80000001ABF89AC0 == rawValue._object;
  if (v3 || (countAndFlagsBits = rawValue._countAndFlagsBits, (sub_1ABA7C038(0xD000000000000011, 0x80000001ABF89AC0) & 1) != 0))
  {

    if (qword_1EB4D02F0 != -1)
    {
      sub_1ABAA3FFC(&qword_1EB4D02F0);
    }
  }

  else
  {
    v5 = countAndFlagsBits == 0x6E6F437361696C61 && object == 0xEB00000000746163;
    if (!v5 && (sub_1ABA7C038(0x6E6F437361696C61, 0xEB00000000746163) & 1) == 0)
    {
      sub_1ABAA2568();
      goto LABEL_9;
    }

    if (qword_1EB4D02F8 != -1)
    {
      sub_1ABAA44C0(&qword_1EB4D02F8);
    }
  }

  sub_1ABAA3484();
LABEL_9:

  sub_1ABA96984();
}

void __swiftcall DescriptionSignal.init(columnName:)(IntelligencePlatform::DescriptionSignal_optional *__return_ptr retstr, Swift::String columnName)
{
  object = columnName._object;
  v3 = columnName._countAndFlagsBits == 0xD000000000000013 && 0x80000001ABF89AE0 == columnName._object;
  if (v3 || (countAndFlagsBits = columnName._countAndFlagsBits, (sub_1ABA7C038(0xD000000000000013, 0x80000001ABF89AE0) & 1) != 0))
  {

    if (qword_1EB4D02F0 != -1)
    {
      sub_1ABAA3FFC(&qword_1EB4D02F0);
    }
  }

  else
  {
    v5 = countAndFlagsBits == 0x6F635F7361696C61 && object == 0xEC0000007461636ELL;
    if (!v5 && (sub_1ABA7C038(0x6F635F7361696C61, 0xEC0000007461636ELL) & 1) == 0)
    {
      sub_1ABAA2568();
      goto LABEL_9;
    }

    if (qword_1EB4D02F8 != -1)
    {
      sub_1ABAA44C0(&qword_1EB4D02F8);
    }
  }

  sub_1ABAA3484();
LABEL_9:

  sub_1ABA96984();
}

uint64_t sub_1ABBB31CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();
  v9 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B38](a1, a2, v7, v8, v9);
}

uint64_t sub_1ABBB3274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a4();
  v10 = a5();
  v11 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B48](a1, a2, a3, v9, v10, v11);
}

uint64_t sub_1ABBB3324(uint64_t a1)
{
  v2 = sub_1ABBB4A44();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1ABBB3370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABBB4A44();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

__n128 Neighbor.init(identifier:relationPredicate:direction:type:)@<Q0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unsigned __int8 *a4@<X3>, __n128 *a5@<X4>, __n128 *a6@<X8>)
{
  v6 = *a4;
  result = *a5;
  v8 = a5[1].n128_u64[0];
  v9 = a5[1].n128_u64[1];
  v10 = a5[2].n128_u8[0];
  a6->n128_u64[0] = *a1;
  a6->n128_u64[1] = a2;
  a6[1].n128_u64[0] = a3;
  a6[1].n128_u8[8] = v6;
  a6[2] = result;
  a6[3].n128_u64[0] = v8;
  a6[3].n128_u64[1] = v9;
  a6[4].n128_u8[0] = v10;
  return result;
}

uint64_t static Neighbor.== infix(_:_:)(uint64_t a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = a2[6];
  v6 = a2[7];
  v7 = *(a1 + 8) == a2[1] && *(a1 + 16) == a2[2];
  if (!v7 && (sub_1ABF25054() & 1) == 0 || (sub_1ABACF100(v2) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return sub_1ABF25054();
}

uint64_t sub_1ABBB34CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001ABF89B00 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1701869940 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

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

unint64_t sub_1ABBB363C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x6F69746365726964;
      break;
    case 3:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBB36CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBB34CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBB36F4(uint64_t a1)
{
  v2 = sub_1ABBB39B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBB3730(uint64_t a1)
{
  v2 = sub_1ABBB39B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Neighbor.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D4068, &qword_1ABF420C0);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v11 = *v1;
  v10 = v1[1];
  v24 = v1[2];
  v25 = v10;
  v31 = *(v1 + 24);
  v12 = v1[4];
  v22 = v1[5];
  v23 = v12;
  v13 = v1[6];
  v20 = v1[7];
  v21 = v13;
  HIDWORD(v19) = *(v1 + 64);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABBB39B8();
  sub_1ABF252E4();
  v26 = v11;
  v32 = 0;
  sub_1ABAE8BC8();
  sub_1ABA7D598();
  sub_1ABA7BF34();
  sub_1ABF24F84();
  if (!v2)
  {
    v14 = v31;
    v15 = v21;
    v16 = v22;
    v17 = v23;
    LOBYTE(v26) = 1;
    sub_1ABA7BF34();
    sub_1ABF24F34();
    LOBYTE(v26) = v14;
    v32 = 2;
    sub_1ABBB3A0C();
    sub_1ABA7D598();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    v26 = v17;
    v27 = v16;
    v28 = v15;
    v29 = v20;
    v30 = BYTE4(v19);
    v32 = 3;
    sub_1ABA98CE4();

    sub_1ABA7D598();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1ABBB39B8()
{
  result = qword_1EB4D4070;
  if (!qword_1EB4D4070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4070);
  }

  return result;
}

unint64_t sub_1ABBB3A0C()
{
  result = qword_1EB4D4078;
  if (!qword_1EB4D4078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4078);
  }

  return result;
}

uint64_t Neighbor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D4080, &qword_1ABF420C8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABBB39B8();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  LOBYTE(__src[0]) = 0;
  v6 = sub_1ABAE8B74();
  sub_1ABAA37F0(&type metadata for EntityIdentifier, __src, v7, v8, v6);
  v9 = v29[0];
  LOBYTE(v29[0]) = 1;
  v10 = sub_1ABF24E14();
  v12 = v11;
  v26 = v10;
  v27 = v9;
  LOBYTE(__src[0]) = 2;
  v13 = sub_1ABBB3D54();
  sub_1ABAA37F0(&type metadata for RelationDirection, __src, v14, v15, v13);
  LOBYTE(v9) = v29[0];
  v42 = 3;
  v16 = sub_1ABA9B278();
  sub_1ABAA37F0(&type metadata for EntityClass, &v42, v17, v18, v16);
  v19 = sub_1ABA7ABFC();
  v20(v19);
  v25 = v36;
  v21 = v38;
  v24 = v37;
  v22 = v39;
  v41 = v40;
  __src[0] = v27;
  __src[1] = v26;
  __src[2] = v12;
  LOBYTE(__src[3]) = v9;
  __src[4] = v36;
  __src[5] = v37;
  __src[6] = v38;
  __src[7] = v39;
  LOBYTE(__src[8]) = v40;
  memcpy(a2, __src, 0x41uLL);
  sub_1ABBB3DA8(__src, v29);
  sub_1ABA84B54(a1);
  v29[0] = v27;
  v29[1] = v26;
  v29[2] = v12;
  v30 = v9;
  v31 = v25;
  v32 = v24;
  v33 = v21;
  v34 = v22;
  v35 = v41;
  return sub_1ABBB3DE0(v29);
}

unint64_t sub_1ABBB3D54()
{
  result = qword_1EB4D4088;
  if (!qword_1EB4D4088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4088);
  }

  return result;
}

IntelligencePlatform::RelationDirection_optional __swiftcall RelationDirection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

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

  *v2 = v5;
  return result;
}

uint64_t RelationDirection.rawValue.getter()
{
  if (*v0)
  {
    return 0x6472617774756FLL;
  }

  else
  {
    return 0x647261776E69;
  }
}

unint64_t sub_1ABBB3EE4()
{
  result = qword_1EB4D4090;
  if (!qword_1EB4D4090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4090);
  }

  return result;
}

unint64_t sub_1ABBB3F3C()
{
  result = qword_1EB4D4098;
  if (!qword_1EB4D4098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4098);
  }

  return result;
}

unint64_t sub_1ABBB3F94()
{
  result = qword_1EB4D40A0;
  if (!qword_1EB4D40A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40A0);
  }

  return result;
}

unint64_t sub_1ABBB3FEC()
{
  result = qword_1EB4D40A8;
  if (!qword_1EB4D40A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40A8);
  }

  return result;
}

unint64_t sub_1ABBB4044()
{
  result = qword_1EB4D40B0;
  if (!qword_1EB4D40B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40B0);
  }

  return result;
}

unint64_t sub_1ABBB409C()
{
  result = qword_1EB4D40B8;
  if (!qword_1EB4D40B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40B8);
  }

  return result;
}

unint64_t sub_1ABBB4100()
{
  result = qword_1EB4D40C0;
  if (!qword_1EB4D40C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40C0);
  }

  return result;
}

uint64_t sub_1ABBB4178@<X0>(uint64_t *a1@<X8>)
{
  result = RelationDirection.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABBB4258(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 968))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBB4278(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 952) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 968) = v3;
  return result;
}

uint64_t sub_1ABBB43C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1ABBB4404(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RelationDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Neighbor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABBB4618(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x87)
  {
    if (a2 + 121 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 121) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 122;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7A;
  v5 = v6 - 122;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1ABBB46A0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 121 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 121) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x87)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x86)
  {
    v6 = ((a2 - 135) >> 8) + 1;
    *result = a2 + 121;
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
          *result = a2 + 121;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABBB477C()
{
  result = qword_1EB4D40C8;
  if (!qword_1EB4D40C8)
  {
    sub_1ABAE2850(&qword_1EB4D40D0, qword_1ABF42718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40C8);
  }

  return result;
}

unint64_t sub_1ABBB47E4()
{
  result = qword_1EB4D40D8;
  if (!qword_1EB4D40D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40D8);
  }

  return result;
}

unint64_t sub_1ABBB483C()
{
  result = qword_1EB4D40E0;
  if (!qword_1EB4D40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40E0);
  }

  return result;
}

unint64_t sub_1ABBB4894()
{
  result = qword_1EB4D40E8;
  if (!qword_1EB4D40E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40E8);
  }

  return result;
}

unint64_t sub_1ABBB48EC()
{
  result = qword_1EB4D40F0;
  if (!qword_1EB4D40F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40F0);
  }

  return result;
}

unint64_t sub_1ABBB4944()
{
  result = qword_1EB4CFFE0;
  if (!qword_1EB4CFFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFFE0);
  }

  return result;
}

unint64_t sub_1ABBB499C()
{
  result = qword_1EB4CFFE8;
  if (!qword_1EB4CFFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFFE8);
  }

  return result;
}

unint64_t sub_1ABBB49F0()
{
  result = qword_1EB4D40F8;
  if (!qword_1EB4D40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D40F8);
  }

  return result;
}

unint64_t sub_1ABBB4A44()
{
  result = qword_1EB4D4100;
  if (!qword_1EB4D4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4100);
  }

  return result;
}

unint64_t sub_1ABBB4A98()
{
  result = qword_1EB4D4108;
  if (!qword_1EB4D4108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4108);
  }

  return result;
}

unint64_t sub_1ABBB4AEC()
{
  result = qword_1EB4D4110;
  if (!qword_1EB4D4110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4110);
  }

  return result;
}

unint64_t sub_1ABBB4B40()
{
  result = qword_1EB4D4118;
  if (!qword_1EB4D4118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4118);
  }

  return result;
}

unint64_t sub_1ABBB4B94()
{
  result = qword_1EB4D4120;
  if (!qword_1EB4D4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4120);
  }

  return result;
}

unint64_t sub_1ABBB4BE8()
{
  result = qword_1EB4D4128;
  if (!qword_1EB4D4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4128);
  }

  return result;
}

unint64_t sub_1ABBB4C3C()
{
  result = qword_1EB4D4130;
  if (!qword_1EB4D4130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4130);
  }

  return result;
}

unint64_t sub_1ABBB4C90()
{
  result = qword_1EB4D4138;
  if (!qword_1EB4D4138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4138);
  }

  return result;
}

_BYTE *sub_1ABBB4CE4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABBB4DC0()
{
  result = qword_1EB4CF2C8;
  if (!qword_1EB4CF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF2C8);
  }

  return result;
}

uint64_t sub_1ABBB4E34(uint64_t a1, unsigned __int8 a2)
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB4ED8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1ABA8BAB8();
      sub_1ABA89B1C();
      break;
    case 6:
      sub_1ABA88F98();
      break;
    case 7:
      sub_1ABA89B1C();
      break;
    case 8:
      sub_1ABA8E7F0();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB5014()
{
  sub_1ABBC7264();
  switch(v0)
  {
    case 1:
    case 5:
      sub_1ABA7AC9C();
      break;
    case 2:
      sub_1ABA9E680();
      break;
    case 3:
      sub_1ABAB65B4();
      break;
    case 4:
      sub_1ABA9E530();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB50B0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1ABAA0868();
      break;
    case 3:
      sub_1ABA8E7F0();
      break;
    case 4:
      sub_1ABA8BAB8();
      sub_1ABA89B1C();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB51B0()
{
  Features.FeatureFlag.feature.getter();
  v0 = sub_1ABF24AE4();
  sub_1ABAB52B8(v0, v1);
}

uint64_t sub_1ABBB5200(uint64_t a1, char a2)
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB5278(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      sub_1ABA948F4();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB533C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 5:
      sub_1ABA88F98();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB543C(uint64_t a1, char a2)
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB54BC()
{
  sub_1ABAB68BC();
  switch(v0)
  {
    case 1:
      sub_1ABA9F864();
      break;
    case 2:
      sub_1ABAA12AC();
      sub_1ABA9ED18();
      break;
    case 3:
      sub_1ABA8CC50();
      sub_1ABA7AC9C();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB5538(uint64_t a1, unsigned __int8 a2)
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB55E8(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1ABA9E08C();
  }

  else
  {
    sub_1ABA8E7F0();
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB5664(uint64_t a1, char a2)
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB56DC(uint64_t a1, unsigned __int8 a2)
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB5754()
{
  sub_1ABA8A1AC();
  switch(v0)
  {
    case 2:
      sub_1ABAA0EB0();
      sub_1ABAA0868();
      break;
    case 3:
      sub_1ABAB5CA4();
      break;
    case 4:
      sub_1ABAB108C();
      break;
    case 5:
      sub_1ABA8BF8C();
      break;
    case 6:
      sub_1ABAA02FC();
      break;
    case 7:
      sub_1ABA948F4();
      break;
    case 8:
      sub_1ABA90CB4();
      break;
    case 9:
      sub_1ABBC723C();
      break;
    case 10:
      sub_1ABBC7250();
      break;
    case 11:
      sub_1ABAA1EFC();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB5848()
{
  sub_1ABA88EC4();
  sub_1ABA88F98();
  sub_1ABF23D34();
}

uint64_t sub_1ABBB58F8()
{
  sub_1ABA8BAB8();
  sub_1ABF23D34();
}

uint64_t sub_1ABBB5978()
{
  sub_1ABAB68BC();
  switch(v0)
  {
    case 1:
      sub_1ABA9F864();
      break;
    case 2:
      sub_1ABAA12AC();
      sub_1ABA9ED18();
      break;
    case 3:
      sub_1ABA7AC9C();
      goto LABEL_7;
    case 4:
      sub_1ABA8E7F0();
      break;
    case 5:
      sub_1ABA8BAB8();
      sub_1ABA89B1C();
      break;
    case 6:
LABEL_7:
      sub_1ABA8CC50();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB5A2C(uint64_t a1, char a2)
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB5AB4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
      sub_1ABA89B1C();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB5B70()
{
  sub_1ABA88EC4();
  sub_1ABF23D34();
}

uint64_t sub_1ABBB5C6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  sub_1ABAB52B8(v3, v4);
}

uint64_t sub_1ABBB5CBC()
{
  sub_1ABA8071C();
  sub_1ABF23D34();
}

uint64_t sub_1ABBB5D34(uint64_t a1, char a2)
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB5D9C()
{
  sub_1ABA88EC4();
  switch(v0)
  {
    case 1:
      sub_1ABAA0868();
      break;
    case 3:
    case 5:
      sub_1ABA89B1C();
      break;
    case 4:
      sub_1ABA8CC50();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB5E8C(uint64_t a1, char a2)
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB5EF4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1ABAA0868();
      break;
    case 3:
    case 6:
      sub_1ABA89B1C();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB602C(uint64_t a1, char a2)
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB60E0()
{
  sub_1ABA88EC4();
  switch(v0)
  {
    case 1:
      sub_1ABAA0EB0();
      sub_1ABAA0868();
      break;
    case 2:
      sub_1ABAB5CA4();
      break;
    case 3:
      sub_1ABAB108C();
      break;
    case 4:
      sub_1ABA8BF8C();
      break;
    case 5:
      sub_1ABAA02FC();
      break;
    case 6:
      sub_1ABA948F4();
      break;
    case 7:
      sub_1ABA90CB4();
      break;
    case 8:
      sub_1ABBC723C();
      break;
    case 9:
      sub_1ABBC7250();
      break;
    case 10:
      sub_1ABAA1EFC();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB61B0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1ABA88F98();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB6268(uint64_t a1, char a2)
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB62B8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 7:
      sub_1ABA89B1C();
      break;
    case 8:
      break;
    default:
      sub_1ABA7E59C();
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB63D4()
{
  sub_1ABA9F794();
  switch(v0)
  {
    case 1:
      sub_1ABAA0868();
      break;
    case 3:
      sub_1ABA89B1C();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB649C(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_1ABA9F794();
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB6518(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1ABAA0EB0();
      break;
    case 2:
      sub_1ABAB5CA4();
      break;
    case 3:
      sub_1ABAB108C();
      break;
    case 4:
      sub_1ABA8BF8C();
      break;
    case 5:
      sub_1ABAA02FC();
      break;
    case 6:
      sub_1ABA948F4();
      break;
    case 7:
      sub_1ABA90CB4();
      break;
    case 8:
      sub_1ABBC723C();
      break;
    case 9:
      sub_1ABBC7250();
      break;
    case 10:
      sub_1ABAA1EFC();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB65F0(uint64_t a1, unsigned __int8 a2)
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB66A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a2);
  sub_1ABAB52B8(v3, v4);
}

uint64_t sub_1ABBB66E8(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1ABA9E08C();
  }

  else
  {
    sub_1ABA89B1C();
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB677C(uint64_t a1, char a2)
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB6864()
{
  sub_1ABBC7264();
  switch(v0)
  {
    case 1:
      sub_1ABA9E680();
      break;
    case 2:
      sub_1ABAB65B4();
      break;
    case 3:
      sub_1ABA9E530();
      break;
    case 4:
      sub_1ABA7AC9C();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

uint64_t sub_1ABBB6914(uint64_t a1, char a2)
{
  sub_1ABF23D34();
}

uint64_t sub_1ABBB69C8()
{
  sub_1ABA8A1AC();
  switch(v0)
  {
    case 1:
    case 3:
      sub_1ABA8BAB8();
      sub_1ABA89B1C();
      break;
    case 2:
      sub_1ABA8E7F0();
      break;
    default:
      break;
  }

  sub_1ABF23D34();
}

char *sub_1ABBB6A70(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A2B4();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABBC2E70(v6);
  *a1 = v2;
  return result;
}

void EntityResolutionError.description.getter()
{
  switch(*(v0 + 16))
  {
    case 1:
LABEL_4:
      sub_1ABAA44E0();
      return;
    case 2:
      sub_1ABA9936C();
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD00000000000003ALL, 0x80000001ABF89C50);
      goto LABEL_10;
    case 3:
LABEL_6:
      sub_1ABA9E43C();
      sub_1ABA7F0D0();
      return;
    case 4:
    case 6:
    case 7:
    case 8:
      sub_1ABA9936C();
      sub_1ABF24AB4();

      sub_1ABAA401C();
LABEL_10:
      v2 = sub_1ABAB50D4();
      goto LABEL_11;
    case 5:
      sub_1ABA9936C();
      sub_1ABF24AB4();

      v4 = sub_1ABAB50D4();
      MEMORY[0x1AC5A9410](v4);
      sub_1ABA7F0D0();
      v2 = sub_1ABA9E43C();
      goto LABEL_11;
    case 9:
      switch(*v0)
      {
        case 1:
          goto LABEL_6;
        case 4:
          sub_1ABA7F0D0();
          break;
        default:
          goto LABEL_4;
      }

      return;
    default:
      sub_1ABA9936C();
      sub_1ABF24AB4();

      sub_1ABAA401C();
      v1 = sub_1ABAB50D4();
      MEMORY[0x1AC5A9410](v1);
      v2 = 46;
      v3 = 0xE100000000000000;
LABEL_11:
      MEMORY[0x1AC5A9410](v2, v3);
      return;
  }
}

IntelligencePlatform::PreprocessingStep_optional __swiftcall PreprocessingStep.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void PreprocessingStep.rawValue.getter()
{
  switch(*v0)
  {
    case 3:
    case 6:
      sub_1ABA7F0D0();
      break;
    default:
      return;
  }
}

void sub_1ABBB6F04(void *a1@<X8>)
{
  PreprocessingStep.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t static CandidateConstraint.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 34);
  v9 = *a2;
  v8 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = *(a2 + 16);
  v13 = *(a2 + 34);
  v102[0] = *a1;
  v102[1] = v2;
  v102[2] = v5;
  v102[3] = v4;
  v103 = v6;
  v104 = v7;
  v105 = v9;
  v106 = v8;
  v107 = v11;
  v108 = v10;
  v109 = v12;
  v110 = v13;
  switch(v7)
  {
    case 1:
      if (v13 != 1)
      {
        goto LABEL_19;
      }

      v65 = v6;
      v92 = sub_1ABB4F410();
      v66 = sub_1ABA7C054();
      sub_1ABB37294(v66, v67, v68, v69, v12, 1);
      v20 = sub_1ABA809A0();
      v24 = v65;
      v25 = 1;
      goto LABEL_18;
    case 2:
      if (v13 != 2)
      {
        goto LABEL_19;
      }

      v46 = v6;
      v92 = sub_1ABB4F410();
      v47 = sub_1ABA7C054();
      sub_1ABB37294(v47, v48, v49, v50, v12, 2);
      v20 = sub_1ABA809A0();
      v24 = v46;
      v25 = 2;
      goto LABEL_18;
    case 3:
      if (v13 != 3)
      {
        goto LABEL_19;
      }

      v93 = *(v3 + 56);
      v91 = *(v3 + 72);
      v90 = *(v3 + 88);
      v89 = *(v3 + 90);
      v51 = *(v3 + 50);
      v52 = *(v3 + 48);
      v53 = *(v9 + 48);
      v54 = *(v9 + 50);
      v87 = *(v9 + 72);
      v88 = *(v9 + 56);
      v30 = *(v9 + 88);
      v86 = *(v9 + 90);
      v55 = *(v3 + 32);
      v98 = *(v3 + 16);
      v99 = v55;
      v100 = v52;
      v101 = v51;
      v56 = *(v9 + 32);
      v94 = *(v9 + 16);
      v95 = v56;
      v96 = v53;
      v97 = v54;
      v57 = sub_1ABA7C054();
      v59 = v58;
      sub_1ABB37294(v57, v60, v61, v62, v12, v63);
      v40 = sub_1ABA809A0();
      v44 = v59;
      v45 = 3;
      goto LABEL_14;
    case 4:
      if (v13 != 4)
      {
        goto LABEL_19;
      }

      v93 = *(v3 + 56);
      v91 = *(v3 + 72);
      v90 = *(v3 + 88);
      v89 = *(v3 + 90);
      v26 = *(v3 + 50);
      v27 = *(v3 + 48);
      v28 = *(v9 + 48);
      v29 = *(v9 + 50);
      v87 = *(v9 + 72);
      v88 = *(v9 + 56);
      v30 = *(v9 + 88);
      v86 = *(v9 + 90);
      v31 = *(v3 + 32);
      v98 = *(v3 + 16);
      v99 = v31;
      v100 = v27;
      v101 = v26;
      v32 = *(v9 + 32);
      v94 = *(v9 + 16);
      v95 = v32;
      v96 = v28;
      v97 = v29;
      v33 = sub_1ABA7C054();
      v35 = v34;
      sub_1ABB37294(v33, v36, v37, v38, v12, v39);
      v40 = sub_1ABA809A0();
      v44 = v35;
      v45 = 4;
LABEL_14:
      sub_1ABB37294(v40, v41, v42, v43, v44, v45);
      if ((static CandidateConstraint.== infix(_:_:)(&v98, &v94) & 1) == 0)
      {
        goto LABEL_20;
      }

      v98 = v93;
      v99 = v91;
      v100 = v90;
      v101 = v89;
      v94 = v88;
      v95 = v87;
      v96 = v30;
      v97 = v86;
      v64 = static CandidateConstraint.== infix(_:_:)(&v98, &v94);
      sub_1ABA925A4(v102, &qword_1EB4D4140, &qword_1ABF42A30);
      return v64 & 1;
    default:
      if (v13)
      {
LABEL_19:
        v71 = sub_1ABA7C054();
        v73 = v72;
        sub_1ABB37294(v71, v74, v75, v76, v12, v77);
        v78 = sub_1ABA809A0();
        sub_1ABB37294(v78, v79, v80, v81, v73, v7);
LABEL_20:
        sub_1ABA925A4(v102, &qword_1EB4D4140, &qword_1ABF42A30);
        v64 = 0;
        return v64 & 1;
      }

      v14 = v6;
      if (v3 == v9 && v2 == v8)
      {
        sub_1ABB37294(v3, v2, v11, v10, v12, 0);
        v82 = sub_1ABA809A0();
        sub_1ABB37294(v82, v83, v84, v85, v14, 0);
        sub_1ABA925A4(v102, &qword_1EB4D4140, &qword_1ABF42A30);
        v64 = 1;
        return v64 & 1;
      }

      v92 = sub_1ABF25054();
      v16 = sub_1ABA7C054();
      sub_1ABB37294(v16, v17, v18, v19, v12, 0);
      v20 = sub_1ABA809A0();
      v24 = v14;
      v25 = 0;
LABEL_18:
      sub_1ABB37294(v20, v21, v22, v23, v24, v25);
      sub_1ABA925A4(v102, &qword_1EB4D4140, &qword_1ABF42A30);
      return v92 & 1;
  }
}

uint64_t sub_1ABBB7380(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6964657250736168 && a2 == 0xEC00000065746163;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6564756C637865 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746573627573 && a2 == 0xE600000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 6581857 && a2 == 0xE300000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 29295 && a2 == 0xE200000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

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

uint64_t sub_1ABBB7518(char a1)
{
  result = 0x6964657250736168;
  switch(a1)
  {
    case 1:
      result = 0x6564756C637865;
      break;
    case 2:
      result = 0x746573627573;
      break;
    case 3:
      result = 6581857;
      break;
    case 4:
      result = 29295;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBB75A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABBB7640(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1ABA8A940(12383, 0xE200000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABA8A940(12639, 0xE200000000000000);

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

uint64_t sub_1ABBB76E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABBB7778(uint64_t a1)
{
  v2 = sub_1ABBC2B8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBB77B4(uint64_t a1)
{
  v2 = sub_1ABBC2B8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBB7810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBB7380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBB7838(uint64_t a1)
{
  v2 = sub_1ABBC2A90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBB7874(uint64_t a1)
{
  v2 = sub_1ABBC2A90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBB78B4(uint64_t a1)
{
  v2 = sub_1ABBC2CB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBB78F0(uint64_t a1)
{
  v2 = sub_1ABBC2CB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBB7930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBB75A4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABBB795C(uint64_t a1)
{
  v2 = sub_1ABBC2D0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBB7998(uint64_t a1)
{
  v2 = sub_1ABBC2D0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBB79D4(uint64_t a1)
{
  v2 = sub_1ABBC2AE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBB7A10(uint64_t a1)
{
  v2 = sub_1ABBC2AE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBB7A4C(uint64_t a1)
{
  v2 = sub_1ABBC2BE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBB7A88(uint64_t a1)
{
  v2 = sub_1ABBC2BE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CandidateConstraint.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  v77 = v21;
  v24 = v23;
  v76.n128_u64[0] = sub_1ABAD219C(&qword_1EB4D4148, &qword_1ABF42A38);
  sub_1ABA7BB64();
  v75.n128_u64[0] = v25;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7FBE0();
  v74.n128_u64[0] = v27;
  v73.n128_u64[0] = sub_1ABAD219C(&qword_1EB4D4150, &qword_1ABF42A40);
  sub_1ABA7BB64();
  v72.n128_u64[0] = v28;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7FBE0();
  v71.n128_u64[0] = v30;
  v70.n128_u64[0] = sub_1ABAD219C(&qword_1EB4D4158, &qword_1ABF42A48);
  sub_1ABA7BB64();
  v69 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA7FBE0();
  v68 = v33;
  v67 = sub_1ABAD219C(&qword_1EB4D4160, &qword_1ABF42A50);
  sub_1ABA7BB64();
  v66 = v34;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA8176C();
  v65 = sub_1ABAD219C(&qword_1EB4D4168, &qword_1ABF42A58);
  sub_1ABA7BB64();
  v64 = v36;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v60 - v38;
  sub_1ABAD219C(&qword_1EB4D4170, &unk_1ABF42A60);
  sub_1ABA7BB64();
  v78 = v40;
  v79 = v41;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA7BCE0();
  v43 = *v20;
  v63 = *(v20 + 8);
  v44 = *(v20 + 24);
  v62 = *(v20 + 16);
  v61 = v44;
  v82 = *(v20 + 32);
  v45 = *(v20 + 34);
  sub_1ABA88DCC(v24, v24[3]);
  sub_1ABBC2A90();
  sub_1ABAA0704();
  sub_1ABF252E4();
  switch(v45)
  {
    case 1:
      sub_1ABA8BCB4();
      sub_1ABBC2CB8();
      sub_1ABA9FE88(&type metadata for CandidateConstraint.ExcludeCodingKeys, v80);
      v80[0] = v43;
      sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
      sub_1ABBC2C34();
      sub_1ABA9F594();
      goto LABEL_12;
    case 2:
      LOBYTE(v80[0]) = 2;
      sub_1ABBC2BE0();
      sub_1ABA9FE88(&type metadata for CandidateConstraint.SubsetCodingKeys, v80);
      v80[0] = v43;
      sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
      sub_1ABBC2C34();
      sub_1ABA9F594();
LABEL_12:
      v58 = sub_1ABA8A354();
      v59(v58);
      v57 = *(v79 + 8);
      v55 = v22;
      v56 = v45;
      goto LABEL_13;
    case 3:
      v74 = sub_1ABAA0A78();
      LOBYTE(v80[0]) = 3;
      sub_1ABBC2B8C();
      v53 = v43[1];
      v75 = v43[2];
      v76 = v53;
      v49 = v71.n128_u64[0];
      sub_1ABA8AEFC(&type metadata for CandidateConstraint.AndCodingKeys, v80);
      sub_1ABA88D1C(v76, v75);
      sub_1ABA97F74();
      v50 = v73.n128_u64[0];
      sub_1ABAA1F14();
      v54 = v77;
      sub_1ABF24F84();
      if (!v54)
      {
        sub_1ABA8A4D8(v74, v70);
        sub_1ABA97F74();
        sub_1ABAA1F14();
        sub_1ABF24F84();
      }

      v52 = v72.n128_u64[0];
      goto LABEL_10;
    case 4:
      v71 = sub_1ABAA0A78();
      LOBYTE(v80[0]) = 4;
      sub_1ABBC2AE4();
      v48 = v43[1];
      v72 = v43[2];
      v73 = v48;
      v49 = v74.n128_u64[0];
      sub_1ABA8AEFC(&type metadata for CandidateConstraint.OrCodingKeys, v80);
      sub_1ABA88D1C(v73, v72);
      sub_1ABA97F74();
      v50 = v76.n128_u64[0];
      sub_1ABAA1F14();
      v51 = v77;
      sub_1ABF24F84();
      if (!v51)
      {
        sub_1ABA8A4D8(v71, v70);
        sub_1ABA97F74();
        sub_1ABAA1F14();
        sub_1ABF24F84();
      }

      v52 = v75.n128_u64[0];
LABEL_10:
      (*(v52 + 8))(v49, v50);
      v55 = sub_1ABA8A354();
LABEL_13:
      v57(v55, v56);
      break;
    default:
      LOBYTE(v80[0]) = 0;
      sub_1ABBC2D0C();
      v46 = v78;
      sub_1ABF24EC4();
      v80[0] = v43;
      v80[1] = v63;
      v80[2] = v62;
      v80[3] = v61;
      v81 = v82;
      sub_1ABAA68CC();
      v47 = v65;
      sub_1ABF24F84();
      (*(v64 + 8))(v39, v47);
      (*(v79 + 8))(v22, v46);
      break;
  }

  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CandidateConstraint.hash(into:)(uint64_t a1)
{
  switch(*(v1 + 34))
  {
    case 1:
      v5 = 1;
      goto LABEL_10;
    case 2:
      v5 = 2;
LABEL_10:
      MEMORY[0x1AC5AA8A0](v5);
      sub_1ABA7E378();

      sub_1ABB4EC5C();
      return;
    case 3:
      v3 = sub_1ABA97F4C();
      v4 = 3;
      goto LABEL_8;
    case 4:
      v3 = sub_1ABA97F4C();
      v4 = 4;
LABEL_8:
      MEMORY[0x1AC5AA8A0](v4, v3);
      CandidateConstraint.hash(into:)(a1);
      CandidateConstraint.hash(into:)(a1);
      break;
    default:
      MEMORY[0x1AC5AA8A0](0);
      sub_1ABA7E378();

      sub_1ABF23D34();
      break;
  }
}

uint64_t CandidateConstraint.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 34);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_1ABA7AB5C();
  CandidateConstraint.hash(into:)(v5);
  return sub_1ABF25294();
}

void CandidateConstraint.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v83 = v3;
  v76 = sub_1ABAD219C(&qword_1EB4D41B8, &qword_1ABF42A70);
  sub_1ABA7BB64();
  v79 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7FBE0();
  v82 = v6;
  sub_1ABAD219C(&qword_1EB4D41C0, &qword_1ABF42A78);
  sub_1ABA7BB64();
  v77 = v8;
  v78 = v7;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v81 = v10;
  sub_1ABAD219C(&qword_1EB4D41C8, &qword_1ABF42A80);
  sub_1ABA7BB64();
  v74 = v12;
  v75 = v11;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7FBE0();
  v80 = v14;
  sub_1ABAD219C(&qword_1EB4D41D0, &qword_1ABF42A88);
  sub_1ABA7BB64();
  v72 = v16;
  v73 = v15;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7BCE0();
  v18 = sub_1ABAD219C(&qword_1EB4D41D8, &qword_1ABF42A90);
  sub_1ABA7BB64();
  v71 = v19;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  v23 = sub_1ABAD219C(&qword_1EB4D41E0, &unk_1ABF42A98);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v66 - v25;
  v27 = v2[3];
  v84 = v2;
  sub_1ABA88DCC(v2, v27);
  sub_1ABBC2A90();
  sub_1ABF252C4();
  if (v0)
  {
    goto LABEL_8;
  }

  v69 = v22;
  v68 = v18;
  v70 = v23;
  v28 = v83;
  sub_1ABF24EA4();
  sub_1ABAD4EA4();
  if (v30 == v31 >> 1)
  {
LABEL_7:
    v37 = sub_1ABF24B44();
    swift_allocError();
    v39 = v38;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v39 = &type metadata for CandidateConstraint;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1ABAA1BE0();
    v40 = sub_1ABA8C744();
    v41(v40);
LABEL_8:
    v42 = v84;
LABEL_9:
    sub_1ABA84B54(v42);
    sub_1ABA7BC90();
    return;
  }

  if (v30 < (v31 >> 1))
  {
    v32 = 0;
    v67 = *(v29 + v30);
    sub_1ABAD4E90();
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 == v36 >> 1)
    {
      switch(v67)
      {
        case 1:
          sub_1ABA8BCB4();
          sub_1ABBC2CB8();
          v32 = v70;
          sub_1ABF24D94();
          sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
          sub_1ABBC358C();
          sub_1ABF24E64();
          swift_unknownObjectRelease();
          v57 = sub_1ABA891F8();
          v58(v57);
          sub_1ABAA1BE0();
          v47 = v26;
          goto LABEL_14;
        case 2:
          LOBYTE(v85[0]) = 2;
          sub_1ABBC2BE0();
          sub_1ABA9A390(&type metadata for CandidateConstraint.SubsetCodingKeys, v85);
          sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
          sub_1ABBC358C();
          sub_1ABF24E64();
          swift_unknownObjectRelease();
          v44 = sub_1ABA7E5B0();
          v45(v44);
          sub_1ABAA1BE0();
          v47 = v26;
LABEL_14:
          v46(v47, v32);
          sub_1ABA96C54();
          v42 = v84;
          v53 = v85[0];
          goto LABEL_16;
        case 3:
          LOBYTE(v85[0]) = 3;
          sub_1ABBC2B8C();
          sub_1ABA9A390(&type metadata for CandidateConstraint.AndCodingKeys, v85);
          sub_1ABA8913C();
          v53 = swift_allocObject();
          LOBYTE(v85[0]) = 0;
          sub_1ABBC3538();
          sub_1ABA8861C();
          sub_1ABF24E64();
          sub_1ABA8BCB4();
          sub_1ABA8861C();
          sub_1ABF24E64();
          swift_unknownObjectRelease();
          v62 = sub_1ABA8C744();
          v63(v62);
          sub_1ABAA1BE0();
          v64 = sub_1ABA7D0F8();
          v65(v64);
          sub_1ABA96C54();
          goto LABEL_15;
        case 4:
          LOBYTE(v85[0]) = 4;
          sub_1ABBC2AE4();
          sub_1ABA9A390(&type metadata for CandidateConstraint.OrCodingKeys, v85);
          v81 = v26;
          sub_1ABA8913C();
          v43 = swift_allocObject();
          LOBYTE(v85[0]) = 0;
          sub_1ABBC3538();
          sub_1ABA8861C();
          sub_1ABF24E64();
          sub_1ABA8BCB4();
          sub_1ABA8861C();
          sub_1ABF24E64();
          swift_unknownObjectRelease();
          v59 = sub_1ABA8EF78();
          v60(v59);
          sub_1ABAA1BE0();
          v61(v81, 0);
          sub_1ABA96C54();
          v42 = v84;
          v53 = v43;
          goto LABEL_16;
        default:
          LOBYTE(v85[0]) = 0;
          sub_1ABBC2D0C();
          sub_1ABA9A390(&type metadata for CandidateConstraint.HasPredicateCodingKeys, v85);
          sub_1ABAA6FE4();
          sub_1ABA8AB00();
          sub_1ABF24E64();
          swift_unknownObjectRelease();
          v48 = sub_1ABA7E5B0();
          v49(v48);
          v50 = sub_1ABA7D0F8();
          v51(v50);
          v53 = v85[0];
          v52 = v85[1];
          v54 = v85[2];
          v55 = v85[3];
          v56 = v86;
LABEL_15:
          v42 = v84;
LABEL_16:
          *v28 = v53;
          *(v28 + 8) = v52;
          *(v28 + 16) = v54;
          *(v28 + 24) = v55;
          *(v28 + 32) = v56;
          *(v28 + 34) = v67;
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1ABBB8D80(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 34);
  v4 = v1[1];
  v7 = *v1;
  v8 = v4;
  v9 = v2;
  v10 = v3;
  sub_1ABF25234();
  CandidateConstraint.hash(into:)(v6);
  return sub_1ABF25294();
}

uint64_t EntitySourceID.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  result = sub_1ABF23D34();
  if (v2)
  {

    return sub_1ABF23D34();
  }

  return result;
}

uint64_t static EntitySourceID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1ABF25054(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1ABF25054() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1ABBB8EDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABBB8F9C(char a1)
{
  if (a1)
  {
    return 0x656372756F73;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1ABBB8FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBB8EDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBB8FFC(uint64_t a1)
{
  v2 = sub_1ABBC3610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBB9038(uint64_t a1)
{
  v2 = sub_1ABBC3610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntitySourceID.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = sub_1ABAD219C(&qword_1EB4D41F8, &qword_1ABF42AA8);
  sub_1ABA7BB64();
  v7 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  v5 = sub_1ABA8A354();
  sub_1ABA88DCC(v5, v6);
  sub_1ABBC3610();
  sub_1ABA82E0C();
  sub_1ABF252E4();
  sub_1ABA7BF34();
  sub_1ABF24F34();
  if (!v0)
  {
    sub_1ABA8E804();
    sub_1ABA7BF34();
    sub_1ABF24ED4();
  }

  (*(v7 + 8))(v1, v2);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

uint64_t EntitySourceID.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_1ABA7AB5C();
  sub_1ABF23D34();
  if (v1)
  {
    sub_1ABF23D34();
  }

  return sub_1ABF25294();
}

void EntitySourceID.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA7BCA8();
  v25 = v24;
  v27 = v26;
  v28 = sub_1ABAD219C(&qword_1EB4D4208, &qword_1ABF42AB0);
  sub_1ABA7BB64();
  v30 = v29;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABBC3610();
  sub_1ABAA0704();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (v22)
  {
    sub_1ABA84B54(v25);
  }

  else
  {
    v32 = sub_1ABF24E14();
    v34 = v33;
    sub_1ABA8E804();
    v35 = sub_1ABF24DB4();
    v37 = v36;
    v38 = v35;
    (*(v30 + 8))(v23, v28);
    *v27 = v32;
    v27[1] = v34;
    v27[2] = v38;
    v27[3] = v37;

    sub_1ABA84B54(v25);
  }

  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

uint64_t sub_1ABBB93F4(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = *(v1 + 1);
  sub_1ABF25234();
  EntitySourceID.hash(into:)(v4);
  return sub_1ABF25294();
}

unint64_t EntitySourceID.description.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  sub_1ABF24AB4();

  sub_1ABA8071C();
  v3 = sub_1ABA7E378();
  MEMORY[0x1AC5A9410](v3);
  MEMORY[0x1AC5A9410](0x3A656372756F7320, 0xE800000000000000);
  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 4271950;
  }

  if (v1)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x1AC5A9410](v4, v5);

  return 0xD000000000000011;
}

uint64_t static EntityResolutionRequest.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v132 = a1[4];
  v6 = a1[5];
  v129 = *(a1 + 90);
  v130 = *(a1 + 44);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a2 + 56);
  v12 = *(a2 + 64);
  v14 = *(a2 + 72);
  v15 = *(a2 + 90);
  v16 = *(a2 + 88);
  v17 = *(a2 + 96);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v127 = *(a2 + 80);
    v128 = a1[7];
    v123 = a1[12];
    v124 = a1[8];
    *&v122 = *(a2 + 112);
    *(&v122 + 1) = a1[14];
    v120 = *(a2 + 104);
    v121 = a1[13];
    v125 = a1[9];
    v126 = a1[10];
    if (*a1 != *a2 || v3 != v7)
    {
      v116 = *(a2 + 32);
      v118 = *(a2 + 96);
      v19 = *(a2 + 56);
      v20 = *(a2 + 64);
      v21 = *(a2 + 72);
      v114 = *(a2 + 24);
      v22 = a1[5];
      v23 = *(a2 + 40);
      v24 = *(a2 + 90);
      v25 = *(a2 + 88);
      v26 = a1[3];
      v27 = sub_1ABF25054();
      v5 = v26;
      v16 = v25;
      v15 = v24;
      v11 = v23;
      v6 = v22;
      v9 = v114;
      v14 = v21;
      v12 = v20;
      v13 = v19;
      v10 = v116;
      v17 = v118;
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v127 = *(a2 + 80);
    v128 = a1[7];
    v123 = a1[12];
    v124 = a1[8];
    *&v122 = *(a2 + 112);
    *(&v122 + 1) = a1[14];
    v120 = *(a2 + 104);
    v121 = a1[13];
    v125 = a1[9];
    v126 = a1[10];
    if (v7)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }

    v28 = sub_1ABA8C744();
    v30 = v29;
    v32 = v31;
    v113 = v12;
    v33 = v13;
    v34 = v15;
    v36 = v35;
    v37 = v9;
    v38 = v17;
    v40 = v39;
    v42 = sub_1ABB49178(v28, v41);
    v5 = v40;
    v17 = v38;
    v9 = v37;
    v16 = v36;
    v15 = v34;
    v13 = v33;
    v12 = v113;
    v6 = v32;
    v14 = v30;
    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v115 = v16;
    v117 = v14;
    v119 = v6;

    v44 = sub_1ABB49340(v43, v9);

    v6 = v119;
    if ((v44 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v115 = v16;
    v117 = v14;
    if (v9)
    {
      return 0;
    }
  }

  v45 = v132 == v10 && v6 == v11;
  if (!v45 && (sub_1ABF25054() & 1) == 0 || (sub_1ABACFAA8() & 1) == 0)
  {
    return 0;
  }

  v46 = v12;
  v47 = v130 | (v129 << 16);
  v48 = v115 | (v15 << 16);
  if (BYTE2(v47) == 255)
  {
    v49 = v130 | (v129 << 16);
    sub_1ABBAE7B0(v128, v124, v125, v126, v47);
    sub_1ABA9FB30();
    sub_1ABBAE7B0(v50, v51, v52, v53, v54);
    if (BYTE2(v48) == 255)
    {
      v55 = sub_1ABAA4954();
      sub_1ABB37314(v55, v56, v57, v58, v49);
      goto LABEL_35;
    }

LABEL_31:
    v72 = sub_1ABAA4954();
    sub_1ABB37314(v72, v73, v74, v75, v49);
    sub_1ABA9EAA8();
    sub_1ABB37314(v76, v77, v78, v79, v80);
    return 0;
  }

  v133 = (v130 | (v129 << 16)) >> 16;
  v137[0] = v128;
  v137[1] = v124;
  v137[2] = v125;
  v137[3] = v126;
  v138 = v130;
  v139 = v133;
  if (BYTE2(v48) == 255)
  {
    v59 = v130 | (v129 << 16);
    sub_1ABBAE7B0(v128, v124, v125, v126, v47);
    sub_1ABA9FB30();
    sub_1ABBAE7B0(v60, v61, v62, v63, v115 | (v15 << 16));
    v64 = sub_1ABAA4954();
    sub_1ABBAE7B0(v64, v65, v66, v67, v59);
    v68 = sub_1ABAA4954();
    v49 = v59;
    sub_1ABB37328(v68, v69, v70, v71, v59, v133);
    goto LABEL_31;
  }

  v134[0] = v13;
  v134[1] = v46;
  v134[2] = v117;
  v134[3] = v127;
  v135 = v115;
  v136 = (v115 | (v15 << 16)) >> 16;
  sub_1ABA96C48();
  sub_1ABBAE7B0(v82, v83, v84, v85, v86);
  sub_1ABA894F8();
  sub_1ABBAE7B0(v87, v88, v89, v90, v91);
  v92 = sub_1ABA82794();
  sub_1ABBAE7B0(v92, v93, v94, v95, v96);
  v131 = static CandidateConstraint.== infix(_:_:)(v137, v134);
  sub_1ABA894F8();
  sub_1ABB37328(v97, v98, v99, v100, v101, SBYTE2(v48));
  v102 = sub_1ABA82794();
  sub_1ABB37328(v102, v103, v104, v105, v106, v133);
  v107 = sub_1ABA82794();
  sub_1ABB37314(v107, v108, v109, v110, v111);
  if ((v131 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  if (!v123)
  {
    if (!v17)
    {
      goto LABEL_40;
    }

    return 0;
  }

  if (!v17 || (sub_1ABB490A0(v123, v17) & 1) == 0)
  {
    return 0;
  }

LABEL_40:
  result = v122 == 0;
  if (*(&v122 + 1) && v122)
  {
    if (v121 == v120 && *(&v122 + 1) == v122)
    {
      return 1;
    }

    else
    {

      return sub_1ABF25054();
    }
  }

  return result;
}