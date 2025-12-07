uint64_t sub_22DF3A8B0(uint64_t result, int a2, int a3)
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

uint64_t sub_22DF3A99C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x800000022DF6F3E0;
  v5 = 0x69745F7261646172;
  if (a1 == 4)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v4 = 0xEB00000000656C74;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = v5;
  }

  if (a1 == 3)
  {
    v4 = 0x800000022DF6F3C0;
  }

  v7 = 0xE300000000000000;
  v8 = 0xD000000000000013;
  if (a1 == 1)
  {
    v8 = 7496054;
  }

  else
  {
    v7 = 0x800000022DF6F3A0;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x7972617262696CLL;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0x800000022DF6F3C0;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_39;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0x800000022DF6F3E0;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xEB00000000656C74;
      if (v9 != 0x69745F7261646172)
      {
LABEL_39:
        v12 = sub_22DF64184();
        goto LABEL_40;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE300000000000000;
      if (v9 != 7496054)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0x800000022DF6F3A0;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x7972617262696CLL)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_22DF3AB7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x747069726373;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x63736A5F343662;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0x800000022DF6F380;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E6F6973726576;
    }

    else
    {
      v4 = 0x747069726373;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x63736A5F343662;
  v8 = 0x800000022DF6F380;
  if (a2 == 2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v2 = 0x6E6F6973726576;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22DF64184();
  }

  return v11 & 1;
}

uint64_t sub_22DF3ACB8()
{
  sub_22DF642A4();
  sub_22DF63A54();

  return sub_22DF642D4();
}

uint64_t sub_22DF3AD7C(unsigned __int8 a1)
{
  sub_22DF642A4();
  sub_22DF63A54();

  return sub_22DF642D4();
}

uint64_t sub_22DF3AE8C(uint64_t a1)
{
  sub_22DF63A54();
}

uint64_t sub_22DF3AF3C(uint64_t a1)
{
  sub_22DF642A4();
  sub_22DF63A54();

  return sub_22DF642D4();
}

uint64_t sub_22DF3AFFC(uint64_t a1, unsigned __int8 a2)
{
  sub_22DF642A4();
  sub_22DF63A54();

  return sub_22DF642D4();
}

unint64_t sub_22DF3B108@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22DF3C03C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22DF3B138(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x747069726373;
  v4 = 0xE700000000000000;
  v5 = 0x63736A5F343662;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x800000022DF6F380;
  }

  if (*v1)
  {
    v3 = 0x6E6F6973726576;
    v2 = 0xE700000000000000;
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

unint64_t sub_22DF3B1B8()
{
  v1 = 0x747069726373;
  v2 = 0x63736A5F343662;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x6E6F6973726576;
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

unint64_t sub_22DF3B234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22DF3C03C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22DF3B25C(uint64_t a1)
{
  v2 = sub_22DF3CC94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF3B298(uint64_t a1)
{
  v2 = sub_22DF3CC94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22DF3B2D4()
{
  v1 = v0;
  v2 = sub_22DF1B590();
  v3 = MEMORY[0x2318DC890](4, MEMORY[0x277D837D0], v2, MEMORY[0x277D837E0]);
  v4 = sub_22DF63984();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v23[0] = v3;
  sub_22DF3BEC4(v4, 0x747069726373, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithChar_];
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_22DF3BEC4(v6, 0x6E6F6973726576, 0xE700000000000000, v7);
  v8 = sub_22DF63984();
  v9 = swift_isUniquelyReferenced_nonNull_native();
  *&v23[0] = v3;
  sub_22DF3BEC4(v8, 0x63736A5F343662, 0xE700000000000000, v9);
  v10 = *(v1 + 40);
  v11 = *(v10 + 16);
  if (v11)
  {
    v22 = MEMORY[0x277D84F90];
    sub_22DF63FC4();
    v12 = v10 + 32;
    do
    {
      v13 = *(v12 + 16);
      v23[0] = *v12;
      v23[1] = v13;
      v14 = *(v12 + 32);
      v15 = *(v12 + 48);
      v16 = *(v12 + 64);
      v24 = *(v12 + 80);
      v23[3] = v15;
      v23[4] = v16;
      v23[2] = v14;
      sub_22DF3C088(v23, v21);
      sub_22DF3B634();
      sub_22DF3C0C0(v23);
      sub_22DF63FA4();
      sub_22DF63FD4();
      sub_22DF63FE4();
      sub_22DF63FB4();
      v12 += 88;
      --v11;
    }

    while (v11);
  }

  v17 = sub_22DF63B74();

  v18 = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = v3;
  sub_22DF3BEC4(v17, 0xD000000000000012, 0x800000022DF6F380, v18);
  v19 = sub_22DF638C4();

  return v19;
}

uint64_t sub_22DF3B53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_22DF3BEC4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_22DEF08FC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_22DEFD87C();
        v14 = v16;
      }

      result = sub_22DF3BD14(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_22DF3B634()
{
  v1 = sub_22DF1B590();
  MEMORY[0x2318DC890](2, MEMORY[0x277D837D0], v1, MEMORY[0x277D837E0]);
  v2 = sub_22DF63984();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22DF3BEC4(v2, 0x7972617262696CLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v4 = sub_22DF63984();
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_22DF3BEC4(v4, 7496054, 0xE300000000000000, v5);
  if (v0[5])
  {
    v6 = sub_22DF63984();
  }

  else
  {
    v6 = 0;
  }

  sub_22DF3B53C(v6, 0xD000000000000013, 0x800000022DF6F3A0);
  if (v0[7])
  {
    v7 = sub_22DF63984();
  }

  else
  {
    v7 = 0;
  }

  sub_22DF3B53C(v7, 0xD000000000000012, 0x800000022DF6F3C0);
  v8 = v0[8];
  if (v8)
  {
    v17 = MEMORY[0x277D84F90];
    v9 = *(v8 + 16);
    sub_22DEFB4C0(v9);
    if (v9)
    {
      v10 = v8 + 40;
      do
      {

        sub_22DF63984();

        MEMORY[0x2318DCAF0](v11);
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22DF63B94();
        }

        sub_22DF63BB4();
        v10 += 16;
        --v9;
      }

      while (v9);
    }

    v12 = sub_22DF63B74();

    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_22DF3BEC4(v12, 0xD000000000000011, 0x800000022DF6F3E0, v13);
  }

  if (v0[10])
  {
    v14 = sub_22DF63984();
  }

  else
  {
    v14 = 0;
  }

  sub_22DF3B53C(v14, 0x69745F7261646172, 0xEB00000000656C74);
  v15 = sub_22DF638C4();

  return v15;
}

double sub_22DF3B904@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_22DF3C0F0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_22DF3B95C(uint64_t a1)
{
  sub_22DF63A54();
}

unint64_t sub_22DF3BA5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22DF3C38C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22DF3BA8C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972617262696CLL;
  v5 = 0x800000022DF6F3C0;
  v6 = 0x800000022DF6F3E0;
  v7 = 0x69745F7261646172;
  if (v2 == 4)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v6 = 0xEB00000000656C74;
  }

  if (v2 == 3)
  {
    v8 = 0xD000000000000012;
  }

  else
  {
    v8 = v7;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  v9 = 0xE300000000000000;
  v10 = 0xD000000000000013;
  if (v2 == 1)
  {
    v10 = 7496054;
  }

  else
  {
    v9 = 0x800000022DF6F3A0;
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
    v11 = v8;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_22DF3BB54()
{
  v1 = *v0;
  v2 = 0x7972617262696CLL;
  v3 = 0x69745F7261646172;
  if (v1 == 4)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = v3;
  }

  v5 = 0xD000000000000013;
  if (v1 == 1)
  {
    v5 = 7496054;
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
    return v4;
  }
}

unint64_t sub_22DF3BC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22DF3C38C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22DF3BC40(uint64_t a1)
{
  v2 = sub_22DF3CC40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF3BC7C(uint64_t a1)
{
  v2 = sub_22DF3CC40();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_22DF3BCB8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_22DF3C3D8(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_22DF3BD14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22DF63E64() + 1) & ~v5;
    do
    {
      sub_22DF642A4();

      sub_22DF63A54();
      v9 = sub_22DF642D4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_22DF3BEC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22DEF08FC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22DEFD394(v16, a4 & 1);
      v11 = sub_22DEF08FC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22DF64234();
        __break(1u);
_objc_release_x1:
        MEMORY[0x2821F96F8]();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_22DEFD87C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_22DF3C03C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22DF64064();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22DF3C0F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47B08, &qword_22DF69228);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF3CC94();
  sub_22DF64304();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v9 = sub_22DF640C4();
  v11 = v10;
  v12 = v9;
  v24 = 1;
  v21 = sub_22DF640F4();
  v23 = 2;
  v18 = sub_22DF640C4();
  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47898, &unk_22DF69230);
  v22 = 3;
  sub_22DF3CCE8();
  sub_22DF640E4();
  (*(v6 + 8))(v8, v5);
  v14 = v20;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v21;
  v16 = v19;
  *(a2 + 24) = v18;
  *(a2 + 32) = v16;
  *(a2 + 40) = v14;
  return result;
}

unint64_t sub_22DF3C38C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22DF64064();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22DF3C3D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47B00, &unk_22DF69218);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF3CC40();
  sub_22DF64304();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v41[0]) = 0;
  v9 = sub_22DF640C4();
  v11 = v10;
  LOBYTE(v41[0]) = 1;
  v32 = sub_22DF640C4();
  v34 = v12;
  LOBYTE(v41[0]) = 2;
  v13 = sub_22DF64074();
  v33 = v14;
  v29 = v13;
  LOBYTE(v41[0]) = 3;
  v31 = 0;
  v28 = sub_22DF64074();
  v30 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47670, &qword_22DF67510);
  LOBYTE(v35) = 4;
  sub_22DF08C50();
  sub_22DF64094();
  v27 = v41[0];
  v42 = 5;
  v16 = sub_22DF64074();
  v17 = *(v6 + 8);
  v18 = v16;
  v31 = v19;
  v17(v8, v5);
  *&v35 = v9;
  *(&v35 + 1) = v11;
  *&v36 = v32;
  *(&v36 + 1) = v34;
  *&v37 = v29;
  v20 = v33;
  *(&v37 + 1) = v33;
  *&v38 = v28;
  v21 = v30;
  *(&v38 + 1) = v30;
  *&v39 = v27;
  v22 = v31;
  *(&v39 + 1) = v18;
  v40 = v31;
  sub_22DF3C088(&v35, v41);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v41[0] = v9;
  v41[1] = v11;
  v41[2] = v32;
  v41[3] = v34;
  v41[4] = v29;
  v41[5] = v20;
  v41[6] = v28;
  v41[7] = v21;
  v41[8] = v27;
  v41[9] = v18;
  v41[10] = v22;
  result = sub_22DF3C0C0(v41);
  v24 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v24;
  *(a2 + 64) = v39;
  *(a2 + 80) = v40;
  v25 = v36;
  *a2 = v35;
  *(a2 + 16) = v25;
  return result;
}

unint64_t sub_22DF3C8B0()
{
  result = qword_27DA47AC0;
  if (!qword_27DA47AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47AC0);
  }

  return result;
}

unint64_t sub_22DF3C908()
{
  result = qword_27DA47AC8;
  if (!qword_27DA47AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47AC8);
  }

  return result;
}

unint64_t sub_22DF3C960()
{
  result = qword_27DA47AD0;
  if (!qword_27DA47AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47AD0);
  }

  return result;
}

unint64_t sub_22DF3C9B8()
{
  result = qword_27DA47AD8;
  if (!qword_27DA47AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47AD8);
  }

  return result;
}

unint64_t sub_22DF3CA10()
{
  result = qword_27DA47AE0;
  if (!qword_27DA47AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47AE0);
  }

  return result;
}

unint64_t sub_22DF3CA68()
{
  result = qword_27DA47AE8;
  if (!qword_27DA47AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47AE8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22DF3CAD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22DF3CB18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22DF3CB84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_22DF3CBCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22DF3CC40()
{
  result = qword_27DA47AF0;
  if (!qword_27DA47AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47AF0);
  }

  return result;
}

unint64_t sub_22DF3CC94()
{
  result = qword_27DA47AF8;
  if (!qword_27DA47AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47AF8);
  }

  return result;
}

unint64_t sub_22DF3CCE8()
{
  result = qword_27DA47B10;
  if (!qword_27DA47B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47898, &unk_22DF69230);
    sub_22DF3CD6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47B10);
  }

  return result;
}

unint64_t sub_22DF3CD6C()
{
  result = qword_27DA47B18;
  if (!qword_27DA47B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47B18);
  }

  return result;
}

uint64_t sub_22DF3CDDC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_22DF3CE0C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_22DF3CE0C(void *a1)
{
  sub_22DEF2388(a1, v6);
  sub_22DF3D0D0();
  v3 = sub_22DF63BD4();
  if (v1)
  {

    sub_22DEF2388(a1, v6);
    sub_22DF3D124();
    v4 = sub_22DF63BD4();
  }

  else
  {
    v4 = v3;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

unint64_t sub_22DF3CF50()
{
  result = qword_27DA47B20;
  if (!qword_27DA47B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47B20);
  }

  return result;
}

unint64_t sub_22DF3CFA8()
{
  result = qword_27DA47B28;
  if (!qword_27DA47B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47B28);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22DF3D01C(uint64_t a1, unsigned int a2)
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

uint64_t sub_22DF3D064(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22DF3D0D0()
{
  result = qword_27DA47B30;
  if (!qword_27DA47B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47B30);
  }

  return result;
}

unint64_t sub_22DF3D124()
{
  result = qword_27DA47B38;
  if (!qword_27DA47B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47B38);
  }

  return result;
}

uint64_t variable initialization expression of Listener.connectionQueue()
{
  v12 = sub_22DF63824();
  v0 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22DF63D54();
  v3 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22DF63D44();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22DF63854();
  MEMORY[0x28223BE20](v7 - 8);
  sub_22DF3D47C();
  v10 = " any expected type";
  sub_22DF63834();
  v13 = MEMORY[0x277D84F90];
  sub_22DF401B0(&qword_27DA47B40, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47B80, &qword_22DF69400);
  sub_22DF3D4C8();
  sub_22DF63E54();
  (*(v3 + 104))(v5, *MEMORY[0x277D85268], v11);
  v8 = v12;
  (*(v0 + 104))(v2, *MEMORY[0x277D851A8], v12);
  sub_22DF63D84();
  (*(v0 + 8))(v2, v8);
  return sub_22DF63D74();
}

unint64_t sub_22DF3D47C()
{
  result = qword_27DA47B70;
  if (!qword_27DA47B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA47B70);
  }

  return result;
}

unint64_t sub_22DF3D4C8()
{
  result = qword_27DA47B48;
  if (!qword_27DA47B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DA47B80, &qword_22DF69400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47B48);
  }

  return result;
}

uint64_t variable initialization expression of Listener.clients()
{
  if (MEMORY[0x277D84F90] >> 62 && sub_22DF63E94())
  {
    v0 = sub_22DF3FC5C(MEMORY[0x277D84F90]);
  }

  else
  {
    v0 = MEMORY[0x277D84FA0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47B50, &qword_22DF69408);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  return result;
}

uint64_t sub_22DF3D5AC()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4D758);
  __swift_project_value_buffer(v0, qword_27DA4D758);
  return sub_22DF63724();
}

uint64_t Listener.__allocating_init(mode:clientBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22DEF4014;

  return Listener.init(mode:clientBundleID:)(v6, a2, a3);
}

uint64_t Listener.init(mode:clientBundleID:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 168) = a3;
  *(v4 + 176) = v3;
  *(v4 + 160) = a2;
  *(v4 + 73) = a1;
  v5 = sub_22DF63824();
  *(v4 + 184) = v5;
  *(v4 + 192) = *(v5 - 8);
  *(v4 + 200) = swift_task_alloc();
  v6 = sub_22DF63D54();
  *(v4 + 208) = v6;
  *(v4 + 216) = *(v6 - 8);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = sub_22DF63D44();
  *(v4 + 240) = swift_task_alloc();
  sub_22DF63854();
  *(v4 + 248) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF3D86C, 0, 0);
}

uint64_t sub_22DF3D86C()
{
  v1 = *(v0 + 216);
  v13 = *(v0 + 224);
  v14 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 184);
  v15 = *(v0 + 176);
  sub_22DF3D47C();
  sub_22DF63834();
  *(v0 + 152) = MEMORY[0x277D84F90];
  sub_22DF401B0(&qword_27DA47B40, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47B80, &qword_22DF69400);
  sub_22DF3D4C8();
  sub_22DF63E54();
  (*(v1 + 104))(v13, *MEMORY[0x277D85268], v14);
  (*(v2 + 104))(v3, *MEMORY[0x277D851A8], v4);
  sub_22DF63D84();
  (*(v2 + 8))(v3, v4);
  *(v15 + 16) = sub_22DF63D74();
  if (MEMORY[0x277D84F90] >> 62 && sub_22DF63E94())
  {
    v5 = sub_22DF3FC5C(MEMORY[0x277D84F90]);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v6 = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47B50, &qword_22DF69408);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v5;
  *(v6 + 24) = v7;
  *(v6 + 96) = 0;
  v8 = swift_task_alloc();
  *(v0 + 256) = v8;
  *v8 = v0;
  v8[1] = sub_22DF3DAFC;
  v9 = *(v0 + 160);
  v10 = *(v0 + 168);
  v11 = *(v0 + 73);

  return Daemon.init(mode:clientBundleID:)(v0 + 16, v11, v9, v10);
}

uint64_t sub_22DF3DAFC()
{

  return MEMORY[0x2822009F8](sub_22DF3DBF8, 0, 0);
}

uint64_t sub_22DF3DBF8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 73);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  *(v1 + 73) = *(v0 + 57);
  v1[3] = v4;
  v1[4] = v5;
  v1[2] = v3;
  v6 = *(v0 + 176);
  if (v2)
  {
    v7 = *(v6 + 16);
    if (v2 == 1)
    {
      type metadata accessor for XPCConnection();
      swift_allocObject();

      XPCConnection.init(serviceName:targetQ:listen:delegate:)(0xD000000000000023, 0x800000022DF6F490, v7, 1, v6, &protocol witness table for Listener);
    }

    else
    {
      type metadata accessor for XPCConnection();
      swift_allocObject();

      v8 = XPCConnection.init(machService:targetQ:listen:delegate:)(0xD000000000000019, 0x800000022DF6F470, v7, 1, v6, &protocol witness table for Listener);
    }
  }

  else
  {
    v9 = *(v6 + 16);
    type metadata accessor for XPCConnection();
    swift_allocObject();
    v10 = v9;

    v8 = XPCConnection.init(targetQ:delegate:)(v10, v6, &protocol witness table for Listener);
  }

  v11 = v8;
  v12 = *(v0 + 176);
  swift_beginAccess();
  *(v12 + 96) = v11;

  v13 = *(v0 + 8);
  v14 = *(v0 + 176);

  return v13(v14);
}

void Listener.connection(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 96);
  if (v7)
  {
    type metadata accessor for XPCConnection();
    swift_allocObject();
    swift_unknownObjectRetain();

    XPCConnection.init(listener:targetQ:delegate:)(v7, a1, a2, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t Listener.handle(message:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v34 - v2;
  v4 = type metadata accessor for XPCObject(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  swift_unknownObjectRetain();
  XPCIncomingConnection.init(conn:)();
  v18 = v17;
  XPCIncomingConnection.entitlementValue(forKey:)(v16);
  sub_22DEF12FC(v16, v14, &unk_27DA47600, &unk_22DF660C0);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_22DEF1364(v14, &unk_27DA47600, &unk_22DF660C0);
LABEL_14:
    pid = xpc_connection_get_pid(v18);
    if (qword_27DA4D750 != -1)
    {
      swift_once();
    }

    v27 = sub_22DF63734();
    __swift_project_value_buffer(v27, qword_27DA4D758);
    v28 = sub_22DF63714();
    v29 = sub_22DF63D04();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67240192;
      *(v30 + 4) = pid;
      _os_log_impl(&dword_22DEEA000, v28, v29, "connection attempted by unentitled process %{public}d", v30, 8u);
      MEMORY[0x2318DDBE0](v30, -1, -1);
    }

    xpc_connection_cancel(v18);
    swift_unknownObjectRelease();
    return sub_22DEF1364(v16, &unk_27DA47600, &unk_22DF660C0);
  }

  sub_22DF3FF98(v14, v10);
  sub_22DF3FFFC(v10, v8);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_22DF40060(v10);
    v25 = v8;
LABEL_13:
    sub_22DF40060(v25);
    goto LABEL_14;
  }

  if ((*v8 & 1) == 0)
  {
    v25 = v10;
    goto LABEL_13;
  }

  v19 = v34;
  swift_beginAccess();
  if (*(v19 + 88))
  {
    v20 = xpc_connection_get_pid(v18);
    if (qword_27DA4D750 != -1)
    {
      swift_once();
    }

    v21 = sub_22DF63734();
    __swift_project_value_buffer(v21, qword_27DA4D758);
    v22 = sub_22DF63714();
    v23 = sub_22DF63D04();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67240192;
      *(v24 + 4) = v20;
      _os_log_impl(&dword_22DEEA000, v22, v23, "rejecting connection from %{public}d while reporting is disabled", v24, 8u);
      MEMORY[0x2318DDBE0](v24, -1, -1);
    }

    xpc_connection_cancel(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = sub_22DF63C34();
    (*(*(v32 - 8) + 56))(v3, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v19;
    v33[5] = v18;

    swift_unknownObjectRetain();
    sub_22DEEFE64(0, 0, v3, &unk_22DF69428, v33);
    swift_unknownObjectRelease();
  }

  sub_22DF40060(v10);
  return sub_22DEF1364(v16, &unk_27DA47600, &unk_22DF660C0);
}

uint64_t sub_22DF3E3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_22DF3E3F4, 0, 0);
}

