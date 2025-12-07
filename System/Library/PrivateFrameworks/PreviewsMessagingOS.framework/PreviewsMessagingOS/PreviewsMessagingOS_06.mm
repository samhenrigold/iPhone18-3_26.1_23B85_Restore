uint64_t sub_25F46E5B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25F46E60C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F46E6BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F46E704(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F46E7F8()
{
  result = qword_27FD6F6A0;
  if (!qword_27FD6F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F6A0);
  }

  return result;
}

unint64_t sub_25F46E850()
{
  result = qword_27FD6F6A8;
  if (!qword_27FD6F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F6A8);
  }

  return result;
}

unint64_t sub_25F46E8A8()
{
  result = qword_27FD6F6B0;
  if (!qword_27FD6F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F6B0);
  }

  return result;
}

unint64_t sub_25F46E930()
{
  result = qword_27FD6F6C8;
  if (!qword_27FD6F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F6C8);
  }

  return result;
}

unint64_t sub_25F46E988()
{
  result = qword_27FD6F6D0;
  if (!qword_27FD6F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F6D0);
  }

  return result;
}

uint64_t sub_25F46EA0C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_25F46EA64()
{
  result = qword_27FD6F6E8;
  if (!qword_27FD6F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F6E8);
  }

  return result;
}

unint64_t sub_25F46EABC()
{
  result = qword_27FD6F6F0;
  if (!qword_27FD6F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F6F0);
  }

  return result;
}

unint64_t sub_25F46EB14()
{
  result = qword_27FD6F6F8;
  if (!qword_27FD6F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F6F8);
  }

  return result;
}

unint64_t sub_25F46EB68()
{
  result = qword_27FD6F700;
  if (!qword_27FD6F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F700);
  }

  return result;
}

