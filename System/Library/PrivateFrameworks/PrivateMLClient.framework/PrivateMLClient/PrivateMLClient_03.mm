uint64_t sub_21CFBAD18()
{
  v1[2] = v0;
  v2 = sub_21D0219D4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CFBADD8, 0, 0);
}

uint64_t sub_21CFBADD8()
{
  sub_21CFB80AC(v0[5]);
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21D0219B4();
    sub_21CF9DC68(MEMORY[0x277D84F90]);
    v4 = sub_21D022524();

    [v2 openSensitiveURL:v3 withOptions:v4];
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_21CFBAF30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE456D0, &qword_21D0252B0);
  sub_21D021894();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21D0252E0;
  sub_21D022B04();
  sub_21D021884();

  sub_21D021884();
  sub_21D021884();
  return v0;
}

uint64_t sub_21CFBB0AC()
{
  v1 = *v0;
  sub_21D022C04();
  MEMORY[0x223D3A6E0](v1);
  sub_21D022614();
  sub_21D022614();
  return sub_21D022C24();
}

uint64_t sub_21CFBB12C(uint64_t a1)
{
  MEMORY[0x223D3A6E0](*v1);
  sub_21D022614();

  return sub_21D022614();
}

uint64_t sub_21CFBB19C()
{
  v1 = *v0;
  sub_21D022C04();
  MEMORY[0x223D3A6E0](v1);
  sub_21D022614();
  sub_21D022614();
  return sub_21D022C24();
}

uint64_t sub_21CFBB218(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_21D022B24() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_21D022B24();
}

unint64_t sub_21CFBB2CC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
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
}

uint64_t sub_21CFBB430(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21CFBB2CC(*a1);
  v5 = v4;
  if (v3 == sub_21CFBB2CC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21D022B24();
  }

  return v8 & 1;
}

uint64_t sub_21CFBB4B8()
{
  v1 = *v0;
  sub_21D022C04();
  sub_21CFBB2CC(v1);
  sub_21D022614();

  return sub_21D022C24();
}

uint64_t sub_21CFBB51C(uint64_t a1)
{
  sub_21CFBB2CC(*v1);
  sub_21D022614();
}

uint64_t sub_21CFBB570()
{
  v1 = *v0;
  sub_21D022C04();
  sub_21CFBB2CC(v1);
  sub_21D022614();

  return sub_21D022C24();
}