void sub_22DF3E3F4()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 56);
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v0[5];
  v4 = v3[8];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v3[9];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v3[10];
  if (!v6)
  {
LABEL_11:
    __break(1u);
    return;
  }

  type metadata accessor for Client();

  swift_unknownObjectRetain();
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_22DF3E544;
  v8 = v0[5];
  v9 = v0[6];

  sub_22DF40644(v2, v4, v5, v6, v8, v9);
}

uint64_t sub_22DF3E544(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_22DF3E644, 0, 0);
}

uint64_t sub_22DF3E644()
{
  v1 = *(*(v0 + 40) + 24);

  os_unfair_lock_lock(v1 + 6);
  sub_22DF401F8();
  os_unfair_lock_unlock(v1 + 6);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22DF3E714()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 6);
  sub_22DF40154(v2);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t Listener.deinit()
{

  return v0;
}

uint64_t Listener.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22DF3E894(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v7 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v8 = *v3;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = sub_22DF63EA4();

    if (v9)
    {

      type metadata accessor for Client();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_22DF63E94();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v17 = sub_22DF3EB34(v8, result + 1);
    v18 = *(v17 + 16);
    if (*(v17 + 24) <= v18)
    {
      sub_22DF3ED68(v18 + 1);
    }

    sub_22DF3EFFC(v19, v17, v20);

    *v4 = v17;
    goto LABEL_16;
  }

  type metadata accessor for Client();
  sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client, &unk_22DF69608);
  v11 = sub_22DF63934();
  v12 = -1 << *(v7 + 32);
  v13 = v11 & ~v12;
  if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;

    sub_22DF3F0E4(v16, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_22DF401B0(&qword_27DA47B58, type metadata accessor for Client, "q\n-TXw");
  while ((sub_22DF63974() & 1) == 0)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v7 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_22DF3EB34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47B60, &qword_22DF69478);
    v2 = sub_22DF63EF4();
    v15 = v2;
    sub_22DF63E84();
    if (sub_22DF63EB4())
    {
      type metadata accessor for Client();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_22DF3ED68(v9 + 1);
        }

        v2 = v15;
        sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client, &unk_22DF69608);
        result = sub_22DF63934();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_22DF63EB4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_22DF3ED68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47B60, &qword_22DF69478);
  result = sub_22DF63EE4();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for Client();
      sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client, &unk_22DF69608);
      result = sub_22DF63934();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero(v7, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_22DF3EFFC(uint64_t a1, uint64_t a2, __n128 a3)
{
  type metadata accessor for Client();
  sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client, &unk_22DF69608);
  sub_22DF63934();
  result = sub_22DF63E74();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_22DF3F0E4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22DF3ED68(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_22DF3F2CC();
      goto LABEL_12;
    }

    sub_22DF3F41C(v6 + 1);
  }

  v8 = *v3;
  type metadata accessor for Client();
  sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client, &unk_22DF69608);
  result = sub_22DF63934();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_22DF401B0(&qword_27DA47B58, type metadata accessor for Client, "q\n-TXw");
    do
    {
      result = sub_22DF63974();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22DF64224();
  __break(1u);
  return result;
}

void *sub_22DF3F2CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47B60, &qword_22DF69478);
  v2 = *v0;
  v3 = sub_22DF63ED4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22DF3F41C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47B60, &qword_22DF69478);
  result = sub_22DF63EE4();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for Client();
      sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client, &unk_22DF69608);

      result = sub_22DF63934();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22DF3F694(uint64_t a1, __n128 a2)
{
  v3 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v5 = *v2;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = sub_22DF63EC4();

    if (v6)
    {
      v7 = sub_22DF3F894(v5, a1);

      return v7;
    }

    return 0;
  }

  type metadata accessor for Client();
  sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client, &unk_22DF69608);
  v9 = sub_22DF63934();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  sub_22DF401B0(&qword_27DA47B58, type metadata accessor for Client, "q\n-TXw");
  while ((sub_22DF63974() & 1) == 0)
  {
    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22DF3F2CC();
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + 8 * v11);
  sub_22DF3FA70(v11);
  result = v15;
  *v2 = v16;
  return result;
}

uint64_t sub_22DF3F894(uint64_t a1, uint64_t a2)
{

  v3 = sub_22DF63E94();
  v4 = swift_unknownObjectRetain();
  v5 = sub_22DF3EB34(v4, v3);
  v12 = v5;
  type metadata accessor for Client();
  sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client, &unk_22DF69608);

  v6 = sub_22DF63934();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_22DF401B0(&qword_27DA47B58, type metadata accessor for Client, "q\n-TXw");
    while ((sub_22DF63974() & 1) == 0)
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
  sub_22DF3FA70(v8);
  result = sub_22DF63974();
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

unint64_t sub_22DF3FA70(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22DF63E64();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      type metadata accessor for Client();
      sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client, &unk_22DF69608);
      do
      {
        v10 = sub_22DF63934() & v7;
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

unint64_t sub_22DF3FC5C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_22DF63E94();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47B60, &qword_22DF69478);
      result = sub_22DF63F04();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_22DF63E94();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x2318DCED0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    type metadata accessor for Client();
    sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client, &unk_22DF69608);
    result = sub_22DF63934();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_22DF401B0(&qword_27DA47B58, type metadata accessor for Client, "q\n-TXw");
      do
      {
        result = sub_22DF63974();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void _s19CloudTelemetryTools8ListenerC6handle5errorySo13OS_xpc_object_p_tF_0()
{
  MEMORY[0x2318DDEE0]();
  v0 = sub_22DF63AA4();
  v2 = v1;
  sub_22DF63F24();

  MEMORY[0x2318DCA20](v0, v2);
  sub_22DF64004();
  __break(1u);
}

uint64_t sub_22DF3FF98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF3FFFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF40060(uint64_t a1)
{
  v2 = type metadata accessor for XPCObject(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DF400BC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22DEEFBD4;

  return sub_22DF3E3D4(v4, v5, v6, v2, v3);
}

uint64_t sub_22DF401B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22DF401F8()
{

  sub_22DF3E894(&v3, v0, v1);
}

BOOL sub_22DF40248(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = ~v2;
  v4 = *a2;
  v5 = v2 - 2;
  v6 = v3 & 1;
  if (v5 >= 5)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5 + 2;
  }

  if ((v4 - 2) >= 5)
  {
    v8 = (v4 & 1) == 0;
  }

  else
  {
    v8 = (v4 - 2) + 2;
  }

  return v7 == v8;
}

uint64_t ServiceSamplingOutcome.rawValue.getter(char a1)
{
  if ((a1 - 2) >= 5u)
  {
    return (a1 & 1) == 0;
  }

  else
  {
    return (a1 - 2) + 2;
  }
}

uint64_t sub_22DF402BC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s19CloudTelemetryTools22ServiceSamplingOutcomeO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_22DF402E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = ~v2;
  v4 = v2 - 2;
  v5 = v3 & 1;
  if (v4 >= 5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4 + 2;
  }

  *a1 = v6;
}

uint64_t _s19CloudTelemetryTools22ServiceSamplingOutcomeO8rawValueACSgSi_tcfC_0(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 7;
  }

  else
  {
    return (0x6050403020001uLL >> (8 * a1));
  }
}

BOOL _s19CloudTelemetryTools22ServiceSamplingOutcomeO1loiySbAC_ACtFZ_0(char a1, char a2)
{
  v2 = (a1 - 2) + 2;
  if ((a1 - 2) >= 5u)
  {
    v2 = (a1 & 1) == 0;
  }

  v3 = (a2 - 2) + 2;
  if ((a2 - 2) >= 5u)
  {
    v3 = (a2 & 1) == 0;
  }

  return v2 < v3;
}

unint64_t sub_22DF403F8()
{
  result = qword_27DA47B68;
  if (!qword_27DA47B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47B68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServiceSamplingOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_19;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 4;
  if (v8 <= 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_22DF404EC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_22DF40508(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_22DF40530(char a1, char a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 0xFFFFFFFE | a1 & 1;
}

uint64_t sub_22DF40550@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 33) = HIBYTE(a5) & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_22DF40570()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x2318DCA20](58, 0xE100000000000000);
  MEMORY[0x2318DCA20](v1, v2);
  return v4;
}

uint64_t sub_22DF405D0()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4D8F8);
  __swift_project_value_buffer(v0, qword_27DA4D8F8);
  return sub_22DF63724();
}

uint64_t sub_22DF40644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = sub_22DF63824();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = sub_22DF63D54();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = sub_22DF63D44();
  v7[20] = swift_task_alloc();
  sub_22DF63854();
  v7[21] = swift_task_alloc();
  v7[22] = swift_allocObject();

  return MEMORY[0x2822009F8](sub_22DF40808, 0, 0);
}

uint64_t sub_22DF40808()
{
  v26 = v0;
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  swift_defaultActor_initialize();
  v1[14] = 0;
  v1[18] = v7;
  v1[19] = v6;
  v1[20] = v5;
  v1[21] = v4;
  v1[22] = v3;

  *(v0 + 184) = XPCIncomingConnection.auditToken.getter(v2);
  *(v0 + 192) = v8;
  *(v0 + 200) = v9;
  *(v0 + 208) = v10;
  if (swift_stdlib_isStackAllocationSafe())
  {
    sub_22DF414D0(&v23, v0 + 216, (v0 + 184), v0 + 4312);
  }

  else
  {
    v11 = swift_slowAlloc();
    sub_22DF414D0(&v23, v11, (v0 + 184), v11 + 4096);
    MEMORY[0x2318DDBE0](v11, -1, -1);
  }

  v12 = v24;
  v13 = *(v0 + 176);
  v14 = *(v0 + 136);
  v20 = *(v0 + 144);
  v15 = *(v0 + 120);
  v21 = *(v0 + 128);
  v16 = *(v0 + 112);
  v22 = *(v0 + 104);
  v13[16] = v23;
  v13[17] = v12;
  sub_22DF3D47C();
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_22DF63F24();

  v23 = 0xD000000000000020;
  v24 = 0x800000022DF6F5A0;
  v17 = v13[16];
  v18 = v13[17];

  MEMORY[0x2318DCA20](v17, v18);

  sub_22DF63834();
  *(v0 + 40) = MEMORY[0x277D84F90];
  sub_22DF4B70C(&qword_27DA47B40, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47B80, &qword_22DF69400);
  sub_22DF3D4C8();
  sub_22DF63E54();
  (*(v14 + 104))(v20, *MEMORY[0x277D85268], v21);
  (*(v16 + 104))(v15, *MEMORY[0x277D851A8], v22);
  sub_22DF63D84();
  (*(v16 + 8))(v15, v22);
  v13[15] = sub_22DF63D74();

  return MEMORY[0x2822009F8](sub_22DF40C08, v13, 0);
}

uint64_t sub_22DF40C08()
{
  v1 = v0[22];
  v2 = v0[11];
  v3 = *(v1 + 120);

  v4 = XPCIncomingConnection.makeConnection(targetQ:delegate:)(v3, v1, &off_284195F38, v2);
  swift_unknownObjectRelease();

  swift_beginAccess();
  *(v1 + 112) = v4;

  v5 = v0[1];
  v6 = v0[22];

  return v5(v6);
}

uint64_t sub_22DF40D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v7[13] = *v6;
  v8 = sub_22DF63824();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v9 = sub_22DF63D54();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = sub_22DF63D44();
  v7[21] = swift_task_alloc();
  sub_22DF63854();
  v7[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF40F58, 0, 0);
}

uint64_t sub_22DF40F58()
{
  v26 = v0;
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);
  swift_defaultActor_initialize();
  v2[14] = 0;
  v2[18] = v7;
  v2[19] = v6;
  v2[20] = v5;
  v2[21] = v4;
  v2[22] = v3;

  *(v0 + 184) = XPCIncomingConnection.auditToken.getter(v1);
  *(v0 + 192) = v8;
  *(v0 + 200) = v9;
  *(v0 + 208) = v10;
  if (swift_stdlib_isStackAllocationSafe())
  {
    sub_22DF414D0(&v23, v0 + 216, (v0 + 184), v0 + 4312);
  }

  else
  {
    v11 = swift_slowAlloc();
    sub_22DF414D0(&v23, v11, (v0 + 184), v11 + 4096);
    MEMORY[0x2318DDBE0](v11, -1, -1);
  }

  v12 = v24;
  v20 = *(v0 + 152);
  v13 = *(v0 + 144);
  v21 = *(v0 + 136);
  v15 = *(v0 + 120);
  v14 = *(v0 + 128);
  v22 = *(v0 + 112);
  v16 = *(v0 + 96);
  v16[16] = v23;
  v16[17] = v12;
  sub_22DF3D47C();
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_22DF63F24();

  v23 = 0xD000000000000020;
  v24 = 0x800000022DF6F5A0;
  v17 = v16[16];
  v18 = v16[17];

  MEMORY[0x2318DCA20](v17, v18);

  sub_22DF63834();
  *(v0 + 40) = MEMORY[0x277D84F90];
  sub_22DF4B70C(&qword_27DA47B40, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47B80, &qword_22DF69400);
  sub_22DF3D4C8();
  sub_22DF63E54();
  (*(v13 + 104))(v20, *MEMORY[0x277D85268], v21);
  (*(v15 + 104))(v14, *MEMORY[0x277D851A8], v22);
  sub_22DF63D84();
  (*(v15 + 8))(v14, v22);
  v16[15] = sub_22DF63D74();

  return MEMORY[0x2822009F8](sub_22DF41358, v16, 0);
}

uint64_t sub_22DF41358()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = *(v1 + 120);

  v4 = XPCIncomingConnection.makeConnection(targetQ:delegate:)(v3, v1, &off_284195F38, v2);
  swift_unknownObjectRelease();

  swift_beginAccess();
  *(v1 + 112) = v4;

  v5 = v0[1];
  v6 = v0[12];

  return v5(v6);
}

uint64_t sub_22DF414D0@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t buffer@<X0>, audit_token_t *audittoken@<X2>, uint64_t a4@<X1>)
{
  *buffer = 0;
  if (!buffer)
  {
    goto LABEL_9;
  }

  if (a4 - buffer > 0xFFFFFFFFLL)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return buffer;
  }

  buffer = proc_pidpath_audittoken(audittoken, buffer, a4 - buffer);
  if (buffer < 1)
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  else
  {
    v5 = sub_22DF63AB4();
    v7 = v6;
    v19[0] = 47;
    v19[1] = 0xE100000000000000;
    MEMORY[0x28223BE20](v5);
    v18[2] = v19;
    buffer = sub_22DF4B174(sub_22DF14220, v18, v5, v7);
    if ((v8 & 1) == 0)
    {
      v9 = sub_22DF63A64();
      v10 = sub_22DF4B3A4(v9, v5, v7);
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v5 = MEMORY[0x2318DC9D0](v10, v12, v14, v16);
      v7 = v17;
    }
  }

  *a1 = v5;
  a1[1] = v7;
  return buffer;
}

void sub_22DF41660(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = swift_unknownObjectRetain();
  XPCMessage.init(fromXPC:)(v2);
}

void sub_22DF416DC(uint64_t a1, char a2)
{
  if (a1)
  {
    v7 = sub_22DF63C34();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v2;
    *(v8 + 40) = a1;
    *(v8 + 48) = a2;

    sub_22DEEFE64(0, 0, v3, &unk_22DF69578, v8);
  }

  else
  {
    if (qword_27DA4D8F0 != -1)
    {
      swift_once();
    }

    v9 = sub_22DF63734();
    __swift_project_value_buffer(v9, qword_27DA4D8F8);

    *(v4 - 64) = sub_22DF63714();
    v10 = sub_22DF63D04();

    if (os_log_type_enabled(*(v4 - 64), v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *(v4 - 56) = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_22DEF0354(*(v2 + 128), *(v2 + 136), (v4 - 56));
      _os_log_impl(&dword_22DEEA000, *(v4 - 64), v10, "received invalid XPC message from %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x2318DDBE0](v12, -1, -1);
      MEMORY[0x2318DDBE0](v11, -1, -1);
    }

    else
    {
      v13 = *(v4 - 64);
    }
  }
}

uint64_t sub_22DF418D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_22DEEFBD4;

  return sub_22DF41980(a5, v7);
}

uint64_t sub_22DF41980(uint64_t a1, char a2)
{
  *(v3 + 1560) = v2;
  *(v3 + 2212) = a2;
  *(v3 + 1552) = a1;
  v4 = sub_22DF63594();
  *(v3 + 1568) = v4;
  *(v3 + 1576) = *(v4 - 8);
  *(v3 + 1584) = swift_task_alloc();
  *(v3 + 1592) = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  *(v3 + 1600) = swift_task_alloc();
  *(v3 + 1608) = swift_task_alloc();
  *(v3 + 1616) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300);
  *(v3 + 1624) = swift_task_alloc();
  *(v3 + 1632) = swift_task_alloc();
  *(v3 + 1640) = swift_task_alloc();
  *(v3 + 1648) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC8, &qword_22DF69770);
  *(v3 + 1656) = swift_task_alloc();
  *(v3 + 1664) = swift_task_alloc();
  v5 = type metadata accessor for CachedSession(0);
  *(v3 + 1672) = v5;
  *(v3 + 1680) = *(v5 - 8);
  *(v3 + 1688) = swift_task_alloc();
  *(v3 + 1696) = swift_task_alloc();
  *(v3 + 1704) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF41BCC, v2, 0);
}

uint64_t sub_22DF41BCC()
{
  v1 = *(v0 + 2212);
  if (v1 <= 1)
  {
    if (*(v0 + 2212))
    {
      v21 = *(v0 + 1560);
      type metadata accessor for SubmitEventsActivity();
      v22 = v21[18];
      v23 = v21[19];
      v24 = v21[20];

      v25 = sub_22DEEC750(v22, v23, v24);
      *(v0 + 2096) = v25;
      v29 = (*(*v25 + 120) + **(*v25 + 120));
      v26 = swift_task_alloc();
      *(v0 + 2104) = v26;
      *v26 = v0;
      v26[1] = sub_22DF4579C;
      v5 = v29;

      return v5();
    }

    if (qword_27DA4D8F0 != -1)
    {
      swift_once();
    }

    v6 = sub_22DF63734();
    *(v0 + 1712) = __swift_project_value_buffer(v6, qword_27DA4D8F8);
    v7 = sub_22DF63714();
    v8 = sub_22DF63CE4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22DEEA000, v7, v8, "SendOneMessage Request Received", v9, 2u);
      MEMORY[0x2318DDBE0](v9, -1, -1);
    }

    v10 = swift_task_alloc();
    *(v0 + 1720) = v10;
    *v10 = v0;
    v10[1] = sub_22DF421A8;
    v11 = *(v0 + 1664);
  }

  else
  {
    if (v1 == 2)
    {
      type metadata accessor for PostInstallActivity();
      v12 = sub_22DF05BD4();
      *(v0 + 2112) = v12;
      v28 = (*(*v12 + 88) + **(*v12 + 88));
      v13 = swift_task_alloc();
      *(v0 + 2120) = v13;
      *v13 = v0;
      v13[1] = sub_22DF45A48;
      v5 = v28;

      return v5();
    }

    if (v1 == 3)
    {
      type metadata accessor for CacheCleanupActivity();

      v3 = sub_22DF27764(v2);
      *(v0 + 2128) = v3;
      v27 = (*(*v3 + 104) + **(*v3 + 104));
      v4 = swift_task_alloc();
      *(v0 + 2136) = v4;
      *v4 = v0;
      v4[1] = sub_22DF45CF4;
      v5 = v27;

      return v5();
    }

    if (qword_27DA4D8F0 != -1)
    {
      swift_once();
    }

    v14 = sub_22DF63734();
    *(v0 + 2144) = __swift_project_value_buffer(v14, qword_27DA4D8F8);
    v15 = sub_22DF63714();
    v16 = sub_22DF63CE4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22DEEA000, v15, v16, "CheckSamplingResult Request Received", v17, 2u);
      MEMORY[0x2318DDBE0](v17, -1, -1);
    }

    v18 = swift_task_alloc();
    *(v0 + 2152) = v18;
    *v18 = v0;
    v18[1] = sub_22DF45FA0;
    v11 = *(v0 + 1656);
  }

  v19 = *(v0 + 1552);

  return sub_22DF49704(v11, v19);
}

uint64_t sub_22DF421A8()
{
  v1 = *(*v0 + 1560);

  return MEMORY[0x2822009F8](sub_22DF422B8, v1, 0);
}

uint64_t sub_22DF422B8()
{
  v1 = *(v0 + 1672);
  v2 = *(v0 + 1664);
  if ((*(*(v0 + 1680) + 48))(v2, 1, v1) == 1)
  {
    sub_22DEF1364(v2, &qword_27DA47BC8, &qword_22DF69770);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 1704);
    v6 = *(v0 + 1560);
    sub_22DF4BA20(v2, v5, type metadata accessor for CachedSession);
    *(v0 + 1728) = *(v5 + *(v1 + 36));
    v7 = *v5;
    v8 = *(v5 + 16);
    v9 = *(v5 + 32);
    *(v0 + 792) = *(v5 + 48);
    *(v0 + 760) = v8;
    *(v0 + 776) = v9;
    *(v0 + 744) = v7;
    *(v0 + 1736) = *(v5 + 72);
    *(v0 + 1744) = *(v0 + 744);
    *(v0 + 1752) = *(v0 + 752);
    v10 = *(v6 + 152);
    *(v0 + 1760) = v10;
    v11 = *(*v10 + 232);

    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    *(v0 + 1768) = v12;
    *v12 = v0;
    v12[1] = sub_22DF4259C;
    v13 = *(v0 + 1704);
    v14 = *(v0 + 1672);

    return (v15)(v0 + 856, v13, v14, &off_284194200);
  }
}

