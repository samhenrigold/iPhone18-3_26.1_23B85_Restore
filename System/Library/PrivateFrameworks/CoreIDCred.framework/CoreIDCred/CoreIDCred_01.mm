uint64_t sub_2456395A8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2456397F8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_245636B1C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_245639378(v13, a3, a4, &v12);
  v10 = v4;
  sub_245636B1C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

id sub_245639738(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_24565BA64();
  v8[0] = 0;
  v4 = [v2 initForReadingFromData:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_24565BA54();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_2456397F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_24565B9A4();
  v11 = result;
  if (result)
  {
    result = sub_24565B9C4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_24565B9B4();
  sub_245639378(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2456398B0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_245636AC8(a3, a4);
          return sub_2456395A8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_245639A18(uint64_t a1, uint64_t a2)
{
  if (!sub_2456398B0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v24 = *(a1 + 16);
  v23 = *(a2 + 16);
  v4 = *(&v24 + 1);
  v5 = v24;
  v7 = *(&v23 + 1);
  v6 = v23;
  if (*(&v24 + 1) >> 60 == 15)
  {
    if (*(&v23 + 1) >> 60 == 15)
    {
      sub_24563A91C(&v24, &v22, &qword_27EE1A908, &qword_245660B78);
      sub_24563A91C(&v23, &v22, &qword_27EE1A908, &qword_245660B78);
      sub_245637BC8(v5, v4);
      goto LABEL_8;
    }

LABEL_6:
    sub_24563A91C(&v24, &v22, &qword_27EE1A908, &qword_245660B78);
    v8 = &v23;
    v9 = &v22;
LABEL_19:
    sub_24563A91C(v8, v9, &qword_27EE1A908, &qword_245660B78);
    sub_245637BC8(v5, v4);
    sub_245637BC8(v6, v7);
    return 0;
  }

  if (*(&v23 + 1) >> 60 == 15)
  {
    goto LABEL_6;
  }

  sub_24563A91C(&v24, &v22, &qword_27EE1A908, &qword_245660B78);
  sub_24563A91C(&v23, &v22, &qword_27EE1A908, &qword_245660B78);
  v10 = sub_2456398B0(v5, v4, v6, v7);
  sub_245637BC8(v6, v7);
  sub_245637BC8(v5, v4);
  if (!v10)
  {
    return 0;
  }

LABEL_8:
  v11 = *(a1 + 32);
  v21 = *(a2 + 32);
  v22 = v11;
  v4 = *(&v11 + 1);
  v5 = v11;
  v7 = *(&v21 + 1);
  v6 = v21;
  if (*(&v11 + 1) >> 60 == 15)
  {
    if (*(&v21 + 1) >> 60 == 15)
    {
      sub_24563A91C(&v22, &v20, &qword_27EE1A908, &qword_245660B78);
      sub_24563A91C(&v21, &v20, &qword_27EE1A908, &qword_245660B78);
      sub_245637BC8(v5, v4);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (*(&v21 + 1) >> 60 == 15)
  {
LABEL_12:
    sub_24563A91C(&v22, &v20, &qword_27EE1A908, &qword_245660B78);
    v8 = &v21;
    v9 = &v20;
    goto LABEL_19;
  }

  sub_24563A91C(&v22, &v20, &qword_27EE1A908, &qword_245660B78);
  sub_24563A91C(&v21, &v20, &qword_27EE1A908, &qword_245660B78);
  v12 = sub_2456398B0(v5, v4, v6, v7);
  sub_245637BC8(v6, v7);
  sub_245637BC8(v5, v4);
  if (!v12)
  {
    return 0;
  }

LABEL_14:
  v13 = *(a1 + 48);
  v19 = *(a2 + 48);
  v20 = v13;
  v4 = *(&v13 + 1);
  v5 = v13;
  v7 = *(&v19 + 1);
  v6 = v19;
  if (*(&v13 + 1) >> 60 == 15)
  {
    if (*(&v19 + 1) >> 60 == 15)
    {
      sub_24563A91C(&v20, v18, &qword_27EE1A908, &qword_245660B78);
      sub_24563A91C(&v19, v18, &qword_27EE1A908, &qword_245660B78);
      sub_245637BC8(v5, v4);
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (*(&v19 + 1) >> 60 == 15)
  {
LABEL_18:
    sub_24563A91C(&v20, v18, &qword_27EE1A908, &qword_245660B78);
    v8 = &v19;
    v9 = v18;
    goto LABEL_19;
  }

  sub_24563A91C(&v20, v18, &qword_27EE1A908, &qword_245660B78);
  sub_24563A91C(&v19, v18, &qword_27EE1A908, &qword_245660B78);
  v15 = sub_2456398B0(v5, v4, v6, v7);
  sub_245637BC8(v6, v7);
  sub_245637BC8(v5, v4);
  if (!v15)
  {
    return 0;
  }

LABEL_22:
  v16 = *(a1 + 72);
  v17 = *(a2 + 72);
  if (v16)
  {
    return v17 && (*(a1 + 64) == *(a2 + 64) && v16 == v17 || (sub_24565BED4() & 1) != 0);
  }

  return !v17;
}

uint64_t sub_245639E68@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v8[4] = a1[4];
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  result = v4(v8);
  *a2 = result;
  return result;
}

uint64_t sub_245639ECC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_245639F14()
{
  result = qword_27EE1A8B8;
  if (!qword_27EE1A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A8B8);
  }

  return result;
}

__n128 sub_245639F84@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  v10[2] = a1[2];
  v10[3] = v5;
  v10[4] = a1[4];
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v4(v9, v10);
  v7 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v7;
  *(a2 + 64) = v9[4];
  result = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_24563A000()
{
  result = qword_27EE1A8C0;
  if (!qword_27EE1A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A8C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24563A0E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_24563A140(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

unint64_t sub_24563A1BC()
{
  result = qword_27EE1A8D8;
  if (!qword_27EE1A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A8D8);
  }

  return result;
}

uint64_t sub_24563A210(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x8000000245663E70 == a2;
  if (v4 || (sub_24565BED4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000245663EA0 == a2 || (sub_24565BED4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000028 && 0x8000000245663EC0 == a2 || (sub_24565BED4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000245663EF0 == a2 || (sub_24565BED4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000245663D60 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24565BED4();

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

uint64_t sub_24563A3C0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A8E0, &qword_245660B68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24563A834();
  sub_24565BFB4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_245637BC8(0, 0xF000000000000000);
    sub_245637BC8(0, 0xF000000000000000);
    return sub_245637BC8(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v26) = 0;
    sub_245635204();
    sub_24565BE24();
    v24 = v31;
    LOBYTE(v26) = 1;
    sub_24565BDE4();
    v25 = *(&v31 + 1);
    v23 = v31;
    sub_245637BC8(0, 0xF000000000000000);
    LOBYTE(v26) = 2;
    sub_24565BDE4();
    v22 = v6;
    v9 = v31;
    sub_245637BC8(0, 0xF000000000000000);
    LOBYTE(v26) = 3;
    sub_24565BDE4();
    v21 = a2;
    v10 = v31;
    sub_245637BC8(0, 0xF000000000000000);
    v38 = 4;
    v11 = sub_24565BDD4();
    v12 = v8;
    v14 = v13;
    (*(v22 + 8))(v12, v5);
    v26 = v24;
    v15 = v23;
    *&v27 = v23;
    *(&v27 + 1) = v25;
    v28 = v9;
    v29 = v10;
    *&v30 = v11;
    *(&v30 + 1) = v14;
    sub_24563A888(&v26, &v31);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v31 = v24;
    v32 = v15;
    v33 = v25;
    v34 = v9;
    v35 = v10;
    v36 = v11;
    v37 = v14;
    result = sub_245639E30(&v31);
    v17 = v29;
    v18 = v21;
    v21[2] = v28;
    v18[3] = v17;
    v18[4] = v30;
    v19 = v27;
    *v18 = v26;
    v18[1] = v19;
  }

  return result;
}

unint64_t sub_24563A834()
{
  result = qword_27EE1A8E8;
  if (!qword_27EE1A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A8E8);
  }

  return result;
}

uint64_t sub_24563A91C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24563A984(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  sub_24563AC04(v4, v3);
  result = sub_245637BC8(v5, v6);
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  return result;
}

uint64_t sub_24563A9E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  sub_24563AC04(v4, v3);
  result = sub_245637BC8(v5, v6);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_24563AA3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_24563AC04(v4, v3);
  result = sub_245637BC8(v5, v6);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_24563AA98@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  v9[2] = a1[2];
  v9[3] = v5;
  v9[4] = a1[4];
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = v6;
  result = v4(v9);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_24563AAF8(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = a1[1];
  sub_245636AC8(v4, v3);
  result = sub_245636B1C(v5, v6);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_24563AB54@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  v9[2] = a1[2];
  v9[3] = v5;
  v9[4] = a1[4];
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = v6;
  result = v4(v9);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_24563ABB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *(a1 + 64) = v4;
  *(a1 + 72) = v3;
  return result;
}

uint64_t sub_24563AC04(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_245636AC8(result, a2);
  }

  return result;
}

unint64_t sub_24563AC2C()
{
  result = qword_27EE1A910;
  if (!qword_27EE1A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A910);
  }

  return result;
}

unint64_t sub_24563AC84()
{
  result = qword_27EE1A918;
  if (!qword_27EE1A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A918);
  }

  return result;
}

unint64_t sub_24563ACDC()
{
  result = qword_27EE1A920;
  if (!qword_27EE1A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A920);
  }

  return result;
}

uint64_t sub_24563AE14(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AA78, &qword_2456613E8);
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v8 = *(v1 + 16);
  v12 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24563E4E4();
  sub_24565BFC4();
  v14 = 0;
  sub_24565BE74();
  if (!v2)
  {
    v10 = v8;
    v11 = v12;
    v13 = 1;
    sub_24563E58C();
    sub_24565BEA4();
  }

  return (*(v9 + 8))(v6, v4);
}

uint64_t sub_24563AFB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24565BF74();
  sub_24565BB54();
  if (v2)
  {
    ++v1;
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
  }

  MEMORY[0x245D6CFC0](v1);
  return sub_24565BFA4();
}

uint64_t sub_24563B038@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AA60, &qword_2456613E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24563E4E4();
  sub_24565BFB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_24565BDF4();
  v11 = v10;
  v12 = v9;
  v18 = 1;
  sub_24563E538();
  sub_24565BE24();
  (*(v6 + 8))(v8, v5);
  v13 = v16;
  v14 = v17;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24563B238()
{
  if (*v0)
  {
    return 0x6F69746E65746572;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_24563B284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000245663FB0 == a2 || (sub_24565BED4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F69746E65746572 && a2 == 0xEF746E65746E496ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24565BED4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24563B374(uint64_t a1)
{
  v2 = sub_24563E4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24563B3B0(uint64_t a1)
{
  v2 = sub_24563E4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24563B41C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_24565BB54();
  if (v3)
  {
    ++v2;
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
  }

  return MEMORY[0x245D6CFC0](v2);
}

uint64_t sub_24563B478()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24565BF74();
  sub_24565BB54();
  if (v2)
  {
    ++v1;
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
  }

  MEMORY[0x245D6CFC0](v1);
  return sub_24565BFA4();
}

BOOL sub_24563B4F4(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_24565BED4(), result = 0, (v7 & 1) != 0))
  {
    if (!v3)
    {
      if (v2 == v4)
      {
        v10 = v5;
      }

      else
      {
        v10 = 1;
      }

      return (v10 & 1) == 0;
    }

    if (v2)
    {
      if (v2 != 1)
      {
        if (v4 > 1)
        {
          v12 = v5;
        }

        else
        {
          v12 = 0;
        }

        return v12 == 1;
      }

      v9 = v4 == 1;
    }

    else
    {
      v9 = v4 == 0;
    }

    if (v9)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    return (v11 & 1) != 0;
  }

  return result;
}

BOOL static DCPresentmentRequestedElement.RetentionIntent.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 == 1)
        {
          v4 = *(a2 + 8);
        }

        else
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }

      else
      {
        if (v3 > 1)
        {
          v7 = *(a2 + 8);
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          return 1;
        }
      }
    }

    else
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = *(a2 + 8);
      }

      if (v6)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

uint64_t sub_24563B620()
{
  v1 = 0x6E6961746572;
  v2 = 0x4F79616C70736964;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x746552746F4E6F64;
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

uint64_t sub_24563B6A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24563E37C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24563B6DC(uint64_t a1)
{
  v2 = sub_24563BE94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24563B718(uint64_t a1)
{
  v2 = sub_24563BE94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24563B754(uint64_t a1)
{
  v2 = sub_24563BF3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24563B790(uint64_t a1)
{
  v2 = sub_24563BF3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24563B7CC(uint64_t a1)
{
  v2 = sub_24563BF90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24563B808(uint64_t a1)
{
  v2 = sub_24563BF90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24563B868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F69746E65746572 && a2 == 0xEF646F697265506ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24565BED4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24563B8F8(uint64_t a1)
{
  v2 = sub_24563BFE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24563B934(uint64_t a1)
{
  v2 = sub_24563BFE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24563B970(uint64_t a1)
{
  v2 = sub_24563BEE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24563B9AC(uint64_t a1)
{
  v2 = sub_24563BEE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DCPresentmentRequestedElement.RetentionIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A930, &qword_245660CA0);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A938, &qword_245660CA8);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v31 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A940, &qword_245660CB0);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v28 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A948, &qword_245660CB8);
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A950, &qword_245660CC0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = *v1;
  v15 = *(v1 + 8);
  v16 = a1[3];
  v17 = a1;
  v19 = &v28 - v18;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  sub_24563BE94();
  sub_24565BFC4();
  if (v15 == 1)
  {
    v20 = (v13 + 8);
    if (v14)
    {
      v21 = v12;
      if (v14 == 1)
      {
        v41 = 2;
        sub_24563BF3C();
        v22 = v31;
        sub_24565BE44();
        v24 = v32;
        v23 = v33;
      }

      else
      {
        v42 = 3;
        sub_24563BEE8();
        v22 = v34;
        sub_24565BE44();
        v24 = v35;
        v23 = v36;
      }

      (*(v24 + 8))(v22, v23);
      return (*v20)(v19, v21);
    }

    else
    {
      v40 = 1;
      sub_24563BF90();
      v27 = v28;
      sub_24565BE44();
      (*(v29 + 8))(v27, v30);
      return (*v20)(v19, v12);
    }
  }

  else
  {
    v39 = 0;
    sub_24563BFE4();
    sub_24565BE44();
    v25 = v38;
    sub_24565BE94();
    (*(v37 + 8))(v11, v25);
    return (*(v13 + 8))(v19, v12);
  }
}

unint64_t sub_24563BE94()
{
  result = qword_27EE1A958;
  if (!qword_27EE1A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A958);
  }

  return result;
}

unint64_t sub_24563BEE8()
{
  result = qword_27EE1A960;
  if (!qword_27EE1A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A960);
  }

  return result;
}

unint64_t sub_24563BF3C()
{
  result = qword_27EE1A968;
  if (!qword_27EE1A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A968);
  }

  return result;
}

unint64_t sub_24563BF90()
{
  result = qword_27EE1A970;
  if (!qword_27EE1A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A970);
  }

  return result;
}

unint64_t sub_24563BFE4()
{
  result = qword_27EE1A978;
  if (!qword_27EE1A978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A978);
  }

  return result;
}

uint64_t DCPresentmentRequestedElement.RetentionIntent.hash(into:)()
{
  v1 = *v0;
  if (v0[1])
  {
    ++v1;
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
  }

  return MEMORY[0x245D6CFC0](v1);
}

uint64_t DCPresentmentRequestedElement.RetentionIntent.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24565BF74();
  if (v2)
  {
    ++v1;
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
  }

  MEMORY[0x245D6CFC0](v1);
  return sub_24565BFA4();
}

uint64_t DCPresentmentRequestedElement.RetentionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A980, &qword_245660CC8);
  v56 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v55 = &v44 - v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A988, &qword_245660CD0);
  v53 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v54 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A990, &qword_245660CD8);
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A998, &qword_245660CE0);
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE1A9A0, &unk_245660CE8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  v15 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24563BE94();
  v16 = v58;
  sub_24565BFB4();
  if (!v16)
  {
    v17 = v10;
    v45 = v8;
    v46 = 0;
    v18 = v54;
    v19 = v55;
    v58 = v12;
    v20 = v56;
    v21 = v57;
    v47 = v14;
    v22 = sub_24565BE34();
    v23 = (2 * *(v22 + 16)) | 1;
    v60 = v22;
    v61 = v22 + 32;
    v62 = 0;
    v63 = v23;
    v24 = sub_24562A724();
    if (v24 == 4 || v62 != v63 >> 1)
    {
      v27 = v11;
      v28 = sub_24565BD64();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A460, &qword_24565F2A0);
      *v30 = &type metadata for DCPresentmentRequestedElement.RetentionIntent;
      v31 = v47;
      sub_24565BDC4();
      sub_24565BD54();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v58 + 8))(v31, v27);
    }

    else if (v24 > 1u)
    {
      v33 = v58;
      if (v24 != 2)
      {
        v64 = 3;
        sub_24563BEE8();
        v39 = v46;
        v38 = v47;
        sub_24565BDB4();
        if (v39)
        {
          (*(v33 + 8))(v38, v11);
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v59);
        }

        (*(v20 + 8))(v19, v52);
        (*(v33 + 8))(v38, v11);
        swift_unknownObjectRelease();
        v43 = 1;
        v42 = 2;
        goto LABEL_23;
      }

      v64 = 2;
      sub_24563BF3C();
      v35 = v46;
      v34 = v47;
      sub_24565BDB4();
      if (!v35)
      {
        (*(v53 + 8))(v18, v49);
        (*(v33 + 8))(v34, v11);
        swift_unknownObjectRelease();
        v42 = 1;
        v43 = 1;
        goto LABEL_23;
      }

      (*(v33 + 8))(v34, v11);
    }

    else
    {
      if (!v24)
      {
        v64 = 0;
        sub_24563BFE4();
        v25 = v46;
        v26 = v47;
        sub_24565BDB4();
        if (v25)
        {
          (*(v58 + 8))(v26, v11);
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v59);
        }

        v40 = v45;
        v41 = v11;
        v42 = sub_24565BE14();
        (*(v48 + 8))(v17, v40);
        (*(v58 + 8))(v26, v41);
        swift_unknownObjectRelease();
        v43 = 0;
LABEL_23:
        *v21 = v42;
        *(v21 + 8) = v43;
        return __swift_destroy_boxed_opaque_existential_1(v59);
      }

      v64 = 1;
      sub_24563BF90();
      v37 = v46;
      v36 = v47;
      sub_24565BDB4();
      if (!v37)
      {
        (*(v50 + 8))(v7, v51);
        (*(v58 + 8))(v36, v11);
        swift_unknownObjectRelease();
        v42 = 0;
        v43 = 1;
        goto LABEL_23;
      }

      (*(v58 + 8))(v36, v11);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_24563C850()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24565BF74();
  if (v2)
  {
    ++v1;
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
  }

  MEMORY[0x245D6CFC0](v1);
  return sub_24565BFA4();
}