unint64_t sub_21CFBB5D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21CFBEA40(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_21CFBB600@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21CFBB2CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21CFBB640(uint64_t a1)
{
  sub_21D022614();
}

unint64_t sub_21CFBB744@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21CFBEA8C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21CFBB774(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
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

uint64_t sub_21CFBB858(uint64_t a1)
{
  sub_21D022614();
}

unint64_t sub_21CFBB954@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21CFBEAD8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21CFBB984(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_21CFBBA48(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_21CFB4D00(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_21CFB4D00((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_21CFB4D00(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_21CFB4D00((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_21CFB4D00(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_21CFB4D00((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21CFB4D00(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_21CFB4D00((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21CFB4D00(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_21CFB4D00((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = 0x657463656E6E6F43;
        *(v20 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45638, &qword_21D024740);
            sub_21CFBD40C();
            v1 = sub_21D022564();

            return v1;
          }

LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_21CFB4D00(0, *(v2 + 2) + 1, 1, v2);
          }

          v25 = *(v2 + 2);
          v24 = *(v2 + 3);
          if (v25 >= v24 >> 1)
          {
            v2 = sub_21CFB4D00((v24 > 1), v25 + 1, 1, v2);
          }

          *(v2 + 2) = v25 + 1;
          v26 = &v2[16 * v25];
          *(v26 + 4) = 0xD000000000000016;
          *(v26 + 5) = 0x800000021D02DFA0;
          goto LABEL_51;
        }

LABEL_41:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21CFB4D00(0, *(v2 + 2) + 1, 1, v2);
        }

        v22 = *(v2 + 2);
        v21 = *(v2 + 3);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_21CFB4D00((v21 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v22 + 1;
        v23 = &v2[16 * v22];
        *(v23 + 4) = 0x61656854656D6F48;
        *(v23 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21CFB4D00(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_21CFB4D00((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

uint64_t sub_21CFBBF18()
{
  v1 = *v0;
  sub_21D022C04();
  MEMORY[0x223D3A6E0](v1);
  return sub_21D022C24();
}

uint64_t sub_21CFBBF8C()
{
  v1 = *v0;
  sub_21D022C04();
  MEMORY[0x223D3A6E0](v1);
  return sub_21D022C24();
}

BOOL sub_21CFBC014(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_21CFBC044@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_21CFBC070@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_21CFBC148@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21CFBC158@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_21CFBEA08(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_21CFBC198(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = sub_21D022B24();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_21CFBC368(uint64_t a1)
{
  sub_21D022614();
}

unint64_t sub_21CFBC46C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21CFBEB24(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21CFBC49C(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000021D02D2F0;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x800000021D02D310;
    }

    v5 = 0x800000021D02D2B0;
    if (v2 != 3)
    {
      v5 = 0x800000021D02D2D0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t sub_21CFBC56C()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_21CFBC5C4@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 9u)
  {
    v5 = 1;
  }

  else
  {
    sub_21D021884();

    v5 = 0;
  }

  v6 = sub_21D021894();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_21CFBC7B8@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 5u)
  {
    v5 = 1;
  }

  else
  {
    sub_21D021884();

    v5 = 0;
  }

  v6 = sub_21D021894();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_21CFBC910@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45730, &qword_21D0253D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_21D021A34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE45738, &qword_21D0253D8);
  sub_21CFBD470(v2 + *(v11 + 36), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21CF7F200(v6, &qword_27CE45730, &qword_21D0253D0);
    v12 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v14 = sub_21D022584();
    [v13 setDateFormat_];

    [v13 setDoesRelativeDateFormatting_];
    v15 = sub_21D021A14();
    v16 = [v13 stringFromDate_];

    sub_21D022594();
    (*(v8 + 8))(v10, v7);
    sub_21D021884();

    v12 = 0;
  }

  v17 = sub_21D021894();
  return (*(*(v17 - 8) + 56))(a1, v12, 1, v17);
}

uint64_t sub_21CFBCBCC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_21CFB4F18(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_21D021894();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21CFBCCF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21CFB4D00(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_21CFB4D00((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45638, &qword_21D024740);
  sub_21CFBD40C();
  v17 = sub_21D022564();

  return v17;
}

uint64_t sub_21CFBCED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21CFB4D00(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_21CFB4D00((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45638, &qword_21D024740);
  sub_21CFBD40C();
  v9 = sub_21D022564();

  return v9;
}

uint64_t sub_21CFBD000(uint64_t a1)
{
  v23 = sub_21D0219D4();
  MEMORY[0x28223BE20](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  v6 = v2 + 16;
  v8 = a1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v21 = *(v6 + 56);
  v22 = v7;
  v9 = (v6 - 8);
  v10 = MEMORY[0x277D84F90];
  do
  {
    v11 = v23;
    v12 = v6;
    v22(v4, v8, v23);
    v13 = sub_21D0219C4();
    v15 = v14;
    (*v9)(v4, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_21CFB4D00(0, *(v10 + 2) + 1, 1, v10);
    }

    v17 = *(v10 + 2);
    v16 = *(v10 + 3);
    if (v17 >= v16 >> 1)
    {
      v10 = sub_21CFB4D00((v16 > 1), v17 + 1, 1, v10);
    }

    *(v10 + 2) = v17 + 1;
    v18 = &v10[16 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
    v8 += v21;
    --v5;
    v6 = v12;
  }

  while (v5);
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45638, &qword_21D024740);
  sub_21CFBD40C();
  v19 = sub_21D022564();

  return v19;
}

uint64_t sub_21CFBD214(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v2 += 8;
    v4 = sub_21D022B04();
    v6 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21CFB4D00(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_21CFB4D00((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v6;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45638, &qword_21D024740);
  sub_21CFBD40C();
  v10 = sub_21D022564();

  return v10;
}

unint64_t sub_21CFBD36C()
{
  result = qword_27CE45718;
  if (!qword_27CE45718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45718);
  }

  return result;
}

uint64_t type metadata accessor for TapToRadarDraft(uint64_t a1)
{
  result = qword_27CE457C0;
  if (!qword_27CE457C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21CFBD40C()
{
  result = qword_27CE45728;
  if (!qword_27CE45728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45638, &qword_21D024740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45728);
  }

  return result;
}

uint64_t sub_21CFBD470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45730, &qword_21D0253D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CFBD4F8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21CFBD578(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_21CFBD6FC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_21CFBD98C(uint64_t a1)
{
  sub_21CFBDDB0(319, &qword_27CE457D0, &qword_27CE457D8, &qword_21D025420, sub_21CFBDCE4);
  if (v1 <= 0x3F)
  {
    sub_21CFBDD60();
    if (v2 <= 0x3F)
    {
      sub_21CFBDDB0(319, &qword_27CE457F0, &qword_27CE457F8, &qword_21D025428, sub_21CFBDE20);
      if (v3 <= 0x3F)
      {
        sub_21CFBDDB0(319, &qword_27CE45808, &qword_27CE45810, &qword_21D025430, sub_21CFBDE9C);
        if (v4 <= 0x3F)
        {
          sub_21CFBDDB0(319, &qword_27CE45820, &qword_27CE45828, &qword_21D025438, sub_21CFBDF18);
          if (v5 <= 0x3F)
          {
            sub_21CFBDDB0(319, &qword_27CE45838, &qword_27CE45730, &qword_21D0253D0, sub_21CFBDF94);
            if (v6 <= 0x3F)
            {
              sub_21CFBDDB0(319, &qword_27CE45848, &qword_27CE45850, &qword_21D025440, sub_21CFBE010);
              if (v7 <= 0x3F)
              {
                sub_21CFBDDB0(319, &qword_27CE45860, &qword_27CE45638, &qword_21D024740, sub_21CFBE08C);
                if (v8 <= 0x3F)
                {
                  sub_21CFBE184(319, &qword_27CE45870, MEMORY[0x277D839B0], &off_282E92F70);
                  if (v9 <= 0x3F)
                  {
                    sub_21CFBDDB0(319, &qword_27CE45878, &qword_27CE45880, &qword_21D025448, sub_21CFBE108);
                    if (v10 <= 0x3F)
                    {
                      sub_21CFBE184(319, &qword_27CE45890, &type metadata for TapToRadarDraft.RemoteDeviceSelections, &off_282E933A8);
                      if (v11 <= 0x3F)
                      {
                        sub_21CFBE184(319, &qword_27CE45898, &type metadata for TapToRadarDraft.AutoDiagnostics, &off_282E93398);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
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

unint64_t sub_21CFBDCE4()
{
  result = qword_27CE457E0;
  if (!qword_27CE457E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE457D8, &qword_21D025420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE457E0);
  }

  return result;
}

void sub_21CFBDD60()
{
  if (!qword_27CE457E8)
  {
    v0 = sub_21D022924();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE457E8);
    }
  }
}

void sub_21CFBDDB0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5();
    v11 = type metadata accessor for URLParameter(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_21CFBDE20()
{
  result = qword_27CE45800;
  if (!qword_27CE45800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE457F8, &qword_21D025428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45800);
  }

  return result;
}

unint64_t sub_21CFBDE9C()
{
  result = qword_27CE45818;
  if (!qword_27CE45818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45810, &qword_21D025430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45818);
  }

  return result;
}

unint64_t sub_21CFBDF18()
{
  result = qword_27CE45830;
  if (!qword_27CE45830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45828, &qword_21D025438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45830);
  }

  return result;
}

unint64_t sub_21CFBDF94()
{
  result = qword_27CE45840;
  if (!qword_27CE45840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45730, &qword_21D0253D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45840);
  }

  return result;
}

unint64_t sub_21CFBE010()
{
  result = qword_27CE45858;
  if (!qword_27CE45858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45850, &qword_21D025440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45858);
  }

  return result;
}

unint64_t sub_21CFBE08C()
{
  result = qword_27CE45868;
  if (!qword_27CE45868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45638, &qword_21D024740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45868);
  }

  return result;
}

unint64_t sub_21CFBE108()
{
  result = qword_27CE45888;
  if (!qword_27CE45888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45880, &qword_21D025448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45888);
  }

  return result;
}

void sub_21CFBE184(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for URLParameter(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21CFBE1F4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_21CFBE284(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Reproducibility(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Reproducibility(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21CFBE5F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CFBE640(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_21CFBE69C()
{
  result = qword_27CE458A0;
  if (!qword_27CE458A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458A0);
  }

  return result;
}

unint64_t sub_21CFBE6F4()
{
  result = qword_27CE458A8;
  if (!qword_27CE458A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458A8);
  }

  return result;
}

unint64_t sub_21CFBE74C()
{
  result = qword_27CE458B0;
  if (!qword_27CE458B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458B0);
  }

  return result;
}

unint64_t sub_21CFBE7A4()
{
  result = qword_27CE458B8;
  if (!qword_27CE458B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458B8);
  }

  return result;
}

unint64_t sub_21CFBE7F8()
{
  result = qword_27CE458C0;
  if (!qword_27CE458C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458C0);
  }

  return result;
}

unint64_t sub_21CFBE850()
{
  result = qword_27CE458C8;
  if (!qword_27CE458C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458C8);
  }

  return result;
}

unint64_t sub_21CFBE8A8()
{
  result = qword_27CE458D0;
  if (!qword_27CE458D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458D0);
  }

  return result;
}

unint64_t sub_21CFBE900()
{
  result = qword_27CE458D8;
  if (!qword_27CE458D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458D8);
  }

  return result;
}

unint64_t sub_21CFBE958()
{
  result = qword_27CE458E0;
  if (!qword_27CE458E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458E0);
  }

  return result;
}

unint64_t sub_21CFBE9B4()
{
  result = qword_27CE458E8;
  if (!qword_27CE458E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE458E8);
  }

  return result;
}

uint64_t sub_21CFBEA08(uint64_t a1)
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

unint64_t sub_21CFBEA40(uint64_t a1, uint64_t a2)
{
  v2 = sub_21D022A74();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21CFBEA8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21D022A74();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21CFBEAD8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21D022A74();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21CFBEB24(uint64_t a1, uint64_t a2)
{
  v2 = sub_21D022A74();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

PrivateMLClient::ServerAssetInfo __swiftcall ServerAssetInfo.init(name:version:)(Swift::String name, Swift::String_optional version)
{
  v2->value = name;
  v2[1] = version;
  result.version = version;
  result.name = name;
  return result;
}

PrivateMLClient::ServerAssetInfo __swiftcall ServerAssetInfo.init(name:)(Swift::String name)
{
  *v1 = name;
  v1[1]._countAndFlagsBits = 0;
  v1[1]._object = 0;
  result.name = name;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ServerEnvironmentInfo.asJSONString()()
{
  v0 = sub_21D0225C4();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21D021834();
  MEMORY[0x28223BE20](v1);
  sub_21D021874();
  swift_allocObject();
  sub_21D021864();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45618, &unk_21D025B00);
  *(swift_allocObject() + 16) = xmmword_21D0238C0;
  sub_21D021814();
  sub_21CFBEE70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45620, &qword_21D024720);
  sub_21CFB53E4();
  sub_21D022964();
  sub_21D021844();
  sub_21CFBEEC8();
  v2 = sub_21D021854();
  if (v12)
  {
  }

  else
  {
    v6 = v2;
    v7 = v3;
    sub_21D0225B4();
    v8 = sub_21D0225A4();
    v10 = v9;
    sub_21CF8F460(v6, v7);

    if (v10)
    {
      v4 = v8;
    }

    else
    {
      v4 = 32123;
    }

    if (v10)
    {
      v5 = v10;
    }

    else
    {
      v5 = 0xE200000000000000;
    }
  }

  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

unint64_t sub_21CFBEE70()
{
  result = qword_28121E0A8;
  if (!qword_28121E0A8)
  {
    sub_21D021834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121E0A8);
  }

  return result;
}

unint64_t sub_21CFBEEC8()
{
  result = qword_28121D800;
  if (!qword_28121D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D800);
  }

  return result;
}

uint64_t ServerEnvironmentInfo.cloudosVersion.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ServerEnvironmentInfo.cloudosVersion.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void ServerEnvironmentInfo.baseModel.getter(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_21CFBEFB8(v2, v3, v4, v5);
}

void sub_21CFBEFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

__n128 ServerEnvironmentInfo.baseModel.setter(uint64_t a1)
{
  sub_21CF7D9E8(v1[2], v1[3], v1[4], v1[5]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 1) = *a1;
  *(v1 + 2) = v4;
  return result;
}

void ServerEnvironmentInfo.adapter.getter(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_21CFBEFB8(v2, v3, v4, v5);
}

__n128 ServerEnvironmentInfo.adapter.setter(uint64_t a1)
{
  sub_21CF7D9E8(v1[6], v1[7], v1[8], v1[9]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 3) = *a1;
  *(v1 + 4) = v4;
  return result;
}

void ServerEnvironmentInfo.tokenizer.getter(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_21CFBEFB8(v2, v3, v4, v5);
}

__n128 ServerEnvironmentInfo.tokenizer.setter(uint64_t a1)
{
  sub_21CF7D9E8(v1[10], v1[11], v1[12], v1[13]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 5) = *a1;
  *(v1 + 6) = v4;
  return result;
}

void ServerEnvironmentInfo.draftModel.getter(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_21CFBEFB8(v2, v3, v4, v5);
}

__n128 ServerEnvironmentInfo.draftModel.setter(uint64_t a1)
{
  sub_21CF7D9E8(v1[14], v1[15], v1[16], v1[17]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 7) = *a1;
  *(v1 + 8) = v4;
  return result;
}

uint64_t sub_21CFBF188()
{
  v1 = *v0;
  v2 = 0x56736F64756F6C63;
  v3 = 0x72657470616461;
  v4 = 0x657A696E656B6F74;
  if (v1 != 3)
  {
    v4 = 0x646F4D7466617264;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65646F4D65736162;
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

uint64_t sub_21CFBF240@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CFC05E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CFBF268(uint64_t a1)
{
  v2 = sub_21CFBF5D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CFBF2A4(uint64_t a1)
{
  v2 = sub_21CFBF5D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServerEnvironmentInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE458F0, &qword_21D025B10);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = v1[2];
  v34 = v1[3];
  v35 = v7;
  v8 = v1[4];
  v32 = v1[5];
  v33 = v8;
  v9 = v1[6];
  v30 = v1[7];
  v31 = v9;
  v10 = v1[8];
  v28 = v1[9];
  v29 = v10;
  v11 = v1[11];
  v24 = v1[10];
  v25 = v11;
  v12 = v1[13];
  v26 = v1[12];
  v27 = v12;
  v13 = v1[15];
  v20 = v1[14];
  v21 = v13;
  v14 = v1[17];
  v22 = v1[16];
  v23 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21CFBF5D8();
  sub_21D022C44();
  LOBYTE(v37) = 0;
  v15 = v36;
  sub_21D022AC4();
  if (!v15)
  {
    v17 = v29;
    v16 = v30;
    v18 = v31;
    v37 = v35;
    v38 = v34;
    v39 = v33;
    v40 = v32;
    v41 = 1;
    sub_21CFBEFB8(v35, v34, v33, v32);
    sub_21CFBF62C();
    sub_21D022AD4();
    sub_21CF7D9E8(v37, v38, v39, v40);
    v37 = v18;
    v38 = v16;
    v39 = v17;
    v40 = v28;
    v41 = 2;
    sub_21CFBEFB8(v18, v16, v17, v28);
    sub_21D022AD4();
    sub_21CF7D9E8(v37, v38, v39, v40);
    v37 = v24;
    v38 = v25;
    v39 = v26;
    v40 = v27;
    v41 = 3;
    sub_21CFBEFB8(v24, v25, v26, v27);
    sub_21D022AD4();
    sub_21CF7D9E8(v37, v38, v39, v40);
    v37 = v20;
    v38 = v21;
    v39 = v22;
    v40 = v23;
    v41 = 4;
    sub_21CFBEFB8(v20, v21, v22, v23);
    sub_21D022AD4();
    sub_21CF7D9E8(v37, v38, v39, v40);
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21CFBF5D8()
{
  result = qword_28121D818;
  if (!qword_28121D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D818);
  }

  return result;
}

unint64_t sub_21CFBF62C()
{
  result = qword_28121D858;
  if (!qword_28121D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D858);
  }

  return result;
}

uint64_t ServerEnvironmentInfo.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE458F8, &qword_21D025B18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21CFBF5D8();
  sub_21D022C34();
  if (v2)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    __swift_destroy_boxed_opaque_existential_0(v53);
    v44 = 0uLL;
    v45 = 0uLL;
    v46 = v32;
    v47 = v31;
    v48 = v30;
    v49 = v29;
    v50 = 0uLL;
    v51 = 0u;
    v52 = 0u;
  }

  else
  {
    *&v29 = v6;
    LOBYTE(v44) = 0;
    *&v28 = sub_21D022A84();
    *(&v28 + 1) = v11;
    LOBYTE(v33[0]) = 1;
    sub_21CFBFB64();
    sub_21D022A94();
    v27 = v44;
    v32 = v45;
    sub_21CF7D9E8(0, 0, 0, 0);
    LOBYTE(v33[0]) = 2;
    sub_21D022A94();
    v30 = v45;
    v31 = v44;
    sub_21CF7D9E8(0, 0, 0, 0);
    LOBYTE(v33[0]) = 3;
    sub_21D022A94();
    v26 = *(&v44 + 1);
    v12 = v44;
    v13 = v45;
    sub_21CF7D9E8(0, 0, 0, 0);
    v39 = 4;
    sub_21D022A94();
    (*(v29 + 8))(v8, v5);
    v14 = v40;
    v15 = v41;
    *&v29 = v40;
    v16 = v42;
    v25 = v43;
    sub_21CF7D9E8(0, 0, 0, 0);
    v33[0] = v28;
    v33[1] = v27;
    v33[2] = v32;
    v33[3] = v31;
    v34 = v30;
    *&v35 = v12;
    *(&v35 + 1) = v26;
    v36 = v13;
    *&v37 = v14;
    *(&v37 + 1) = v15;
    v17 = v25;
    *&v38 = v16;
    *(&v38 + 1) = v25;
    v18 = v28;
    v19 = v27;
    v20 = v31;
    a2[2] = v32;
    a2[3] = v20;
    *a2 = v18;
    a2[1] = v19;
    v21 = v34;
    v22 = v35;
    v23 = v38;
    v24 = v36;
    a2[7] = v37;
    a2[8] = v23;
    a2[5] = v22;
    a2[6] = v24;
    a2[4] = v21;
    sub_21CFB52D0(v33, &v44);
    __swift_destroy_boxed_opaque_existential_0(v53);
    v44 = v28;
    v45 = v27;
    v46 = v32;
    v47 = v31;
    v48 = v30;
    *&v49 = v12;
    *(&v49 + 1) = v26;
    v50 = v13;
    *&v51 = v29;
    *(&v51 + 1) = v15;
    *&v52 = v16;
    *(&v52 + 1) = v17;
  }

  return sub_21CFB5258(&v44);
}

unint64_t sub_21CFBFB64()
{
  result = qword_27CE45900;
  if (!qword_27CE45900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45900);
  }

  return result;
}

uint64_t ServerAssetInfo.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ServerAssetInfo.version.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21CFBFC48()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_21CFBFC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_21D022B24() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21D022B24();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21CFBFD64(uint64_t a1)
{
  v2 = sub_21CFBFF70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CFBFDA0(uint64_t a1)
{
  v2 = sub_21CFBFF70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServerAssetInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45908, &qword_21D025B20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21CFBFF70();
  sub_21D022C44();
  v12 = 0;
  v8 = v10[3];
  sub_21D022AE4();
  if (!v8)
  {
    v11 = 1;
    sub_21D022AC4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21CFBFF70()
{
  result = qword_28121D870;
  if (!qword_28121D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D870);
  }

  return result;
}

uint64_t ServerAssetInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45910, &qword_21D025B28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21CFBFF70();
  sub_21D022C34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v9 = sub_21D022AA4();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_21D022A84();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t get_enum_tag_for_layout_string_15PrivateMLClient15ServerAssetInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_21CFC0238(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
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

uint64_t sub_21CFC0294(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21CFC031C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21CFC0364(uint64_t result, int a2, int a3)
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

unint64_t sub_21CFC03D8()
{
  result = qword_27CE45918;
  if (!qword_27CE45918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45918);
  }

  return result;
}

unint64_t sub_21CFC0430()
{
  result = qword_27CE45920;
  if (!qword_27CE45920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45920);
  }

  return result;
}

unint64_t sub_21CFC0488()
{
  result = qword_28121D860;
  if (!qword_28121D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D860);
  }

  return result;
}

unint64_t sub_21CFC04E0()
{
  result = qword_28121D868;
  if (!qword_28121D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D868);
  }

  return result;
}

unint64_t sub_21CFC0538()
{
  result = qword_28121D808;
  if (!qword_28121D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D808);
  }

  return result;
}

unint64_t sub_21CFC0590()
{
  result = qword_28121D810;
  if (!qword_28121D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D810);
  }

  return result;
}

uint64_t sub_21CFC05E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x56736F64756F6C63 && a2 == 0xEE006E6F69737265;
  if (v4 || (sub_21D022B24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F4D65736162 && a2 == 0xE90000000000006CLL || (sub_21D022B24() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72657470616461 && a2 == 0xE700000000000000 || (sub_21D022B24() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A696E656B6F74 && a2 == 0xE900000000000072 || (sub_21D022B24() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646F4D7466617264 && a2 == 0xEA00000000006C65)
  {

    return 4;
  }

  else
  {
    v6 = sub_21D022B24();

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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ServerPromptInfo.asJSONString()()
{
  v1 = v0;
  v2 = sub_21D0225C4();
  MEMORY[0x28223BE20](v2 - 8);
  v18[1] = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21D021834();
  MEMORY[0x28223BE20](v4);
  v5 = *v0;
  v21 = *(v0 + 24);
  v20 = *(v0 + 32);
  sub_21D021874();
  swift_allocObject();
  sub_21D021864();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45618, &unk_21D025B00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21D0238C0;
  sub_21D021814();
  v22 = v6;
  sub_21CFBEE70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45620, &qword_21D024720);
  sub_21CFB53E4();
  v19 = *(v1 + 8);
  sub_21D022964();
  sub_21D021844();
  v22 = v5;
  v23 = v19;
  v24 = v21;
  v25 = v20;
  sub_21CFC0A48();
  v7 = v26;
  v8 = sub_21D021854();
  if (v7)
  {
  }

  else
  {
    v12 = v8;
    v13 = v9;
    sub_21D0225B4();
    v14 = sub_21D0225A4();
    v16 = v15;
    sub_21CF8F460(v12, v13);

    if (v16)
    {
      v10 = v14;
    }

    else
    {
      v10 = 32123;
    }

    if (v16)
    {
      v11 = v16;
    }

    else
    {
      v11 = 0xE200000000000000;
    }
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

unint64_t sub_21CFC0A48()
{
  result = qword_28121D828;
  if (!qword_28121D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D828);
  }

  return result;
}

PrivateMLClient::ServerPromptInfo::Source_optional __swiftcall ServerPromptInfo.Source.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21D022A74();

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

uint64_t ServerPromptInfo.Source.rawValue.getter()
{
  if (*v0)
  {
    return 0x726576726573;
  }

  else
  {
    return 0x746E65696C63;
  }
}

uint64_t sub_21CFC0B2C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x726576726573;
  }

  else
  {
    v2 = 0x746E65696C63;
  }

  if (*a2)
  {
    v3 = 0x726576726573;
  }

  else
  {
    v3 = 0x746E65696C63;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_21D022B24();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_21CFC0BAC()
{
  sub_21D022C04();
  sub_21D022614();

  return sub_21D022C24();
}

uint64_t sub_21CFC0C1C(uint64_t a1)
{
  sub_21D022614();
}

uint64_t sub_21CFC0C70()
{
  sub_21D022C04();
  sub_21D022614();

  return sub_21D022C24();
}

uint64_t sub_21CFC0CDC@<X0>(char *a2@<X8>)
{
  v3 = sub_21D022A74();

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

void sub_21CFC0D3C(uint64_t *a1@<X8>)
{
  v2 = 0x746E65696C63;
  if (*v1)
  {
    v2 = 0x726576726573;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t ServerPromptInfo.renderedPrompt.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ServerPromptInfo.renderedPrompt.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ServerPromptInfo.segments.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ServerPromptInfo.tokenIDs.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_21CFC0F84()
{
  v1 = 0x64657265646E6572;
  v2 = 0x7344496E656B6F74;
  if (*v0 != 2)
  {
    v2 = 0x656372756F73;
  }

  if (*v0)
  {
    v1 = 0x73746E656D676573;
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

uint64_t sub_21CFC1008@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CFC1A90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CFC103C(uint64_t a1)
{
  v2 = sub_21CFC1338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CFC1078(uint64_t a1)
{
  v2 = sub_21CFC1338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServerPromptInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45928, &unk_21D025F50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v7;
  v13 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21CFC1338();
  sub_21D022C44();
  LOBYTE(v18) = 0;
  v8 = v16;
  sub_21D022AE4();
  if (!v8)
  {
    v9 = v14;
    v10 = v13;
    v18 = v15;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45638, &qword_21D024740);
    sub_21CFB55CC(&qword_28121B3D0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_21D022AF4();
    v18 = v9;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45930, &qword_21D025F60);
    sub_21CFC138C(&qword_28121B3C0, MEMORY[0x277D849B0], MEMORY[0x277D83948]);
    sub_21D022AF4();
    LOBYTE(v18) = v10;
    v17 = 3;
    sub_21CFC13F8();
    sub_21D022AD4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21CFC1338()
{
  result = qword_28121D850;
  if (!qword_28121D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D850);
  }

  return result;
}

uint64_t sub_21CFC138C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45930, &qword_21D025F60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CFC13F8()
{
  result = qword_28121D838;
  if (!qword_28121D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D838);
  }

  return result;
}

uint64_t ServerPromptInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45938, &qword_21D025F68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21CFC1338();
  sub_21D022C34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v20) = 0;
  v9 = sub_21D022AA4();
  v18 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45638, &qword_21D024740);
  v19 = 1;
  sub_21CFB55CC(&qword_27CE45658, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_21D022AB4();
  v17 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45930, &qword_21D025F60);
  v19 = 2;
  sub_21CFC138C(&qword_27CE45940, MEMORY[0x277D849D8], MEMORY[0x277D83978]);
  sub_21D022AB4();
  v16 = v20;
  v19 = 3;
  sub_21CFC17DC();
  sub_21D022A94();
  (*(v6 + 8))(v8, v5);
  v12 = v20;
  v14 = v17;
  v13 = v18;
  *a2 = v9;
  *(a2 + 8) = v13;
  v15 = v16;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_21CFC17DC()
{
  result = qword_27CE45948;
  if (!qword_27CE45948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45948);
  }

  return result;
}

unint64_t sub_21CFC1834()
{
  result = qword_27CE45950;
  if (!qword_27CE45950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45950);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21CFC18CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_21CFC1914(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21CFC198C()
{
  result = qword_27CE45958;
  if (!qword_27CE45958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45958);
  }

  return result;
}

unint64_t sub_21CFC19E4()
{
  result = qword_28121D840;
  if (!qword_28121D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D840);
  }

  return result;
}

unint64_t sub_21CFC1A3C()
{
  result = qword_28121D848;
  if (!qword_28121D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D848);
  }

  return result;
}

uint64_t sub_21CFC1A90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657265646E6572 && a2 == 0xEE0074706D6F7250;
  if (v4 || (sub_21D022B24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E656D676573 && a2 == 0xE800000000000000 || (sub_21D022B24() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7344496E656B6F74 && a2 == 0xE800000000000000 || (sub_21D022B24() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_21D022B24();

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

unint64_t sub_21CFC1BF8()
{
  result = qword_28121D830;
  if (!qword_28121D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121D830);
  }

  return result;
}

uint64_t sub_21CFC1C4C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B0, &qword_21D023670);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest(0) + 20));
  v7 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF7F198(v6 + v7, v5, &qword_27CE452B0, &qword_21D023670);
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_21D000BB8(v5, a1, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  }

  sub_21D021CE4();
  v10 = *(v8 + 20);
  if (qword_28121D278 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_28121D280;
  v11 = v9(v5, 1, v8);

  if (v11 != 1)
  {
    return sub_21CF7F200(v5, &qword_27CE452B0, &qword_21D023670);
  }

  return result;
}

uint64_t sub_21CFC1E18(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B0, &qword_21D023670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_21D00E8C4(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_21D000BB8(a1, v6, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v6, &v9[v12], &qword_27CE452B0, &qword_21D023670);
  return swift_endAccess();
}

uint64_t sub_21CFC1F90@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A0, &qword_21D023660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_21CF7F198(v2, &v12 - v5, &qword_27CE452A0, &qword_21D023660);
  v7 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_21CF7F200(v6, &qword_27CE452A0, &qword_21D023660);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_21D000BB8(v6, a1, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    }

    sub_21D000B58(v6, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  }

  *a1 = xmmword_21D0235C0;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
  sub_21D021CE4();
  v10 = *(v9 + 24);
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  return (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
}

uint64_t sub_21CFC2150(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46390, &qword_21D02CB30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_21D00E8C4(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_21D000BB8(a1, v6, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__promptTemplate;
  swift_beginAccess();
  sub_21CF8F4D4(v6, &v9[v12], &qword_27CE46390, &qword_21D02CB30);
  return swift_endAccess();
}

uint64_t sub_21CFC22C8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45290, &qword_21D023650);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest(0) + 20));
  v7 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
  swift_beginAccess();
  sub_21CF7F198(v6 + v7, v5, &qword_27CE45290, &qword_21D023650);
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_21D000BB8(v5, a1, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
  }

  sub_21D021CE4();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v8[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v8[8]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v8[9]);
  *v14 = 0;
  v14[1] = 0;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_21CF7F200(v5, &qword_27CE45290, &qword_21D023650);
  }

  return result;
}

uint64_t sub_21CFC247C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45290, &qword_21D023650);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_21D00E8C4(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_21D000BB8(a1, v6, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
  swift_beginAccess();
  sub_21CF8F4D4(v6, &v9[v12], &qword_27CE45290, &qword_21D023650);
  return swift_endAccess();
}

uint64_t sub_21CFC2624(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D00F488();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CFC2680@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v3 = v2[5];
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  sub_21D021CE4();
  v5 = &a1[v2[7]];
  *v5 = 0;
  v5[4] = 1;
  v6 = &a1[v2[8]];
  *v6 = 0;
  v6[4] = 1;
  v7 = &a1[v2[9]];
  *v7 = 0;
  v7[4] = 1;
  v8 = &a1[v2[10]];
  *v8 = 0;
  v8[4] = 1;
  v9 = &a1[v2[11]];
  *v9 = 0;
  v9[4] = 1;
  v10 = &a1[v2[12]];
  *v10 = 0;
  v10[4] = 1;
  v11 = &a1[v2[13]];
  *v11 = 0;
  v11[8] = 1;
  v12 = &a1[v2[14]];
  *v12 = 0;
  v12[8] = 1;
  v13 = &a1[v2[15]];
  *v13 = 0;
  v13[8] = 1;
  v14 = &a1[v2[16]];
  *v14 = 0;
  v14[4] = 1;
  v15 = &a1[v2[17]];
  *v15 = 0;
  v15[4] = 1;
  a1[v2[18]] = 2;
  v16 = &a1[v2[19]];
  *v16 = 0;
  v16[4] = 1;
  v17 = v2[20];
  v18 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints(0);
  v19 = *(*(v18 - 8) + 56);

  return v19(&a1[v17], 1, 1, v18);
}

uint64_t sub_21CFC2860(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D0092FC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CFC28B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D00BCB0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CFC2920(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D00BD04();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CFC296C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46420, &qword_21D02CBC0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_21D00BC48(a1, &v10 - v6, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
  sub_21D00BC48(a2, &v7[v8], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
  LOBYTE(a2) = sub_21CFF8D14(v7, &v7[v8]);
  sub_21D000B58(&v7[v8], type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
  sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
  return a2 & 1;
}

uint64_t sub_21CFC2A84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464D0, &qword_21D02CC70);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_21D00BC48(a1, &v10 - v6, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails);
  sub_21D00BC48(a2, &v7[v8], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails);
  LOBYTE(a2) = sub_21D004CDC(v7, &v7[v8]);
  sub_21D000B58(&v7[v8], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
  sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
  return a2 & 1;
}

uint64_t sub_21CFC2B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D00F008();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CFC2BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D00F05C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CFC2C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D00F0B0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CFC2C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D00F104();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CFC2CFC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21D022B24();
  }
}

uint64_t sub_21CFC2D2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463E0, &qword_21D02CB80);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v10 - v6);
  v8 = *(v5 + 56);
  sub_21D00BC48(a1, &v10 - v6, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType);
  sub_21D00BC48(a2, v7 + v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType);
  LOBYTE(a2) = sub_21D009050(v7, (v7 + v8));
  sub_21D000B58(v7 + v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
  sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
  return a2 & 1;
}

BOOL sub_21CFC2E2C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if ((v5 & 0x2000000000000000) != 0)
  {
    return (v7 & 0x2000000000000000) != 0 && v4 == v6;
  }

  else
  {
    return (v7 & 0x2000000000000000) == 0 && sub_21D0035E0(v4, v5, v6, v7);
  }
}

uint64_t sub_21CFC2E68@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_21CFC2EA0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_21CFC2EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D00F158();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_21CFC2F3C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_21CFC2F54()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_21CFC2F70@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_21CFC2F8C(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_21CFC2FAC(uint64_t a1, uint64_t a2)
{
  sub_21D022C04();
  sub_21D022554();
  return sub_21D022C24();
}

uint64_t sub_21CFC3018(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D00F1AC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CFC3064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21D022C04();
  sub_21D022554();
  return sub_21D022C24();
}

BOOL sub_21CFC30CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t sub_21CFC3118()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE537E8);
  __swift_project_value_buffer(v0, qword_27CE537E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026250;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SPECULATIVE_DECODING";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SPECULATIVE_STREAMING_DRAFT";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SPECULATIVE_STREAMING_TARGET";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFC33A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_21D021D74();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling(0);
      sub_21D021E34();
    }
  }

  return result;
}

uint64_t sub_21CFC3458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling(0);
  if ((*(a1 + *(result + 20) + 8) & 1) == 0)
  {
    return sub_21D021F94();
  }

  return result;
}

uint64_t sub_21CFC34D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t sub_21CFC3560(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE462E0, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling, &unk_21D02C648);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFC3600(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE461D8, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling, &unk_21D02C680);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFC366C(uint64_t a1, uint64_t a2)
{
  sub_21CFFCB6C(&qword_27CE461D8, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling, &unk_21D02C680);

  return sub_21D021EF4();
}

uint64_t sub_21CFC370C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_21D021D74();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling(0);
      sub_21D021E54();
    }
  }

  return result;
}

uint64_t sub_21CFC3798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFCA484(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling, MEMORY[0x277D21860]);
  if (!v4)
  {
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFC3818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t sub_21CFC38A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE462F0, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling, &unk_21D02C4E0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFC3940(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_28121CC58, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling, &unk_21D02C518);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFC39AC(uint64_t a1, uint64_t a2)
{
  sub_21CFFCB6C(&qword_28121CC58, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling, &unk_21D02C518);

  return sub_21D021EF4();
}

uint64_t sub_21CFC3A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE462F8, type metadata accessor for Apple_Cloudml_Inference_Tie_ArgMaxSampling, &unk_21D02C378);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFC3AF4(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE461A8, type metadata accessor for Apple_Cloudml_Inference_Tie_ArgMaxSampling, &unk_21D02C3B0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFC3B60(uint64_t a1, uint64_t a2)
{
  sub_21CFFCB6C(&qword_27CE461A8, type metadata accessor for Apple_Cloudml_Inference_Tie_ArgMaxSampling, &unk_21D02C3B0);

  return sub_21D021EF4();
}

uint64_t sub_21CFC3BDC()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_2812213B0);
  __swift_project_value_buffer(v0, qword_2812213B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_21D026260;
  v4 = v41 + v3;
  v5 = v41 + v3 + v1[14];
  *(v41 + v3) = 1;
  *v5 = "model_name";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_21D021FF4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "model_adaptor_name";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "model_version";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "model_adaptor_version";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "options";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "session_id";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "task_priority";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "tokenizer_name";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "llm_preprocessing";
  *(v22 + 8) = 17;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "draft_model_name";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "draft_model_version";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "locale";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "image_tokenizer_name";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "image_tokenization_option";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "inference_id";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "tokenizer_version";
  *(v36 + 1) = 17;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "model_adaptor_ref_id";
  *(v37 + 8) = 20;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "image_tokenizer_version";
  *(v39 + 1) = 23;
  v39[16] = 2;
  v8();
  return sub_21D022004();
}

char *sub_21CFC41BC()
{
  *(v0 + 3) = 0u;
  *(v0 + 4) = 0u;
  *(v0 + 1) = 0u;
  *(v0 + 2) = 0u;
  v1 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  v2 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__sessionID];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__taskPriority];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerName];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing];
  *v6 = 0;
  *(v6 + 4) = 256;
  v7 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelName];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelVersion];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale] = MEMORY[0x277D84F90];
  v9 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerName];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizationOption;
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions(0);
  (*(*(v11 - 8) + 56))(&v0[v10], 1, 1, v11);
  v12 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerVersion];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelAdaptorRefID];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v0[OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerVersion];
  *v15 = 0;
  *(v15 + 1) = 0;
  return v0;
}

uint64_t sub_21CFC4358(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46308, &unk_21D02CAD0);
  MEMORY[0x28223BE20](v3 - 8);
  v96 = &v81 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A8, &qword_21D023668);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v81 - v6;
  *(v1 + 64) = 0u;
  v82 = (v1 + 64);
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v7 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  v83 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__sessionID;
  v85 = v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__sessionID;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__taskPriority;
  v86 = v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__taskPriority;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerName);
  *v11 = 0;
  v11[1] = 0;
  v12 = v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing;
  *v12 = 0;
  *(v12 + 8) = 256;
  v13 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelName);
  v87 = v12;
  v88 = v13;
  *v13 = 0;
  v13[1] = 0;
  v14 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelVersion);
  v89 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelVersion);
  *v14 = 0;
  v14[1] = 0;
  v90 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale;
  *(v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale) = MEMORY[0x277D84F90];
  v15 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerName);
  v91 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerName);
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizationOption;
  v92 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizationOption;
  v17 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID);
  v93 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerVersion);
  v94 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerVersion);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelAdaptorRefID);
  v95 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelAdaptorRefID);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerVersion);
  v97 = (v1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerVersion);
  *v21 = 0;
  v21[1] = 0;
  swift_beginAccess();
  v22 = a1[2];
  v23 = a1[3];
  swift_beginAccess();
  *(v1 + 16) = v22;
  *(v1 + 24) = v23;
  swift_beginAccess();
  v24 = a1[4];
  v25 = a1[5];
  swift_beginAccess();
  *(v1 + 32) = v24;
  *(v1 + 40) = v25;
  swift_beginAccess();
  v27 = a1[6];
  v26 = a1[7];
  swift_beginAccess();
  *(v1 + 48) = v27;
  *(v1 + 56) = v26;

  swift_beginAccess();
  v29 = a1[8];
  v28 = a1[9];
  v30 = v82;
  swift_beginAccess();
  *v30 = v29;
  *(v1 + 72) = v28;

  v31 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  v32 = v84;
  sub_21CF7F198(a1 + v31, v84, &qword_27CE452A8, &qword_21D023668);
  v33 = v83;
  swift_beginAccess();
  sub_21CF8F4D4(v32, v1 + v33, &qword_27CE452A8, &qword_21D023668);
  swift_endAccess();
  v34 = a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__sessionID;
  swift_beginAccess();
  v35 = *v34;
  LOBYTE(v34) = v34[8];
  v36 = v85;
  swift_beginAccess();
  *v36 = v35;
  *(v36 + 8) = v34;
  v37 = a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__taskPriority;
  swift_beginAccess();
  v38 = *v37;
  LOBYTE(v37) = v37[8];
  v39 = v86;
  swift_beginAccess();
  *v39 = v38;
  *(v39 + 8) = v37;
  v40 = (a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerName);
  swift_beginAccess();
  v42 = *v40;
  v41 = v40[1];
  swift_beginAccess();
  *v11 = v42;
  v11[1] = v41;

  v43 = a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing;
  swift_beginAccess();
  v44 = *v43;
  LOBYTE(v42) = v43[8];
  LOBYTE(v43) = v43[9];
  v45 = v87;
  swift_beginAccess();
  *v45 = v44;
  *(v45 + 8) = v42;
  *(v45 + 9) = v43;
  v46 = (a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelName);
  swift_beginAccess();
  v48 = *v46;
  v47 = v46[1];
  v49 = v88;
  swift_beginAccess();
  *v49 = v48;
  v49[1] = v47;

  v50 = (a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelVersion);
  swift_beginAccess();
  v52 = *v50;
  v51 = v50[1];
  v53 = v89;
  swift_beginAccess();
  *v53 = v52;
  v53[1] = v51;

  v54 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale;
  swift_beginAccess();
  v55 = *(a1 + v54);
  v56 = v90;
  swift_beginAccess();
  *(v1 + v56) = v55;

  v57 = (a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerName);
  swift_beginAccess();
  v59 = *v57;
  v58 = v57[1];
  v60 = v91;
  swift_beginAccess();
  *v60 = v59;
  v60[1] = v58;

  v61 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizationOption;
  swift_beginAccess();
  v62 = v96;
  sub_21CF7F198(a1 + v61, v96, &qword_27CE46308, &unk_21D02CAD0);
  v63 = v92;
  swift_beginAccess();
  sub_21CF8F4D4(v62, v1 + v63, &qword_27CE46308, &unk_21D02CAD0);
  swift_endAccess();
  v64 = (a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID);
  swift_beginAccess();
  v66 = *v64;
  v65 = v64[1];
  v67 = v93;
  swift_beginAccess();
  *v67 = v66;
  v67[1] = v65;

  v68 = (a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerVersion);
  swift_beginAccess();
  v70 = *v68;
  v69 = v68[1];
  v71 = v94;
  swift_beginAccess();
  *v71 = v70;
  v71[1] = v69;

  v72 = (a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelAdaptorRefID);
  swift_beginAccess();
  v74 = *v72;
  v73 = v72[1];
  v75 = v95;
  swift_beginAccess();
  *v75 = v74;
  v75[1] = v73;

  v76 = (a1 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerVersion);
  swift_beginAccess();
  v78 = *v76;
  v77 = v76[1];

  v79 = v97;
  swift_beginAccess();
  *v79 = v78;
  v79[1] = v77;

  return v1;
}