uint64_t sub_22DF4259C()
{
  v2 = *v1;
  *(*v1 + 1776) = v0;

  if (v0)
  {
    v3 = *(v2 + 1560);
    v4 = sub_22DF46C30;
  }

  else
  {
    v5 = *(v2 + 1560);

    v4 = sub_22DF426C4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DF426C4()
{
  v1 = *(v0 + 1760);
  *(v0 + 1784) = *(v0 + 864);
  *(v0 + 1792) = *(v0 + 856);
  *(v0 + 1464) = *(v0 + 880);
  v2 = *v1 + 248;
  *(v0 + 1800) = *v2;
  *(v0 + 1808) = v2 & 0xFFFFFFFFFFFFLL | 0xA469000000000000;

  return MEMORY[0x2822009F8](sub_22DF4276C, v1, 0);
}

uint64_t sub_22DF4276C()
{
  v1 = *(v0 + 1560);
  (*(v0 + 1800))(*(v0 + 1744), *(v0 + 1752));

  return MEMORY[0x2822009F8](sub_22DF427E8, v1, 0);
}

uint64_t sub_22DF427E8()
{
  v55 = v0;
  v1 = *(*(v0 + 1784) + 16);

  if (v1)
  {
    v52 = (*(**(*(v0 + 1560) + 160) + 136) + **(**(*(v0 + 1560) + 160) + 136));
    v2 = swift_task_alloc();
    *(v0 + 1816) = v2;
    *v2 = v0;
    v2[1] = sub_22DF42FC8;
    v3 = *(v0 + 1704);
    v4 = *(v0 + 1672);

    return v52(v0 + 856, v3, v4, &off_284194200);
  }

  v6 = 4079420;
  *(v0 + 1840) = 0u;
  v7 = *(v0 + 1728);
  if (*(v7 + 16) && (v8 = sub_22DEF08FC(0x646F6874656D5FLL, 0xE700000000000000), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v0 + 1648);
    v12 = *(v0 + 1640);
    v13 = *(*(v0 + 1728) + 56);
    v14 = type metadata accessor for ServiceEventValue(0);
    v15 = *(v14 - 8);
    sub_22DF4B9B8(v13 + *(v15 + 72) * v10, v11, type metadata accessor for ServiceEventValue);
    (*(v15 + 56))(v11, 0, 1, v14);
    sub_22DEF12FC(v11, v12, &qword_27DA47BC0, &unk_22DF65300);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = *(v0 + 1640);
    if (EnumCaseMultiPayload == 1)
    {
      *(v0 + 1544) = *v17;
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *(v0 + 1536) = *v17;
LABEL_13:
      v21 = sub_22DF64154();
      v20 = v22;

      goto LABEL_14;
    }

    sub_22DF4B920(v17, type metadata accessor for ServiceEventValue);
  }

  else
  {
    v18 = *(v0 + 1648);
    v19 = type metadata accessor for ServiceEventValue(0);
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  }

  v20 = 0xE300000000000000;
  v21 = 4079420;
LABEL_14:
  *(v0 + 1864) = v20;
  *(v0 + 1856) = v21;
  sub_22DEF1364(*(v0 + 1648), &qword_27DA47BC0, &unk_22DF65300);
  if (*(v7 + 16) && (v23 = sub_22DEF08FC(0x7375746174735FLL, 0xE700000000000000), (v24 & 1) != 0))
  {
    v25 = v23;
    v26 = *(v0 + 1632);
    v27 = *(v0 + 1624);
    v28 = *(*(v0 + 1728) + 56);
    v29 = type metadata accessor for ServiceEventValue(0);
    v30 = *(v29 - 8);
    sub_22DF4B9B8(v28 + *(v30 + 72) * v25, v26, type metadata accessor for ServiceEventValue);
    (*(v30 + 56))(v26, 0, 1, v29);
    sub_22DEF12FC(v26, v27, &qword_27DA47BC0, &unk_22DF65300);
    v31 = swift_getEnumCaseMultiPayload();
    v32 = *(v0 + 1624);
    if (v31 == 1)
    {
      *(v0 + 1528) = *v32;
      goto LABEL_22;
    }

    if (v31 == 2)
    {
      *(v0 + 1520) = *v32;
LABEL_22:
      v6 = sub_22DF64154();
      v35 = v36;

      goto LABEL_23;
    }

    sub_22DF4B920(v32, type metadata accessor for ServiceEventValue);
  }

  else
  {
    v33 = *(v0 + 1632);
    v34 = type metadata accessor for ServiceEventValue(0);
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  v35 = 0xE300000000000000;
LABEL_23:
  *(v0 + 1880) = v35;
  *(v0 + 1872) = v6;
  sub_22DEF1364(*(v0 + 1632), &qword_27DA47BC0, &unk_22DF65300);

  v37 = sub_22DF63714();
  v38 = sub_22DF63D24();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v54 = v40;
    *v39 = 136446466;
    v41 = sub_22DEF0354(v21, v20, &v54);

    *(v39 + 4) = v41;
    *(v39 + 12) = 2082;
    v42 = sub_22DEF0354(v6, v35, &v54);

    *(v39 + 14) = v42;
    _os_log_impl(&dword_22DEEA000, v37, v38, "sending one message %{public}s:%{public}s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v40, -1, -1);
    MEMORY[0x2318DDBE0](v39, -1, -1);
  }

  else
  {
  }

  v43 = *(v0 + 1792);
  v44 = *(v0 + 1784);
  v45 = *(v0 + 1560);

  nullsub_1();
  *(v0 + 1200) = v46;
  *(v0 + 1208) = v47;
  *(v0 + 1216) = v48;
  *(v0 + 1888) = sub_22DF4B3F0(v43, v44);
  *(v0 + 1896) = v49;
  *(v0 + 1904) = v50;
  v53 = (*(**(v45 + 160) + 152) + **(**(v45 + 160) + 152));
  v51 = swift_task_alloc();
  *(v0 + 1912) = v51;
  *v51 = v0;
  v51[1] = sub_22DF437D4;

  return v53(v0 + 744);
}

uint64_t sub_22DF42FC8(uint64_t a1, uint64_t a2)
{
  v7 = *v3;
  v6 = *v3;

  v8 = *(v6 + 1560);
  if (v2)
  {

    v9 = sub_22DF46FFC;
  }

  else
  {
    *(v7 + 1824) = a2;
    *(v7 + 1832) = a1;
    v9 = sub_22DF43114;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22DF43114()
{
  v51 = v0;
  v1 = 4079420;
  v2 = v0[229];
  v0[231] = v0[228];
  v0[230] = v2;
  v3 = v0[216];
  if (*(v3 + 16) && (v4 = sub_22DEF08FC(0x646F6874656D5FLL, 0xE700000000000000), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = v0[206];
    v8 = v0[205];
    v9 = *(v0[216] + 56);
    v10 = type metadata accessor for ServiceEventValue(0);
    v11 = *(v10 - 8);
    sub_22DF4B9B8(v9 + *(v11 + 72) * v6, v7, type metadata accessor for ServiceEventValue);
    (*(v11 + 56))(v7, 0, 1, v10);
    sub_22DEF12FC(v7, v8, &qword_27DA47BC0, &unk_22DF65300);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v13 = v0[205];
    if (EnumCaseMultiPayload == 1)
    {
      v0[193] = *v13;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v0[192] = *v13;
LABEL_9:
      v17 = sub_22DF64154();
      v16 = v18;

      goto LABEL_10;
    }

    sub_22DF4B920(v13, type metadata accessor for ServiceEventValue);
  }

  else
  {
    v14 = v0[206];
    v15 = type metadata accessor for ServiceEventValue(0);
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  v16 = 0xE300000000000000;
  v17 = 4079420;
LABEL_10:
  v0[233] = v16;
  v0[232] = v17;
  sub_22DEF1364(v0[206], &qword_27DA47BC0, &unk_22DF65300);
  if (!*(v3 + 16) || (v19 = sub_22DEF08FC(0x7375746174735FLL, 0xE700000000000000), (v20 & 1) == 0))
  {
    v29 = v0[204];
    v30 = type metadata accessor for ServiceEventValue(0);
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
LABEL_16:
    v31 = 0xE300000000000000;
    goto LABEL_19;
  }

  v21 = v19;
  v22 = v0[204];
  v23 = v0[203];
  v24 = *(v0[216] + 56);
  v25 = type metadata accessor for ServiceEventValue(0);
  v26 = *(v25 - 8);
  sub_22DF4B9B8(v24 + *(v26 + 72) * v21, v22, type metadata accessor for ServiceEventValue);
  (*(v26 + 56))(v22, 0, 1, v25);
  sub_22DEF12FC(v22, v23, &qword_27DA47BC0, &unk_22DF65300);
  v27 = swift_getEnumCaseMultiPayload();
  v28 = v0[203];
  if (v27 == 1)
  {
    v0[191] = *v28;
    goto LABEL_18;
  }

  if (v27 != 2)
  {
    sub_22DF4B920(v28, type metadata accessor for ServiceEventValue);
    goto LABEL_16;
  }

  v0[190] = *v28;
LABEL_18:
  v1 = sub_22DF64154();
  v31 = v32;

LABEL_19:
  v0[235] = v31;
  v0[234] = v1;
  sub_22DEF1364(v0[204], &qword_27DA47BC0, &unk_22DF65300);

  v33 = sub_22DF63714();
  v34 = sub_22DF63D24();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50 = v36;
    *v35 = 136446466;
    v37 = sub_22DEF0354(v17, v16, &v50);

    *(v35 + 4) = v37;
    *(v35 + 12) = 2082;
    v38 = sub_22DEF0354(v1, v31, &v50);

    *(v35 + 14) = v38;
    _os_log_impl(&dword_22DEEA000, v33, v34, "sending one message %{public}s:%{public}s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v36, -1, -1);
    MEMORY[0x2318DDBE0](v35, -1, -1);
  }

  else
  {
  }

  v39 = v0[224];
  v40 = v0[223];
  v41 = v0[195];

  nullsub_1();
  v0[150] = v42;
  v0[151] = v43;
  v0[152] = v44;
  v0[236] = sub_22DF4B3F0(v39, v40);
  v0[237] = v45;
  v0[238] = v46;
  v49 = (*(**(v41 + 160) + 152) + **(**(v41 + 160) + 152));
  v47 = swift_task_alloc();
  v0[239] = v47;
  *v47 = v0;
  v47[1] = sub_22DF437D4;

  return v49(v0 + 93);
}

uint64_t sub_22DF437D4(uint64_t a1, uint64_t a2)
{
  v7 = *v3;
  v6 = *v3;

  v8 = *(v6 + 1560);
  if (v2)
  {

    v9 = sub_22DF476B4;
  }

  else
  {
    *(v7 + 1920) = a2;
    *(v7 + 1928) = a1;
    v9 = sub_22DF43920;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22DF43920()
{
  sub_22DF372A0(v0[236], v0[237], v0[238]);
  sub_22DF36394(v0 + 117);
  sub_22DEF0F4C((v0 + 93), (v0 + 72));
  v1 = swift_task_alloc();
  v0[242] = v1;
  *v1 = v0;
  v1[1] = sub_22DF43A20;
  v2 = v0[241];
  v3 = v0[240];
  v4 = v0[237];
  v5 = v0[236];

  return sub_22DF36420((v0 + 44), (v0 + 93), v2, v3, 0x4D656E4F646E6553, 0xEE00656761737365, v5, v4);
}

uint64_t sub_22DF43A20()
{
  v2 = *v1;
  *(*v1 + 1944) = v0;

  if (v0)
  {
    v3 = *(v2 + 1560);

    v4 = sub_22DF476B4;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1560);
    v4 = sub_22DF43B58;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22DF43B58()
{
  v68 = v0;
  v1 = *(v0 + 1944);
  sub_22DEF12FC(v0 + 352, v0 + 16, &unk_27DA47BD0, qword_22DF69780);
  if (*(v0 + 40))
  {
    v2 = *(v0 + 160);
    *(v0 + 312) = *(v0 + 144);
    *(v0 + 328) = v2;
    *(v0 + 344) = *(v0 + 176);
    v3 = *(v0 + 96);
    *(v0 + 248) = *(v0 + 80);
    *(v0 + 264) = v3;
    v4 = *(v0 + 128);
    *(v0 + 280) = *(v0 + 112);
    *(v0 + 296) = v4;
    v5 = *(v0 + 32);
    *(v0 + 184) = *(v0 + 16);
    *(v0 + 200) = v5;
    v6 = *(v0 + 64);
    *(v0 + 216) = *(v0 + 48);
    *(v0 + 232) = v6;
    *(v0 + 1000) = &type metadata for AllEventFieldProvider;
    *(v0 + 1008) = &off_2841950F0;
    v7 = swift_allocObject();
    *(v0 + 976) = v7;
    sub_22DF4B870(v0 + 184, v7 + 16);
    sub_22DEF9ED8((v0 + 976));
    sub_22DF4B8CC(v0 + 184);
    __swift_destroy_boxed_opaque_existential_0((v0 + 976));
  }

  else
  {
    sub_22DEF1364(v0 + 16, &unk_27DA47BD0, qword_22DF69780);
  }

  *(v0 + 1952) = *(v0 + 1200);
  *(v0 + 1960) = *(v0 + 1208);
  v8 = sub_22DF2E5EC();
  swift_beginAccess();
  if (*v8 == 1)
  {
    v9 = *(v0 + 1792);
    v10 = *(v9 + 16);
    *(v0 + 1976) = v10;
    if (v10)
    {
      v11 = *(v0 + 1592);
      *(v0 + 1984) = *(*(v0 + 1560) + 168);
      v12 = *(v11 + 80);
      *(v0 + 2208) = v12;
      *(v0 + 1992) = *(v11 + 72);
      *(v0 + 2008) = 0;
      *(v0 + 2000) = v1;
      v13 = *(v0 + 1616);
      v14 = *(v0 + 1608);
      sub_22DF4B9B8(v9 + ((v12 + 32) & ~v12), v13, type metadata accessor for SessionConfiguration.Backend);
      sub_22DF4B9B8(v13, v14, type metadata accessor for SessionConfiguration.Backend);

      v15 = sub_22DF63714();
      v16 = sub_22DF63D24();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = *(v0 + 1880);
        v18 = *(v0 + 1872);
        v19 = *(v0 + 1864);
        v20 = *(v0 + 1856);
        v21 = *(v0 + 1608);
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v67 = v23;
        *v22 = 136446722;
        *(v22 + 4) = sub_22DEF0354(v20, v19, &v67);
        *(v22 + 12) = 2082;
        *(v22 + 14) = sub_22DEF0354(v18, v17, &v67);
        *(v22 + 22) = 2082;
        v24 = sub_22DF09280();
        v26 = v25;
        sub_22DF4B920(v21, type metadata accessor for SessionConfiguration.Backend);
        v27 = sub_22DEF0354(v24, v26, &v67);

        *(v22 + 24) = v27;
        _os_log_impl(&dword_22DEEA000, v15, v16, "writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s", v22, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2318DDBE0](v23, -1, -1);
        MEMORY[0x2318DDBE0](v22, -1, -1);
      }

      else
      {
        v59 = *(v0 + 1608);

        sub_22DF4B920(v59, type metadata accessor for SessionConfiguration.Backend);
      }

      v60 = *(v0 + 1984);
      *(v0 + 2016) = sub_22DF09280();
      *(v0 + 2024) = v61;
      v62 = sub_22DF443AC;
      v63 = v60;
      goto LABEL_23;
    }
  }

  if (*(v0 + 1840))
  {

    swift_unknownObjectRetain();
    v28 = sub_22DF63714();
    v29 = sub_22DF63D24();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 1880);
      v31 = *(v0 + 1872);
      v32 = *(v0 + 1864);
      v33 = *(v0 + 1856);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v67 = v35;
      *v34 = 136446466;
      *(v34 + 4) = sub_22DEF0354(v33, v32, &v67);
      *(v34 + 12) = 2082;
      *(v34 + 14) = sub_22DEF0354(v31, v30, &v67);
      _os_log_impl(&dword_22DEEA000, v28, v29, "processing sendOneMessage, immediate %{public}s:%{public}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318DDBE0](v35, -1, -1);
      MEMORY[0x2318DDBE0](v34, -1, -1);
    }

    v36 = *(v0 + 1968);
    v37 = *(v0 + 1960);
    v38 = *(v0 + 1952);
    v66 = *(v0 + 1848);
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47298, &qword_22DF654C0);
    v40 = swift_allocObject();
    *(v0 + 2040) = v40;
    *(v40 + 16) = xmmword_22DF65900;
    *(v40 + 32) = v38;
    *(v40 + 40) = v37;
    *(v40 + 48) = v36;
    v41 = *(v66 + 8);

    v65 = (v41 + *v41);
    v42 = swift_task_alloc();
    *(v0 + 2048) = v42;
    *v42 = v0;
    v42[1] = sub_22DF44BBC;
    v43 = *(v0 + 1848);

    return v65(v40, ObjectType, v43);
  }

  else
  {
    if (!*(*(v0 + 1792) + 16))
    {
      v63 = *(v0 + 1760);
      v64 = *v63 + 256;
      *(v0 + 2080) = *v64;
      *(v0 + 2088) = v64 & 0xFFFFFFFFFFFFLL | 0x1E4F000000000000;
      v62 = sub_22DF453C8;
LABEL_23:

      return MEMORY[0x2822009F8](v62, v63, 0);
    }

    v45 = sub_22DF63714();
    v46 = sub_22DF63D24();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 1880);
      v48 = *(v0 + 1872);
      v49 = *(v0 + 1864);
      v50 = *(v0 + 1856);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v67 = v52;
      *v51 = 136446466;
      *(v51 + 4) = sub_22DEF0354(v50, v49, &v67);
      *(v51 + 12) = 2082;
      *(v51 + 14) = sub_22DEF0354(v48, v47, &v67);
      _os_log_impl(&dword_22DEEA000, v45, v46, "caching sendOneMessage %{public}s:%{public}s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318DDBE0](v52, -1, -1);
      MEMORY[0x2318DDBE0](v51, -1, -1);
    }

    sub_22DF63554();
    v53 = swift_task_alloc();
    *(v0 + 2064) = v53;
    *v53 = v0;
    v53[1] = sub_22DF45088;
    v54 = *(v0 + 1968);
    v55 = *(v0 + 1960);
    v56 = *(v0 + 1952);
    v57 = *(v0 + 1736);
    v58 = *(v0 + 1584);

    return sub_22DF01C9C(v0 + 744, v58, v57, v56, v55, v54);
  }
}

uint64_t sub_22DF443AC()
{
  v1 = *(v0 + 2000);
  sub_22DEF6968(*(v0 + 2016), *(v0 + 2024), *(v0 + 1952), *(v0 + 1960), *(v0 + 1968));
  *(v0 + 2032) = v1;
  if (v1)
  {
    v2 = *(v0 + 1560);
    v3 = sub_22DF47F20;
  }

  else
  {
    v4 = *(v0 + 1560);

    v3 = sub_22DF44460;
    v2 = v4;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_22DF44460()
{
  v58 = v0;
  sub_22DF4B920(*(v0 + 1616), type metadata accessor for SessionConfiguration.Backend);
  v1 = *(v0 + 2008) + 1;
  if (v1 == *(v0 + 1976))
  {
    if (*(v0 + 1840))
    {

      swift_unknownObjectRetain();
      v2 = sub_22DF63714();
      v3 = sub_22DF63D24();

      if (os_log_type_enabled(v2, v3))
      {
        v4 = *(v0 + 1880);
        v5 = *(v0 + 1872);
        v6 = *(v0 + 1864);
        v7 = *(v0 + 1856);
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v57 = v9;
        *v8 = 136446466;
        *(v8 + 4) = sub_22DEF0354(v7, v6, &v57);
        *(v8 + 12) = 2082;
        *(v8 + 14) = sub_22DEF0354(v5, v4, &v57);
        _os_log_impl(&dword_22DEEA000, v2, v3, "processing sendOneMessage, immediate %{public}s:%{public}s", v8, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318DDBE0](v9, -1, -1);
        MEMORY[0x2318DDBE0](v8, -1, -1);
      }

      v10 = *(v0 + 1968);
      v11 = *(v0 + 1960);
      v12 = *(v0 + 1952);
      v56 = *(v0 + 1848);
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47298, &qword_22DF654C0);
      v14 = swift_allocObject();
      *(v0 + 2040) = v14;
      *(v14 + 16) = xmmword_22DF65900;
      *(v14 + 32) = v12;
      *(v14 + 40) = v11;
      *(v14 + 48) = v10;
      v15 = *(v56 + 8);

      v55 = (v15 + *v15);
      v16 = swift_task_alloc();
      *(v0 + 2048) = v16;
      *v16 = v0;
      v16[1] = sub_22DF44BBC;
      v17 = *(v0 + 1848);

      return v55(v14, ObjectType, v17);
    }

    if (*(*(v0 + 1792) + 16))
    {

      v40 = sub_22DF63714();
      v41 = sub_22DF63D24();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = *(v0 + 1880);
        v43 = *(v0 + 1872);
        v44 = *(v0 + 1864);
        v45 = *(v0 + 1856);
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v57 = v47;
        *v46 = 136446466;
        *(v46 + 4) = sub_22DEF0354(v45, v44, &v57);
        *(v46 + 12) = 2082;
        *(v46 + 14) = sub_22DEF0354(v43, v42, &v57);
        _os_log_impl(&dword_22DEEA000, v40, v41, "caching sendOneMessage %{public}s:%{public}s", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318DDBE0](v47, -1, -1);
        MEMORY[0x2318DDBE0](v46, -1, -1);
      }

      sub_22DF63554();
      v48 = swift_task_alloc();
      *(v0 + 2064) = v48;
      *v48 = v0;
      v48[1] = sub_22DF45088;
      v49 = *(v0 + 1968);
      v50 = *(v0 + 1960);
      v51 = *(v0 + 1952);
      v52 = *(v0 + 1736);
      v53 = *(v0 + 1584);

      return sub_22DF01C9C(v0 + 744, v53, v52, v51, v50, v49);
    }

    v39 = *(v0 + 1760);
    v54 = *v39 + 256;
    *(v0 + 2080) = *v54;
    *(v0 + 2088) = v54 & 0xFFFFFFFFFFFFLL | 0x1E4F000000000000;
    v38 = sub_22DF453C8;
  }

  else
  {
    v19 = *(v0 + 2032);
    *(v0 + 2008) = v1;
    *(v0 + 2000) = v19;
    v20 = *(v0 + 1616);
    v21 = *(v0 + 1608);
    sub_22DF4B9B8(*(v0 + 1792) + ((*(v0 + 2208) + 32) & ~*(v0 + 2208)) + *(v0 + 1992) * v1, v20, type metadata accessor for SessionConfiguration.Backend);
    sub_22DF4B9B8(v20, v21, type metadata accessor for SessionConfiguration.Backend);

    v22 = sub_22DF63714();
    v23 = sub_22DF63D24();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 1880);
      v25 = *(v0 + 1872);
      v26 = *(v0 + 1864);
      v27 = *(v0 + 1856);
      v28 = *(v0 + 1608);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v57 = v30;
      *v29 = 136446722;
      *(v29 + 4) = sub_22DEF0354(v27, v26, &v57);
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_22DEF0354(v25, v24, &v57);
      *(v29 + 22) = 2082;
      v31 = sub_22DF09280();
      v33 = v32;
      sub_22DF4B920(v28, type metadata accessor for SessionConfiguration.Backend);
      v34 = sub_22DEF0354(v31, v33, &v57);

      *(v29 + 24) = v34;
      _os_log_impl(&dword_22DEEA000, v22, v23, "writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318DDBE0](v30, -1, -1);
      MEMORY[0x2318DDBE0](v29, -1, -1);
    }

    else
    {
      v35 = *(v0 + 1608);

      sub_22DF4B920(v35, type metadata accessor for SessionConfiguration.Backend);
    }

    v36 = *(v0 + 1984);
    *(v0 + 2016) = sub_22DF09280();
    *(v0 + 2024) = v37;
    v38 = sub_22DF443AC;
    v39 = v36;
  }

  return MEMORY[0x2822009F8](v38, v39, 0);
}

uint64_t sub_22DF44BBC()
{
  v2 = *v1;
  *(*v1 + 2056) = v0;

  if (v0)
  {
    v3 = *(v2 + 1560);
    v4 = sub_22DF488B8;
  }

  else
  {
    v5 = *(v2 + 1560);

    v4 = sub_22DF44CE4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DF44CE4()
{
  v27 = v0;

  v1 = sub_22DF63714();
  v2 = sub_22DF63D24();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 235);
    v4 = *(v0 + 234);
    v5 = *(v0 + 233);
    v6 = *(v0 + 232);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_22DEF0354(v6, v5, &v26);
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_22DEF0354(v4, v3, &v26);
    _os_log_impl(&dword_22DEEA000, v1, v2, "processed sendOneMessage, immediate %{public}s:%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v8, -1, -1);
    MEMORY[0x2318DDBE0](v7, -1, -1);
  }

  swift_unknownObjectRelease();
  if (*(*(v0 + 224) + 16))
  {

    v9 = sub_22DF63714();
    v10 = sub_22DF63D24();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 235);
      v12 = *(v0 + 234);
      v13 = *(v0 + 233);
      v14 = *(v0 + 232);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136446466;
      *(v15 + 4) = sub_22DEF0354(v14, v13, &v26);
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_22DEF0354(v12, v11, &v26);
      _os_log_impl(&dword_22DEEA000, v9, v10, "caching sendOneMessage %{public}s:%{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318DDBE0](v16, -1, -1);
      MEMORY[0x2318DDBE0](v15, -1, -1);
    }

    sub_22DF63554();
    v17 = swift_task_alloc();
    *(v0 + 258) = v17;
    *v17 = v0;
    v17[1] = sub_22DF45088;
    v18 = *(v0 + 246);
    v19 = *(v0 + 245);
    v20 = *(v0 + 244);
    v21 = v0[217];
    v22 = *(v0 + 198);

    return sub_22DF01C9C((v0 + 93), v22, v21, v20, v19, v18);
  }

  else
  {
    v24 = *(v0 + 220);
    v25 = *v24 + 256;
    v0[260] = *v25;
    *(v0 + 261) = v25 & 0xFFFFFFFFFFFFLL | 0x1E4F000000000000;

    return MEMORY[0x2822009F8](sub_22DF453C8, v24, 0);
  }
}

uint64_t sub_22DF45088()
{
  v2 = *v1;
  *(*v1 + 2072) = v0;

  v3 = v2[198];
  v4 = v2[197];
  v5 = v2[196];
  v6 = v2[195];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_22DF48C60;
  }

  else
  {
    v7 = sub_22DF45204;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22DF45204()
{
  v13 = v0;

  v1 = sub_22DF63714();
  v2 = sub_22DF63D24();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[235];
    v4 = v0[234];
    v5 = v0[233];
    v6 = v0[232];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_22DEF0354(v6, v5, &v12);
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_22DEF0354(v4, v3, &v12);
    _os_log_impl(&dword_22DEEA000, v1, v2, "cached sendOneMessage %{public}s:%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v8, -1, -1);
    MEMORY[0x2318DDBE0](v7, -1, -1);
  }

  v9 = v0[220];
  v10 = *v9 + 256;
  v0[260] = *v10;
  v0[261] = v10 & 0xFFFFFFFFFFFFLL | 0x1E4F000000000000;

  return MEMORY[0x2822009F8](sub_22DF453C8, v9, 0);
}

uint64_t sub_22DF453C8()
{
  v1 = *(v0 + 1560);
  (*(v0 + 2080))(*(v0 + 1744), *(v0 + 1752), 1);

  return MEMORY[0x2822009F8](sub_22DF45448, v1, 0);
}

void sub_22DF45448()
{
  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v2 = reply;
    v3 = *(v0 + 1560);
    swift_beginAccess();
    v4 = *(v3 + 112);
    if (v4)
    {
      swift_beginAccess();
      v5 = *(v4 + 16);
      if (v5)
      {
        v6 = *(v0 + 1904);
        v7 = *(v0 + 1896);
        v8 = *(v0 + 1888);
        swift_unknownObjectRetain();
        sub_22DF4B824(v8, v7, v6);

        sub_22DF13A04(v0 + 1464);
        xpc_connection_send_message(v5, v2);
        swift_unknownObjectRelease();
        v9 = sub_22DF63714();
        v10 = sub_22DF63CE4();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_22DEEA000, v9, v10, "SendOneMessage Reply Sent", v11, 2u);
          MEMORY[0x2318DDBE0](v11, -1, -1);
        }

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        sub_22DEF1364(v0 + 352, &unk_27DA47BD0, qword_22DF69780);
        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v12 = *(v0 + 1904);
  v13 = *(v0 + 1896);
  v14 = *(v0 + 1888);
  sub_22DEF1364(v0 + 352, &unk_27DA47BD0, qword_22DF69780);
  sub_22DF4B824(v14, v13, v12);

  swift_unknownObjectRelease();
  sub_22DF13A04(v0 + 1464);
LABEL_8:
  sub_22DF4B920(*(v0 + 1704), type metadata accessor for CachedSession);

  v15 = *(v0 + 8);

  v15();
}

uint64_t sub_22DF4579C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22DF45A48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22DF45CF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22DF45FA0()
{
  v1 = *(*v0 + 1560);

  return MEMORY[0x2822009F8](sub_22DF460B0, v1, 0);
}

uint64_t sub_22DF460B0()
{
  v1 = v0[209];
  v2 = v0[207];
  if ((*(v0[210] + 48))(v2, 1, v1) == 1)
  {
    sub_22DEF1364(v2, &qword_27DA47BC8, &qword_22DF69770);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[212];
    v6 = v0[195];
    sub_22DF4BA20(v2, v5, type metadata accessor for CachedSession);
    v7 = *(v6 + 152);
    v0[270] = v7;
    v8 = *(v7 + 112);
    v0[271] = v8;
    v0[115] = v1;
    v0[116] = &off_284194200;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 112);
    sub_22DF4B9B8(v5, boxed_opaque_existential_1, type metadata accessor for CachedSession);
    v10 = *(*v8 + 128);

    v12 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[272] = v11;
    *v11 = v0;
    v11[1] = sub_22DF46388;

    return v12(v0 + 112);
  }
}

uint64_t sub_22DF46388(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1560);
  *(v2 + 2213) = a1;

  __swift_destroy_boxed_opaque_existential_0((v2 + 896));

  return MEMORY[0x2822009F8](sub_22DF464CC, v3, 0);
}

void sub_22DF464CC()
{
  if (sub_22DF4A88C(*(v0 + 2213), &unk_284195EE8))
  {
    v1 = *(v0 + 1696);
    v2 = *(v0 + 1672);
    v3 = *(*(v0 + 2160) + 112);
    *(v0 + 2184) = v3;
    *(v0 + 1040) = v2;
    *(v0 + 1048) = &off_284194200;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1016));
    sub_22DF4B9B8(v1, boxed_opaque_existential_1, type metadata accessor for CachedSession);
    v5 = *(*v3 + 144);

    v20 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 2192) = v6;
    *v6 = v0;
    v6[1] = sub_22DF46894;

    v20(v0 + 1016);
    return;
  }

  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v8 = reply;
    v9 = *(v0 + 1560);
    MessageKeys.samplingOutcome.unsafeMutableAddressor();

    v10 = ServiceSamplingOutcome.rawValue.getter(4);
    v11 = sub_22DF63A34();

    xpc_dictionary_set_int64(v8, (v11 + 32), v10);

    swift_beginAccess();
    v12 = *(v9 + 112);
    if (v12)
    {
      swift_beginAccess();
      v13 = *(v12 + 16);
      if (v13)
      {
        xpc_connection_send_message(v13, v8);
        v14 = sub_22DF63714();
        v15 = sub_22DF63CE4();
        v16 = os_log_type_enabled(v14, v15);
        v17 = *(v0 + 1696);
        if (v16)
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_22DEEA000, v14, v15, "CheckSamplingResult Reply Sent", v18, 2u);
          MEMORY[0x2318DDBE0](v18, -1, -1);
        }

        swift_unknownObjectRelease();

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v17 = *(v0 + 1696);
LABEL_12:
  sub_22DF4B920(v17, type metadata accessor for CachedSession);

  v19 = *(v0 + 8);

  v19();
}

uint64_t sub_22DF46894(char a1)
{
  v3 = *v2;
  *(v3 + 2214) = a1;
  *(v3 + 2200) = v1;

  if (v1)
  {
    v4 = *(v3 + 1560);

    v5 = sub_22DF48E14;
  }

  else
  {
    v4 = *(v3 + 1560);

    __swift_destroy_boxed_opaque_existential_0((v3 + 1016));
    v5 = sub_22DF469CC;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

void sub_22DF469CC()
{
  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v2 = reply;
    v3 = *(v0 + 1560);
    v4 = *(v0 + 2214);
    MessageKeys.samplingOutcome.unsafeMutableAddressor();

    v5 = ServiceSamplingOutcome.rawValue.getter(v4);
    v6 = sub_22DF63A34();

    xpc_dictionary_set_int64(v2, (v6 + 32), v5);

    swift_beginAccess();
    v7 = *(v3 + 112);
    if (v7)
    {
      swift_beginAccess();
      v8 = *(v7 + 16);
      if (v8)
      {
        xpc_connection_send_message(v8, v2);
        v9 = sub_22DF63714();
        v10 = sub_22DF63CE4();
        v11 = os_log_type_enabled(v9, v10);
        v12 = *(v0 + 1696);
        if (v11)
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_22DEEA000, v9, v10, "CheckSamplingResult Reply Sent", v13, 2u);
          MEMORY[0x2318DDBE0](v13, -1, -1);
        }

        swift_unknownObjectRelease();

        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v12 = *(v0 + 1696);
LABEL_8:
  sub_22DF4B920(v12, type metadata accessor for CachedSession);

  v14 = *(v0 + 8);

  v14();
}

void sub_22DF46C30()
{
  v29 = v0;
  v1 = *(v0 + 1776);
  sub_22DEF0F4C(v0 + 744, v0 + 520);
  v2 = v1;
  v3 = sub_22DF63714();
  v4 = sub_22DF63D04();
  sub_22DEF0FA8(v0 + 744);

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1752);
    v6 = *(v0 + 1744);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    v27 = v6;
    *v7 = 136446466;
    v9 = *(v0 + 760);
    v10 = *(v0 + 768);
    v28 = v5;
    sub_22DEF0F4C(v0 + 744, v0 + 800);
    MEMORY[0x2318DCA20](58, 0xE100000000000000);
    MEMORY[0x2318DCA20](v9, v10);
    sub_22DEF0FA8(v0 + 744);
    v11 = sub_22DEF0354(v27, v5, &v26);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v12 = sub_22DF64244();
    v14 = sub_22DEF0354(v12, v13, &v26);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_22DEEA000, v3, v4, "unable to find config for identity %{public}s with error %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v8, -1, -1);
    MEMORY[0x2318DDBE0](v7, -1, -1);
  }

  else
  {
  }

  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v16 = reply;
    v17 = *(v0 + 1560);
    xpc_dictionary_set_string(reply, "error", "missing required sendOneMessage event fields");
    swift_beginAccess();
    v18 = *(v17 + 112);
    if (v18)
    {
      swift_beginAccess();
      v19 = *(v18 + 16);
      if (v19)
      {
        xpc_connection_send_message(v19, v16);
        v20 = sub_22DF63714();
        v21 = sub_22DF63CE4();
        v22 = os_log_type_enabled(v20, v21);
        v23 = *(v0 + 1776);
        if (v22)
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_22DEEA000, v20, v21, "SendOneMessage Error Reply Sent", v24, 2u);
          MEMORY[0x2318DDBE0](v24, -1, -1);
        }

        swift_unknownObjectRelease();
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_11:
  sub_22DF4B920(*(v0 + 1704), type metadata accessor for CachedSession);

  v25 = *(v0 + 8);

  v25();
}

uint64_t sub_22DF46FFC()
{
  v50 = v0;
  v1 = 4079420;
  *(v0 + 1840) = 0u;
  v2 = *(v0 + 1728);
  if (*(v2 + 16) && (v3 = sub_22DEF08FC(0x646F6874656D5FLL, 0xE700000000000000), (v4 & 1) != 0))
  {
    v5 = v3;
    v6 = *(v0 + 1648);
    v7 = *(v0 + 1640);
    v8 = *(*(v0 + 1728) + 56);
    v9 = type metadata accessor for ServiceEventValue(0);
    v10 = *(v9 - 8);
    sub_22DF4B9B8(v8 + *(v10 + 72) * v5, v6, type metadata accessor for ServiceEventValue);
    (*(v10 + 56))(v6, 0, 1, v9);
    sub_22DEF12FC(v6, v7, &qword_27DA47BC0, &unk_22DF65300);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v12 = *(v0 + 1640);
    if (EnumCaseMultiPayload == 1)
    {
      *(v0 + 1544) = *v12;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *(v0 + 1536) = *v12;
LABEL_9:
      v16 = sub_22DF64154();
      v15 = v17;

      goto LABEL_10;
    }

    sub_22DF4B920(v12, type metadata accessor for ServiceEventValue);
  }

  else
  {
    v13 = *(v0 + 1648);
    v14 = type metadata accessor for ServiceEventValue(0);
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  v15 = 0xE300000000000000;
  v16 = 4079420;
LABEL_10:
  *(v0 + 1864) = v15;
  *(v0 + 1856) = v16;
  sub_22DEF1364(*(v0 + 1648), &qword_27DA47BC0, &unk_22DF65300);
  if (!*(v2 + 16) || (v18 = sub_22DEF08FC(0x7375746174735FLL, 0xE700000000000000), (v19 & 1) == 0))
  {
    v28 = *(v0 + 1632);
    v29 = type metadata accessor for ServiceEventValue(0);
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
LABEL_16:
    v30 = 0xE300000000000000;
    goto LABEL_19;
  }

  v20 = v18;
  v21 = *(v0 + 1632);
  v22 = *(v0 + 1624);
  v23 = *(*(v0 + 1728) + 56);
  v24 = type metadata accessor for ServiceEventValue(0);
  v25 = *(v24 - 8);
  sub_22DF4B9B8(v23 + *(v25 + 72) * v20, v21, type metadata accessor for ServiceEventValue);
  (*(v25 + 56))(v21, 0, 1, v24);
  sub_22DEF12FC(v21, v22, &qword_27DA47BC0, &unk_22DF65300);
  v26 = swift_getEnumCaseMultiPayload();
  v27 = *(v0 + 1624);
  if (v26 == 1)
  {
    *(v0 + 1528) = *v27;
    goto LABEL_18;
  }

  if (v26 != 2)
  {
    sub_22DF4B920(v27, type metadata accessor for ServiceEventValue);
    goto LABEL_16;
  }

  *(v0 + 1520) = *v27;
LABEL_18:
  v1 = sub_22DF64154();
  v30 = v31;

LABEL_19:
  *(v0 + 1880) = v30;
  *(v0 + 1872) = v1;
  sub_22DEF1364(*(v0 + 1632), &qword_27DA47BC0, &unk_22DF65300);

  v32 = sub_22DF63714();
  v33 = sub_22DF63D24();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v49 = v35;
    *v34 = 136446466;
    v36 = sub_22DEF0354(v16, v15, &v49);

    *(v34 + 4) = v36;
    *(v34 + 12) = 2082;
    v37 = sub_22DEF0354(v1, v30, &v49);

    *(v34 + 14) = v37;
    _os_log_impl(&dword_22DEEA000, v32, v33, "sending one message %{public}s:%{public}s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v35, -1, -1);
    MEMORY[0x2318DDBE0](v34, -1, -1);
  }

  else
  {
  }

  v38 = *(v0 + 1792);
  v39 = *(v0 + 1784);
  v40 = *(v0 + 1560);

  nullsub_1();
  *(v0 + 1200) = v41;
  *(v0 + 1208) = v42;
  *(v0 + 1216) = v43;
  *(v0 + 1888) = sub_22DF4B3F0(v38, v39);
  *(v0 + 1896) = v44;
  *(v0 + 1904) = v45;
  v48 = (*(**(v40 + 160) + 152) + **(**(v40 + 160) + 152));
  v46 = swift_task_alloc();
  *(v0 + 1912) = v46;
  *v46 = v0;
  v46[1] = sub_22DF437D4;

  return v48(v0 + 744);
}

uint64_t sub_22DF476B4()
{
  v67 = v0;
  *(v0 + 512) = 0;
  *(v0 + 480) = 0u;
  *(v0 + 496) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  sub_22DEF12FC(v0 + 352, v0 + 16, &unk_27DA47BD0, qword_22DF69780);
  if (*(v0 + 40))
  {
    v1 = *(v0 + 160);
    *(v0 + 312) = *(v0 + 144);
    *(v0 + 328) = v1;
    *(v0 + 344) = *(v0 + 176);
    v2 = *(v0 + 96);
    *(v0 + 248) = *(v0 + 80);
    *(v0 + 264) = v2;
    v3 = *(v0 + 128);
    *(v0 + 280) = *(v0 + 112);
    *(v0 + 296) = v3;
    v4 = *(v0 + 32);
    *(v0 + 184) = *(v0 + 16);
    *(v0 + 200) = v4;
    v5 = *(v0 + 64);
    *(v0 + 216) = *(v0 + 48);
    *(v0 + 232) = v5;
    *(v0 + 1000) = &type metadata for AllEventFieldProvider;
    *(v0 + 1008) = &off_2841950F0;
    v6 = swift_allocObject();
    *(v0 + 976) = v6;
    sub_22DF4B870(v0 + 184, v6 + 16);
    sub_22DEF9ED8((v0 + 976));
    sub_22DF4B8CC(v0 + 184);
    __swift_destroy_boxed_opaque_existential_0((v0 + 976));
  }

  else
  {
    sub_22DEF1364(v0 + 16, &unk_27DA47BD0, qword_22DF69780);
  }

  *(v0 + 1952) = *(v0 + 1200);
  *(v0 + 1960) = *(v0 + 1208);
  v7 = sub_22DF2E5EC();
  swift_beginAccess();
  if (*v7 == 1)
  {
    v8 = *(v0 + 1792);
    v9 = *(v8 + 16);
    *(v0 + 1976) = v9;
    if (v9)
    {
      v10 = *(v0 + 1592);
      *(v0 + 1984) = *(*(v0 + 1560) + 168);
      v11 = *(v10 + 80);
      *(v0 + 2208) = v11;
      *(v0 + 1992) = *(v10 + 72);
      *(v0 + 2000) = 0u;
      v12 = *(v0 + 1616);
      v13 = *(v0 + 1608);
      sub_22DF4B9B8(v8 + ((v11 + 32) & ~v11), v12, type metadata accessor for SessionConfiguration.Backend);
      sub_22DF4B9B8(v12, v13, type metadata accessor for SessionConfiguration.Backend);

      v14 = sub_22DF63714();
      v15 = sub_22DF63D24();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v0 + 1880);
        v17 = *(v0 + 1872);
        v18 = *(v0 + 1864);
        v19 = *(v0 + 1856);
        v20 = *(v0 + 1608);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v66 = v22;
        *v21 = 136446722;
        *(v21 + 4) = sub_22DEF0354(v19, v18, &v66);
        *(v21 + 12) = 2082;
        *(v21 + 14) = sub_22DEF0354(v17, v16, &v66);
        *(v21 + 22) = 2082;
        v23 = sub_22DF09280();
        v25 = v24;
        sub_22DF4B920(v20, type metadata accessor for SessionConfiguration.Backend);
        v26 = sub_22DEF0354(v23, v25, &v66);

        *(v21 + 24) = v26;
        _os_log_impl(&dword_22DEEA000, v14, v15, "writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2318DDBE0](v22, -1, -1);
        MEMORY[0x2318DDBE0](v21, -1, -1);
      }

      else
      {
        v58 = *(v0 + 1608);

        sub_22DF4B920(v58, type metadata accessor for SessionConfiguration.Backend);
      }

      v59 = *(v0 + 1984);
      *(v0 + 2016) = sub_22DF09280();
      *(v0 + 2024) = v60;
      v61 = sub_22DF443AC;
      v62 = v59;
      goto LABEL_23;
    }
  }

  if (*(v0 + 1840))
  {

    swift_unknownObjectRetain();
    v27 = sub_22DF63714();
    v28 = sub_22DF63D24();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 1880);
      v30 = *(v0 + 1872);
      v31 = *(v0 + 1864);
      v32 = *(v0 + 1856);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v66 = v34;
      *v33 = 136446466;
      *(v33 + 4) = sub_22DEF0354(v32, v31, &v66);
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_22DEF0354(v30, v29, &v66);
      _os_log_impl(&dword_22DEEA000, v27, v28, "processing sendOneMessage, immediate %{public}s:%{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318DDBE0](v34, -1, -1);
      MEMORY[0x2318DDBE0](v33, -1, -1);
    }

    v35 = *(v0 + 1968);
    v36 = *(v0 + 1960);
    v37 = *(v0 + 1952);
    v65 = *(v0 + 1848);
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47298, &qword_22DF654C0);
    v39 = swift_allocObject();
    *(v0 + 2040) = v39;
    *(v39 + 16) = xmmword_22DF65900;
    *(v39 + 32) = v37;
    *(v39 + 40) = v36;
    *(v39 + 48) = v35;
    v40 = *(v65 + 8);

    v64 = (v40 + *v40);
    v41 = swift_task_alloc();
    *(v0 + 2048) = v41;
    *v41 = v0;
    v41[1] = sub_22DF44BBC;
    v42 = *(v0 + 1848);

    return v64(v39, ObjectType, v42);
  }

  else
  {
    if (!*(*(v0 + 1792) + 16))
    {
      v62 = *(v0 + 1760);
      v63 = *v62 + 256;
      *(v0 + 2080) = *v63;
      *(v0 + 2088) = v63 & 0xFFFFFFFFFFFFLL | 0x1E4F000000000000;
      v61 = sub_22DF453C8;
LABEL_23:

      return MEMORY[0x2822009F8](v61, v62, 0);
    }

    v44 = sub_22DF63714();
    v45 = sub_22DF63D24();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = *(v0 + 1880);
      v47 = *(v0 + 1872);
      v48 = *(v0 + 1864);
      v49 = *(v0 + 1856);
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v66 = v51;
      *v50 = 136446466;
      *(v50 + 4) = sub_22DEF0354(v49, v48, &v66);
      *(v50 + 12) = 2082;
      *(v50 + 14) = sub_22DEF0354(v47, v46, &v66);
      _os_log_impl(&dword_22DEEA000, v44, v45, "caching sendOneMessage %{public}s:%{public}s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318DDBE0](v51, -1, -1);
      MEMORY[0x2318DDBE0](v50, -1, -1);
    }

    sub_22DF63554();
    v52 = swift_task_alloc();
    *(v0 + 2064) = v52;
    *v52 = v0;
    v52[1] = sub_22DF45088;
    v53 = *(v0 + 1968);
    v54 = *(v0 + 1960);
    v55 = *(v0 + 1952);
    v56 = *(v0 + 1736);
    v57 = *(v0 + 1584);

    return sub_22DF01C9C(v0 + 744, v57, v56, v55, v54, v53);
  }
}