uint64_t sub_24563C8B4()
{
  v1 = *v0;
  if (v0[1])
  {
    ++v1;
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
  }

  return MEMORY[0x245D6CFC0](v1);
}

uint64_t sub_24563C8FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24565BF74();
  if (v2)
  {
    ++v1;
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
  }

  MEMORY[0x245D6CFC0](v1);
  return sub_24565BFA4();
}

uint64_t sub_24563C95C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = (*a1 == *a2) & ~v4;
  if (*a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = v3 > 1;
  if (v3 == 1)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (!v7)
  {
    v4 = 0;
  }

  if (v2 != 1)
  {
    v8 = v4;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (*(a1 + 8) == 1)
  {
    return v9;
  }

  else
  {
    return v5;
  }
}

uint64_t DCPresentmentRequestedElement.elementIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___DCPresentmentRequestedElement_state);
  swift_getKeyPath();

  os_unfair_lock_lock(v3 + 11);
  sub_24563CAC0(&v5);
  os_unfair_lock_unlock(v3 + 11);

  return v5;
}

uint64_t sub_24563CA54(uint64_t *a1, uint64_t a2)
{

  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_24563CAC0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t DCPresentmentRequestedElement.intentToRetain.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___DCPresentmentRequestedElement_state);
  swift_getKeyPath();

  os_unfair_lock_lock(v3 + 11);
  sub_24563CC08();
  os_unfair_lock_unlock(v3 + 11);
}

uint64_t sub_24563CB9C()
{

  swift_getAtKeyPath();
}

uint64_t DCPresentmentRequestedElement.__intentToRetain.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___DCPresentmentRequestedElement_state);
  swift_getKeyPath();

  os_unfair_lock_lock(v3 + 11);
  sub_24563E700();
  os_unfair_lock_unlock(v3 + 11);

  if (v6 == 1)
  {
    return qword_245661500[v5];
  }

  else
  {
    return 1;
  }
}

uint64_t DCPresentmentRequestedElement.retentionPeriod.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___DCPresentmentRequestedElement_state);
  swift_getKeyPath();

  os_unfair_lock_lock(v3 + 11);
  sub_24563E700();
  os_unfair_lock_unlock(v3 + 11);

  if (v6)
  {
    return sub_24565B994();
  }

  else
  {
    return v5;
  }
}

id sub_24563CDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 2;
  if (a3 == 1)
  {
    v7 = a4 & ~(a4 >> 63);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  if (a3 == 2)
  {
    v7 = 0;
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (a3 == 3)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  if (a3 == 3)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A9D8, &qword_245660D90);
  v12 = swift_allocObject();
  *(v12 + 44) = 0;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  *&v4[OBJC_IVAR___DCPresentmentRequestedElement_state] = v12;
  v14.receiver = v4;
  v14.super_class = DCPresentmentRequestedElement;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_24563CF24(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_24565BB14();

  return v5;
}

uint64_t DCPresentmentRequestedElement.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___DCPresentmentRequestedElement_state);
  swift_getKeyPath();

  os_unfair_lock_lock(v3 + 11);
  sub_24563CC08();
  os_unfair_lock_unlock(v3 + 11);

  return sub_24565BB34();
}

uint64_t DCPresentmentRequestedElement.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR___DCPresentmentRequestedElement_state);
  swift_getKeyPath();

  os_unfair_lock_lock(v3 + 11);
  sub_24563E700();
  os_unfair_lock_unlock(v3 + 11);

  v5 = v25;
  v4 = v26;
  v6 = v27;
  v7 = v28;
  sub_24563D310(a1, v19);
  if (!v20)
  {
    sub_245638A1C(v19);
LABEL_13:
    if (v4)
    {
      goto LABEL_14;
    }

LABEL_16:

    return 1;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = *&v18[OBJC_IVAR___DCPresentmentRequestedElement_state];

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);

  os_unfair_lock_lock(v8 + 11);
  sub_24563E700();
  os_unfair_lock_unlock(v8 + 11);

  if (!v4)
  {
    if (v22)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (!v22)
  {
LABEL_14:

    return 0;
  }

  v10 = v23;
  v11 = v24;
  if ((v5 != v21 || v22 != v4) && (sub_24565BED4() & 1) == 0)
  {

    v15 = 0;
    goto LABEL_29;
  }

  if (v7)
  {
    if (!v6)
    {
      v12 = v10 == 0;
LABEL_24:
      if (v12)
      {
        v16 = v11;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
LABEL_28:
        v15 = 1;
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v6 == 1)
    {
      v12 = v10 == 1;
      goto LABEL_24;
    }

    if (v10 > 1)
    {
      v17 = v11;
    }

    else
    {
      v17 = 0;
    }

    if (v17 == 1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v6 == v10)
    {
      v14 = v11;
    }

    else
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

LABEL_21:
  v15 = 0;
LABEL_29:
  swift_bridgeObjectRelease_n();
  return v15;
}

uint64_t sub_24563D310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE1A8A0, &qword_2456618A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DCPresentmentRequestedElement.hash.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___DCPresentmentRequestedElement_state);
  swift_getKeyPath();

  os_unfair_lock_lock(v3 + 11);
  sub_24563D5BC(&v5);
  os_unfair_lock_unlock(v3 + 11);

  return v5;
}

uint64_t sub_24563D4C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[2];
  v4 = *(a1 + 24);
  sub_24565BF74();
  sub_24565BB54();
  if (v4)
  {
    ++v3;
  }

  else
  {
    MEMORY[0x245D6CFC0](0);
  }

  MEMORY[0x245D6CFC0](v3);
  result = sub_24565BFA4();
  *a2 = result;
  return result;
}

uint64_t sub_24563D550(uint64_t *a1, uint64_t a2)
{

  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_24563D5BC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

id DCPresentmentRequestedElement.init(coder:)(void *a1)
{
  v2 = v1;
  sub_245639ECC(0, &qword_27EE1A9C0, 0x277CBEA90);
  v4 = sub_24565BCC4();
  if (v4)
  {
    v5 = v4;
    v6 = sub_24565BA74();
    v8 = v7;

    v9 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_245636AC8(v6, v8);
    v12 = sub_245639738(v6, v8);
    sub_245636B1C(v6, v8);
    if (v12)
    {
      v20 = &_s5StateVN_0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A9C8, &qword_245660D88);
      sub_24565BB34();
      sub_24563DBC8();
      sub_24565BCB4();

      v13 = v22;
      if (v22)
      {
        v14 = v24;
        v15 = v23;
        v16 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A9D8, &qword_245660D90);
        v17 = swift_allocObject();
        *(v17 + 44) = 0;
        *(v17 + 16) = v16;
        *(v17 + 24) = v13;
        *(v17 + 32) = v15;
        *(v17 + 40) = v14 & 1;
        *&v2[OBJC_IVAR___DCPresentmentRequestedElement_state] = v17;
        [v12 finishDecoding];

        sub_245636B1C(v6, v8);
        v19.receiver = v2;
        v19.super_class = DCPresentmentRequestedElement;
        v18 = objc_msgSendSuper2(&v19, sel_init);

        return v18;
      }

      [v12 finishDecoding];
    }

    v10 = sub_245636B1C(v6, v8);
  }

  else
  {
  }

  type metadata accessor for DCPresentmentRequestedElement(v10);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall DCPresentmentRequestedElement.encode(with:)(NSCoder with)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v4 = *(v1 + OBJC_IVAR___DCPresentmentRequestedElement_state);
  swift_getKeyPath();

  os_unfair_lock_lock(v4 + 11);
  sub_24563E700();
  os_unfair_lock_unlock(v4 + 11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A9C8, &qword_245660D88);
  sub_24565BB34();
  sub_24563DC1C();
  sub_24565BCA4();

  [v3 finishEncoding];
  v5 = [v3 encodedData];
  if (v5)
  {
    v6 = v5;
    v7 = sub_24565BB14();
    [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
  }

  else
  {
    __break(1u);
  }
}