void *sub_21CFC4BD4()
{

  sub_21CF7F200(v0 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options, &qword_27CE452A8, &qword_21D023668);

  sub_21CF7F200(v0 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizationOption, &qword_27CE46308, &unk_21D02CAD0);

  return v0;
}

void sub_21CFC4D3C(uint64_t a1)
{
  sub_21CFC4EC8(319, qword_28121CE20, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21CFC4EC8(319, &qword_27CE459D8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21CFC4EC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21CFC4FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_21D021D74();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_21CFE16C4(a2, a1, a3, a4);
          break;
        case 2:
          sub_21CFE1748(a2, a1, a3, a4, MEMORY[0x277D217D0]);
          break;
        case 3:
          sub_21CFC52AC(a2, a1, a3, a4);
          break;
        case 4:
          sub_21CFC5330(a2, a1, a3, a4);
          break;
        case 5:
          sub_21CFC53B4(a2, a1, a3, a4);
          break;
        case 6:
          v16 = a2;
          v17 = a1;
          v18 = a3;
          v19 = a4;
          v20 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__sessionID;
          goto LABEL_24;
        case 7:
          v16 = a2;
          v17 = a1;
          v18 = a3;
          v19 = a4;
          v20 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__taskPriority;
LABEL_24:
          sub_21CFC5490(v16, v17, v18, v19, v20);
          break;
        case 8:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerName;
          goto LABEL_5;
        case 9:
          sub_21CFCD6E4(a2, a1, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing, sub_21D0092FC, &type metadata for Apple_Cloudml_Inference_Tie_ModelConfig.LLMPreprocessing);
          break;
        case 10:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelName;
          goto LABEL_5;
        case 11:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelVersion;
          goto LABEL_5;
        case 12:
          sub_21CFCB9EC(a2, a1, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale);
          break;
        case 13:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerName;
          goto LABEL_5;
        case 14:
          sub_21CFC5518(a2, a1, a3, a4);
          break;
        case 15:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID;
          goto LABEL_5;
        case 16:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerVersion;
          goto LABEL_5;
        case 17:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelAdaptorRefID;
          goto LABEL_5;
        case 18:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerVersion;
LABEL_5:
          sub_21CFC55F4(v11, v12, v13, v14, v15);
          break;
        default:
          break;
      }

      result = sub_21D021D74();
    }
  }

  return result;
}