uint64_t sub_22DF47F20()
{
  v83 = v0;
  v1 = *(v0 + 2032);
  v2 = *(v0 + 1616);
  v3 = *(v0 + 1600);

  sub_22DF4B9B8(v2, v3, type metadata accessor for SessionConfiguration.Backend);

  v4 = v1;
  v5 = sub_22DF63714();
  v6 = sub_22DF63D04();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 1880);
    v8 = *(v0 + 1872);
    v9 = *(v0 + 1864);
    v10 = *(v0 + 1856);
    v78 = *(v0 + 2032);
    v80 = *(v0 + 1616);
    v11 = *(v0 + 1600);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v82 = v13;
    *v12 = 136446978;
    *(v12 + 4) = sub_22DEF0354(v10, v9, &v82);
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_22DEF0354(v8, v7, &v82);
    *(v12 + 22) = 2082;
    v14 = sub_22DF09280();
    v16 = v15;
    sub_22DF4B920(v11, type metadata accessor for SessionConfiguration.Backend);
    v17 = sub_22DEF0354(v14, v16, &v82);

    *(v12 + 24) = v17;
    *(v12 + 32) = 2082;
    swift_getErrorValue();
    v18 = sub_22DF64244();
    v20 = sub_22DEF0354(v18, v19, &v82);

    *(v12 + 34) = v20;
    _os_log_impl(&dword_22DEEA000, v5, v6, "failed writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s with error %{public}s", v12, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v13, -1, -1);
    MEMORY[0x2318DDBE0](v12, -1, -1);

    v21 = v80;
  }

  else
  {
    v22 = *(v0 + 2032);
    v23 = *(v0 + 1616);
    v24 = *(v0 + 1600);

    sub_22DF4B920(v24, type metadata accessor for SessionConfiguration.Backend);
    v21 = v23;
  }

  sub_22DF4B920(v21, type metadata accessor for SessionConfiguration.Backend);
  v25 = *(v0 + 2008) + 1;
  if (v25 == *(v0 + 1976))
  {
    if (*(v0 + 1840))
    {

      swift_unknownObjectRetain();
      v26 = sub_22DF63714();
      v27 = sub_22DF63D24();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = *(v0 + 1880);
        v29 = *(v0 + 1872);
        v30 = *(v0 + 1864);
        v31 = *(v0 + 1856);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v82 = v33;
        *v32 = 136446466;
        *(v32 + 4) = sub_22DEF0354(v31, v30, &v82);
        *(v32 + 12) = 2082;
        *(v32 + 14) = sub_22DEF0354(v29, v28, &v82);
        _os_log_impl(&dword_22DEEA000, v26, v27, "processing sendOneMessage, immediate %{public}s:%{public}s", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318DDBE0](v33, -1, -1);
        MEMORY[0x2318DDBE0](v32, -1, -1);
      }

      v34 = *(v0 + 1968);
      v35 = *(v0 + 1960);
      v36 = *(v0 + 1952);
      v81 = *(v0 + 1848);
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47298, &qword_22DF654C0);
      v38 = swift_allocObject();
      *(v0 + 2040) = v38;
      *(v38 + 16) = xmmword_22DF65900;
      *(v38 + 32) = v36;
      *(v38 + 40) = v35;
      *(v38 + 48) = v34;
      v39 = *(v81 + 8);

      v79 = (v39 + *v39);
      v40 = swift_task_alloc();
      *(v0 + 2048) = v40;
      *v40 = v0;
      v40[1] = sub_22DF44BBC;
      v41 = *(v0 + 1848);

      return v79(v38, ObjectType, v41);
    }

    if (*(*(v0 + 1792) + 16))
    {

      v63 = sub_22DF63714();
      v64 = sub_22DF63D24();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = *(v0 + 1880);
        v66 = *(v0 + 1872);
        v67 = *(v0 + 1864);
        v68 = *(v0 + 1856);
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v82 = v70;
        *v69 = 136446466;
        *(v69 + 4) = sub_22DEF0354(v68, v67, &v82);
        *(v69 + 12) = 2082;
        *(v69 + 14) = sub_22DEF0354(v66, v65, &v82);
        _os_log_impl(&dword_22DEEA000, v63, v64, "caching sendOneMessage %{public}s:%{public}s", v69, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318DDBE0](v70, -1, -1);
        MEMORY[0x2318DDBE0](v69, -1, -1);
      }

      sub_22DF63554();
      v71 = swift_task_alloc();
      *(v0 + 2064) = v71;
      *v71 = v0;
      v71[1] = sub_22DF45088;
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);
      v75 = *(v0 + 1736);
      v76 = *(v0 + 1584);

      return sub_22DF01C9C(v0 + 744, v76, v75, v74, v73, v72);
    }

    v62 = *(v0 + 1760);
    v77 = *v62 + 256;
    *(v0 + 2080) = *v77;
    *(v0 + 2088) = v77 & 0xFFFFFFFFFFFFLL | 0x1E4F000000000000;
    v61 = sub_22DF453C8;
  }

  else
  {
    *(v0 + 2008) = v25;
    *(v0 + 2000) = 0;
    v43 = *(v0 + 1616);
    v44 = *(v0 + 1608);
    sub_22DF4B9B8(*(v0 + 1792) + ((*(v0 + 2208) + 32) & ~*(v0 + 2208)) + *(v0 + 1992) * v25, v43, type metadata accessor for SessionConfiguration.Backend);
    sub_22DF4B9B8(v43, v44, type metadata accessor for SessionConfiguration.Backend);

    v45 = sub_22DF63714();
    v46 = sub_22DF63D24();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 1880);
      v48 = *(v0 + 1872);
      v49 = *(v0 + 1864);
      v50 = *(v0 + 1856);
      v51 = *(v0 + 1608);
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v82 = v53;
      *v52 = 136446722;
      *(v52 + 4) = sub_22DEF0354(v50, v49, &v82);
      *(v52 + 12) = 2082;
      *(v52 + 14) = sub_22DEF0354(v48, v47, &v82);
      *(v52 + 22) = 2082;
      v54 = sub_22DF09280();
      v56 = v55;
      sub_22DF4B920(v51, type metadata accessor for SessionConfiguration.Backend);
      v57 = sub_22DEF0354(v54, v56, &v82);

      *(v52 + 24) = v57;
      _os_log_impl(&dword_22DEEA000, v45, v46, "writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318DDBE0](v53, -1, -1);
      MEMORY[0x2318DDBE0](v52, -1, -1);
    }

    else
    {
      v58 = *(v0 + 1608);

      sub_22DF4B920(v58, type metadata accessor for SessionConfiguration.Backend);
    }

    v59 = *(v0 + 1984);
    *(v0 + 2016) = sub_22DF09280();
    *(v0 + 2024) = v60;
    v61 = sub_22DF443AC;
    v62 = v59;
  }

  return MEMORY[0x2822009F8](v61, v62, 0);
}