void __swiftcall DCPresentmentRequestedElement.init()(DCPresentmentRequestedElement *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t sub_24563DBC8()
{
  result = qword_27EE1A9D0;
  if (!qword_27EE1A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A9D0);
  }

  return result;
}

unint64_t sub_24563DC1C()
{
  result = qword_27EE1A9E0;
  if (!qword_27EE1A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A9E0);
  }

  return result;
}

unint64_t sub_24563DC74()
{
  result = qword_27EE1A9E8;
  if (!qword_27EE1A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A9E8);
  }

  return result;
}

uint64_t sub_24563DCD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_24563DD20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s15RetentionIntentO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s15RetentionIntentO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24563DF08()
{
  result = qword_27EE1A9F8;
  if (!qword_27EE1A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A9F8);
  }

  return result;
}

unint64_t sub_24563DF60()
{
  result = qword_27EE1AA00;
  if (!qword_27EE1AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AA00);
  }

  return result;
}

unint64_t sub_24563DFB8()
{
  result = qword_27EE1AA08;
  if (!qword_27EE1AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AA08);
  }

  return result;
}

unint64_t sub_24563E010()
{
  result = qword_27EE1AA10;
  if (!qword_27EE1AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AA10);
  }

  return result;
}

unint64_t sub_24563E068()
{
  result = qword_27EE1AA18;
  if (!qword_27EE1AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AA18);
  }

  return result;
}

unint64_t sub_24563E0C0()
{
  result = qword_27EE1AA20;
  if (!qword_27EE1AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AA20);
  }

  return result;
}

unint64_t sub_24563E118()
{
  result = qword_27EE1AA28;
  if (!qword_27EE1AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AA28);
  }

  return result;
}

unint64_t sub_24563E170()
{
  result = qword_27EE1AA30;
  if (!qword_27EE1AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AA30);
  }

  return result;
}

unint64_t sub_24563E1C8()
{
  result = qword_27EE1AA38;
  if (!qword_27EE1AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AA38);
  }

  return result;
}

unint64_t sub_24563E220()
{
  result = qword_27EE1AA40;
  if (!qword_27EE1AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AA40);
  }

  return result;
}

unint64_t sub_24563E278()
{
  result = qword_27EE1AA48;
  if (!qword_27EE1AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AA48);
  }

  return result;
}

unint64_t sub_24563E2D0()
{
  result = qword_27EE1AA50;
  if (!qword_27EE1AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AA50);
  }

  return result;
}

unint64_t sub_24563E328()
{
  result = qword_27EE1AA58;
  if (!qword_27EE1AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AA58);
  }

  return result;
}

uint64_t sub_24563E37C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6961746572 && a2 == 0xE600000000000000;
  if (v4 || (sub_24565BED4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746552746F4E6F64 && a2 == 0xEB000000006E6961 || (sub_24565BED4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4F79616C70736964 && a2 == 0xEB00000000796C6ELL || (sub_24565BED4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24565BED4();

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

unint64_t sub_24563E4E4()
{
  result = qword_27EE1AA68;
  if (!qword_27EE1AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AA68);
  }

  return result;
}

unint64_t sub_24563E538()
{
  result = qword_27EE1AA70;
  if (!qword_27EE1AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AA70);
  }

  return result;
}

unint64_t sub_24563E58C()
{
  result = qword_27EE1AA80;
  if (!qword_27EE1AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AA80);
  }

  return result;
}

unint64_t sub_24563E5F4()
{
  result = qword_27EE1AA88;
  if (!qword_27EE1AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AA88);
  }

  return result;
}

unint64_t sub_24563E64C()
{
  result = qword_27EE1AA90;
  if (!qword_27EE1AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AA90);
  }

  return result;
}

unint64_t sub_24563E6A4()
{
  result = qword_27EE1AA98;
  if (!qword_27EE1AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AA98);
  }

  return result;
}

char *sub_24563E744(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = a1;
  v6 = OBJC_IVAR___DCPresentmentSession_connectionConfigurationStatus;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB38, &qword_245661898);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  *&v3[v6] = v7;
  v8 = sub_24564EBB0();
  memset(v42, 0, 32);
  v9 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v10 = sub_24565BB14();
  v11 = [v9 initWithMachServiceName:v10 options:4096];

  sub_24563A91C(v42, v41, &unk_27EE1A8A0, &qword_2456618A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB40, &qword_2456618A8);
  v12 = swift_allocObject();
  [v11 setRemoteObjectInterface_];
  v39 = sub_24563EC48;
  v40 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_245646920;
  v38 = &block_descriptor_308;
  v13 = _Block_copy(&aBlock);

  [v11 setInvalidationHandler_];
  _Block_release(v13);
  v14 = &selRef_appendFormat_;
  [v11 setInterruptionHandler_];
  [v11 setExportedInterface_];
  sub_24563A91C(v41, &aBlock, &unk_27EE1A8A0, &qword_2456618A0);
  v15 = v38;
  if (v38)
  {
    v16 = __swift_project_boxed_opaque_existential_1(&aBlock, v38);
    v32 = a3;
    v17 = *(v15 - 1);
    MEMORY[0x28223BE20](v16);
    v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    v20 = sub_24565BEC4();
    v21 = v19;
    v14 = &selRef_appendFormat_;
    (*(v17 + 8))(v21, v15);
    a3 = v32;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v20 = 0;
  }

  [v11 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAE0, &qword_245661688);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = v11;
  v12[2] = v22;
  v12[3] = sub_24563ED30;
  v12[4] = 0;
  [v11 activate];

  sub_245636C48(v41, &unk_27EE1A8A0, &qword_2456618A0);
  sub_245636C48(v42, &unk_27EE1A8A0, &qword_2456618A0);
  *&v3[OBJC_IVAR___DCPresentmentSession_connection] = v12;
  *&v3[OBJC_IVAR___DCPresentmentSession_partitions] = v33;
  *&v3[OBJC_IVAR___DCPresentmentSession_presentmentType] = a2;
  *&v3[OBJC_IVAR___DCPresentmentSession_options] = a3;
  v34.receiver = v3;
  v34.super_class = DCPresentmentSession;
  v23 = a3;
  v24 = objc_msgSendSuper2(&v34, sel_init);
  v25 = *&v24[OBJC_IVAR___DCPresentmentSession_connection];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = *(v25 + 16);
  v28 = v24;

  os_unfair_lock_lock((v27 + 24));
  v29 = *(v27 + 16);
  v39 = sub_24564E10C;
  v40 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_245646920;
  v38 = &block_descriptor_314;
  v30 = _Block_copy(&aBlock);

  [v29 v14[164]];
  _Block_release(v30);
  os_unfair_lock_unlock((v27 + 24));

  return v28;
}

void sub_24563EC48()
{
  if (qword_27EE1A220 != -1)
  {
    swift_once();
  }

  v0 = sub_24565BAC4();
  __swift_project_value_buffer(v0, qword_27EE1A228);
  oslog = sub_24565BAA4();
  v1 = sub_24565BC74();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_24560F000, oslog, v1, "DCPresentmentSession connection invalidated", v2, 2u);
    MEMORY[0x245D6D730](v2, -1, -1);
  }
}

uint64_t sub_24563ED30()
{
  type metadata accessor for DCPresentmentError(0);
  sub_24564E114(MEMORY[0x277D84F90]);
  sub_24564E244();
  sub_24565BA34();
  return v1;
}

char *sub_24563ED98(uint64_t a1)
{
  if (qword_27EE1A220 != -1)
  {
    swift_once();
  }

  v1 = sub_24565BAC4();
  __swift_project_value_buffer(v1, qword_27EE1A228);
  v2 = sub_24565BAA4();
  v3 = sub_24565BC74();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24560F000, v2, v3, "DCPresentmentSession connection interrupted", v4, 2u);
    MEMORY[0x245D6D730](v4, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *&result[OBJC_IVAR___DCPresentmentSession_connectionConfigurationStatus];
    v7 = result;

    os_unfair_lock_lock((v6 + 24));
    sub_24564B35C(*(v6 + 16));
    *(v6 + 16) = 0;
    os_unfair_lock_unlock((v6 + 24));
  }

  return result;
}

uint64_t sub_24563EF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB08, &qword_2456616E0);
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24563F008, 0, 0);
}

uint64_t sub_24563F008()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v9 = v1[21];
  v12 = v1[22];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_24563F1C4;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAD0, &qword_2456615E0);
  sub_24565BBD4();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_24563F2D4;
  v1[13] = &block_descriptor_304;
  [v9 generateTransportKeyFor:v12 completionHandler:v4];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_24563F1C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_24564EAE0;
  }

  else
  {
    v2 = sub_24564EB70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_24563F2D4(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB08, &qword_2456616E0);
    sub_24565BBE4();
  }

  else
  {
    v6 = a2;
    sub_24565BA74();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB08, &qword_2456616E0);
    sub_24565BBF4();
  }
}

uint64_t sub_24563F394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24563F434, 0, 0);
}

uint64_t sub_24563F434(uint64_t a1, uint64_t a2)
{
  v28 = v2;
  v3 = *(v2[5] + OBJC_IVAR___DCPresentmentSession_connectionConfigurationStatus);
  KeyPath = swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_24564B310;
  *(v5 + 24) = KeyPath;

  os_unfair_lock_lock((v3 + 24));
  sub_24564B318((v3 + 16), &v27);
  os_unfair_lock_unlock((v3 + 24));

  v6 = v27;
  v2[7] = v27;

  if (v6)
  {
    if (v6 == 1)
    {
      v7 = v2[4];
      v8 = v2[3];
      v9 = *(v2[5] + OBJC_IVAR___DCPresentmentSession_connection);
      v10 = swift_allocObject();
      v2[13] = v10;
      *(v10 + 16) = v8;
      *(v10 + 24) = v7;

      v11 = swift_task_alloc();
      v2[14] = v11;
      v11[2] = v9;
      v11[3] = &unk_2456615F8;
      v11[4] = v10;
      v12 = swift_task_alloc();
      v2[15] = v12;
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v9;
      v13 = swift_task_alloc();
      v2[16] = v13;
      *v13 = v2;
      v13[1] = sub_24563FA24;
      v14 = v2[2];
      v15 = MEMORY[0x277CC9318];

      return MEMORY[0x282200830](v14, &unk_245661608, v11, sub_24564BD84, v12, 0, 0, v15);
    }

    v21 = swift_task_alloc();
    v2[8] = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAD0, &qword_2456615E0);
    *v21 = v2;
    v23 = sub_24563F7FC;
  }

  else
  {
    v17 = v2[5];
    v16 = v2[6];
    v18 = sub_24565BC24();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;
    v20 = v17;
    v6 = sub_2456464A8(0, 0, v16, &unk_245661618, v19);
    v2[10] = v6;
    os_unfair_lock_lock((v3 + 24));
    sub_24564BE74((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
    v21 = swift_task_alloc();
    v2[11] = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAD0, &qword_2456615E0);
    *v21 = v2;
    v23 = sub_24563F910;
  }

  v21[1] = v23;
  v24 = MEMORY[0x277D84950];
  v25 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v22, v6, v25, v22, v24);
}