uint64_t sub_21CFC52AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21D021E44();
  return swift_endAccess();
}

uint64_t sub_21CFC5330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21D021E44();
  return swift_endAccess();
}

uint64_t sub_21CFC53B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  sub_21CFFCB6C(qword_28121CEA8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions, &unk_21D02C0B8);
  sub_21D021E84();
  return swift_endAccess();
}

uint64_t sub_21CFC5490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_21D021E64();
  return swift_endAccess();
}

uint64_t sub_21CFC5518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions(0);
  sub_21CFFCB6C(&qword_27CE46168, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, &unk_21D02BF50);
  sub_21D021E84();
  return swift_endAccess();
}

uint64_t sub_21CFC55F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_21D021E44();
  return swift_endAccess();
}

void sub_21CFC56BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21CFE1D28(a1, a2, a3, a4);
  if (!v4)
  {
    sub_21CFE1DC4(a1, a2, a3, a4);
    sub_21CFC598C(a1, a2, a3, a4);
    sub_21CFC5A28(a1, a2, a3, a4);
    sub_21CFC5AC4(a1, a2, a3, a4);
    sub_21CFC5CEC(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__sessionID, 6);
    sub_21CFC5CEC(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__taskPriority, 7);
    sub_21CFC5FA4(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerName, 8);
    sub_21CFCEDCC(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing, sub_21D0092FC, 9, &type metadata for Apple_Cloudml_Inference_Tie_ModelConfig.LLMPreprocessing);
    sub_21CFC5FA4(a1, a2, a3, a4, OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelName, 10);
    sub_21CFC5FA4(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelVersion, 11);
    v9 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale;
    swift_beginAccess();
    if (*(*(a1 + v9) + 16))
    {

      sub_21D021F84();
    }

    sub_21CFC5FA4(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerName, 13);
    sub_21CFC5D7C(a1, a2, a3, a4);
    sub_21CFC5FA4(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID, 15);
    sub_21CFC5FA4(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerVersion, 16);
    sub_21CFC5FA4(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelAdaptorRefID, 17);
    sub_21CFC5FA4(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerVersion, 18);
  }
}

void sub_21CFC598C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a1 + 56))
  {

    sub_21D021FA4();
  }
}

void sub_21CFC5A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a1 + 72))
  {

    sub_21D021FA4();
  }
}

uint64_t sub_21CFC5AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A8, &qword_21D023668);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF7F198(a1 + v12, v7, &qword_27CE452A8, &qword_21D023668);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_21CF7F200(v7, &qword_27CE452A8, &qword_21D023668);
  }

  sub_21D000BB8(v7, v11, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  sub_21CFFCB6C(qword_28121CEA8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions, &unk_21D02C0B8);
  sub_21D021FE4();
  return sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
}

void sub_21CFC5CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  swift_beginAccess();
  if ((*(v6 + 8) & 1) == 0)
  {
    sub_21D021FC4();
  }
}

uint64_t sub_21CFC5D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46308, &unk_21D02CAD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizationOption;
  swift_beginAccess();
  sub_21CF7F198(a1 + v12, v7, &qword_27CE46308, &unk_21D02CAD0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_21CF7F200(v7, &qword_27CE46308, &unk_21D02CAD0);
  }

  sub_21D000BB8(v7, v11, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions);
  sub_21CFFCB6C(&qword_27CE46168, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, &unk_21D02BF50);
  sub_21D021FE4();
  return sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions);
}

void sub_21CFC5FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  swift_beginAccess();
  if (*(v6 + 8))
  {

    sub_21D021FA4();
  }
}