uint64_t sub_22DF488B8()
{
  v30 = v0;
  v1 = *(v0 + 257);

  v2 = v1;
  v3 = sub_22DF63714();
  v4 = sub_22DF63D04();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 257);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_22DF64244();
    v10 = sub_22DEF0354(v8, v9, &v29);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22DEEA000, v3, v4, "immediate backend failed to send events: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2318DDBE0](v7, -1, -1);
    MEMORY[0x2318DDBE0](v6, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = *(v0 + 257);

    swift_unknownObjectRelease();
  }

  if (*(*(v0 + 224) + 16))
  {

    v12 = sub_22DF63714();
    v13 = sub_22DF63D24();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 235);
      v15 = *(v0 + 234);
      v16 = *(v0 + 233);
      v17 = *(v0 + 232);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_22DEF0354(v17, v16, &v29);
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_22DEF0354(v15, v14, &v29);
      _os_log_impl(&dword_22DEEA000, v12, v13, "caching sendOneMessage %{public}s:%{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318DDBE0](v19, -1, -1);
      MEMORY[0x2318DDBE0](v18, -1, -1);
    }

    sub_22DF63554();
    v20 = swift_task_alloc();
    *(v0 + 258) = v20;
    *v20 = v0;
    v20[1] = sub_22DF45088;
    v21 = *(v0 + 246);
    v22 = *(v0 + 245);
    v23 = *(v0 + 244);
    v24 = v0[217];
    v25 = *(v0 + 198);

    return sub_22DF01C9C((v0 + 93), v25, v24, v23, v22, v21);
  }

  else
  {
    v27 = *(v0 + 220);
    v28 = *v27 + 256;
    v0[260] = *v28;
    *(v0 + 261) = v28 & 0xFFFFFFFFFFFFLL | 0x1E4F000000000000;

    return MEMORY[0x2822009F8](sub_22DF453C8, v27, 0);
  }
}

uint64_t sub_22DF48C60()
{
  v16 = v0;
  v1 = v0[259];
  v2 = v1;
  v3 = sub_22DF63714();
  v4 = sub_22DF63D04();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[259];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_22DF64244();
    v10 = sub_22DEF0354(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22DEEA000, v3, v4, "failed to cache sendOneMessage event: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2318DDBE0](v7, -1, -1);
    MEMORY[0x2318DDBE0](v6, -1, -1);
  }

  else
  {
    v11 = v0[259];
  }

  v12 = v0[220];
  v13 = *v12 + 256;
  v0[260] = *v13;
  v0[261] = v13 & 0xFFFFFFFFFFFFLL | 0x1E4F000000000000;

  return MEMORY[0x2822009F8](sub_22DF453C8, v12, 0);
}

void sub_22DF48E14()
{
  v40 = v0;
  v1 = *(v0 + 2200);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1688);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1016));
  sub_22DF4B9B8(v2, v3, type metadata accessor for CachedSession);
  v4 = v1;
  v5 = sub_22DF63714();
  v6 = sub_22DF63D04();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 1688);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446466;
    v11 = *(v7 + 16);
    v10 = *(v7 + 32);
    v12 = *(v7 + 48);
    *(v0 + 632) = *v7;
    *(v0 + 648) = v11;
    *(v0 + 680) = v12;
    *(v0 + 664) = v10;
    v13 = *(v0 + 632);
    v14 = *(v0 + 640);
    v15 = *(v0 + 648);
    v16 = *(v0 + 656);
    v37 = v9;
    v38 = v13;
    v39 = v14;
    sub_22DEF0F4C(v0 + 632, v0 + 688);

    MEMORY[0x2318DCA20](58, 0xE100000000000000);
    MEMORY[0x2318DCA20](v15, v16);
    sub_22DF4B920(v7, type metadata accessor for CachedSession);
    sub_22DEF0FA8(v0 + 632);
    v17 = sub_22DEF0354(v38, v14, &v37);

    *(v8 + 4) = v17;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v18 = sub_22DF64244();
    v20 = sub_22DEF0354(v18, v19, &v37);

    *(v8 + 14) = v20;
    _os_log_impl(&dword_22DEEA000, v5, v6, "unable to determine sampling for identity %{public}s with error %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v9, -1, -1);
    MEMORY[0x2318DDBE0](v8, -1, -1);
  }

  else
  {
    v21 = *(v0 + 1688);

    sub_22DF4B920(v21, type metadata accessor for CachedSession);
  }

  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v23 = reply;
    v24 = *(v0 + 1560);
    MessageKeys.samplingOutcome.unsafeMutableAddressor();

    v25 = ServiceSamplingOutcome.rawValue.getter(6);
    v26 = sub_22DF63A34();

    xpc_dictionary_set_int64(v23, (v26 + 32), v25);

    swift_beginAccess();
    v27 = *(v24 + 112);
    if (v27)
    {
      swift_beginAccess();
      v28 = *(v27 + 16);
      if (v28)
      {
        xpc_connection_send_message(v28, v23);
        v29 = sub_22DF63714();
        v30 = sub_22DF63CE4();
        v31 = os_log_type_enabled(v29, v30);
        v32 = *(v0 + 2200);
        v33 = *(v0 + 1696);
        if (v31)
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_22DEEA000, v29, v30, "CheckSamplingResult Error Reply Sent", v34, 2u);
          MEMORY[0x2318DDBE0](v34, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        sub_22DF4B920(v33, type metadata accessor for CachedSession);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v35 = *(v0 + 2200);
  sub_22DF4B920(*(v0 + 1696), type metadata accessor for CachedSession);

LABEL_12:

  v36 = *(v0 + 8);

  v36();
}

void sub_22DF492D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22DF63744();
  swift_unknownObjectRelease();
  if (v4 == a1)
  {
    if (qword_27DA4D8F0 != -1)
    {
      swift_once();
    }

    v16 = sub_22DF63734();
    __swift_project_value_buffer(v16, qword_27DA4D8F8);

    v17 = sub_22DF63714();
    v18 = sub_22DF63CE4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_22DEF0354(*(v2 + 128), *(v2 + 136), &v26);
      _os_log_impl(&dword_22DEEA000, v17, v18, "XPC client %{public}s closed connection", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x2318DDBE0](v20, -1, -1);
      MEMORY[0x2318DDBE0](v19, -1, -1);
    }

    sub_22DF3E714();
  }

  else
  {
    v5 = sub_22DF63754();
    swift_unknownObjectRelease();
    if (v5 == a1)
    {
      if (qword_27DA4D8F0 != -1)
      {
        swift_once();
      }

      v21 = sub_22DF63734();
      __swift_project_value_buffer(v21, qword_27DA4D8F8);

      oslog = sub_22DF63714();
      v22 = sub_22DF63CE4();

      if (os_log_type_enabled(oslog, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v26 = v24;
        *v23 = 136446210;
        *(v23 + 4) = sub_22DEF0354(*(v2 + 128), *(v2 + 136), &v26);
        _os_log_impl(&dword_22DEEA000, oslog, v22, "XPC client %{public}s interrupted connection", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x2318DDBE0](v24, -1, -1);
        MEMORY[0x2318DDBE0](v23, -1, -1);
      }
    }

    else
    {
      v6 = MEMORY[0x2318DDEE0](a1);
      v7 = sub_22DF63AA4();
      v9 = v8;
      if (qword_27DA4D8F0 != -1)
      {
        swift_once();
      }

      v10 = sub_22DF63734();
      __swift_project_value_buffer(v10, qword_27DA4D8F8);

      v11 = sub_22DF63714();
      v12 = sub_22DF63CE4();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v26 = v14;
        *v13 = 136315138;
        v15 = sub_22DEF0354(v7, v9, &v26);

        *(v13 + 4) = v15;
        _os_log_impl(&dword_22DEEA000, v11, v12, "XPC connection triggered error: %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x2318DDBE0](v14, -1, -1);
        MEMORY[0x2318DDBE0](v13, -1, -1);
      }

      else
      {
      }

      sub_22DF3E714();

      free(v6);
    }
  }
}

uint64_t sub_22DF49704(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v3[37] = *v2;
  sub_22DF63594();
  v3[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF49858, v2, 0);
}