uint64_t sub_24563F7FC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24563FF44;
  }

  else
  {
    v2 = sub_24563FDE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24563F910()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24563FD74;
  }

  else
  {
    v2 = sub_24563FC10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24563FA24()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24563FB90, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24563FB90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24563FC10()
{

  v1 = v0[4];
  v2 = v0[3];
  v3 = *(v0[5] + OBJC_IVAR___DCPresentmentSession_connection);
  v4 = swift_allocObject();
  v0[13] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[14] = v5;
  v5[2] = v3;
  v5[3] = &unk_2456615F8;
  v5[4] = v4;
  v6 = swift_task_alloc();
  v0[15] = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_24563FA24;
  v8 = v0[2];
  v9 = MEMORY[0x277CC9318];

  return MEMORY[0x282200830](v8, &unk_245661608, v5, sub_24564BD84, v6, 0, 0, v9);
}

uint64_t sub_24563FD74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24563FDE0()
{
  sub_24564B35C(v0[7]);
  v1 = v0[4];
  v2 = v0[3];
  v3 = *(v0[5] + OBJC_IVAR___DCPresentmentSession_connection);
  v4 = swift_allocObject();
  v0[13] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[14] = v5;
  v5[2] = v3;
  v5[3] = &unk_2456615F8;
  v5[4] = v4;
  v6 = swift_task_alloc();
  v0[15] = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_24563FA24;
  v8 = v0[2];
  v9 = MEMORY[0x277CC9318];

  return MEMORY[0x282200830](v8, &unk_245661608, v5, sub_24564BD84, v6, 0, 0, v9);
}

uint64_t sub_24563FF44()
{
  sub_24564B35C(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24563FFB0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245640050, 0, 0);
}

uint64_t sub_245640050(uint64_t a1, uint64_t a2)
{
  v27 = v2;
  v3 = *(v2[5] + OBJC_IVAR___DCPresentmentSession_connectionConfigurationStatus);
  KeyPath = swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_24564EB78;
  *(v5 + 24) = KeyPath;

  os_unfair_lock_lock((v3 + 24));
  sub_24564EAE8((v3 + 16), &v26);
  os_unfair_lock_unlock((v3 + 24));

  v6 = v26;
  v2[7] = v26;

  if (v6)
  {
    if (v6 == 1)
    {
      v7 = v2[4];
      v8 = v2[3];
      v9 = *(v2[5] + OBJC_IVAR___DCPresentmentSession_connection);
      v10 = swift_allocObject();
      v2[13] = v10;
      *(v10 + 16) = v8;
      *(v10 + 24) = v7;

      v11 = swift_task_alloc();
      v2[14] = v11;
      v11[2] = v9;
      v11[3] = &unk_2456618C8;
      v11[4] = v10;
      v12 = swift_task_alloc();
      v2[15] = v12;
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v9;
      v13 = swift_task_alloc();
      v2[16] = v13;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB30, &qword_245661860);
      *v13 = v2;
      v13[1] = sub_245640650;

      return MEMORY[0x282200830](v2 + 2, &unk_2456618D8, v11, sub_24564E43C, v12, 0, 0, v14);
    }

    v20 = swift_task_alloc();
    v2[8] = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAD0, &qword_2456615E0);
    *v20 = v2;
    v22 = sub_245640428;
  }

  else
  {
    v16 = v2[5];
    v15 = v2[6];
    v17 = sub_24565BC24();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    v19 = v16;
    v6 = sub_2456464A8(0, 0, v15, &unk_2456618E0, v18);
    v2[10] = v6;
    os_unfair_lock_lock((v3 + 24));
    sub_24564EB88((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
    v20 = swift_task_alloc();
    v2[11] = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAD0, &qword_2456615E0);
    *v20 = v2;
    v22 = sub_24564053C;
  }

  v20[1] = v22;
  v23 = MEMORY[0x277D84950];
  v24 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v21, v6, v24, v21, v23);
}

uint64_t sub_245640428()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24563FF44;
  }

  else
  {
    v2 = sub_245640938;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24564053C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24563FD74;
  }

  else
  {
    v2 = sub_2456407C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245640650()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24563FB90, 0, 0);
  }

  else
  {

    v3 = v2[2];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_2456407C4()
{

  v1 = v0[4];
  v2 = v0[3];
  v3 = *(v0[5] + OBJC_IVAR___DCPresentmentSession_connection);
  v4 = swift_allocObject();
  v0[13] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[14] = v5;
  v5[2] = v3;
  v5[3] = &unk_2456618C8;
  v5[4] = v4;
  v6 = swift_task_alloc();
  v0[15] = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v7 = swift_task_alloc();
  v0[16] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB30, &qword_245661860);
  *v7 = v0;
  v7[1] = sub_245640650;

  return MEMORY[0x282200830](v0 + 2, &unk_2456618D8, v5, sub_24564E43C, v6, 0, 0, v8);
}

uint64_t sub_245640938()
{
  sub_24564B35C(v0[7]);
  v1 = v0[4];
  v2 = v0[3];
  v3 = *(v0[5] + OBJC_IVAR___DCPresentmentSession_connection);
  v4 = swift_allocObject();
  v0[13] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[14] = v5;
  v5[2] = v3;
  v5[3] = &unk_2456618C8;
  v5[4] = v4;
  v6 = swift_task_alloc();
  v0[15] = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v7 = swift_task_alloc();
  v0[16] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB30, &qword_245661860);
  *v7 = v0;
  v7[1] = sub_245640650;

  return MEMORY[0x282200830](v0 + 2, &unk_2456618D8, v5, sub_24564E43C, v6, 0, 0, v8);
}

uint64_t sub_245640AAC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245640B4C, 0, 0);
}

uint64_t sub_245640B4C(uint64_t a1, uint64_t a2)
{
  v27 = v2;
  v3 = *(v2[5] + OBJC_IVAR___DCPresentmentSession_connectionConfigurationStatus);
  KeyPath = swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_24564EB78;
  *(v5 + 24) = KeyPath;

  os_unfair_lock_lock((v3 + 24));
  sub_24564EAE8((v3 + 16), &v26);
  os_unfair_lock_unlock((v3 + 24));

  v6 = v26;
  v2[7] = v26;

  if (v6)
  {
    if (v6 == 1)
    {
      v7 = v2[4];
      v8 = v2[3];
      v9 = *(v2[5] + OBJC_IVAR___DCPresentmentSession_connection);
      v10 = swift_allocObject();
      v2[13] = v10;
      *(v10 + 16) = v8;
      *(v10 + 24) = v7;

      v11 = swift_task_alloc();
      v2[14] = v11;
      v11[2] = v9;
      v11[3] = &unk_245661798;
      v11[4] = v10;
      v12 = swift_task_alloc();
      v2[15] = v12;
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v9;
      v13 = swift_task_alloc();
      v2[16] = v13;
      v14 = sub_245639ECC(0, &qword_27EE1AB10, off_278E81020);
      *v13 = v2;
      v13[1] = sub_245641150;

      return MEMORY[0x282200830](v2 + 2, &unk_2456617A8, v11, sub_24564D8A4, v12, 0, 0, v14);
    }

    v20 = swift_task_alloc();
    v2[8] = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAD0, &qword_2456615E0);
    *v20 = v2;
    v22 = sub_245640F28;
  }

  else
  {
    v16 = v2[5];
    v15 = v2[6];
    v17 = sub_24565BC24();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    v19 = v16;
    v6 = sub_2456464A8(0, 0, v15, &unk_2456617B0, v18);
    v2[10] = v6;
    os_unfair_lock_lock((v3 + 24));
    sub_24564EB88((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
    v20 = swift_task_alloc();
    v2[11] = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAD0, &qword_2456615E0);
    *v20 = v2;
    v22 = sub_24564103C;
  }

  v20[1] = v22;
  v23 = MEMORY[0x277D84950];
  v24 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v21, v6, v24, v21, v23);
}

uint64_t sub_245640F28()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24564EB40;
  }

  else
  {
    v2 = sub_24564143C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24564103C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24564EB3C;
  }

  else
  {
    v2 = sub_2456412C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245641150()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24564EB7C, 0, 0);
  }

  else
  {

    v3 = v2[2];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_2456412C4()
{

  v1 = v0[4];
  v2 = v0[3];
  v3 = *(v0[5] + OBJC_IVAR___DCPresentmentSession_connection);
  v4 = swift_allocObject();
  v0[13] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[14] = v5;
  v5[2] = v3;
  v5[3] = &unk_245661798;
  v5[4] = v4;
  v6 = swift_task_alloc();
  v0[15] = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v7 = swift_task_alloc();
  v0[16] = v7;
  v8 = sub_245639ECC(0, &qword_27EE1AB10, off_278E81020);
  *v7 = v0;
  v7[1] = sub_245641150;

  return MEMORY[0x282200830](v0 + 2, &unk_2456617A8, v5, sub_24564D8A4, v6, 0, 0, v8);
}

uint64_t sub_24564143C()
{
  sub_24564B35C(v0[7]);
  v1 = v0[4];
  v2 = v0[3];
  v3 = *(v0[5] + OBJC_IVAR___DCPresentmentSession_connection);
  v4 = swift_allocObject();
  v0[13] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[14] = v5;
  v5[2] = v3;
  v5[3] = &unk_245661798;
  v5[4] = v4;
  v6 = swift_task_alloc();
  v0[15] = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v7 = swift_task_alloc();
  v0[16] = v7;
  v8 = sub_245639ECC(0, &qword_27EE1AB10, off_278E81020);
  *v7 = v0;
  v7[1] = sub_245641150;

  return MEMORY[0x282200830](v0 + 2, &unk_2456617A8, v5, sub_24564D8A4, v6, 0, 0, v8);
}

uint64_t sub_245641738(uint64_t a1, void *aBlock, void *a3)
{
  v3[4] = a1;
  v3[5] = a3;
  v3[6] = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x2822009F8](sub_2456417B4, 0, 0);
}

uint64_t sub_2456417B4()
{
  v1 = v0[4];
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_245641888;

  return sub_24563F394((v0 + 2), &unk_245661890, v2);
}

uint64_t sub_245641888()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24564EB84;
  }

  else
  {

    v2 = sub_24564EB38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2456419A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB28, &qword_245661858);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245641A74, 0, 0);
}

uint64_t sub_245641A74()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];
  v11 = v1[20];
  v12 = v1[21];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_245641C40;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB30, &qword_245661860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAD0, &qword_2456615E0);
  sub_24565BBD4();
  (*(v6 + 32))(boxed_opaque_existential_0, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_245641E30;
  v1[13] = &block_descriptor_281;
  [v11 interpretRequest:v12 completionHandler:v4];
  (*(v6 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_245641C40()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_245641DBC;
  }

  else
  {
    v2 = sub_245641D50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245641D50()
{
  **(v0 + 152) = *(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245641DBC(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

void sub_245641E30(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB28, &qword_245661858);
    sub_24565BBE4();
  }

  else
  {
    sub_245639ECC(0, &qword_27EE1AB20, off_278E81038);
    sub_24565BB94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB28, &qword_245661858);
    sub_24565BBF4();
  }
}

uint64_t sub_245642080(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_24564210C, 0, 0);
}

uint64_t sub_24564210C()
{
  v1 = v0[2];
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2456421E8;

  return sub_24563FFB0(&unk_245661850, v2);
}

uint64_t sub_2456421E8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_2456423E0;
  }

  else
  {

    v4 = sub_245642304;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_245642304()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  if (v1)
  {
    v3 = *(v0 + 32);
    sub_245639ECC(0, &qword_27EE1AB20, off_278E81038);
    v4 = sub_24565BB84();

    (v3)[2](v3, v4, 0);
    _Block_release(v3);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2456423E0()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v4 = v0[8];
  if (v1)
  {
    v5 = v0[4];
    v6 = sub_24565BA44();

    (v5)[2](v5, 0, v6);
    _Block_release(v5);
  }

  else
  {
  }

  v7 = v0[1];

  return v7();
}

uint64_t DCPresentmentSession.interpretCredentialRequest(_:)(_OWORD *a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = a1[2];
  return MEMORY[0x2822009F8](sub_2456424D4, 0, 0);
}

uint64_t sub_2456424D4()
{
  v1 = v0[14];
  v2 = swift_allocObject();
  v0[16] = v2;
  v4 = v1[1];
  v3 = v1[2];
  v2[1] = *v1;
  v2[2] = v4;
  v2[3] = v3;
  sub_245642D1C((v0 + 2), (v0 + 8));
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_2456425B8;

  return sub_24563FFB0(&unk_245661540, v2);
}

uint64_t sub_2456425B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_245642710, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_245642710()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245642774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB28, &qword_245661858);
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245642844, 0, 0);
}

uint64_t sub_245642844()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 26;
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[30];
  v7 = v1[29];
  v16 = v1[28];
  v8 = type metadata accessor for XPCCredentialPresentmentRequest();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC10CoreIDCred31XPCCredentialPresentmentRequest_value];
  v11 = *v7;
  v12 = v7[2];
  *(v10 + 1) = v7[1];
  *(v10 + 2) = v12;
  *v10 = v11;
  sub_245642D1C(v7, (v1 + 18));
  v1[24] = v9;
  v1[25] = v8;
  v13 = objc_msgSendSuper2(v1 + 12, sel_init);
  v1[33] = v13;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_245642A70;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB30, &qword_245661860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAD0, &qword_2456615E0);
  sub_24565BBD4();
  (*(v4 + 32))(boxed_opaque_existential_0, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_245641E30;
  v1[13] = &block_descriptor_362;
  [v16 interpretCredentialRequest:v13 completionHandler:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_245642A70()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_245642BF4;
  }

  else
  {
    v2 = sub_245642B80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245642B80()
{
  v1 = *(v0 + 264);
  **(v0 + 216) = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_245642BF4(uint64_t a1)
{
  v2 = *(v1 + 264);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_245642C70(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24564EB28;

  return sub_245642774(a1, a2, v2 + 16);
}

uint64_t sub_245642D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB08, &qword_2456616E0);
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245642E48, 0, 0);
}

uint64_t sub_245642E48()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v9 = v1[21];
  v12 = v1[22];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_245643004;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAD0, &qword_2456615E0);
  sub_24565BBD4();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_24563F2D4;
  v1[13] = &block_descriptor_258;
  [v9 buildResponseFor:v12 completionHandler:v4];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_245643004()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_245643184;
  }

  else
  {
    v2 = sub_245643114;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245643114()
{
  **(v0 + 160) = *(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245643184(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_245643380(void *a1, void *aBlock, void *a3)
{
  v3[4] = a1;
  v3[5] = a3;
  v3[6] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_24564340C, 0, 0);
}

uint64_t sub_24564340C()
{
  v1 = v0[4];
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_2456434F0;

  return sub_24563F394((v0 + 2), &unk_245661820, v2);
}

uint64_t sub_2456434F0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2456436D8;
  }

  else
  {

    v2 = sub_24564360C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24564360C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v1)
  {
    v5 = *(v0 + 48);
    v6 = sub_24565BA64();
    sub_245636B1C(v3, v4);
    (v5)[2](v5, v6, 0);
    _Block_release(v5);
  }

  else
  {
    sub_245636B1C(*(v0 + 16), *(v0 + 24));
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2456436D8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  if (v1)
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 72);
    v5 = sub_24565BA44();

    (v3)[2](v3, 0, v5);
    _Block_release(v3);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24564379C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB18, &qword_2456617E0);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24564386C, 0, 0);
}