uint64_t sub_21CFC6054(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions(0);
  v130 = *(v4 - 8);
  v131 = v4;
  MEMORY[0x28223BE20](v4);
  v127 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46318, &qword_21D02CAE0);
  MEMORY[0x28223BE20](v128);
  v133 = &v126 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46308, &unk_21D02CAD0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v129 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v132 = &v126 - v10;
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v134 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = (&v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46320, &qword_21D02CAE8);
  MEMORY[0x28223BE20](v14);
  v16 = &v126 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A8, &qword_21D023668);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = &v126 - v21;
  swift_beginAccess();
  v135 = a1;
  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  swift_beginAccess();
  v136 = a2;
  v25 = a2[3];
  if (v23)
  {
    if (!v25 || (v24 != v136[2] || v23 != v25) && (sub_21D022B24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v26 = v135;
  swift_beginAccess();
  v27 = *(v26 + 32);
  v28 = *(v26 + 40);
  v29 = v136;
  swift_beginAccess();
  v30 = v29[5];
  if (v28)
  {
    if (!v30 || (v27 != v136[4] || v28 != v30) && (sub_21D022B24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v31 = v135;
  swift_beginAccess();
  v32 = *(v31 + 48);
  v33 = *(v31 + 56);
  v34 = v136;
  swift_beginAccess();
  v35 = v34[7];
  if (v33)
  {
    if (!v35 || (v32 != v136[6] || v33 != v35) && (sub_21D022B24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  v36 = v135;
  swift_beginAccess();
  v37 = *(v36 + 64);
  v38 = *(v36 + 72);
  v39 = v136;
  swift_beginAccess();
  v40 = v39[9];
  if (!v38)
  {
    if (!v40)
    {
      goto LABEL_29;
    }

    return 0;
  }

  if (!v40 || (v37 != v136[8] || v38 != v40) && (sub_21D022B24() & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v41 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  v42 = v135;
  swift_beginAccess();
  sub_21CF7F198(v42 + v41, v22, &qword_27CE452A8, &qword_21D023668);
  v43 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  v44 = v136;
  swift_beginAccess();
  v45 = *(v14 + 48);
  sub_21CF7F198(v22, v16, &qword_27CE452A8, &qword_21D023668);
  v126 = v45;
  sub_21CF7F198(v44 + v43, &v16[v45], &qword_27CE452A8, &qword_21D023668);
  v46 = *(v134 + 48);
  if (v46(v16, 1, v11) == 1)
  {

    sub_21CF7F200(v22, &qword_27CE452A8, &qword_21D023668);
    v47 = v44;
    v48 = v42;
    if (v46(&v16[v126], 1, v11) == 1)
    {
      sub_21CF7F200(v16, &qword_27CE452A8, &qword_21D023668);
      goto LABEL_38;
    }

LABEL_34:
    sub_21CF7F200(v16, &qword_27CE46320, &qword_21D02CAE8);
    goto LABEL_35;
  }

  sub_21CF7F198(v16, v20, &qword_27CE452A8, &qword_21D023668);
  v49 = v126;
  if (v46(&v16[v126], 1, v11) == 1)
  {

    sub_21CF7F200(v22, &qword_27CE452A8, &qword_21D023668);
    sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    goto LABEL_34;
  }

  sub_21D000BB8(&v16[v49], v13, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  v48 = v135;

  v51 = v136;

  v52 = sub_21D009738(v20, v13);
  sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  sub_21CF7F200(v22, &qword_27CE452A8, &qword_21D023668);
  sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  v47 = v51;
  sub_21CF7F200(v16, &qword_27CE452A8, &qword_21D023668);
  if ((v52 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_38:
  v53 = v48 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__sessionID;
  swift_beginAccess();
  v54 = *v53;
  v55 = *(v53 + 8);
  v56 = v47 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__sessionID;
  swift_beginAccess();
  if (v55)
  {
    if ((v56[8] & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((v56[8] & 1) != 0 || v54 != *v56)
  {
    goto LABEL_35;
  }

  v57 = v48 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__taskPriority;
  swift_beginAccess();
  v58 = *v57;
  v59 = *(v57 + 8);
  v60 = v47 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__taskPriority;
  swift_beginAccess();
  if (v59)
  {
    if ((v60[8] & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((v60[8] & 1) != 0 || v58 != *v60)
  {
    goto LABEL_35;
  }

  v61 = (v48 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerName);
  swift_beginAccess();
  v62 = *v61;
  v63 = v61[1];
  v64 = (v47 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerName);
  swift_beginAccess();
  v65 = v64[1];
  if (v63)
  {
    if (!v65 || (v62 != *v64 || v63 != v65) && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v65)
  {
    goto LABEL_35;
  }

  v66 = v48 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing;
  swift_beginAccess();
  v67 = *v66;
  v68 = *(v66 + 9);
  v69 = v47 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing;
  swift_beginAccess();
  if (v68)
  {
    if ((v69[9] & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v69[9])
    {
      goto LABEL_35;
    }

    v75 = *v69;
    if (v69[8])
    {
      if (v75 <= 1)
      {
        if (!v75)
        {
          v48 = v135;
          v47 = v136;
          if (v67)
          {
            goto LABEL_35;
          }

          goto LABEL_57;
        }

        v76 = v67 == 1;
      }

      else if (v75 == 2)
      {
        v76 = v67 == 2;
      }

      else if (v75 == 3)
      {
        v76 = v67 == 3;
      }

      else
      {
        v76 = v67 == 4;
      }

      v48 = v135;
      v47 = v136;
      if (!v76)
      {
        goto LABEL_35;
      }

      goto LABEL_57;
    }

    if (v67 != v75)
    {
      goto LABEL_35;
    }
  }

LABEL_57:
  v70 = (v48 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelName[0]);
  swift_beginAccess();
  v71 = *v70;
  v72 = v70[1];
  v73 = (v47 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelName[0]);
  swift_beginAccess();
  v74 = v73[1];
  if (v72)
  {
    if (!v74 || (v71 != *v73 || v72 != v74) && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v74)
  {
    goto LABEL_35;
  }

  v77 = (v48 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelVersion);
  swift_beginAccess();
  v78 = *v77;
  v79 = v77[1];
  v80 = (v47 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelVersion);
  swift_beginAccess();
  v81 = v80[1];
  if (v79)
  {
    if (!v81 || (v78 != *v80 || v79 != v81) && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v81)
  {
    goto LABEL_35;
  }

  v82 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale;
  swift_beginAccess();
  v83 = *(v48 + v82);
  v84 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale;
  swift_beginAccess();
  if ((sub_21D0021AC(v83, *(v47 + v84)) & 1) == 0)
  {
    goto LABEL_35;
  }

  v85 = (v135 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerName);
  swift_beginAccess();
  v86 = *v85;
  v87 = v85[1];
  v88 = (v136 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerName);
  swift_beginAccess();
  v89 = v88[1];
  if (v87)
  {
    if (!v89 || (v86 != *v88 || v87 != v89) && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v89)
  {
    goto LABEL_35;
  }

  v90 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizationOption;
  v91 = v135;
  swift_beginAccess();
  v92 = v132;
  sub_21CF7F198(v91 + v90, v132, &qword_27CE46308, &unk_21D02CAD0);
  v93 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizationOption;
  v94 = v136;
  swift_beginAccess();
  v95 = *(v128 + 48);
  v96 = v92;
  v97 = v133;
  sub_21CF7F198(v96, v133, &qword_27CE46308, &unk_21D02CAD0);
  sub_21CF7F198(v94 + v93, v97 + v95, &qword_27CE46308, &unk_21D02CAD0);
  v98 = *(v130 + 48);
  if (v98(v97, 1, v131) == 1)
  {
    sub_21CF7F200(v132, &qword_27CE46308, &unk_21D02CAD0);
    if (v98(v133 + v95, 1, v131) == 1)
    {
      sub_21CF7F200(v133, &qword_27CE46308, &unk_21D02CAD0);
      goto LABEL_104;
    }

LABEL_101:
    sub_21CF7F200(v133, &qword_27CE46318, &qword_21D02CAE0);
    goto LABEL_35;
  }

  v99 = v133;
  sub_21CF7F198(v133, v129, &qword_27CE46308, &unk_21D02CAD0);
  if (v98(v99 + v95, 1, v131) == 1)
  {
    sub_21CF7F200(v132, &qword_27CE46308, &unk_21D02CAD0);
    sub_21D000B58(v129, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions);
    goto LABEL_101;
  }

  v100 = v133;
  v101 = v133 + v95;
  v102 = v127;
  sub_21D000BB8(v101, v127, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions);
  v103 = v129;
  v104 = sub_21D00956C(v129, v102);
  sub_21D000B58(v102, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions);
  sub_21CF7F200(v132, &qword_27CE46308, &unk_21D02CAD0);
  sub_21D000B58(v103, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions);
  sub_21CF7F200(v100, &qword_27CE46308, &unk_21D02CAD0);
  if ((v104 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_104:
  v105 = (v135 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID);
  swift_beginAccess();
  v106 = *v105;
  v107 = v105[1];
  v108 = (v136 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID);
  swift_beginAccess();
  v109 = v108[1];
  if (v107)
  {
    if (!v109 || (v106 != *v108 || v107 != v109) && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v109)
  {
    goto LABEL_35;
  }

  v110 = (v135 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerVersion);
  swift_beginAccess();
  v111 = *v110;
  v112 = v110[1];
  v113 = (v136 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerVersion);
  swift_beginAccess();
  v114 = v113[1];
  if (v112)
  {
    if (!v114 || (v111 != *v113 || v112 != v114) && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v114)
  {
    goto LABEL_35;
  }

  v115 = (v135 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelAdaptorRefID);
  swift_beginAccess();
  v116 = *v115;
  v117 = v115[1];
  v118 = (v136 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelAdaptorRefID);
  swift_beginAccess();
  v119 = v118[1];
  if (v117)
  {
    if (!v119 || (v116 != *v118 || v117 != v119) && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v119)
  {
    goto LABEL_35;
  }

  v120 = (v135 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerVersion);
  swift_beginAccess();
  v121 = *v120;
  v122 = v120[1];
  v123 = (v136 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__imageTokenizerVersion);
  swift_beginAccess();
  v124 = v123[1];
  if (v122)
  {
    if (v124)
    {
      if (v121 == *v123 && v122 == v124)
      {
      }

      else
      {
        v125 = sub_21D022B24();

        if ((v125 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

LABEL_35:

    return 0;
  }

  if (v124)
  {

    return 0;
  }

  return 1;
}

uint64_t sub_21CFC705C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46300, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig, &unk_21D02C210);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFC70FC(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_28121CDB8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig, &unk_21D02C248);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFC7168(uint64_t a1, uint64_t a2)
{
  sub_21CFFCB6C(&qword_28121CDB8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig, &unk_21D02C248);

  return sub_21D021EF4();
}

uint64_t sub_21CFC7228()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53830);
  __swift_project_value_buffer(v0, qword_27CE53830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026270;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NO_PREPROCESSING";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ON_DEVICE";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DEPRECATED_ON_SERVER";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "ON_SERVER_TGI";
  *(v15 + 8) = 13;
  *(v15 + 16) = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFC74DC()
{
  result = MEMORY[0x223D3A110](0xD000000000000012, 0x800000021D02E850);
  qword_27CE53848 = 0xD000000000000027;
  unk_27CE53850 = 0x800000021D02E640;
  return result;
}

uint64_t sub_21CFC7550()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_2812213C8);
  __swift_project_value_buffer(v0, qword_2812213C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_21D026260;
  v4 = v41 + v3;
  v5 = v41 + v3 + v1[14];
  *(v41 + v3) = 1;
  *v5 = "num_completions";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_21D021FF4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "temperature";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "max_tokens";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "logprobs";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "length_penalty";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "frequency_penalty";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "random_seed";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "DEPRECATED_nucleus_sampling_threshold";
  *(v21 + 1) = 37;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "timeout_secs";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "stop_sequences";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "DEPRECATED_top_k";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "DEPRECATED_arg_max";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 19;
  *v30 = "disable_stop_sequences_check";
  *(v30 + 1) = 28;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "arg_max";
  *(v32 + 1) = 7;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "nucleus_sampling";
  *(v34 + 1) = 16;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "top_k";
  *(v36 + 1) = 5;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "draft_steps";
  *(v37 + 8) = 11;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "constraints";
  *(v39 + 1) = 11;
  v39[16] = 2;
  v8();
  return sub_21D022004();
}

uint64_t sub_21CFC7B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
      case 5:
      case 12:
      case 13:
      case 17:
        type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
        sub_21D021E54();
        break;
      case 3:
      case 6:
      case 7:
        type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
        sub_21D021DE4();
        break;
      case 8:
        type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
        sub_21D021E64();
        break;
      case 9:
      case 10:
        type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
        sub_21D021E34();
        break;
      case 11:
        sub_21D021E14();
        break;
      case 14:
        sub_21CFC7D94(a1, v5, a2, a3);
        break;
      case 15:
        sub_21CFC7F7C(v5, a1, a2, a3);
        break;
      case 16:
        sub_21CFC8544(v5, a1, a2, a3);
        break;
      case 18:
        sub_21CFC8B0C(a1, v5, a2, a3);
        break;
      case 19:
        type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
        sub_21D021D94();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_21CFC7D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v18 = 2;
  result = sub_21D021D94();
  if (!v4 && v18 != 2)
  {
    v17 = v18;
    v16 = 0;
    v10 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 20);
    sub_21CF7F198(a2 + v10, v8, &qword_27CE452B8, &qword_21D023678);
    v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v8, 1, v11);
    sub_21CF7F200(v8, &qword_27CE452B8, &qword_21D023678);
    if (v13 != 1)
    {
      v14 = v16;
      result = sub_21D021D84();
      if (v14)
      {
        return result;
      }

      v16 = 0;
    }

    sub_21CF7F200(a2 + v10, &qword_27CE452B8, &qword_21D023678);
    *(a2 + v10) = v17 & 1;
    swift_storeEnumTagMultiPayload();
    return (*(v12 + 56))(a2 + v10, 0, 1, v11);
  }

  return result;
}

uint64_t sub_21CFC7F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46358, &qword_21D02CB18);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 20);
  v43 = a1;
  v41 = v28;
  sub_21CF7F198(a1 + v28, v12, &qword_27CE452B8, &qword_21D023678);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_21CF7F200(v12, &qword_27CE452B8, &qword_21D023678);
    v30 = v13;
  }

  else
  {
    sub_21D000BB8(v12, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
    sub_21D000BB8(v19, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CF7F200(v24, &qword_27CE46358, &qword_21D02CB18);
      v31 = v17;
      v32 = v45;
      sub_21D000BB8(v31, v45, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
      sub_21D000BB8(v32, v24, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
      v33 = v49;
      v27(v24, 0, 1, v49);
      goto LABEL_7;
    }

    sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
  }

  v33 = v49;
LABEL_7:
  v34 = v47;
  sub_21CFFCB6C(&qword_27CE461D8, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling, &unk_21D02C680);
  v35 = v48;
  sub_21D021E84();
  if (v35)
  {
    return sub_21CF7F200(v24, &qword_27CE46358, &qword_21D02CB18);
  }

  sub_21CF7F198(v24, v34, &qword_27CE46358, &qword_21D02CB18);
  if ((*(v46 + 48))(v34, 1, v33) == 1)
  {
    sub_21CF7F200(v24, &qword_27CE46358, &qword_21D02CB18);
    return sub_21CF7F200(v34, &qword_27CE46358, &qword_21D02CB18);
  }

  else
  {
    v37 = v44;
    sub_21D000BB8(v34, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
    if (v29 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v24, &qword_27CE46358, &qword_21D02CB18);
    v38 = v43;
    v39 = v41;
    sub_21CF7F200(v43 + v41, &qword_27CE452B8, &qword_21D023678);
    sub_21D000BB8(v37, v38 + v39, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t sub_21CFC8544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46360, &qword_21D02CB20);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0) + 20);
  v43 = a1;
  v41 = v28;
  sub_21CF7F198(a1 + v28, v12, &qword_27CE452B8, &qword_21D023678);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_21CF7F200(v12, &qword_27CE452B8, &qword_21D023678);
    v30 = v13;
  }

  else
  {
    sub_21D000BB8(v12, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
    sub_21D000BB8(v19, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_21CF7F200(v24, &qword_27CE46360, &qword_21D02CB20);
      v31 = v17;
      v32 = v45;
      sub_21D000BB8(v31, v45, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
      sub_21D000BB8(v32, v24, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
      v33 = v49;
      v27(v24, 0, 1, v49);
      goto LABEL_7;
    }

    sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
  }

  v33 = v49;
LABEL_7:
  v34 = v47;
  sub_21CFFCB6C(&qword_28121CC58, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling, &unk_21D02C518);
  v35 = v48;
  sub_21D021E84();
  if (v35)
  {
    return sub_21CF7F200(v24, &qword_27CE46360, &qword_21D02CB20);
  }

  sub_21CF7F198(v24, v34, &qword_27CE46360, &qword_21D02CB20);
  if ((*(v46 + 48))(v34, 1, v33) == 1)
  {
    sub_21CF7F200(v24, &qword_27CE46360, &qword_21D02CB20);
    return sub_21CF7F200(v34, &qword_27CE46360, &qword_21D02CB20);
  }

  else
  {
    v37 = v44;
    sub_21D000BB8(v34, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
    if (v29 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v24, &qword_27CE46360, &qword_21D02CB20);
    v38 = v43;
    v39 = v41;
    sub_21CF7F200(v43 + v41, &qword_27CE452B8, &qword_21D023678);
    sub_21D000BB8(v37, v38 + v39, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t sub_21CFC8B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints(0);
  sub_21CFFCB6C(qword_28121D358, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints, &unk_21D029520);
  return sub_21D021E84();
}

uint64_t sub_21CFC8BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  result = sub_21CFCA508(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions, 1, MEMORY[0x277D21860]);
  if (!v4)
  {
    sub_21CFC8F64(v3, a1, a2, a3);
    sub_21CFCA59C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions, 4, MEMORY[0x277D21860]);
    sub_21CFC8FDC(v3, a1, a2, a3);
    sub_21CFC9054(v3, a1, a2, a3);
    sub_21CFC90CC(v3, a1, a2, a3);
    sub_21CFC9144(v3, a1, a2, a3);
    sub_21CFC91BC(v3, a1, a2, a3);
    sub_21CFC9234(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      sub_21D021F84();
    }

    sub_21CFC92AC(v3, a1, a2, a3);
    sub_21CFC9324(v3, a1, a2, a3);
    v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
    sub_21CF7F198(v3 + *(v12 + 20), v10, &qword_27CE452B8, &qword_21D023678);
    v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
    if ((*(*(v13 - 8) + 48))(v10, 1, v13) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_21CFC9508(v3, a1, a2, a3);
        }

        else
        {
          sub_21CFC974C(v3, a1, a2, a3);
        }

        sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
      }

      else
      {
        sub_21CFC939C(v3, a1, a2, a3);
      }
    }

    sub_21CFC9990(v3, a1, a2, a3);
    sub_21CFC9A08(v3, a1, a2, a3);
    sub_21CFC9C24(v3, a1, a2, a3);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFC8F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  if ((*(a1 + *(result + 32) + 4) & 1) == 0)
  {
    return sub_21D021F64();
  }

  return result;
}

uint64_t sub_21CFC8FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  if ((*(a1 + *(result + 40) + 4) & 1) == 0)
  {
    return sub_21D021FB4();
  }

  return result;
}

uint64_t sub_21CFC9054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  if ((*(a1 + *(result + 44) + 4) & 1) == 0)
  {
    return sub_21D021F64();
  }

  return result;
}

uint64_t sub_21CFC90CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  if ((*(a1 + *(result + 48) + 4) & 1) == 0)
  {
    return sub_21D021F64();
  }

  return result;
}

uint64_t sub_21CFC9144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  if ((*(a1 + *(result + 52) + 8) & 1) == 0)
  {
    return sub_21D021FC4();
  }

  return result;
}

uint64_t sub_21CFC91BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  if ((*(a1 + *(result + 56) + 8) & 1) == 0)
  {
    return sub_21D021F94();
  }

  return result;
}

uint64_t sub_21CFC9234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  if ((*(a1 + *(result + 60) + 8) & 1) == 0)
  {
    return sub_21D021F94();
  }

  return result;
}

uint64_t sub_21CFC92AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  if ((*(a1 + *(result + 64) + 4) & 1) == 0)
  {
    return sub_21D021FB4();
  }

  return result;
}

uint64_t sub_21CFC9324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  if ((*(a1 + *(result + 68) + 4) & 1) == 0)
  {
    return sub_21D021FB4();
  }

  return result;
}

uint64_t sub_21CFC939C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  sub_21CF7F198(a1 + *(v8 + 20), v7, &qword_27CE452B8, &qword_21D023678);
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_21CF7F200(v7, &qword_27CE452B8, &qword_21D023678);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    return sub_21D021F34();
  }

  result = sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
  __break(1u);
  return result;
}

uint64_t sub_21CFC9508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  sub_21CF7F198(a1 + *(v11 + 20), v7, &qword_27CE452B8, &qword_21D023678);
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_21CF7F200(v7, &qword_27CE452B8, &qword_21D023678);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D000BB8(v7, v10, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
    sub_21CFFCB6C(&qword_27CE461D8, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling, &unk_21D02C680);
    sub_21D021FE4();
    return sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
  }

  result = sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
  __break(1u);
  return result;
}

uint64_t sub_21CFC974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  sub_21CF7F198(a1 + *(v11 + 20), v7, &qword_27CE452B8, &qword_21D023678);
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_21CF7F200(v7, &qword_27CE452B8, &qword_21D023678);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_21D000BB8(v7, v10, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
    sub_21CFFCB6C(&qword_28121CC58, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling, &unk_21D02C518);
    sub_21D021FE4();
    return sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
  }

  result = sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
  __break(1u);
  return result;
}

uint64_t sub_21CFC9990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  if ((*(a1 + *(result + 76) + 4) & 1) == 0)
  {
    return sub_21D021FB4();
  }

  return result;
}

uint64_t sub_21CFC9A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452D8, "ҷ");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  sub_21CF7F198(a1 + *(v12 + 80), v7, &qword_27CE452D8, "ҷ");
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_21CF7F200(v7, &qword_27CE452D8, "ҷ");
  }

  sub_21D000BB8(v7, v11, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);
  sub_21CFFCB6C(qword_28121D358, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints, &unk_21D029520);
  sub_21D021FE4();
  return sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);
}

uint64_t sub_21CFC9C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  if (*(a1 + *(result + 72)) != 2)
  {
    return sub_21D021F34();
  }

  return result;
}

uint64_t sub_21CFC9D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46350, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions, &unk_21D02C080);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFC9DC0(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121CEA8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions, &unk_21D02C0B8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFC9E2C(uint64_t a1, uint64_t a2)
{
  sub_21CFFCB6C(qword_28121CEA8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions, &unk_21D02C0B8);

  return sub_21D021EF4();
}

uint64_t sub_21CFC9EA8()
{
  result = MEMORY[0x223D3A110](0xD000000000000019, 0x800000021D02E9C0);
  qword_27CE53858 = 0xD000000000000027;
  unk_27CE53860 = 0x800000021D02E640;
  return result;
}

uint64_t sub_21CFC9F1C()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53868);
  __swift_project_value_buffer(v0, qword_27CE53868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21D026270;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "resolution_width_in_pixels";
  *(v5 + 8) = 26;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_21D021FF4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "tokenize_mode";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "num_sub_images_min";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "num_sub_images_max";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "patch_width_in_pixel";
  *(v14 + 8) = 20;
  *(v14 + 16) = 2;
  v8();
  return sub_21D022004();
}

uint64_t sub_21CFCA1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_21D021D74();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          sub_21CFE4ED0(a1, v5, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, sub_21D00BCB0, &type metadata for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions.TokenizeMode);
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
LABEL_4:
        type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions(0);
        sub_21D021E54();
      }

      result = sub_21D021D74();
    }
  }

  return result;
}

uint64_t sub_21CFCA2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFCA484(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, MEMORY[0x277D21860]);
  if (!v4)
  {
    sub_21CFE5638(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, sub_21D00BCB0, 2, &type metadata for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions.TokenizeMode);
    sub_21CFCA508(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, 3, MEMORY[0x277D21860]);
    sub_21CFE6378(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, MEMORY[0x277D21860]);
    sub_21CFCA59C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, 5, MEMORY[0x277D21860]);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFCA484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = a5(0);
  v11 = (a1 + *(result + 20));
  if ((v11[1] & 1) == 0)
  {
    return a6(*v11, 1, a3, a4);
  }

  return result;
}

uint64_t sub_21CFCA508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  result = a5(0);
  v13 = (a1 + *(result + 28));
  if ((v13[1] & 1) == 0)
  {
    return a7(*v13, a6, a3, a4);
  }

  return result;
}

uint64_t sub_21CFCA59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  result = a5(0);
  v13 = (a1 + *(result + 36));
  if ((v13[1] & 1) == 0)
  {
    return a7(*v13, a6, a3, a4);
  }

  return result;
}

uint64_t sub_21CFCA634@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 256;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t sub_21CFCA704(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46368, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, &unk_21D02BF18);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFCA7A4(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE46168, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, &unk_21D02BF50);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFCA810(uint64_t a1, uint64_t a2)
{
  sub_21CFFCB6C(&qword_27CE46168, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions, &unk_21D02BF50);

  return sub_21D021EF4();
}

uint64_t sub_21CFCA88C()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53880);
  __swift_project_value_buffer(v0, qword_27CE53880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0252E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FAST";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ACCURATE";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFCAAC0()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_2812212D8);
  __swift_project_value_buffer(v0, qword_2812212D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_21D026280;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v5 = "prompt";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21D021FF4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v34 + v3 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "data";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v34 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "model_config";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v34 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "prompts";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v34 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "include_perf_metrics";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v34 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "request_metadata";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v34 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "delimiters";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v34 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "prompt_template";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = v34 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "attachment";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "streaming_config";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 13;
  *v26 = "media_header";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v8();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 14;
  *v28 = "media_chunk";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 15;
  *v30 = "streaming_end";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 16;
  *v32 = "mode";
  *(v32 + 1) = 4;
  v32[16] = 2;
  v8();
  return sub_21D022004();
}

uint64_t sub_21CFCAFC8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

char *sub_21CFCB01C()
{
  *(v0 + 2) = 0;
  *(v0 + 3) = 0;
  *(v0 + 4) = 0;
  *(v0 + 5) = 0xF000000000000000;
  v1 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  v2 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__prompts] = MEMORY[0x277D84F90];
  v0[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__includePerfMetrics] = 2;
  v4 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0);
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  *&v0[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters] = v3;
  v6 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__promptTemplate;
  v7 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate(0);
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  *&v0[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__attachment] = v3;
  v8 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  (*(*(v9 - 8) + 56))(&v0[v8], 1, 1, v9);
  v10 = &v0[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__mode];
  *v10 = 0;
  *(v10 + 4) = 256;
  return v0;
}