void sub_22DF49858()
{
  v100 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 280);
  MessageKeys.sendOneMessageSessionInfo.unsafeMutableAddressor();

  XPCDictionary.subscript.getter(v2, v1);

  v3 = type metadata accessor for XPCObject(0);
  v4 = *(*(v3 - 8) + 48);
  v5 = v4(v1, 1, v3);
  v6 = *(v0 + 376);
  if (v5 == 1)
  {
    sub_22DEF1364(*(v0 + 376), &unk_27DA47600, &unk_22DF660C0);
    goto LABEL_8;
  }

  if (swift_getEnumCaseMultiPayload() == 12)
  {
    v7 = *(v0 + 368);
    v8 = *(v0 + 280);
    v9 = *v6;
    MessageKeys.sendOneMessageEvent.unsafeMutableAddressor();

    XPCDictionary.subscript.getter(v8, v7);

    v10 = v4(v7, 1, v3);
    v11 = *(v0 + 368);
    if (v10 == 1)
    {
      swift_unknownObjectRelease();
      sub_22DEF1364(v11, &unk_27DA47600, &unk_22DF660C0);
      goto LABEL_8;
    }

    if (swift_getEnumCaseMultiPayload() == 12)
    {
      v30 = *(v0 + 360);
      v31 = *v11;
      MessageKeys.eventType.unsafeMutableAddressor();

      XPCDictionary.subscript.getter(v9, v30);

      v32 = v4(v30, 1, v3);
      v33 = *(v0 + 360);
      if (v32 == 1)
      {
LABEL_24:
        sub_22DEF1364(v33, &unk_27DA47600, &unk_22DF660C0);
LABEL_34:
        if (qword_27DA4D8F0 != -1)
        {
          swift_once();
        }

        v41 = sub_22DF63734();
        __swift_project_value_buffer(v41, qword_27DA4D8F8);

        v42 = sub_22DF63714();
        v43 = sub_22DF63D04();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = *(v0 + 288);
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v99 = v46;
          *v45 = 136446210;
          *(v45 + 4) = sub_22DEF0354(*(v44 + 128), *(v44 + 136), &v99);
          _os_log_impl(&dword_22DEEA000, v42, v43, "missing required values in create session from %{public}s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v46);
          MEMORY[0x2318DDBE0](v46, -1, -1);
          MEMORY[0x2318DDBE0](v45, -1, -1);
        }

        reply = xpc_dictionary_create_reply(*(v0 + 280));
        if (!reply)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_18;
        }

        v48 = reply;
        v49 = *(v0 + 288);
        xpc_dictionary_set_string(reply, "error", "missing required sendOneMessage event fields");
        swift_beginAccess();
        v50 = *(v49 + 112);
        if (v50)
        {
          swift_beginAccess();
          v51 = *(v50 + 16);
          if (v51)
          {
            xpc_connection_send_message(v51, v48);
            v24 = sub_22DF63714();
            v52 = sub_22DF63CE4();
            if (os_log_type_enabled(v24, v52))
            {
              v53 = swift_slowAlloc();
              *v53 = 0;
              _os_log_impl(&dword_22DEEA000, v24, v52, "CheckSamplingResult Error Reply Sent", v53, 2u);
              MEMORY[0x2318DDBE0](v53, -1, -1);
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_17;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_79;
      }

      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v34 = *(v0 + 352);
        v35 = v33[1];
        v98 = *v33;
        MessageKeys.clientType.unsafeMutableAddressor();

        XPCDictionary.subscript.getter(v9, v34);

        v36 = v4(v34, 1, v3);
        v33 = *(v0 + 352);
        if (v36 == 1)
        {

          goto LABEL_24;
        }

        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v37 = *(v0 + 344);
          v96 = *v33;
          xdict = v31;
          v38 = v33[1];
          MessageKeys.transportConfiguration.unsafeMutableAddressor();

          XPCDictionary.subscript.getter(v9, v37);

          v39 = v4(v37, 1, v3);
          v40 = *(v0 + 344);
          if (v39 == 1)
          {

            sub_22DEF1364(v40, &unk_27DA47600, &unk_22DF660C0);
            goto LABEL_34;
          }

          v95 = v38;
          if (swift_getEnumCaseMultiPayload() != 12)
          {

            sub_22DF4B920(v40, type metadata accessor for XPCObject);
            goto LABEL_34;
          }

          v94 = v35;
          v54 = *(v0 + 336);
          v55 = *v40;
          MessageKeys.tcAllowsCellularAccess.unsafeMutableAddressor();

          XPCDictionary.subscript.getter(v55, v54);

          v56 = v4(v54, 1, v3);
          v57 = *(v0 + 336);
          if (v56 == 1)
          {
            sub_22DEF1364(*(v0 + 336), &unk_27DA47600, &unk_22DF660C0);
            goto LABEL_56;
          }

          if (swift_getEnumCaseMultiPayload() != 2)
          {
            goto LABEL_55;
          }

          v58 = *(v0 + 328);
          v93 = *v57;
          MessageKeys.tcAllowsExpensiveAccess.unsafeMutableAddressor();

          XPCDictionary.subscript.getter(v55, v58);

          v59 = v4(v58, 1, v3);
          v57 = *(v0 + 328);
          if (v59 == 1)
          {
            sub_22DEF1364(*(v0 + 328), &unk_27DA47600, &unk_22DF660C0);
            goto LABEL_56;
          }

          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v60 = *(v0 + 320);
            v92 = *v57;
            MessageKeys.tcBundleID.unsafeMutableAddressor();

            XPCDictionary.subscript.getter(v55, v60);

            v61 = v3;
            v62 = v4(v60, 1, v3);
            v63 = *(v0 + 320);
            if (v62 == 1)
            {
              sub_22DEF1364(*(v0 + 320), &unk_27DA47600, &unk_22DF660C0);
            }

            else
            {
              if (swift_getEnumCaseMultiPayload() == 8)
              {
                v77 = *(v0 + 296);
                v90 = v63[1];
                v91 = *v63;
                *(v0 + 264) = sub_22DEFF370(MEMORY[0x277D84F90]);
                xpc_dictionary_get_count(xdict);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47590, &unk_22DF65E20);
                sub_22DF63914();
                v78 = swift_allocObject();
                *(v78 + 16) = v0 + 264;
                *(v78 + 24) = v77;
                v79 = swift_allocObject();
                *(v79 + 16) = sub_22DF4B980;
                *(v79 + 24) = v78;
                *(v0 + 104) = sub_22DEFF554;
                *(v0 + 112) = v79;
                *(v0 + 72) = MEMORY[0x277D85DD0];
                *(v0 + 80) = 1107296256;
                *(v0 + 88) = sub_22DEFBBE8;
                *(v0 + 96) = &block_descriptor_2;
                v80 = _Block_copy((v0 + 72));
                swift_unknownObjectRetain();

                xpc_dictionary_apply(xdict, v80);
                swift_unknownObjectRelease();
                _Block_release(v80);
                LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

                if ((v78 & 1) == 0)
                {
                  v81 = *(v0 + 312);
                  MessageKeys.samplingUUID.unsafeMutableAddressor();

                  XPCDictionary.subscript.getter(v9, v81);

                  v82 = v4(v81, 1, v61);
                  v83 = *(v0 + 312);
                  if (v82 == 1)
                  {
                    sub_22DEF1364(*(v0 + 312), &unk_27DA47600, &unk_22DF660C0);
                  }

                  else if (swift_getEnumCaseMultiPayload() != 8)
                  {
                    sub_22DF4B920(v83, type metadata accessor for XPCObject);
                  }

                  v84 = *(v0 + 304);
                  v85 = *(v0 + 272);
                  type metadata accessor for Session();
                  sub_22DF18860();
                  v87 = v86;

                  *(v0 + 16) = v96;
                  *(v0 + 24) = v95;
                  *(v0 + 32) = v98;
                  *(v0 + 40) = v94;
                  *(v0 + 48) = v93;
                  *(v0 + 49) = v92;
                  *(v0 + 56) = v91;
                  *(v0 + 64) = v90;
                  sub_22DF63554();
                  v88 = *(v0 + 264);

                  sub_22DF186B4(v0 + 16, 0x4D656E4F646E6553, 0xEE00656761737365, v84, v88, v85, v87);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v89 = type metadata accessor for CachedSession(0);
                  (*(*(v89 - 8) + 56))(v85, 0, 1, v89);

                  goto LABEL_19;
                }

LABEL_79:
                __break(1u);
                goto LABEL_80;
              }

              sub_22DF4B920(v63, type metadata accessor for XPCObject);
            }
          }

          else
          {
LABEL_55:
            sub_22DF4B920(v57, type metadata accessor for XPCObject);
          }

LABEL_56:
          if (qword_27DA4D8F0 == -1)
          {
            goto LABEL_57;
          }

          goto LABEL_76;
        }
      }

      sub_22DF4B920(v33, type metadata accessor for XPCObject);
      goto LABEL_34;
    }

    swift_unknownObjectRelease();
    v12 = v11;
  }

  else
  {
    v12 = v6;
  }

  sub_22DF4B920(v12, type metadata accessor for XPCObject);
LABEL_8:
  if (qword_27DA4D8F0 != -1)
  {
    swift_once();
  }

  v13 = sub_22DF63734();
  __swift_project_value_buffer(v13, qword_27DA4D8F8);

  v14 = sub_22DF63714();
  v15 = sub_22DF63D04();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 288);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v99 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_22DEF0354(*(v16 + 128), *(v16 + 136), &v99);
    _os_log_impl(&dword_22DEEA000, v14, v15, "missing required values for sendOneMessage from %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x2318DDBE0](v18, -1, -1);
    MEMORY[0x2318DDBE0](v17, -1, -1);
  }

  v19 = xpc_dictionary_create_reply(*(v0 + 280));
  if (!v19)
  {
    goto LABEL_18;
  }

  v20 = v19;
  v21 = *(v0 + 288);
  xpc_dictionary_set_string(v19, "error", "missing required sendOneMessage fields");
  swift_beginAccess();
  v22 = *(v21 + 112);
  if (!v22)
  {
    __break(1u);
    goto LABEL_75;
  }

  swift_beginAccess();
  v23 = *(v22 + 16);
  if (!v23)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
LABEL_57:
    v64 = sub_22DF63734();
    __swift_project_value_buffer(v64, qword_27DA4D8F8);

    v65 = sub_22DF63714();
    v66 = sub_22DF63D04();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = *(v0 + 288);
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v99 = v69;
      *v68 = 136446210;
      *(v68 + 4) = sub_22DEF0354(*(v67 + 128), *(v67 + 136), &v99);
      _os_log_impl(&dword_22DEEA000, v65, v66, "missing required values in transport configuration from %{public}s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x2318DDBE0](v69, -1, -1);
      MEMORY[0x2318DDBE0](v68, -1, -1);
    }

    v70 = xpc_dictionary_create_reply(*(v0 + 280));
    if (!v70)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_18;
    }

    v71 = v70;
    v72 = *(v0 + 288);
    xpc_dictionary_set_string(v70, "error", "missing required sendOneMessage event fields");
    swift_beginAccess();
    v73 = *(v72 + 112);
    if (v73)
    {
      swift_beginAccess();
      v74 = *(v73 + 16);
      if (v74)
      {
        swift_unknownObjectRetain();

        xpc_connection_send_message(v74, v71);
        swift_unknownObjectRelease();
        v24 = sub_22DF63714();
        v75 = sub_22DF63CE4();
        if (os_log_type_enabled(v24, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&dword_22DEEA000, v24, v75, "CheckSamplingResult Error Reply Sent", v76, 2u);
          MEMORY[0x2318DDBE0](v76, -1, -1);
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_17;
      }

LABEL_81:
      __break(1u);
      return;
    }

LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  xpc_connection_send_message(v23, v20);
  v24 = sub_22DF63714();
  v25 = sub_22DF63CE4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_22DEEA000, v24, v25, "CheckSamplingResult Error Reply Sent", v26, 2u);
    MEMORY[0x2318DDBE0](v26, -1, -1);
  }

LABEL_17:
  swift_unknownObjectRelease();

LABEL_18:
  v27 = *(v0 + 272);
  v28 = type metadata accessor for CachedSession(0);
  (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
LABEL_19:

  v29 = *(v0 + 8);

  v29();
}

BOOL sub_22DF4A88C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    ++v3;
    sub_22DF096AC();
  }

  while ((sub_22DF63974() & 1) == 0);
  return v4 != 0;
}

uint64_t sub_22DF4A910()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22DF4A970()
{
  sub_22DF4A910();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DF4A99C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22DF63F34();
  *a1 = result;
  return result;
}

uint64_t sub_22DF4A9C8(uint64_t a1, uint64_t a2)
{
  sub_22DF642A4();
  sub_22DF63944();
  return sub_22DF642D4();
}

uint64_t sub_22DF4AA2C(uint64_t a1, uint64_t a2)
{
  sub_22DF4B70C(&unk_27DA47B90, a2, type metadata accessor for Client, &unk_22DF695D0);
  v2 = sub_22DF63F34();
  return MEMORY[0x2318DD240](v2);
}

uint64_t sub_22DF4AAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22DF642A4();
  sub_22DF63944();
  return sub_22DF642D4();
}

BOOL sub_22DF4AB0C(uint64_t a1, uint64_t a2)
{
  sub_22DF4B70C(&unk_27DA47B90, a2, type metadata accessor for Client, &unk_22DF695D0);
  v2 = sub_22DF63F34();
  return v2 == sub_22DF63F34();
}