uint64_t sub_24564386C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];
  v11 = v1[20];
  v12 = v1[21];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_245643A3C;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_245639ECC(0, &qword_27EE1AB10, off_278E81020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAD0, &qword_2456615E0);
  sub_24565BBD4();
  (*(v6 + 32))(boxed_opaque_existential_0, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_245643B4C;
  v1[13] = &block_descriptor_235;
  [v11 buildCredentialResponseFor:v12 completionHandler:v4];
  (*(v6 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_245643A3C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_24564EAE4;
  }

  else
  {
    v2 = sub_24564EB74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_245643B4C(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB18, &qword_2456617E0);
    sub_24565BBE4();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB18, &qword_2456617E0);
    sub_24565BBF4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_245643D84(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_245643E10, 0, 0);
}

uint64_t sub_245643E10()
{
  v1 = v0[2];
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_245643EEC;

  return sub_245640AAC(&unk_245661780, v2);
}

uint64_t sub_245643EEC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_24564EB4C;
  }

  else
  {

    v4 = sub_245644008;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_245644008()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = *(v0 + 56);
  if (v1)
  {
    v4 = *(v0 + 32);
    v4[2](v4, *(v0 + 56), 0);

    _Block_release(v4);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2456440A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB08, &qword_2456616E0);
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245644178, 0, 0);
}

uint64_t sub_245644178()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v9 = v1[21];
  v12 = v1[22];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_24563F1C4;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAD0, &qword_2456615E0);
  sub_24565BBD4();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_24563F2D4;
  v1[13] = &block_descriptor_167;
  [v9 buildErrorResponseWith:v12 completionHandler:v4];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_2456444B8(uint64_t a1, void *aBlock, void *a3)
{
  v3[4] = a1;
  v3[5] = a3;
  v3[6] = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x2822009F8](sub_245644534, 0, 0);
}

uint64_t sub_245644534()
{
  v1 = v0[4];
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_245644608;

  return sub_24563F394((v0 + 2), &unk_245661750, v2);
}

uint64_t sub_245644608()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2456447E8;
  }

  else
  {

    v2 = sub_245644724;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245644724()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (v1)
  {
    v4 = *(v0 + 48);
    v5 = sub_24565BA64();
    sub_245636B1C(v2, v3);
    (v4)[2](v4, v5, 0);
    _Block_release(v4);
  }

  else
  {
    sub_245636B1C(*(v0 + 16), *(v0 + 24));
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2456447E8()
{
  v1 = *(v0 + 48);

  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 72);
    v4 = sub_24565BA44();

    (v2)[2](v2, 0, v4);
    _Block_release(v2);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2456448A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB08, &qword_2456616E0);
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245644978, 0, 0);
}

uint64_t sub_245644978()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v11 = v1[21];
  v8 = sub_24565BA64();
  v1[27] = v8;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_245644B44;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAD0, &qword_2456615E0);
  sub_24565BBD4();
  (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_24563F2D4;
  v1[13] = &block_descriptor_144;
  [v11 interpretGenericDataRequest:v8 completionHandler:v3];
  (*(v6 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_245644B44()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_24564EB48;
  }

  else
  {
    v2 = sub_24564EB20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245644DDC(void *a1, void *aBlock, void *a3)
{
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = sub_24565BA74();
  v10 = v9;

  v3[6] = v8;
  v3[7] = v10;

  return MEMORY[0x2822009F8](sub_245644E80, 0, 0);
}

uint64_t sub_245644E80()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_245636AC8(v1, v2);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_245644F68;

  return sub_24563F394((v0 + 2), &unk_245661720, v3);
}

uint64_t sub_245644F68()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24564EBA0;
  }

  else
  {

    v2 = sub_24564EB6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245645084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB08, &qword_2456616E0);
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245645154, 0, 0);
}

uint64_t sub_245645154()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v11 = v1[21];
  v8 = sub_24565BA64();
  v1[27] = v8;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_245645320;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAD0, &qword_2456615E0);
  sub_24565BBD4();
  (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_24563F2D4;
  v1[13] = &block_descriptor_121;
  [v11 buildGenericDataResponse:v8 completionHandler:v3];
  (*(v6 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_245645320()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_2456454A8;
  }

  else
  {
    v2 = sub_245645430;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245645430()
{
  v1 = *(v0 + 216);
  **(v0 + 160) = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2456454A8(uint64_t a1)
{
  v2 = *(v1 + 216);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2456456AC(void *a1, void *aBlock, void *a3)
{
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = sub_24565BA74();
  v10 = v9;

  v3[6] = v8;
  v3[7] = v10;

  return MEMORY[0x2822009F8](sub_245645750, 0, 0);
}

uint64_t sub_245645750()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_245636AC8(v1, v2);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_245645838;

  return sub_24563F394((v0 + 2), &unk_2456615B0, v3);
}

uint64_t sub_245645838()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_245645A24;
  }

  else
  {

    v2 = sub_245645954;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245645954()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);

  sub_245636B1C(v1, v2);
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = *(v0 + 40);
    v6 = *(v0 + 24);
    v7 = sub_24565BA64();
    sub_245636B1C(v4, v6);
    (v5)[2](v5, v7, 0);
    _Block_release(v5);
  }

  else
  {
    sub_245636B1C(*(v0 + 16), *(v0 + 24));
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_245645A24()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  sub_245636B1C(v2, v1);

  v4 = *(v0 + 80);
  if (v3)
  {
    v5 = *(v0 + 40);
    v6 = sub_24565BA44();

    (v5)[2](v5, 0, v6);
    _Block_release(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_245645AF8(unint64_t a1, uint64_t a2)
{
  sub_24564D284(a1);
  swift_getAtKeyPath();
  sub_24564B35C(a1);
  return v4;
}

uint64_t sub_245645B68()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR___DCPresentmentSession_connection);
  v3 = *(v1 + OBJC_IVAR___DCPresentmentSession_partitions);
  v4 = *(v1 + OBJC_IVAR___DCPresentmentSession_presentmentType);
  v5 = *(v1 + OBJC_IVAR___DCPresentmentSession_options);
  v6 = swift_allocObject();
  v0[3] = v6;
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v5;
  v7 = v5;

  v8 = swift_task_alloc();
  v0[4] = v8;
  v8[2] = v2;
  v8[3] = &unk_245661628;
  v8[4] = v6;
  v9 = swift_task_alloc();
  v0[5] = v9;
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_245645CF0;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v10, &unk_245661638, v8, sub_24564C028, v9, 0, 0, v11);
}

uint64_t sub_245645CF0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_245645EB4;
  }

  else
  {

    v2 = sub_245645E28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245645E28()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___DCPresentmentSession_connectionConfigurationStatus);
  os_unfair_lock_lock((v1 + 24));
  sub_24564B35C(*(v1 + 16));
  *(v1 + 16) = 1;
  os_unfair_lock_unlock((v1 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_245645EB4()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + OBJC_IVAR___DCPresentmentSession_connectionConfigurationStatus);
  os_unfair_lock_lock((v2 + 24));
  sub_24564B35C(*(v2 + 16));
  *(v2 + 16) = 0;
  os_unfair_lock_unlock((v2 + 24));
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_245645F6C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAE8, &qword_245661690);
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a2;
  v5[23] = v8;
  v5[24] = v9;

  return MEMORY[0x2822009F8](sub_245646044, 0, 0);
}

uint64_t sub_245646044()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[23];
  v4 = v0[24];
  v8 = v0 + 21;
  v6 = v0[21];
  v7 = v8[1];
  v13 = v1[20];
  v14 = v4;
  v12 = v1[19];
  v9 = sub_24565BB84();
  v1[25] = v9;
  v1[2] = v1;
  v1[3] = sub_24564621C;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAD0, &qword_2456615E0);
  sub_24565BBD4();
  (*(v7 + 32))(boxed_opaque_existential_0, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_245646418;
  v1[13] = &block_descriptor_89;
  [v14 configureWithPartitions:v9 presentmentType:v12 options:v13 completionHandler:v3];
  (*(v7 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_24564621C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_24564639C;
  }

  else
  {
    v2 = sub_24564632C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24564632C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24564639C(uint64_t a1)
{
  v2 = *(v1 + 200);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void sub_245646418(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAE8, &qword_245661690);
    sub_24565BBE4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAE8, &qword_245661690);
    sub_24565BBF4();
  }
}

uint64_t sub_2456464A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24563A91C(a3, v22 - v9, &qword_27EE1AAC8, "^q");
  v11 = sub_24565BC24();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_245636C48(v10, &qword_27EE1AAC8, "^q");
  }

  else
  {
    sub_24565BC14();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24565BBC4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24565BB44() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_245636C48(a3, &qword_27EE1AAC8, "^q");

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_245636C48(a3, &qword_27EE1AAC8, "^q");
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void __swiftcall DCPresentmentSession.init()(DCPresentmentSession *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_24564686C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24564EB28;

  return sub_2456456AC(v2, v3, v4);
}

uint64_t sub_245646920(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_245646964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_245646988, 0, 0);
}

uint64_t sub_245646988()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_245646A60;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_2456470B4(v6, v4, v5);
}

uint64_t sub_245646A60()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_245646B9C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_245646B9C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245646C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_245646C24, 0, 0);
}

uint64_t sub_245646C24()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_245646CFC;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return sub_245646E38(v6, v4, v5);
}

uint64_t sub_245646CFC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24564EB80, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_245646E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_245646E5C, 0, 0);
}

uint64_t sub_245646E5C()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAE0, &qword_245661688);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_245646F98;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x8000000245664120, sub_24564CBF4, v3, v8);
}

uint64_t sub_245646F98()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24564EB44;
  }

  else
  {

    v2 = sub_24564EBA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2456470B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2456470D8, 0, 0);
}

uint64_t sub_2456470D8()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAE0, &qword_245661688);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_245647210;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x8000000245664120, sub_24564D05C, v3, v8);
}

uint64_t sub_245647210()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_245647390;
  }

  else
  {

    v2 = sub_24564732C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24564732C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245647390()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2456473FC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_245647420, 0, 0);
}

uint64_t sub_245647420()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAE0, &qword_245661688);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB30, &qword_245661860);
  *v6 = v0;
  v6[1] = sub_245647568;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000245664120, sub_24564E698, v3, v7);
}

uint64_t sub_245647568()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_245647390;
  }

  else
  {

    v2 = sub_245647684;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245647684()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2456476EC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_245647710, 0, 0);
}

uint64_t sub_245647710()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAE0, &qword_245661688);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = sub_245639ECC(0, &qword_27EE1AB10, off_278E81020);
  *v6 = v0;
  v6[1] = sub_24564785C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000023, 0x8000000245664120, sub_24564DA70, v3, v7);
}

uint64_t sub_24564785C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24564EB44;
  }

  else
  {

    v2 = sub_24564EB30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_245647978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  if (a1)
  {
    v12 = sub_24565BC24();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a3;
    v13[5] = a1;
    v13[6] = a2;
    sub_24561100C(a1, a2);

    sub_24564871C(0, 0, v11, a5, v13);
  }

  else
  {
    if (qword_27EE1A220 != -1)
    {
      swift_once();
    }

    v14 = sub_24565BAC4();
    __swift_project_value_buffer(v14, qword_27EE1A228);
    v19 = sub_24565BAA4();
    v15 = sub_24565BC84();
    if (os_log_type_enabled(v19, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24560F000, v19, v15, "SendableXPCConnection onCancel is nil", v16, 2u);
      MEMORY[0x245D6D730](v16, -1, -1);
    }

    v17 = v19;
  }
}

uint64_t sub_245647B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_245647BA0, 0, 0);
}

uint64_t sub_245647BA0()
{
  if (qword_27EE1A220 != -1)
  {
    swift_once();
  }

  v1 = sub_24565BAC4();
  v0[5] = __swift_project_value_buffer(v1, qword_27EE1A228);
  v2 = sub_24565BAA4();
  v3 = sub_24565BC74();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24560F000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x245D6D730](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_245647D74;

  return (sub_245646E38)();
}

uint64_t sub_245647D74()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_245647EA8;
  }

  else
  {
    v4 = *(v2 + 48);

    v3 = sub_245647E94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_245647EA8()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v1;
  v4 = sub_24565BAA4();
  v5 = sub_24565BC94();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24560F000, v4, v5, "SendableXPCConnection error occurred when cancelling the task: %@", v8, 0xCu);
    sub_245636C48(v9, &qword_27EE1AAD8, &qword_245661680);
    MEMORY[0x245D6D730](v9, -1, -1);
    MEMORY[0x245D6D730](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_245648014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_245648038, 0, 0);
}

uint64_t sub_245648038()
{
  if (qword_27EE1A220 != -1)
  {
    swift_once();
  }

  v1 = sub_24565BAC4();
  v0[5] = __swift_project_value_buffer(v1, qword_27EE1A228);
  v2 = sub_24565BAA4();
  v3 = sub_24565BC74();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24560F000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x245D6D730](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_24564820C;

  return (sub_245646E38)();
}