void *sub_21CFCB1C4()
{

  sub_21CF94FCC(*(v0 + 32), *(v0 + 40));
  sub_21CF7F200(v0 + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig, &qword_27CE452B0, &qword_21D023670);

  sub_21CF7F200(v0 + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata, &qword_27CE45290, &qword_21D023650);

  sub_21CF7F200(v0 + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__promptTemplate, &qword_27CE46390, &qword_21D02CB30);

  sub_21CF7F200(v0 + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType, &qword_27CE46380, &qword_21D02CB28);
  return v0;
}

uint64_t sub_21CFCB2B4(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_21CFCB334(uint64_t a1)
{
  sub_21CFC4EC8(319, qword_28121CD70, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21CFC4EC8(319, qword_28121C2A0, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21CFC4EC8(319, qword_28121C5F8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21CFC4EC8(319, &qword_27CE45A38, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_21CFCB5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    swift_allocObject();
    v12 = sub_21D00E8C4(v11);

    *(v4 + v8) = v12;
    v10 = v12;
  }

  return sub_21CFCB6A8(v10, a1, a2, a3);
}

uint64_t sub_21CFCB6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_21D021D74();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_21CFE16C4(a2, a1, a3, a4);
          break;
        case 3:
          sub_21CFE1748(a2, a1, a3, a4, MEMORY[0x277D21760]);
          break;
        case 4:
          sub_21CFCB910(a2, a1, a3, a4);
          break;
        case 5:
          sub_21CFCB9EC(a2, a1, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__prompts);
          break;
        case 6:
          sub_21CFCBA74(a2, a1, a3, a4);
          break;
        case 7:
          sub_21CFCBB00(a2, a1, a3, a4);
          break;
        case 8:
          sub_21CFCBBDC(a2, a1, a3, a4);
          break;
        case 9:
          sub_21CFCBCB8(a2, a1, a3, a4);
          break;
        case 10:
          sub_21CFCBD94(a2, a1, a3, a4);
          break;
        case 12:
          sub_21CFCBE70(a1, a2, a3, a4);
          break;
        case 13:
          sub_21CFCC490(a1, a2, a3, a4);
          break;
        case 14:
          sub_21CFCCAAC(a1, a2, a3, a4);
          break;
        case 15:
          sub_21CFCD0C8(a1, a2, a3, a4);
          break;
        case 16:
          sub_21CFCD6E4(a2, a1, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__mode, sub_21D00BD04, &type metadata for Apple_Cloudml_Inference_Tie_GenerateRequest.Mode);
          break;
        default:
          break;
      }

      result = sub_21D021D74();
    }
  }

  return result;
}

uint64_t sub_21CFCB910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig(0);
  sub_21CFFCB6C(&qword_28121CDB8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig, &unk_21D02C248);
  sub_21D021E84();
  return swift_endAccess();
}

uint64_t sub_21CFCB9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_21D021E14();
  return swift_endAccess();
}

uint64_t sub_21CFCBA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21D021D94();
  return swift_endAccess();
}

uint64_t sub_21CFCBB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0);
  sub_21CFFCB6C(&qword_28121C2F8, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata, &unk_21D029688);
  sub_21D021E84();
  return swift_endAccess();
}

uint64_t sub_21CFCBBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter(0);
  sub_21CFFCB6C(&qword_28121C4D8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter, &unk_21D02BC30);
  sub_21D021E74();
  return swift_endAccess();
}

uint64_t sub_21CFCBCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate(0);
  sub_21CFFCB6C(&qword_28121C640, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate, &unk_21D028CB0);
  sub_21D021E84();
  return swift_endAccess();
}

uint64_t sub_21CFCBD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment(0);
  sub_21CFFCB6C(&qword_27CE46118, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment, &unk_21D02B960);
  sub_21D021E74();
  return swift_endAccess();
}

uint64_t sub_21CFCBE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46398, &qword_21D02CB38);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v48 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v39 - v25;
  v47 = v6;
  v27 = *(v6 + 56);
  v50 = v5;
  v43 = v27;
  v27(&v39 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  v42 = a1;
  sub_21CF7F198(a1 + v28, v14, &qword_27CE46380, &qword_21D02CB28);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  v45 = v15;
  if (v29 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE46380, &qword_21D02CB28);
    v30 = v50;
  }

  else
  {
    sub_21D000BB8(v14, v21, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    sub_21D000BB8(v21, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_21D000B58(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
      v30 = v50;
    }

    else
    {
      sub_21CF7F200(v26, &qword_27CE46398, &qword_21D02CB38);
      v31 = v44;
      sub_21D000BB8(v19, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);
      sub_21D000BB8(v31, v26, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);
      v30 = v50;
      v43(v26, 0, 1, v50);
    }
  }

  v32 = v48;
  sub_21CFFCB6C(&qword_27CE45D78, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig, &unk_21D027FE0);
  v33 = v49;
  sub_21D021E84();
  if (v33)
  {
    return sub_21CF7F200(v26, &qword_27CE46398, &qword_21D02CB38);
  }

  sub_21CF7F198(v26, v32, &qword_27CE46398, &qword_21D02CB38);
  if ((*(v47 + 48))(v32, 1, v30) == 1)
  {
    sub_21CF7F200(v26, &qword_27CE46398, &qword_21D02CB38);
    return sub_21CF7F200(v32, &qword_27CE46398, &qword_21D02CB38);
  }

  else
  {
    v35 = v46;
    sub_21D000BB8(v32, v46, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);
    if (v29 != 1)
    {
      sub_21D021D84();
    }

    v36 = v45;
    sub_21CF7F200(v26, &qword_27CE46398, &qword_21D02CB38);
    v37 = v41;
    sub_21D000BB8(v35, v41, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);
    swift_storeEnumTagMultiPayload();
    (*(v40 + 56))(v37, 0, 1, v36);
    v38 = v42;
    swift_beginAccess();
    sub_21CF8F4D4(v37, v38 + v28, &qword_27CE46380, &qword_21D02CB28);
    return swift_endAccess();
  }
}

uint64_t sub_21CFCC490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463A0, &qword_21D02CB40);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v46 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v37 - v25;
  v45 = v6;
  v27 = *(v6 + 56);
  v48 = v5;
  v43 = v27;
  v27(&v37 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  v40 = a1;
  sub_21CF7F198(a1 + v28, v14, &qword_27CE46380, &qword_21D02CB28);
  v38 = v16;
  v41 = (*(v16 + 48))(v14, 1, v15);
  if (v41 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE46380, &qword_21D02CB28);
  }

  else
  {
    sub_21D000BB8(v14, v21, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    sub_21D000BB8(v21, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CF7F200(v26, &qword_27CE463A0, &qword_21D02CB40);
      v29 = v44;
      sub_21D000BB8(v19, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
      sub_21D000BB8(v29, v26, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
      v30 = v48;
      v43(v26, 0, 1, v48);
      goto LABEL_7;
    }

    sub_21D000B58(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  }

  v30 = v48;
LABEL_7:
  v31 = v46;
  sub_21CFFCB6C(&qword_27CE45D38, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader, &unk_21D027D10);
  v32 = v47;
  sub_21D021E84();
  if (v32)
  {
    return sub_21CF7F200(v26, &qword_27CE463A0, &qword_21D02CB40);
  }

  sub_21CF7F198(v26, v31, &qword_27CE463A0, &qword_21D02CB40);
  if ((*(v45 + 48))(v31, 1, v30) == 1)
  {
    sub_21CF7F200(v26, &qword_27CE463A0, &qword_21D02CB40);
    return sub_21CF7F200(v31, &qword_27CE463A0, &qword_21D02CB40);
  }

  else
  {
    v34 = v42;
    sub_21D000BB8(v31, v42, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
    if (v41 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v26, &qword_27CE463A0, &qword_21D02CB40);
    v35 = v39;
    sub_21D000BB8(v34, v39, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
    swift_storeEnumTagMultiPayload();
    (*(v38 + 56))(v35, 0, 1, v15);
    v36 = v40;
    swift_beginAccess();
    sub_21CF8F4D4(v35, v36 + v28, &qword_27CE46380, &qword_21D02CB28);
    return swift_endAccess();
  }
}

uint64_t sub_21CFCCAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463A8, &qword_21D02CB48);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v46 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v37 - v25;
  v45 = v6;
  v27 = *(v6 + 56);
  v48 = v5;
  v43 = v27;
  v27(&v37 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  v40 = a1;
  sub_21CF7F198(a1 + v28, v14, &qword_27CE46380, &qword_21D02CB28);
  v38 = v16;
  v41 = (*(v16 + 48))(v14, 1, v15);
  if (v41 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE46380, &qword_21D02CB28);
  }

  else
  {
    sub_21D000BB8(v14, v21, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    sub_21D000BB8(v21, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_21CF7F200(v26, &qword_27CE463A8, &qword_21D02CB48);
      v29 = v44;
      sub_21D000BB8(v19, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
      sub_21D000BB8(v29, v26, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
      v30 = v48;
      v43(v26, 0, 1, v48);
      goto LABEL_7;
    }

    sub_21D000B58(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  }

  v30 = v48;
LABEL_7:
  v31 = v46;
  sub_21CFFCB6C(&qword_27CE45D18, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk, &unk_21D027BA8);
  v32 = v47;
  sub_21D021E84();
  if (v32)
  {
    return sub_21CF7F200(v26, &qword_27CE463A8, &qword_21D02CB48);
  }

  sub_21CF7F198(v26, v31, &qword_27CE463A8, &qword_21D02CB48);
  if ((*(v45 + 48))(v31, 1, v30) == 1)
  {
    sub_21CF7F200(v26, &qword_27CE463A8, &qword_21D02CB48);
    return sub_21CF7F200(v31, &qword_27CE463A8, &qword_21D02CB48);
  }

  else
  {
    v34 = v42;
    sub_21D000BB8(v31, v42, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
    if (v41 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v26, &qword_27CE463A8, &qword_21D02CB48);
    v35 = v39;
    sub_21D000BB8(v34, v39, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
    swift_storeEnumTagMultiPayload();
    (*(v38 + 56))(v35, 0, 1, v15);
    v36 = v40;
    swift_beginAccess();
    sub_21CF8F4D4(v35, v36 + v28, &qword_27CE46380, &qword_21D02CB28);
    return swift_endAccess();
  }
}

uint64_t sub_21CFCD0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463B0, &qword_21D02CB50);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v46 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v37 - v25;
  v45 = v6;
  v27 = *(v6 + 56);
  v48 = v5;
  v43 = v27;
  v27(&v37 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  v40 = a1;
  sub_21CF7F198(a1 + v28, v14, &qword_27CE46380, &qword_21D02CB28);
  v38 = v16;
  v41 = (*(v16 + 48))(v14, 1, v15);
  if (v41 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE46380, &qword_21D02CB28);
  }

  else
  {
    sub_21D000BB8(v14, v21, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    sub_21D000BB8(v21, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_21CF7F200(v26, &qword_27CE463B0, &qword_21D02CB50);
      v29 = v44;
      sub_21D000BB8(v19, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);
      sub_21D000BB8(v29, v26, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);
      v30 = v48;
      v43(v26, 0, 1, v48);
      goto LABEL_7;
    }

    sub_21D000B58(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  }

  v30 = v48;
LABEL_7:
  v31 = v46;
  sub_21CFFCB6C(&qword_27CE45D58, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd, &unk_21D027E78);
  v32 = v47;
  sub_21D021E84();
  if (v32)
  {
    return sub_21CF7F200(v26, &qword_27CE463B0, &qword_21D02CB50);
  }

  sub_21CF7F198(v26, v31, &qword_27CE463B0, &qword_21D02CB50);
  if ((*(v45 + 48))(v31, 1, v30) == 1)
  {
    sub_21CF7F200(v26, &qword_27CE463B0, &qword_21D02CB50);
    return sub_21CF7F200(v31, &qword_27CE463B0, &qword_21D02CB50);
  }

  else
  {
    v34 = v42;
    sub_21D000BB8(v31, v42, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);
    if (v41 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v26, &qword_27CE463B0, &qword_21D02CB50);
    v35 = v39;
    sub_21D000BB8(v34, v39, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);
    swift_storeEnumTagMultiPayload();
    (*(v38 + 56))(v35, 0, 1, v15);
    v36 = v40;
    swift_beginAccess();
    sub_21CF8F4D4(v35, v36 + v28, &qword_27CE46380, &qword_21D02CB28);
    return swift_endAccess();
  }
}

uint64_t sub_21CFCD6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t), uint64_t a7)
{
  v8 = swift_beginAccess();
  a6(v8);
  sub_21D021DA4();
  return swift_endAccess();
}

uint64_t sub_21CFCD7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_21D021CD4();
  }

  return result;
}

void sub_21CFCD84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18[-v10];
  sub_21CFE1D28(a1, a2, a3, a4);
  if (!v4)
  {
    sub_21CFCDCBC(a1, a2, a3, a4);
    sub_21CFCDD68(a1, a2, a3, a4);
    v12 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__prompts;
    swift_beginAccess();
    if (*(*(a1 + v12) + 16))
    {

      sub_21D021F84();
    }

    sub_21CFCDF90(a1, a2, a3, a4);
    sub_21CFCE020(a1, a2, a3, a4);
    v13 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters;
    swift_beginAccess();
    if (*(*(a1 + v13) + 16))
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter(0);
      sub_21CFFCB6C(&qword_28121C4D8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter, &unk_21D02BC30);

      sub_21D021FD4();
    }

    sub_21CFCE248(a1, a2, a3, a4);
    v14 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__attachment;
    swift_beginAccess();
    if (*(*(a1 + v14) + 16))
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment(0);
      sub_21CFFCB6C(&qword_27CE46118, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment, &unk_21D02B960);

      sub_21D021FD4();
    }

    v15 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
    swift_beginAccess();
    sub_21CF7F198(a1 + v15, v11, &qword_27CE46380, &qword_21D02CB28);
    v16 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
    if ((*(*(v16 - 8) + 48))(v11, 1, v16) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_21CFCE91C(a1, a2, a3, a4);
        }

        else
        {
          sub_21CFCEB74(a1, a2, a3, a4);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        sub_21CFCE6C4(a1, a2, a3, a4);
      }

      else
      {
        sub_21CFCE470(a1, a2, a3, a4);
      }

      sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    }

    sub_21CFCEDCC(a1, a2, a3, a4, &OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__mode, sub_21D00BD04, 16, &type metadata for Apple_Cloudml_Inference_Tie_GenerateRequest.Mode);
  }
}

void sub_21CFCDCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v5 = *(a1 + 40);
  if (v5 >> 60 != 15)
  {
    v6 = *(a1 + 32);
    sub_21CF8F3E0(v6, v5);
    sub_21D021F54();
    sub_21CF94FCC(v6, v5);
  }
}

uint64_t sub_21CFCDD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B0, &qword_21D023670);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF7F198(a1 + v12, v7, &qword_27CE452B0, &qword_21D023670);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_21CF7F200(v7, &qword_27CE452B0, &qword_21D023670);
  }

  sub_21D000BB8(v7, v11, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  sub_21CFFCB6C(&qword_28121CDB8, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig, &unk_21D02C248);
  sub_21D021FE4();
  return sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
}