unint64_t sub_25F46EBBC(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F46EC08(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F46EC54(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F46ECA0(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F46ED88(char a1, char a2)
{
  if (*&aUuid_2[8 * a1] == *&aUuid_2[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25F4A3270();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_25F46EDF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007865;
  v3 = 0x646E496567616D69;
  v4 = a1;
  v5 = 0x6F4C6C6F626D7973;
  v6 = 0xEE006E6F69746163;
  v7 = 0x6946656372756F73;
  v8 = 0xEA0000000000656CLL;
  if (a1 != 4)
  {
    v7 = 0x694C656372756F73;
    v8 = 0xEA0000000000656ELL;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x66664F6567616D69;
  v10 = 0xEB00000000746573;
  if (a1 != 1)
  {
    v9 = 0x6C6F626D7973;
    v10 = 0xE600000000000000;
  }

  if (!a1)
  {
    v9 = 0x646E496567616D69;
    v10 = 0xEA00000000007865;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEE006E6F69746163;
      if (v11 != 0x6F4C6C6F626D7973)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEA0000000000656CLL;
      if (v11 != 0x6946656372756F73)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEA0000000000656ELL;
      if (v11 != 0x694C656372756F73)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB00000000746573;
        if (v11 != 0x66664F6567616D69)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE600000000000000;
      v3 = 0x6C6F626D7973;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_25F4A3270();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_25F46EFF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6469507962;
  if (a1 != 6)
  {
    v5 = 0x736E6F73616572;
    v4 = 0xE700000000000000;
  }

  v6 = 0x6F74616369646E69;
  v7 = 0xE900000000000072;
  if (a1 != 4)
  {
    v6 = 0x636F72507962;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x63617073656D616ELL;
  v9 = 0xE900000000000065;
  if (a1 != 2)
  {
    v8 = 0x736C6961746564;
    v9 = 0xE700000000000000;
  }

  v10 = 1701080931;
  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v10 = 0x7367616C66;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v13 = 0xE900000000000072;
        if (v11 != 0x6F74616369646E69)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x636F72507962)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }

    if (a2 == 6)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x6469507962)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v13 = 0xE700000000000000;
    v14 = 0x6E6F73616572;
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0xE400000000000000;
        if (v11 != 1701080931)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x7367616C66)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_43;
    }

    if (a2 == 2)
    {
      v13 = 0xE900000000000065;
      if (v11 != 0x63617073656D616ELL)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v13 = 0xE700000000000000;
    v14 = 0x6C6961746564;
  }

  if (v11 != (v14 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
  {
LABEL_45:
    v15 = sub_25F4A3270();
    goto LABEL_46;
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_25F46F258(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000687461506BLL;
  v3 = 0xD000000000000010;
  v4 = a1;
  if (a1 > 1u)
  {
    v5 = 0xD000000000000015;
    if (v4 == 2)
    {
      v5 = 0xD000000000000012;
      v6 = 0x800000025F4B6DF0;
    }

    else
    {
      v6 = 0x800000025F4B6E10;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x726F77656D617266;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v4)
    {
      v6 = 0xED0000687461506BLL;
    }

    else
    {
      v6 = 0x800000025F4B6DD0;
    }
  }

  v7 = 0xD000000000000012;
  v8 = 0x800000025F4B6E10;
  if (a2 == 2)
  {
    v8 = 0x800000025F4B6DF0;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (a2)
  {
    v3 = 0x726F77656D617266;
  }

  else
  {
    v2 = 0x800000025F4B6DD0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F46F38C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xE800000000000000;
      v4 = 0x73746E6169726176;
    }

    else
    {
      v5 = 0x800000025F4B6CF0;
      v4 = 0xD00000000000001ALL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x656C746974;
    }

    if (v3)
    {
      v5 = 0x800000025F4B6CD0;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0x73746E6169726176;
  v7 = 0x800000025F4B6CF0;
  if (a2 == 2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  v8 = 0x800000025F4B6CD0;
  if (a2)
  {
    v2 = 0xD000000000000011;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F46F4D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x754E776F646E6977;
    }

    else
    {
      v5 = 0x6B6F547469647561;
    }

    if (v2)
    {
      v6 = 0xEC0000007265626DLL;
    }

    else
    {
      v6 = 0xEA00000000006E65;
    }
  }

  else
  {
    v3 = 0x636146656C616373;
    v4 = 0xEB00000000726F74;
    if (a1 != 3)
    {
      v3 = 0xD000000000000014;
      v4 = 0x800000025F4B6260;
    }

    if (a1 == 2)
    {
      v5 = 1702521203;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x754E776F646E6977;
    }

    else
    {
      v11 = 0x6B6F547469647561;
    }

    if (a2)
    {
      v10 = 0xEC0000007265626DLL;
    }

    else
    {
      v10 = 0xEA00000000006E65;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x636146656C616373;
    v8 = 0x800000025F4B6260;
    if (a2 == 3)
    {
      v8 = 0xEB00000000726F74;
    }

    else
    {
      v7 = 0xD000000000000014;
    }

    if (a2 == 2)
    {
      v9 = 1702521203;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_25F4A3270();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_25F46F670(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xD000000000000017;
  v5 = 0x800000025F4B5AD0;
  if (a1 != 5)
  {
    v4 = 0x7269757165527369;
    v5 = 0xEA00000000006465;
  }

  v6 = 0x53676E6964616F6CLL;
  v7 = 0xEA0000000000656DLL;
  if (a1 == 3)
  {
    v7 = 0xEF79676574617274;
  }

  else
  {
    v6 = 0x614E656C75646F6DLL;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x6261747563657865;
  v9 = 0xEE0068746150656CLL;
  if (a1 != 1)
  {
    v8 = 0x6E6F697461636F6CLL;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1752457584;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEE0068746150656CLL;
        if (v10 != 0x6261747563657865)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x6E6F697461636F6CLL)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1752457584)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x800000025F4B5AD0;
      if (v10 != 0xD000000000000017)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xEA00000000006465;
      if (v10 != 0x7269757165527369)
      {
LABEL_40:
        v13 = sub_25F4A3270();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEF79676574617274;
    if (v10 != 0x53676E6964616F6CLL)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xEA0000000000656DLL;
    if (v10 != 0x614E656C75646F6DLL)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_25F46F8DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xED00007466654C65;
  if (a1 != 2)
  {
    v4 = 0xEE00746867695265;
  }

  v5 = 0xD000000000000012;
  if (a1)
  {
    v3 = 0x800000025F4B6AF0;
  }

  else
  {
    v5 = 0x7469617274726F70;
  }

  if (a1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x70616373646E616CLL;
  }

  if (v2 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = 0xED00007466654C65;
    }

    else
    {
      v9 = 0xEE00746867695265;
    }

    if (v6 != 0x70616373646E616CLL)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (a2)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0x7469617274726F70;
    }

    if (a2)
    {
      v9 = 0x800000025F4B6AF0;
    }

    else
    {
      v9 = 0xE800000000000000;
    }

    if (v6 != v8)
    {
      goto LABEL_27;
    }
  }

  if (v7 != v9)
  {
LABEL_27:
    v10 = sub_25F4A3270();
    goto LABEL_28;
  }

  v10 = 1;
LABEL_28:

  return v10 & 1;
}

uint64_t sub_25F46FA54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6946656372756F73;
    }

    else
    {
      v5 = 0x616C706552726F66;
    }

    if (v4 == 2)
    {
      v6 = 0xEF7368746150656CLL;
    }

    else
    {
      v6 = 0xEE00746E656D6563;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 1752457584;
    }

    else
    {
      v5 = 0x696669746E656469;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  v7 = 0x6946656372756F73;
  v8 = 0xEF7368746150656CLL;
  if (a2 != 2)
  {
    v7 = 0x616C706552726F66;
    v8 = 0xEE00746E656D6563;
  }

  if (a2)
  {
    v3 = 1752457584;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F46FBB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x656C67676F74;
    }

    else
    {
      v4 = 0x656E696C656D6974;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1684632167;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D6F74737563;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x64656C6261736964;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656C67676F74;
    }

    else
    {
      v9 = 0x656E696C656D6974;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x6D6F74737563;
    if (a2 != 3)
    {
      v6 = 0x64656C6261736964;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1684632167;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_25F4A3270();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_25F46FD24(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x5379616C70736964;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x5379616C70736964;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3)
    {
      v5 = 0xEB00000000657A69;
    }

    else
    {
      v5 = 0x800000025F4B65F0;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0xEC000000656C6163;
    v4 = 0x5379616C70736964;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (v3 == 3)
    {
      v5 = 0x800000025F4B6620;
    }

    else
    {
      v5 = 0x800000025F4B6640;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xEB00000000657A69;
    }

    else
    {
      v2 = 0xD000000000000010;
      v7 = 0x800000025F4B65F0;
    }

    if (v4 != v2)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v7 = 0xEC000000656C6163;
    if (v4 != 0x5379616C70736964)
    {
LABEL_34:
      v8 = sub_25F4A3270();
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2 == 3)
    {
      v7 = 0x800000025F4B6620;
    }

    else
    {
      v7 = 0x800000025F4B6640;
    }

    if (v4 != v6)
    {
      goto LABEL_34;
    }
  }

  if (v5 != v7)
  {
    goto LABEL_34;
  }

  v8 = 1;
LABEL_35:

  return v8 & 1;
}

uint64_t sub_25F46FEA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000746E616ELL;
  v3 = 0x696D697263736964;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x72656469766F7270;
    }

    else
    {
      v5 = 0x696D697263736964;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEC000000746E616ELL;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x506E497865646E69;
    v6 = 0xEF72656469766F72;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x4449656C62617473;
    }

    else
    {
      v5 = 0x6E6F697461636F6CLL;
    }

    v6 = 0xE800000000000000;
  }

  v7 = 0x506E497865646E69;
  v8 = 0xEF72656469766F72;
  v9 = 0x4449656C62617473;
  if (a2 != 3)
  {
    v9 = 0x6E6F697461636F6CLL;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x72656469766F7270;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v7;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && v6 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_25F4A3270();
  }

  return v12 & 1;
}

uint64_t sub_25F470048(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0xD000000000000017;
    }

    if (v2 == 2)
    {
      v4 = 0x800000025F4B6C90;
    }

    else
    {
      v4 = 0x800000025F4B6CB0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0x800000025F4B6C70;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000015;
    }

    else
    {
      v7 = 0xD000000000000017;
    }

    if (a2 == 2)
    {
      v6 = 0x800000025F4B6C90;
    }

    else
    {
      v6 = 0x800000025F4B6CB0;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 25705;
    }

    if (a2)
    {
      v6 = 0x800000025F4B6C70;
    }

    else
    {
      v6 = 0xE200000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_25F4A3270();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_25F47016C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x4C525579706F63;
  v6 = 0xD000000000000016;
  v7 = 0x800000025F4B6800;
  if (a1 != 4)
  {
    v6 = 0x7070417465736572;
    v7 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x416C6C6174736E69;
  v9 = 0xEA00000000007070;
  if (a1 != 1)
  {
    v8 = 0x6C6174736E696E75;
    v9 = 0xED0000737070416CLL;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6D726177657270;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x4C525579706F63)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0x800000025F4B6800;
      if (v10 != 0xD000000000000016)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x7070417465736572)
      {
LABEL_34:
        v13 = sub_25F4A3270();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEA00000000007070;
      if (v10 != 0x416C6C6174736E69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xED0000737070416CLL;
      if (v10 != 0x6C6174736E696E75)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6D726177657270)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_25F470370(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7250636974617473;
    }

    else
    {
      v3 = 0x73746375646F7270;
    }

    if (v2)
    {
      v4 = 0xEE0073746375646FLL;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x800000025F4B5E20;
    v3 = 0xD00000000000001ALL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x73657461647075;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2 == 3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0x800000025F4B5E50;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7250636974617473;
    }

    else
    {
      v9 = 0x73746375646F7270;
    }

    if (a2)
    {
      v8 = 0xEE0073746375646FLL;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x73657461647075;
    v6 = 0x800000025F4B5E50;
    if (a2 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v7 = 0xD00000000000001ALL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x800000025F4B5E20;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = sub_25F4A3270();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_25F470524(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xED00007365746174;
  v4 = 0x50746E65746E6F63;
  if (a1 == 2)
  {
    v4 = 0x536C6F72746E6F63;
  }

  else
  {
    v3 = 0xEE0064616F6C7961;
  }

  v5 = 0xD000000000000013;
  v6 = 0x800000025F4B6A50;
  if (!a1)
  {
    v5 = 0x7954656D6F726863;
    v6 = 0xEA00000000006570;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x536C6F72746E6F63;
    }

    else
    {
      v11 = 0x50746E65746E6F63;
    }

    if (a2 == 2)
    {
      v10 = 0xED00007365746174;
    }

    else
    {
      v10 = 0xEE0064616F6C7961;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000013;
    }

    else
    {
      v9 = 0x7954656D6F726863;
    }

    if (a2)
    {
      v10 = 0x800000025F4B6A50;
    }

    else
    {
      v10 = 0xEA00000000006570;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_25F4A3270();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_25F47069C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x7065526873617263;
    }

    else
    {
      v5 = 0x696D697263736964;
    }

    if (v2)
    {
      v6 = 0xEB0000000074726FLL;
    }

    else
    {
      v6 = 0xEC000000746E616ELL;
    }
  }

  else
  {
    v3 = 0x686542746E656761;
    v4 = 0xED0000726F697661;
    if (a1 != 3)
    {
      v3 = 0xD000000000000011;
      v4 = 0x800000025F4B6EE0;
    }

    if (a1 == 2)
    {
      v5 = 6580592;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x7065526873617263;
    }

    else
    {
      v11 = 0x696D697263736964;
    }

    if (a2)
    {
      v10 = 0xEB0000000074726FLL;
    }

    else
    {
      v10 = 0xEC000000746E616ELL;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x686542746E656761;
    v8 = 0x800000025F4B6EE0;
    if (a2 == 3)
    {
      v8 = 0xED0000726F697661;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v9 = 6580592;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_25F4A3270();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_25F470844(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 25705;
  if (a1 == 5)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v4 = 0x66457265646E6572;
    v5 = 0xED00007374636566;
  }

  v6 = 0xD000000000000011;
  v7 = 0x800000025F4B5E50;
  if (a1 != 3)
  {
    v6 = 0x72656469766F7270;
    v7 = 0xEC000000656D614ELL;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x7250636974617473;
  v9 = 0xEE0073746375646FLL;
  if (a1 != 1)
  {
    v8 = 0x73657461647075;
    v9 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x73746375646F7270;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEE0073746375646FLL;
        if (v10 != 0x7250636974617473)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x73657461647075)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x73746375646F7270)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE200000000000000;
      if (v10 != 25705)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xED00007374636566;
      if (v10 != 0x66457265646E6572)
      {
LABEL_40:
        v13 = sub_25F4A3270();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x800000025F4B5E50;
    if (v10 != 0xD000000000000011)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xEC000000656D614ELL;
    if (v10 != 0x72656469766F7270)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_25F470A98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000079746974;
  v3 = 0x6E65644974736F68;
  v4 = a1;
  v5 = 0xED00007365746174;
  v6 = 0x50746E65746E6F63;
  v7 = 0xEE0064616F6C7961;
  if (a1 != 4)
  {
    v6 = 0x44496E6565726373;
    v7 = 0xE800000000000000;
  }

  if (a1 == 3)
  {
    v6 = 0x536C6F72746E6F63;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x79614C656E656373;
  v9 = 0xEB0000000074756FLL;
  if (a1 != 1)
  {
    v8 = 0xD000000000000013;
    v9 = 0x800000025F4B6A50;
  }

  if (!a1)
  {
    v8 = 0x6E65644974736F68;
    v9 = 0xEC00000079746974;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xED00007365746174;
      if (v10 != 0x536C6F72746E6F63)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEE0064616F6C7961;
      if (v10 != 0x50746E65746E6F63)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v10 != 0x44496E6565726373)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB0000000074756FLL;
        if (v10 != 0x79614C656E656373)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0xD000000000000013;
      v2 = 0x800000025F4B6A50;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_25F4A3270();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_25F470CB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0xE600000000000000;
    v13 = 0x746867696568;
    if (a1 != 2)
    {
      v13 = 0x7265507365747962;
      v12 = 0xEB00000000776F52;
    }

    v14 = 0x6874646977;
    if (a1)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v14 = 1635017060;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000025F4B6040;
    v5 = 0x5072655073746962;
    v6 = 0xEC0000006C657869;
    if (a1 != 7)
    {
      v5 = 0x617053726F6C6F63;
      v6 = 0xEA00000000006563;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x6564724F65747962;
    v8 = 0xE900000000000072;
    if (a1 != 4)
    {
      v7 = 0x6E4970616D746962;
      v8 = 0xEA00000000006F66;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x746867696568)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xEB00000000776F52;
        if (v9 != 0x7265507365747962)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x6874646977)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v9 != 1635017060)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE900000000000072;
      if (v9 != 0x6564724F65747962)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEA00000000006F66;
      if (v9 != 0x6E4970616D746962)
      {
LABEL_52:
        v16 = sub_25F4A3270();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0x800000025F4B6040;
    if (v9 != 0xD000000000000010)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xEC0000006C657869;
    if (v9 != 0x5072655073746962)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xEA00000000006563;
    if (v9 != 0x617053726F6C6F63)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_25F470F98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000044;
  v3 = 0x49747865746E6F63;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6874646977;
    }

    else
    {
      v5 = 0x746867696568;
    }

    if (v4 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x636146656C616373;
    }

    else
    {
      v5 = 0x49747865746E6F63;
    }

    if (v4)
    {
      v6 = 0xEB00000000726F74;
    }

    else
    {
      v6 = 0xE900000000000044;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x6874646977;
  if (a2 != 2)
  {
    v8 = 0x746867696568;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x636146656C616373;
    v2 = 0xEB00000000726F74;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F4710DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x636146656C616373;
    }

    else
    {
      v5 = 0x4965636166727573;
    }

    if (v2)
    {
      v6 = 0xEB00000000726F74;
    }

    else
    {
      v6 = 0xE900000000000044;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x746867696568;
    if (a1 != 3)
    {
      v4 = 0xD000000000000011;
      v3 = 0x800000025F4B69B0;
    }

    if (a1 == 2)
    {
      v5 = 0x6874646977;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x636146656C616373;
    }

    else
    {
      v11 = 0x4965636166727573;
    }

    if (a2)
    {
      v10 = 0xEB00000000726F74;
    }

    else
    {
      v10 = 0xE900000000000044;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x746867696568;
    v8 = 0x800000025F4B69B0;
    if (a2 == 3)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v9 = 0x6874646977;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_25F4A3270();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_25F471268(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C646E7562;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xED00007475706E49;
    v4 = 0xED00007475707475;
    if (a1 == 2)
    {
      v6 = 0x6E6F6974636E7566;
    }

    else
    {
      v6 = 0x4F736D6165727473;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xEC000000656D614ELL;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6E6F6974636E7566;
    }

    else
    {
      v6 = 0x656C646E7562;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6E6F6974636E7566;
  v10 = 0xED00007475706E49;
  if (a2 != 2)
  {
    v9 = 0x4F736D6165727473;
    v10 = 0xED00007475707475;
  }

  if (a2)
  {
    v2 = 0x6E6F6974636E7566;
    v8 = 0xEC000000656D614ELL;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_25F4A3270();
  }

  return v13 & 1;
}

uint64_t sub_25F4713CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x800000025F4B6940;
    v12 = 0xD000000000000014;
    v13 = 0x800000025F4B6960;
    v14 = 0xD00000000000001BLL;
    if (a1 == 8)
    {
      v14 = 0xD000000000000010;
    }

    else
    {
      v13 = 0x800000025F4B6980;
    }

    if (a1 != 7)
    {
      v12 = v14;
      v11 = v13;
    }

    v15 = 0x800000025F4B6920;
    v16 = 0xD000000000000012;
    if (a1 != 5)
    {
      v16 = 0x736F48726579616CLL;
      v15 = 0xE900000000000074;
    }

    if (a1 <= 6u)
    {
      v9 = v16;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 6)
    {
      v10 = v15;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x800000025F4B6900;
    v5 = 0x79616C70736964;
    if (a1 == 3)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v4 = 0xE700000000000000;
    }

    if (a1 == 2)
    {
      v6 = 0x7265646E6572;
    }

    else
    {
      v6 = v5;
    }

    if (a1 != 2)
    {
      v3 = v4;
    }

    v7 = 0x800000025F4B68B0;
    v8 = 0xD00000000000001BLL;
    if (a1)
    {
      v7 = 0x800000025F4B68D0;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v2 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v17 = 0xE600000000000000;
        if (v9 != 0x7265646E6572)
        {
          goto LABEL_62;
        }
      }

      else if (a2 == 3)
      {
        v17 = 0x800000025F4B6900;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v17 = 0xE700000000000000;
        if (v9 != 0x79616C70736964)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_60;
    }

    if (!a2)
    {
      v18 = "previewInstances";
LABEL_44:
      v17 = (v18 - 32) | 0x8000000000000000;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v19 = "incrementalPreviewInstances";
    goto LABEL_57;
  }

  if (a2 > 6u)
  {
    if (a2 == 7)
    {
      v17 = 0x800000025F4B6940;
      if (v9 != 0xD000000000000014)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (a2 == 8)
    {
      v18 = "captureIOSurface";
      goto LABEL_44;
    }

    v19 = "incrementalCaptureIOSurface";
LABEL_57:
    v17 = (v19 - 32) | 0x8000000000000000;
    if (v9 != 0xD00000000000001BLL)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (a2 == 5)
  {
    v17 = 0x800000025F4B6920;
    if (v9 != 0xD000000000000012)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v17 = 0xE900000000000074;
    if (v9 != 0x736F48726579616CLL)
    {
LABEL_62:
      v20 = sub_25F4A3270();
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v10 != v17)
  {
    goto LABEL_62;
  }

  v20 = 1;
LABEL_63:

  return v20 & 1;
}

uint64_t sub_25F4716AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006E69616D6FLL;
  v3 = 0x44746E65746E6F63;
  v4 = a1;
  v5 = 0xEE0070756F724777;
  v6 = 0x4E79616C70736964;
  if (a1 == 5)
  {
    v6 = 0x6569766572507369;
  }

  else
  {
    v5 = 0xEB00000000656D61;
  }

  v7 = 0x800000025F4B6BD0;
  v8 = 0xD000000000000013;
  if (a1 != 3)
  {
    v8 = 0x6574736575716572;
    v7 = 0xEF73746961725464;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0x43746E65746E6F63;
  v10 = 0xEF79726F67657461;
  if (a1 != 1)
  {
    v9 = 0xD000000000000010;
    v10 = 0x800000025F4B6BB0;
  }

  if (!a1)
  {
    v9 = 0x44746E65746E6F63;
    v10 = 0xED00006E69616D6FLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEF79726F67657461;
        if (v11 != 0x43746E65746E6F63)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0x800000025F4B6BB0;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEE0070756F724777;
        if (v11 != 0x6569766572507369)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xEB00000000656D61;
        if (v11 != 0x4E79616C70736964)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      v2 = 0x800000025F4B6BD0;
      if (v11 != 0xD000000000000013)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v3 = 0x6574736575716572;
    v2 = 0xEF73746961725464;
  }

  if (v11 != v3)
  {
LABEL_38:
    v13 = sub_25F4A3270();
    goto LABEL_39;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_25F47192C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000746E616ELL;
  v3 = 0xD000000000000012;
  v4 = 0x696D697263736964;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0x696D697263736964;
    }

    if (v5)
    {
      v7 = 0x800000025F4B6E40;
    }

    else
    {
      v7 = 0xEC000000746E616ELL;
    }
  }

  else if (a1 == 2)
  {
    v7 = 0x800000025F4B5DA0;
    v6 = 0xD000000000000011;
  }

  else
  {
    if (a1 == 3)
    {
      v6 = 0x6164705574736F68;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (v5 == 3)
    {
      v7 = 0xEE00646565536574;
    }

    else
    {
      v7 = 0x800000025F4B6DF0;
    }
  }

  if (a2 <= 1u)
  {
    v8 = 0x800000025F4B6E40;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x800000025F4B5DA0;
    v4 = 0xD000000000000011;
    v8 = 0x800000025F4B6DF0;
    if (a2 == 3)
    {
      v3 = 0x6164705574736F68;
      v8 = 0xEE00646565536574;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v4;
  }

  else
  {
    v10 = v3;
  }

  if (v9)
  {
    v11 = v2;
  }

  else
  {
    v11 = v8;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_25F4A3270();
  }

  return v12 & 1;
}

uint64_t sub_25F471AB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x4E79616C70736964;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xEB00000000656D61;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x66457265646E6572;
    v4 = 0xED00007374636566;
  }

  else if (a1 == 3)
  {
    v3 = 0xD00000000000001CLL;
    v4 = 0x800000025F4B6DA0;
  }

  else
  {
    v3 = 0x66457265646E6572;
    v4 = 0xEC00000074636566;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x4E79616C70736964;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xEB00000000656D61;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xED00007374636566;
    if (v3 != 0x66457265646E6572)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x800000025F4B6DA0;
    if (v3 != 0xD00000000000001CLL)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEC00000074636566;
    if (v3 != 0x66457265646E6572)
    {
LABEL_31:
      v7 = sub_25F4A3270();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_25F471C88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x546567617373656DLL;
  v4 = a1;
  v5 = 0xD000000000000012;
  v6 = 0x800000025F4B6670;
  v7 = 0x800000025F4B6690;
  v8 = 0xD00000000000001BLL;
  if (a1 != 4)
  {
    v8 = 0x656449656E656373;
    v7 = 0xEF7265696669746ELL;
  }

  if (a1 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x506567617373656DLL;
  v10 = 0xEE0064616F6C7961;
  if (a1 != 1)
  {
    v9 = 6580592;
    v10 = 0xE300000000000000;
  }

  if (!a1)
  {
    v9 = 0x546567617373656DLL;
    v10 = 0xEB00000000657079;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x800000025F4B6670;
      if (v11 != 0xD000000000000012)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x800000025F4B6690;
      if (v11 != 0xD00000000000001BLL)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEF7265696669746ELL;
      if (v11 != 0x656449656E656373)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEE0064616F6C7961;
        if (v11 != 0x506567617373656DLL)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE300000000000000;
      v3 = 6580592;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_25F4A3270();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_25F471E88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF7265696669746ELL;
  v3 = 0x656449746E656761;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x656D616E656C6966;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0x800000025F4B6820;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x736544746E656761;
    }

    else
    {
      v5 = 0x656449746E656761;
    }

    if (v4)
    {
      v6 = 0xEF726F7470697263;
    }

    else
    {
      v6 = 0xEF7265696669746ELL;
    }
  }

  v7 = 0x656D616E656C6966;
  v8 = 0x800000025F4B6820;
  if (a2 == 2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (a2)
  {
    v3 = 0x736544746E656761;
    v2 = 0xEF726F7470697263;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F471FEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000726F74;
  v3 = 0x636146656C616373;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0x636146656C616373;
    }

    if (v4 == 2)
    {
      v5 = 0x800000025F4B6AA0;
    }

    else
    {
      v5 = 0xEB00000000726F74;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x800000025F4B69B0;
    }

    else
    {
      v5 = 0x800000025F4B6A80;
    }

    v6 = 0xD000000000000011;
  }

  if (a2 == 2)
  {
    v3 = 0xD000000000000014;
    v2 = 0x800000025F4B6AA0;
  }

  v7 = 0x800000025F4B69B0;
  if (!a2)
  {
    v7 = 0x800000025F4B6A80;
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = v3;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  if (v6 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_25F4A3270();
  }

  return v10 & 1;
}

uint64_t sub_25F472114(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000746E616ELL;
  v3 = 0x696D697263736964;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7972747369676572;
    }

    else
    {
      v5 = 0x4E79616C70736964;
    }

    if (v4 == 2)
    {
      v6 = 0xEC00000065707954;
    }

    else
    {
      v6 = 0xEB00000000656D61;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x4D77656976657270;
    }

    else
    {
      v5 = 0x696D697263736964;
    }

    if (v4)
    {
      v6 = 0xEF61746164617465;
    }

    else
    {
      v6 = 0xEC000000746E616ELL;
    }
  }

  v7 = 0x7972747369676572;
  v8 = 0xEC00000065707954;
  if (a2 != 2)
  {
    v7 = 0x4E79616C70736964;
    v8 = 0xEB00000000656D61;
  }

  if (a2)
  {
    v3 = 0x4D77656976657270;
    v2 = 0xEF61746164617465;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F472294(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1852399981;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x64657463656A6E69;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6F74616C756D6973;
    }

    else
    {
      v4 = 1852399981;
    }

    if (v3)
    {
      v5 = 0xE900000000000072;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x64657463656A6E69;
  if (a2 != 2)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x6F74616C756D6973;
    v6 = 0xE900000000000072;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F4723D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6E6563536E69616DLL;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6C707369446D6973;
    }

    else
    {
      v5 = 0x6E6563536E69616DLL;
    }

    if (v4)
    {
      v6 = 0xEF656E6563537961;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x64657463656A6E69;
    v6 = 0xED0000656E656353;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6C616E7265747865;
    }

    else
    {
      v5 = 0x656976657250736ELL;
    }

    if (v4 == 3)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000077;
    }
  }

  v7 = 0x64657463656A6E69;
  v8 = 0xED0000656E656353;
  v9 = 0xE800000000000000;
  v10 = 0x6C616E7265747865;
  if (a2 != 3)
  {
    v10 = 0x656976657250736ELL;
    v9 = 0xE900000000000077;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x6C707369446D6973;
    v2 = 0xEF656E6563537961;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_25F4A3270();
  }

  return v13 & 1;
}

uint64_t sub_25F47258C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2 == 2)
    {
      v4 = 0x800000025F4B60C0;
    }

    else
    {
      v4 = 0x800000025F4B60E0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x7972747369676572;
    }

    else
    {
      v3 = 0x6946656372756F73;
    }

    if (v2)
    {
      v4 = 0xEC00000065707954;
    }

    else
    {
      v4 = 0xEE0068746150656CLL;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v6 = 0x800000025F4B60C0;
    }

    else
    {
      v6 = 0x800000025F4B60E0;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x7972747369676572;
    }

    else
    {
      v5 = 0x6946656372756F73;
    }

    if (a2)
    {
      v6 = 0xEC00000065707954;
    }

    else
    {
      v6 = 0xEE0068746150656CLL;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_25F4A3270();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_25F4726F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x656369766564;
    }

    else
    {
      v5 = 0x6669636570736E75;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEB00000000646569;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE700000000000000;
    v5 = 0x6C616D696E696DLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x506465646E756F72;
    }

    else
    {
      v5 = 0x426465646E756F72;
    }

    if (v4 == 3)
    {
      v6 = 0xEE0072657474616CLL;
    }

    else
    {
      v6 = 0xED0000726564726FLL;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x6C616D696E696DLL;
  v9 = 0x506465646E756F72;
  v10 = 0xEE0072657474616CLL;
  if (a2 != 3)
  {
    v9 = 0x426465646E756F72;
    v10 = 0xED0000726564726FLL;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x656369766564;
    v2 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_25F4A3270();
  }

  return v13 & 1;
}

uint64_t sub_25F4728A8(unsigned __int8 a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4729C8(unsigned __int8 a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F472AF0(unsigned __int8 a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F472C0C(unsigned __int8 a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F472D40(uint64_t a1, unsigned __int8 a2)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F472E64(uint64_t a1, unsigned __int8 a2)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F472FCC(uint64_t a1, unsigned __int8 a2)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4730FC(uint64_t a1, unsigned __int8 a2)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F473238(uint64_t a1, unsigned __int8 a2)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F473350(uint64_t a1, unsigned __int8 a2)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F473490(uint64_t a1, unsigned __int8 a2)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4735CC(uint64_t a1, unsigned __int8 a2)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t AgentMessageType.incrementalVariant.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_25F4A2A70();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  if (v8 > 4)
  {
    if (*v1 <= 6u)
    {
      if (v8 != 5)
      {
        LOBYTE(v8) = 7;
        goto LABEL_17;
      }
    }

    else if (v8 != 7 && v8 == 8)
    {
      LOBYTE(v8) = 9;
      goto LABEL_17;
    }

LABEL_16:
    MEMORY[0x28223BE20](result);
    *(&v10 - 16) = v8;
    sub_25F4A2A80();
    sub_25F4A2720();
    result = (*(v4 + 8))(v7, v3);
    goto LABEL_17;
  }

  if (*v1 <= 1u)
  {
    if (!*v1)
    {
      LOBYTE(v8) = 1;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v8 == 2)
  {
    LOBYTE(v8) = 3;
    goto LABEL_17;
  }

  if (v8 == 3)
  {
    goto LABEL_16;
  }

  LOBYTE(v8) = 5;
LABEL_17:
  *a1 = v8;
  return result;
}

uint64_t sub_25F4738A0(char a1)
{
  sub_25F4A30F0();
  sub_25F4A3140();
  MEMORY[0x25F8DD480](0xD000000000000035, 0x800000025F4B8850);
  return 0;
}

PreviewsMessagingOS::AgentMessageType_optional __swiftcall AgentMessageType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F4A3170();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AgentMessageType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000014;
    v7 = 0xD00000000000001BLL;
    if (v1 == 8)
    {
      v7 = 0xD000000000000010;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000012;
    if (v1 != 5)
    {
      v8 = 0x736F48726579616CLL;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7265646E6572;
    v3 = 0xD000000000000011;
    if (v1 != 3)
    {
      v3 = 0x79616C70736964;
    }

    if (v1 != 2)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (*v0)
    {
      v4 = 0xD00000000000001BLL;
    }

    if (*v0 <= 1u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_25F473B14()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F42B81C(v3, v1);
  return sub_25F4A3350();
}

uint64_t sub_25F473B64(uint64_t a1)
{
  v2 = *v1;
  sub_25F4A3300();
  sub_25F42B81C(v4, v2);
  return sub_25F4A3350();
}

uint64_t sub_25F473BB4@<X0>(uint64_t *a1@<X8>)
{
  result = AgentMessageType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F473BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F48B3DC();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t LegacyAgentPayload.loggingOutputPath.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t LegacyAgentPayload.providerName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t LegacyAgentPayload.init(dynamicProducts:staticProducts:updates:loggingOutputPath:providerName:previewID:renderEffects:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  *(a9 + 72) = a11;
  return result;
}

uint64_t sub_25F473D6C(uint64_t a1)
{
  sub_25F4A2C60();
}

unint64_t sub_25F473E9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F48ADF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F473ECC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x73746375646F7270;
  v5 = 0xE200000000000000;
  v6 = 25705;
  if (v2 != 5)
  {
    v6 = 0x66457265646E6572;
    v5 = 0xED00007374636566;
  }

  v7 = 0x800000025F4B5E50;
  v8 = 0xD000000000000011;
  if (v2 != 3)
  {
    v8 = 0x72656469766F7270;
    v7 = 0xEC000000656D614ELL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE0073746375646FLL;
  v10 = 0x7250636974617473;
  if (v2 != 1)
  {
    v10 = 0x73657461647075;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_25F473FC4()
{
  v1 = *v0;
  v2 = 0x73746375646F7270;
  v3 = 25705;
  if (v1 != 5)
  {
    v3 = 0x66457265646E6572;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x72656469766F7270;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7250636974617473;
  if (v1 != 1)
  {
    v5 = 0x73657461647075;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F474110(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DCA8, &unk_25F4AFB20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC68, &unk_25F4A6620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DCC0, &qword_25F4A6640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
  sub_25F474970();
  sub_25F4749C4(&qword_27FD6DCB0, &qword_27FD6DCA8, &unk_25F4AFB20, sub_25F4078FC);
  sub_25F4749C4(&qword_27FD6DC70, &qword_27FD6DC68, &unk_25F4A6620, sub_25F406728);
  sub_25F4749C4(&qword_27FD6DCC8, &qword_27FD6DCC0, &qword_25F4A6640, sub_25F4079CC);
  sub_25F4749C4(&qword_27FD6E6B8, &qword_27FD6E6B0, &qword_25F4A9840, sub_25F43872C);
  return sub_25F4A2880();
}

uint64_t LegacyAgentPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = &type metadata for LegacyAgentPayload.Key;
  v5 = sub_25F474970();
  v22 = v5;
  LOBYTE(v20[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DCA8, &unk_25F4AFB20);
  sub_25F4749C4(&qword_27FD6DCB0, &qword_27FD6DCA8, &unk_25F4AFB20, sub_25F4078FC);
  sub_25F4A2580();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    v7 = v23;
    v21 = &type metadata for LegacyAgentPayload.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC68, &unk_25F4A6620);
    sub_25F4749C4(&qword_27FD6DC70, &qword_27FD6DC68, &unk_25F4A6620, sub_25F406728);
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for LegacyAgentPayload.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DCC0, &qword_25F4A6640);
    sub_25F4749C4(&qword_27FD6DCC8, &qword_27FD6DCC0, &qword_25F4A6640, sub_25F4079CC);
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for LegacyAgentPayload.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 3;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for LegacyAgentPayload.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 4;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for LegacyAgentPayload.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 5;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for LegacyAgentPayload.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E6B0, &qword_25F4A9840);
    sub_25F4749C4(&qword_27FD6E6B8, &qword_27FD6E6B0, &qword_25F4A9840, sub_25F43872C);
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v20);
    if (v11)
    {
      v9 = v11;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v10 = sub_25F4A25E0();
    result = (*(*(v10 - 8) + 8))(a1, v10);
    *a2 = v7;
    *(a2 + 8) = v19;
    *(a2 + 16) = v18;
    *(a2 + 24) = v16;
    *(a2 + 32) = v17;
    *(a2 + 40) = v14;
    *(a2 + 48) = v15;
    *(a2 + 56) = v12;
    *(a2 + 64) = v13;
    *(a2 + 72) = v9;
  }

  return result;
}

unint64_t sub_25F474970()
{
  result = qword_27FD6F710;
  if (!qword_27FD6F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F710);
  }

  return result;
}

uint64_t sub_25F4749C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TimelinePayload.timelineData.getter()
{
  v1 = *v0;
  sub_25F42BDA0(*v0, *(v0 + 8));
  return v1;
}

uint64_t TimelinePayload.init(timelineData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void sub_25F474B58(uint64_t a1@<X8>)
{
  strcpy(a1, "timelineData");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_25F474C0C(uint64_t a1, uint64_t *a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  *a2 = v4;
  a2[1] = v3;
  return sub_25F42BDA0(v4, v3);
}

unint64_t sub_25F474C1C()
{
  result = qword_27FD6F718;
  if (!qword_27FD6F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F718);
  }

  return result;
}

double TimelinePayload.init(propertyListValue:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v7[3] = &type metadata for TimelinePayload.Key;
  v7[4] = sub_25F474C1C();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    result = *&v8;
    *a2 = v8;
  }

  return result;
}

double sub_25F474DE0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v7[3] = &type metadata for TimelinePayload.Key;
  v7[4] = sub_25F474C1C();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    result = *&v8;
    *a2 = v8;
  }

  return result;
}

uint64_t sub_25F474EF0()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F474F64(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t GeometryPayload.propertyListValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F720, &qword_25F4AFB30);
  sub_25F4750C4();
  sub_25F4749C4(&qword_27FD6F730, &qword_27FD6F720, &qword_25F4AFB30, sub_25F475118);
  return sub_25F4A25C0();
}

unint64_t sub_25F4750C4()
{
  result = qword_27FD6F728;
  if (!qword_27FD6F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F728);
  }

  return result;
}

unint64_t sub_25F475118()
{
  result = qword_27FD6F738;
  if (!qword_27FD6F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F738);
  }

  return result;
}

uint64_t GeometryPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[3] = &type metadata for GeometryPayload.Key;
  v7[4] = sub_25F4750C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F720, &qword_25F4AFB30);
  sub_25F4749C4(&qword_27FD6F730, &qword_27FD6F720, &qword_25F4AFB30, sub_25F475118);
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v7[5];
  }

  return result;
}

uint64_t sub_25F4752B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F720, &qword_25F4AFB30);
  sub_25F4750C4();
  sub_25F4749C4(&qword_27FD6F730, &qword_27FD6F720, &qword_25F4AFB30, sub_25F475118);
  return sub_25F4A25C0();
}

uint64_t sub_25F475378@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[3] = &type metadata for GeometryPayload.Key;
  v7[4] = sub_25F4750C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F720, &qword_25F4AFB30);
  sub_25F4749C4(&qword_27FD6F730, &qword_27FD6F720, &qword_25F4AFB30, sub_25F475118);
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v7[5];
  }

  return result;
}

void SceneLayout.interfaceOrientation.getter(_BYTE *a1@<X8>)
{
  if (v1[16])
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *v1;
  }
}

uint64_t sub_25F4754DC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6D6F74737563;
  }

  else
  {
    v2 = 0x656369766564;
  }

  if (*a2)
  {
    v3 = 0x6D6F74737563;
  }

  else
  {
    v3 = 0x656369766564;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F4A3270();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F47555C()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4755CC(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F475620(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F475698(uint64_t *a1@<X8>)
{
  v2 = 0x656369766564;
  if (*v1)
  {
    v2 = 0x6D6F74737563;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_25F4756C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F48ACF8();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F47578C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7461746E6569726FLL;
  v4 = 0xEB000000006E6F69;
  if (v2 != 1)
  {
    v3 = 1702521203;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x696D697263736964;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC000000746E616ELL;
  }

  v7 = 0x7461746E6569726FLL;
  v8 = 0xEB000000006E6F69;
  if (*a2 != 1)
  {
    v7 = 1702521203;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x696D697263736964;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC000000746E616ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F475894()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F475940(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F4759D8(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F475A80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F48AE40(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F475AB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0xEB000000006E6F69;
  v5 = 0x7461746E6569726FLL;
  if (v2 != 1)
  {
    v5 = 1702521203;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F475B18()
{
  v1 = 0x7461746E6569726FLL;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t SceneLayout.propertyListValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = sub_25F475C74();
  sub_25F475CC8();
  sub_25F4A25C0();
  if (v3)
  {
    v9 = v1;
    v10 = v2;
    v11 = 0;
    v7 = &type metadata for SceneLayout.Key;
    v8 = v4;
    LOBYTE(v6[0]) = 2;
    type metadata accessor for CGSize(0);
  }

  else
  {
    LOBYTE(v9) = v1;
    v7 = &type metadata for SceneLayout.Key;
    v8 = v4;
    LOBYTE(v6[0]) = 1;
    sub_25F43AA08();
  }

  sub_25F4A2520();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

unint64_t sub_25F475C74()
{
  result = qword_27FD6F740;
  if (!qword_27FD6F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F740);
  }

  return result;
}

unint64_t sub_25F475CC8()
{
  result = qword_27FD6F748;
  if (!qword_27FD6F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F748);
  }

  return result;
}

uint64_t SceneLayout.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = &type metadata for SceneLayout.Key;
  v5 = sub_25F475C74();
  v16 = v5;
  LOBYTE(v14[0]) = 0;
  sub_25F475CC8();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v15 = &type metadata for SceneLayout.Key;
    v16 = v5;
    if (v12)
    {
      LOBYTE(v14[0]) = 2;
      type metadata accessor for CGSize(0);
      sub_25F4A2530();
      v8 = sub_25F4A25E0();
      (*(*(v8 - 8) + 8))(a1, v8);
      result = __swift_destroy_boxed_opaque_existential_1(v14);
      v9 = v12;
      v10 = v13;
    }

    else
    {
      LOBYTE(v14[0]) = 1;
      sub_25F43AA08();
      sub_25F4A2530();
      v11 = sub_25F4A25E0();
      (*(*(v11 - 8) + 8))(a1, v11);
      result = __swift_destroy_boxed_opaque_existential_1(v14);
      v10 = 0;
      v9 = v12;
    }

    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v12;
  }

  return result;
}

BOOL static SceneLayout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return *(a1 + 8) == *(a2 + 8) && *a1 == *a2;
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  v3 = 0x7469617274726F70;
  v4 = *a1;
  v5 = 0xE800000000000000;
  v6 = 0xED00007466654C65;
  if (v4 != 2)
  {
    v6 = 0xEE00746867695265;
  }

  v7 = 0xD000000000000012;
  v8 = 0x800000025F4B6AF0;
  if (*a1)
  {
    v5 = 0x800000025F4B6AF0;
  }

  else
  {
    v7 = 0x7469617274726F70;
  }

  if (*a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x70616373646E616CLL;
  }

  if (v4 <= 1)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0xED00007466654C65;
  if (*a2 != 2)
  {
    v11 = 0xEE00746867695265;
  }

  if (*a2)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v12 = v3;
  }

  else
  {
    v12 = 0x70616373646E616CLL;
  }

  if (*a2 <= 1u)
  {
    v13 = v8;
  }

  else
  {
    v13 = v11;
  }

  if (v9 == v12 && v10 == v13)
  {

    return 1;
  }

  else
  {
    v14 = sub_25F4A3270();

    return v14 & 1;
  }
}

uint64_t sub_25F4760C0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return sub_25F46F8DC(LOBYTE(v4), LOBYTE(v5));
    }

    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && v4 == v5;
}

uint64_t sub_25F476144()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F476204(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F4762B0(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F47636C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F48AE8C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F47639C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1852399981;
  v4 = 0xE800000000000000;
  v5 = 0x64657463656A6E69;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6F74616C756D6973;
    v2 = 0xE900000000000072;
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

uint64_t sub_25F476418(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F48AD4C();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4764DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x44496E6565726373;
  if (v2 != 1)
  {
    v4 = 0x656449656E656373;
    v3 = 0xEF7265696669746ELL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x696D697263736964;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC000000746E616ELL;
  }

  v7 = 0xE800000000000000;
  v8 = 0x44496E6565726373;
  if (*a2 != 1)
  {
    v8 = 0x656449656E656373;
    v7 = 0xEF7265696669746ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696D697263736964;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC000000746E616ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F4765FC()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4766B4(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F476758(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F47680C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F48AED8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F47683C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0xE800000000000000;
  v5 = 0x44496E6565726373;
  if (v2 != 1)
  {
    v5 = 0x656449656E656373;
    v4 = 0xEF7265696669746ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F4768B0()
{
  v1 = 0x44496E6565726373;
  if (*v0 != 1)
  {
    v1 = 0x656449656E656373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t HostIdentity.propertyListValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = sub_25F47C6E4();
  sub_25F47C738();
  result = sub_25F4A25C0();
  if (v3)
  {
    if (v3 != 1)
    {
      return result;
    }

    v9 = v1;
    v10 = v2;
    v7 = &type metadata for HostIdentity.Key;
    v8 = v4;
    LOBYTE(v6[0]) = 2;
  }

  else
  {
    LODWORD(v9) = v1;
    BYTE4(v9) = 0;
    v7 = &type metadata for HostIdentity.Key;
    v8 = v4;
    LOBYTE(v6[0]) = 1;
  }

  sub_25F4A2520();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t HostIdentity.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = &type metadata for HostIdentity.Key;
  v5 = sub_25F47C6E4();
  v19 = v5;
  LOBYTE(v17[0]) = 0;
  sub_25F47C738();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    if (v15 > 1u)
    {
      if (v15 == 2)
      {
        v18 = &type metadata for HostIdentity.Key;
        v19 = v5;
        LOBYTE(v17[0]) = 2;
        sub_25F4A2530();
        v12 = sub_25F4A25E0();
        (*(*(v12 - 8) + 8))(a1, v12);
        result = __swift_destroy_boxed_opaque_existential_1(v17);
        v9 = v15;
        v10 = v16;
        v11 = 1;
      }

      else
      {
        v14 = sub_25F4A25E0();
        result = (*(*(v14 - 8) + 8))(a1, v14);
        v10 = 0;
        v11 = 2;
        v9 = 1;
      }
    }

    else if (v15)
    {
      v18 = &type metadata for HostIdentity.Key;
      v19 = v5;
      LOBYTE(v17[0]) = 1;
      sub_25F4A2530();
      v13 = sub_25F4A25E0();
      (*(*(v13 - 8) + 8))(a1, v13);
      result = __swift_destroy_boxed_opaque_existential_1(v17);
      v10 = 0;
      v11 = 0;
      v9 = v15;
    }

    else
    {
      v8 = sub_25F4A25E0();
      result = (*(*(v8 - 8) + 8))(a1, v8);
      v9 = 0;
      v10 = 0;
      v11 = 2;
    }

    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
  }

  return result;
}

PreviewsMessagingOS::ChromeType_optional __swiftcall ChromeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F4A3170();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ChromeType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6669636570736E75;
  v3 = 0x6C616D696E696DLL;
  v4 = 0x506465646E756F72;
  if (v1 != 3)
  {
    v4 = 0x426465646E756F72;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656369766564;
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

uint64_t sub_25F476DD8()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F476ED8(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F476FC4(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F4770CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646569;
  v4 = 0x6669636570736E75;
  v5 = 0xE700000000000000;
  v6 = 0x6C616D696E696DLL;
  v7 = 0xEE0072657474616CLL;
  v8 = 0x506465646E756F72;
  if (v2 != 3)
  {
    v8 = 0x426465646E756F72;
    v7 = 0xED0000726564726FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656369766564;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_25F477188(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F48B388();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

PreviewsMessagingOS::GridIndex __swiftcall GridIndex.init(section:item:)(Swift::Int section, Swift::Int item)
{
  *v2 = section;
  v2[1] = item;
  result.item = item;
  result.section = section;
  return result;
}

uint64_t sub_25F4772B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1835365481;
  }

  else
  {
    v3 = 0x6E6F6974636573;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1835365481;
  }

  else
  {
    v5 = 0x6E6F6974636573;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F477354()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4773D0(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F477438(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F4774BC(uint64_t *a1@<X8>)
{
  v2 = 1835365481;
  if (!*v1)
  {
    v2 = 0x6E6F6974636573;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F4774F4()
{
  if (*v0)
  {
    return 1835365481;
  }

  else
  {
    return 0x6E6F6974636573;
  }
}

uint64_t GridIndex.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12 = &type metadata for GridIndex.Key;
  v5 = sub_25F47C794();
  v13 = v5;
  LOBYTE(v11[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
    v6 = v14;
    v12 = &type metadata for GridIndex.Key;
    v13 = v5;
    LOBYTE(v11[0]) = 1;
    sub_25F4A2530();
    v8 = sub_25F4A25E0();
    (*(*(v8 - 8) + 8))(a1, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    v10 = v14;
    *a2 = v6;
    a2[1] = v10;
  }

  return result;
}

uint64_t GridIndex.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x25F8DDB20](*v0);
  return MEMORY[0x25F8DDB20](v1);
}

uint64_t GridIndex.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](v1);
  MEMORY[0x25F8DDB20](v2);
  return sub_25F4A3350();
}

uint64_t sub_25F477850()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](v1);
  MEMORY[0x25F8DDB20](v2);
  return sub_25F4A3350();
}

uint64_t sub_25F4778AC()
{
  v1 = v0[1];
  MEMORY[0x25F8DDB20](*v0);
  return MEMORY[0x25F8DDB20](v1);
}

uint64_t sub_25F4778E8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](v2);
  MEMORY[0x25F8DDB20](v3);
  return sub_25F4A3350();
}

uint64_t GridIndex.description.getter()
{
  sub_25F4A30F0();

  v0 = sub_25F4A3210();
  MEMORY[0x25F8DD480](v0);

  MEMORY[0x25F8DD480](0x206D65746920202CLL, 0xE800000000000000);
  v1 = sub_25F4A3210();
  MEMORY[0x25F8DD480](v1);

  return 0x206E6F6974636573;
}

uint64_t StaticPreviewReply.contentPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticPreviewReply(0) + 20);
  v4 = sub_25F4A25E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticPreviewReply.controlDescriptions.getter()
{
  type metadata accessor for StaticPreviewReply(0);
}

uint64_t StaticPreviewReply.init(chromeType:controlDescriptions:controlStates:contentPayload:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  *a5 = *a1;
  v9 = type metadata accessor for StaticPreviewReply(0);
  *&a5[v9[6]] = a2;
  *&a5[v9[7]] = a3;
  v10 = v9[5];
  v11 = sub_25F4A25E0();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a5[v10], a4, v11);
}

uint64_t sub_25F477BDC()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F477CC0(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F477D90(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F477E70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F48AF24(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F477EA0(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006570;
  v3 = 0x7954656D6F726863;
  v4 = 0xED00007365746174;
  v5 = 0x536C6F72746E6F63;
  if (*v1 != 2)
  {
    v5 = 0x50746E65746E6F63;
    v4 = 0xEE0064616F6C7961;
  }

  if (*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x800000025F4B6A50;
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

unint64_t sub_25F477F40()
{
  v1 = 0x7954656D6F726863;
  v2 = 0x536C6F72746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x50746E65746E6F63;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t StaticPreviewReply.propertyListValue.getter()
{
  v1 = sub_25F4A25E0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0;
  sub_25F4A25A0();
  type metadata accessor for StaticPreviewReply(0);
  sub_25F4A2550();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_25F4780E4(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  MEMORY[0x28223BE20](v2 - 8);
  v23 = &v21[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FCF8, &unk_25F4B29C0);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v21[-v9];
  v22 = *a1;
  v11 = type metadata accessor for StaticPreviewReply(0);
  v12 = v11[5];
  v13 = *&a1[v11[6]];
  v14 = *&a1[v11[7]];
  v15 = *(v5 + 56);
  *v10 = 3;
  v16 = sub_25F4A25E0();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v10[v15], &a1[v12], v16);
  v30 = 0;
  v29 = v22;
  v28 = 1;
  v27 = v13;
  v26 = 2;
  v25 = v14;
  sub_25F404B8C(v10, v8, &qword_27FD6FCF8, &unk_25F4B29C0);
  LOBYTE(v13) = *v8;
  v18 = v23;
  (*(v17 + 32))(v23, &v8[*(v5 + 56)], v16);
  (*(v17 + 56))(v18, 0, 1, v16);
  v24 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F778, &qword_25F4AFB38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC80, &unk_25F4AFB40);
  sub_25F47C810();
  sub_25F47C864();
  sub_25F47C8B8();
  sub_25F47C96C();
  v19 = sub_25F4A28B0();
  sub_25F3F21F4(v18, &qword_27FD6DAA0, &qword_25F4A5550);

  sub_25F3F21F4(v10, &qword_27FD6FCF8, &unk_25F4B29C0);
  return v19;
}

uint64_t StaticPreviewReply.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &type metadata for StaticPreviewReply.Key;
  v9 = sub_25F47C810();
  v22 = v9;
  LOBYTE(v20[0]) = 0;
  sub_25F47C864();
  sub_25F4A2580();
  if (v2)
  {
    (*(v6 + 8))(a1, v5);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    if (v23 == 5)
    {
      v10 = 0;
    }

    else
    {
      v10 = v23;
    }

    v21 = &type metadata for StaticPreviewReply.Key;
    v22 = v9;
    LOBYTE(v20[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F778, &qword_25F4AFB38);
    sub_25F47C8B8();
    sub_25F4A2580();
    v18 = v10;
    v19 = a2;
    __swift_destroy_boxed_opaque_existential_1(v20);
    v12 = MEMORY[0x277D84F90];
    if (v23)
    {
      v13 = v23;
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v21 = &type metadata for StaticPreviewReply.Key;
    v22 = v9;
    LOBYTE(v20[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC80, &unk_25F4AFB40);
    sub_25F47C96C();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v20);
    if (v23)
    {
      v14 = v23;
    }

    else
    {
      v14 = v12;
    }

    v21 = &type metadata for StaticPreviewReply.Key;
    v22 = v9;
    LOBYTE(v20[0]) = 3;
    sub_25F4A2530();
    (*(v6 + 8))(a1, v5);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v15 = v19;
    *v19 = v18;
    v16 = type metadata accessor for StaticPreviewReply(0);
    *&v15[v16[6]] = v13;
    *&v15[v16[7]] = v14;
    return (*(v6 + 32))(&v15[v16[5]], v8, v5);
  }
}

uint64_t sub_25F478714(uint64_t a1)
{
  v2 = sub_25F4A25E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1;
  sub_25F4A25A0();
  sub_25F4A2550();
  return (*(v3 + 8))(v5, v2);
}

uint64_t HostedPreviewReply.hostIdentity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_25F47CA68(v2, v3, v4);
}

__n128 HostedPreviewReply.sceneLayout.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t HostedPreviewReply.contentPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HostedPreviewReply(0) + 24);
  v4 = sub_25F4A25E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_25F4788EC(uint64_t (*a1)(void))
{
  a1(0);
}

uint64_t HostedPreviewReply.controlStates.getter()
{
  type metadata accessor for HostedPreviewReply(0);
}

unint64_t HostedPreviewReply.screenID.getter()
{
  v1 = *v0;
  LODWORD(v2) = *(v0 + 16);
  if (*(v0 + 16))
  {
    if (v2 == 1 || (v2 = v1 | *(v0 + 8)) != 0)
    {
      v1 = 0;
      LOBYTE(v2) = 1;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = v1;
  }

  return v1 | (v2 << 32);
}

uint64_t HostedPreviewReply.init(hostIdentity:sceneLayout:controlDescriptions:controlStates:contentPayload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  *a6 = *a1;
  *(a6 + 16) = v10;
  *(a6 + 24) = *a2;
  *(a6 + 40) = v11;
  v12 = type metadata accessor for HostedPreviewReply(0);
  *(a6 + v12[7]) = a3;
  *(a6 + v12[8]) = a4;
  v13 = v12[6];
  v14 = sub_25F4A25E0();
  v15 = *(*(v14 - 8) + 32);

  return v15(a6 + v13, a5, v14);
}

uint64_t sub_25F478A78(uint64_t a1)
{
  sub_25F4A2C60();
}

unint64_t sub_25F478B9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F48AF70(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F478BCC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000079746974;
  v4 = 0x6E65644974736F68;
  v5 = 0xED00007365746174;
  v6 = 0x536C6F72746E6F63;
  v7 = 0xEE0064616F6C7961;
  v8 = 0x50746E65746E6F63;
  if (v2 != 4)
  {
    v8 = 0x44496E6565726373;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB0000000074756FLL;
  v10 = 0x79614C656E656373;
  if (v2 != 1)
  {
    v10 = 0xD000000000000013;
    v9 = 0x800000025F4B6A50;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_25F478CB8()
{
  v1 = *v0;
  v2 = 0x6E65644974736F68;
  v3 = 0x536C6F72746E6F63;
  v4 = 0x50746E65746E6F63;
  if (v1 != 4)
  {
    v4 = 0x44496E6565726373;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x79614C656E656373;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F478DDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FCF0, &qword_25F4B29B8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v11 = *a1;
  v10 = *(a1 + 8);
  v33 = *(a1 + 16);
  v12 = *(a1 + 24);
  v30 = *(a1 + 32);
  v31 = v12;
  v29 = *(a1 + 40);
  v13 = type metadata accessor for HostedPreviewReply(0);
  v14 = v13[6];
  v15 = *(a1 + v13[7]);
  v34 = *(a1 + v13[8]);
  v32 = v4;
  v16 = *(v4 + 48);
  *v9 = 4;
  v17 = sub_25F4A25E0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v36 = v9;
  v19(&v9[v16], a1 + v14, v17);
  v20 = *a1;
  if (*(a1 + 16))
  {
    if (*(a1 + 16) != 1 && *a1 == 0)
    {
      v28 = 0;
      v27 = 1;
    }

    else
    {
      v27 = 0;
      v28 = 1;
    }
  }

  else
  {
    v28 = 0;
    v27 = v20;
  }

  v52[0] = 0;
  v49 = v11;
  v50 = v10;
  v21 = v33;
  v51 = v33;
  v48 = 1;
  v45 = v31;
  v46 = v30;
  v47 = v29;
  v44 = 2;
  v43 = v15;
  v42 = 3;
  v41 = v34;
  sub_25F404B8C(v36, v7, &qword_27FD6FCF0, &qword_25F4B29B8);
  v22 = *v7;
  v23 = v35;
  (*(v18 + 32))(v35, &v7[*(v32 + 48)], v17);
  (*(v18 + 56))(v23, 0, 1, v17);
  v40 = v22;
  v39 = 5;
  v37 = v27;
  v38 = v28;
  sub_25F47CA68(v11, v10, v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F778, &qword_25F4AFB38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC80, &unk_25F4AFB40);
  sub_25F47CAA8();
  sub_25F47CAFC();
  sub_25F47CB50();
  sub_25F47C8B8();
  sub_25F47C96C();
  v24 = sub_25F4A2890();
  sub_25F3F21F4(v23, &qword_27FD6DAA0, &qword_25F4A5550);

  sub_25F48B4F4(v49, v50, v51);
  sub_25F3F21F4(v36, &qword_27FD6FCF0, &qword_25F4B29B8);
  return v24;
}

uint64_t HostedPreviewReply.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_25F4A25E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = &type metadata for HostedPreviewReply.Key;
  v11 = sub_25F47CAA8();
  v39 = v11;
  LOBYTE(v37[0]) = 0;
  sub_25F47CAFC();
  sub_25F4A2530();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    v38 = &type metadata for HostedPreviewReply.Key;
    v39 = v11;
    LOBYTE(v37[0]) = 5;
    sub_25F4A2580();

    __swift_destroy_boxed_opaque_existential_1(v37);
    v35 = 0;
    if (BYTE4(v40) == 1)
    {
      v36 = 2;
      v12 = 1;
    }

    else
    {
      v36 = 0;
      v12 = v40;
    }

    v34 = v12;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    v34 = v40;
    v35 = v41;
    v36 = v42;
  }

  v38 = &type metadata for HostedPreviewReply.Key;
  v39 = v11;
  LOBYTE(v37[0]) = 1;
  sub_25F47CB50();
  sub_25F4A2580();
  v30 = v10;
  __swift_destroy_boxed_opaque_existential_1(v37);
  v31 = v41;
  v32 = v40;
  v13 = v42;
  v38 = &type metadata for HostedPreviewReply.Key;
  v39 = v11;
  LOBYTE(v37[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F778, &qword_25F4AFB38);
  sub_25F47C8B8();
  sub_25F4A2580();
  v29 = v13;
  __swift_destroy_boxed_opaque_existential_1(v37);
  if (v43)
  {
    v14 = v43;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v38 = &type metadata for HostedPreviewReply.Key;
  v39 = v11;
  LOBYTE(v37[0]) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC80, &unk_25F4AFB40);
  sub_25F47C96C();
  sub_25F4A2580();
  __swift_destroy_boxed_opaque_existential_1(v37);
  if (v43)
  {
    v15 = v43;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v38 = &type metadata for HostedPreviewReply.Key;
  v39 = v11;
  LOBYTE(v37[0]) = 4;
  sub_25F4A2580();
  v27 = v15;
  v28 = v14;
  __swift_destroy_boxed_opaque_existential_1(v37);
  v16 = *(v8 + 48);
  if (v16(v6, 1, v7) == 1)
  {
    v17 = v30;
    _s19PreviewsMessagingOS24CanvasControlDescriptionV9ModifiersV17propertyListValue0a10FoundationC008PropertyI0Vvg_0();
    (*(v8 + 8))(a1, v7);
    v18 = v16(v6, 1, v7);
    v20 = v31;
    v19 = v32;
    v21 = v29;
    if (v18 != 1)
    {
      sub_25F3F21F4(v6, &qword_27FD6DAA0, &qword_25F4A5550);
    }
  }

  else
  {
    (*(v8 + 8))(a1, v7);
    v17 = v30;
    (*(v8 + 32))(v30, v6, v7);
    v20 = v31;
    v19 = v32;
    v21 = v29;
  }

  v22 = v33;
  v23 = v35;
  *v33 = v34;
  v22[1] = v23;
  *(v22 + 16) = v36;
  v22[3] = v19;
  v22[4] = v20;
  *(v22 + 40) = v21;
  v24 = type metadata accessor for HostedPreviewReply(0);
  v25 = v27;
  *(v22 + v24[7]) = v28;
  *(v22 + v24[8]) = v25;
  return (*(v8 + 32))(v22 + v24[6], v17, v7);
}

uint64_t RenderPayload.bitmapDescription.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_25F47CBBC(v8, &v7);
}

_OWORD *RenderPayload.init(bitmapDescription:selectableRegions:snapshotCornerRadius:scaleFactor:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = result[3];
  *(a3 + 32) = result[2];
  *(a3 + 48) = v5;
  *(a3 + 64) = result[4];
  v6 = result[1];
  *a3 = *result;
  *(a3 + 16) = v6;
  *(a3 + 80) = a2;
  *(a3 + 88) = a4;
  *(a3 + 96) = a5;
  return result;
}

uint64_t sub_25F479828()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F479904(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F4799CC(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F479AA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F48AFBC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F479AD4(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000726F74;
  v3 = 0x636146656C616373;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000014;
    v2 = 0x800000025F4B6AA0;
  }

  v4 = 0x800000025F4B6A80;
  if (*v1)
  {
    v4 = 0x800000025F4B69B0;
  }

  if (*v1 <= 1u)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_25F479B6C()
{
  v1 = 0x636146656C616373;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_25F479C60(__int128 *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v13 = a1[2];
  v14 = v2;
  v3 = a1[3];
  v15 = a1[4];
  *&v11[39] = v13;
  *&v11[55] = v2;
  *&v11[23] = a1[1];
  v12[0] = *a1;
  v12[1] = *&v11[23];
  *&v11[71] = v15;
  *&v11[7] = v12[0];
  v19 = *&v11[32];
  v20 = *&v11[48];
  *v21 = *&v11[64];
  v17 = *v11;
  v16 = 0;
  *&v21[15] = *(&v15 + 1);
  v18 = *&v11[16];
  v8 = v13;
  v9 = v3;
  v10 = a1[4];
  v6 = v12[0];
  v7 = v1;
  sub_25F47CBBC(v12, &v23);
  sub_25F404B8C(&v16, &v23, &qword_27FD6FCE0, &qword_25F4B29A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F720, &qword_25F4AFB30);
  sub_25F47CC20();
  sub_25F47CC74();
  sub_25F4749C4(&qword_27FD6F730, &qword_27FD6F720, &qword_25F4AFB30, sub_25F475118);
  v4 = sub_25F4A28B0();
  v22[2] = v8;
  v22[3] = v9;
  v22[4] = v10;
  v22[0] = v6;
  v22[1] = v7;
  sub_25F3F21F4(v22, &qword_27FD6FCE8, &qword_25F4B29B0);
  v23 = 0;
  v26 = *&v11[32];
  v27 = *&v11[48];
  *v28 = *&v11[64];
  *&v28[15] = *&v11[79];
  v24 = *v11;
  v25 = *&v11[16];
  sub_25F3F21F4(&v23, &qword_27FD6FCE0, &qword_25F4B29A8);
  return v4;
}

uint64_t RenderPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[3] = &type metadata for RenderPayload.Key;
  v5 = sub_25F47CC20();
  v25[4] = v5;
  LOBYTE(v25[0]) = 0;
  sub_25F47CC74();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v20 = v26;
    v21 = v27;
    v17 = &type metadata for RenderPayload.Key;
    v18 = v5;
    LOBYTE(v16[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F720, &qword_25F4AFB30);
    sub_25F4749C4(&qword_27FD6F730, &qword_27FD6F720, &qword_25F4AFB30, sub_25F475118);
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v16);
    v7 = v19;
    v17 = &type metadata for RenderPayload.Key;
    v18 = v5;
    LOBYTE(v16[0]) = 2;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v16);
    v8 = v14;
    v17 = &type metadata for RenderPayload.Key;
    v18 = v5;
    LOBYTE(v16[0]) = 3;
    sub_25F4A2580();
    if (v15)
    {
      v8 = 0.0;
    }

    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v16);
    v11 = v14;
    if (v15)
    {
      v11 = 3.0;
    }

    v12 = v23;
    *(a2 + 32) = v22;
    *(a2 + 48) = v12;
    *(a2 + 64) = v24;
    v13 = v21;
    *a2 = v20;
    *(a2 + 16) = v13;
    *(a2 + 80) = v7;
    *(a2 + 88) = v8;
    *(a2 + 96) = v11;
  }

  return result;
}

uint64_t LayerHostPayload.init(contextID:scaleFactor:width:height:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  return result;
}

uint64_t sub_25F47A288()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F47A350(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F47A404(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F47A4C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F48B008(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F47A4F8(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000044;
  v3 = 0x49747865746E6F63;
  v4 = 0xE500000000000000;
  v5 = 0x6874646977;
  if (*v1 != 2)
  {
    v5 = 0x746867696568;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x636146656C616373;
    v2 = 0xEB00000000726F74;
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

uint64_t sub_25F47A57C()
{
  v1 = 0x49747865746E6F63;
  v2 = 0x6874646977;
  if (*v0 != 2)
  {
    v2 = 0x746867696568;
  }

  if (*v0)
  {
    v1 = 0x636146656C616373;
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

uint64_t LayerHostPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = &type metadata for LayerHostPayload.Key;
  v5 = sub_25F47CD2C();
  v15 = v5;
  LOBYTE(v13[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v6 = v16;
    v14 = &type metadata for LayerHostPayload.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v14 = &type metadata for LayerHostPayload.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 2;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v14 = &type metadata for LayerHostPayload.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 3;
    sub_25F4A2530();
    v8 = sub_25F4A25E0();
    (*(*(v8 - 8) + 8))(a1, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    *a2 = v6;
    a2[1] = v12;
    a2[2] = v11;
    a2[3] = v10;
  }

  return result;
}

double PreviewInstancesPayload.init(previewDescription:)@<D0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F7C0, &qword_25F4AFB50);
  v4 = swift_allocObject();
  *&result = 1;
  v6 = a1[2];
  v7 = a1[4];
  v8 = a1[5];
  v4[5] = a1[3];
  v4[6] = v7;
  v4[7] = v8;
  v9 = *a1;
  v10 = a1[1];
  v4[1] = xmmword_25F4A43D0;
  v4[2] = v9;
  v4[3] = v10;
  v4[4] = v6;
  *a2 = v4;
  return result;
}

uint64_t PreviewInstancesPayload.propertyListValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F7C8, &qword_25F4AFB58);
  sub_25F47CD80();
  sub_25F4749C4(&qword_27FD6F7D8, &qword_27FD6F7C8, &qword_25F4AFB58, sub_25F47CDD4);
  return sub_25F4A25C0();
}

uint64_t PreviewInstancesPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[3] = &type metadata for PreviewInstancesPayload.Key;
  v7[4] = sub_25F47CD80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F7C8, &qword_25F4AFB58);
  sub_25F4749C4(&qword_27FD6F7D8, &qword_27FD6F7C8, &qword_25F4AFB58, sub_25F47CDD4);
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v7[5];
  }

  return result;
}

uint64_t sub_25F47AC60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F7C8, &qword_25F4AFB58);
  sub_25F47CD80();
  sub_25F4749C4(&qword_27FD6F7D8, &qword_27FD6F7C8, &qword_25F4AFB58, sub_25F47CDD4);
  return sub_25F4A25C0();
}

uint64_t sub_25F47AD24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[3] = &type metadata for PreviewInstancesPayload.Key;
  v7[4] = sub_25F47CD80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F7C8, &qword_25F4AFB58);
  sub_25F4749C4(&qword_27FD6F7D8, &qword_27FD6F7C8, &qword_25F4AFB58, sub_25F47CDD4);
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v7[5];
  }

  return result;
}

__n128 PreviewTraits.layout.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 PreviewTraits.layout.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

void static PreviewTraits.defaultTraits.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

__n128 PreviewTraits.init(layout:orientation:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  v4 = *a2;
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u8[1] = v4;
  return result;
}

uint64_t sub_25F47AF18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7461746E6569726FLL;
  }

  else
  {
    v3 = 0x74756F79616CLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEB000000006E6F69;
  }

  if (*a2)
  {
    v5 = 0x7461746E6569726FLL;
  }

  else
  {
    v5 = 0x74756F79616CLL;
  }

  if (*a2)
  {
    v6 = 0xEB000000006E6F69;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F47AFC4()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F47B04C(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F47B0C0(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F47B150(uint64_t *a1@<X8>)
{
  v2 = 0x74756F79616CLL;
  if (*v1)
  {
    v2 = 0x7461746E6569726FLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEB000000006E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F47B194()
{
  if (*v0)
  {
    return 0x7461746E6569726FLL;
  }

  else
  {
    return 0x74756F79616CLL;
  }
}

uint64_t sub_25F47B224(uint64_t a1, uint64_t a2, __int16 a3)
{
  sub_25F47CE2C();
  sub_25F47CE80();
  sub_25F43AA08();
  return sub_25F4A28D0();
}

uint64_t PreviewTraits.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = &type metadata for PreviewTraits.Key;
  v5 = sub_25F47CE2C();
  v15 = v5;
  LOBYTE(v13[0]) = 0;
  sub_25F47CE80();
  sub_25F4A2530();
  if (v2)
  {
    v9 = sub_25F4A25E0();
    (*(*(v9 - 8) + 8))(a1, v9);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v6 = v16;
    v7 = v17;
    v8 = v18;
    v14 = &type metadata for PreviewTraits.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 1;
    sub_25F43AA08();
    sub_25F4A2530();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
    *(a2 + 17) = v12;
  }

  return result;
}

uint64_t static PreviewTraits.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  if (v4 == 1)
  {
    v10 = *&v6 | *&v7;
    if (*&v2 | *&v3)
    {
      if (v8)
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        return sub_25F46F8DC(v5, v9);
      }
    }

    else
    {
      if (v8)
      {
        v14 = v10 == 0;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        return sub_25F46F8DC(v5, v9);
      }
    }
  }

  else if ((v8 & 1) == 0 && v2 == v6 && v3 == v7)
  {
    return sub_25F46F8DC(v5, v9);
  }

  return 0;
}

BOOL static PreviewTraits.Layout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    v6 = *&v5 | *&v4;
    if (*&v3 | *&v2)
    {
      v7 = v6 != 0;
    }

    else
    {
      v7 = v6 == 0;
    }

    return *(a2 + 16) && v7;
  }

  else
  {
    return (*(a2 + 16) & 1) == 0 && v3 == v5 && v2 == v4;
  }
}

uint64_t PreviewTraits.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  if (*(v1 + 16) == 1)
  {
    MEMORY[0x25F8DDB20]((v3 | v2) != 0);
  }

  else
  {
    MEMORY[0x25F8DDB20](2);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x25F8DDB50](v4);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x25F8DDB50](v5);
  }

  sub_25F4A2C60();
}

uint64_t PreviewTraits.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_25F4A3300();
  PreviewTraits.hash(into:)(v4);
  return sub_25F4A3350();
}

uint64_t sub_25F47B6FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_25F4A3300();
  PreviewTraits.hash(into:)(v4);
  return sub_25F4A3350();
}

uint64_t sub_25F47B75C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_25F4A3300();
  PreviewTraits.hash(into:)(v5);
  return sub_25F4A3350();
}

uint64_t sub_25F47B7B4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  if (v4 == 1)
  {
    v10 = *&v6 | *&v7;
    if (*&v2 | *&v3)
    {
      if (v8)
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        return sub_25F46F8DC(v5, v9);
      }
    }

    else
    {
      if (v8)
      {
        v14 = v10 == 0;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        return sub_25F46F8DC(v5, v9);
      }
    }
  }

  else if ((v8 & 1) == 0 && v2 == v6 && v3 == v7)
  {
    return sub_25F46F8DC(v5, v9);
  }

  return 0;
}

uint64_t sub_25F47B824(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x74616854657A6973;
  v4 = 0xEC00000073746946;
  if (v2 != 1)
  {
    v3 = 0x6465786966;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656369766564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x74616854657A6973;
  v8 = 0xEC00000073746946;
  if (*a2 != 1)
  {
    v7 = 0x6465786966;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656369766564;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F47B92C()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F47B9D0(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F47BA60(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F47BB00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F48B054(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F47BB30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEC00000073746946;
  v5 = 0x74616854657A6973;
  if (v2 != 1)
  {
    v5 = 0x6465786966;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656369766564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F47BB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F48ADA0();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F47BC54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6874646977;
  if (v2 != 1)
  {
    v4 = 0x746867696568;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1684957547;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6874646977;
  if (*a2 != 1)
  {
    v8 = 0x746867696568;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1684957547;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F47BD40()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F47BDD4(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F47BE54(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F47BEE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F48B0A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F47BF14(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6874646977;
  if (v2 != 1)
  {
    v5 = 0x746867696568;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1684957547;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F47BF64()
{
  v1 = 0x6874646977;
  if (*v0 != 1)
  {
    v1 = 0x746867696568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t PreviewTraits.Layout.propertyListValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = sub_25F47D170();
  sub_25F47D1C4();
  result = sub_25F4A25C0();
  if ((v3 & 1) == 0)
  {
    v8 = v4;
    v9 = v1;
    v10 = 0;
    v7 = &type metadata for PreviewTraits.Layout.Key;
    LOBYTE(v6[0]) = 1;
    sub_25F4A2520();
    __swift_destroy_boxed_opaque_existential_1(v6);
    v8 = v4;
    v9 = v2;
    v10 = 0;
    v7 = &type metadata for PreviewTraits.Layout.Key;
    LOBYTE(v6[0]) = 2;
    sub_25F4A2520();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t PreviewTraits.Layout.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = &type metadata for PreviewTraits.Layout.Key;
  v5 = sub_25F47D170();
  v18 = v5;
  LOBYTE(v16[0]) = 0;
  sub_25F47D1C4();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  if (v15)
  {
    if (v15 != 1)
    {
      v17 = &type metadata for PreviewTraits.Layout.Key;
      v18 = v5;
      LOBYTE(v16[0]) = 1;
      sub_25F4A2530();
      __swift_destroy_boxed_opaque_existential_1(v16);
      v10 = v15;
      v17 = &type metadata for PreviewTraits.Layout.Key;
      v18 = v5;
      LOBYTE(v16[0]) = 2;
      sub_25F4A2530();
      v13 = sub_25F4A25E0();
      (*(*(v13 - 8) + 8))(a1, v13);
      result = __swift_destroy_boxed_opaque_existential_1(v16);
      v12 = 0;
      v9 = v14;
      goto LABEL_8;
    }

    v8 = sub_25F4A25E0();
    result = (*(*(v8 - 8) + 8))(a1, v8);
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v11 = sub_25F4A25E0();
    result = (*(*(v11 - 8) + 8))(a1, v11);
    v10 = 0;
    v9 = 0;
  }

  v12 = 1;
LABEL_8:
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v12;
  return result;
}

uint64_t PreviewTraits.Layout.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16) == 1)
  {
    return MEMORY[0x25F8DDB20]((v2 | v1) != 0);
  }

  MEMORY[0x25F8DDB20](2);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x25F8DDB50](v3);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x25F8DDB50](v4);
}

uint64_t PreviewTraits.Layout.hashValue.getter()
{
  sub_25F4A3300();
  PreviewTraits.Layout.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F47C3DC()
{
  sub_25F4A3300();
  PreviewTraits.Layout.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F47C434(uint64_t a1)
{
  sub_25F4A3300();
  PreviewTraits.Layout.hash(into:)();
  return sub_25F4A3350();
}

BOOL sub_25F47C484(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    v6 = *&v5 | *&v4;
    if (*&v3 | *&v2)
    {
      v7 = v6 != 0;
    }

    else
    {
      v7 = v6 == 0;
    }

    return *(a2 + 16) && v7;
  }

  else
  {
    return (*(a2 + 16) & 1) == 0 && v3 == v5 && v2 == v4;
  }
}

PreviewsMessagingOS::PreviewTraits::Orientation_optional __swiftcall PreviewTraits.Orientation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F4A3170();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PreviewTraits.Orientation.rawValue.getter()
{
  v1 = 0x7469617274726F70;
  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x70616373646E616CLL;
  }
}

void sub_25F47C600(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x7469617274726F70;
  v4 = 0xED00007466654C65;
  if (*v1 != 2)
  {
    v4 = 0xEE00746867695265;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x800000025F4B6AF0;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x70616373646E616CLL;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

_BYTE *sub_25F47C69C(_BYTE *result, char *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  *result = 0;
  if (v5)
  {
    if (v5 == 1)
    {
      *a2 = 2;
    }

    else
    {
      if (v3 | v4)
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }

      *a2 = v6;
    }
  }

  else
  {
    *a2 = 1;
  }

  return result;
}

unint64_t sub_25F47C6E4()
{
  result = qword_27FD6F750;
  if (!qword_27FD6F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F750);
  }

  return result;
}

unint64_t sub_25F47C738()
{
  result = qword_27FD6F758;
  if (!qword_27FD6F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F758);
  }

  return result;
}

unint64_t sub_25F47C794()
{
  result = qword_27FD6F760;
  if (!qword_27FD6F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F760);
  }

  return result;
}

unint64_t sub_25F47C810()
{
  result = qword_27FD6F768;
  if (!qword_27FD6F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F768);
  }

  return result;
}

unint64_t sub_25F47C864()
{
  result = qword_27FD6F770;
  if (!qword_27FD6F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F770);
  }

  return result;
}

unint64_t sub_25F47C8B8()
{
  result = qword_27FD6F780;
  if (!qword_27FD6F780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6F778, &qword_25F4AFB38);
    sub_25F47CA20(&qword_27FD6F788, type metadata accessor for CanvasControlDescription, &protocol conformance descriptor for CanvasControlDescription);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F780);
  }

  return result;
}

unint64_t sub_25F47C96C()
{
  result = qword_27FD6DC88;
  if (!qword_27FD6DC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6DC80, &unk_25F4AFB40);
    sub_25F47CA20(&qword_27FD6DA68, type metadata accessor for PlistValueBox, &protocol conformance descriptor for PlistValueBox);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC88);
  }

  return result;
}

uint64_t sub_25F47CA20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F47CA68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_25F47CAA8()
{
  result = qword_27FD6F790;
  if (!qword_27FD6F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F790);
  }

  return result;
}

unint64_t sub_25F47CAFC()
{
  result = qword_27FD6F798;
  if (!qword_27FD6F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F798);
  }

  return result;
}

unint64_t sub_25F47CB50()
{
  result = qword_27FD6F7A0;
  if (!qword_27FD6F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F7A0);
  }

  return result;
}

uint64_t sub_25F47CBA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_25F47CC20()
{
  result = qword_27FD6F7A8;
  if (!qword_27FD6F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F7A8);
  }

  return result;
}

unint64_t sub_25F47CC74()
{
  result = qword_27FD6F7B0;
  if (!qword_27FD6F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F7B0);
  }

  return result;
}

unint64_t sub_25F47CD2C()
{
  result = qword_27FD6F7B8;
  if (!qword_27FD6F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F7B8);
  }

  return result;
}

unint64_t sub_25F47CD80()
{
  result = qword_27FD6F7D0;
  if (!qword_27FD6F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F7D0);
  }

  return result;
}

unint64_t sub_25F47CDD4()
{
  result = qword_27FD6F7E0;
  if (!qword_27FD6F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F7E0);
  }

  return result;
}

unint64_t sub_25F47CE2C()
{
  result = qword_27FD6F7E8;
  if (!qword_27FD6F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F7E8);
  }

  return result;
}

unint64_t sub_25F47CE80()
{
  result = qword_27FD6F7F0;
  if (!qword_27FD6F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F7F0);
  }

  return result;
}

uint64_t sub_25F47CED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F48B318();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F47CF98()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F47D078(uint64_t a1)
{
  sub_25F4A2C60();
}

_BYTE *sub_25F47D144(_BYTE *result, char *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  *result = 0;
  v6 = (v3 | v4) != 0;
  if (v5 != 1)
  {
    v6 = 2;
  }

  *a2 = v6;
  return result;
}

unint64_t sub_25F47D170()
{
  result = qword_27FD6F7F8;
  if (!qword_27FD6F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F7F8);
  }

  return result;
}

unint64_t sub_25F47D1C4()
{
  result = qword_27FD6F800;
  if (!qword_27FD6F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F800);
  }

  return result;
}

uint64_t sub_25F47D218(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t Explanation.body.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Explanation.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8[3] = &type metadata for Explanation.Key;
  v8[4] = sub_25F47D4B4();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v2)
  {
    v7 = v8[6];
    *a2 = v8[5];
    a2[1] = v7;
  }

  return result;
}

unint64_t sub_25F47D4B4()
{
  result = qword_27FD6F808;
  if (!qword_27FD6F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F808);
  }

  return result;
}

uint64_t Explanation.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static Explanation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25F4A3270();
  }
}

uint64_t sub_25F47D648@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8[3] = &type metadata for Explanation.Key;
  v8[4] = sub_25F47D4B4();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v2)
  {
    v7 = v8[6];
    *a2 = v8[5];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_25F47D778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  type metadata accessor for RuntimeLookup(0, a3, a3, a4);
  swift_storeEnumTagMultiPayload();
}

uint64_t RuntimeLookup.map<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v23 = a1;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v15);
  if (swift_getEnumCaseMultiPayload())
  {
    v21 = v13[1];
    *a4 = *v13;
    a4[1] = v21;
    type metadata accessor for RuntimeLookup(0, a3, v16, v17);
  }

  else
  {
    (*(v8 + 32))(v11, v13, v7);
    v23(v11);
    result = (*(v8 + 8))(v11, v7);
    if (v4)
    {
      return result;
    }

    type metadata accessor for RuntimeLookup(0, a3, v19, v20);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t RuntimeLookup.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v8 = *(a4 + 16);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = *(a4 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F47DB48, 0, 0);
}

uint64_t sub_25F47DB48()
{
  (*(v0[11] + 16))(v0[12], v0[7], v0[5]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[12];
  if (EnumCaseMultiPayload)
  {
    v5 = v0[6];
    v6 = v0[2];
    v7 = v4[1];
    *v6 = *v4;
    v6[1] = v7;
    type metadata accessor for RuntimeLookup(0, v5, v2, v3);
    swift_storeEnumTagMultiPayload();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[3];
    (*(v0[9] + 32))(v0[10], v4, v0[8]);
    v14 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_25F47DD10;
    v12 = v0[10];
    v13 = v0[2];

    return v14(v13, v12);
  }
}

uint64_t sub_25F47DD10()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_25F47DED0;
  }

  else
  {
    v2 = sub_25F47DE24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F47DE24()
{
  v1 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);
  type metadata accessor for RuntimeLookup(0, v1, v2, v3);
  swift_storeEnumTagMultiPayload();

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F47DED0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t RuntimeLookup.flatMap<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v20 = a1;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v14);
  if (swift_getEnumCaseMultiPayload())
  {
    v17 = v12[1];
    *a4 = *v12;
    a4[1] = v17;
    type metadata accessor for RuntimeLookup(0, a3, v15, v16);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v7 + 32))(v10, v12, v6);
    v20(v10);
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t RuntimeLookup.flatMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v8 = *(a4 + 16);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = *(a4 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F47E25C, 0, 0);
}

uint64_t sub_25F47E25C()
{
  (*(v0[11] + 16))(v0[12], v0[7], v0[5]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[12];
  if (EnumCaseMultiPayload)
  {
    v5 = v0[6];
    v6 = v0[2];
    v7 = v4[1];
    *v6 = *v4;
    v6[1] = v7;
    type metadata accessor for RuntimeLookup(0, v5, v2, v3);
    swift_storeEnumTagMultiPayload();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[3];
    (*(v0[9] + 32))(v0[10], v4, v0[8]);
    v14 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_25F47E424;
    v12 = v0[10];
    v13 = v0[2];

    return v14(v13, v12);
  }
}

uint64_t sub_25F47E424()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_25F48B534;
  }

  else
  {
    v2 = sub_25F47E538;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F47E538()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t RuntimeLookup.availableValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0xD000000000000010;
  MEMORY[0x28223BE20](a1);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v12 = "Item not supported";
    if (EnumCaseMultiPayload != 2)
    {
      v12 = "incrementalVariant";
      v4 = 0xD000000000000012;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      return (*(*(*(a1 + 16) - 8) + 32))(a2, v6);
    }

    v12 = "Item not located";
  }

  v14 = *v6;
  v13 = v6[1];
  v15 = v12 | 0x8000000000000000;
  type metadata accessor for RuntimeLookup.NoValueError(0, *(a1 + 16), v9, v10);
  swift_getWitnessTable();
  swift_allocError();
  *v16 = v4;
  v16[1] = v15;
  v16[2] = v14;
  v16[3] = v13;
  return swift_willThrow();
}