uint64_t sub_24564820C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_24564EAC8;
  }

  else
  {
    v4 = *(v2 + 48);

    v3 = sub_24564EB54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24564832C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_245648350, 0, 0);
}

uint64_t sub_245648350()
{
  if (qword_27EE1A220 != -1)
  {
    swift_once();
  }

  v1 = sub_24565BAC4();
  v0[5] = __swift_project_value_buffer(v1, qword_27EE1A228);
  v2 = sub_24565BAA4();
  v3 = sub_24565BC74();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24560F000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x245D6D730](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_24564820C;

  return (sub_245646E38)();
}

uint64_t sub_245648524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_245648548, 0, 0);
}

uint64_t sub_245648548()
{
  if (qword_27EE1A220 != -1)
  {
    swift_once();
  }

  v1 = sub_24565BAC4();
  v0[5] = __swift_project_value_buffer(v1, qword_27EE1A228);
  v2 = sub_24565BAA4();
  v3 = sub_24565BC74();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24560F000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x245D6D730](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v0[6] = v9;
  v9;
  os_unfair_lock_unlock((v8 + 24));
  v10 = swift_allocObject();
  v0[7] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_24564820C;

  return (sub_245646E38)();
}

uint64_t sub_24564871C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24563A91C(a3, v25 - v10, &qword_27EE1AAC8, "^q");
  v12 = sub_24565BC24();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_245636C48(v11, &qword_27EE1AAC8, "^q");
  }

  else
  {
    sub_24565BC14();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24565BBC4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24565BB44() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_245636C48(a3, &qword_27EE1AAC8, "^q");

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_245636C48(a3, &qword_27EE1AAC8, "^q");
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_245648A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v26 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - v18;
  v20 = sub_24565BC24();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v13 + 16))(v16, a1, v12);
  v21 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a2;
  (*(v13 + 32))(&v22[v21], v16, v12);
  v23 = &v22[(v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v23 = a3;
  *(v23 + 1) = a4;

  sub_24564871C(0, 0, v19, v26, v22);
}

uint64_t sub_245648C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAE8, &qword_245661690);
  v7[24] = v8;
  v9 = *(v8 - 8);
  v7[25] = v9;
  v7[26] = *(v9 + 64);
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245648CFC, 0, 0);
}

uint64_t sub_245648CFC()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_24564CD88;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_245655278;
  v0[5] = &block_descriptor;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_24565BCF4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_24564CDB4((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAF0, &qword_2456616A8);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[28] = v11) != 0))
  {
    v12 = v0[22];
    v0[16] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[29] = v13;
    *v13 = v0;
    v13[1] = sub_2456490C0;

    return v18();
  }

  else
  {
    sub_24565BD44();
    MEMORY[0x245D6CBA0](0xD000000000000014, 0x8000000245664170);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_24565BEB4();
    MEMORY[0x245D6CBA0](0xD000000000000013, 0x8000000245664190);
    MEMORY[0x245D6CBA0](0xD000000000000018, 0x80000002456641B0);
    sub_24564CE10();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[18] = v15;
    sub_24565BBE4();
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_2456490C0()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_245649254;
  }

  else
  {
    v2 = sub_2456491D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2456491D4(uint64_t a1)
{
  sub_24565BBF4();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v1 + 64));

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_245649254()
{
  v1 = v0[30];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v0[19] = v1;
  sub_24565BBE4();

  v2 = v0[1];

  return v2();
}

uint64_t sub_2456492E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB08, &qword_2456616E0);
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v7[28] = *(v9 + 64);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456493C0, 0, 0);
}

uint64_t sub_2456493C0()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_24564D1F0;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_245655278;
  v0[5] = &block_descriptor_115;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_24565BCF4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_24564CDB4((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAF0, &qword_2456616A8);
  if (swift_dynamicCast() && (v11 = v0[19], (v0[30] = v11) != 0))
  {
    v12 = v0[24];
    v0[18] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_24564978C;

    return (v18)(v0 + 16, v0 + 18);
  }

  else
  {
    sub_24565BD44();
    MEMORY[0x245D6CBA0](0xD000000000000014, 0x8000000245664170);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_24565BEB4();
    MEMORY[0x245D6CBA0](0xD000000000000013, 0x8000000245664190);
    MEMORY[0x245D6CBA0](0xD000000000000018, 0x80000002456641B0);
    sub_24564CE10();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[20] = v15;
    sub_24565BBE4();
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_24564978C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_245649924;
  }

  else
  {
    v2 = sub_2456498A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2456498A0()
{
  sub_24565BBF4();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245649924()
{
  v1 = v0[32];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v0[21] = v1;
  sub_24565BBE4();

  v2 = v0[1];

  return v2();
}

uint64_t sub_2456499B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB28, &qword_245661858);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245649A90, 0, 0);
}

uint64_t sub_245649A90()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_24564E990;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_245655278;
  v0[5] = &block_descriptor_356;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_24565BCF4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_24564CDB4((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAF0, &qword_2456616A8);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_245649E5C;

    return (v18)(v0 + 19, v0 + 16);
  }

  else
  {
    sub_24565BD44();
    MEMORY[0x245D6CBA0](0xD000000000000014, 0x8000000245664170);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_24565BEB4();
    MEMORY[0x245D6CBA0](0xD000000000000013, 0x8000000245664190);
    MEMORY[0x245D6CBA0](0xD000000000000018, 0x80000002456641B0);
    sub_24564CE10();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[18] = v15;
    sub_24565BBE4();
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_245649E5C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_245649FF4;
  }

  else
  {
    v2 = sub_245649F70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_245649F70()
{
  sub_24565BBF4();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245649FF4()
{
  v1 = v0[31];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v0[20] = v1;
  sub_24565BBE4();

  v2 = v0[1];

  return v2();
}

uint64_t sub_24564A088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB18, &qword_2456617E0);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24564A160, 0, 0);
}

uint64_t sub_24564A160()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_24564DC04;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_245655278;
  v0[5] = &block_descriptor_229;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_24565BCF4();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v5 + 24));
  sub_24564CDB4((v0 + 8), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAF0, &qword_2456616A8);
  if (swift_dynamicCast() && (v11 = v0[17], (v0[29] = v11) != 0))
  {
    v12 = v0[23];
    v0[16] = v11;
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = sub_24564A52C;

    return (v18)(v0 + 19, v0 + 16);
  }

  else
  {
    sub_24565BD44();
    MEMORY[0x245D6CBA0](0xD000000000000014, 0x8000000245664170);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    sub_24565BEB4();
    MEMORY[0x245D6CBA0](0xD000000000000013, 0x8000000245664190);
    MEMORY[0x245D6CBA0](0xD000000000000018, 0x80000002456641B0);
    sub_24564CE10();
    v15 = swift_allocError();
    *v16 = 2;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0xE000000000000000;
    *(v16 + 24) = 0;
    v0[18] = v15;
    sub_24565BBE4();
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_24564A52C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_24564EBA4;
  }

  else
  {
    v2 = sub_24564EB50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24564A640(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (qword_27EE1A220 != -1)
  {
    swift_once();
  }

  v7 = sub_24565BAC4();
  __swift_project_value_buffer(v7, qword_27EE1A228);
  v8 = a1;
  v9 = sub_24565BAA4();
  v10 = sub_24565BC94();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_24565BF44();
    v15 = sub_24564B55C(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24560F000, v9, v10, "XPC connection error: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245D6D730](v12, -1, -1);
    MEMORY[0x245D6D730](v11, -1, -1);
  }

  sub_24564CE10();
  v16 = swift_allocError();
  *v17 = 4;
  *(v17 + 8) = 0xD000000000000014;
  *(v17 + 16) = 0x80000002456641D0;
  *(v17 + 24) = a1;
  v20 = v16;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_24565BBE4();
}

unint64_t sub_24564A830(uint64_t a1, uint64_t a2)
{
  sub_24565BF74();
  sub_24565BB54();
  v4 = sub_24565BFA4();

  return sub_24564A8A8(a1, a2, v4);
}

unint64_t sub_24564A8A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24565BED4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24564A960(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_24564EB28;

  return v6();
}

uint64_t sub_24564AA48()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24564EB28;

  return sub_24564A960(v2, v3, v4);
}

uint64_t sub_24564AB08(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_24564ABF0;

  return v7();
}

uint64_t sub_24564ABF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24564ACE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24564EB28;

  return sub_24564AB08(a1, v4, v5, v6);
}

uint64_t sub_24564ADB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_24563A91C(a3, v23 - v10, &qword_27EE1AAC8, "^q");
  v12 = sub_24565BC24();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_245636C48(v11, &qword_27EE1AAC8, "^q");
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_24565BC14();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_24565BBC4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_24565BB44() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_245636C48(a3, &qword_27EE1AAC8, "^q");

    return v21;
  }

LABEL_8:
  sub_245636C48(a3, &qword_27EE1AAC8, "^q");
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_24564B0AC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24564EB2C;

  return v6(a1);
}

uint64_t sub_24564B1A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24564EB28;

  return sub_24564B0AC(a1, v4);
}

uint64_t sub_24564B25C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24564EB28;

  return sub_245645084(a1, a2, v7, v6);
}

uint64_t sub_24564B318@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_24564B35C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_24564B36C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24564B464;

  return v6(a1);
}

uint64_t sub_24564B464()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_24564B55C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24564B628(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24564CDB4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_24564B628(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24564B734(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24565BD74();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_24564B734(uint64_t a1, unint64_t a2)
{
  v3 = sub_24564B780(a1, a2);
  sub_24564B8B0(&unk_285869ED0);
  return v3;
}

void *sub_24564B780(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24564B99C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24565BD74();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24565BB74();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24564B99C(v10, 0);
        result = sub_24565BD34();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24564B8B0(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24564BA10(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24564B99C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB00, &qword_2456616B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24564BA10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB00, &qword_2456616B0);
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

uint64_t sub_24564BB04(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24564ABF0;

  return v8(a1, v5);
}

uint64_t sub_24564BC08(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24564EB28;

  return sub_24564BB04(a1, a2, v6);
}

uint64_t sub_24564BCD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24564ABF0;

  return sub_245646964(a1, v4, v5, v6);
}

uint64_t sub_24564BDC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24564EB28;

  return sub_245645B48(a1, v4, v5, v6);
}

uint64_t sub_24564BE74(unint64_t *a1)
{
  sub_24564B35C(*a1);
  *a1 = v1;
}

uint64_t sub_24564BEB0(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24564EB28;

  return sub_245645F6C(a1, a2, v6, v7, v8);
}

uint64_t sub_24564BF74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24564EB28;

  return sub_245646C00(a1, v4, v5, v6);
}

uint64_t sub_24564C064(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24564EB28;

  return sub_245648524(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24564C12C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24564EB28;

  return sub_24564B36C(a1, v4);
}

uint64_t sub_24564C1E4(uint64_t a1, void *a2, int *a3)
{
  *(v3 + 16) = *a2;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_24564C2E0;

  return v6(v3 + 16);
}

uint64_t sub_24564C2E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24564C3D4(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 24) = a1;
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_24564C4D4;

  return v7(v3 + 16, v4);
}

uint64_t sub_24564C4D4()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_24564C5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24564C604, 0, 0);
}

uint64_t sub_24564C604()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_24564C6D8;
  v5 = v0[4];
  v4 = v0[5];

  return sub_2456473FC(v5, v4);
}

uint64_t sub_24564C6D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24564EB80, 0, 0);
  }

  else
  {
    v6 = *(v4 + 16);

    *v6 = a1;
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_24564C838(uint64_t a1, void *a2, int *a3)
{
  *(v3 + 16) = *a2;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_24564EB24;

  return v6(v3 + 16);
}

uint64_t sub_24564C934(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 24) = a1;
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_24564EB34;

  return v7(v3 + 16, v4);
}

uint64_t sub_24564CA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24564CA58, 0, 0);
}

uint64_t sub_24564CA58()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_24564C6D8;
  v5 = v0[4];
  v4 = v0[5];

  return sub_2456476EC(v5, v4);
}

uint64_t sub_24564CB2C(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24564EB28;

  return sub_24564C838(a1, a2, v6);
}

uint64_t sub_24564CC40(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAE8, &qword_245661690) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24564EB28;

  return sub_245648C24(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24564CDB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24564CE10()
{
  result = qword_27EE1AAF8;
  if (!qword_27EE1AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AAF8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_24564CECC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24564ABF0;

  return sub_245647B7C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24564CF94(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24564EB28;

  return sub_24564C1E4(a1, a2, v6);
}

uint64_t sub_24564D0A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB08, &qword_2456616E0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24564EB28;

  return sub_2456492E8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_24564D284(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_24564D2AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24564EB28;

  return sub_245644DDC(v2, v3, v4);
}

uint64_t objectdestroy_30Tm()
{
  sub_245636B1C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24564D398(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24564EB28;

  return sub_2456448A8(a1, a2, v7, v6);
}

uint64_t sub_24564D44C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24564EB28;

  return sub_2456444B8(v2, v3, v4);
}

uint64_t sub_24564D500(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24564EB28;

  return sub_2456440A8(a1, a2, v6);
}

uint64_t sub_24564D5B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24564EB28;

  return sub_245643D84(v2, v3, v4);
}

uint64_t sub_24564D664(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24564EB28;

  return sub_24564379C(a1, a2, v6);
}

uint64_t sub_24564D714(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24564EB28;

  return sub_24564C934(a1, a2, v6);
}

uint64_t sub_24564D7DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24564EB28;

  return sub_24564CA34(a1, v4, v5, v6);
}

uint64_t sub_24564D8E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24564EB28;

  return sub_24564832C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24564D9A8(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24564EB28;

  return sub_24564C838(a1, a2, v6);
}

uint64_t sub_24564DABC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB18, &qword_2456617E0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24564EB28;

  return sub_24564A088(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_24564DC18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24564EB28;

  return sub_245643380(v2, v3, v4);
}

uint64_t sub_24564DCCC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24564EB28;

  return sub_245642D78(a1, a2, v6);
}