void sub_21CFCDF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__includePerfMetrics;
  swift_beginAccess();
  if (*(a1 + v5) != 2)
  {
    sub_21D021F34();
  }
}

uint64_t sub_21CFCE020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45290, &qword_21D023650);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
  swift_beginAccess();
  sub_21CF7F198(a1 + v12, v7, &qword_27CE45290, &qword_21D023650);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_21CF7F200(v7, &qword_27CE45290, &qword_21D023650);
  }

  sub_21D000BB8(v7, v11, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
  sub_21CFFCB6C(&qword_28121C2F8, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata, &unk_21D029688);
  sub_21D021FE4();
  return sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
}

uint64_t sub_21CFCE248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46390, &qword_21D02CB30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__promptTemplate;
  swift_beginAccess();
  sub_21CF7F198(a1 + v12, v7, &qword_27CE46390, &qword_21D02CB30);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_21CF7F200(v7, &qword_27CE46390, &qword_21D02CB30);
  }

  sub_21D000BB8(v7, v11, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
  sub_21CFFCB6C(&qword_28121C640, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate, &unk_21D028CB0);
  sub_21D021FE4();
  return sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
}

uint64_t sub_21CFCE470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  sub_21CF7F198(a1 + v11, v7, &qword_27CE46380, &qword_21D02CB28);
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_21CF7F200(v7, &qword_27CE46380, &qword_21D02CB28);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_21D000BB8(v7, v10, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);
    sub_21CFFCB6C(&qword_27CE45D78, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig, &unk_21D027FE0);
    sub_21D021FE4();
    return sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);
  }

  result = sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  __break(1u);
  return result;
}

uint64_t sub_21CFCE6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  sub_21CF7F198(a1 + v11, v7, &qword_27CE46380, &qword_21D02CB28);
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_21CF7F200(v7, &qword_27CE46380, &qword_21D02CB28);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D000BB8(v7, v10, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
    sub_21CFFCB6C(&qword_27CE45D38, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader, &unk_21D027D10);
    sub_21D021FE4();
    return sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
  }

  result = sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  __break(1u);
  return result;
}

uint64_t sub_21CFCE91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  sub_21CF7F198(a1 + v11, v7, &qword_27CE46380, &qword_21D02CB28);
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_21CF7F200(v7, &qword_27CE46380, &qword_21D02CB28);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_21D000BB8(v7, v10, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
    sub_21CFFCB6C(&qword_27CE45D18, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk, &unk_21D027BA8);
    sub_21D021FE4();
    return sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
  }

  result = sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  __break(1u);
  return result;
}

uint64_t sub_21CFCEB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  sub_21CF7F198(a1 + v11, v7, &qword_27CE46380, &qword_21D02CB28);
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_21CF7F200(v7, &qword_27CE46380, &qword_21D02CB28);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_21D000BB8(v7, v10, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);
    sub_21CFFCB6C(&qword_27CE45D58, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd, &unk_21D027E78);
    sub_21D021FE4();
    return sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);
  }

  result = sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  __break(1u);
  return result;
}

void sub_21CFCEDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v9 = a1 + *a5;
  v10 = swift_beginAccess();
  if ((*(v9 + 9) & 1) == 0)
  {
    a6(v10);
    sub_21D021F44();
  }
}