void sub_22DF4ABA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v9 = type metadata accessor for ServiceEventValue(0);
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for XPCObject(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  v41 = sub_22DF63AA4();
  v23 = v22;
  v24 = swift_unknownObjectRetain();
  XPCObject.init(_:)(v24, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    v25 = &unk_27DA47600;
    v26 = &unk_22DF660C0;
    v27 = v14;
  }

  else
  {
    sub_22DF4BA20(v14, v21, type metadata accessor for XPCObject);
    sub_22DF4B9B8(v21, v19, type metadata accessor for XPCObject);
    sub_22DEFADA0(v19, v8);
    v28 = v44;
    if ((*(v44 + 48))(v8, 1, v9) != 1)
    {
      sub_22DF4BA20(v8, v11, type metadata accessor for ServiceEventValue);
      v39 = v42;
      sub_22DF4B9B8(v11, v42, type metadata accessor for ServiceEventValue);
      (*(v28 + 56))(v39, 0, 1, v9);
      sub_22DEFBA28(v39, v41, v23);
      sub_22DF4B920(v11, type metadata accessor for ServiceEventValue);
      sub_22DF4B920(v21, type metadata accessor for XPCObject);
      return;
    }

    sub_22DF4B920(v21, type metadata accessor for XPCObject);

    v25 = &qword_27DA47BC0;
    v26 = &unk_22DF65300;
    v27 = v8;
  }

  sub_22DEF1364(v27, v25, v26);
  v29 = MEMORY[0x2318DE010](a2);
  xpc_type_get_name(v29);
  v30 = sub_22DF63AA4();
  v32 = v31;
  if (qword_27DA4D8F0 != -1)
  {
    swift_once();
  }

  v33 = sub_22DF63734();
  __swift_project_value_buffer(v33, qword_27DA4D8F8);

  v34 = sub_22DF63714();
  v35 = sub_22DF63D04();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v45 = v37;
    *v36 = 136446210;
    v38 = sub_22DEF0354(v30, v32, &v45);

    *(v36 + 4) = v38;
    _os_log_impl(&dword_22DEEA000, v34, v35, "skipping invalid payload value of type %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x2318DDBE0](v37, -1, -1);
    MEMORY[0x2318DDBE0](v36, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_22DF4B0CC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22DEEFBD4;

  return sub_22DF418D4(v5, v6, v7, v2, v3, v4);
}

unint64_t sub_22DF4B174(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_22DF63A74();
    v13[0] = sub_22DF63B04();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_22DF4B278(uint64_t result)
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

  v3 = sub_22DF0F210(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  result = type metadata accessor for SessionConfiguration.Backend(0);
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

uint64_t sub_22DF4B3A4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_22DF4B3F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SessionConfiguration.Backend(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v7 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v20[0] = a1;

  result = sub_22DF4B278(v10);
  v12 = v20[0];
  v13 = *(v20[0] + 16);
  if (v13)
  {
    v14 = 0;
    while (1)
    {
      if (v14 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      sub_22DF4B9B8(v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, v6, type metadata accessor for SessionConfiguration.Backend);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      ++v14;
      result = sub_22DF4B920(v6, type metadata accessor for SessionConfiguration.Backend);
      if (v13 == v14)
      {
        goto LABEL_6;
      }
    }

    sub_22DF4BA20(v6, v9, type metadata accessor for SessionConfiguration.BackendHTTP);
    result = sub_22DF09568();
    v15 = result;
    v16 = *(result + 16);
    if (!v16)
    {
LABEL_12:

      sub_22DF4B920(v9, type metadata accessor for SessionConfiguration.BackendHTTP);
      return 0;
    }

    v17 = 0;
    v18 = result + 32;
    while (v17 < *(v15 + 16))
    {
      sub_22DEF2388(v18, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47BB0, "2?");
      result = swift_dynamicCast();
      if (result)
      {

        sub_22DF4B920(v9, type metadata accessor for SessionConfiguration.BackendHTTP);
        return v19;
      }

      ++v17;
      v18 += 40;
      if (v16 == v17)
      {
        goto LABEL_12;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

uint64_t sub_22DF4B70C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22DF4B780(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_22DF4B7C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22DF4B824(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22DF4B920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22DF4B9B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DF4BA20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22DF4BAA8()
{
  v1 = v0;
  v2 = sub_22DF630C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CacheError(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22DF51578(v1, v8, type metadata accessor for CacheError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v5, v8, v2);
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_22DF63F24();

      v13 = 0x800000022DF6F720;
      v14 = 0xD000000000000028;
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_22DF63F24();

      v13 = 0x800000022DF6F750;
      v14 = 0xD000000000000026;
    }

    v18 = v14;
    v19 = v13;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v3 + 32))(v5, v8, v2);
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_22DF63F24();
    MEMORY[0x2318DCA20](0xD000000000000031, 0x800000022DF6F6E0);
LABEL_11:
    sub_22DF4BFFC(&unk_27DA47330, MEMORY[0x277CC8620], MEMORY[0x277CC8628]);
    v15 = sub_22DF64244();
    MEMORY[0x2318DCA20](v15);

    v12 = v18;
    (*(v3 + 8))(v5, v2);
    return v12;
  }

  if (EnumCaseMultiPayload != 3)
  {
    return 0x727265206B636F6DLL;
  }

  v10 = *v8;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_22DF63F24();

  v18 = 0xD00000000000002BLL;
  v19 = 0x800000022DF6F6B0;
  swift_getErrorValue();
  v11 = sub_22DF64244();
  MEMORY[0x2318DCA20](v11);

  return v18;
}

uint64_t sub_22DF4BE38()
{
  v0 = sub_22DF63734();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22DF2E560();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_22DF63714();
  v6 = sub_22DF63D14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22DEEA000, v5, v6, "mock error", v7, 2u);
    MEMORY[0x2318DDBE0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  type metadata accessor for CacheError(0);
  sub_22DF4BFFC(&qword_27DA47BE8, type metadata accessor for CacheError, &unk_22DF69810);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_22DF4BFFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22DF4C0B0(uint64_t a1, const char *a2, uint64_t a3, ...)
{
  v3 = a3;
  v33 = a2;
  v5 = sub_22DF630C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22DF63734();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22DF2E560();
  v14 = *(v10 + 16);
  v34 = v9;
  v14(v12, v13, v9);
  v15 = *(v6 + 16);
  v36 = v6 + 16;
  v37 = a1;
  v16 = v5;
  v35 = v15;
  v15(v8, a1, v5);
  v17 = sub_22DF63714();
  v18 = sub_22DF63D14();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = v19;
    v31 = swift_slowAlloc();
    v38 = v31;
    *v19 = 136446210;
    sub_22DF4BFFC(&unk_27DA47330, MEMORY[0x277CC8620], MEMORY[0x277CC8628]);
    v20 = sub_22DF64244();
    v32 = v3;
    v22 = v21;
    (*(v6 + 8))(v8, v16);
    v23 = sub_22DEF0354(v20, v22, &v38);

    v24 = v30;
    *(v30 + 1) = v23;
    v25 = v18;
    v26 = v24;
    _os_log_impl(&dword_22DEEA000, v17, v25, v33, v24, 0xCu);
    v27 = v31;
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x2318DDBE0](v27, -1, -1);
    MEMORY[0x2318DDBE0](v26, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  (*(v10 + 8))(v12, v34);
  type metadata accessor for CacheError(0);
  sub_22DF4BFFC(&qword_27DA47BE8, type metadata accessor for CacheError, &unk_22DF69810);
  swift_allocError();
  v35(v28, v37, v16);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

id sub_22DF4C448(void *a1)
{
  v2 = sub_22DF63734();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22DF2E560();
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = sub_22DF63714();
  v9 = sub_22DF63D14();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = sub_22DF64244();
    v15 = sub_22DEF0354(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_22DEEA000, v8, v9, "unable to access storebag cache (UNKNOWN): %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x2318DDBE0](v12, -1, -1);
    MEMORY[0x2318DDBE0](v11, -1, -1);

    (*(v3 + 8))(v5, v19);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for CacheError(0);
  sub_22DF4BFFC(&qword_27DA47BE8, type metadata accessor for CacheError, &unk_22DF69810);
  swift_allocError();
  *v16 = a1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return a1;
}

uint64_t sub_22DF4C6C8()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E6C8);
  __swift_project_value_buffer(v0, qword_27DA4E6C8);
  return sub_22DF63724();
}

double sub_22DF4C74C()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22DF4C784(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_22DF4C854(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t sub_22DF4C924(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
  return swift_unknownObjectRelease();
}

void *sub_22DF4C9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = sub_22DF63444();
  v10 = *(v24 - 8);
  v11 = MEMORY[0x28223BE20](v24);
  v23[0] = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - v13;
  v23[1] = v5;
  v15 = swift_allocObject();
  swift_defaultActor_initialize();
  v15[16] = 0;
  v15[15] = 0;
  v15[14] = a1;
  swift_beginAccess();
  v15[15] = a2;
  v16 = a4;
  swift_beginAccess();
  v15[16] = a3;
  swift_unknownObjectRetain();
  v23[3] = a2;

  v17 = v23[2];
  sub_22DF2FA30(a4, 0x67616265726F7473, 0xEA00000000002F73, v14);
  if (v17)
  {

    swift_unknownObjectRelease();
    v20 = v24;
    swift_defaultActor_destroy();

    swift_unknownObjectRelease();
    (*(v10 + 8))(v16, v20);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v24;
    (*(v10 + 32))(v15 + OBJC_IVAR____TtC19CloudTelemetryTools13StorebagCache_storebagCacheURL, v14, v24);
    type metadata accessor for StorebagSource(0);
    v19 = v23[0];
    (*(v10 + 16))(v23[0], a4, v18);
    v22 = sub_22DF2A2FC(v19);
    (*(v10 + 8))(a4, v24);

    swift_unknownObjectRelease();
    *(v15 + OBJC_IVAR____TtC19CloudTelemetryTools13StorebagCache_storebagSource) = v22;
  }

  return v15;
}

uint64_t sub_22DF4CCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v38 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47BF0, &unk_22DF697A0);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v36 - v8;
  v9 = sub_22DF63594();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CachedStorebag(0);
  v39 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v36 - v18;
  v20 = (*(*v3 + 128))(v17);
  if (*(v20 + 16) && (v21 = sub_22DEF08FC(a1, a2), (v22 & 1) != 0))
  {
    v36 = a2;
    sub_22DF51578(*(v20 + 56) + *(v39 + 72) * v21, v16, type metadata accessor for CachedStorebag);

    sub_22DF51640(v16, v19);
    sub_22DF63554();
    v23 = sub_22DF63524();
    (*(v10 + 8))(v12, v9);
    if (v23)
    {
      if (qword_27DA4DB90 != -1)
      {
        swift_once();
      }

      v24 = sub_22DF63734();
      __swift_project_value_buffer(v24, qword_27DA4E6C8);
      v25 = v36;

      v26 = sub_22DF63714();
      v27 = sub_22DF63D24();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v40[0] = v29;
        *v28 = 136446210;
        *(v28 + 4) = sub_22DEF0354(a1, v36, v40);
        _os_log_impl(&dword_22DEEA000, v26, v27, "removing expired storebag %{public}s from memory cache", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x2318DDBE0](v29, -1, -1);
        v25 = v36;
        MEMORY[0x2318DDBE0](v28, -1, -1);
      }

      v30 = (*(*v4 + 144))(v40);
      v31 = v37;
      sub_22DF508B0(a1, v25, v37);
      sub_22DEF1364(v31, &unk_27DA47BF0, &unk_22DF697A0);
      v30(v40, 0);
      sub_22DF515E0(v19, type metadata accessor for CachedStorebag);
      return (*(v39 + 56))(v38, 1, 1, v13);
    }

    else
    {
      v35 = v38;
      sub_22DF51640(v19, v38);
      return (*(v39 + 56))(v35, 0, 1, v13);
    }
  }

  else
  {

    v33 = v38;
    v34 = *(v39 + 56);

    return v34(v33, 1, 1, v13);
  }
}

uint64_t sub_22DF4D18C(uint64_t a1, uint64_t a2)
{
  v14[0] = sub_22DF63444();
  v4 = *(v14[0] - 8);
  MEMORY[0x28223BE20](v14[0]);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47BF0, &unk_22DF697A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v14 - v8;
  sub_22DF4CCDC(a1, a2, v14 - v8);
  v10 = type metadata accessor for CachedStorebag(0);
  v11 = 1;
  v12 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  sub_22DEF1364(v9, &unk_27DA47BF0, &unk_22DF697A0);
  if (v12 == 1)
  {
    v14[2] = a1;
    v14[3] = a2;

    MEMORY[0x2318DCA20](0x7473696C702ELL, 0xE600000000000000);
    sub_22DF633B4();

    v11 = sub_22DF633C4();
    (*(v4 + 8))(v6, v14[0]);
  }

  return v11 & 1;
}

uint64_t sub_22DF4D39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[27] = a1;
  v4[28] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47468, &qword_22DF697B0);
  v4[31] = swift_task_alloc();
  v5 = sub_22DF632E4();
  v4[32] = v5;
  v4[33] = *(v5 - 8);
  v4[34] = swift_task_alloc();
  v6 = sub_22DF63594();
  v4[35] = v6;
  v4[36] = *(v6 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v7 = sub_22DF63444();
  v4[40] = v7;
  v4[41] = *(v7 - 8);
  v4[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47BF0, &unk_22DF697A0);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v8 = type metadata accessor for CachedStorebag(0);
  v4[45] = v8;
  v4[46] = *(v8 - 8);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF4D648, v3, 0);
}

uint64_t sub_22DF4D648()
{
  v97 = v0;
  v96[2] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  sub_22DF4CCDC(*(v0 + 224), *(v0 + 232), v3);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v7 = *(v0 + 384);
    sub_22DF51640(*(v0 + 352), v7);
    v92 = *(v7 + 8);
    v8 = *(v7 + 24);
    v91 = *(v7 + 16);
    v9 = *(v7 + 32);
    v88 = *v7;

    v90 = v8;

    v95 = v9;

    sub_22DF515E0(v7, type metadata accessor for CachedStorebag);
    goto LABEL_4;
  }

  v4 = *(v0 + 232);
  v5 = *(v0 + 224);
  sub_22DEF1364(*(v0 + 352), &unk_27DA47BF0, &unk_22DF697A0);
  v96[0] = v5;
  v96[1] = v4;

  MEMORY[0x2318DCA20](0x7473696C702ELL, 0xE600000000000000);
  sub_22DF633B4();

  v6 = sub_22DF633C4();
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47470, &unk_22DF65BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22DF65900;
    v14 = *MEMORY[0x277CBE7B0];
    *(inited + 32) = *MEMORY[0x277CBE7B0];
    v15 = v14;
    sub_22DEF9A50(inited);
    swift_setDeallocating();
    sub_22DF515E0(inited + 32, type metadata accessor for URLResourceKey);
    sub_22DF63354();
    v19 = *(v0 + 280);
    v20 = *(v0 + 288);
    v22 = *(v0 + 264);
    v21 = *(v0 + 272);
    v24 = *(v0 + 248);
    v23 = *(v0 + 256);

    sub_22DF632B4();
    (*(v22 + 8))(v21, v23);
    result = (*(v20 + 48))(v24, 1, v19);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(*(v0 + 288) + 32))(*(v0 + 312), *(v0 + 248), *(v0 + 280));
    v25 = sub_22DF63464();
    v27 = v26;
    v28 = sub_22DF0BE94();
    sub_22DF0C6B0(v25, v27, v28, v0 + 56);
    v30 = *(v0 + 288);
    v29 = *(v0 + 296);
    v31 = *(v0 + 280);
    v32 = *(v0 + 64);
    sub_22DF63504();
    sub_22DF63554();
    LOBYTE(v25) = sub_22DF63524();
    v33 = *(v30 + 8);
    *(v0 + 408) = v33;
    *(v0 + 416) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33(v29, v31);
    if (v25)
    {
      *(v0 + 184) = *(v0 + 56);
      sub_22DEF1364(v0 + 184, &qword_27DA477F8, &unk_22DF670D0);
      *(v0 + 168) = *(v0 + 72);
      sub_22DF13A04(v0 + 168);
      *(v0 + 192) = *(v0 + 88);
      sub_22DEF1364(v0 + 192, &qword_27DA47C00, &qword_22DF670A0);
      if (qword_27DA4DB90 != -1)
      {
        swift_once();
      }

      v34 = sub_22DF63734();
      __swift_project_value_buffer(v34, qword_27DA4E6C8);

      v35 = sub_22DF63714();
      v36 = sub_22DF63D24();

      if (os_log_type_enabled(v35, v36))
      {
        v38 = *(v0 + 224);
        v37 = *(v0 + 232);
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v96[0] = v40;
        *v39 = 136446210;
        *(v39 + 4) = sub_22DEF0354(v38, v37, v96);
        _os_log_impl(&dword_22DEEA000, v35, v36, "removing expired storebag %{public}s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x2318DDBE0](v40, -1, -1);
        MEMORY[0x2318DDBE0](v39, -1, -1);
      }

      v41 = [objc_opt_self() defaultManager];
      v42 = sub_22DF63394();
      *(v0 + 208) = 0;
      v43 = [v41 removeItemAtURL:v42 error:v0 + 208];

      v44 = *(v0 + 208);
      if (v43)
      {
        v45 = *(**(v0 + 240) + 232);
        v46 = v44;
        v93 = (v45 + *v45);
        v47 = swift_task_alloc();
        *(v0 + 424) = v47;
        *v47 = v0;
        v47[1] = sub_22DF4EFA8;
        v48 = *(v0 + 232);
        v49 = *(v0 + 224);

        return v93(v0 + 16, v49, v48);
      }

      v76 = *(v0 + 328);
      v94 = *(v0 + 336);
      v78 = *(v0 + 312);
      v77 = *(v0 + 320);
      v79 = *(v0 + 304);
      v80 = v33;
      v81 = *(v0 + 280);
      v82 = v44;
      sub_22DF63334();

      swift_willThrow();
      v80(v79, v81);
      v80(v78, v81);
      (*(v76 + 8))(v94, v77);

      v11 = *(v0 + 8);
      goto LABEL_5;
    }

    v92 = v32;
    v87 = v33;
    v50 = *(v0 + 368);
    v51 = *(v0 + 376);
    v52 = *(v0 + 360);
    v53 = *(v0 + 344);
    v55 = *(v0 + 232);
    v54 = *(v0 + 240);
    v89 = *(v0 + 224);
    v56 = *(v0 + 56);
    v57 = *(v0 + 80);
    v91 = *(v0 + 72);
    v95 = *(v0 + 88);
    (*(*(v0 + 288) + 16))(v51 + *(v52 + 20), *(v0 + 304), *(v0 + 280));
    v58 = *(v0 + 88);
    v59 = *(v0 + 72);
    *v51 = *(v0 + 56);
    *(v51 + 16) = v59;
    *(v51 + 32) = v58;
    sub_22DF51578(v51, v53, type metadata accessor for CachedStorebag);
    (*(v50 + 56))(v53, 0, 1, v52);
    v60 = *(*v54 + 144);

    v90 = v57;

    v61 = v60(v0 + 136);
    sub_22DF4F520(v53, v89, v55);
    v61(v0 + 136, 0);
    if (qword_27DA4DB90 != -1)
    {
      swift_once();
    }

    v88 = v56;
    v62 = sub_22DF63734();
    __swift_project_value_buffer(v62, qword_27DA4E6C8);

    v63 = sub_22DF63714();
    v64 = sub_22DF63CF4();

    v65 = os_log_type_enabled(v63, v64);
    v66 = *(v0 + 376);
    v67 = *(v0 + 328);
    v68 = *(v0 + 336);
    v70 = *(v0 + 312);
    v69 = *(v0 + 320);
    v71 = *(v0 + 304);
    v72 = *(v0 + 280);
    if (v65)
    {
      v83 = *(v0 + 232);
      v86 = *(v0 + 304);
      v73 = *(v0 + 224);
      v85 = *(v0 + 312);
      v74 = swift_slowAlloc();
      v84 = v69;
      v75 = swift_slowAlloc();
      v96[0] = v75;
      *v74 = 136446210;
      *(v74 + 4) = sub_22DEF0354(v73, v83, v96);
      _os_log_impl(&dword_22DEEA000, v63, v64, "storing storebag %{public}s in cache", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x2318DDBE0](v75, -1, -1);
      MEMORY[0x2318DDBE0](v74, -1, -1);

      sub_22DF515E0(v66, type metadata accessor for CachedStorebag);
      v87(v86, v72);
      v87(v85, v72);
      (*(v67 + 8))(v68, v84);
    }

    else
    {

      sub_22DF515E0(v66, type metadata accessor for CachedStorebag);
      v87(v71, v72);
      v87(v70, v72);
      (*(v67 + 8))(v68, v69);
    }

LABEL_4:
    v10 = *(v0 + 216);

    *v10 = v88;
    *(v10 + 8) = v92;
    *(v10 + 16) = v91;
    *(v10 + 24) = v90;
    *(v10 + 32) = v95;
    v11 = *(v0 + 8);
LABEL_5:

    return v11();
  }

  v16 = swift_task_alloc();
  *(v0 + 392) = v16;
  *v16 = v0;
  v16[1] = sub_22DF4E330;
  v17 = *(v0 + 232);
  v18 = *(v0 + 224);

  return sub_22DF4F6E0(v18, v17);
}

uint64_t sub_22DF4E330()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_22DF4F298;
  }

  else
  {
    v4 = sub_22DF4E488;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DF4E488()
{
  v89 = v0;
  v88[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47470, &unk_22DF65BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DF65900;
  v3 = *MEMORY[0x277CBE7B0];
  *(inited + 32) = *MEMORY[0x277CBE7B0];
  v4 = v3;
  sub_22DEF9A50(inited);
  swift_setDeallocating();
  sub_22DF515E0(inited + 32, type metadata accessor for URLResourceKey);
  sub_22DF63354();
  if (v1)
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

LABEL_5:

    v16 = *(v0 + 8);
LABEL_6:

    return v16();
  }

  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  v8 = *(v0 + 264);
  v7 = *(v0 + 272);
  v10 = *(v0 + 248);
  v9 = *(v0 + 256);

  sub_22DF632B4();
  (*(v8 + 8))(v7, v9);
  result = (*(v6 + 48))(v10, 1, v5);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  (*(*(v0 + 288) + 32))(*(v0 + 312), *(v0 + 248), *(v0 + 280));
  v12 = sub_22DF63464();
  v14 = v13;
  v15 = sub_22DF0BE94();
  sub_22DF0C6B0(v12, v14, v15, v0 + 56);
  v18 = *(v0 + 288);
  v17 = *(v0 + 296);
  v19 = *(v0 + 280);
  v20 = *(v0 + 64);
  sub_22DF63504();
  sub_22DF63554();
  v21 = sub_22DF63524();
  v22 = *(v18 + 8);
  *(v0 + 408) = v22;
  *(v0 + 416) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v17, v19);
  if ((v21 & 1) == 0)
  {
    v85 = v20;
    v87 = v22;
    v40 = *(v0 + 368);
    v39 = *(v0 + 376);
    v41 = *(v0 + 360);
    v42 = *(v0 + 344);
    v43 = *(v0 + 240);
    v76 = *(v0 + 232);
    v78 = *(v0 + 224);
    v44 = *(v0 + 56);
    v45 = *(v0 + 80);
    v83 = *(v0 + 72);
    v46 = *(v0 + 88);
    (*(*(v0 + 288) + 16))(v39 + *(v41 + 20), *(v0 + 304), *(v0 + 280));
    v47 = *(v0 + 88);
    v48 = *(v0 + 72);
    *v39 = *(v0 + 56);
    *(v39 + 16) = v48;
    *(v39 + 32) = v47;
    sub_22DF51578(v39, v42, type metadata accessor for CachedStorebag);
    (*(v40 + 56))(v42, 0, 1, v41);
    v49 = *(*v43 + 144);

    v80 = v44;

    v82 = v45;

    v81 = v46;

    v50 = v49(v0 + 136);
    sub_22DF4F520(v42, v78, v76);
    v50(v0 + 136, 0);
    if (qword_27DA4DB90 != -1)
    {
      swift_once();
    }

    v51 = sub_22DF63734();
    __swift_project_value_buffer(v51, qword_27DA4E6C8);

    v52 = sub_22DF63714();
    v53 = sub_22DF63CF4();

    v54 = os_log_type_enabled(v52, v53);
    v55 = *(v0 + 376);
    v56 = *(v0 + 328);
    v57 = *(v0 + 336);
    v59 = *(v0 + 312);
    v58 = *(v0 + 320);
    v79 = *(v0 + 304);
    v60 = *(v0 + 280);
    if (v54)
    {
      v77 = *(v0 + 336);
      v74 = *(v0 + 376);
      v61 = *(v0 + 224);
      v62 = *(v0 + 232);
      v75 = *(v0 + 320);
      v63 = swift_slowAlloc();
      v73 = v59;
      v64 = swift_slowAlloc();
      v88[0] = v64;
      *v63 = 136446210;
      *(v63 + 4) = sub_22DEF0354(v61, v62, v88);
      _os_log_impl(&dword_22DEEA000, v52, v53, "storing storebag %{public}s in cache", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x2318DDBE0](v64, -1, -1);
      MEMORY[0x2318DDBE0](v63, -1, -1);

      sub_22DF515E0(v74, type metadata accessor for CachedStorebag);
      v87(v79, v60);
      v87(v73, v60);
      (*(v56 + 8))(v77, v75);
    }

    else
    {

      sub_22DF515E0(v55, type metadata accessor for CachedStorebag);
      v87(v79, v60);
      v87(v59, v60);
      (*(v56 + 8))(v57, v58);
    }

    v72 = *(v0 + 216);

    *v72 = v80;
    *(v72 + 8) = v85;
    *(v72 + 16) = v83;
    *(v72 + 24) = v82;
    *(v72 + 32) = v81;
    v16 = *(v0 + 8);
    goto LABEL_6;
  }

  *(v0 + 184) = *(v0 + 56);
  sub_22DEF1364(v0 + 184, &qword_27DA477F8, &unk_22DF670D0);
  *(v0 + 168) = *(v0 + 72);
  sub_22DF13A04(v0 + 168);
  *(v0 + 192) = *(v0 + 88);
  sub_22DEF1364(v0 + 192, &qword_27DA47C00, &qword_22DF670A0);
  if (qword_27DA4DB90 != -1)
  {
    swift_once();
  }

  v23 = sub_22DF63734();
  __swift_project_value_buffer(v23, qword_27DA4E6C8);

  v24 = sub_22DF63714();
  v25 = sub_22DF63D24();

  if (os_log_type_enabled(v24, v25))
  {
    v27 = *(v0 + 224);
    v26 = *(v0 + 232);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v88[0] = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_22DEF0354(v27, v26, v88);
    _os_log_impl(&dword_22DEEA000, v24, v25, "removing expired storebag %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x2318DDBE0](v29, -1, -1);
    MEMORY[0x2318DDBE0](v28, -1, -1);
  }

  v30 = [objc_opt_self() defaultManager];
  v31 = sub_22DF63394();
  *(v0 + 208) = 0;
  v32 = [v30 removeItemAtURL:v31 error:v0 + 208];

  v33 = *(v0 + 208);
  if (!v32)
  {
    v65 = *(v0 + 328);
    v86 = *(v0 + 336);
    v67 = *(v0 + 312);
    v66 = *(v0 + 320);
    v68 = *(v0 + 304);
    v69 = v22;
    v70 = *(v0 + 280);
    v71 = v33;
    sub_22DF63334();

    swift_willThrow();
    v69(v68, v70);
    v69(v67, v70);
    (*(v65 + 8))(v86, v66);
    goto LABEL_5;
  }

  v34 = *(**(v0 + 240) + 232);
  v35 = v33;
  v84 = (v34 + *v34);
  v36 = swift_task_alloc();
  *(v0 + 424) = v36;
  *v36 = v0;
  v36[1] = sub_22DF4EFA8;
  v37 = *(v0 + 232);
  v38 = *(v0 + 224);

  return v84(v0 + 16, v38, v37);
}

uint64_t sub_22DF4EFA8()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_22DF4F3C8;
  }

  else
  {
    v4 = sub_22DF4F100;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DF4F100()
{
  v1 = *(v0 + 408);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  v6 = *(v0 + 280);
  v1(*(v0 + 304), v6);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  v13 = *(v0 + 32);
  v12 = *(v0 + 24);
  v11 = *(v0 + 16);
  v7 = *(v0 + 216);
  v10 = *(v0 + 40);

  *v7 = v11;
  *(v7 + 8) = v12;
  *(v7 + 16) = v13;
  *(v7 + 24) = v10;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22DF4F298()
{
  (*(v0[41] + 8))(v0[42], v0[40]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22DF4F3C8()
{
  v1 = v0[51];
  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[35];
  v1(v0[38], v6);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22DF4F520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47BF0, &unk_22DF697A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for CachedStorebag(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_22DEF1364(a1, &unk_27DA47BF0, &unk_22DF697A0);
    sub_22DF508B0(a2, a3, v9);

    return sub_22DEF1364(v9, &unk_27DA47BF0, &unk_22DF697A0);
  }

  else
  {
    sub_22DF51640(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_22DF51188(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_22DF4F6E0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF4F780, v2, 0);
}

uint64_t sub_22DF4F780()
{
  v1 = v0[6];
  v2 = *(*v1 + 152);
  v3 = (*v1 + 152) & 0xFFFFFFFFFFFFLL | 0x6EC9000000000000;
  v0[8] = v2;
  v0[9] = v3;
  v4 = v2();
  if (v4)
  {
    v0[10] = v4;
    v5 = v4;
    v6 = swift_task_alloc();
    v0[11] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    *v6 = v0;
    v6[1] = sub_22DF4FA80;
    v8 = MEMORY[0x277D84950];
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 2, v5, v9, v7, v8);
  }

  else
  {
    v11 = v0[6];
    v10 = v0[7];
    v13 = v0[4];
    v12 = v0[5];
    v14 = os_transaction_create();
    (*(*v11 + 184))(v14);
    v15 = sub_22DF63C34();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    v16 = sub_22DF4BFFC(&qword_27DA47CB8, type metadata accessor for StorebagCache, &unk_22DF69850);
    v17 = swift_allocObject();
    v17[2] = v11;
    v17[3] = v16;
    v17[4] = v11;
    v17[5] = v13;
    v17[6] = v12;
    swift_retain_n();

    v18 = sub_22DEF61B8(0, 0, v10, &unk_22DF69918, v17);
    v0[12] = v18;
    v19 = *(*v11 + 160);

    v19(v20);
    v21 = swift_task_alloc();
    v0[13] = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    *v21 = v0;
    v21[1] = sub_22DF4FE94;
    v23 = MEMORY[0x277D84950];
    v24 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200430](v22, v18, v24, v22, v23);
  }
}

uint64_t sub_22DF4FA80()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  sub_22DF51AC4(*(v1 + 16), *(v1 + 24));

  return MEMORY[0x2822009F8](sub_22DF4FBB4, v2, 0);
}

uint64_t sub_22DF4FBB4()
{
  v1 = v0[8];

  v3 = v1(v2);
  if (v3)
  {
    v0[10] = v3;
    v4 = v3;
    v5 = swift_task_alloc();
    v0[11] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    *v5 = v0;
    v5[1] = sub_22DF4FA80;
    v7 = MEMORY[0x277D84950];
    v8 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 2, v4, v8, v6, v7);
  }

  else
  {
    v10 = v0[6];
    v9 = v0[7];
    v12 = v0[4];
    v11 = v0[5];
    v13 = os_transaction_create();
    (*(*v10 + 184))(v13);
    v14 = sub_22DF63C34();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = sub_22DF4BFFC(&qword_27DA47CB8, type metadata accessor for StorebagCache, &unk_22DF69850);
    v16 = swift_allocObject();
    v16[2] = v10;
    v16[3] = v15;
    v16[4] = v10;
    v16[5] = v12;
    v16[6] = v11;
    swift_retain_n();

    v17 = sub_22DEF61B8(0, 0, v9, &unk_22DF69918, v16);
    v0[12] = v17;
    v18 = *(*v10 + 160);

    v18(v19);
    v20 = swift_task_alloc();
    v0[13] = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    *v20 = v0;
    v20[1] = sub_22DF4FE94;
    v22 = MEMORY[0x277D84950];
    v23 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200430](v21, v17, v23, v21, v22);
  }
}

uint64_t sub_22DF4FE94()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_22DF50030;
  }

  else
  {
    v4 = sub_22DF4FFC0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DF4FFC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF50030()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF500A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_22DF63444();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF50168, a4, 0);
}

uint64_t sub_22DF50168()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC19CloudTelemetryTools13StorebagCache_storebagSource);

  MEMORY[0x2318DCA20](0x7473696C702ELL, 0xE600000000000000);
  sub_22DF633B4();

  v7 = (*(*v1 + 136) + **(*v1 + 136));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_22DF502FC;
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];

  return v7(v5, v4, v3);
}