uint64_t objectdestroy_6Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24564DDC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24564EB28;

  return sub_245642080(v2, v3, v4);
}

uint64_t sub_24564DE78(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24564EB28;

  return sub_2456419A4(a1, a2, v6);
}

uint64_t objectdestroy_147Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24564DF68()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24564EB28;

  return sub_245641738(v2, v3, v4);
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24564E05C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24564EB28;

  return sub_24563EF38(a1, a2, v6);
}

unint64_t sub_24564E114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB48, &qword_2456618B0);
    v3 = sub_24565BDA4();
    v4 = a1 + 32;

    while (1)
    {
      sub_24563A91C(v4, &v13, &qword_27EE1AB50, &qword_2456618B8);
      v5 = v13;
      v6 = v14;
      result = sub_24564A830(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24564E29C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_24564E244()
{
  result = qword_27EE1A328;
  if (!qword_27EE1A328)
  {
    type metadata accessor for DCPresentmentError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1A328);
  }

  return result;
}

_OWORD *sub_24564E29C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24564E2AC(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24564EB28;

  return sub_24564C3D4(a1, a2, v6);
}

uint64_t sub_24564E374(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24564EB28;

  return sub_24564C5E0(a1, v4, v5, v6);
}

uint64_t objectdestroy_43Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t objectdestroy_55Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24564E508(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24564EB28;

  return sub_245648014(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24564E5D0(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24564EB28;

  return sub_24564C838(a1, a2, v6);
}

uint64_t objectdestroy_76Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 16, v5 | 7);
}

uint64_t sub_24564E7C4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB28, &qword_245661858) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24564EB28;

  return sub_2456499B8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t objectdestroy_80Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t get_enum_tag_for_layout_string_So20DCPresentmentSessionC10CoreIDCredE29ConnectionConfigurationStatus33_D095C425DEBB3644DD2C447614D1B7EDLLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24564E9C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24564EA1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_24564EA78(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_24564EBB0()
{
  [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB58, &qword_245661998);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_245661980;
  v1 = sub_245639ECC(0, &qword_27EE1AB60, 0x277CBEA60);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB68, &qword_2456619A0);
  *(v0 + 32) = v1;
  v2 = sub_245639ECC(0, &qword_27EE1AB20, off_278E81038);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE1AB70, &qword_2456619A8);
  *(v0 + 64) = v2;
  v3 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v4 = sub_24565BB84();

  [v3 initWithArray_];

  result = sub_24565BC54();
  __break(1u);
  return result;
}

uint64_t sub_24564EDC0(uint64_t a1)
{
  v2 = sub_24564F720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24564EDFC(uint64_t a1)
{
  v2 = sub_24564F720();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24564EE38()
{
  v1 = 0x4B5048656C707061;
  if (*v0 != 1)
  {
    v1 = 0x6F706F7250626577;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_24564EEA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_245651084(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24564EED0(uint64_t a1)
{
  v2 = sub_24564F678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24564EF0C(uint64_t a1)
{
  v2 = sub_24564F678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24564EF48(uint64_t a1)
{
  v2 = sub_24564F774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24564EF84(uint64_t a1)
{
  v2 = sub_24564F774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24564EFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_24565BED4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24565BED4();

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

uint64_t sub_24564F08C(uint64_t a1)
{
  v2 = sub_24564F6CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24564F0C8(uint64_t a1)
{
  v2 = sub_24564F6CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DCPresentmentResponseEncryptionParameters.Storage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB80, &qword_2456619B0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v27 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB88, &qword_2456619B8);
  v28 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v29 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB90, &qword_2456619C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB98, &unk_2456619C8);
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = v1[1];
  v34 = *v1;
  v35 = v13;
  v14 = v1[3];
  v27 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24564F678();
  sub_24565BFC4();
  v15 = (v14 >> 60) & 3;
  if (v15)
  {
    if (v15 == 1)
    {
      LOBYTE(v39) = 2;
      sub_24564F6CC();
      v16 = v30;
      v17 = v37;
      sub_24565BE44();
      v39 = v34;
      v40 = v35;
      v41 = 0;
      sub_245634D4C();
      v18 = v33;
      v19 = v38;
      sub_24565BEA4();
      if (!v19)
      {
        v39 = v27;
        v40 = v14 & 0xCFFFFFFFFFFFFFFFLL;
        v41 = 1;
        sub_24565BEA4();
      }

      (*(v32 + 8))(v16, v18);
      return (*(v36 + 8))(v12, v17);
    }

    else
    {
      LOBYTE(v39) = 0;
      sub_24564F774();
      v26 = v37;
      sub_24565BE44();
      (*(v7 + 8))(v9, v6);
      return (*(v36 + 8))(v12, v26);
    }
  }

  else
  {
    v20 = v28;
    LOBYTE(v39) = 1;
    sub_24564F720();
    v21 = v29;
    v22 = v37;
    sub_24565BE44();
    v39 = v34;
    v40 = v35;
    v41 = 0;
    sub_245634D4C();
    v23 = v31;
    v24 = v38;
    sub_24565BEA4();
    if (!v24)
    {
      v39 = v27;
      v41 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE1ABC0, &qword_24565FA20);
      sub_24564FF2C(&qword_27EE1A718, sub_245634D4C, MEMORY[0x277D83948]);
      sub_24565BEA4();
    }

    (*(v20 + 8))(v21, v23);
    return (*(v36 + 8))(v12, v22);
  }
}

unint64_t sub_24564F678()
{
  result = qword_27EE1ABA0;
  if (!qword_27EE1ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1ABA0);
  }

  return result;
}

unint64_t sub_24564F6CC()
{
  result = qword_27EE1ABA8;
  if (!qword_27EE1ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1ABA8);
  }

  return result;
}

unint64_t sub_24564F720()
{
  result = qword_27EE1ABB8;
  if (!qword_27EE1ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1ABB8);
  }

  return result;
}

unint64_t sub_24564F774()
{
  result = qword_27EE1ABD0;
  if (!qword_27EE1ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1ABD0);
  }

  return result;
}

uint64_t DCPresentmentResponseEncryptionParameters.Storage.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1ABD8, &qword_2456619D8);
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v40 = &v33 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1ABE0, &qword_2456619E0);
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1ABE8, &qword_2456619E8);
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE1ABF0, &unk_2456619F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24564F678();
  v14 = v41;
  sub_24565BFB4();
  if (!v14)
  {
    v41 = v6;
    v16 = v39;
    v15 = v40;
    v17 = sub_24565BE34();
    v18 = (2 * *(v17 + 16)) | 1;
    v47 = v17;
    v48 = v17 + 32;
    v49 = 0;
    v50 = v18;
    v19 = sub_24562A758();
    if (v19 == 3 || v49 != v50 >> 1)
    {
      v24 = sub_24565BD64();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1A460, &qword_24565F2A0);
      *v26 = &type metadata for DCPresentmentResponseEncryptionParameters.Storage;
      sub_24565BDC4();
      sub_24565BD54();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v10 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v19)
      {
        if (v19 == 1)
        {
          LOBYTE(v45) = 1;
          sub_24564F720();
          v20 = v5;
          sub_24565BDB4();
          v21 = v10;
          v22 = v38;
          LOBYTE(v43) = 0;
          sub_245635204();
          v23 = v35;
          sub_24565BE24();
          v30 = v45;
          v41 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE1ABC0, &qword_24565FA20);
          v51 = 1;
          sub_24564FF2C(&qword_27EE1A748, sub_245635204, MEMORY[0x277D83978]);
          sub_24565BE24();
          (*(v37 + 8))(v20, v23);
          (*(v21 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v31 = 0;
          v32 = v43;
        }

        else
        {
          LOBYTE(v45) = 2;
          sub_24564F6CC();
          sub_24565BDB4();
          v22 = v38;
          LOBYTE(v43) = 0;
          sub_245635204();
          v29 = v34;
          sub_24565BE24();
          v39 = v45;
          v41 = v46;
          v51 = 1;
          sub_24565BE24();
          (*(v36 + 8))(v15, v29);
          (*(v10 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v32 = v43;
          v31 = v44 | 0x1000000000000000;
          v30 = v39;
        }

        v28 = v41;
      }

      else
      {
        LOBYTE(v45) = 0;
        sub_24564F774();
        sub_24565BDB4();
        (*(v16 + 8))(v8, v41);
        (*(v10 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v30 = 0;
        v28 = 0;
        v32 = 0;
        v31 = 0x2000000000000000;
        v22 = v38;
      }

      *v22 = v30;
      v22[1] = v28;
      v22[2] = v32;
      v22[3] = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_24564FF2C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EE1ABC0, &qword_24565FA20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DCPresentmentResponseEncryptionParameters.storage.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___DCPresentmentResponseEncryptionParameters_storage);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return sub_245650030(v4, v5, v6, v7);
}

uint64_t sub_245650030(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = (a4 >> 60) & 3;
  if (v5 == 1)
  {
    sub_245636AC8(result, a2);

    return sub_245636AC8(a3, a4 & 0xCFFFFFFFFFFFFFFFLL);
  }

  else if (!v5)
  {
    sub_245636AC8(result, a2);
  }

  return result;
}

uint64_t DCPresentmentResponseEncryptionParameters.sessionTranscriptData.getter()
{
  v1 = (v0 + OBJC_IVAR___DCPresentmentResponseEncryptionParameters_storage);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  v5 = (v4 >> 60) & 3;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = v1[2];
      sub_245636AC8(v2, v3);
      sub_245636AC8(v6, v4 & 0xCFFFFFFFFFFFFFFFLL);
      sub_245636B1C(v6, v4 & 0xCFFFFFFFFFFFFFFFLL);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_245636AC8(*v1, v1[1]);
  }

  return v2;
}

void __swiftcall DCPresentmentResponseEncryptionParameters.init()(DCPresentmentResponseEncryptionParameters *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

char *DCPresentmentResponseEncryptionParameters.init(coder:)(void *a1)
{
  v2 = v1;
  sub_245639ECC(0, &qword_27EE1A9C0, 0x277CBEA90);
  v4 = sub_24565BCC4();
  if (v4)
  {
    v5 = v4;
    v6 = sub_24565BA74();
    v8 = v7;

    v9 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_245636AC8(v6, v8);
    v10 = sub_245639738(v6, v8);
    sub_245636B1C(v6, v8);
    sub_245650A34();
    sub_24565BCB4();
    if ((~(v20 & v22) & 0x3000000000000000) != 0)
    {
      v12 = [v2 init];
      v13 = &v12[OBJC_IVAR___DCPresentmentResponseEncryptionParameters_storage];
      swift_beginAccess();
      v17 = v13[1];
      v18 = *v13;
      v15 = v13[3];
      v16 = v13[2];
      *v13 = v19;
      v13[1] = v20;
      v13[2] = v21;
      v13[3] = v22;
      v14 = v12;
      sub_245650A88(v19, v20, v21, v22);
      sub_245650AA0(v18, v17, v16, v15);

      sub_245650B20(v19, v20, v21, v22);
      [v10 finishDecoding];

      sub_245636B1C(v6, v8);
      return v14;
    }

    [v10 finishDecoding];

    sub_245636B1C(v6, v8);
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_2456506C0(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v4 = (v1 + OBJC_IVAR___DCPresentmentResponseEncryptionParameters_storage);
  swift_beginAccess();
  v8 = *v4;
  v9 = v4[1];
  v10 = v4[2];
  v11 = v4[3];
  sub_245650030(*v4, v9, v10, v11);
  sub_2456511B8();
  sub_24565BCA4();
  sub_245650AA0(v8, v9, v10, v11);
  v5 = [v3 encodedData];
  if (v5)
  {
    v6 = v5;
    v7 = sub_24565BB14();
    [a1 encodeObject:v6 forKey:v7];

    [v3 finishEncoding];
  }

  else
  {
    __break(1u);
  }
}

id DCPresentmentResponseEncryptionParameters.init()()
{
  v1 = (v0 + OBJC_IVAR___DCPresentmentResponseEncryptionParameters_storage);
  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 0x2000000000000000;
  v3.super_class = DCPresentmentResponseEncryptionParameters;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t sub_245650A34()
{
  result = qword_27EE1AC10;
  if (!qword_27EE1AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AC10);
  }

  return result;
}

uint64_t sub_245650A88(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((~(a2 & a4) & 0x3000000000000000) != 0)
  {
    return sub_245650030(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_245650AA0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = (a4 >> 60) & 3;
  if (v5 == 1)
  {
    sub_245636B1C(result, a2);

    return sub_245636B1C(a3, a4 & 0xCFFFFFFFFFFFFFFFLL);
  }

  else if (!v5)
  {
    sub_245636B1C(result, a2);
  }

  return result;
}

uint64_t sub_245650B20(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((~(a2 & a4) & 0x3000000000000000) != 0)
  {
    return sub_245650AA0(result, a2, a3, a4);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So41DCPresentmentResponseEncryptionParametersC10CoreIDCredE7StorageO(uint64_t a1)
{
  if (((*(a1 + 24) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 24) >> 60) & 3;
  }
}

uint64_t sub_245650B58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 32))
  {
    return (*a1 + 14);
  }

  v3 = ((*(a1 + 24) >> 60) & 3 | (*(a1 + 8) >> 58) & 0xC) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_245650BB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 14;
    *(result + 8) = 0;
    if (a3 >= 0xE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((-a2 >> 2) & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3 | (4 * (-a2 & 0xF))) << 58) & 0x3000000000000000;
    }
  }

  return result;
}

void *sub_245650C20(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = result[3] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
    result[1] &= 0xCFFFFFFFFFFFFFFFLL;
    result[3] = v2;
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0x2000000000000000;
  }

  return result;
}

unint64_t sub_245650CC0()
{
  result = qword_27EE1AC88;
  if (!qword_27EE1AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AC88);
  }

  return result;
}

unint64_t sub_245650D18()
{
  result = qword_27EE1AC90;
  if (!qword_27EE1AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AC90);
  }

  return result;
}

unint64_t sub_245650D70()
{
  result = qword_27EE1AC98;
  if (!qword_27EE1AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AC98);
  }

  return result;
}