uint64_t sub_21CFCEE90(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  v139 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v136 = &v132[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463B8, &qword_21D02CB58);
  MEMORY[0x28223BE20](v138);
  v7 = &v132[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v137 = &v132[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v141 = &v132[-v11];
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate(0);
  v144 = *(v12 - 8);
  v145 = v12;
  MEMORY[0x28223BE20](v12);
  v140 = &v132[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463C0, &qword_21D02CB60);
  MEMORY[0x28223BE20](v143);
  v146 = &v132[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46390, &qword_21D02CB30);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v142 = &v132[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v148 = &v132[-v18];
  v19 = type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0);
  v151 = *(v19 - 8);
  v152 = v19;
  MEMORY[0x28223BE20](v19);
  v147 = &v132[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463C8, &qword_21D02CB68);
  MEMORY[0x28223BE20](v150);
  v153 = &v132[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45290, &qword_21D023650);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v149 = &v132[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v154 = &v132[-v25];
  v26 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig(0);
  v157 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v155 = &v132[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463D0, &qword_21D02CB70);
  MEMORY[0x28223BE20](v28);
  v159 = &v132[-v29];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B0, &qword_21D023670);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v156 = &v132[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31);
  v34 = &v132[-v33];
  swift_beginAccess();
  v35 = a1[2];
  v36 = a1[3];
  swift_beginAccess();
  v37 = a2[3];
  if (v36)
  {
    if (!v37 || (v35 != a2[2] || v36 != v37) && (sub_21D022B24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  v134 = v7;
  v135 = v4;
  swift_beginAccess();
  v38 = a1[4];
  v39 = a1[5];
  v40 = a1;
  swift_beginAccess();
  v42 = a2[4];
  v41 = a2[5];
  v158 = a2;
  if (v39 >> 60 == 15)
  {
    if (v41 >> 60 == 15)
    {

      sub_21CF9EDB8(v38, v39);
      sub_21CF9EDB8(v42, v41);
      sub_21CF94FCC(v38, v39);
      goto LABEL_13;
    }

    sub_21CF9EDB8(v38, v39);
    sub_21CF9EDB8(v42, v41);
    goto LABEL_17;
  }

  sub_21CF9EDB8(v38, v39);
  sub_21CF9EDB8(v42, v41);
  if (v41 >> 60 == 15)
  {
LABEL_17:
    sub_21CF94FCC(v38, v39);
    sub_21CF94FCC(v42, v41);
    return 0;
  }

  sub_21CF9EDB8(v38, v39);
  sub_21CF9EDB8(v42, v41);
  v133 = sub_21D0035E0(v38, v39, v42, v41);
  sub_21CF94FCC(v42, v41);
  sub_21CF94FCC(v38, v39);
  sub_21CF94FCC(v42, v41);
  sub_21CF94FCC(v38, v39);
  if (!v133)
  {
    goto LABEL_52;
  }

LABEL_13:
  v43 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF7F198(v40 + v43, v34, &qword_27CE452B0, &qword_21D023670);
  v44 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v45 = *(v28 + 48);
  v46 = v159;
  sub_21CF7F198(v34, v159, &qword_27CE452B0, &qword_21D023670);
  v47 = v158 + v44;
  v48 = v158;
  v49 = v46;
  sub_21CF7F198(v47, &v46[v45], &qword_27CE452B0, &qword_21D023670);
  v50 = *(v157 + 48);
  v51 = v50(v46, 1, v26);
  v52 = v40;
  if (v51 == 1)
  {
    sub_21CF7F200(v34, &qword_27CE452B0, &qword_21D023670);
    v53 = v50((v49 + v45), 1, v26);
    v54 = v135;
    if (v53 == 1)
    {
      sub_21CF7F200(v49, &qword_27CE452B0, &qword_21D023670);
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  v55 = v156;
  sub_21CF7F198(v49, v156, &qword_27CE452B0, &qword_21D023670);
  v56 = v50((v49 + v45), 1, v26);
  v57 = v135;
  if (v56 == 1)
  {
    sub_21CF7F200(v34, &qword_27CE452B0, &qword_21D023670);
    sub_21D000B58(v55, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
LABEL_20:
    v58 = &qword_27CE463D0;
    v59 = &qword_21D02CB70;
    v60 = v49;
LABEL_21:
    sub_21CF7F200(v60, v58, v59);
LABEL_52:

    return 0;
  }

  v61 = v55;
  v62 = v155;
  sub_21D000BB8(v49 + v45, v155, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  v63 = *(v26 + 20);
  v64 = *&v61[v63];
  v65 = *&v62[v63];
  if (v64 != v65)
  {

    v66 = sub_21CFC6054(v64, v65);

    if ((v66 & 1) == 0)
    {
      sub_21D000B58(v62, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
      sub_21CF7F200(v34, &qword_27CE452B0, &qword_21D023670);
      sub_21D000B58(v156, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
      v60 = v159;
      v58 = &qword_27CE452B0;
      v59 = &qword_21D023670;
      goto LABEL_21;
    }
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v67 = v52;
  v68 = v57;
  v69 = v156;
  v70 = sub_21D022574();
  sub_21D000B58(v62, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  sub_21CF7F200(v34, &qword_27CE452B0, &qword_21D023670);
  v71 = v69;
  v54 = v68;
  v52 = v67;
  v48 = v158;
  sub_21D000B58(v71, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  sub_21CF7F200(v159, &qword_27CE452B0, &qword_21D023670);
  if ((v70 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  v72 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__prompts;
  swift_beginAccess();
  v73 = *(v52 + v72);
  v74 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__prompts;
  swift_beginAccess();
  if ((sub_21D0021AC(v73, *(v48 + v74)) & 1) == 0)
  {
    goto LABEL_52;
  }

  v75 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__includePerfMetrics;
  swift_beginAccess();
  v76 = *(v52 + v75);
  v77 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__includePerfMetrics;
  swift_beginAccess();
  v78 = *(v48 + v77);
  if (v76 == 2)
  {
    v79 = v154;
    if (v78 != 2)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v79 = v154;
    if (v78 == 2 || ((v76 ^ v78) & 1) != 0)
    {
      goto LABEL_52;
    }
  }

  v80 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
  swift_beginAccess();
  sub_21CF7F198(v52 + v80, v79, &qword_27CE45290, &qword_21D023650);
  v81 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
  swift_beginAccess();
  v82 = *(v150 + 48);
  v83 = v153;
  sub_21CF7F198(v79, v153, &qword_27CE45290, &qword_21D023650);
  sub_21CF7F198(v48 + v81, &v83[v82], &qword_27CE45290, &qword_21D023650);
  v84 = v152;
  v85 = *(v151 + 48);
  if (v85(v83, 1, v152) == 1)
  {
    sub_21CF7F200(v79, &qword_27CE45290, &qword_21D023650);
    if (v85(&v83[v82], 1, v84) == 1)
    {
      sub_21CF7F200(v83, &qword_27CE45290, &qword_21D023650);
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v86 = v149;
  sub_21CF7F198(v83, v149, &qword_27CE45290, &qword_21D023650);
  if (v85(&v83[v82], 1, v84) == 1)
  {
    sub_21CF7F200(v154, &qword_27CE45290, &qword_21D023650);
    sub_21D000B58(v86, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
LABEL_38:
    v58 = &qword_27CE463C8;
    v59 = &qword_21D02CB68;
    v60 = v83;
    goto LABEL_21;
  }

  v87 = &v83[v82];
  v88 = v147;
  sub_21D000BB8(v87, v147, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
  v89 = sub_21D006C84(v86, v88);
  sub_21D000B58(v88, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
  sub_21CF7F200(v154, &qword_27CE45290, &qword_21D023650);
  sub_21D000B58(v86, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
  sub_21CF7F200(v83, &qword_27CE45290, &qword_21D023650);
  if ((v89 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_40:
  v90 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters;
  swift_beginAccess();
  v91 = *(v52 + v90);
  v92 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters;
  swift_beginAccess();
  v93 = *(v48 + v92);

  v94 = sub_21D002450(v91, v93);

  if ((v94 & 1) == 0)
  {
    goto LABEL_52;
  }

  v95 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__promptTemplate;
  swift_beginAccess();
  v96 = v148;
  sub_21CF7F198(v52 + v95, v148, &qword_27CE46390, &qword_21D02CB30);
  v97 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__promptTemplate;
  swift_beginAccess();
  v98 = *(v143 + 48);
  v99 = v146;
  sub_21CF7F198(v96, v146, &qword_27CE46390, &qword_21D02CB30);
  sub_21CF7F198(v48 + v97, &v99[v98], &qword_27CE46390, &qword_21D02CB30);
  v100 = v145;
  v101 = *(v144 + 48);
  if (v101(v99, 1, v145) == 1)
  {
    sub_21CF7F200(v96, &qword_27CE46390, &qword_21D02CB30);
    if (v101(&v99[v98], 1, v100) == 1)
    {
      sub_21CF7F200(v99, &qword_27CE46390, &qword_21D02CB30);
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v102 = v142;
  sub_21CF7F198(v99, v142, &qword_27CE46390, &qword_21D02CB30);
  if (v101(&v99[v98], 1, v100) == 1)
  {
    sub_21CF7F200(v148, &qword_27CE46390, &qword_21D02CB30);
    sub_21D000B58(v102, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
LABEL_46:
    v58 = &qword_27CE463C0;
    v59 = &qword_21D02CB60;
    v60 = v99;
    goto LABEL_21;
  }

  v103 = &v99[v98];
  v104 = v140;
  sub_21D000BB8(v103, v140, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
  v105 = sub_21D0080E8(v102, v104);
  sub_21D000B58(v104, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
  sub_21CF7F200(v148, &qword_27CE46390, &qword_21D02CB30);
  sub_21D000B58(v102, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
  sub_21CF7F200(v99, &qword_27CE46390, &qword_21D02CB30);
  if ((v105 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_48:
  v106 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__attachment;
  swift_beginAccess();
  v107 = *(v52 + v106);
  v108 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__attachment;
  swift_beginAccess();
  v109 = *(v48 + v108);

  v110 = sub_21D002ADC(v107, v109);

  if ((v110 & 1) == 0)
  {
    goto LABEL_52;
  }

  v111 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  v112 = v141;
  sub_21CF7F198(v52 + v111, v141, &qword_27CE46380, &qword_21D02CB28);
  v113 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  v114 = *(v138 + 48);
  v115 = v134;
  sub_21CF7F198(v112, v134, &qword_27CE46380, &qword_21D02CB28);
  v116 = v48 + v113;
  v117 = v115;
  sub_21CF7F198(v116, v115 + v114, &qword_27CE46380, &qword_21D02CB28);
  v118 = *(v139 + 48);
  if (v118(v115, 1, v54) == 1)
  {
    sub_21CF7F200(v112, &qword_27CE46380, &qword_21D02CB28);
    if (v118(v115 + v114, 1, v54) == 1)
    {
      sub_21CF7F200(v115, &qword_27CE46380, &qword_21D02CB28);
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  v120 = v115;
  v121 = v137;
  sub_21CF7F198(v120, v137, &qword_27CE46380, &qword_21D02CB28);
  if (v118(v117 + v114, 1, v54) == 1)
  {
    sub_21CF7F200(v141, &qword_27CE46380, &qword_21D02CB28);
    sub_21D000B58(v121, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
LABEL_56:
    v58 = &qword_27CE463B8;
    v59 = &qword_21D02CB58;
    v60 = v117;
    goto LABEL_21;
  }

  v122 = v117 + v114;
  v123 = v136;
  sub_21D000BB8(v122, v136, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  v124 = sub_21D0078F4(v121, v123);
  sub_21D000B58(v123, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  sub_21CF7F200(v141, &qword_27CE46380, &qword_21D02CB28);
  sub_21D000B58(v121, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  sub_21CF7F200(v117, &qword_27CE46380, &qword_21D02CB28);
  if ((v124 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_58:
  v125 = v52 + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__mode;
  swift_beginAccess();
  v126 = *v125;
  v127 = v125[9];

  v128 = v158 + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__mode;
  swift_beginAccess();
  v129 = *v128;
  v130 = v128[8];
  v131 = v128[9];

  if (v127)
  {
    if ((v131 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v131)
    {
      return 0;
    }

    if (v130)
    {
      if (v129 > 1)
      {
        if (v129 == 2)
        {
          if (v126 != 2)
          {
            return 0;
          }
        }

        else if (v126 != 3)
        {
          return 0;
        }
      }

      else if (v129)
      {
        if (v126 != 1)
        {
          return 0;
        }
      }

      else if (v126)
      {
        return 0;
      }
    }

    else if (v126 != v129)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_21CFD0284(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46378, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest, &unk_21D02BD88);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFD0324(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121C430, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest, &unk_21D02BDC0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFD0390(uint64_t a1, uint64_t a2)
{
  sub_21CFFCB6C(qword_28121C430, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest, &unk_21D02BDC0);

  return sub_21D021EF4();
}

uint64_t sub_21CFD0450()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53898);
  __swift_project_value_buffer(v0, qword_27CE53898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026250;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SINGLE_SHOT";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "INITIATE_CHAT";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MULTIPLE_INFERENCES";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFD06E0()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_2812212A8);
  __swift_project_value_buffer(v0, qword_2812212A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026290;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "position";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFD08A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_21CFD0954(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter(0);
      sub_21D021E54();
    }
  }

  return result;
}

uint64_t sub_21CFD0954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter(0);
  type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken(0);
  sub_21CFFCB6C(&qword_28121C588, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken, &unk_21D02BAC8);
  return sub_21D021E84();
}

uint64_t sub_21CFD0A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFD0AA4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_21CFD1D54(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter, 2, MEMORY[0x277D21860]);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFD0AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452E0, &qword_21D0236A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter(0);
  sub_21CF7F198(a1 + *(v12 + 20), v7, &qword_27CE452E0, &qword_21D0236A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_21CF7F200(v7, &qword_27CE452E0, &qword_21D0236A0);
  }

  sub_21D000BB8(v7, v11, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
  sub_21CFFCB6C(&qword_28121C588, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken, &unk_21D02BAC8);
  sub_21D021FE4();
  return sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
}

uint64_t sub_21CFD0CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D021CE4();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_21CFD0DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46438, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter, &unk_21D02BBF8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFD0E40(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_28121C4D8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter, &unk_21D02BC30);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFD0EAC(uint64_t a1, uint64_t a2)
{
  sub_21CFFCB6C(&qword_28121C4D8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter, &unk_21D02BC30);

  return sub_21D021EF4();
}

uint64_t sub_21CFD0F2C()
{
  if (qword_27CE44F28 != -1)
  {
    swift_once();
  }

  v1 = qword_27CE538B0;
  v2 = *algn_27CE538B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223D3A110](0x6C6169636570532ELL, 0xED00006E656B6F54);

  qword_27CE538C0 = v1;
  *algn_27CE538C8 = v2;
  return result;
}

uint64_t sub_21CFD107C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46440, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken, &unk_21D02BA90);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFD111C(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_28121C588, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken, &unk_21D02BAC8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFD1188(uint64_t a1, uint64_t a2)
{
  sub_21CFFCB6C(&qword_28121C588, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken, &unk_21D02BAC8);

  return sub_21D021EF4();
}

uint64_t sub_21CFD1260(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x223D3A110](a2, a3);
  *a4 = 0xD00000000000002BLL;
  *a5 = 0x800000021D02EA80;
  return result;
}

uint64_t sub_21CFD12CC()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE538E0);
  __swift_project_value_buffer(v0, qword_27CE538E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026290;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "image_data";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "position";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFD14A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_21CFD154C(v5, a1, a2, a3);
    }

    else if (result == 5)
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment(0);
      sub_21D021E54();
    }
  }

  return result;
}

uint64_t sub_21CFD154C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45AC8, &qword_21D026570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46450, &qword_21D02CBD8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_21CF7F198(v45, v11, &qword_27CE45AC8, &qword_21D026570);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_21CF7F200(v11, &qword_27CE45AC8, &qword_21D026570);
    v26 = v40;
  }

  else
  {
    sub_21D000BB8(v11, v18, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
    sub_21D000BB8(v18, v16, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
    sub_21CF7F200(v23, &qword_27CE46450, &qword_21D02CBD8);
    v27 = v38;
    sub_21D000BB8(v16, v38, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    sub_21D000BB8(v27, v23, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_21CFFCB6C(&qword_27CE45DB8, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData, &unk_21D0282D8);
  v28 = v41;
  sub_21D021E84();
  v29 = v39;
  if (v28)
  {
    return sub_21CF7F200(v23, &qword_27CE46450, &qword_21D02CBD8);
  }

  sub_21CF7F198(v23, v39, &qword_27CE46450, &qword_21D02CBD8);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_21CF7F200(v23, &qword_27CE46450, &qword_21D02CBD8);
    return sub_21CF7F200(v29, &qword_27CE46450, &qword_21D02CBD8);
  }

  else
  {
    v31 = v36;
    sub_21D000BB8(v29, v36, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    if (v25 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v23, &qword_27CE46450, &qword_21D02CBD8);
    v32 = v45;
    sub_21CF7F200(v45, &qword_27CE45AC8, &qword_21D026570);
    sub_21D000BB8(v31, v32, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_21CFD1A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFD1B54(v3, a1, a2, a3);
  if (!v4)
  {
    sub_21CFD1D54(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment, 5, MEMORY[0x277D21860]);
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment(0);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFD1B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45AC8, &qword_21D026570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v7, &qword_27CE45AC8, &qword_21D026570);
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_21CF7F200(v7, &qword_27CE45AC8, &qword_21D026570);
  }

  sub_21D000BB8(v7, v10, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
  sub_21CFFCB6C(&qword_27CE45DB8, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData, &unk_21D0282D8);
  sub_21D021FE4();
  return sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
}

uint64_t sub_21CFD1D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  result = a5(0);
  v13 = (a1 + *(result + 24));
  if ((v13[1] & 1) == 0)
  {
    return a7(*v13, a6, a3, a4);
  }

  return result;
}

uint64_t sub_21CFD1DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  result = sub_21D021CE4();
  v6 = a2 + *(a1 + 24);
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t sub_21CFD1EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46448, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment, &unk_21D02B928);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFD1F90(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE46118, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment, &unk_21D02B960);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFD1FFC(uint64_t a1, uint64_t a2)
{
  sub_21CFFCB6C(&qword_27CE46118, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment, &unk_21D02B960);

  return sub_21D021EF4();
}

uint64_t sub_21CFD207C()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE538F8);
  __swift_project_value_buffer(v0, qword_27CE538F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0262A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "next_token_response";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "final_response";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "status_response";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "inference_environment_response";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "inference_complete_response";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "next_media_response";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFD2348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_21CFD359C(v5, a1, a2, a3);
          break;
        case 5:
          sub_21CFD3B58(v5, a1, a2, a3);
          break;
        case 7:
          sub_21CFD4114(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_21CFD2474(v5, a1, a2, a3);
          break;
        case 2:
          sub_21CFD2A24(v5, a1, a2, a3);
          break;
        case 3:
          sub_21CFD2FE0(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_21CFD2474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46298, &qword_21D02CA90);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_21CF7F198(a1, v12, &qword_27CE455F8, &qword_21D0246F0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_21CF7F200(v12, &qword_27CE455F8, &qword_21D0246F0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_21D000BB8(v12, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    sub_21D000BB8(v19, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
      v29 = v44;
    }

    else
    {
      sub_21CF7F200(v24, &qword_27CE46298, &qword_21D02CA90);
      v31 = v39;
      sub_21D000BB8(v17, v39, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
      sub_21D000BB8(v31, v24, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_21CFFCB6C(qword_28121BA18, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse, &unk_21D02B618);
  v33 = v43;
  sub_21D021E84();
  if (v33)
  {
    return sub_21CF7F200(v24, &qword_27CE46298, &qword_21D02CA90);
  }

  sub_21CF7F198(v24, v32, &qword_27CE46298, &qword_21D02CA90);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_21CF7F200(v24, &qword_27CE46298, &qword_21D02CA90);
    return sub_21CF7F200(v32, &qword_27CE46298, &qword_21D02CA90);
  }

  else
  {
    v35 = v40;
    sub_21D000BB8(v32, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
    if (v28 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v24, &qword_27CE46298, &qword_21D02CA90);
    v36 = v38;
    sub_21CF7F200(v38, &qword_27CE455F8, &qword_21D0246F0);
    sub_21D000BB8(v35, v36, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_21CFD2A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462A0, &qword_21D02CA98);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_21CF7F198(a1, v12, &qword_27CE455F8, &qword_21D0246F0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_21CF7F200(v12, &qword_27CE455F8, &qword_21D0246F0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_21D000BB8(v12, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    sub_21D000BB8(v19, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CF7F200(v24, &qword_27CE462A0, &qword_21D02CA98);
      v31 = v40;
      sub_21D000BB8(v17, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
      sub_21D000BB8(v31, v24, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_21CFFCB6C(qword_28121BD68, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse, &unk_21D02B1E0);
  v33 = v43;
  sub_21D021E84();
  if (v33)
  {
    return sub_21CF7F200(v24, &qword_27CE462A0, &qword_21D02CA98);
  }

  sub_21CF7F198(v24, v32, &qword_27CE462A0, &qword_21D02CA98);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_21CF7F200(v24, &qword_27CE462A0, &qword_21D02CA98);
    return sub_21CF7F200(v32, &qword_27CE462A0, &qword_21D02CA98);
  }

  else
  {
    v35 = v39;
    sub_21D000BB8(v32, v39, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
    if (v28 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v24, &qword_27CE462A0, &qword_21D02CA98);
    v36 = v38;
    sub_21CF7F200(v38, &qword_27CE455F8, &qword_21D0246F0);
    sub_21D000BB8(v35, v36, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_21CFD2FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462A8, &qword_21D02CAA0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_21CF7F198(a1, v12, &qword_27CE455F8, &qword_21D0246F0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_21CF7F200(v12, &qword_27CE455F8, &qword_21D0246F0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_21D000BB8(v12, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    sub_21D000BB8(v19, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_21CF7F200(v24, &qword_27CE462A8, &qword_21D02CAA0);
      v31 = v40;
      sub_21D000BB8(v17, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
      sub_21D000BB8(v31, v24, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_21CFFCB6C(&qword_27CE46008, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse, &unk_21D02A970);
  v33 = v43;
  sub_21D021E84();
  if (v33)
  {
    return sub_21CF7F200(v24, &qword_27CE462A8, &qword_21D02CAA0);
  }

  sub_21CF7F198(v24, v32, &qword_27CE462A8, &qword_21D02CAA0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_21CF7F200(v24, &qword_27CE462A8, &qword_21D02CAA0);
    return sub_21CF7F200(v32, &qword_27CE462A8, &qword_21D02CAA0);
  }

  else
  {
    v35 = v39;
    sub_21D000BB8(v32, v39, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
    if (v28 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v24, &qword_27CE462A8, &qword_21D02CAA0);
    v36 = v38;
    sub_21CF7F200(v38, &qword_27CE455F8, &qword_21D0246F0);
    sub_21D000BB8(v35, v36, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_21CFD359C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462B0, &qword_21D02CAA8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_21CF7F198(a1, v12, &qword_27CE455F8, &qword_21D0246F0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_21CF7F200(v12, &qword_27CE455F8, &qword_21D0246F0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_21D000BB8(v12, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    sub_21D000BB8(v19, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_21CF7F200(v24, &qword_27CE462B0, &qword_21D02CAA8);
      v31 = v40;
      sub_21D000BB8(v17, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
      sub_21D000BB8(v31, v24, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_21CFFCB6C(qword_28121B968, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse, &unk_21D02C9A0);
  v33 = v43;
  sub_21D021E84();
  if (v33)
  {
    return sub_21CF7F200(v24, &qword_27CE462B0, &qword_21D02CAA8);
  }

  sub_21CF7F198(v24, v32, &qword_27CE462B0, &qword_21D02CAA8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_21CF7F200(v24, &qword_27CE462B0, &qword_21D02CAA8);
    return sub_21CF7F200(v32, &qword_27CE462B0, &qword_21D02CAA8);
  }

  else
  {
    v35 = v39;
    sub_21D000BB8(v32, v39, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
    if (v28 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v24, &qword_27CE462B0, &qword_21D02CAA8);
    v36 = v38;
    sub_21CF7F200(v38, &qword_27CE455F8, &qword_21D0246F0);
    sub_21D000BB8(v35, v36, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_21CFD3B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462B8, &qword_21D02CAB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_21CF7F198(a1, v12, &qword_27CE455F8, &qword_21D0246F0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_21CF7F200(v12, &qword_27CE455F8, &qword_21D0246F0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_21D000BB8(v12, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    sub_21D000BB8(v19, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_21CF7F200(v24, &qword_27CE462B8, &qword_21D02CAB0);
      v31 = v40;
      sub_21D000BB8(v17, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
      sub_21D000BB8(v31, v24, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_21CFFCB6C(qword_28121B8C8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse, &unk_21D02B348);
  v33 = v43;
  sub_21D021E84();
  if (v33)
  {
    return sub_21CF7F200(v24, &qword_27CE462B8, &qword_21D02CAB0);
  }

  sub_21CF7F198(v24, v32, &qword_27CE462B8, &qword_21D02CAB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_21CF7F200(v24, &qword_27CE462B8, &qword_21D02CAB0);
    return sub_21CF7F200(v32, &qword_27CE462B8, &qword_21D02CAB0);
  }

  else
  {
    v35 = v39;
    sub_21D000BB8(v32, v39, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
    if (v28 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v24, &qword_27CE462B8, &qword_21D02CAB0);
    v36 = v38;
    sub_21CF7F200(v38, &qword_27CE455F8, &qword_21D0246F0);
    sub_21D000BB8(v35, v36, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_21CFD4114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462C0, &qword_21D02CAB8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_21CF7F198(a1, v12, &qword_27CE455F8, &qword_21D0246F0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_21CF7F200(v12, &qword_27CE455F8, &qword_21D0246F0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_21D000BB8(v12, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    sub_21D000BB8(v19, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_21CF7F200(v24, &qword_27CE462C0, &qword_21D02CAB8);
      v31 = v40;
      sub_21D000BB8(v17, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
      sub_21D000BB8(v31, v24, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_21CFFCB6C(&qword_27CE460C8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse, &unk_21D02B4B0);
  v33 = v43;
  sub_21D021E84();
  if (v33)
  {
    return sub_21CF7F200(v24, &qword_27CE462C0, &qword_21D02CAB8);
  }

  sub_21CF7F198(v24, v32, &qword_27CE462C0, &qword_21D02CAB8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_21CF7F200(v24, &qword_27CE462C0, &qword_21D02CAB8);
    return sub_21CF7F200(v32, &qword_27CE462C0, &qword_21D02CAB8);
  }

  else
  {
    v35 = v39;
    sub_21D000BB8(v32, v39, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
    if (v28 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v24, &qword_27CE462C0, &qword_21D02CAB8);
    v36 = v38;
    sub_21CF7F200(v38, &qword_27CE455F8, &qword_21D0246F0);
    sub_21D000BB8(v35, v36, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_21CFD46D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_21CF7F198(v3, &v14 - v9, &qword_27CE455F8, &qword_21D0246F0);
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_14;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_21CFD4F90(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_21CFD51C8(v3, a1, a2, a3);
    }

    else
    {
      sub_21CFD5400(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21CFD4B20(v3, a1, a2, a3);
    }

    else
    {
      sub_21CFD4D58(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_21CFD48EC(v3, a1, a2, a3);
  }

  result = sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  if (!v4)
  {
LABEL_14:
    type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse(0);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFD48EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v7, &qword_27CE455F8, &qword_21D0246F0);
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_21CF7F200(v7, &qword_27CE455F8, &qword_21D0246F0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_21D000BB8(v7, v10, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
    sub_21CFFCB6C(qword_28121BA18, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse, &unk_21D02B618);
    sub_21D021FE4();
    return sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
  }

  result = sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  __break(1u);
  return result;
}

uint64_t sub_21CFD4B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v7, &qword_27CE455F8, &qword_21D0246F0);
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_21CF7F200(v7, &qword_27CE455F8, &qword_21D0246F0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D000BB8(v7, v10, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
    sub_21CFFCB6C(qword_28121BD68, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse, &unk_21D02B1E0);
    sub_21D021FE4();
    return sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
  }

  result = sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  __break(1u);
  return result;
}