uint64_t sub_22DF502FC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_22DF50540;
  }

  else
  {
    v7 = sub_22DF50484;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22DF50484()
{
  v1 = *(v0 + 16);
  (*(*v1 + 160))(0);
  (*(*v1 + 184))(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22DF50540()
{
  v1 = *(v0 + 16);
  (*(*v1 + 160))(0);
  (*(*v1 + 184))(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22DF505FC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47BF0, &unk_22DF697A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  if (qword_27DA4DB90 != -1)
  {
    swift_once();
  }

  v9 = sub_22DF63734();
  __swift_project_value_buffer(v9, qword_27DA4E6C8);

  v10 = sub_22DF63714();
  v11 = sub_22DF63CF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16[0] = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_22DEF0354(a1, a2, v16);
    _os_log_impl(&dword_22DEEA000, v10, v11, "evicting storebag %{public}s from cache", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x2318DDBE0](v13, -1, -1);
    MEMORY[0x2318DDBE0](v12, -1, -1);
  }

  v14 = (*(*v3 + 144))(v16);
  sub_22DF508B0(a1, a2, v8);
  sub_22DEF1364(v8, &unk_27DA47BF0, &unk_22DF697A0);
  return v14(v16, 0);
}

uint64_t sub_22DF50810()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC19CloudTelemetryTools13StorebagCache_storebagCacheURL;
  v2 = sub_22DF63444();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DF508B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_22DEF08FC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22DF50F44();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for CachedStorebag(0);
    v19 = *(v12 - 8);
    sub_22DF51640(v11 + *(v19 + 72) * v8, a3);
    sub_22DF50D58(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for CachedStorebag(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_22DF50A08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CachedStorebag(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CB0, &qword_22DF69908);
  v40 = v4;
  result = sub_22DF64034();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_22DF51640(v28, v41);
      }

      else
      {
        sub_22DF51578(v28, v41, type metadata accessor for CachedStorebag);
      }

      sub_22DF642A4();
      sub_22DF63A54();
      result = sub_22DF642D4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_22DF51640(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_22DF50D58(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22DF63E64() + 1) & ~v5;
    while (1)
    {
      sub_22DF642A4();

      sub_22DF63A54();
      v9 = sub_22DF642D4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for CachedStorebag(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_22DF50F44()
{
  v1 = v0;
  v2 = type metadata accessor for CachedStorebag(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CB0, &qword_22DF69908);
  v4 = *v0;
  v5 = sub_22DF64024();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_22DF51578(*(v4 + 56) + v26, v30, type metadata accessor for CachedStorebag);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_22DF51640(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_22DF51188(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22DEF08FC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_22DF50F44();
      goto LABEL_7;
    }

    sub_22DF50A08(v15, a4 & 1);
    v21 = sub_22DEF08FC(a2, a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_22DF64234();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for CachedStorebag(0) - 8) + 72) * v12;

    sub_22DF519B8(a1, v20);
    return;
  }

LABEL_13:
  sub_22DF512EC(v12, a2, a3, a1, v18);
}

uint64_t sub_22DF512EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for CachedStorebag(0);
  result = sub_22DF51640(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_22DF51384(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC8, &qword_22DF69928);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CB0, &qword_22DF69908);
    v7 = sub_22DF64044();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22DEF12FC(v9, v5, &qword_27DA47CC8, &qword_22DF69928);
      v11 = *v5;
      v12 = v5[1];
      result = sub_22DEF08FC(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for CachedStorebag(0);
      result = sub_22DF51640(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_22DF51578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DF515E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DF51640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedStorebag(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF51714(uint64_t a1)
{
  result = sub_22DF63594();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22DF51790(uint64_t a1)
{
  sub_22DF51840(319, &qword_27DA47C08, MEMORY[0x277CC8620]);
  if (v1 <= 0x3F)
  {
    sub_22DF51840(319, &qword_27DA47C10, sub_22DF5188C);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22DF51840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22DF5188C()
{
  result = qword_27DA47C18;
  if (!qword_27DA47C18)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DA47C18);
  }

  return result;
}

uint64_t sub_22DF518F8(uint64_t a1)
{
  result = sub_22DF63444();
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

uint64_t sub_22DF519B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedStorebag(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF51A1C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22DEEFBD4;

  return sub_22DF500A0(v5, v6, v7, v2, v3, v4);
}

void sub_22DF51AC4(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_22DF51AD4()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4DD48);
  __swift_project_value_buffer(v0, qword_27DA4DD48);
  return sub_22DF63724();
}

uint64_t sub_22DF51B8C(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_22DF51BDC(uint64_t *a1))(void **a1, char a2, __n128 a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_22DF51C6C;
}

void sub_22DF51C6C(void **a1, char a2, __n128 a3)
{
  v4 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v4);
}

double sub_22DF51CEC()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22DF51D24(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
}

double sub_22DF51D6C()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22DF51DA4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 136) = a1;
}

double sub_22DF51E3C()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22DF51E74(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
}

uint64_t sub_22DF51F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22DEF4014;

  return sub_22DF51FCC(v6, a2, a3);
}

uint64_t sub_22DF51FCC(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 96) = a3;
  *(v4 + 104) = v3;
  *(v4 + 88) = a2;
  *(v4 + 176) = a1;
  *(v4 + 112) = *v3;
  v5 = sub_22DF63444();
  *(v4 + 120) = v5;
  *(v4 + 128) = *(v5 - 8);
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF520BC, 0, 0);
}

uint64_t sub_22DF520BC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  swift_defaultActor_initialize();
  swift_weakInit();
  v6 = MEMORY[0x277D84F90];
  v7 = sub_22DF56BC0(MEMORY[0x277D84F90]);
  v8 = MEMORY[0x277D84FA0];
  v4[16] = v7;
  v4[17] = v8;
  v4[18] = sub_22DF56CBC(v6);
  type metadata accessor for StorebagCoordinator(0);
  (*(v2 + 16))(v1, v5, v3);
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_22DF521D8;
  v10 = v0[17];

  return sub_22DF587D4(v10);
}

uint64_t sub_22DF521D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_22DF527C4;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_22DF52300;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22DF52300()
{
  v1 = *(v0 + 104);
  *(v1 + 112) = *(v0 + 160);
  return MEMORY[0x2822009F8](sub_22DF52324, v1, 0);
}

uint64_t sub_22DF52324()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  swift_weakAssign();
  if (v1)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 96), *(v0 + 120));

    v2 = *(v0 + 8);
    v3 = *(v0 + 104);

    return v2(v3);
  }

  else
  {
    v5 = *(**(v0 + 104) + 264);
    v7 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = sub_22DF524E0;

    return v7();
  }
}

uint64_t sub_22DF524E0()
{

  sub_22DF56DE4();
  swift_getObjectType();
  v1 = sub_22DF63BE4();

  return MEMORY[0x2822009F8](sub_22DF52610, v1, v0);
}

uint64_t sub_22DF52610()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v6 = [objc_opt_self() defaultCenter];
  v7 = *MEMORY[0x277D25CA0];
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  v0[6] = sub_22DF56E38;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22DF52B98;
  v0[5] = &block_descriptor_3;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 addObserverForName:v7 object:0 queue:0 usingBlock:v9];
  _Block_release(v9);

  swift_unknownObjectRelease();

  (*(v2 + 8))(v5, v1);

  v11 = v0[1];
  v12 = v0[13];

  return v11(v12);
}

uint64_t sub_22DF527C4()
{
  v1 = v0[16];
  v2 = v0[15];
  v3 = v0[12];
  swift_weakDestroy();

  type metadata accessor for SessionCoordinator();
  swift_defaultActor_destroy();

  (*(v1 + 8))(v3, v2);
  swift_deallocPartialClassInstance();

  v4 = v0[1];

  return v4();
}

uint64_t sub_22DF528B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  if (qword_27DA4DD40 != -1)
  {
    swift_once();
  }

  v5 = sub_22DF63734();
  __swift_project_value_buffer(v5, qword_27DA4DD48);
  v6 = sub_22DF63714();
  v7 = sub_22DF63D24();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22DEEA000, v6, v7, "received notification for MC effective settings change", v8, 2u);
    MEMORY[0x2318DDBE0](v8, -1, -1);
  }

  v9 = sub_22DF63C34();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;

  sub_22DEEFE64(0, 0, v4, &unk_22DF69A40, v10);
}

uint64_t sub_22DF52A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a4 + 264) + **(*a4 + 264));
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_22DEEFBD4;

  return v7();
}

uint64_t sub_22DF52B98(uint64_t a1, uint64_t a2)
{
  v3 = sub_22DF631D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_22DF631C4();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22DF52C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  return MEMORY[0x2822009F8](sub_22DF52CB4, v4, 0);
}

uint64_t sub_22DF52CB4()
{
  v1 = *(v0 + 320);
  v2 = *(*(v0 + 344) + 112);
  *(v0 + 352) = v2;
  v8 = *(v0 + 328);
  *(v0 + 216) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 192));
  v4 = *(v8 - 8);
  v5 = *(v4 + 16);
  *(v0 + 360) = v5;
  *(v0 + 368) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(boxed_opaque_existential_1, v1);
  v9 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v0 + 376) = v6;
  *v6 = v0;
  v6[1] = sub_22DF52E3C;

  return v9(v0 + 192);
}

uint64_t sub_22DF52E3C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  *(v2 + 416) = a1;

  __swift_destroy_boxed_opaque_existential_0((v2 + 192));

  return MEMORY[0x2822009F8](sub_22DF52F5C, v3, 0);
}

uint64_t sub_22DF52F5C()
{
  if (static SessionConfiguration.Availability.__derived_enum_equals(_:_:)(*(v0 + 416), 3) || static SessionConfiguration.Availability.__derived_enum_equals(_:_:)(*(v0 + 416), 2))
  {
    v1 = *(v0 + 360);
    v2 = *(v0 + 352);
    v4 = *(v0 + 328);
    v3 = *(v0 + 336);
    v5 = *(v0 + 320);
    *(v0 + 296) = v4;
    *(v0 + 304) = v3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 272));
    v1(boxed_opaque_existential_1, v5, v4);
    v21 = (*(*v2 + 136) + **(*v2 + 136));
    v7 = swift_task_alloc();
    *(v0 + 384) = v7;
    *v7 = v0;
    v7[1] = sub_22DF53274;
    v8 = v0 + 152;
    v9 = v0 + 272;
LABEL_4:

    return v21(v8, v9);
  }

  if (static SessionConfiguration.Availability.__derived_enum_equals(_:_:)(*(v0 + 416), 1))
  {
    (*(*(v0 + 336) + 8))(*(v0 + 328));
    sub_22DEF0FA8(v0 + 16);
    if (*(v0 + 49))
    {
      v11 = *(v0 + 360);
      v12 = *(v0 + 352);
      v13 = *(v0 + 320);
      v22 = *(v0 + 328);
      *(v0 + 256) = v22;
      v14 = __swift_allocate_boxed_opaque_existential_1((v0 + 232));
      v11(v14, v13, v22);
      v21 = (*(*v12 + 136) + **(*v12 + 136));
      v15 = swift_task_alloc();
      *(v0 + 400) = v15;
      *v15 = v0;
      v15[1] = sub_22DF533CC;
      v8 = v0 + 112;
      v9 = v0 + 232;
      goto LABEL_4;
    }
  }

  sub_22DF09680(v0 + 72);
  v16 = *(v0 + 312);
  v17 = *(v0 + 96);
  v18 = *(v0 + 104);
  v19 = *(v0 + 88);
  *v16 = *(v0 + 72);
  *(v16 + 16) = v19;
  *(v16 + 24) = v17;
  *(v16 + 32) = v18;
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_22DF53274()
{
  v2 = *v1;
  *(v2 + 392) = v0;

  if (v0)
  {
    v3 = *(v2 + 344);

    return MEMORY[0x2822009F8](sub_22DF53524, v3, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 272));
    v4 = *(v2 + 312);
    v5 = *(v2 + 176);
    v6 = *(v2 + 184);
    v7 = *(v2 + 168);
    *v4 = *(v2 + 152);
    *(v4 + 16) = v7;
    *(v4 + 24) = v5;
    *(v4 + 32) = v6;
    v8 = *(v2 + 8);

    return v8();
  }
}

uint64_t sub_22DF533CC()
{
  v2 = *v1;
  *(v2 + 408) = v0;

  if (v0)
  {
    v3 = *(v2 + 344);

    return MEMORY[0x2822009F8](sub_22DF53588, v3, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 232));
    v4 = *(v2 + 312);
    v5 = *(v2 + 136);
    v6 = *(v2 + 144);
    v7 = *(v2 + 128);
    *v4 = *(v2 + 112);
    *(v4 + 16) = v7;
    *(v4 + 24) = v5;
    *(v4 + 32) = v6;
    v8 = *(v2 + 8);

    return v8();
  }
}

uint64_t sub_22DF53524()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF53588()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 232));
  v1 = *(v0 + 8);

  return v1();
}

void sub_22DF535EC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = (*(*v2 + 168))(v37);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v8;
  v36 = *v8;
  *v8 = 0x8000000000000000;
  v12 = sub_22DEF08FC(a1, a2);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11;
  if (v10[3] >= v15)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22DF56548();
    }
  }

  else
  {
    sub_22DF562A8(v15, isUniquelyReferenced_nonNull_native);
    v17 = sub_22DEF08FC(a1, a2);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_23:
      sub_22DF64234();
      __break(1u);
      return;
    }

    v12 = v17;
  }

  *v8 = v36;

  v19 = *v8;
  if (v16)
  {
    goto LABEL_10;
  }

  v19[(v12 >> 6) + 8] |= 1 << v12;
  v20 = (v19[6] + 16 * v12);
  *v20 = a1;
  v20[1] = a2;
  *(v19[7] + 8 * v12) = 0;
  v21 = v19[2];
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_23;
  }

  v19[2] = v23;

LABEL_10:
  v24 = v19[7];
  v25 = *(v24 + 8 * v12);
  v22 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v22)
  {
    *(v24 + 8 * v12) = v26;
    v6(v37, 0);
    if (qword_27DA4DD40 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  swift_once();
LABEL_12:
  v27 = sub_22DF63734();
  __swift_project_value_buffer(v27, qword_27DA4DD48);

  v28 = sub_22DF63714();
  v29 = sub_22DF63CF4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37[0] = v31;
    *v30 = 136446466;
    *(v30 + 4) = sub_22DEF0354(a1, a2, v37);
    *(v30 + 12) = 2048;
    v32 = (*(*v3 + 152))();
    if (*(v32 + 16) && (v33 = sub_22DEF08FC(a1, a2), (v34 & 1) != 0))
    {
      v35 = *(*(v32 + 56) + 8 * v33);
    }

    else
    {
      v35 = 0;
    }

    *(v30 + 14) = v35;

    _os_log_impl(&dword_22DEEA000, v28, v29, "registered use for session config for %{public}s, now %lld uses", v30, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x2318DDBE0](v31, -1, -1);
    MEMORY[0x2318DDBE0](v30, -1, -1);
  }

  else
  {
  }
}

void sub_22DF53944(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v61 - v11;
  v13 = (*(v8 + 152))(v10);
  if (*(v13 + 16))
  {
    v14 = sub_22DEF08FC(a1, a2);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);

      v17 = v16 - 1;
      if (__OFSUB__(v16, 1))
      {
        __break(1u);
      }

      else if (qword_27DA4DD40 == -1)
      {
        goto LABEL_5;
      }

      swift_once();
LABEL_5:
      LODWORD(v63) = a3;
      v18 = sub_22DF63734();
      v19 = __swift_project_value_buffer(v18, qword_27DA4DD48);

      v61[1] = v19;
      v20 = sub_22DF63714();
      v21 = sub_22DF63CF4();

      v22 = os_log_type_enabled(v20, v21);
      v62 = a1;
      if (v22)
      {
        v23 = v16 - 1;
        v24 = v8;
        v25 = v12;
        v26 = a1;
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v65[0] = v28;
        *v27 = 136446466;
        v29 = v26;
        v12 = v25;
        v8 = v24;
        v17 = v23;
        *(v27 + 4) = sub_22DEF0354(v29, a2, v65);
        *(v27 + 12) = 2050;
        *(v27 + 14) = v23;
        _os_log_impl(&dword_22DEEA000, v20, v21, "session config finished for %{public}s with %{public}lld uses remaining", v27, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x2318DDBE0](v28, -1, -1);
        MEMORY[0x2318DDBE0](v27, -1, -1);
      }

      v30 = *(*v4 + 168);
      if (v17 > 0)
      {
        v31 = v30(v65);
        v33 = v32;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = *v33;
        *v33 = 0x8000000000000000;
        sub_22DF5675C(v17, v62, a2, isUniquelyReferenced_nonNull_native);
        *v33 = v64;

        v31(v65, 0);
        return;
      }

      v40 = v30(v65);
      v41 = v62;
      sub_22DF566B0(v62, a2);
      v42 = v40(v65, 0);
      if (v63)
      {
        v43 = v8;
        v44 = (*(*v4 + 176))(v42);
        v45 = sub_22DF3629C(v41, a2, v44);

        v46 = sub_22DF63714();
        v47 = sub_22DF63CF4();

        v48 = os_log_type_enabled(v46, v47);
        if (v45)
        {
          if (v48)
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v65[0] = v50;
            *v49 = 136446210;
            *(v49 + 4) = sub_22DEF0354(v41, a2, v65);
            _os_log_impl(&dword_22DEEA000, v46, v47, "not evicting %{public}s: already running", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v50);
            MEMORY[0x2318DDBE0](v50, -1, -1);
            MEMORY[0x2318DDBE0](v49, -1, -1);
          }

          return;
        }

        if (v48)
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v65[0] = v55;
          *v54 = 136446210;
          *(v54 + 4) = sub_22DEF0354(v41, a2, v65);
          _os_log_impl(&dword_22DEEA000, v46, v47, "starting eviction timer for %{public}s", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v55);
          MEMORY[0x2318DDBE0](v55, -1, -1);
          MEMORY[0x2318DDBE0](v54, -1, -1);
        }

        v56 = *(*v4 + 192);

        v57 = v56(v65);
        sub_22DF110A8(&v64, v41, a2);

        v57(v65, 0);
        v58 = sub_22DF63C34();
        (*(*(v58 - 8) + 56))(v12, 1, 1, v58);
        v59 = sub_22DF56DE4();
        v60 = swift_allocObject();
        v60[2] = v4;
        v60[3] = v59;
        v60[4] = v4;
        v60[5] = v41;
        v60[6] = a2;
        v60[7] = v43;
        swift_retain_n();

        sub_22DEF61B8(0, 0, v12, &unk_22DF69978, v60);
      }

      else
      {
        v51 = sub_22DF63C34();
        (*(*(v51 - 8) + 56))(v12, 1, 1, v51);
        v52 = sub_22DF56DE4();
        v53 = swift_allocObject();
        v53[2] = v4;
        v53[3] = v52;
        v53[4] = v41;
        v53[5] = a2;
        v53[6] = v4;
        v53[7] = v8;
        swift_retain_n();

        sub_22DEEFE64(0, 0, v12, &unk_22DF69968, v53);
      }

      return;
    }
  }

  if (qword_27DA4DD40 != -1)
  {
    swift_once();
  }

  v35 = sub_22DF63734();
  __swift_project_value_buffer(v35, qword_27DA4DD48);

  v63 = sub_22DF63714();
  v36 = sub_22DF63D04();

  if (os_log_type_enabled(v63, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v65[0] = v38;
    *v37 = 136446210;
    *(v37 + 4) = sub_22DEF0354(a1, a2, v65);
    _os_log_impl(&dword_22DEEA000, v63, v36, "session config finished with no use count for %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x2318DDBE0](v38, -1, -1);
    MEMORY[0x2318DDBE0](v37, -1, -1);
  }

  else
  {
    v39 = v63;
  }
}

uint64_t sub_22DF54144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = swift_task_alloc();
  v6[13] = v7;
  *v7 = v6;
  v7[1] = sub_22DF541EC;

  return MEMORY[0x282200480](10000000000);
}

uint64_t sub_22DF541EC()
{
  v2 = *(*v1 + 80);
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_22DF54914;
  }

  else
  {
    v3 = sub_22DF54314;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}