unint64_t sub_245650DC8()
{
  result = qword_27EE1ACA0;
  if (!qword_27EE1ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1ACA0);
  }

  return result;
}

unint64_t sub_245650E20()
{
  result = qword_27EE1ACA8;
  if (!qword_27EE1ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1ACA8);
  }

  return result;
}

unint64_t sub_245650E78()
{
  result = qword_27EE1ACB0;
  if (!qword_27EE1ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1ACB0);
  }

  return result;
}

unint64_t sub_245650ED0()
{
  result = qword_27EE1ACB8;
  if (!qword_27EE1ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1ACB8);
  }

  return result;
}

unint64_t sub_245650F28()
{
  result = qword_27EE1ACC0;
  if (!qword_27EE1ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1ACC0);
  }

  return result;
}

unint64_t sub_245650F80()
{
  result = qword_27EE1ACC8;
  if (!qword_27EE1ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1ACC8);
  }

  return result;
}

unint64_t sub_245650FD8()
{
  result = qword_27EE1ACD0;
  if (!qword_27EE1ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1ACD0);
  }

  return result;
}

unint64_t sub_245651030()
{
  result = qword_27EE1ACD8;
  if (!qword_27EE1ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1ACD8);
  }

  return result;
}

uint64_t sub_245651084(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000002456642F0 == a2 || (sub_24565BED4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4B5048656C707061 && a2 == 0xE900000000000045 || (sub_24565BED4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F706F7250626577 && a2 == 0xEF454B50486C6173)
  {

    return 2;
  }

  else
  {
    v5 = sub_24565BED4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_2456511B8()
{
  result = qword_27EE1ACE0;
  if (!qword_27EE1ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1ACE0);
  }

  return result;
}

void _s10CoreIDCred31XPCCredentialPresentmentRequestC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v4 = *(v1 + OBJC_IVAR____TtC10CoreIDCred31XPCCredentialPresentmentRequest_value + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CoreIDCred31XPCCredentialPresentmentRequest_value + 24);
  v6 = *(v1 + OBJC_IVAR____TtC10CoreIDCred31XPCCredentialPresentmentRequest_value + 32);
  v10 = *(v1 + OBJC_IVAR____TtC10CoreIDCred31XPCCredentialPresentmentRequest_value + 8);

  sub_24562BA74(v10, v4, v5, v6);
  sub_245651A38();

  sub_24565BCA4();

  sub_245634104(v10, v4, v5, v6);

  [v3 finishEncoding];
  v7 = [v3 encodedData];
  if (v7)
  {
    v8 = v7;
    v9 = sub_24565BB14();
    [a1 encodeObject:v8 forKey:v9];
  }

  else
  {
    __break(1u);
  }
}

id XPCCredentialPresentmentRequest.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = &v3[OBJC_IVAR____TtC10CoreIDCred31XPCCredentialPresentmentRequest_value];
  *v7 = *a1;
  *(v7 + 8) = *(a1 + 8);
  *(v7 + 3) = v4;
  v7[32] = v5;
  *(v7 + 5) = v6;
  v9.receiver = v3;
  v9.super_class = v1;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t XPCCredentialPresentmentRequest.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC10CoreIDCred31XPCCredentialPresentmentRequest_value;
  v3 = *(v1 + OBJC_IVAR____TtC10CoreIDCred31XPCCredentialPresentmentRequest_value);
  v4 = *(v1 + OBJC_IVAR____TtC10CoreIDCred31XPCCredentialPresentmentRequest_value + 8);
  v5 = *(v1 + OBJC_IVAR____TtC10CoreIDCred31XPCCredentialPresentmentRequest_value + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;

  sub_24562BA74(v4, v5, v6, v7);
}

id XPCCredentialPresentmentRequest.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = &v1[OBJC_IVAR____TtC10CoreIDCred31XPCCredentialPresentmentRequest_value];
  *v7 = *a1;
  *(v7 + 8) = *(a1 + 8);
  *(v7 + 3) = v4;
  v7[32] = v5;
  *(v7 + 5) = v6;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id XPCCredentialPresentmentRequest.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_245651810(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id XPCCredentialPresentmentRequest.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_245651810(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id XPCCredentialPresentmentRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCCredentialPresentmentRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_245651810(void *a1)
{
  sub_245651ADC();
  v2 = sub_24565BCC4();
  if (v2)
  {
    v3 = v2;
    v4 = sub_24565BA74();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_245636AC8(v4, v6);
    v8 = sub_245639738(v4, v6);
    sub_245636B1C(v4, v6);
    if (v8)
    {
      sub_2456519E0();
      sub_24565BCB4();
      v10 = v21;
      v12 = v22;
      v11 = v23;
      v13 = v24;
      if (v20)
      {
        v18 = v25;
        v14 = type metadata accessor for XPCCredentialPresentmentRequest();
        v15 = objc_allocWithZone(v14);
        v16 = &v15[OBJC_IVAR____TtC10CoreIDCred31XPCCredentialPresentmentRequest_value];
        *v16 = v20;
        *(v16 + 1) = v10;
        *(v16 + 2) = v12;
        *(v16 + 3) = v11;
        v16[32] = v13 & 1;
        *(v16 + 5) = v18;
        v19.receiver = v15;
        v19.super_class = v14;
        v17 = objc_msgSendSuper2(&v19, sel_init);
        [v8 finishDecoding];

        sub_245636B1C(v4, v6);
        return v17;
      }

      sub_245651B28(0, v21, v22, v23, v24, v25);
      [v8 finishDecoding];
    }

    sub_245636B1C(v4, v6);
  }

  else
  {
  }

  return 0;
}

unint64_t sub_2456519E0()
{
  result = qword_27EE1ACF8;
  if (!qword_27EE1ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1ACF8);
  }

  return result;
}

unint64_t sub_245651A38()
{
  result = qword_27EE1AD00;
  if (!qword_27EE1AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AD00);
  }

  return result;
}

unint64_t sub_245651ADC()
{
  result = qword_27EE1A9C0;
  if (!qword_27EE1A9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE1A9C0);
  }

  return result;
}

uint64_t sub_245651B28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (result)
  {

    sub_245634104(a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_245651BD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_245651C18(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_245651C8C()
{
  v1 = *v0;
  sub_24565BF74();
  MEMORY[0x245D6CFC0](qword_245662250[v1]);
  return sub_24565BFA4();
}

uint64_t sub_245651D14()
{
  v1 = *v0;
  sub_24565BF74();
  MEMORY[0x245D6CFC0](qword_245662250[v1]);
  return sub_24565BFA4();
}

uint64_t sub_245651D60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2456528D4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_245651DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x277D84F98];
  v24 = MEMORY[0x277D84F98];
  v8 = sub_24565BB24();
  v10 = v9;
  v23 = MEMORY[0x277D837D0];
  *&v22 = a2;
  *(&v22 + 1) = a3;
  sub_24564E29C(&v22, v21);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_245652574(v21, v8, v10, isUniquelyReferenced_nonNull_native);

  v12 = v7;
  v24 = v7;
  v13 = sub_24565BB24();
  v15 = v13;
  v16 = v14;
  if (a4)
  {
    swift_getErrorValue();
    v23 = v20;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_0);
    sub_24564E29C(&v22, v21);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_245652574(v21, v15, v16, v18);

    return v12;
  }

  else
  {
    sub_245652068(v13, v14, &v22);

    sub_245638A1C(&v22);
    return v24;
  }
}

uint64_t sub_245651F6C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_245652AD4(a2);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_245651F98(uint64_t a1)
{
  v2 = sub_245652014();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_245651FD4(uint64_t a1)
{
  v2 = sub_245652014();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_245652014()
{
  result = qword_27EE1AD08;
  if (!qword_27EE1AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AD08);
  }

  return result;
}

double sub_245652068@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_24564A830(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_245652730();
      v10 = v12;
    }

    sub_24564E29C((*(v10 + 56) + 32 * v8), a3);
    sub_2456523C4(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_24565210C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB48, &qword_2456618B0);
  v33 = v4;
  result = sub_24565BD94();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_24564E29C(v24, v34);
      }

      else
      {
        sub_24564CDB4(v24, v34);
      }

      sub_24565BF74();
      sub_24565BB54();
      result = sub_24565BFA4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_24564E29C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2456523C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24565BD04() + 1) & ~v5;
    do
    {
      sub_24565BF74();

      sub_24565BB54();
      v10 = sub_24565BFA4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_245652574(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24564A830(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_245652730();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24565210C(v16, a4 & 1);
    v11 = sub_24564A830(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_24565BF14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_24564E29C(a1, v22);
  }

  else
  {
    sub_2456526C4(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_2456526C4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24564E29C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_245652730()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB48, &qword_2456618B0);
  v2 = *v0;
  v3 = sub_24565BD84();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_24564CDB4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24564E29C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2456528D4(uint64_t a1)
{
  if (a1 > -26002)
  {
    if (a1 <= -12085)
    {
      if (a1 <= -15033)
      {
        if (a1 == -26001)
        {
          return 15;
        }

        if (a1 == -18084)
        {
          return 9;
        }
      }

      else
      {
        switch(a1)
        {
          case -15032:
            return 8;
          case -15009:
            return 7;
          case -12193:
            return 6;
        }
      }
    }

    else if (a1 > -1202)
    {
      switch(a1)
      {
        case -1:
          return 0;
        case -4:
          return 1;
        case -1201:
          return 2;
      }
    }

    else
    {
      switch(a1)
      {
        case -12084:
          return 5;
        case -12057:
          return 4;
        case -1302:
          return 3;
      }
    }

    return 22;
  }

  if (a1 <= -26044)
  {
    if (a1 <= -31004)
    {
      if (a1 == -31005)
      {
        return 14;
      }

      if (a1 == -31004)
      {
        return 13;
      }
    }

    else
    {
      switch(a1)
      {
        case -31003:
          return 12;
        case -31002:
          return 11;
        case -31001:
          return 10;
      }
    }

    return 22;
  }

  if (a1 > -26041)
  {
    switch(a1)
    {
      case -26040:
        return 18;
      case -26039:
        return 17;
      case -26003:
        return 16;
    }

    return 22;
  }

  if (a1 == -26043)
  {
    return 21;
  }

  if (a1 == -26042)
  {
    return 20;
  }

  return 19;
}

uint64_t sub_245652AD4(void *a1)
{
  v2 = [a1 domain];
  v3 = sub_24565BB24();
  v5 = v4;

  if (v3 == 0x726F727245504944 && v5 == 0xE800000000000000)
  {
  }

  else
  {
    v7 = sub_24565BED4();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = sub_2456528D4([a1 code]);
  if (v8 == 22)
  {
    return 0;
  }

  v10 = v8;
  v11 = [a1 userInfo];
  v12 = sub_24565BAD4();

  v13 = sub_24565BB24();
  if (!*(v12 + 16))
  {

    goto LABEL_16;
  }

  v15 = sub_24564A830(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_16:

    v18 = 0;
    goto LABEL_17;
  }

  sub_24564CDB4(*(v12 + 56) + 32 * v15, v28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAD0, &qword_2456615E0);
  if (swift_dynamicCast())
  {
    v18 = v27;
  }

  else
  {
    v18 = 0;
  }

LABEL_17:
  v19 = v18;
  v20 = [a1 userInfo];
  v21 = sub_24565BAD4();

  v22 = sub_24565BB24();
  if (!*(v21 + 16))
  {

    goto LABEL_21;
  }

  v24 = sub_24564A830(v22, v23);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  sub_24564CDB4(*(v21 + 56) + 32 * v24, v28);

  swift_dynamicCast();
LABEL_22:

  return v10;
}

uint64_t getEnumTagSinglePayload for DIPError.Code(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DIPError.Code(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}