uint64_t sub_25F47E78C()
{
  v0 = sub_25F412E30();

  return v0;
}

uint64_t sub_25F47E7C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_25F47E818(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

uint64_t RuntimeLookup.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v16 = *v7;
      v17 = v7[1];
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_25F4A30F0();

      v18 = 0x7070757320746F4ELL;
      v19 = 0xEF203A646574726FLL;
      MEMORY[0x25F8DD480](v16, v17);
      goto LABEL_9;
    }

    v12 = *v7;
    v13 = v7[1];
    v14 = 0x61636F6C20746F4ELL;
    v15 = 979658100;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v2 + 32))(v5, v7, v1);
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_25F4A3240();
      v10 = v18;
      (*(v2 + 8))(v5, v1);
      return v10;
    }

    v12 = *v7;
    v13 = v7[1];
    v14 = 0x616C696176616E55;
    v15 = 979725410;
  }

  v18 = v14;
  v19 = v15 | 0xED00002000000000;
  MEMORY[0x25F8DD480](v12, v13);
LABEL_9:

  return v18;
}

unint64_t sub_25F47EAD4(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F47EB20(unsigned __int8 a1)
{
  v1 = 0x64657461636F6CLL;
  v2 = 0x7461636F4C746F6ELL;
  if (a1 != 2)
  {
    v2 = 0x6F70707553746F6ELL;
  }

  if (a1)
  {
    v1 = 0x616C696176616E75;
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

uint64_t sub_25F47EBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F47EC28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F47EC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F47ED04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_25F47ED74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F47EAD4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_25F47EDC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F47EEB4(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v2 + 8))(v4, a1);
  return EnumCaseMultiPayload;
}

unint64_t sub_25F47EF98(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F47EFE4(unsigned __int8 a1)
{
  v1 = 0x696D697263736964;
  v2 = 0x74616E616C707865;
  if (a1 != 2)
  {
    v2 = 0x726F727265;
  }

  if (a1)
  {
    v1 = 0x5664657461636F6CLL;
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

uint64_t sub_25F47F074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F47F0E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F47F154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F47F1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_25F47F234@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F47EF98(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_25F47F284@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, *(a1 + 16), *(a1 + 24));
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t RuntimeLookup<A>.propertyListValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  MEMORY[0x28223BE20](v7 - 8);
  v39 = &v33 - v8;
  v9 = *(a1 + 16);
  v10 = sub_25F4A3060();
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v34 = &v33 - v12;
  v36 = *(v9 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v35 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = (&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = v9;
  v42 = a2;
  v43 = v3;
  v19 = _s3KeyOMa_3(0, v9, a2, v18);
  _s12DiscriminantOMa(0, v9, a2, v20);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v40 = a3;
  sub_25F4A25C0();
  (*(v15 + 16))(v17, v3, a1);
  if (swift_getEnumCaseMultiPayload())
  {
    v24 = v17;
    v23 = *v17;
    v22 = v24[1];
    v44 = v23;
    v45 = v22;
    v49 = v19;
    v50 = WitnessTable;
    LOBYTE(v48[0]) = 2;
    sub_25F47F828();

    sub_25F4A2520();

    __swift_destroy_boxed_opaque_existential_1(v48);
    v44 = 0x616C696176616E75;
    v45 = 0xEB00000000656C62;
    v46 = v23;
    v47 = v22;
    type metadata accessor for RuntimeLookup.NoValueError(0, v9, v25, v26);
    swift_getWitnessTable();
    v27 = v39;
    sub_25F4A27C0();

    v28 = sub_25F4A25E0();
    (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
    v49 = v19;
    v50 = WitnessTable;
    LOBYTE(v48[0]) = 3;
    sub_25F4A2520();
    sub_25F3F21F4(v27, &qword_27FD6DAA0, &qword_25F4A5550);
  }

  else
  {
    v30 = v35;
    v29 = v36;
    (*(v36 + 32))(v35, v17, v9);
    v31 = v34;
    (*(v29 + 16))(v34, v30, v9);
    (*(v29 + 56))(v31, 0, 1, v9);
    v49 = v19;
    v50 = WitnessTable;
    LOBYTE(v48[0]) = 1;
    sub_25F4A2520();
    (*(v37 + 8))(v31, v38);
    (*(v29 + 8))(v30, v9);
  }

  return __swift_destroy_boxed_opaque_existential_1(v48);
}

uint64_t sub_25F47F7B0(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  *a1 = 0;
  v7 = type metadata accessor for RuntimeLookup(0, v6, a3, a4);
  result = sub_25F47EEB4(v7);
  *a2 = result;
  return result;
}

unint64_t sub_25F47F828()
{
  result = qword_27FD6F810;
  if (!qword_27FD6F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F810);
  }

  return result;
}

uint64_t RuntimeLookup<A>.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a5;
  v42 = type metadata accessor for RuntimeLookup(0, a2, a3, a4);
  v44 = *(v42 - 8);
  v8 = MEMORY[0x28223BE20](v42);
  v41 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v40 = (&v39 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v39 - v13);
  MEMORY[0x28223BE20](v12);
  v16 = (&v39 - v15);
  v18 = _s3KeyOMa_3(0, a2, a3, v17);
  v49 = v18;
  WitnessTable = swift_getWitnessTable();
  v50 = WitnessTable;
  LOBYTE(v48[0]) = 0;
  _s12DiscriminantOMa(0, a2, a3, v20);
  swift_getWitnessTable();
  v21 = a1;
  v22 = v45;
  sub_25F4A2530();
  if (v22)
  {
    v23 = sub_25F4A25E0();
    (*(*(v23 - 8) + 8))(a1, v23);
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  else
  {
    v45 = v14;
    __swift_destroy_boxed_opaque_existential_1(v48);
    if (v51 > 1u)
    {
      v38 = v43;
      if (v51 == 2)
      {
        v49 = v18;
        v50 = WitnessTable;
        LOBYTE(v48[0]) = 2;
        sub_25F47F828();
        sub_25F4A2580();
        v37 = v44;
        __swift_destroy_boxed_opaque_existential_1(v48);
        if (v47)
        {
          v26 = v46;
        }

        else
        {
          v26 = 0xD000000000000019;
        }

        if (v47)
        {
          v27 = v47;
        }

        else
        {
          v27 = 0x800000025F4B87C0;
        }

        v28 = sub_25F4A25E0();
        (*(*(v28 - 8) + 8))(v21, v28);
        v25 = v40;
        *v40 = v26;
        v25[1] = v27;
        v36 = v42;
      }

      else
      {
        v49 = v18;
        v50 = WitnessTable;
        LOBYTE(v48[0]) = 2;
        sub_25F47F828();
        sub_25F4A2580();
        v37 = v44;
        __swift_destroy_boxed_opaque_existential_1(v48);
        if (v47)
        {
          v32 = v46;
        }

        else
        {
          v32 = 0xD000000000000019;
        }

        if (v47)
        {
          v33 = v47;
        }

        else
        {
          v33 = 0x800000025F4B87C0;
        }

        v34 = sub_25F4A25E0();
        (*(*(v34 - 8) + 8))(v21, v34);
        v25 = v41;
        *v41 = v32;
        v25[1] = v33;
        v36 = v42;
      }

      swift_storeEnumTagMultiPayload();
    }

    else if (v51)
    {
      v49 = v18;
      v50 = WitnessTable;
      LOBYTE(v48[0]) = 2;
      sub_25F47F828();
      sub_25F4A2580();
      v37 = v44;
      __swift_destroy_boxed_opaque_existential_1(v48);
      if (v47)
      {
        v29 = v46;
      }

      else
      {
        v29 = 0xD000000000000019;
      }

      if (v47)
      {
        v30 = v47;
      }

      else
      {
        v30 = 0x800000025F4B87C0;
      }

      v31 = sub_25F4A25E0();
      (*(*(v31 - 8) + 8))(v21, v31);
      v25 = v45;
      *v45 = v29;
      v25[1] = v30;
      v36 = v42;
      swift_storeEnumTagMultiPayload();
      v38 = v43;
    }

    else
    {
      v49 = v18;
      v50 = WitnessTable;
      LOBYTE(v48[0]) = 1;
      v25 = v16;
      sub_25F4A2530();
      v35 = sub_25F4A25E0();
      (*(*(v35 - 8) + 8))(a1, v35);
      __swift_destroy_boxed_opaque_existential_1(v48);
      v36 = v42;
      swift_storeEnumTagMultiPayload();
      v38 = v43;
      v37 = v44;
    }

    return (*(v37 + 32))(v38, v25, v36);
  }
}

uint64_t PreviewFlavor.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (v0[6] < 0)
  {

    sub_25F4A30F0();

    MEMORY[0x25F8DD480](v2, v1);
    MEMORY[0x25F8DD480](8236, 0xE200000000000000);
    if (v3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 7104878;
    }

    if (!v3)
    {
      v3 = 0xE300000000000000;
    }

    MEMORY[0x25F8DD480](v7, v3);

    MEMORY[0x25F8DD480](93, 0xE100000000000000);
    return 0x7972747369676552;
  }

  else
  {
    v5 = PreviewMetadata.description.getter();
    MEMORY[0x25F8DD480](v5);

    MEMORY[0x25F8DD480](93, 0xE100000000000000);
    return 0x5B77656976657250;
  }
}

uint64_t sub_25F47FF74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7972747369676572;
  }

  else
  {
    v3 = 0x77656976657270;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7972747369676572;
  }

  else
  {
    v5 = 0x77656976657270;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}