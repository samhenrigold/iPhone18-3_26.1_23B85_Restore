uint64_t sub_255DCD438@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  RemoteStateStore.subscript.getter(a1, a2, &v6);
  v4 = v6;
  if ((~v6 & 0xF000000000000007) != 0)
  {
  }

  result = sub_255D5C324(v4);
  *a3 = v4;
  return result;
}

void *sub_255DCD498(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_255DCD4B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_255DCD4E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  sub_255D5C30C(*a1);

  return sub_255DF2888(v8, a5, a6);
}

uint64_t sub_255DCD540(uint64_t *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *a1;
  sub_255D5C30C(*a1);

  return sub_255DF2888(v4, v2, v3);
}

uint64_t sub_255DCD59C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for SubReference(255, result, *(a1 + 24), v3);
    sub_255E3A8A8();
    result = swift_getTupleTypeMetadata2();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_255DCD648(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 24;
  if (*(v3 + 64) > 0x18uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_255DCD760(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x18)
  {
    v5 = 24;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t get_enum_tag_for_layout_string_6LiftUI18ReferenceableErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
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

uint64_t sub_255DCD958(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255DCD994(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_255DCD9E0(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_255DCDA18()
{
  result = qword_27F7E8248;
  if (!qword_27F7E8248)
  {
    result = swift_getWitnessTable(byte_255E5410C, &type metadata for ReferenceCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8248);
  }

  return result;
}

unint64_t sub_255DCDA70()
{
  result = qword_27F7E8250;
  if (!qword_27F7E8250)
  {
    result = swift_getWitnessTable(aO_0, &type metadata for ReferenceCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8250);
  }

  return result;
}

unint64_t sub_255DCDAC8()
{
  result = qword_27F7E8258;
  if (!qword_27F7E8258)
  {
    result = swift_getWitnessTable(aMkT, &type metadata for ReferenceCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8258);
  }

  return result;
}

unint64_t sub_255DCDB1C(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255DCDB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  RemoteStateStore.subscript.getter(a2, a3, &v6);
  v3 = v6;
  if ((~v6 & 0xF000000000000007) != 0 && (, sub_255D5C324(v3), v3 >> 61 == 3))
  {
    v4 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_255D5C324(v3);
    return v4;
  }

  else
  {
    sub_255D5C324(v3);
    return 2;
  }
}

uint64_t sub_255DCDC30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_255D3EA0C();
    sub_255E3ACB8();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    *a2 = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255DCDD20(uint64_t a1)
{
  result = sub_255DCDD48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DCDD48()
{
  result = qword_27F7E8260;
  if (!qword_27F7E8260)
  {
    result = swift_getWitnessTable(byte_255E54404, &type metadata for IdentifierModifier, v0, v1);
    atomic_store(result, &qword_27F7E8260);
  }

  return result;
}

uint64_t sub_255DCDDAC@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  sub_255D3E5A8(*v3, v10, v11, v12);
  StringResolvable.resolved(with:)(a2);
  if (v4)
  {
  }

  sub_255D38060(v9, v10, v11, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D6EEE8();
  a3[3] = swift_getOpaqueTypeMetadata2();
  a3[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E399F8();
}

uint64_t sub_255DCDF20()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255DCDF84(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255DCDFD0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_255E3AB48();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_255DCE050@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255DCE0A8(uint64_t a1)
{
  v2 = sub_255DCE34C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DCE0E4(uint64_t a1)
{
  v2 = sub_255DCE34C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DCE120@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8270, &qword_255E546D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DCE34C();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255D3EA0C();
    sub_255E3ABC8();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255DCE2D0(uint64_t a1)
{
  result = sub_255DCE2F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DCE2F8()
{
  result = qword_27F7E8268;
  if (!qword_27F7E8268)
  {
    result = swift_getWitnessTable(byte_255E54688, &type metadata for NavigationTitleModifier, v0, v1);
    atomic_store(result, &qword_27F7E8268);
  }

  return result;
}

unint64_t sub_255DCE34C()
{
  result = qword_27F7E8278;
  if (!qword_27F7E8278)
  {
    result = swift_getWitnessTable(aUn, &type metadata for NavigationTitleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8278);
  }

  return result;
}

unint64_t sub_255DCE3B4()
{
  result = qword_27F7E8280;
  if (!qword_27F7E8280)
  {
    result = swift_getWitnessTable(byte_255E547AC, &type metadata for NavigationTitleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8280);
  }

  return result;
}

unint64_t sub_255DCE40C()
{
  result = qword_27F7E8288;
  if (!qword_27F7E8288)
  {
    result = swift_getWitnessTable(byte_255E546E4, &type metadata for NavigationTitleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8288);
  }

  return result;
}

unint64_t sub_255DCE464()
{
  result = qword_27F7E8290;
  if (!qword_27F7E8290)
  {
    result = swift_getWitnessTable(byte_255E5470C, &type metadata for NavigationTitleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8290);
  }

  return result;
}

uint64_t sub_255DCE4C8@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_255DDF1BC(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a3[3] = swift_getOpaqueTypeMetadata2();
    a3[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_255E39B38();
  }

  return result;
}

unint64_t sub_255DCE5B0(uint64_t a1)
{
  result = sub_255DCE5D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DCE5D8()
{
  result = qword_27F7E8298;
  if (!qword_27F7E8298)
  {
    result = swift_getWitnessTable(byte_255E54944, &type metadata for InteractiveDismissDisabledModifier, v0, v1);
    atomic_store(result, &qword_27F7E8298);
  }

  return result;
}

uint64_t sub_255DCE62C(uint64_t *a1, int a2)
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

uint64_t sub_255DCE674(uint64_t result, int a2, int a3)
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

uint64_t sub_255DCE6C4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = sub_255E1AAC0(a2);
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  if (v12)
  {
    v15 = a4;
  }

  else
  {
    v15 = a5;
  }

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = sub_255D48C6C(v16);

  View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v17, a2, a3, v14, v13, a6);
}

uint64_t sub_255DCE79C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1852139636;
  if (v2 != 1)
  {
    v3 = 1702063205;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6F697469646E6F63;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE90000000000006ELL;
  }

  v6 = 1852139636;
  if (*a2 != 1)
  {
    v6 = 1702063205;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6F697469646E6F63;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE90000000000006ELL;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255DCE880()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DCE918(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255DCE99C(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255DCEA30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255DCF0B4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255DCEA60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006ELL;
  v4 = 1852139636;
  if (v2 != 1)
  {
    v4 = 1702063205;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6F697469646E6F63;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_255DCEAB4()
{
  v1 = 1852139636;
  if (*v0 != 1)
  {
    v1 = 1702063205;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F697469646E6F63;
  }
}

unint64_t sub_255DCEB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255DCF0B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255DCEB2C(uint64_t a1)
{
  v2 = sub_255DCEEF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DCEB68(uint64_t a1)
{
  v2 = sub_255DCEEF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DCEBC4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_255DCEC70(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

unint64_t sub_255DCEBF4(uint64_t a1)
{
  result = sub_255DCEC1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DCEC1C()
{
  result = qword_27F7E82A0;
  if (!qword_27F7E82A0)
  {
    result = swift_getWitnessTable(aXJ, &type metadata for IfModifier, v0, v1);
    atomic_store(result, &qword_27F7E82A0);
  }

  return result;
}

uint64_t sub_255DCEC70(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E82A8, &qword_255E54A10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DCEEF0();
  sub_255E3AE28();
  type metadata accessor for Condition();
  v9 = 0;
  sub_255DCEF44();
  sub_255E3ABC8();
  v7 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61C0, &qword_255E3BBE8);
  v9 = 1;
  sub_255D3CF34();
  sub_255E3ABA8();
  v9 = 2;
  sub_255E3ABA8();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_255DCEEF0()
{
  result = qword_27F7E82B0;
  if (!qword_27F7E82B0)
  {
    result = swift_getWitnessTable(byte_255E54B14, &type metadata for IfModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E82B0);
  }

  return result;
}

unint64_t sub_255DCEF44()
{
  result = qword_27F7E7188;
  if (!qword_27F7E7188)
  {
    v3 = type metadata accessor for Condition();
    result = swift_getWitnessTable(byte_255E5C04C, v3, v0, v1);
    atomic_store(result, &qword_27F7E7188);
  }

  return result;
}

unint64_t sub_255DCEFB0()
{
  result = qword_27F7E82B8;
  if (!qword_27F7E82B8)
  {
    result = swift_getWitnessTable(byte_255E54AEC, &type metadata for IfModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E82B8);
  }

  return result;
}

unint64_t sub_255DCF008()
{
  result = qword_27F7E82C0;
  if (!qword_27F7E82C0)
  {
    result = swift_getWitnessTable(aE_6, &type metadata for IfModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E82C0);
  }

  return result;
}

unint64_t sub_255DCF060()
{
  result = qword_27F7E82C8;
  if (!qword_27F7E82C8)
  {
    result = swift_getWitnessTable(byte_255E54A4C, &type metadata for IfModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E82C8);
  }

  return result;
}

unint64_t sub_255DCF0B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t RemoteLoader.status.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_255DD7710(&qword_27F7E5F18, type metadata accessor for RemoteLoader, protocol conformance descriptor for RemoteLoader);
  sub_255E38618();

  swift_beginAccess();
  return sub_255D38004(v1 + 16, a1);
}

uint64_t RemoteLoader.setContentRegistry(_:)(void *a1)
{
  v2 = sub_255E3AAE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27F7E5E88 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27F8152F0);
  (*(v3 + 16))(v5, v6, v2);
  v11[3] = type metadata accessor for ContentRegistry();
  v11[0] = a1;
  v7 = a1;
  v8 = sub_255E38428();
  sub_255DCF60C(v11, v5);
  return v8(v10, 0);
}

uint64_t RemoteLoader.reload(content:showLoading:reloadtype:)(uint64_t a1, char a2, char *a3)
{
  v7 = type metadata accessor for RemoteContent(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v20 - v11;
  v13 = *a3;
  *(v3 + 120) = 1;
  if (*(v3 + 144))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5FC0, &unk_255E48660);
    sub_255E3A788();
  }

  if (a2)
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    v22 = 2;
    sub_255DD0A2C(v20);
    sub_255D38CA8(v20);
  }

  v14 = sub_255E3A778();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_255DD6D20(a1, v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_255DD6D84(v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = v3;
  *(v17 + 8) = v13;

  v18 = sub_255DD3B94(0, 0, v12, &unk_255E54BA8, v16);
  sub_255D395E4(v12, &qword_27F7E6A70, &unk_255E559E0);
  *(v3 + 144) = v18;
}

uint64_t View.remoteLoader(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_255E398D8();
}

uint64_t sub_255DCF60C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_255D31B4C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_255D81CD0(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_255E3AAE8();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_255D395E4(a1, &qword_27F7E8350, &unk_255E54F90);
    sub_255D807F4(a2, v9);
    v7 = sub_255E3AAE8();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_255D395E4(v9, &qword_27F7E8350, &unk_255E54F90);
  }

  return result;
}

uint64_t sub_255DCF728(uint64_t a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8328, &unk_255E54EC8);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8340, &qword_255E54F40);
  MEMORY[0x28223BE20](v55);
  v54 = &v45 - v3;
  v4 = sub_255E3AAE8();
  v58 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8318, &qword_255E54EB8);
  v7 = MEMORY[0x28223BE20](v52);
  v51 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v45 - v9;
  v59 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7530, &unk_255E54F50);
    v10 = sub_255E3AB28();
  }

  else
  {
    v10 = MEMORY[0x277D84F98];
  }

  v11 = v59 + 64;
  v12 = 1 << *(v59 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v59 + 64);
  v15 = (v12 + 63) >> 6;
  v48 = v58 + 16;
  v61 = v58 + 32;
  v16 = v10 + 64;

  v18 = 0;
  v46 = v11;
  v47 = v15;
  v53 = v6;
  v49 = v10;
  while (v14)
  {
LABEL_15:
    v21 = __clz(__rbit64(v14)) | (v18 << 6);
    v22 = v58;
    v23 = v59;
    v24 = *(v59 + 48);
    v60 = *(v58 + 72);
    v25 = v50;
    (*(v58 + 16))(v50, v24 + v60 * v21, v4);
    v26 = *(v23 + 56) + 32 * v21;
    v27 = v52;
    sub_255D3951C(v26, v25 + *(v52 + 48));
    v28 = v51;
    sub_255D9B71C(v25, v51, &qword_27F7E8318, &qword_255E54EB8);
    v29 = *(v27 + 48);
    v30 = *(v57 + 48);
    v31 = *(v22 + 32);
    v32 = v4;
    v33 = v56;
    v31(v56, v28, v32);
    sub_255D31B4C((v28 + v29), v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8330, &qword_255E54ED8);
    swift_dynamicCast();
    v34 = v54;
    v35 = *(v55 + 48);
    v31(v54, v33, v32);
    v36 = &v33[v30];
    v4 = v32;
    sub_255D31B4C(v36, &v34[v35]);
    v37 = v53;
    v31(v53, v34, v32);
    sub_255D31B4C(&v34[v35], v62);
    v10 = v49;
    result = sub_255E3A478();
    v38 = -1 << *(v10 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v16 + 8 * (v39 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v38) >> 6;
      v15 = v47;
      while (++v40 != v42 || (v41 & 1) == 0)
      {
        v43 = v40 == v42;
        if (v40 == v42)
        {
          v40 = 0;
        }

        v41 |= v43;
        v44 = *(v16 + 8 * v40);
        if (v44 != -1)
        {
          v19 = __clz(__rbit64(~v44)) + (v40 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v19 = __clz(__rbit64((-1 << v39) & ~*(v16 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    v15 = v47;
LABEL_9:
    v14 &= v14 - 1;
    *(v16 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v31((*(v10 + 48) + v19 * v60), v37, v4);
    result = sub_255D31B4C(v62, (*(v10 + 56) + 32 * v19));
    ++*(v10 + 16);
    v11 = v46;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v20);
    ++v18;
    if (v14)
    {
      v18 = v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_255DCFC64(uint64_t a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8318, &qword_255E54EB8);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8320, &qword_255E54EC0);
  MEMORY[0x28223BE20](v55);
  v54 = &v45 - v3;
  v4 = sub_255E3AAE8();
  v58 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8328, &unk_255E54EC8);
  v7 = MEMORY[0x28223BE20](v52);
  v51 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v45 - v9;
  v59 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7550, &qword_255E48B40);
    v10 = sub_255E3AB28();
  }

  else
  {
    v10 = MEMORY[0x277D84F98];
  }

  v11 = v59 + 64;
  v12 = 1 << *(v59 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v59 + 64);
  v15 = (v12 + 63) >> 6;
  v48 = v58 + 16;
  v61 = v58 + 32;
  v16 = v10 + 64;

  v18 = 0;
  v46 = v11;
  v47 = v15;
  v53 = v6;
  v49 = v10;
  while (v14)
  {
LABEL_15:
    v21 = __clz(__rbit64(v14)) | (v18 << 6);
    v22 = v58;
    v23 = v59;
    v24 = *(v59 + 48);
    v60 = *(v58 + 72);
    v25 = v50;
    (*(v58 + 16))(v50, v24 + v60 * v21, v4);
    v26 = *(v23 + 56) + 32 * v21;
    v27 = v52;
    sub_255D3951C(v26, v25 + *(v52 + 48));
    v28 = v51;
    sub_255D9B71C(v25, v51, &qword_27F7E8328, &unk_255E54EC8);
    v29 = *(v27 + 48);
    v30 = *(v57 + 48);
    v31 = *(v22 + 32);
    v32 = v4;
    v33 = v56;
    v31(v56, v28, v32);
    sub_255D31B4C((v28 + v29), v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8330, &qword_255E54ED8);
    swift_dynamicCast();
    v34 = v54;
    v35 = *(v55 + 48);
    v31(v54, v33, v32);
    v36 = &v33[v30];
    v4 = v32;
    sub_255D31B4C(v36, &v34[v35]);
    v37 = v53;
    v31(v53, v34, v32);
    sub_255D31B4C(&v34[v35], v62);
    v10 = v49;
    result = sub_255E3A478();
    v38 = -1 << *(v10 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v16 + 8 * (v39 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v38) >> 6;
      v15 = v47;
      while (++v40 != v42 || (v41 & 1) == 0)
      {
        v43 = v40 == v42;
        if (v40 == v42)
        {
          v40 = 0;
        }

        v41 |= v43;
        v44 = *(v16 + 8 * v40);
        if (v44 != -1)
        {
          v19 = __clz(__rbit64(~v44)) + (v40 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v19 = __clz(__rbit64((-1 << v39) & ~*(v16 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    v15 = v47;
LABEL_9:
    v14 &= v14 - 1;
    *(v16 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v31((*(v10 + 48) + v19 * v60), v37, v4);
    result = sub_255D31B4C(v62, (*(v10 + 56) + 32 * v19));
    ++*(v10 + 16);
    v11 = v46;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v20);
    ++v18;
    if (v14)
    {
      v18 = v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

LiftUI::ReloadType_optional __swiftcall ReloadType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255E3AB48();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ReloadType.rawValue.getter()
{
  v1 = 2003134838;
  if (*v0 != 1)
  {
    v1 = 0x44646E4177656976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_255DD0250(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 2003134838;
  if (v2 != 1)
  {
    v5 = 0x44646E4177656976;
    v4 = 0xEB00000000617461;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1635017060;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 2003134838;
  if (*a2 != 1)
  {
    v8 = 0x44646E4177656976;
    v3 = 0xEB00000000617461;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1635017060;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255DD0348()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DD03E4(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255DD046C(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255DD0510(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 2003134838;
  if (v2 != 1)
  {
    v5 = 0x44646E4177656976;
    v4 = 0xEB00000000617461;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1635017060;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255DD0568()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8310, &qword_255E54EB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_255E3AAE8();
  __swift_allocate_value_buffer(v3, qword_27F8152A8);
  v4 = __swift_project_value_buffer(v3, qword_27F8152A8);
  sub_255E3AAD8();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_255DD0698()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8310, &qword_255E54EB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_255E3AAE8();
  __swift_allocate_value_buffer(v3, qword_27F8152C0);
  v4 = __swift_project_value_buffer(v3, qword_27F8152C0);
  sub_255E3AAD8();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_255DD07CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_255DD76B8(a2, a1 + 16);
  return swift_endAccess();
}

uint64_t sub_255DD0838()
{
  v1 = sub_255E3AAE8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 56) = 2;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  *(v0 + 104) = -1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 136) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 144) = 0;
  sub_255E38628();
  sub_255E38468();
  swift_allocObject();
  *(v0 + 152) = sub_255E38458();
  if (qword_27F7E5E68 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v1, qword_27F8152C0);
  (*(v2 + 16))(v4, v5, v1);
  v6 = type metadata accessor for AnyWeakRemoteLoader();
  v7 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v11[3] = v6;
  v11[0] = v7;
  v8 = sub_255E38428();
  sub_255DCF60C(v11, v4);
  v8(v10, 0);
  return v0;
}

uint64_t sub_255DD0A2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_255E3A3E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_255DA5ED4();
  *v7 = sub_255E3A878();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_255E3A3F8();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    sub_255D38004(a1, &v13);
    if (v16 == 2 && (v10 = vorrq_s8(v14, v15), !(*&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | v13)))
    {
      sub_255D38CA8(&v13);
    }

    else
    {
      sub_255D38CA8(&v13);
      sub_255D38004(a1, &v13);
      swift_beginAccess();
      sub_255DD7648(&v13, v2 + 64);
      swift_endAccess();
    }

    sub_255D38004(a1, &v13);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12[-2] = v2;
    v12[-1] = &v13;
    v12[1] = v2;
    sub_255DD7710(&qword_27F7E5F18, type metadata accessor for RemoteLoader, protocol conformance descriptor for RemoteLoader);
    sub_255E38608();

    return sub_255D38CA8(&v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_255DD0CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 63) = a6;
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
  *(v6 + 88) = swift_task_alloc();
  v7 = sub_255E38588();
  *(v6 + 96) = v7;
  *(v6 + 104) = *(v7 - 8);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = type metadata accessor for RemoteContent(0);
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255DD0DDC, 0, 0);
}

uint64_t sub_255DD0DDC()
{
  sub_255DD6D20(*(v0 + 72), *(v0 + 136));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v24 = *(v0 + 136);
      v25 = *(v0 + 63);
      v27 = *v24;
      v26 = v24[1];
      *(v0 + 168) = v26;
      *(v0 + 61) = v25;
      v28 = swift_task_alloc();
      *(v0 + 176) = v28;
      *v28 = v0;
      v28[1] = sub_255DD1710;

      return sub_255DD2C5C(v27, v26, (v0 + 61));
    }

    else
    {
      v2 = *(v0 + 136);
      v3 = *(v0 + 63);
      v4 = *v2;
      *(v0 + 144) = *v2;
      v5 = v2[1];
      *(v0 + 152) = v5;
      *(v0 + 62) = v3;
      v6 = swift_task_alloc();
      *(v0 + 160) = v6;
      *v6 = v0;
      v6[1] = sub_255DD1580;

      return sub_255DD1E3C(v4, v5, (v0 + 62));
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    v8 = *(v0 + 136);
    v9 = *(v0 + 120);
    v10 = *(v0 + 96);
    v11 = *(v0 + 104);
    v12 = *(v0 + 63);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F00, &qword_255E3B920);
    v14 = *(v8 + *(v13 + 48));
    v15 = (v8 + *(v13 + 64));
    v16 = *v15;
    *(v0 + 184) = *v15;
    v17 = v15[1];
    *(v0 + 192) = v17;
    (*(v11 + 32))(v9, v8, v10);
    *(v0 + 59) = v14;
    *(v0 + 60) = v12;
    v18 = swift_task_alloc();
    *(v0 + 200) = v18;
    *v18 = v0;
    v18[1] = sub_255DD18B4;
    v19 = *(v0 + 120);
    v20 = (v0 + 59);
    v21 = v16;
    v22 = v17;
    v23 = (v0 + 60);
LABEL_8:

    return sub_255DD3164(v19, v20, v21, v22, v23);
  }

  v29 = *(v0 + 136);
  *(v0 + 208) = *v29;
  *(v0 + 216) = *(v29 + 8);
  *(v0 + 224) = *(v29 + 16);
  *(v0 + 328) = *(v29 + 24);
  v74 = *(v29 + 32);
  *(v0 + 232) = v74;
  v72 = *(v29 + 40);
  *(v0 + 240) = v72;
  v30 = *(v29 + 48);
  *(v0 + 248) = v30;
  v31 = *(v29 + 56);
  *(v0 + 329) = v31;
  v32 = *(v29 + 64);
  *(v0 + 256) = v32;
  v33 = *(v29 + 72);
  *(v0 + 264) = v33;
  v34 = *(v29 + 80);
  *(v0 + 272) = v34;
  v35 = *(v29 + 88);
  *(v0 + 330) = v35;
  v36 = *(v29 + 96);
  *(v0 + 280) = v36;
  StringResolvable.resolved(with:)(v36);
  v67 = v31;
  v68 = v35;
  v69 = v34;
  v70 = v32;
  v37 = *(v0 + 96);
  v38 = *(v0 + 104);
  v39 = *(v0 + 88);
  sub_255E38578();

  if ((*(v38 + 48))(v39, 1, v37) != 1)
  {
    (*(*(v0 + 104) + 32))(*(v0 + 112), *(v0 + 88), *(v0 + 96));
    if (v31 <= 0xFD)
    {
      sub_255D3E5A8(v74, v72, v30, v31);
      v56 = v70;
      v57 = v69;
      v58 = StringResolvable.resolved(with:)(v36);
      v60 = v59;
      sub_255D38060(v74, v72, v30, v67);
      v61._countAndFlagsBits = v58;
      v61._object = v60;
      HTTPRequestMethod.init(rawValue:)(v61);
      v55 = v74;
    }

    else
    {
      v55 = 8;
      v56 = v70;
      v57 = v69;
    }

    if (v68 == 255)
    {
      v64 = 0;
      v66 = 0xF000000000000000;
    }

    else
    {
      v62 = sub_255DDF580(v36, v56, v33, v57, v68 & 1);
      sub_255E38498();
      swift_allocObject();
      sub_255E38488();
      *(v0 + 64) = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
      sub_255D7B390();
      v64 = sub_255E38478();
      v66 = v65;
    }

    *(v0 + 288) = v64;
    *(v0 + 296) = v66;
    *(v0 + 57) = v55;
    *(v0 + 58) = *(v0 + 63);
    v63 = swift_task_alloc();
    *(v0 + 304) = v63;
    *v63 = v0;
    v63[1] = sub_255DD1A64;
    v19 = *(v0 + 112);
    v20 = (v0 + 57);
    v21 = v64;
    v22 = v66;
    v23 = (v0 + 58);
    goto LABEL_8;
  }

  sub_255D395E4(*(v0 + 88), &qword_27F7E6B28, &unk_255E48060);
  type metadata accessor for RemoteLoaderError(0);
  sub_255DD7710(&qword_27F7E73D8, type metadata accessor for RemoteLoaderError, byte_255E54FB4);
  v40 = swift_allocError();
  *(v0 + 312) = v40;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v41 = v40;
  if (sub_255E3A798())
  {

    v42 = *(v0 + 272);
    v44 = *(v0 + 256);
    v43 = *(v0 + 264);
    v46 = *(v0 + 240);
    v45 = *(v0 + 248);
    v47 = *(v0 + 232);
    v48 = *(v0 + 208);
    v73 = *(v0 + 216);
    v75 = *(v0 + 224);
    v49 = *(v0 + 330);
    v50 = *(v0 + 329);
    v71 = *(v0 + 328);

    sub_255D7B5DC(v44, v43, v42, v49);
    sub_255D64814(v47, v46, v45, v50);
    sub_255D38060(v48, v73, v75, v71);

    v51 = *(v0 + 8);

    return v51();
  }

  else
  {
    *(v0 + 16) = v40;
    *(v0 + 56) = 1;
    sub_255E3A758();
    v52 = v40;
    *(v0 + 320) = sub_255E3A748();
    v54 = sub_255E3A738();

    return MEMORY[0x2822009F8](sub_255DD1C90, v54, v53);
  }
}

uint64_t sub_255DD1580()
{

  return MEMORY[0x2822009F8](sub_255DD167C, 0, 0);
}

uint64_t sub_255DD167C()
{
  sub_255D37E60(v0[18], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_255DD1710()
{

  return MEMORY[0x2822009F8](sub_255DD1828, 0, 0);
}

uint64_t sub_255DD1828()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255DD18B4()
{

  return MEMORY[0x2822009F8](sub_255DD19B0, 0, 0);
}

uint64_t sub_255DD19B0()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  sub_255DD7758(v0[23], v0[24]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_255DD1A64()
{

  return MEMORY[0x2822009F8](sub_255DD1B60, 0, 0);
}

uint64_t sub_255DD1B60()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  sub_255DD7758(*(v0 + 288), *(v0 + 296));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v8 = *(v0 + 240);
  v7 = *(v0 + 248);
  v9 = *(v0 + 232);
  v10 = *(v0 + 208);
  v16 = *(v0 + 216);
  v17 = *(v0 + 224);
  v11 = *(v0 + 330);
  v12 = *(v0 + 329);
  v15 = *(v0 + 328);

  sub_255D7B5DC(v6, v5, v4, v11);
  sub_255D64814(v9, v8, v7, v12);
  sub_255D38060(v10, v16, v17, v15);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_255DD1C90()
{

  sub_255DD3E00(0, v0 + 16);
  sub_255D395E4(v0 + 16, &qword_27F7E82F0, &qword_255E54BE0);

  return MEMORY[0x2822009F8](sub_255DD1D20, 0, 0);
}

uint64_t sub_255DD1D20()
{
  v1 = *(v0 + 312);

  v2 = *(v0 + 272);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v7 = *(v0 + 232);
  v8 = *(v0 + 208);
  v14 = *(v0 + 216);
  v15 = *(v0 + 224);
  v9 = *(v0 + 330);
  v10 = *(v0 + 329);
  v13 = *(v0 + 328);

  sub_255D7B5DC(v4, v3, v2, v9);
  sub_255D64814(v7, v6, v5, v10);
  sub_255D38060(v8, v14, v15, v13);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_255DD1E3C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 792) = v3;
  *(v4 + 784) = a2;
  *(v4 + 776) = a1;
  sub_255E3A518();
  *(v4 + 800) = swift_task_alloc();
  *(v4 + 665) = *a3;

  return MEMORY[0x2822009F8](sub_255DD1EE0, 0, 0);
}

uint64_t sub_255DD1EE0(uint64_t a1)
{
  v36 = v1;
  if (sub_255E3A798())
  {
LABEL_2:

    v2 = *(v1 + 8);

    return v2();
  }

  *(v1 + 160) = 0;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 16) = 0u;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v4 = *(v1 + 784);
  v5 = *(v1 + 776);
  v6 = sub_255E386A8();
  __swift_project_value_buffer(v6, qword_27F8152D8);
  sub_255D37E0C(v5, v4);
  v7 = sub_255E38688();
  v8 = sub_255E3A868();
  sub_255D37E60(v5, v4);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v1 + 665);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35[0] = v11;
    *v10 = 136315394;
    v12 = 0xE400000000000000;
    v13 = 2003134838;
    if (v9 != 1)
    {
      v13 = 0x44646E4177656976;
      v12 = 0xEB00000000617461;
    }

    if (v9)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1635017060;
    }

    if (v9)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    v16 = sub_255D378C0(v14, v15, v35);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    sub_255E3A508();
    v17 = sub_255E3A4F8();
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v17 = 0xD000000000000014;
      v19 = 0x8000000255E65F50;
    }

    v20 = sub_255D378C0(v17, v19, v35);

    *(v10 + 14) = v20;
    _os_log_impl(&dword_255D2E000, v7, v8, "Loading type: %s JSON: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C4F9E0](v11, -1, -1);
    MEMORY[0x259C4F9E0](v10, -1, -1);
  }

  if (*(v1 + 665) == 1)
  {
    v21 = 0;
LABEL_22:
    *(v1 + 808) = v21;
    v22 = swift_task_alloc();
    *(v1 + 816) = v22;
    *v22 = v1;
    v22[1] = sub_255DD24AC;
    v23 = *(v1 + 784);
    v24 = *(v1 + 776);

    return sub_255DD4304(v1 + 168, v24, v23);
  }

  sub_255DD728C();
  sub_255E38418();
  v21 = *(v1 + 768);
  if (!v21)
  {
    v21 = sub_255DC53CC(MEMORY[0x277D84F90]);
  }

  if (*(v1 + 665))
  {
    goto LABEL_22;
  }

  *(v1 + 832) = v21;
  if (sub_255E3A798())
  {
    sub_255D395E4(v1 + 16, &qword_27F7E6C20, &qword_255E58D80);

    goto LABEL_2;
  }

  sub_255D3957C(v1 + 16, v1 + 472, &qword_27F7E6C20, &qword_255E58D80);
  if (*(v1 + 480))
  {
    v25 = *(v1 + 584);
    *(v1 + 416) = *(v1 + 568);
    *(v1 + 432) = v25;
    *(v1 + 448) = *(v1 + 600);
    *(v1 + 464) = *(v1 + 616);
    v26 = *(v1 + 520);
    *(v1 + 352) = *(v1 + 504);
    *(v1 + 368) = v26;
    v27 = *(v1 + 552);
    *(v1 + 384) = *(v1 + 536);
    *(v1 + 400) = v27;
    v28 = *(v1 + 488);
    *(v1 + 320) = *(v1 + 472);
    *(v1 + 336) = v28;
    *(v1 + 744) = &type metadata for ViewContent;
    *(v1 + 752) = sub_255D44794();
    v29 = swift_allocObject();
    *(v1 + 720) = v29;
    sub_255D4C170(v1 + 320, v29 + 16);
    *(v1 + 760) = 0;
    sub_255E3A758();
    *(v1 + 840) = sub_255E3A748();
    v30 = sub_255E3A738();
    v32 = v31;
    v33 = sub_255DD2824;
  }

  else
  {
    sub_255D395E4(v1 + 472, &qword_27F7E6C20, &qword_255E58D80);
    *(v1 + 672) = 0u;
    *(v1 + 688) = 0u;
    *(v1 + 704) = 0;
    *(v1 + 712) = -1;
    sub_255E3A758();
    *(v1 + 848) = sub_255E3A748();
    v30 = sub_255E3A738();
    v32 = v34;
    v33 = sub_255DD2940;
  }

  return MEMORY[0x2822009F8](v33, v30, v32);
}

uint64_t sub_255DD24AC()
{
  *(*v1 + 824) = v0;

  if (v0)
  {

    v2 = sub_255DD2B4C;
  }

  else
  {
    v2 = sub_255DD25C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_255DD25C8()
{
  sub_255D395E4(v0 + 16, &qword_27F7E6C20, &qword_255E58D80);
  v1 = *(v0 + 280);
  *(v0 + 112) = *(v0 + 264);
  *(v0 + 128) = v1;
  *(v0 + 144) = *(v0 + 296);
  *(v0 + 160) = *(v0 + 312);
  v2 = *(v0 + 216);
  *(v0 + 48) = *(v0 + 200);
  *(v0 + 64) = v2;
  v3 = *(v0 + 248);
  *(v0 + 80) = *(v0 + 232);
  *(v0 + 96) = v3;
  v4 = *(v0 + 184);
  *(v0 + 16) = *(v0 + 168);
  *(v0 + 32) = v4;
  *(v0 + 832) = *(v0 + 808);
  if (sub_255E3A798())
  {
    sub_255D395E4(v0 + 16, &qword_27F7E6C20, &qword_255E58D80);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    sub_255D3957C(v0 + 16, v0 + 472, &qword_27F7E6C20, &qword_255E58D80);
    if (*(v0 + 480))
    {
      v7 = *(v0 + 584);
      *(v0 + 416) = *(v0 + 568);
      *(v0 + 432) = v7;
      *(v0 + 448) = *(v0 + 600);
      *(v0 + 464) = *(v0 + 616);
      v8 = *(v0 + 520);
      *(v0 + 352) = *(v0 + 504);
      *(v0 + 368) = v8;
      v9 = *(v0 + 552);
      *(v0 + 384) = *(v0 + 536);
      *(v0 + 400) = v9;
      v10 = *(v0 + 488);
      *(v0 + 320) = *(v0 + 472);
      *(v0 + 336) = v10;
      *(v0 + 744) = &type metadata for ViewContent;
      *(v0 + 752) = sub_255D44794();
      v11 = swift_allocObject();
      *(v0 + 720) = v11;
      sub_255D4C170(v0 + 320, v11 + 16);
      *(v0 + 760) = 0;
      sub_255E3A758();
      *(v0 + 840) = sub_255E3A748();
      v12 = sub_255E3A738();
      v14 = v13;
      v15 = sub_255DD2824;
    }

    else
    {
      sub_255D395E4(v0 + 472, &qword_27F7E6C20, &qword_255E58D80);
      *(v0 + 672) = 0u;
      *(v0 + 688) = 0u;
      *(v0 + 704) = 0;
      *(v0 + 712) = -1;
      sub_255E3A758();
      *(v0 + 848) = sub_255E3A748();
      v12 = sub_255E3A738();
      v14 = v16;
      v15 = sub_255DD2940;
    }

    return MEMORY[0x2822009F8](v15, v12, v14);
  }
}

uint64_t sub_255DD2824()
{
  v1 = *(v0 + 832);

  sub_255DD3E00(v1, v0 + 720);

  sub_255D395E4(v0 + 720, &qword_27F7E82F0, &qword_255E54BE0);

  return MEMORY[0x2822009F8](sub_255DD28C0, 0, 0);
}

uint64_t sub_255DD28C0()
{
  sub_255D4C1A8(v0 + 320);
  sub_255D395E4(v0 + 16, &qword_27F7E6C20, &qword_255E58D80);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255DD2940()
{
  v1 = *(v0 + 832);

  sub_255DD3E00(v1, v0 + 672);

  sub_255D395E4(v0 + 672, &qword_27F7E82F0, &qword_255E54BE0);

  return MEMORY[0x2822009F8](sub_255DD29DC, 0, 0);
}

uint64_t sub_255DD29DC()
{
  sub_255D395E4(v0 + 16, &qword_27F7E6C20, &qword_255E58D80);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255DD2A54()
{

  sub_255DD3E00(0, v0 + 624);
  sub_255D395E4(v0 + 624, &qword_27F7E82F0, &qword_255E54BE0);

  return MEMORY[0x2822009F8](sub_255DD2AE4, 0, 0);
}

uint64_t sub_255DD2AE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255DD2B4C()
{
  sub_255D395E4(v0 + 16, &qword_27F7E6C20, &qword_255E58D80);
  v1 = *(v0 + 824);
  *(v0 + 856) = v1;
  if (sub_255E3A798())
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 624) = v1;
    *(v0 + 664) = 1;
    sub_255E3A758();
    v4 = v1;
    *(v0 + 864) = sub_255E3A748();
    v6 = sub_255E3A738();

    return MEMORY[0x2822009F8](sub_255DD2A54, v6, v5);
  }
}

uint64_t sub_255DD2C5C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 64) = a1;
  v6 = sub_255E3A518();
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 - 8);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 58) = *a3;

  return MEMORY[0x2822009F8](sub_255DD2D2C, 0, 0);
}

uint64_t sub_255DD2D2C(uint64_t a1)
{
  v3 = *(v1 + 96);
  v2 = *(v1 + 104);
  v4 = *(v1 + 88);
  sub_255E3A508();
  v5 = sub_255E3A4E8();
  v7 = v6;
  *(v1 + 112) = v6;
  (*(v3 + 8))(v2, v4);
  if (v7 >> 60 == 15)
  {
    if (sub_255E3A798())
    {

      v8 = *(v1 + 8);

      return v8();
    }

    else
    {
      type metadata accessor for RemoteLoaderError(0);
      sub_255DD7710(&qword_27F7E73D8, type metadata accessor for RemoteLoaderError, byte_255E54FB4);
      v12 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      *(v1 + 16) = v12;
      *(v1 + 56) = 1;
      sub_255E3A758();
      *(v1 + 136) = sub_255E3A748();
      v14 = sub_255E3A738();

      return MEMORY[0x2822009F8](sub_255DD30D4, v14, v13);
    }
  }

  else
  {
    v10 = *(v1 + 58);
    *(v1 + 120) = v5;
    *(v1 + 57) = v10;
    v11 = swift_task_alloc();
    *(v1 + 128) = v11;
    *v11 = v1;
    v11[1] = sub_255DD2F70;

    return sub_255DD1E3C(v5, v7, (v1 + 57));
  }
}

uint64_t sub_255DD2F70()
{

  return MEMORY[0x2822009F8](sub_255DD306C, 0, 0);
}

uint64_t sub_255DD306C()
{
  sub_255DD7758(v0[15], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_255DD30D4()
{

  sub_255DD3E00(0, v0 + 16);
  sub_255D395E4(v0 + 16, &qword_27F7E82F0, &qword_255E54BE0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255DD3164(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v6 + 80) = a4;
  *(v6 + 88) = v5;
  *(v6 + 64) = a1;
  *(v6 + 72) = a3;
  v9 = sub_255E38408();
  *(v6 + 96) = v9;
  *(v6 + 104) = *(v9 - 8);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 58) = *a2;
  *(v6 + 59) = *a5;

  return MEMORY[0x2822009F8](sub_255DD3248, 0, 0);
}

uint64_t sub_255DD3248()
{
  v17 = v0;
  v1 = *(v0 + 88);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v3 = *(v1 + 136);
    v4 = *(v0 + 64);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v4, ObjectType, v3);
    v12 = *(v0 + 58);
    if (v12 < 8)
    {
      sub_255E38388();
    }

    if (*(v0 + 80) >> 60 != 15)
    {
      sub_255D37E0C(*(v0 + 72), *(v0 + 80));
      sub_255E383E8();
    }

    v16[0] = *(v0 + 59);
    sub_255DE9A3C(v16);
    v15 = (*(v3 + 16) + **(v3 + 16));
    v13 = swift_task_alloc();
    *(v0 + 128) = v13;
    *v13 = v0;
    v13[1] = sub_255DD3644;
    v14 = *(v0 + 112);

    return v15(v14, ObjectType, v3);
  }

  else
  {
    type metadata accessor for RemoteLoaderError(0);
    sub_255DD7710(&qword_27F7E73D8, type metadata accessor for RemoteLoaderError, byte_255E54FB4);
    v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    *(v0 + 168) = v6;
    if (sub_255E3A798())
    {

      v7 = *(v0 + 8);

      return v7();
    }

    else
    {
      *(v0 + 16) = v6;
      *(v0 + 56) = 1;
      sub_255E3A758();
      v9 = v6;
      *(v0 + 176) = sub_255E3A748();
      v11 = sub_255E3A738();

      return MEMORY[0x2822009F8](sub_255DD3974, v11, v10);
    }
  }
}

uint64_t sub_255DD3644(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 136) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_255DD3A6C, 0, 0);
  }

  else
  {
    *(v6 + 57) = *(v6 + 59);
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v7 = swift_task_alloc();
    *(v6 + 160) = v7;
    *v7 = v6;
    v7[1] = sub_255DD37E0;

    return sub_255DD1E3C(a1, a2, (v6 + 57));
  }
}

uint64_t sub_255DD37E0()
{

  return MEMORY[0x2822009F8](sub_255DD38DC, 0, 0);
}

uint64_t sub_255DD38DC()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  sub_255D37E60(v0[19], v0[18]);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_255DD3974()
{

  sub_255DD3E00(0, v0 + 16);
  sub_255D395E4(v0 + 16, &qword_27F7E82F0, &qword_255E54BE0);

  return MEMORY[0x2822009F8](sub_255DD3A04, 0, 0);
}

uint64_t sub_255DD3A04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255DD3A6C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 136);
  *(v0 + 168) = v4;
  if (sub_255E3A798())
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 16) = v4;
    *(v0 + 56) = 1;
    sub_255E3A758();
    v7 = v4;
    *(v0 + 176) = sub_255E3A748();
    v9 = sub_255E3A738();

    return MEMORY[0x2822009F8](sub_255DD3974, v9, v8);
  }
}

uint64_t sub_255DD3B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_255D3957C(a3, v22 - v9, &qword_27F7E6A70, &unk_255E559E0);
  v11 = sub_255E3A778();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_255D395E4(v10, &qword_27F7E6A70, &unk_255E559E0);
  }

  else
  {
    sub_255E3A768();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_255E3A738();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_255E3A548() + 32;

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

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_255DD3E00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_255E3A3E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
LABEL_15:
    sub_255D3957C(a2, &v29, &qword_27F7E82F0, &qword_255E54BE0);
    if (v30[24] == 255)
    {
      sub_255D395E4(&v29, &qword_27F7E82F0, &qword_255E54BE0);
      swift_beginAccess();
      sub_255D3957C(v3 + 64, &v29, &qword_27F7E82F0, &qword_255E54BE0);
      if (v30[24] != 255)
      {
        v31 = v29;
        *v32 = *v30;
        *&v32[9] = *&v30[9];
        sub_255D38004(&v31, &v29);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v28[-2] = v3;
        v28[-1] = &v29;
        v28[1] = v3;
        sub_255DD7710(&qword_27F7E5F18, type metadata accessor for RemoteLoader, protocol conformance descriptor for RemoteLoader);
        sub_255E38608();

        sub_255D38CA8(&v31);
        v24 = &v29;
        return sub_255D38CA8(v24);
      }

      sub_255D395E4(&v29, &qword_27F7E82F0, &qword_255E54BE0);
      type metadata accessor for RemoteLoaderError(0);
      sub_255DD7710(&qword_27F7E73D8, type metadata accessor for RemoteLoaderError, byte_255E54FB4);
      v26 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      *&v31 = v26;
      v32[24] = 1;
      v27 = swift_getKeyPath();
      MEMORY[0x28223BE20](v27);
      v28[-2] = v3;
      v28[-1] = &v31;
      *&v29 = v3;
      sub_255DD7710(&qword_27F7E5F18, type metadata accessor for RemoteLoader, protocol conformance descriptor for RemoteLoader);
      sub_255E38608();
    }

    else
    {
      v31 = v29;
      *v32 = *v30;
      *&v32[9] = *&v30[9];
      sub_255DD0A2C(&v31);
    }

    v24 = &v31;
    return sub_255D38CA8(v24);
  }

  sub_255DA5ED4();
  *v9 = sub_255E3A878();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_255E3A3F8();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v28[0] = a2;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 64);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    while (v14)
    {
      v17 = v14;
LABEL_12:
      v14 = (v17 - 1) & v17;
      if (*(v3 + 112))
      {
        v19 = __clz(__rbit64(v17)) | (v16 << 6);
        v20 = *(*(a1 + 56) + 8 * v19);
        v21 = (*(a1 + 48) + 16 * v19);
        v23 = *v21;
        v22 = v21[1];

        sub_255DD5C54(v23, v22, v20);
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        a2 = v28[0];
        goto LABEL_15;
      }

      v17 = *(a1 + 64 + 8 * v18);
      ++v16;
      if (v17)
      {
        v16 = v18;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_255DD4304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[43] = a3;
  v4[44] = v3;
  v4[41] = a1;
  v4[42] = a2;
  v5 = sub_255E3AA08();
  v4[45] = v5;
  v4[46] = *(v5 - 8);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255DD43E0, 0, 0);
}

uint64_t sub_255DD43E0()
{
  v43 = v0;
  sub_255DD72E0();
  sub_255E38418();
  sub_255D3957C(v0 + 16, v0 + 168, &qword_27F7E6C20, &qword_255E58D80);
  if (*(v0 + 176))
  {
    v25 = *(v0 + 328);
    sub_255DD7334(v0 + 16);
    v26 = *(v0 + 184);
    *v25 = *(v0 + 168);
    *(v25 + 16) = v26;
    v27 = *(v0 + 248);
    v29 = *(v0 + 200);
    v28 = *(v0 + 216);
    *(v25 + 64) = *(v0 + 232);
    *(v25 + 80) = v27;
    *(v25 + 32) = v29;
    *(v25 + 48) = v28;
    v31 = *(v0 + 280);
    v30 = *(v0 + 296);
    v32 = *(v0 + 264);
    *(v25 + 144) = *(v0 + 312);
    *(v25 + 112) = v31;
    *(v25 + 128) = v30;
    *(v25 + 96) = v32;

    v33 = *(v0 + 8);
  }

  else
  {
    sub_255D395E4(v0 + 168, &qword_27F7E6C20, &qword_255E58D80);
    type metadata accessor for RemoteLoaderError(0);
    sub_255DD7710(&qword_27F7E73D8, type metadata accessor for RemoteLoaderError, byte_255E54FB4);
    v39 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_255DD7334(v0 + 16);
    *(v0 + 320) = v39;
    v1 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5FC0, &unk_255E48660);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 384);
      v2 = *(v0 + 392);
      v4 = *(v0 + 360);
      v5 = *(v0 + 368);

      (*(v5 + 32))(v3, v2, v4);
      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 376);
      v7 = *(v0 + 384);
      v8 = *(v0 + 360);
      v9 = *(v0 + 368);
      v10 = sub_255E386A8();
      __swift_project_value_buffer(v10, qword_27F8152D8);
      v11 = *(v9 + 16);
      v11(v6, v7, v8);
      v12 = sub_255E38688();
      v13 = sub_255E3A868();
      v14 = os_log_type_enabled(v12, v13);
      v16 = *(v0 + 368);
      v15 = *(v0 + 376);
      v17 = *(v0 + 360);
      if (v14)
      {
        v18 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v19 = v42;
        *v18 = 136315138;
        v40 = sub_255DD4840();
        v41 = v11;
        v21 = v20;
        v22 = v17;
        v23 = *(v16 + 8);
        v23(v15, v22);
        v24 = sub_255D378C0(v40, v21, &v42);
        v11 = v41;

        *(v18 + 4) = v24;
        _os_log_impl(&dword_255D2E000, v12, v13, "Error decoding view: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x259C4F9E0](v19, -1, -1);
        MEMORY[0x259C4F9E0](v18, -1, -1);
      }

      else
      {

        v34 = v17;
        v23 = *(v16 + 8);
        v23(v15, v34);
      }

      v35 = *(v0 + 384);
      v36 = *(v0 + 360);
      swift_allocError();
      v11(v37, v35, v36);
      swift_willThrow();
      v23(v35, v36);
    }

    v33 = *(v0 + 8);
  }

  return v33();
}

unint64_t sub_255DD4840()
{
  v1 = sub_255E3A9F8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_255E3AA08();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v8, v0, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x277D84160])
  {
    (*(v6 + 96))(v8, v5);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7870, &qword_255E4BDC8);
    (*(v2 + 32))(v4, v8 + *(v10 + 48), v1);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_255E3A9A8();

    v11 = 0x8000000255E65FC0;
    v12 = 0xD00000000000001FLL;
LABEL_5:
    v30 = v12;
    v31 = v11;
    v14 = sub_255DD5720();
    MEMORY[0x259C4E8F0](v14);

    MEMORY[0x259C4E8F0](0x746365707865202CLL, 0xEB00000000206465);
    v15 = sub_255E3AEA8();
LABEL_6:
    MEMORY[0x259C4E8F0](v15);

    v16 = v30;
    (*(v2 + 8))(v4, v1);
    return v16;
  }

  if (v9 == *MEMORY[0x277D84170])
  {
    (*(v6 + 96))(v8, v5);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7870, &qword_255E4BDC8);
    (*(v2 + 32))(v4, v8 + *(v13 + 48), v1);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_255E3A9A8();

    v11 = 0x8000000255E65F90;
    v12 = 0xD000000000000020;
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x277D84158])
  {
    (*(v6 + 96))(v8, v5);
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7868, &qword_255E4BDC0) + 48);
    sub_255D34630(v8, &v30);
    (*(v2 + 32))(v4, v8 + v18, v1);
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_255E3A9A8();
    MEMORY[0x259C4E8F0](0xD00000000000001CLL, 0x8000000255E65FE0);
    __swift_project_boxed_opaque_existential_1(&v30, v32);
    v19 = sub_255E3AE68();
    MEMORY[0x259C4E8F0](v19);

    MEMORY[0x259C4E8F0](0xD000000000000010, 0x8000000255E66000);
    v20 = sub_255DD5720();
    MEMORY[0x259C4E8F0](v20);

    MEMORY[0x259C4E8F0](540945696, 0xE400000000000000);
    v21 = v32;
    v22 = v33;
    __swift_project_boxed_opaque_existential_1(&v30, v32);
    v23 = sub_255DD58C8(v21, v22);
    MEMORY[0x259C4E8F0](v23);

    v16 = v28;
    (*(v2 + 8))(v4, v1);
    __swift_destroy_boxed_opaque_existential_1Tm(&v30);
    return v16;
  }

  if (v9 == *MEMORY[0x277D84168])
  {
    (*(v6 + 96))(v8, v5);
    (*(v2 + 32))(v4, v8, v1);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_255E3A9A8();

    v30 = 0xD000000000000020;
    v31 = 0x8000000255E66020;
    v24 = sub_255DD5720();
    MEMORY[0x259C4E8F0](v24);

    MEMORY[0x259C4E8F0](8236, 0xE200000000000000);
    v15 = sub_255E3A9E8();
    goto LABEL_6;
  }

  v25 = sub_255E384A8();
  if (v26)
  {
    v16 = v25;
  }

  else
  {
    v16 = 0xD00000000000001CLL;
  }

  (*(v6 + 8))(v8, v5);
  return v16;
}

uint64_t RemoteLoader.reload<A>(decoding:using:)(uint64_t a1, uint64_t a2, int64_t a3, int64_t a4)
{
  v59 = a1;
  v7 = sub_255E3A3E8();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](v8);
  v60 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F7E5E80 != -1)
  {
LABEL_26:
    swift_once();
  }

  v13 = sub_255E386A8();
  v57 = __swift_project_value_buffer(v13, qword_27F8152D8);
  v14 = sub_255E38688();
  v15 = sub_255E3A868();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_255D2E000, v14, v15, "Loading from decoder", v16, 2u);
    MEMORY[0x259C4F9E0](v16, -1, -1);
  }

  v58 = v11;
  (*(v11 + 16))(v60, a2, a3);
  v17 = sub_255E38438();
  v18 = sub_255DCF728(v17);

  v19 = (*(a4 + 32))(v74, a3, a4);
  v21 = v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v72[0] = *v21;
  *v21 = 0x8000000000000000;
  sub_255DD6F1C(v18, sub_255DD6534, 0, isUniquelyReferenced_nonNull_native, v72);

  *v21 = *&v72[0];

  v19(v74, 0);
  v23 = *(a4 + 8);
  sub_255DD728C();
  sub_255E386B8();
  v11 = v74[0];
  v54[1] = v23;
  if (!v74[0])
  {
    v11 = sub_255DC53CC(MEMORY[0x277D84F90]);
  }

  sub_255DA5ED4();
  *v10 = sub_255E3A878();
  v25 = v55;
  v24 = v56;
  v55[13](v10, *MEMORY[0x277D85200], v56);
  v26 = sub_255E3A3F8();
  (v25[1])(v10, v24);
  if (v26)
  {
    v55 = 0;
    v56 = a3;
    v27 = 1 << *(v11 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    a2 = v28 & *(v11 + 64);
    a3 = (v27 + 63) >> 6;

    a4 = 0;
    while (a2)
    {
      v29 = a2;
LABEL_16:
      a2 = (v29 - 1) & v29;
      if (*(v61 + 112))
      {
        v31 = __clz(__rbit64(v29)) | (a4 << 6);
        v32 = *(*(v11 + 56) + 8 * v31);
        v33 = *(v11 + 48) + 16 * v31;
        v10 = *v33;
        v34 = *(v33 + 8);

        sub_255DD5C54(v10, v34, v32);
      }
    }

    while (1)
    {
      v30 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v30 >= a3)
      {
        break;
      }

      v29 = *(v11 + 64 + 8 * v30);
      ++a4;
      if (v29)
      {
        a4 = v30;
        goto LABEL_16;
      }
    }

    sub_255DD72E0();
    v35 = v60;
    v36 = v55;
    v37 = v56;
    sub_255E386B8();
    if (v36)
    {
      v38 = v36;
      v39 = v58;
      v40 = v38;
      v41 = sub_255E38688();
      v42 = sub_255E3A868();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = v38;
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v74[0] = v45;
        *v44 = 136315138;
        *&v72[0] = v43;
        v46 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5FC0, &unk_255E48660);
        v47 = sub_255E3A528();
        v49 = sub_255D378C0(v47, v48, v74);

        *(v44 + 4) = v49;
        _os_log_impl(&dword_255D2E000, v41, v42, "Error loading from decoder: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        MEMORY[0x259C4F9E0](v45, -1, -1);
        v50 = v44;
        v38 = v43;
        v35 = v60;
        MEMORY[0x259C4F9E0](v50, -1, -1);
      }

      v74[0] = v38;
      v75 = 1;
      v51 = v38;
      sub_255DD0A2C(v74);

      sub_255D38CA8(v74);
      return (*(v39 + 8))(v35, v37);
    }

    else
    {
      sub_255D3957C(v74, &v62, &qword_27F7E6C20, &qword_255E58D80);
      v53 = v58;
      if (*(&v62 + 1))
      {
        v72[6] = v68;
        v72[7] = v69;
        v72[8] = v70;
        v73 = v71;
        v72[2] = v64;
        v72[3] = v65;
        v72[4] = v66;
        v72[5] = v67;
        v72[0] = v62;
        v72[1] = v63;
        *(&v63 + 1) = &type metadata for ViewContent;
        *&v64 = sub_255D44794();
        *&v62 = swift_allocObject();
        sub_255D4C170(v72, v62 + 16);
        BYTE8(v64) = 0;
        sub_255DD0A2C(&v62);
        sub_255D4C1A8(v72);
        sub_255DD7334(v74);
        (*(v53 + 8))(v35, v37);
        return sub_255D38CA8(&v62);
      }

      else
      {
        sub_255DD7334(v74);
        (*(v53 + 8))(v35, v37);
        return sub_255D395E4(&v62, &qword_27F7E6C20, &qword_255E58D80);
      }
    }
  }

  else
  {
    __break(1u);

    *v26 = *&v72[0];

    __break(1u);
  }

  return result;
}

char *RemoteLoader.deinit()
{
  sub_255D38CA8(v0 + 16);
  sub_255D395E4(v0 + 64, &qword_27F7E82F0, &qword_255E54BE0);

  sub_255D3480C(v0 + 128);

  v1 = OBJC_IVAR____TtC6LiftUI12RemoteLoader___observationRegistrar;
  v2 = sub_255E38638();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t RemoteLoader.__deallocating_deinit()
{
  sub_255D38CA8(v0 + 16);
  sub_255D395E4(v0 + 64, &qword_27F7E82F0, &qword_255E54BE0);

  sub_255D3480C(v0 + 128);

  v1 = OBJC_IVAR____TtC6LiftUI12RemoteLoader___observationRegistrar;
  v2 = sub_255E38638();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_255DD56D0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_255E386D8();
  *a2 = result;
  return result;
}

uint64_t sub_255DD5720()
{
  v0 = sub_255E3A9D8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_255DE5D20(0, v1, 0);
    v2 = v17;
    v3 = v0 + 32;
    do
    {
      sub_255D3CE1C(v3, v14);
      v4 = v15;
      v5 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v6 = sub_255DD58C8(v4, v5);
      v8 = v7;
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      v17 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_255DE5D20((v9 > 1), v10 + 1, 1);
        v2 = v17;
      }

      *(v2 + 16) = v10 + 1;
      v11 = v2 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v14[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B70, &qword_255E3EF60);
  sub_255D38950(&qword_27F7E6B78, &qword_27F7E6B70, &qword_255E3EF60, MEMORY[0x277D83958]);
  v12 = sub_255E3A498();

  return v12;
}

uint64_t sub_255DD58C8(uint64_t a1, uint64_t a2)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v2 = sub_255E3A538();
  v4 = v3;
  v18 = 46;
  v19 = 0xE100000000000000;
  v17[2] = &v18;

  v6 = sub_255DD6174(0x7FFFFFFFFFFFFFFFLL, 1, sub_255DD776C, v17, v2, v4, v5);
  if (*(v6 + 16) < 2uLL)
  {

    v18 = v2;
    v19 = v4;
    goto LABEL_5;
  }

  v7 = v6;

  if (v7[2] >= 2uLL)
  {
    v9 = v7[8];
    v10 = v7[9];
    v11 = v7[10];
    v12 = v7[11];

    v13 = MEMORY[0x259C4E8B0](v9, v10, v11, v12);
    v15 = v14;

    v18 = v13;
    v19 = v15;
LABEL_5:
    MEMORY[0x259C4E8F0](46, 0xE100000000000000);
    v16 = sub_255E3AE68();
    MEMORY[0x259C4E8F0](v16);

    return v18;
  }

  __break(1u);
  return result;
}

uint64_t EnvironmentValues.remoteLoader.getter()
{
  sub_255D396AC();
  sub_255E38D58();
  return v1;
}

uint64_t sub_255DD5AB0()
{
  type metadata accessor for RemoteLoader(0);
  v0 = swift_allocObject();
  result = sub_255DD0838();
  qword_27F7E82D0 = v0;
  return result;
}

uint64_t sub_255DD5AF0@<X0>(void *a1@<X8>)
{
  if (qword_27F7E5E70 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F7E82D0;
}

uint64_t (*EnvironmentValues.remoteLoader.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_255D396AC();
  sub_255E38D58();
  return sub_255DD5BC0;
}

uint64_t sub_255DD5BC0(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_255E38D68();
  }

  sub_255E38D68();
}

uint64_t sub_255DD5C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = sub_255E38718();
  v8 = v7;
  v9 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_255DE55B4(0, *(v9 + 2) + 1, 1, v9);
    *v8 = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_255DE55B4((v11 > 1), v12 + 1, 1, v9);
    *v8 = v9;
  }

  *(v9 + 2) = v12 + 1;
  *&v9[8 * v12 + 32] = a3;

  v6(v22, 0);

  MEMORY[0x28223BE20](v13);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  swift_getKeyPath();
  sub_255E38728();

  v15 = *(v22[0] + 16);

  v16 = *(*v4 + 112);
  swift_beginAccess();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v4 + v16);
  *(v4 + v16) = 0x8000000000000000;
  sub_255D81EF0(v15 - 1, a1, a2, v17);
  *(v4 + v16) = v21;
  return swift_endAccess();
}

uint64_t sub_255DD5EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_255D3951C(a3, v21);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = sub_255E38718();
  v7 = v6;
  v8 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_255DE5A50(0, *(v8 + 2) + 1, 1, v8);
    *v7 = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_255DE5A50((v10 > 1), v11 + 1, 1, v8);
    *v7 = v8;
  }

  *(v8 + 2) = v11 + 1;
  sub_255D31B4C(v21, &v8[32 * v11 + 32]);
  v5(v20, 0);

  MEMORY[0x28223BE20](v12);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  swift_getKeyPath();
  sub_255E38728();

  v14 = *(*&v21[0] + 16);

  v15 = *(*v4 + 112);
  swift_beginAccess();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v20[0] = *(v4 + v15);
  *(v4 + v15) = 0x8000000000000000;
  sub_255D81EF0(v14 - 1, a1, a2, v16);
  *(v4 + v15) = v20[0];
  return swift_endAccess();
}

unint64_t sub_255DD6174@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_255E3A618();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_255DE5B60(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_255DE5B60((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_255E3A5F8();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_255E3A588();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_255E3A588();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_255E3A618();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_255DE5B60(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_255E3A618();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_255DE5B60(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_255DE5B60((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_255E3A588();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_255DD6534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8328, &unk_255E54EC8) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8340, &qword_255E54F40) + 48);
  v6 = sub_255E3AAE8();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return sub_255D3951C(a1 + v4, a2 + v5);
}

uint64_t sub_255DD65D8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8328, &unk_255E54EC8);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v38 - v4;
  v5 = sub_255E3AAE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8348, &qword_255E54F48);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v43 = a1;
  v41 = v18;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v20 << 6);
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v25, v5);
    sub_255D3951C(*(v15 + 56) + 32 * v25, v44);
    v26 = *(v40 + 48);
    v27 = v5;
    v28 = v40;
    (*(v6 + 32))(v14, v8, v27);
    sub_255D31B4C(v44, &v14[v26]);
    v29 = v39;
    (*(v39 + 56))(v14, 0, 1, v28);
    v23 = v20;
LABEL_11:
    *v1 = v15;
    v1[1] = v16;
    v1[2] = v41;
    v1[3] = v23;
    v1[4] = v24;
    v30 = v1[5];
    v31 = v42;
    sub_255D9B71C(v14, v42, &qword_27F7E8348, &qword_255E54F48);
    v32 = 1;
    v33 = (*(v29 + 48))(v31, 1, v28);
    v34 = v43;
    if (v33 != 1)
    {
      v35 = v31;
      v36 = v38;
      sub_255D9B71C(v35, v38, &qword_27F7E8328, &unk_255E54EC8);
      v30(v36);
      sub_255D395E4(v36, &qword_27F7E8328, &unk_255E54EC8);
      v32 = 0;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8340, &qword_255E54F40);
    return (*(*(v37 - 8) + 56))(v34, v32, 1, v37);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v29 = v39;
        v28 = v40;
        (*(v39 + 56))(&v38 - v13, 1, 1, v40);
        v24 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_255DD69B8(uint64_t a1)
{
  v3 = sub_255E3AAE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v1 + 112) = a1;

  if (qword_27F7E5E60 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_27F8152A8);
  (*(v4 + 16))(v6, v7, v3);
  v8 = *(v1 + 112);
  if (v8)
  {
    v9 = type metadata accessor for RemoteStateStore(0);
  }

  else
  {
    v9 = 0;
    v13[1] = 0;
    v13[2] = 0;
  }

  v13[0] = v8;
  v13[3] = v9;

  v10 = sub_255E38428();
  sub_255DCF60C(v13, v6);
  return v10(v12, 0);
}

uint64_t _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(uint64_t a1, void *a2)
{
  v3 = sub_255E3AAE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for RemoteLoader(0);
  v7 = swift_allocObject();
  sub_255DD0838();
  v8 = qword_27F7E5E88;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_27F8152F0);
  (*(v4 + 16))(v6, v9, v3);
  v15[3] = type metadata accessor for ContentRegistry();
  v15[0] = a2;
  v10 = a2;
  v11 = sub_255E38428();
  sub_255DCF60C(v15, v6);
  v11(v14, 0);

  sub_255DD69B8(v12);

  return v7;
}

uint64_t sub_255DD6D20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255DD6D84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255DD6DE8(uint64_t a1)
{
  v4 = *(type metadata accessor for RemoteContent(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_255D50138;

  return sub_255DD0CA4(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_255DD6F1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v9 = sub_255E3AAE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8338, &qword_255E54F38);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v41 - v14;
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v45 = a1;
  v46 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v47 = v17;
  v48 = 0;
  v49 = v20 & v18;
  v50 = a2;
  v51 = a3;
  v21 = (v10 + 32);
  v42 = (v10 + 8);
  v43 = v10;

  v41[1] = a3;

  while (1)
  {
    sub_255DD65D8(v15);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8340, &qword_255E54F40);
    if ((*(*(v23 - 8) + 48))(v15, 1, v23) == 1)
    {
      sub_255DD7640(v45);
    }

    v24 = *(v23 + 48);
    v25 = *v21;
    v26 = v9;
    (*v21)(v12, v15, v9);
    sub_255D31B4C(&v15[v24], v44);
    v27 = *v52;
    v29 = sub_255D3CA98(v12);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if ((a4 & 1) == 0)
      {
        sub_255D82960();
      }
    }

    else
    {
      sub_255D811E8(v32, a4 & 1);
      v34 = sub_255D3CA98(v12);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_19;
      }

      v29 = v34;
    }

    v36 = *v52;
    if (v33)
    {
      v9 = v26;
      (*v42)(v12, v26);
      v22 = (v36[7] + 32 * v29);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      sub_255D31B4C(v44, v22);
      a4 = 1;
    }

    else
    {
      v36[(v29 >> 6) + 8] |= 1 << v29;
      v9 = v26;
      v25((v36[6] + *(v43 + 72) * v29), v12, v26);
      sub_255D31B4C(v44, (v36[7] + 32 * v29));
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v36[2] = v39;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_255E3AD28();
  __break(1u);
  return result;
}

unint64_t sub_255DD728C()
{
  result = qword_27F7E82E0;
  if (!qword_27F7E82E0)
  {
    result = swift_getWitnessTable(byte_255E5DC3C, &type metadata for LiftUIDataResponse, v0, v1);
    atomic_store(result, &qword_27F7E82E0);
  }

  return result;
}

unint64_t sub_255DD72E0()
{
  result = qword_27F7E82E8;
  if (!qword_27F7E82E8)
  {
    result = swift_getWitnessTable(byte_255E5DC14, &type metadata for LiftUIViewResponse, v0, v1);
    atomic_store(result, &qword_27F7E82E8);
  }

  return result;
}

unint64_t sub_255DD738C()
{
  result = qword_27F7E82F8;
  if (!qword_27F7E82F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReloadType, &type metadata for ReloadType, v0, v1);
    atomic_store(result, &qword_27F7E82F8);
  }

  return result;
}

uint64_t sub_255DD7404(uint64_t a1)
{
  result = sub_255E38638();
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

uint64_t get_enum_tag_for_layout_string_6LiftUI12RemoteLoaderC6StatusO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_255DD750C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255DD7548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_255DD7594(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_255DD7648(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E82F0, &qword_255E54BE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_255DD7710(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255DD7758(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_255D37E60(result, a2);
  }

  return result;
}

uint64_t sub_255DD776C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_255E3AC68() & 1;
  }
}

void sub_255DD77C4(uint64_t a1)
{
  sub_255DD7838();
  if (v1 <= 0x3F)
  {
    sub_255E38408();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_255DD7838()
{
  if (!qword_27F7E8368)
  {
    v0 = sub_255E38588();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7E8368);
    }
  }
}

uint64_t sub_255DD7898()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_255DD78D0()
{
  v1 = *(v0 + 16);
  v2 = sub_255E38518();
  v3 = [v1 viewForError_];

  if (!v3)
  {
    return 0;
  }

  sub_255DDAA00();
  return sub_255E3A038();
}

id sub_255DD794C()
{
  result = [*(v0 + 16) loadingView];
  if (result)
  {
    sub_255DDAA00();
    return sub_255E3A038();
  }

  return result;
}

void sub_255DD79A0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_255E3A4C8();
  [v2 didFinishLoadingRemoteContentViewWithId_];
}

void sub_255DD79F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = sub_255E3A4C8();
  v6 = sub_255E38518();
  [v4 didFinishLoadingRemoteContentViewWithId:v5 error:v6];
}

void sub_255DD7A70()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = sub_255E38558();
  v7[0] = 0;
  v3 = [v1 requestFor:v2 error:v7];

  v4 = v7[0];
  if (v3)
  {
    sub_255E383A8();
    v5 = v4;
  }

  else
  {
    v6 = v7[0];
    sub_255E38528();

    swift_willThrow();
  }
}

uint64_t sub_255DD7B58(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x2822009F8](sub_255DD7B78, 0, 0);
}

uint64_t sub_255DD7B78()
{
  v1 = *(v0[21] + 16);
  v2 = sub_255E38398();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_255DD7CB0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8370, &unk_255E550B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_255DD7EA0;
  v0[13] = &block_descriptor_1;
  v0[14] = v3;
  [v1 dataFor:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_255DD7CB0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_255DD7E30;
  }

  else
  {
    v2 = sub_255DD7DC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_255DD7DC0()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_255DD7E30(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_255DD7EA0(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5FC0, &unk_255E48660);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_255E385A8();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_255DD7FA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255DD8034;

  return sub_255DD7B58(a1);
}

uint64_t sub_255DD8034(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_255DD81A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255DDAAD0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_255DD8204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255DDAAD0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_255DD8268(uint64_t a1)
{
  sub_255DDAAD0();
  sub_255E39218();
  __break(1u);
}

uint64_t sub_255DD83FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, _UNKNOWN **, id))
{
  if (a4)
  {
    type metadata accessor for LiftUIObjcDataSourceWrapper();
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    v11 = &off_2867E8858;
  }

  else
  {
    type metadata accessor for BasicLiftUIDataSource();
    v10 = swift_allocObject();
    v11 = &protocol witness table for BasicLiftUIDataSource;
  }

  v12 = objc_allocWithZone(type metadata accessor for ContentRegistry());
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = [v12 init];
  v14 = a5(a1, a2, a3, v10, v11, v13);

  swift_unknownObjectRelease_n();
  return v14;
}

uint64_t static LiftUIFactory.viewController(url:delegate:dataSource:)(char *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    type metadata accessor for LiftUIObjcDataSourceWrapper();
    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    v7 = &off_2867E8858;
  }

  else
  {
    type metadata accessor for BasicLiftUIDataSource();
    v6 = swift_allocObject();
    v7 = &protocol witness table for BasicLiftUIDataSource;
  }

  v8 = objc_allocWithZone(type metadata accessor for ContentRegistry());
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = [v8 init];
  v10 = _s6LiftUI0A9UIFactoryC14viewController3url8delegate10dataSource15contentRegistrySo06UIViewE0C10Foundation3URLV_So0A10UIDelegate_pSgAA0a6UIDataI0_pAA07ContentK0CtFZ_0(a1, a2, v6, v7, v9);

  swift_unknownObjectRelease_n();
  return v10;
}

id LiftUIFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LiftUIFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiftUIFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LiftUIFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LiftUIFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s6LiftUI0A9UIFactoryC14viewController4json8delegate10dataSource15contentRegistrySo06UIViewE0CSS_So0A10UIDelegate_pSgAA0a6UIDataI0_pAA07ContentK0CtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v100 = a4;
  v101 = a6;
  v99 = a5;
  v92 = a3;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8380, &qword_255E550C8);
  MEMORY[0x28223BE20](v88);
  v89 = (&v88 - v8);
  v9 = sub_255E385D8();
  v94 = *(v9 - 8);
  v95 = v9;
  MEMORY[0x28223BE20](v9);
  v93 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8388, &unk_255E550D0);
  MEMORY[0x28223BE20](v90);
  v12 = (&v88 - v11);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v13 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v15 = &v88 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F98, &unk_255E537E0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v88 - v18;
  v20 = type metadata accessor for RemoteContent(0);
  v96 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v98 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = (&v88 - v23);
  *v24 = a1;
  v24[1] = a2;
  v102 = &v88 - v23;
  v97 = v25;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RemoteStateStore(0);
  v26 = swift_allocObject();
  v27 = qword_27F7E8600;

  v28 = MEMORY[0x277D84F90];
  *(v26 + v27) = sub_255DC5124(MEMORY[0x277D84F90]);
  *(v26 + qword_27F7E85F8) = 0;
  v29 = *(*v26 + 104);
  v104 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
  sub_255E38708();
  (*(v17 + 32))(v26 + v29, v19, v16);
  v30 = *(*v26 + 112);
  *(v26 + v30) = sub_255DC513C(v28);
  *(v26 + *(*v26 + 128)) = 0;
  *(v26 + *(*v26 + 120)) = 0;
  *(v26 + *(*v26 + 128)) = 0;
  type metadata accessor for LocalStateStore(0);
  v31 = swift_allocObject();
  v32 = qword_27F7E8608;
  *(v31 + v32) = sub_255DC5124(v28);
  *(v31 + qword_27F7E8610) = 0;
  v33 = *(*v31 + 104);
  v104 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v13 + 32))(v31 + v33, v15, v91);
  v34 = *(*v31 + 112);
  *(v31 + v34) = sub_255DC513C(v28);
  *(v31 + *(*v31 + 128)) = 0;
  *(v31 + *(*v31 + 120)) = 0;
  *(v31 + *(*v31 + 128)) = 0;
  if (v92)
  {
    v35 = v92;
    type metadata accessor for LiftUIUIKitDelegateWrapper();
    *(swift_allocObject() + 16) = v35;
    v36 = v98;
    sub_255DD6D20(v102, v98);
    swift_unknownObjectRetain_n();
    v37 = v93;
    sub_255E385C8();
    v38 = sub_255E385B8();
    v40 = v39;
    (*(v94 + 8))(v37, v95);
    v41 = type metadata accessor for RemoteContentView(0);
    v42 = v12 + v41[9];
    *v42 = swift_getKeyPath();
    *(v42 + 1) = 0;
    v42[16] = 0;
    v43 = v12 + v41[10];
    *v43 = swift_getKeyPath();
    *(v43 + 1) = 0;
    v43[16] = 0;
    v44 = v12 + v41[11];
    *v44 = swift_getKeyPath();
    v44[8] = 0;
    *v12 = v38;
    v12[1] = v40;
    v45 = v41[5];
    sub_255DD6D20(v36, v12 + v45);
    (*(v96 + 56))(v12 + v45, 0, 1, v97);
    v46 = objc_allocWithZone(type metadata accessor for ContentRegistry());

    v103 = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(v26, [v46 init]);
    type metadata accessor for RemoteLoader(0);
    sub_255E39F98();
    sub_255DDAA54(v36);
    v47 = v105;
    v48 = (v12 + v41[8]);
    *v48 = v104;
    v48[1] = v47;
    v49 = v12 + v41[6];
    *v49 = sub_255DDAB28;
    *(v49 + 1) = v26;
    v49[16] = 0;
    v50 = v12 + v41[7];
    *v50 = sub_255DDAB28;
    *(v50 + 1) = v31;
    v50[16] = 0;
    KeyPath = swift_getKeyPath();
    type metadata accessor for AnyWeakDelegate();
    v52 = swift_allocObject();
    *(v52 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v52 + 24) = &off_2867E8870;
    swift_unknownObjectWeakAssign();
    v53 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83A0, &qword_255E55168) + 36));
    *v53 = KeyPath;
    v53[1] = v52;
    v53[2] = &off_2867E51D8;
    v54 = swift_getKeyPath();
    type metadata accessor for AnyWeakDataSource();
    v55 = swift_allocObject();
    *(v55 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v55 + 24) = v99;
    swift_unknownObjectWeakAssign();
    v56 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83A8, &qword_255E55170) + 36));
    *v56 = v54;
    v56[1] = v55;
    v56[2] = &off_2867E3ED8;
    v57 = swift_getKeyPath();
    v58 = (v12 + *(v90 + 36));
    v59 = v101;
    *v58 = v57;
    v58[1] = v59;
    v60 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83B0, &qword_255E55178));
    v61 = v59;
    v62 = sub_255E39178();
    swift_unknownObjectRelease();
  }

  else
  {
    v63 = v98;
    sub_255DD6D20(v102, v98);
    v64 = v93;
    sub_255E385C8();
    v65 = sub_255E385B8();
    v67 = v66;
    (*(v94 + 8))(v64, v95);
    v68 = type metadata accessor for RemoteContentView(0);
    v69 = v89;
    v70 = v89 + v68[9];
    *v70 = swift_getKeyPath();
    *(v70 + 1) = 0;
    v70[16] = 0;
    v71 = v69 + v68[10];
    *v71 = swift_getKeyPath();
    *(v71 + 1) = 0;
    v71[16] = 0;
    v72 = v69 + v68[11];
    *v72 = swift_getKeyPath();
    v72[8] = 0;
    *v69 = v65;
    v69[1] = v67;
    v73 = v68[5];
    sub_255DD6D20(v63, v69 + v73);
    (*(v96 + 56))(v69 + v73, 0, 1, v97);
    v74 = objc_allocWithZone(type metadata accessor for ContentRegistry());

    v103 = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(v26, [v74 init]);
    type metadata accessor for RemoteLoader(0);
    sub_255E39F98();
    sub_255DDAA54(v63);
    v75 = v105;
    v76 = (v69 + v68[8]);
    *v76 = v104;
    v76[1] = v75;
    v77 = v69 + v68[6];
    *v77 = sub_255DDAB28;
    *(v77 + 1) = v26;
    v77[16] = 0;
    v78 = v69 + v68[7];
    *v78 = sub_255DDAB28;
    *(v78 + 1) = v31;
    v78[16] = 0;
    v79 = swift_getKeyPath();
    type metadata accessor for AnyWeakDataSource();
    v80 = swift_allocObject();
    *(v80 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v80 + 24) = v99;
    swift_unknownObjectWeakAssign();
    v81 = (v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8390, &qword_255E55158) + 36));
    *v81 = v79;
    v81[1] = v80;
    v81[2] = &off_2867E3ED8;
    v82 = swift_getKeyPath();
    v83 = (v69 + *(v88 + 36));
    v84 = v101;
    *v83 = v82;
    v83[1] = v84;
    v85 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8398, &qword_255E55160));
    v86 = v84;
    v62 = sub_255E39178();
  }

  sub_255DDAA54(v102);
  return v62;
}

uint64_t _s6LiftUI0A9UIFactoryC14viewController4data8delegate0F6Source15contentRegistrySo06UIViewE0C10Foundation4DataV_So0A10UIDelegate_pSgAA0a6UIDataH0_pAA07ContentJ0CtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v100 = a4;
  v101 = a6;
  v99 = a5;
  v92 = a3;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8380, &qword_255E550C8);
  MEMORY[0x28223BE20](v88);
  v89 = (&v88 - v8);
  v9 = sub_255E385D8();
  v94 = *(v9 - 8);
  v95 = v9;
  MEMORY[0x28223BE20](v9);
  v93 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8388, &unk_255E550D0);
  MEMORY[0x28223BE20](v90);
  v12 = (&v88 - v11);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v13 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v15 = &v88 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F98, &unk_255E537E0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v88 - v18;
  v20 = type metadata accessor for RemoteContent(0);
  v96 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v98 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = (&v88 - v23);
  *v24 = a1;
  v24[1] = a2;
  v102 = &v88 - v23;
  v97 = v25;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RemoteStateStore(0);
  v26 = swift_allocObject();
  v27 = qword_27F7E8600;
  sub_255D37E0C(a1, a2);
  v28 = MEMORY[0x277D84F90];
  *(v26 + v27) = sub_255DC5124(MEMORY[0x277D84F90]);
  *(v26 + qword_27F7E85F8) = 0;
  v29 = *(*v26 + 104);
  v104 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
  sub_255E38708();
  (*(v17 + 32))(v26 + v29, v19, v16);
  v30 = *(*v26 + 112);
  *(v26 + v30) = sub_255DC513C(v28);
  *(v26 + *(*v26 + 128)) = 0;
  *(v26 + *(*v26 + 120)) = 0;
  *(v26 + *(*v26 + 128)) = 0;
  type metadata accessor for LocalStateStore(0);
  v31 = swift_allocObject();
  v32 = qword_27F7E8608;
  *(v31 + v32) = sub_255DC5124(v28);
  *(v31 + qword_27F7E8610) = 0;
  v33 = *(*v31 + 104);
  v104 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v13 + 32))(v31 + v33, v15, v91);
  v34 = *(*v31 + 112);
  *(v31 + v34) = sub_255DC513C(v28);
  *(v31 + *(*v31 + 128)) = 0;
  *(v31 + *(*v31 + 120)) = 0;
  *(v31 + *(*v31 + 128)) = 0;
  if (v92)
  {
    v35 = v92;
    type metadata accessor for LiftUIUIKitDelegateWrapper();
    *(swift_allocObject() + 16) = v35;
    v36 = v98;
    sub_255DD6D20(v102, v98);
    swift_unknownObjectRetain_n();
    v37 = v93;
    sub_255E385C8();
    v38 = sub_255E385B8();
    v40 = v39;
    (*(v94 + 8))(v37, v95);
    v41 = type metadata accessor for RemoteContentView(0);
    v42 = v12 + v41[9];
    *v42 = swift_getKeyPath();
    *(v42 + 1) = 0;
    v42[16] = 0;
    v43 = v12 + v41[10];
    *v43 = swift_getKeyPath();
    *(v43 + 1) = 0;
    v43[16] = 0;
    v44 = v12 + v41[11];
    *v44 = swift_getKeyPath();
    v44[8] = 0;
    *v12 = v38;
    v12[1] = v40;
    v45 = v41[5];
    sub_255DD6D20(v36, v12 + v45);
    (*(v96 + 56))(v12 + v45, 0, 1, v97);
    v46 = objc_allocWithZone(type metadata accessor for ContentRegistry());

    v103 = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(v26, [v46 init]);
    type metadata accessor for RemoteLoader(0);
    sub_255E39F98();
    sub_255DDAA54(v36);
    v47 = v105;
    v48 = (v12 + v41[8]);
    *v48 = v104;
    v48[1] = v47;
    v49 = v12 + v41[6];
    *v49 = sub_255DDAB28;
    *(v49 + 1) = v26;
    v49[16] = 0;
    v50 = v12 + v41[7];
    *v50 = sub_255DDAB28;
    *(v50 + 1) = v31;
    v50[16] = 0;
    KeyPath = swift_getKeyPath();
    type metadata accessor for AnyWeakDelegate();
    v52 = swift_allocObject();
    *(v52 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v52 + 24) = &off_2867E8870;
    swift_unknownObjectWeakAssign();
    v53 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83A0, &qword_255E55168) + 36));
    *v53 = KeyPath;
    v53[1] = v52;
    v53[2] = &off_2867E51D8;
    v54 = swift_getKeyPath();
    type metadata accessor for AnyWeakDataSource();
    v55 = swift_allocObject();
    *(v55 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v55 + 24) = v99;
    swift_unknownObjectWeakAssign();
    v56 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83A8, &qword_255E55170) + 36));
    *v56 = v54;
    v56[1] = v55;
    v56[2] = &off_2867E3ED8;
    v57 = swift_getKeyPath();
    v58 = (v12 + *(v90 + 36));
    v59 = v101;
    *v58 = v57;
    v58[1] = v59;
    v60 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83B0, &qword_255E55178));
    v61 = v59;
    v62 = sub_255E39178();
    swift_unknownObjectRelease();
  }

  else
  {
    v63 = v98;
    sub_255DD6D20(v102, v98);
    v64 = v93;
    sub_255E385C8();
    v65 = sub_255E385B8();
    v67 = v66;
    (*(v94 + 8))(v64, v95);
    v68 = type metadata accessor for RemoteContentView(0);
    v69 = v89;
    v70 = v89 + v68[9];
    *v70 = swift_getKeyPath();
    *(v70 + 1) = 0;
    v70[16] = 0;
    v71 = v69 + v68[10];
    *v71 = swift_getKeyPath();
    *(v71 + 1) = 0;
    v71[16] = 0;
    v72 = v69 + v68[11];
    *v72 = swift_getKeyPath();
    v72[8] = 0;
    *v69 = v65;
    v69[1] = v67;
    v73 = v68[5];
    sub_255DD6D20(v63, v69 + v73);
    (*(v96 + 56))(v69 + v73, 0, 1, v97);
    v74 = objc_allocWithZone(type metadata accessor for ContentRegistry());

    v103 = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(v26, [v74 init]);
    type metadata accessor for RemoteLoader(0);
    sub_255E39F98();
    sub_255DDAA54(v63);
    v75 = v105;
    v76 = (v69 + v68[8]);
    *v76 = v104;
    v76[1] = v75;
    v77 = v69 + v68[6];
    *v77 = sub_255DDAB28;
    *(v77 + 1) = v26;
    v77[16] = 0;
    v78 = v69 + v68[7];
    *v78 = sub_255DDAB28;
    *(v78 + 1) = v31;
    v78[16] = 0;
    v79 = swift_getKeyPath();
    type metadata accessor for AnyWeakDataSource();
    v80 = swift_allocObject();
    *(v80 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v80 + 24) = v99;
    swift_unknownObjectWeakAssign();
    v81 = (v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8390, &qword_255E55158) + 36));
    *v81 = v79;
    v81[1] = v80;
    v81[2] = &off_2867E3ED8;
    v82 = swift_getKeyPath();
    v83 = (v69 + *(v88 + 36));
    v84 = v101;
    *v83 = v82;
    v83[1] = v84;
    v85 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8398, &qword_255E55160));
    v86 = v84;
    v62 = sub_255E39178();
  }

  sub_255DDAA54(v102);
  return v62;
}

uint64_t _s6LiftUI0A9UIFactoryC14viewController3url8delegate10dataSource15contentRegistrySo06UIViewE0C10Foundation3URLV_So0A10UIDelegate_pSgAA0a6UIDataI0_pAA07ContentK0CtFZ_0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v99 = a3;
  v100 = a5;
  v98 = a4;
  v101 = a2;
  v102 = a1;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8380, &qword_255E550C8);
  MEMORY[0x28223BE20](v88);
  v89 = (&v88 - v5);
  v6 = sub_255E385D8();
  v93 = *(v6 - 8);
  v94 = v6;
  MEMORY[0x28223BE20](v6);
  v92 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8388, &unk_255E550D0);
  MEMORY[0x28223BE20](v90);
  v9 = (&v88 - v8);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v10 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v12 = &v88 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F98, &unk_255E537E0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v88 - v15;
  v17 = type metadata accessor for RemoteContent(0);
  v95 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v97 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v88 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F00, &qword_255E3B920);
  v23 = *(v22 + 48);
  v24 = *(v22 + 64);
  v25 = sub_255E38588();
  (*(*(v25 - 8) + 16))(v21, v102, v25);
  v21[v23] = 8;
  *&v21[v24] = xmmword_255E3B900;
  v102 = v21;
  v96 = v17;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RemoteStateStore(0);
  v26 = swift_allocObject();
  v27 = qword_27F7E8600;
  v28 = MEMORY[0x277D84F90];
  *(v26 + v27) = sub_255DC5124(MEMORY[0x277D84F90]);
  *(v26 + qword_27F7E85F8) = 0;
  v29 = *(*v26 + 104);
  v104 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
  sub_255E38708();
  (*(v14 + 32))(v26 + v29, v16, v13);
  v30 = *(*v26 + 112);
  *(v26 + v30) = sub_255DC513C(v28);
  *(v26 + *(*v26 + 128)) = 0;
  *(v26 + *(*v26 + 120)) = 0;
  *(v26 + *(*v26 + 128)) = 0;
  type metadata accessor for LocalStateStore(0);
  v31 = swift_allocObject();
  v32 = qword_27F7E8608;
  *(v31 + v32) = sub_255DC5124(v28);
  *(v31 + qword_27F7E8610) = 0;
  v33 = *(*v31 + 104);
  v104 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v10 + 32))(v31 + v33, v12, v91);
  v34 = *(*v31 + 112);
  *(v31 + v34) = sub_255DC513C(v28);
  *(v31 + *(*v31 + 128)) = 0;
  *(v31 + *(*v31 + 120)) = 0;
  *(v31 + *(*v31 + 128)) = 0;
  if (v101)
  {
    v35 = v101;
    type metadata accessor for LiftUIUIKitDelegateWrapper();
    v91 = swift_allocObject();
    *(v91 + 16) = v35;
    v36 = v97;
    sub_255DD6D20(v102, v97);
    swift_unknownObjectRetain_n();
    v37 = v92;
    sub_255E385C8();
    v38 = sub_255E385B8();
    v40 = v39;
    (*(v93 + 8))(v37, v94);
    v41 = type metadata accessor for RemoteContentView(0);
    v42 = v9 + v41[9];
    *v42 = swift_getKeyPath();
    *(v42 + 1) = 0;
    v42[16] = 0;
    v43 = v9 + v41[10];
    *v43 = swift_getKeyPath();
    *(v43 + 1) = 0;
    v43[16] = 0;
    v44 = v9 + v41[11];
    *v44 = swift_getKeyPath();
    v44[8] = 0;
    *v9 = v38;
    v9[1] = v40;
    v45 = v41[5];
    sub_255DD6D20(v36, v9 + v45);
    (*(v95 + 56))(v9 + v45, 0, 1, v96);
    v46 = objc_allocWithZone(type metadata accessor for ContentRegistry());

    v103 = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(v26, [v46 init]);
    type metadata accessor for RemoteLoader(0);
    sub_255E39F98();
    sub_255DDAA54(v36);
    v47 = v105;
    v48 = (v9 + v41[8]);
    *v48 = v104;
    v48[1] = v47;
    v49 = v9 + v41[6];
    *v49 = sub_255DDAB28;
    *(v49 + 1) = v26;
    v49[16] = 0;
    v50 = v9 + v41[7];
    *v50 = sub_255DDAB28;
    *(v50 + 1) = v31;
    v50[16] = 0;
    KeyPath = swift_getKeyPath();
    type metadata accessor for AnyWeakDelegate();
    v52 = swift_allocObject();
    *(v52 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v52 + 24) = &off_2867E8870;
    swift_unknownObjectWeakAssign();
    v53 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83A0, &qword_255E55168) + 36));
    *v53 = KeyPath;
    v53[1] = v52;
    v53[2] = &off_2867E51D8;
    v54 = swift_getKeyPath();
    type metadata accessor for AnyWeakDataSource();
    v55 = swift_allocObject();
    *(v55 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v55 + 24) = v98;
    swift_unknownObjectWeakAssign();
    v56 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83A8, &qword_255E55170) + 36));
    *v56 = v54;
    v56[1] = v55;
    v56[2] = &off_2867E3ED8;
    v57 = swift_getKeyPath();
    v58 = (v9 + *(v90 + 36));
    v59 = v100;
    *v58 = v57;
    v58[1] = v59;
    v60 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83B0, &qword_255E55178));
    v61 = v59;
    v62 = sub_255E39178();
    swift_unknownObjectRelease();
  }

  else
  {
    v63 = v97;
    sub_255DD6D20(v102, v97);
    v64 = v92;
    sub_255E385C8();
    v65 = sub_255E385B8();
    v67 = v66;
    (*(v93 + 8))(v64, v94);
    v68 = type metadata accessor for RemoteContentView(0);
    v69 = v89;
    v70 = v89 + v68[9];
    *v70 = swift_getKeyPath();
    *(v70 + 1) = 0;
    v70[16] = 0;
    v71 = v69 + v68[10];
    *v71 = swift_getKeyPath();
    *(v71 + 1) = 0;
    v71[16] = 0;
    v72 = v69 + v68[11];
    *v72 = swift_getKeyPath();
    v72[8] = 0;
    *v69 = v65;
    v69[1] = v67;
    v73 = v68[5];
    sub_255DD6D20(v63, v69 + v73);
    (*(v95 + 56))(v69 + v73, 0, 1, v96);
    v74 = objc_allocWithZone(type metadata accessor for ContentRegistry());

    v103 = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(v26, [v74 init]);
    type metadata accessor for RemoteLoader(0);
    sub_255E39F98();
    sub_255DDAA54(v63);
    v75 = v105;
    v76 = (v69 + v68[8]);
    *v76 = v104;
    v76[1] = v75;
    v77 = v69 + v68[6];
    *v77 = sub_255D94D70;
    *(v77 + 1) = v26;
    v77[16] = 0;
    v78 = v69 + v68[7];
    *v78 = sub_255D94D70;
    *(v78 + 1) = v31;
    v78[16] = 0;
    v79 = swift_getKeyPath();
    type metadata accessor for AnyWeakDataSource();
    v80 = swift_allocObject();
    *(v80 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v80 + 24) = v98;
    swift_unknownObjectWeakAssign();
    v81 = (v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8390, &qword_255E55158) + 36));
    *v81 = v79;
    v81[1] = v80;
    v81[2] = &off_2867E3ED8;
    v82 = swift_getKeyPath();
    v83 = (v69 + *(v88 + 36));
    v84 = v100;
    *v83 = v82;
    v83[1] = v84;
    v85 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8398, &qword_255E55160));
    v86 = v84;
    v62 = sub_255E39178();
  }

  sub_255DDAA54(v102);
  return v62;
}

unint64_t sub_255DDAA00()
{
  result = qword_27F7E8378;
  if (!qword_27F7E8378)
  {
    result = swift_getWitnessTable(aQ_6, &type metadata for AnyUIViewRepresentable, v0, v1);
    atomic_store(result, &qword_27F7E8378);
  }

  return result;
}

uint64_t sub_255DDAA54(uint64_t a1)
{
  v2 = type metadata accessor for RemoteContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255DDAAD0()
{
  result = qword_27F7E83B8;
  if (!qword_27F7E83B8)
  {
    result = swift_getWitnessTable("љ;,", &type metadata for AnyUIViewRepresentable, v0, v1);
    atomic_store(result, &qword_27F7E83B8);
  }

  return result;
}

unint64_t sub_255DDAB2C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16) && (result = sub_255D3CA20(result, a2), (v6 & 1) != 0))
  {
    *a4 = *(*(a3 + 56) + 8 * result);
  }

  else
  {
    *a4 = 0xF000000000000007;
  }

  return result;
}

uint64_t StringResolvable.resolved(with:)(unint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83C0, &qword_255E552A0);
  v412 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v395 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83C8, &qword_255E552A8);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v395 - v10;
  v12 = *v1;
  v13 = *(v1 + 8);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  if (!(v15 >> 6))
  {
    return sub_255DDEDA0(a1, v12, v13, v14, v15 & 1);
  }

  v411 = a1;
  if (v15 >> 6 == 1)
  {
    v16 = *(v12 + 16);
    v17 = MEMORY[0x277D84F90];
    v413 = v2;
    if (!v16)
    {
LABEL_176:
      v420 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B70, &qword_255E3EF60);
      sub_255D38950(&qword_27F7E6B78, &qword_27F7E6B70, &qword_255E3EF60, MEMORY[0x277D83958]);
      v211 = sub_255E3A498();

      return v211;
    }

    v425 = MEMORY[0x277D84F90];
    v18 = v16;
    v410 = v12;
    sub_255DE5D20(0, v16, 0);
    v19 = v18;
    v20 = v410;
    v21 = 0;
    v17 = v425;
    v408 = qword_27F7E85F8;
    v406 = qword_27F7E8600;
    v22 = (v410 + 56);
    v409 = v18;
    while (1)
    {
      if (v21 >= *(v20 + 16))
      {
        __break(1u);
LABEL_333:
        __break(1u);
        goto LABEL_334;
      }

      v23 = *(v22 - 3);
      v24 = *(v22 - 2);
      if ((*v22 & 1) == 0)
      {
        v53 = *(v22 - 3);

        goto LABEL_77;
      }

      v25 = *(v22 - 1);
      v412 = *(v22 - 3);
      v26 = a1;
      if ((~v25 & 0xF000000000000007) != 0)
      {
        v54 = *(v408 + a1);
        if (!v54)
        {
          sub_255D3E5D8(v23, v24, v25, 1);
          sub_255D34858(v25);
          goto LABEL_39;
        }

        v55 = v406;
        swift_beginAccess();
        v56 = *(v26 + v55);
        v57 = *(v56 + 16);
        sub_255D3E5D8(v23, v24, v25, 1);
        sub_255D34858(v25);

        if (!v57 || (v58 = sub_255D3CA20(v23, v24), (v59 & 1) == 0))
        {
          swift_endAccess();

          goto LABEL_39;
        }

        v405 = v54;
        v60 = *(v56 + 56) + 32 * v58;
        v61 = *v60;
        v62 = *(v60 + 8);
        v63 = *(v60 + 16);
        v64 = *(v60 + 24);
        swift_endAccess();
        if ((v64 & 1) == 0)
        {
          sub_255D5C258(v61, v62, v63, 0);

          a1 = v411;
          v19 = v409;
          v109 = v61;
          goto LABEL_72;
        }

        *&v403 = v62;
        v404 = v61;
        v402 = v63;
        if ((~v63 & 0xF000000000000007) == 0)
        {
          v65 = v405;
          if (*(v405 + qword_27F7E85F8))
          {
            v401 = *(v405 + qword_27F7E85F8);
            v66 = v63;
            v67 = qword_27F7E8600;
            swift_beginAccess();
            v68 = *(v65 + v67);
            v400 = *(v68 + 16);
            v69 = v404;
            v70 = v66;
            v71 = v401;
            sub_255D5C258(v404, v403, v70, 1);

            if (v400)
            {
              v72 = sub_255D3CA20(v69, v403);
              if (v73)
              {
                v74 = *(v68 + 56) + 32 * v72;
                v75 = *v74;
                v400 = *(v74 + 8);
                v76 = *(v74 + 16);
                LODWORD(v399) = *(v74 + 24);
                swift_endAccess();
                sub_255D5C258(v75, v400, v76, v399);
                v397 = v75;
                v77 = v75;
                v78 = v400;
                v398 = v76;
                v79 = v76;
                v80 = v399;
                v81 = v413;
                sub_255DDEBF8(v71, v77, v400, v79, v399, &v420);
                if (v81)
                {

                  sub_255D4DE84(v397, v78, v398, v80);
                  v413 = 0;
                  goto LABEL_97;
                }

                v413 = 0;

                sub_255D4DE84(v397, v78, v398, v80);
                v109 = v420;
                v418 = v420;
                v19 = v409;
                v144 = v403;
LABEL_145:
                if ((~v109 & 0xF000000000000007) == 0)
                {
                  sub_255D5C324(v109);
                  sub_255D5C33C();
                  v177 = swift_allocError();
                  v178 = v404;
                  *v179 = v404;
                  *(v179 + 8) = v144;
                  *(v179 + 16) = &type metadata for DecodableState;
                  *(v179 + 32) = 0;
                  swift_willThrow();

                  v413 = 0;
                  v180 = v402;
                  goto LABEL_154;
                }

                sub_255D5C30C(v109);
                sub_255D5C324(v109);

                sub_255D4DE84(v404, v144, v402, 1);
                a1 = v411;
LABEL_72:
                if ((~v109 & 0xF000000000000007) == 0)
                {
                  sub_255D5C33C();
                  swift_allocError();
                  v385 = v412;
                  *v386 = v412;
                  *(v386 + 8) = v24;
                  *(v386 + 16) = MEMORY[0x277D837D0];
                  *(v386 + 32) = 0;
                  swift_willThrow();

                  sub_255D2F870(v25);
                  v384 = v385;
                  v387 = v24;
                  v388 = v25;
LABEL_322:
                  sub_255D38090(v384, v387, v388, 1);
                }

                v100 = v19;
                v110 = v413;
                v111 = sub_255DE0DFC(v109, a1, v25);
                v113 = v109;
                v413 = v110;
                if (v110)
                {
                  sub_255D5C324(v109);
                  sub_255D2F870(v25);
                  sub_255D38090(v412, v24, v25, 1);
                }

                v103 = v111;
                v105 = v112;
                sub_255D5C324(v113);
                sub_255D2F870(v25);
                v106 = v412;
                v107 = v24;
                v108 = v25;
                goto LABEL_75;
              }
            }

            swift_endAccess();

LABEL_97:
            v144 = v403;
          }

          else
          {
            v144 = v403;

            sub_255D34858(v63);
          }

          v420 = v404;
          v421 = v144;
          v152 = *(*v65 + 112);
          swift_beginAccess();
          v153 = *(v65 + v152);
          if (*(v153 + 16))
          {

            v154 = sub_255D3CA20(v404, v144);
            if (v155)
            {
              v156 = *(*(v153 + 56) + 8 * v154);

              MEMORY[0x28223BE20](v157);
              *(&v395 - 4) = MEMORY[0x277D837D0];
              *(&v395 - 3) = &type metadata for DecodableState;
              *(&v395 - 2) = MEMORY[0x277D837E0];
              KeyPath = swift_getKeyPath();
              v401 = &v395;
              MEMORY[0x28223BE20](KeyPath);
              *(&v395 - 4) = MEMORY[0x277D837D0];
              *(&v395 - 3) = &type metadata for DecodableState;
              *(&v395 - 2) = MEMORY[0x277D837E0];
              swift_getKeyPath();
              sub_255E38728();

              if ((v156 & 0x8000000000000000) != 0)
              {
                goto LABEL_348;
              }

              v19 = v409;
              if (v156 >= *(v417 + 16))
              {
                goto LABEL_350;
              }

              v418 = *(v417 + 8 * v156 + 32);

              v144 = v403;
              goto LABEL_144;
            }
          }

          v173 = *(v65 + *(*v65 + 120));
          if (v173)
          {
            (*(*v173 + 248))(&v418, &v420);
          }

          else
          {
            v418 = 0xF000000000000007;
          }

          v19 = v409;
LABEL_144:
          v109 = v418;
          goto LABEL_145;
        }

        v129 = v405;
        v130 = *(v405 + qword_27F7E85F8);
        if (v130)
        {
          v131 = qword_27F7E8600;
          swift_beginAccess();
          v399 = *(v129 + v131);
          v400 = *(v399 + 16);
          v132 = v404;
          v133 = v403;
          sub_255D5C258(v404, v403, v63, 1);
          sub_255D34858(v63);
          v401 = v130;

          if (v400)
          {
            v134 = sub_255D3CA20(v132, v133);
            if (v135)
            {
              v136 = *(v399 + 56) + 32 * v134;
              v138 = *v136;
              v137 = *(v136 + 8);
              v139 = *(v136 + 16);
              v140 = *(v136 + 24);
              swift_endAccess();
              sub_255D5C258(v138, v137, v139, v140);
              v398 = v138;
              v400 = v139;
              LODWORD(v399) = v140;
              v141 = v413;
              sub_255DDEBF8(v401, v138, v137, v139, v140, &v420);
              v142 = v405;
              if (v141)
              {

                sub_255D4DE84(v398, v137, v400, v399);
                v413 = 0;
                v132 = v404;
                v143 = v403;
                goto LABEL_120;
              }

              v413 = 0;

              sub_255D4DE84(v398, v137, v400, v399);
              v181 = v420;
              v144 = v403;
LABEL_150:
              if ((~v181 & 0xF000000000000007) != 0)
              {
                v180 = v402;
                v184 = v413;
                sub_255DE08EC(v181, v142, v402, &v419);
                if (!v184)
                {
                  v413 = 0;
                  sub_255D5C324(v181);
                  sub_255D2F870(v180);

                  sub_255D4DE84(v404, v403, v180, 1);
                  v109 = v419;
                  a1 = v411;
                  v19 = v409;
                  goto LABEL_72;
                }

                sub_255D5C324(v181);
                sub_255D2F870(v180);

                v413 = 0;
                v178 = v404;
                v144 = v403;
              }

              else
              {
                sub_255D5C33C();
                v182 = swift_allocError();
                v178 = v404;
                *v183 = v404;
                *(v183 + 8) = v144;
                *(v183 + 16) = &type metadata for DecodableState;
                *(v183 + 32) = 0;
                swift_willThrow();

                v180 = v402;
                sub_255D2F870(v402);

                v413 = 0;
              }

LABEL_154:

              sub_255D4DE84(v178, v144, v180, 1);
              v23 = v412;
LABEL_39:
              v420 = v23;
              v421 = v24;
              a1 = v411;
              v88 = *(*v411 + 112);
              swift_beginAccess();
              v89 = *(a1 + v88);
              if (*(v89 + 16))
              {

                v90 = sub_255D3CA20(v23, v24);
                if (v91)
                {
                  v92 = *(*(v89 + 56) + 8 * v90);

                  MEMORY[0x28223BE20](v93);
                  *(&v395 - 4) = MEMORY[0x277D837D0];
                  *(&v395 - 3) = &type metadata for DecodableState;
                  *(&v395 - 2) = MEMORY[0x277D837E0];
                  v18 = swift_getKeyPath();
                  MEMORY[0x28223BE20](v18);
                  *(&v395 - 4) = MEMORY[0x277D837D0];
                  *(&v395 - 3) = &type metadata for DecodableState;
                  *(&v395 - 2) = MEMORY[0x277D837E0];
                  v19 = swift_getKeyPath();
                  a1 = v411;
                  sub_255E38728();

                  if ((v92 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_337;
                  }

                  v19 = v409;
                  if (v92 >= *(v419 + 16))
                  {
                    goto LABEL_339;
                  }

                  v419 = *(v419 + 8 * v92 + 32);

                  goto LABEL_71;
                }
              }

              v95 = *(a1 + *(*a1 + 120));
              if (v95)
              {
                (*(*v95 + 248))(&v419, &v420);
              }

              else
              {
                v419 = 0xF000000000000007;
              }

              v19 = v409;
LABEL_71:
              v109 = v419;
              goto LABEL_72;
            }
          }

          swift_endAccess();

          v142 = v405;
          v143 = v133;
        }

        else
        {
          v132 = v404;
          v164 = v403;
          sub_255D5C258(v404, v403, v63, 1);
          sub_255D34858(v63);
          v143 = v164;
          v142 = v129;
        }

LABEL_120:
        v420 = v132;
        v421 = v143;
        v165 = *(*v142 + 112);
        v144 = v143;
        swift_beginAccess();
        v166 = *(v142 + v165);
        if (*(v166 + 16))
        {

          v167 = sub_255D3CA20(v404, v144);
          if (v168)
          {
            v169 = *(*(v166 + 56) + 8 * v167);

            MEMORY[0x28223BE20](v170);
            *(&v395 - 4) = MEMORY[0x277D837D0];
            *(&v395 - 3) = &type metadata for DecodableState;
            *(&v395 - 2) = MEMORY[0x277D837E0];
            v171 = swift_getKeyPath();
            v401 = &v395;
            MEMORY[0x28223BE20](v171);
            *(&v395 - 4) = MEMORY[0x277D837D0];
            *(&v395 - 3) = &type metadata for DecodableState;
            *(&v395 - 2) = MEMORY[0x277D837E0];
            swift_getKeyPath();
            sub_255E38728();

            if ((v169 & 0x8000000000000000) != 0)
            {
              goto LABEL_347;
            }

            if (v169 >= *(v418 + 16))
            {
              goto LABEL_349;
            }

            v418 = *(v418 + 8 * v169 + 32);

            v144 = v403;
            goto LABEL_149;
          }
        }

        v174 = *(v142 + *(*v142 + 120));
        if (v174)
        {
          (*(*v174 + 248))(&v418, &v420);
        }

        else
        {
          v418 = 0xF000000000000007;
        }

LABEL_149:
        v181 = v418;
        goto LABEL_150;
      }

      v27 = *(v408 + a1);
      v407 = v25;
      if (!v27)
      {

        sub_255D34858(v25);
        goto LABEL_33;
      }

      v28 = v406;
      swift_beginAccess();
      v29 = *(v26 + v28);
      v30 = *(v29 + 16);
      sub_255D3E5D8(v23, v24, v25, 1);

      if (!v30 || (v31 = sub_255D3CA20(v23, v24), (v32 & 1) == 0))
      {
        swift_endAccess();

        goto LABEL_33;
      }

      v33 = *(v29 + 56) + 32 * v31;
      v35 = *v33;
      v34 = *(v33 + 8);
      v36 = *(v33 + 16);
      v37 = *(v33 + 24);
      swift_endAccess();
      if ((v37 & 1) == 0)
      {
        sub_255D5C258(v35, v34, v36, 0);

LABEL_82:
        v419 = v35;
        a1 = v411;
        v19 = v409;
        goto LABEL_53;
      }

      v405 = v34;
      if ((~v36 & 0xF000000000000007) == 0)
      {
        v38 = v36;
        v39 = *(v27 + qword_27F7E85F8);
        v404 = v38;
        if (v39)
        {
          v40 = qword_27F7E8600;
          swift_beginAccess();
          v41 = *(v27 + v40);
          *&v403 = *(v41 + 16);
          v42 = v38;
          v43 = v405;
          sub_255D5C258(v35, v405, v42, 1);

          if (v403)
          {
            v44 = sub_255D3CA20(v35, v43);
            if (v45)
            {
              v46 = *(v41 + 56) + 32 * v44;
              *&v403 = v39;
              v48 = *v46;
              v47 = *(v46 + 8);
              v49 = *(v46 + 16);
              LODWORD(v402) = *(v46 + 24);
              swift_endAccess();
              sub_255D5C258(v48, v47, v49, v402);
              v399 = v48;
              v400 = v47;
              v401 = v49;
              v50 = v49;
              v51 = v402;
              v52 = v413;
              sub_255DDEBF8(v403, v48, v47, v50, v402, &v420);
              if (v52)
              {

                sub_255D4DE84(v399, v400, v401, v51);
                v413 = 0;
                v34 = v405;
                goto LABEL_95;
              }

              v413 = 0;

              sub_255D4DE84(v399, v400, v401, v51);
              v175 = v420;
              v417 = v420;
              v19 = v409;
              v36 = v404;
LABEL_137:
              if ((~v175 & 0xF000000000000007) != 0)
              {
                sub_255D5C30C(v175);
                sub_255D5C324(v175);

                sub_255D4DE84(v35, v405, v36, 1);
                v419 = v175;
                v35 = v175;
                a1 = v411;
                goto LABEL_53;
              }

              sub_255D5C324(v175);
              sub_255D5C33C();
              v160 = swift_allocError();
              v161 = v405;
              *v176 = v35;
              *(v176 + 8) = v161;
              *(v176 + 16) = &type metadata for DecodableState;
              *(v176 + 32) = 0;
              swift_willThrow();

              goto LABEL_139;
            }
          }

          swift_endAccess();

          v34 = v43;
LABEL_95:
          v36 = v404;
        }

        else
        {

          v36 = v38;
          sub_255D34858(v38);
        }

        v420 = v35;
        v421 = v34;
        v145 = *(*v27 + 112);
        swift_beginAccess();
        v146 = *(v27 + v145);
        if (*(v146 + 16))
        {

          v147 = sub_255D3CA20(v35, v405);
          if (v148)
          {
            v149 = *(*(v146 + 56) + 8 * v147);

            MEMORY[0x28223BE20](v150);
            *(&v395 - 4) = MEMORY[0x277D837D0];
            *(&v395 - 3) = &type metadata for DecodableState;
            *(&v395 - 2) = MEMORY[0x277D837E0];
            v151 = swift_getKeyPath();
            *&v403 = &v395;
            MEMORY[0x28223BE20](v151);
            *(&v395 - 4) = MEMORY[0x277D837D0];
            *(&v395 - 3) = &type metadata for DecodableState;
            *(&v395 - 2) = MEMORY[0x277D837E0];
            swift_getKeyPath();
            sub_255E38728();

            if ((v149 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_347:
              __break(1u);
LABEL_348:
              __break(1u);
LABEL_349:
              __break(1u);
LABEL_350:
              __break(1u);
LABEL_351:
              __break(1u);
LABEL_352:
              __break(1u);
LABEL_353:
              __break(1u);
              return result;
            }

            v19 = v409;
            v36 = v404;
            if (v149 >= *(v416 + 16))
            {
              goto LABEL_351;
            }

            v417 = *(v416 + 8 * v149 + 32);

            goto LABEL_136;
          }
        }

        v172 = *(v27 + *(*v27 + 120));
        if (v172)
        {
          (*(*v172 + 248))(&v417, &v420);
        }

        else
        {
          v417 = 0xF000000000000007;
        }

        v19 = v409;
LABEL_136:
        v175 = v417;
        goto LABEL_137;
      }

      if (*(v27 + qword_27F7E85F8))
      {
        v117 = v34;
        v118 = qword_27F7E8600;
        *&v403 = *(v27 + qword_27F7E85F8);
        swift_beginAccess();
        v119 = *(v27 + v118);
        v402 = *(v119 + 16);
        sub_255D5C258(v35, v117, v36, 1);
        v404 = v36;
        sub_255D34858(v36);

        if (v402 && (v120 = sub_255D3CA20(v35, v117), (v121 & 1) != 0))
        {
          v122 = *(v119 + 56) + 32 * v120;
          v124 = *v122;
          v123 = *(v122 + 8);
          v125 = *(v122 + 16);
          LODWORD(v402) = *(v122 + 24);
          swift_endAccess();
          sub_255D5C258(v124, v123, v125, v402);
          v399 = v124;
          v400 = v123;
          v401 = v125;
          v126 = v125;
          v127 = v402;
          v128 = v413;
          sub_255DDEBF8(v403, v124, v123, v126, v402, &v420);
          if (!v128)
          {
            v413 = 0;

            sub_255D4DE84(v399, v400, v401, v127);
            v159 = v420;
            v36 = v404;
            goto LABEL_115;
          }

          sub_255D4DE84(v399, v400, v401, v127);
          v413 = 0;
          v34 = v405;
        }

        else
        {
          swift_endAccess();

          v34 = v117;
        }

        v36 = v404;
      }

      else
      {
        sub_255D5C258(v35, v34, v36, 1);
        sub_255D34858(v36);
      }

      sub_255DE3530(v35, v34, &v420);
      v159 = v420;
LABEL_115:
      if ((~v159 & 0xF000000000000007) != 0)
      {
        v163 = v413;
        sub_255DE08EC(v159, v27, v36, &v418);
        if (!v163)
        {
          v413 = 0;
          sub_255D5C324(v159);
          sub_255D2F870(v36);

          sub_255D4DE84(v35, v405, v36, 1);
          v35 = v418;
          goto LABEL_82;
        }

        sub_255D5C324(v159);
        sub_255D2F870(v36);

        v413 = 0;
        v161 = v405;
        goto LABEL_140;
      }

      sub_255D5C33C();
      v160 = swift_allocError();
      v161 = v405;
      *v162 = v35;
      *(v162 + 8) = v161;
      *(v162 + 16) = &type metadata for DecodableState;
      *(v162 + 32) = 0;
      swift_willThrow();

      sub_255D2F870(v36);
LABEL_139:

      v413 = 0;
LABEL_140:

      sub_255D4DE84(v35, v161, v36, 1);
      v23 = v412;
LABEL_33:
      v420 = v23;
      v421 = v24;
      a1 = v411;
      v82 = *(*v411 + 112);
      swift_beginAccess();
      v83 = *(a1 + v82);
      if (*(v83 + 16))
      {

        v84 = sub_255D3CA20(v23, v24);
        if (v85)
        {
          v86 = *(*(v83 + 56) + 8 * v84);

          MEMORY[0x28223BE20](v87);
          *(&v395 - 4) = MEMORY[0x277D837D0];
          *(&v395 - 3) = &type metadata for DecodableState;
          *(&v395 - 2) = MEMORY[0x277D837E0];
          v18 = swift_getKeyPath();
          MEMORY[0x28223BE20](v18);
          *(&v395 - 4) = MEMORY[0x277D837D0];
          *(&v395 - 3) = &type metadata for DecodableState;
          *(&v395 - 2) = MEMORY[0x277D837E0];
          v19 = swift_getKeyPath();
          a1 = v411;
          sub_255E38728();

          if ((v86 & 0x8000000000000000) != 0)
          {
            goto LABEL_336;
          }

          v19 = v409;
          if (v86 >= *(v418 + 16))
          {
            goto LABEL_338;
          }

          v419 = *(v418 + 8 * v86 + 32);

          goto LABEL_52;
        }
      }

      v94 = *(a1 + *(*a1 + 120));
      if (v94)
      {
        (*(*v94 + 248))(&v419, &v420);
      }

      else
      {
        v419 = 0xF000000000000007;
      }

      v19 = v409;
LABEL_52:
      v35 = v419;
LABEL_53:
      if ((~v35 & 0xF000000000000007) == 0)
      {
        sub_255D5C324(v35);
        sub_255D5C33C();
        swift_allocError();
        v382 = v412;
        *v383 = v412;
        *(v383 + 8) = v24;
        *(v383 + 16) = MEMORY[0x277D837D0];
        *(v383 + 32) = 0;
        swift_willThrow();

        v384 = v382;
LABEL_321:
        v387 = v24;
        v388 = v407;
        goto LABEL_322;
      }

      sub_255D5C324(v35);
      v96 = v35 >> 61;
      if ((v35 >> 61) <= 1)
      {
        v100 = v19;
        if (!v96)
        {
          v102 = *(v35 + 16);
          v101 = *(v35 + 24);

          sub_255D5C324(v35);
          sub_255D38090(v412, v24, v407, 1);
          v53 = v102;
          v24 = v101;
LABEL_76:
          v20 = v410;
          v19 = v100;
          goto LABEL_77;
        }

        v420 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v103 = sub_255E3AC28();
        v105 = v104;
        sub_255D5C324(v35);
        v106 = v412;
        v107 = v24;
        v108 = v407;
LABEL_75:
        sub_255D38090(v106, v107, v108, 1);
        v53 = v103;
        v24 = v105;
        goto LABEL_76;
      }

      if (v96 == 2)
      {
        v420 = 0;
        v421 = 0xE000000000000000;
        sub_255E3A7A8();
      }

      else
      {
        if (v96 != 3)
        {
          sub_255D7B470();
          swift_allocError();
          *v389 = v35;
          v389[1] = MEMORY[0x277D837D0];
          swift_willThrow();
          v384 = v412;
          goto LABEL_321;
        }

        v97 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v420 = 0;
        v421 = 0xE000000000000000;
        if (v97)
        {
          v98 = 1702195828;
        }

        else
        {
          v98 = 0x65736C6166;
        }

        if (v97)
        {
          v99 = 0xE400000000000000;
        }

        else
        {
          v99 = 0xE500000000000000;
        }

        MEMORY[0x259C4E8F0](v98, v99);
      }

      sub_255D5C324(v35);
      sub_255D38090(v412, v24, v407, 1);
      v53 = v420;
      v24 = v421;
      v20 = v410;
LABEL_77:
      v425 = v17;
      v115 = *(v17 + 16);
      v114 = *(v17 + 24);
      v18 = v115 + 1;
      if (v115 >= v114 >> 1)
      {
        sub_255DE5D20((v114 > 1), v115 + 1, 1);
        v20 = v410;
        v17 = v425;
      }

      v21 = (v21 + 1);
      *(v17 + 16) = v18;
      v116 = v17 + 16 * v115;
      *(v116 + 32) = v53;
      *(v116 + 40) = v24;
      v22 += 32;
      if (v19 == v21)
      {
        goto LABEL_176;
      }
    }
  }

  v404 = v11;
  v405 = v9;
  result = sub_255DDEDA0(a1, v12, v13, v14, v15 & 1);
  if (v2)
  {
    return result;
  }

  v187 = result;
  v188 = v186;
  v401 = v8;
  v413 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83D0, &qword_255E552B0);
  a1 = v404;
  sub_255E38648();
  *&v422 = v187;
  *(&v422 + 1) = v188;
  sub_255DE373C();
  sub_255D38950(&qword_27F7E83E0, &qword_27F7E83C8, &qword_255E552A8, MEMORY[0x277D85AC0]);
  v19 = &v422;
  v189 = sub_255E3A488();
  v21 = MEMORY[0x277D84F90];
  v410 = *(v189 + 16);
  if (v410)
  {
    a1 = 0;
    v409 = v412 + 16;
    v407 = (v412 + 8);
    v18 = 15;
    v408 = v188;
    v406 = v187;
    while (a1 < *(v189 + 16))
    {
      v190 = v189;
      (*(v412 + 16))(v6, v189 + ((*(v412 + 80) + 32) & ~*(v412 + 80)) + *(v412 + 72) * a1, v4);
      v19 = v6;
      if (sub_255E38668() >> 14 < v18 >> 14)
      {
        goto LABEL_335;
      }

      v191 = sub_255E3A618();
      v192 = MEMORY[0x259C4E8B0](v191);
      v194 = v193;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_255DE5480(0, v21[2] + 1, 1, v21);
      }

      v196 = v21[2];
      v195 = v21[3];
      if (v196 >= v195 >> 1)
      {
        v21 = sub_255DE5480((v195 > 1), v196 + 1, 1, v21);
      }

      v21[2] = v196 + 1;
      v197 = &v21[4 * v196];
      v197[4] = v192;
      v197[5] = v194;
      v197[6] = 0;
      *(v197 + 56) = 0;
      swift_getKeyPath();
      sub_255E38658();

      v198 = MEMORY[0x259C4E8B0](v422, *(&v422 + 1), v423, v424);
      v200 = v199;

      v201 = v413;
      sub_255DE46E4(&v422, 0xFuLL, v198, v200, &unk_2867F0990, sub_255DEDD6C, sub_255D77678, &unk_2867F09B8);
      v413 = v201;
      if (v201)
      {

        (*v407)(v6, v4);
        (v401[1])(v404, v405);
      }

      v202 = v422;
      v203 = v423;
      v204 = v424;
      v206 = v21[2];
      v205 = v21[3];
      v207 = v21;
      if (v206 >= v205 >> 1)
      {
        v403 = v422;
        v210 = sub_255DE5480((v205 > 1), v206 + 1, 1, v21);
        v202 = v403;
        v207 = v210;
      }

      v207[2] = v206 + 1;
      v21 = v207;
      v208 = &v207[4 * v206];
      *(v208 + 2) = v202;
      ++a1;
      v208[6] = v203;
      *(v208 + 56) = v204;
      v19 = v6;
      sub_255E38668();
      v18 = v209;
      (*v407)(v6, v4);
      v188 = v408;
      v187 = v406;
      v189 = v190;
      if (v410 == a1)
      {
        goto LABEL_179;
      }
    }

LABEL_334:
    __break(1u);
LABEL_335:
    __break(1u);
LABEL_336:
    __break(1u);
LABEL_337:
    __break(1u);
LABEL_338:
    __break(1u);
LABEL_339:
    __break(1u);
LABEL_340:
    __break(1u);
LABEL_341:
    __break(1u);
LABEL_342:
    __break(1u);
LABEL_343:
    __break(1u);
    goto LABEL_344;
  }

  v18 = 15;
LABEL_179:

  v212 = HIBYTE(v188) & 0xF;
  if ((v188 & 0x2000000000000000) == 0)
  {
    v212 = v187 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v212 < v18 >> 14)
  {
LABEL_344:
    __break(1u);
    goto LABEL_345;
  }

  v213 = sub_255E3A618();
  v215 = v214;
  v217 = v216;
  v219 = v218;

  v18 = MEMORY[0x259C4E8B0](v213, v215, v217, v219);
  v19 = v220;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a1 = v411;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_345:
    v21 = sub_255DE5480(0, v21[2] + 1, 1, v21);
  }

  v222 = v21;
  v223 = v21[2];
  v224 = v222[3];
  v410 = v223 + 1;
  if (v223 >= v224 >> 1)
  {
    v222 = sub_255DE5480((v224 > 1), v410, 1, v222);
  }

  v407 = v222;
  v225 = v410;
  v222[2] = v410;
  v226 = &v222[4 * v223];
  v226[4] = v18;
  v226[5] = v19;
  v226[6] = 0;
  *(v226 + 56) = 0;
  v415[0] = MEMORY[0x277D84F90];
  v19 = v415;
  sub_255DE5D20(0, v225, 0);
  v227 = v407;
  v21 = 0;
  v412 = v415[0];
  v406 = qword_27F7E85F8;
  *&v403 = qword_27F7E8600;
  for (i = v407 + 7; ; i += 32)
  {
    if (v21 >= v227[2])
    {
      goto LABEL_333;
    }

    v229 = *(i - 3);
    v230 = *(i - 2);
    if (*i)
    {
      break;
    }

    v261 = *(i - 3);

LABEL_256:
    v415[0] = v412;
    v320 = *(v412 + 16);
    v319 = *(v412 + 24);
    v18 = v320 + 1;
    if (v320 >= v319 >> 1)
    {
      v19 = v415;
      sub_255DE5D20((v319 > 1), v320 + 1, 1);
      v227 = v407;
      v412 = v415[0];
    }

    v21 = (v21 + 1);
    v321 = v412;
    *(v412 + 16) = v18;
    v322 = v321 + 16 * v320;
    *(v322 + 32) = v261;
    *(v322 + 40) = v230;
    if (v410 == v21)
    {

      v420 = v412;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B70, &qword_255E3EF60);
      sub_255D38950(&qword_27F7E6B78, &qword_27F7E6B70, &qword_255E3EF60, MEMORY[0x277D83958]);
      v211 = sub_255E3A498();

      (v401[1])(v404, v405);
      return v211;
    }
  }

  v231 = *(i - 1);
  v409 = *(i - 3);
  if ((~v231 & 0xF000000000000007) == 0)
  {
    v232 = *(a1 + v406);
    if (!v232)
    {

      sub_255D34858(v231);
      goto LABEL_214;
    }

    v233 = v403;
    swift_beginAccess();
    v234 = *(a1 + v233);
    v235 = v231;
    v236 = *(v234 + 16);
    v237 = v235;
    sub_255D3E5D8(v229, v230, v235, 1);

    if (!v236 || (v238 = sub_255D3CA20(v229, v230), (v239 & 1) == 0))
    {
      swift_endAccess();

      v231 = v237;
      goto LABEL_214;
    }

    v408 = v232;
    v240 = *(v234 + 56) + 32 * v238;
    v241 = *v240;
    v242 = *(v240 + 8);
    v243 = *(v240 + 16);
    v19 = *(v240 + 24);
    swift_endAccess();
    if ((v19 & 1) == 0)
    {
      sub_255D5C258(v241, v242, v243, 0);

      v414[0] = v241;
      v231 = v237;
      goto LABEL_233;
    }

    v402 = v242;
    v400 = v243;
    v244 = (~v243 & 0xF000000000000007) == 0;
    v231 = v237;
    if (!v244)
    {
      v323 = v408;
      v324 = *(v408 + qword_27F7E85F8);
      v325 = v402;
      if (v324)
      {
        v326 = qword_27F7E8600;
        swift_beginAccess();
        v327 = *(v323 + v326);
        v328 = *(v327 + 16);
        v329 = v325;
        v330 = v400;
        sub_255D5C258(v241, v329, v400, 1);
        v331 = v330;
        v332 = v402;
        sub_255D34858(v331);
        v399 = v324;

        if (v328 && (v333 = sub_255D3CA20(v241, v332), (v334 & 1) != 0))
        {
          v335 = *(v327 + 56) + 32 * v333;
          v336 = *v335;
          v398 = *(v335 + 8);
          v337 = *(v335 + 16);
          v338 = *(v335 + 24);
          swift_endAccess();
          sub_255D5C258(v336, v398, v337, v338);
          v396 = v336;
          v339 = v336;
          v340 = v398;
          v397 = v337;
          v341 = v413;
          sub_255DDEBF8(v399, v339, v398, v337, v338, &v420);
          if (!v341)
          {
            v413 = 0;

            sub_255D4DE84(v396, v340, v397, v338);
            v369 = v420;
            a1 = v411;
            v323 = v408;
LABEL_290:
            if ((~v369 & 0xF000000000000007) != 0)
            {
              v19 = v400;
              v372 = v413;
              sub_255DE08EC(v369, v323, v400, &v425);
              if (!v372)
              {
                v413 = 0;
                sub_255D5C324(v369);
                sub_255D2F870(v19);

                sub_255D4DE84(v241, v402, v19, 1);
                v241 = v425;
                v414[0] = v425;
                goto LABEL_233;
              }

              sub_255D5C324(v369);
              sub_255D2F870(v19);

              v413 = 0;
              v252 = v402;
            }

            else
            {
              sub_255D5C33C();
              v370 = swift_allocError();
              v252 = v402;
              *v371 = v241;
              *(v371 + 8) = v252;
              *(v371 + 16) = &type metadata for DecodableState;
              *(v371 + 32) = 0;
              swift_willThrow();

              v19 = v400;
              sub_255D2F870(v400);

              v413 = 0;
            }

LABEL_294:

            sub_255D4DE84(v241, v252, v19, 1);
            v229 = v409;
LABEL_214:
            v420 = v229;
            v421 = v230;
            v294 = *(*a1 + 112);
            swift_beginAccess();
            v295 = *(a1 + v294);
            if (*(v295 + 16))
            {

              v296 = sub_255D3CA20(v229, v230);
              if (v297)
              {
                v298 = *(*(v295 + 56) + 8 * v296);

                MEMORY[0x28223BE20](v299);
                v300 = MEMORY[0x277D837D0];
                *(&v395 - 4) = MEMORY[0x277D837D0];
                *(&v395 - 3) = &type metadata for DecodableState;
                *(&v395 - 2) = MEMORY[0x277D837E0];
                v18 = swift_getKeyPath();
                MEMORY[0x28223BE20](v18);
                *(&v395 - 4) = v300;
                *(&v395 - 3) = &type metadata for DecodableState;
                *(&v395 - 2) = MEMORY[0x277D837E0];
                v19 = swift_getKeyPath();
                a1 = v411;
                sub_255E38728();

                if ((v298 & 0x8000000000000000) != 0)
                {
                  goto LABEL_340;
                }

                if (v298 >= *(v425 + 16))
                {
                  goto LABEL_342;
                }

                v414[0] = *(v425 + 8 * v298 + 32);

                goto LABEL_232;
              }
            }

            v19 = *(a1 + *(*a1 + 120));
            if (v19)
            {
              (*(*v19 + 248))(v414, &v420);
            }

            else
            {
              v414[0] = 0xF000000000000007;
            }

LABEL_232:
            v241 = v414[0];
LABEL_233:
            if ((~v241 & 0xF000000000000007) != 0)
            {

              sub_255D5C324(v241);
              v309 = v241 >> 61;
              if ((v241 >> 61) > 1)
              {
                if (v309 == 2)
                {
                  v420 = 0;
                  v421 = 0xE000000000000000;
                  sub_255E3A7A8();
LABEL_248:
                  sub_255D5C324(v241);
                  sub_255D38090(v409, v230, v231, 1);
                  v261 = v420;
                  v230 = v421;
                  goto LABEL_255;
                }

                if (v309 == 3)
                {
                  v310 = *((v241 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v420 = 0;
                  v421 = 0xE000000000000000;
                  if (v310)
                  {
                    v311 = 1702195828;
                  }

                  else
                  {
                    v311 = 0x65736C6166;
                  }

                  if (v310)
                  {
                    v312 = 0xE400000000000000;
                  }

                  else
                  {
                    v312 = 0xE500000000000000;
                  }

                  v19 = &v420;
                  MEMORY[0x259C4E8F0](v311, v312);

                  goto LABEL_248;
                }

                sub_255D7B470();
                swift_allocError();
                *v394 = v241;
                v394[1] = MEMORY[0x277D837D0];
                swift_willThrow();
                v393 = v409;
LABEL_326:
                sub_255D38090(v393, v230, v231, 1);

                goto LABEL_328;
              }

              if (!v309)
              {
                v19 = *(v241 + 16);
                v313 = *(v241 + 24);

                sub_255D5C324(v241);
                sub_255D38090(v409, v230, v231, 1);
                v261 = v19;
                v230 = v313;
LABEL_255:
                v227 = v407;
                goto LABEL_256;
              }

              v420 = *((v241 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v314 = sub_255E3AC28();
              v19 = v315;
              sub_255D5C324(v241);
LABEL_254:
              sub_255D38090(v409, v230, v231, 1);
              v261 = v314;
              v230 = v19;
              goto LABEL_255;
            }

            sub_255D5C324(v241);
            sub_255D5C33C();
            swift_allocError();
            v390 = v409;
            *v391 = v409;
            *(v391 + 8) = v230;
            *(v391 + 16) = MEMORY[0x277D837D0];
            *(v391 + 32) = 0;
            swift_willThrow();

LABEL_325:
            v393 = v390;
            goto LABEL_326;
          }

          sub_255D4DE84(v396, v340, v397, v338);
          v413 = 0;
        }

        else
        {
          swift_endAccess();
        }

        a1 = v411;
        v323 = v408;
      }

      else
      {
        v367 = v400;
        sub_255D5C258(v241, v402, v400, 1);
        v368 = v367;
        v332 = v402;
        sub_255D34858(v368);
      }

      sub_255DE3530(v241, v332, &v420);
      v369 = v420;
      goto LABEL_290;
    }

    v245 = v408;
    v246 = *(v408 + qword_27F7E85F8);
    v247 = v402;
    if (v246)
    {
      v248 = v402;
      v249 = qword_27F7E8600;
      swift_beginAccess();
      v250 = *(v245 + v249);
      v251 = *(v250 + 16);
      sub_255D5C258(v241, v248, v400, 1);
      v399 = v246;

      v252 = v248;
      if (v251 && (v253 = sub_255D3CA20(v241, v248), (v254 & 1) != 0))
      {
        v255 = *(v250 + 56) + 32 * v253;
        v257 = *v255;
        v256 = *(v255 + 8);
        v258 = *(v255 + 16);
        v259 = *(v255 + 24);
        swift_endAccess();
        sub_255D5C258(v257, v256, v258, v259);
        v397 = v257;
        v398 = v258;
        v260 = v413;
        sub_255DDEBF8(v399, v257, v256, v258, v259, &v420);
        if (!v260)
        {
          v413 = 0;

          sub_255D4DE84(v397, v256, v398, v259);
          v19 = v420;
          a1 = v411;
          v252 = v402;
          goto LABEL_279;
        }

        sub_255D4DE84(v397, v256, v398, v259);
        v413 = 0;
        a1 = v411;
        v252 = v402;
      }

      else
      {
        swift_endAccess();

        a1 = v411;
      }
    }

    else
    {

      sub_255D34858(v400);
      v252 = v247;
    }

    sub_255DE3530(v241, v252, &v419);
    v19 = v419;
LABEL_279:
    if ((~v19 & 0xF000000000000007) != 0)
    {
      sub_255D5C30C(v19);
      sub_255D5C324(v19);

      sub_255D4DE84(v241, v252, v400, 1);
      v414[0] = v19;
      v241 = v19;
      goto LABEL_233;
    }

    sub_255D5C324(v19);
    sub_255D5C33C();
    v358 = swift_allocError();
    *v359 = v241;
    *(v359 + 8) = v252;
    *(v359 + 16) = &type metadata for DecodableState;
    *(v359 + 32) = 0;
    swift_willThrow();

    v413 = 0;
    v19 = v400;
    goto LABEL_294;
  }

  v408 = v231;
  v262 = *(a1 + v406);
  if (!v262)
  {
    v231 = v408;
    sub_255D3E5D8(v229, v230, v408, 1);
    sub_255D34858(v231);
    goto LABEL_220;
  }

  v263 = v403;
  swift_beginAccess();
  v264 = *(a1 + v263);
  v265 = *(v264 + 16);
  v266 = v230;
  v267 = v230;
  v268 = v408;
  sub_255D3E5D8(v229, v266, v408, 1);
  v269 = v268;
  v230 = v267;
  sub_255D34858(v269);
  v402 = v262;

  if (!v265 || (v270 = sub_255D3CA20(v229, v267), (v271 & 1) == 0))
  {
    swift_endAccess();

    v231 = v408;
LABEL_220:
    v420 = v229;
    v421 = v230;
    v301 = *(*a1 + 112);
    swift_beginAccess();
    v302 = *(a1 + v301);
    if (*(v302 + 16))
    {

      v303 = sub_255D3CA20(v229, v230);
      if (v304)
      {
        v305 = *(*(v302 + 56) + 8 * v303);

        MEMORY[0x28223BE20](v306);
        v307 = MEMORY[0x277D837D0];
        *(&v395 - 4) = MEMORY[0x277D837D0];
        *(&v395 - 3) = &type metadata for DecodableState;
        *(&v395 - 2) = MEMORY[0x277D837E0];
        v18 = swift_getKeyPath();
        MEMORY[0x28223BE20](v18);
        *(&v395 - 4) = v307;
        *(&v395 - 3) = &type metadata for DecodableState;
        *(&v395 - 2) = MEMORY[0x277D837E0];
        v19 = swift_getKeyPath();
        a1 = v411;
        sub_255E38728();

        if ((v305 & 0x8000000000000000) != 0)
        {
          goto LABEL_341;
        }

        if (v305 >= *(v414[0] + 16))
        {
          goto LABEL_343;
        }

        v414[0] = *(v414[0] + 8 * v305 + 32);

        goto LABEL_250;
      }
    }

    v308 = *(a1 + *(*a1 + 120));
    if (v308)
    {
      (*(*v308 + 248))(v414, &v420);
    }

    else
    {
      v414[0] = 0xF000000000000007;
    }

LABEL_250:
    v274 = v414[0];
    goto LABEL_251;
  }

  v272 = *(v264 + 56) + 32 * v270;
  v274 = *v272;
  v273 = *(v272 + 8);
  v275 = *(v272 + 16);
  v276 = *(v272 + 24);
  swift_endAccess();
  if ((v276 & 1) == 0)
  {
    sub_255D5C258(v274, v273, v275, 0);

    v231 = v408;
    goto LABEL_251;
  }

  v400 = v273;
  v277 = v402;
  v231 = v408;
  if ((~v275 & 0xF000000000000007) != 0)
  {
    v342 = *(v402 + qword_27F7E85F8);
    if (v342)
    {
      v343 = v402;
      v344 = qword_27F7E8600;
      swift_beginAccess();
      v345 = *(v343 + v344);
      v346 = *(v345 + 16);
      v347 = v400;
      sub_255D5C258(v274, v400, v275, 1);
      sub_255D34858(v275);

      if (v346 && (v348 = sub_255D3CA20(v274, v347), (v349 & 1) != 0))
      {
        v350 = *(v345 + 56) + 32 * v348;
        v351 = *v350;
        v399 = *(v350 + 8);
        v352 = *(v350 + 16);
        v353 = *(v350 + 24);
        swift_endAccess();
        sub_255D5C258(v351, v399, v352, v353);
        v396 = v351;
        v354 = v351;
        v355 = v399;
        v398 = v352;
        LODWORD(v397) = v353;
        v356 = v413;
        sub_255DDEBF8(v342, v354, v399, v352, v353, &v420);
        v231 = v408;
        if (!v356)
        {
          v413 = 0;

          sub_255D4DE84(v396, v355, v398, v397);
          v373 = v420;
          a1 = v411;
LABEL_297:
          if ((~v373 & 0xF000000000000007) != 0)
          {
            v378 = v413;
            sub_255DE08EC(v373, v402, v275, v414);
            if (!v378)
            {
              v413 = 0;
              sub_255D5C324(v373);
              sub_255D2F870(v275);

              sub_255D4DE84(v274, v400, v275, 1);
              goto LABEL_250;
            }

            sub_255D5C324(v373);
            sub_255D2F870(v275);

            v413 = 0;
            v375 = v275;
            v376 = v400;
          }

          else
          {
            sub_255D5C33C();
            v374 = swift_allocError();
            v375 = v275;
            v376 = v400;
            *v377 = v274;
            *(v377 + 8) = v376;
            *(v377 + 16) = &type metadata for DecodableState;
            *(v377 + 32) = 0;
            swift_willThrow();

            sub_255D2F870(v375);

            v413 = 0;
          }

          goto LABEL_308;
        }

        sub_255D4DE84(v396, v355, v398, v397);
        v413 = 0;
        a1 = v411;
        v357 = v400;
      }

      else
      {
        swift_endAccess();

        a1 = v411;
        v357 = v347;
        v231 = v408;
      }
    }

    else
    {
      v357 = v400;
      sub_255D5C258(v274, v400, v275, 1);
      sub_255D34858(v275);
    }

    sub_255DE3530(v274, v357, &v420);
    v373 = v420;
    goto LABEL_297;
  }

  v278 = *(v402 + qword_27F7E85F8);
  if (v278)
  {
    v279 = v402;
    v280 = qword_27F7E8600;
    swift_beginAccess();
    v281 = *(v279 + v280);
    v282 = *(v281 + 16);
    v283 = v400;
    sub_255D5C258(v274, v400, v275, 1);

    if (v282 && (v284 = sub_255D3CA20(v274, v283), (v285 & 1) != 0))
    {
      v286 = *(v281 + 56) + 32 * v284;
      v287 = *v286;
      v399 = *(v286 + 8);
      v288 = *(v286 + 16);
      v289 = *(v286 + 24);
      swift_endAccess();
      sub_255D5C258(v287, v399, v288, v289);
      v396 = v287;
      v290 = v287;
      v291 = v399;
      v398 = v288;
      LODWORD(v397) = v289;
      v292 = v413;
      sub_255DDEBF8(v278, v290, v399, v288, v289, &v420);
      v231 = v408;
      if (!v292)
      {
        v413 = 0;

        sub_255D4DE84(v396, v291, v398, v397);
        v380 = v420;
        v425 = v420;
        a1 = v411;
        goto LABEL_306;
      }

      sub_255D4DE84(v396, v291, v398, v397);
      v413 = 0;
      a1 = v411;
      v277 = v402;
      v293 = v400;
    }

    else
    {
      swift_endAccess();

      a1 = v411;
      v277 = v402;
      v293 = v283;
      v231 = v408;
    }
  }

  else
  {
    v293 = v400;

    sub_255D34858(v275);
  }

  v420 = v274;
  v421 = v293;
  v360 = *(*v277 + 112);
  swift_beginAccess();
  v361 = *(v277 + v360);
  if (*(v361 + 16))
  {

    v362 = sub_255D3CA20(v274, v400);
    if (v363)
    {
      v364 = *(*(v361 + 56) + 8 * v362);

      MEMORY[0x28223BE20](v365);
      *(&v395 - 4) = MEMORY[0x277D837D0];
      *(&v395 - 3) = &type metadata for DecodableState;
      *(&v395 - 2) = MEMORY[0x277D837E0];
      v366 = swift_getKeyPath();
      v408 = &v395;
      MEMORY[0x28223BE20](v366);
      *(&v395 - 4) = MEMORY[0x277D837D0];
      *(&v395 - 3) = &type metadata for DecodableState;
      *(&v395 - 2) = MEMORY[0x277D837E0];
      swift_getKeyPath();
      sub_255E38728();

      if ((v364 & 0x8000000000000000) != 0)
      {
        goto LABEL_352;
      }

      if (v364 >= *(v419 + 16))
      {
        goto LABEL_353;
      }

      v425 = *(v419 + 8 * v364 + 32);

      a1 = v411;
      goto LABEL_305;
    }
  }

  v379 = *(v402 + *(*v402 + 120));
  if (v379)
  {
    (*(*v379 + 248))(&v425, &v420);
  }

  else
  {
    v425 = 0xF000000000000007;
  }

LABEL_305:
  v380 = v425;
LABEL_306:
  if ((~v380 & 0xF000000000000007) == 0)
  {
    sub_255D5C324(v380);
    sub_255D5C33C();
    v413 = swift_allocError();
    v375 = v275;
    v376 = v400;
    *v381 = v274;
    *(v381 + 8) = v376;
    *(v381 + 16) = &type metadata for DecodableState;
    *(v381 + 32) = 0;
    swift_willThrow();

    v413 = 0;
LABEL_308:

    sub_255D4DE84(v274, v376, v375, 1);
    v229 = v409;
    goto LABEL_220;
  }

  sub_255D5C30C(v380);
  sub_255D5C324(v380);

  sub_255D4DE84(v274, v400, v275, 1);
  v274 = v380;
LABEL_251:
  if ((~v274 & 0xF000000000000007) == 0)
  {
    sub_255D5C33C();
    swift_allocError();
    v390 = v409;
    *v392 = v409;
    *(v392 + 8) = v230;
    *(v392 + 16) = MEMORY[0x277D837D0];
    *(v392 + 32) = 0;
    swift_willThrow();

    sub_255D2F870(v231);
    goto LABEL_325;
  }

  v316 = v413;
  v317 = sub_255DE0DFC(v274, a1, v231);
  v413 = v316;
  if (!v316)
  {
    v314 = v317;
    v19 = v318;
    sub_255D5C324(v274);
    sub_255D2F870(v231);
    goto LABEL_254;
  }

  sub_255D5C324(v274);
  sub_255D2F870(v231);
  sub_255D38090(v409, v230, v231, 1);

LABEL_328:
  (v401[1])(v404, v405);
}

unint64_t sub_255DDE830@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v9 = result;
    if ((~a4 & 0xF000000000000007) != 0)
    {

      RemoteStateStore.subscript.getter(a2, a3, &v18);
      v14 = v18;
      if ((~v18 & 0xF000000000000007) != 0)
      {
        sub_255DDFE4C(v18, v9, a4, a6);
        sub_255D5C324(v14);
      }

      else
      {
        sub_255D5C33C();
        swift_allocError();
        *v15 = a2;
        *(v15 + 8) = a3;
        *(v15 + 16) = &type metadata for NumericValue;
        *(v15 + 32) = 0;
        swift_willThrow();
      }

      return sub_255D2F870(a4);
    }

    else
    {
      RemoteStateStore.subscript.getter(a2, a3, &v17);
      v11 = v17;
      if ((~v17 & 0xF000000000000007) == 0)
      {
        sub_255D5C324(v17);
LABEL_5:
        sub_255D5C33C();
        swift_allocError();
        *v12 = a2;
        *(v12 + 8) = a3;
        *(v12 + 16) = &type metadata for NumericValue;
        *(v12 + 32) = 0;
        swift_willThrow();
      }

      sub_255D5C324(v11);
      sub_255DDFAA0(v11, &v18);
      result = sub_255D5C324(v11);
      if (!v6)
      {
        v16 = v19;
        if (v19 == 255)
        {
          goto LABEL_5;
        }

        *a6 = v18;
        *(a6 + 8) = v16 & 1;
      }
    }
  }

  else
  {
    *a6 = a2;
    *(a6 + 8) = a3 & 1;
  }

  return result;
}

uint64_t sub_255DDEA10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a2;
  if (a5)
  {
    if ((~a4 & 0xF000000000000007) != 0)
    {

      RemoteStateStore.subscript.getter(v5, a3, &v16);
      v11 = v16;
      if ((~v16 & 0xF000000000000007) != 0)
      {
        v5 = sub_255DE0374(v16, a1, a4);
        sub_255D5C324(v11);
      }

      else
      {
        sub_255D5C33C();
        swift_allocError();
        *v12 = v5;
        *(v12 + 8) = a3;
        *(v12 + 16) = MEMORY[0x277D83B88];
        *(v12 + 32) = 0;
        swift_willThrow();
      }

      sub_255D2F870(a4);
    }

    else
    {
      RemoteStateStore.subscript.getter(a2, a3, &v16);
      v8 = v16;
      if ((~v16 & 0xF000000000000007) != 0)
      {

        sub_255D5C324(v8);
        if (v8 >> 61 == 1)
        {
          v5 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          sub_255D5C324(v8);
        }

        else
        {
          sub_255D7B470();
          v5 = swift_allocError();
          v13 = MEMORY[0x277D83B88];
          *v14 = v8;
          v14[1] = v13;
          swift_willThrow();
        }
      }

      else
      {
        sub_255D5C324(v16);
        sub_255D5C33C();
        swift_allocError();
        *v9 = v5;
        *(v9 + 8) = a3;
        *(v9 + 16) = MEMORY[0x277D83B88];
        *(v9 + 32) = 0;
        swift_willThrow();
      }
    }
  }

  return v5;
}

uint64_t sub_255DDEBF8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, unint64_t *a6@<X8>)
{
  if (a5)
  {
    if ((~a4 & 0xF000000000000007) != 0)
    {

      RemoteStateStore.subscript.getter(a2, a3, &v16);
      v14 = v16;
      if ((~v16 & 0xF000000000000007) != 0)
      {
        sub_255DE08EC(v16, a1, a4, a6);
        sub_255D5C324(v14);
      }

      else
      {
        sub_255D5C33C();
        swift_allocError();
        *v15 = a2;
        *(v15 + 8) = a3;
        *(v15 + 16) = &type metadata for DecodableState;
        *(v15 + 32) = 0;
        swift_willThrow();
      }

      return sub_255D2F870(a4);
    }

    else
    {
      RemoteStateStore.subscript.getter(a2, a3, &v16);
      v10 = v16;
      if ((~v16 & 0xF000000000000007) != 0)
      {
        sub_255D5C30C(v16);
        result = sub_255D5C324(v10);
        *a6 = v10;
      }

      else
      {
        sub_255D5C324(v16);
        sub_255D5C33C();
        swift_allocError();
        *v11 = a2;
        *(v11 + 8) = a3;
        *(v11 + 16) = &type metadata for DecodableState;
        *(v11 + 32) = 0;
        swift_willThrow();
      }
    }
  }

  else
  {
    *a6 = a2;
  }

  return result;
}

uint64_t sub_255DDEDA0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  if (a5)
  {
    if ((~a4 & 0xF000000000000007) != 0)
    {

      RemoteStateStore.subscript.getter(v7, a3, &v17);
      v12 = v17;
      if ((~v17 & 0xF000000000000007) != 0)
      {
        v15 = sub_255DE0DFC(v17, a1, a4);
        if (!v5)
        {
          v7 = v15;
        }

        sub_255D5C324(v12);
        sub_255D2F870(a4);
      }

      else
      {
        sub_255D5C33C();
        swift_allocError();
        *v13 = v7;
        *(v13 + 8) = a3;
        *(v13 + 16) = MEMORY[0x277D837D0];
        *(v13 + 32) = 0;
        swift_willThrow();

        sub_255D2F870(a4);
      }
    }

    else
    {
      RemoteStateStore.subscript.getter(a2, a3, &v17);
      v10 = v17;
      if ((~v17 & 0xF000000000000007) != 0)
      {

        sub_255D5C324(v10);
        v14 = sub_255D7C9F8();
        if (!v5)
        {
          v7 = v14;
        }

        sub_255D5C324(v10);
      }

      else
      {
        sub_255D5C324(v17);
        sub_255D5C33C();
        swift_allocError();
        *v11 = v7;
        *(v11 + 8) = a3;
        *(v11 + 16) = MEMORY[0x277D837D0];
        *(v11 + 32) = 0;
        swift_willThrow();
      }
    }
  }

  else
  {
  }

  return v7;
}

unint64_t sub_255DDEF98(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    v7 = result;
    if ((~a4 & 0xF000000000000007) != 0)
    {

      RemoteStateStore.subscript.getter(a2, a3, &v15);
      v11 = v15;
      if ((~v15 & 0xF000000000000007) != 0)
      {
        sub_255DE1388(v15, v7, a4);
        sub_255D5C324(v11);
      }

      else
      {
        sub_255D5C33C();
        swift_allocError();
        *v12 = a2;
        *(v12 + 8) = a3;
        *(v12 + 16) = MEMORY[0x277D839F8];
        *(v12 + 32) = 0;
        swift_willThrow();
      }

      return sub_255D2F870(a4);
    }

    else
    {
      RemoteStateStore.subscript.getter(a2, a3, &v15);
      v8 = v15;
      if ((~v15 & 0xF000000000000007) != 0)
      {

        sub_255D5C324(v8);
        if (v8 >> 61 == 1 || v8 >> 61 == 2)
        {
          return sub_255D5C324(v8);
        }

        else
        {
          sub_255D7B470();
          swift_allocError();
          v13 = MEMORY[0x277D839F8];
          *v14 = v8;
          v14[1] = v13;
          return swift_willThrow();
        }
      }

      else
      {
        sub_255D5C324(v15);
        sub_255D5C33C();
        swift_allocError();
        *v9 = a2;
        *(v9 + 8) = a3;
        *(v9 + 16) = MEMORY[0x277D839F8];
        *(v9 + 32) = 0;
        swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_255DDF1BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a2;
  if (a5)
  {
    if ((~a4 & 0xF000000000000007) != 0)
    {

      RemoteStateStore.subscript.getter(v5, a3, &v16);
      v11 = v16;
      if ((~v16 & 0xF000000000000007) != 0)
      {
        LOBYTE(v5) = sub_255DE1978(v16, a1, a4);
        sub_255D5C324(v11);
      }

      else
      {
        sub_255D5C33C();
        swift_allocError();
        *v12 = v5;
        *(v12 + 8) = a3;
        *(v12 + 16) = MEMORY[0x277D839B0];
        *(v12 + 32) = 0;
        swift_willThrow();
      }

      sub_255D2F870(a4);
    }

    else
    {
      RemoteStateStore.subscript.getter(a2, a3, &v16);
      v8 = v16;
      if ((~v16 & 0xF000000000000007) != 0)
      {

        sub_255D5C324(v8);
        if (v8 >> 61 == 3)
        {
          LOBYTE(v5) = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          sub_255D5C324(v8);
        }

        else
        {
          sub_255D7B470();
          LOBYTE(v5) = swift_allocError();
          v13 = MEMORY[0x277D839B0];
          *v14 = v8;
          v14[1] = v13;
          swift_willThrow();
        }
      }

      else
      {
        sub_255D5C324(v16);
        sub_255D5C33C();
        swift_allocError();
        *v9 = v5;
        *(v9 + 8) = a3;
        *(v9 + 16) = MEMORY[0x277D839B0];
        *(v9 + 32) = 0;
        swift_willThrow();
      }
    }
  }

  return v5 & 1;
}

unint64_t sub_255DDF3A4(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a2;
  if (a5)
  {
    if ((~a4 & 0xF000000000000007) != 0)
    {

      RemoteStateStore.subscript.getter(v5, a3, &v18);
      v13 = v18;
      if ((~v18 & 0xF000000000000007) != 0)
      {
        v5 = sub_255DE1EF4(v18, a1, a4);
        sub_255D5C324(v13);
      }

      else
      {
        sub_255D5C33C();
        swift_allocError();
        v15 = v14;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
        *v15 = v5;
        *(v15 + 8) = a3;
        *(v15 + 16) = v16;
        *(v15 + 32) = 0;
        swift_willThrow();
      }

      sub_255D2F870(a4);
    }

    else
    {
      RemoteStateStore.subscript.getter(a2, a3, &v18);
      v8 = v18;
      if ((~v18 & 0xF000000000000007) != 0)
      {

        sub_255D5C324(v8);
        v5 = sub_255DDFB40(v8);
        sub_255D5C324(v8);
      }

      else
      {
        sub_255D5C324(v18);
        sub_255D5C33C();
        swift_allocError();
        v10 = v9;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
        *v10 = v5;
        *(v10 + 8) = a3;
        *(v10 + 16) = v11;
        *(v10 + 32) = 0;
        swift_willThrow();
      }
    }
  }

  else
  {
  }

  return v5;
}

void *sub_255DDF580(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a2;
  if ((a5 & 1) == 0)
  {

    return v5;
  }

  if ((~a4 & 0xF000000000000007) != 0)
  {

    RemoteStateStore.subscript.getter(v5, a3, &v38);
    v13 = v38;
    if ((~v38 & 0xF000000000000007) != 0)
    {
      v5 = sub_255DE1F48(v38, a1, a4);
      sub_255D5C324(v13);
    }

    else
    {
      sub_255D5C33C();
      swift_allocError();
      v15 = v14;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
      *v15 = v5;
      *(v15 + 8) = a3;
      *(v15 + 16) = v16;
      *(v15 + 32) = 0;
      swift_willThrow();
    }

    sub_255D2F870(a4);
    return v5;
  }

  RemoteStateStore.subscript.getter(a2, a3, &v38);
  v8 = v38;
  if ((~v38 & 0xF000000000000007) == 0)
  {
    sub_255D5C324(v38);
    sub_255D5C33C();
    swift_allocError();
    v10 = v9;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    *v10 = v5;
    *(v10 + 8) = a3;
    *(v10 + 16) = v11;
    *(v10 + 32) = 0;
    swift_willThrow();

    return v5;
  }

  sub_255D5C324(v8);
  if (v8 >> 61 != 5)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v37 = v8;
    v37[1] = v5;
    swift_willThrow();
    return v5;
  }

  v17 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  result = sub_255E3AB08();
  v5 = result;
  v19 = 0;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v17 + 64);
  v23 = (v20 + 63) >> 6;
  v24 = result + 8;
  if (v22)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_19:
      v28 = v25 | (v19 << 6);
      v29 = (*(v17 + 48) + 16 * v28);
      v30 = *(*(v17 + 56) + 8 * v28);
      v31 = *v29;
      v32 = v29[1];
      *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v33 = (v5[6] + 16 * v28);
      *v33 = v31;
      v33[1] = v32;
      *(v5[7] + 8 * v28) = v30;
      v34 = v5[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        break;
      }

      v5[2] = v36;

      if (!v22)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v23)
      {
        sub_255D5C324(v8);
        return v5;
      }

      v27 = *(v17 + 64 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v22 = (v27 - 1) & v27;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_255DDF8C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a2;
  if (a5)
  {
    if ((~a4 & 0xF000000000000007) != 0)
    {

      RemoteStateStore.subscript.getter(v5, a3, &v18);
      v13 = v18;
      if ((~v18 & 0xF000000000000007) != 0)
      {
        v5 = sub_255DE2728(v18, a1, a4);
        sub_255D5C324(v13);
      }

      else
      {
        sub_255D5C33C();
        swift_allocError();
        v15 = v14;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8468, &qword_255E55870);
        *v15 = v5;
        *(v15 + 8) = a3;
        *(v15 + 16) = v16;
        *(v15 + 32) = 0;
        swift_willThrow();
      }

      sub_255D2F870(a4);
    }

    else
    {
      RemoteStateStore.subscript.getter(a2, a3, &v18);
      v8 = v18;
      if ((~v18 & 0xF000000000000007) != 0)
      {

        sub_255D5C324(v8);
        v5 = sub_255DDFC94(v8);
        sub_255D5C324(v8);
      }

      else
      {
        sub_255D5C324(v18);
        sub_255D5C33C();
        swift_allocError();
        v10 = v9;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8468, &qword_255E55870);
        *v10 = v5;
        *(v10 + 8) = a3;
        *(v10 + 16) = v11;
        *(v10 + 32) = 0;
        swift_willThrow();
      }
    }
  }

  else
  {
  }

  return v5;
}

unint64_t sub_255DDFAA0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >> 61 == 2)
  {
    *a2 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    *(a2 + 8) = 1;
  }

  else if (result >> 61 == 1)
  {
    *a2 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    *(a2 + 8) = 0;
  }

  else
  {
    v2 = result;
    sub_255D7B470();
    swift_allocError();
    v3 = MEMORY[0x277D839F8];
    *v4 = v2;
    v4[1] = v3;
    swift_willThrow();
  }

  return result;
}

unint64_t sub_255DDFB40(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 61 == 4)
  {
    v2 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v3 = *(v2 + 16);
    v1 = MEMORY[0x277D84F90];
    if (v3)
    {
      v11 = MEMORY[0x277D84F90];

      sub_255DE5D00(0, v3, 0);
      v1 = v11;
      v4 = *(v11 + 16);
      v5 = 32;
      do
      {
        v6 = *(v2 + v5);
        v7 = *(v11 + 24);

        if (v4 >= v7 >> 1)
        {
          sub_255DE5D00((v7 > 1), v4 + 1, 1);
        }

        *(v11 + 16) = v4 + 1;
        *(v11 + 8 * v4 + 32) = v6;
        v5 += 8;
        ++v4;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
    sub_255D7B470();
    swift_allocError();
    *v9 = v1;
    v9[1] = v8;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_255DDFC94(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 61 != 4)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
    sub_255D7B470();
    swift_allocError();
    *v11 = v1;
    v11[1] = v10;
    swift_willThrow();

    return v1;
  }

  v2 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v3 = *(v2 + 16);
  v1 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v1;
  }

  v14 = MEMORY[0x277D84F90];

  result = sub_255DE60B0(0, v3, 0);
  v5 = 0;
  v1 = v14;
  while (v5 < *(v2 + 16))
  {
    v6 = *(v2 + 8 * v5 + 32);
    result = v6 & 0x1FFFFFFFFFFFFFFFLL;
    if (v6 >> 61 != 1)
    {

      sub_255D7B470();
      swift_allocError();
      v12 = MEMORY[0x277D83B88];
      *v13 = v6;
      v13[1] = v12;
      swift_willThrow();

      return v1;
    }

    v7 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *(v14 + 16);
    v8 = *(v14 + 24);
    if (v9 >= v8 >> 1)
    {
      result = sub_255DE60B0((v8 > 1), v9 + 1, 1);
    }

    ++v5;
    *(v14 + 16) = v9 + 1;
    *(v14 + 8 * v9 + 32) = v7;
    if (v3 == v5)
    {

      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_255DDFE4C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = *(a3 + 48);
    result = StringResolvable.resolved(with:)(a2);
    if (v4)
    {
      return result;
    }

    if (a1 >> 61 == 5)
    {
      v55 = result;
      v56 = v10;
      v53 = v8;
      v54 = a4;
      v11 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
      v12 = sub_255E3AB08();
      v13 = v12;
      v14 = 0;
      v15 = 1 << *(v11 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v17 = v16 & *(v11 + 64);
      v18 = (v15 + 63) >> 6;
      v19 = v12 + 64;
      if (v17)
      {
        while (1)
        {
          v20 = __clz(__rbit64(v17));
          v17 &= v17 - 1;
LABEL_13:
          v23 = v20 | (v14 << 6);
          v24 = (*(v11 + 48) + 16 * v23);
          v25 = *(*(v11 + 56) + 8 * v23);
          v26 = *v24;
          v27 = v24[1];
          *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
          v28 = (v13[6] + 16 * v23);
          *v28 = v26;
          v28[1] = v27;
          *(v13[7] + 8 * v23) = v25;
          v29 = v13[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            break;
          }

          v13[2] = v31;

          if (!v17)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v21 = v14;
        while (1)
        {
          v14 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v14 >= v18)
          {
            if (v13[2])
            {
              v46 = sub_255D3CA20(v55, v56);
              v48 = v47;

              if (v48)
              {
                v49 = *(v13[7] + 8 * v46);

                if ((~v53 & 0xF000000000000007) == 0)
                {
                  v42 = v54;
                  v43 = v49;
                  goto LABEL_31;
                }

                sub_255DDFE4C(v49, a2, v53, v54);

                v52 = v53;
                return sub_255D2F870(v52);
              }
            }

            else
            {
            }

            sub_255D5C33C();
            swift_allocError();
            *v51 = a1;
            *(v51 + 32) = 1;
            swift_willThrow();
          }

          v22 = *(v11 + 64 + 8 * v14);
          ++v21;
          if (v22)
          {
            v20 = __clz(__rbit64(v22));
            v17 = (v22 - 1) & v22;
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_43;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v45 = a1;
    v45[1] = v44;
    swift_willThrow();
  }

  v32 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v33 = sub_255D8F9E4(a2);
  if (v34)
  {
    if (qword_27F7E5E80 == -1)
    {
LABEL_18:
      v35 = sub_255E386A8();
      __swift_project_value_buffer(v35, qword_27F8152D8);
      v36 = sub_255E38688();
      v37 = sub_255E3A848();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_255D2E000, v36, v37, "SubReference to find value, unable to resolve index", v38, 2u);
        MEMORY[0x259C4F9E0](v38, -1, -1);
      }

      sub_255D5C33C();
      swift_allocError();
      *v39 = 2;
      *(v39 + 8) = 0;
      *(v39 + 16) = 0;
      *(v39 + 24) = 0;
      *(v39 + 32) = 5;
      return swift_willThrow();
    }

LABEL_43:
    swift_once();
    goto LABEL_18;
  }

  v40 = v33;
  result = sub_255DDFB40(a1);
  if (v4)
  {
    return result;
  }

  if (v40 < 0 || v40 >= *(result + 16))
  {

    sub_255D5C33C();
    swift_allocError();
    *v50 = a1;
    *(v50 + 32) = 1;
    swift_willThrow();
  }

  v41 = *(result + 8 * v40 + 32);

  if ((~v32 & 0xF000000000000007) != 0)
  {

    sub_255DDFE4C(v41, a2, v32, a4);

    v52 = v32;
    return sub_255D2F870(v52);
  }

  v42 = a4;
  v43 = v41;
LABEL_31:
  sub_255DDFAA0(v43, v42);
}

unint64_t sub_255DE0374(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = *(a3 + 48);
    v7 = StringResolvable.resolved(with:)(a2);
    if (v3)
    {
      return a1;
    }

    if (a1 >> 61 == 5)
    {
      v50 = v6;
      v51 = v7;
      v52 = v8;
      v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
      v10 = sub_255E3AB08();
      v11 = v10;
      v12 = 0;
      v13 = 1 << *(v9 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v9 + 64);
      v16 = (v13 + 63) >> 6;
      v17 = v10 + 64;
      if (v15)
      {
        while (1)
        {
          v18 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
LABEL_13:
          v21 = v18 | (v12 << 6);
          v22 = (*(v9 + 48) + 16 * v21);
          v23 = *(*(v9 + 56) + 8 * v21);
          v24 = *v22;
          v25 = v22[1];
          *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
          v26 = (v11[6] + 16 * v21);
          *v26 = v24;
          v26[1] = v25;
          *(v11[7] + 8 * v21) = v23;
          v27 = v11[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            break;
          }

          v11[2] = v29;

          if (!v15)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v19 = v12;
        while (1)
        {
          v12 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v12 >= v16)
          {
            if (v11[2])
            {
              v42 = sub_255D3CA20(v51, v52);
              v44 = v43;

              if (v44)
              {
                a1 = *(v11[7] + 8 * v42);

                v30 = v50;
                if ((~v50 & 0xF000000000000007) == 0)
                {
                  if (a1 >> 61 != 1)
                  {
                    goto LABEL_40;
                  }

LABEL_26:
                  a1 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

                  return a1;
                }

                a1 = sub_255DE0374(a1, a2, v50);
LABEL_42:

                sub_255D2F870(v30);
                return a1;
              }
            }

            else
            {
            }

            sub_255D5C33C();
            swift_allocError();
            *v46 = a1;
            *(v46 + 32) = 1;
            swift_willThrow();
            goto LABEL_37;
          }

          v20 = *(v9 + 64 + 8 * v12);
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v15 = (v20 - 1) & v20;
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_45;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v41 = a1;
    v41[1] = v40;
    swift_willThrow();
LABEL_37:

    return a1;
  }

  v30 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v31 = sub_255D8F9E4(a2);
  if (v32)
  {
    if (qword_27F7E5E80 == -1)
    {
LABEL_18:
      v33 = sub_255E386A8();
      __swift_project_value_buffer(v33, qword_27F8152D8);
      v34 = sub_255E38688();
      v35 = sub_255E3A848();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_255D2E000, v34, v35, "SubReference to find value, unable to resolve index", v36, 2u);
        MEMORY[0x259C4F9E0](v36, -1, -1);
      }

      sub_255D5C33C();
      a1 = swift_allocError();
      *v37 = 2;
      *(v37 + 8) = 0;
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = 5;
      swift_willThrow();
      return a1;
    }

LABEL_45:
    swift_once();
    goto LABEL_18;
  }

  v38 = v31;
  v39 = sub_255DDFB40(a1);
  if (v3)
  {
    return a1;
  }

  if (v38 < 0 || v38 >= *(v39 + 16))
  {

    sub_255D5C33C();
    swift_allocError();
    *v45 = a1;
    *(v45 + 32) = 1;
    swift_willThrow();
    goto LABEL_37;
  }

  a1 = *(v39 + 8 * v38 + 32);

  if ((~v30 & 0xF000000000000007) != 0)
  {

    a1 = sub_255DE0374(a1, a2, v30);
    goto LABEL_42;
  }

  if (a1 >> 61 == 1)
  {
    goto LABEL_26;
  }

LABEL_40:
  sub_255D7B470();
  swift_allocError();
  v48 = MEMORY[0x277D83B88];
  *v49 = a1;
  v49[1] = v48;
  swift_willThrow();
  return a1;
}

uint64_t sub_255DE08EC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = *(a3 + 48);
    result = StringResolvable.resolved(with:)(a2);
    if (v4)
    {
      return result;
    }

    if (a1 >> 61 == 5)
    {
      v53 = result;
      v54 = v10;
      v51 = v8;
      v52 = a4;
      v11 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
      v12 = sub_255E3AB08();
      v13 = v12;
      v14 = 0;
      v15 = 1 << *(v11 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v17 = v16 & *(v11 + 64);
      v18 = (v15 + 63) >> 6;
      v19 = v12 + 64;
      if (v17)
      {
        while (1)
        {
          v20 = __clz(__rbit64(v17));
          v17 &= v17 - 1;
LABEL_13:
          v23 = v20 | (v14 << 6);
          v24 = (*(v11 + 48) + 16 * v23);
          v25 = *(*(v11 + 56) + 8 * v23);
          v26 = *v24;
          v27 = v24[1];
          *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
          v28 = (v13[6] + 16 * v23);
          *v28 = v26;
          v28[1] = v27;
          *(v13[7] + 8 * v23) = v25;
          v29 = v13[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            break;
          }

          v13[2] = v31;

          if (!v17)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v21 = v14;
        while (1)
        {
          v14 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v14 >= v18)
          {
            if (v13[2])
            {
              v44 = sub_255D3CA20(v53, v54);
              v46 = v45;

              if (v46)
              {
                v47 = *(v13[7] + 8 * v44);

                if ((~v51 & 0xF000000000000007) == 0)
                {
                  *v52 = v47;
                  return result;
                }

                sub_255DE08EC(v47, a2, v51, v52);

                v50 = v51;
                return sub_255D2F870(v50);
              }
            }

            else
            {
            }

            sub_255D5C33C();
            swift_allocError();
            *v49 = a1;
            *(v49 + 32) = 1;
            swift_willThrow();
          }

          v22 = *(v11 + 64 + 8 * v14);
          ++v21;
          if (v22)
          {
            v20 = __clz(__rbit64(v22));
            v17 = (v22 - 1) & v22;
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_42;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v43 = a1;
    v43[1] = v42;
    swift_willThrow();
  }

  v32 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v33 = sub_255D8F9E4(a2);
  if (v34)
  {
    if (qword_27F7E5E80 == -1)
    {
LABEL_18:
      v35 = sub_255E386A8();
      __swift_project_value_buffer(v35, qword_27F8152D8);
      v36 = sub_255E38688();
      v37 = sub_255E3A848();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_255D2E000, v36, v37, "SubReference to find value, unable to resolve index", v38, 2u);
        MEMORY[0x259C4F9E0](v38, -1, -1);
      }

      sub_255D5C33C();
      swift_allocError();
      *v39 = 2;
      *(v39 + 8) = 0;
      *(v39 + 16) = 0;
      *(v39 + 24) = 0;
      *(v39 + 32) = 5;
      return swift_willThrow();
    }

LABEL_42:
    swift_once();
    goto LABEL_18;
  }

  v40 = v33;
  result = sub_255DDFB40(a1);
  if (v4)
  {
    return result;
  }

  if (v40 < 0 || v40 >= *(result + 16))
  {

    sub_255D5C33C();
    swift_allocError();
    *v48 = a1;
    *(v48 + 32) = 1;
    swift_willThrow();
  }

  v41 = *(result + 8 * v40 + 32);

  if ((~v32 & 0xF000000000000007) != 0)
  {

    sub_255DE08EC(v41, a2, v32, a4);

    v50 = v32;
    return sub_255D2F870(v50);
  }

  *a4 = v41;
  return result;
}

unint64_t sub_255DE0DFC(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = *(a3 + 48);
    v7 = StringResolvable.resolved(with:)(a2);
    if (v3)
    {
      return a1;
    }

    if (a1 >> 61 == 5)
    {
      v51 = v7;
      v52 = v8;
      v50 = v6;
      v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
      v10 = sub_255E3AB08();
      v11 = v10;
      v12 = 0;
      v13 = 1 << *(v9 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v9 + 64);
      v16 = (v13 + 63) >> 6;
      v17 = v10 + 64;
      if (v15)
      {
        while (1)
        {
          v18 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
LABEL_13:
          v21 = v18 | (v12 << 6);
          v22 = (*(v9 + 48) + 16 * v21);
          v23 = *(*(v9 + 56) + 8 * v21);
          v24 = *v22;
          v25 = v22[1];
          *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
          v26 = (v11[6] + 16 * v21);
          *v26 = v24;
          v26[1] = v25;
          *(v11[7] + 8 * v21) = v23;
          v27 = v11[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            break;
          }

          v11[2] = v29;

          if (!v15)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v19 = v12;
        while (1)
        {
          v12 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v12 >= v16)
          {
            if (v11[2])
            {
              v43 = sub_255D3CA20(v51, v52);
              v45 = v44;

              if (v45)
              {
                v46 = *(v11[7] + 8 * v43);

                if ((~v50 & 0xF000000000000007) == 0)
                {
                  goto LABEL_30;
                }

                a1 = sub_255DE0DFC(v46, a2, v50);

                sub_255D2F870(v50);
                return a1;
              }
            }

            else
            {
            }

            sub_255D5C33C();
            swift_allocError();
            *v48 = a1;
            *(v48 + 32) = 1;
            swift_willThrow();
            goto LABEL_35;
          }

          v20 = *(v9 + 64 + 8 * v12);
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v15 = (v20 - 1) & v20;
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_41;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v42 = a1;
    v42[1] = v41;
    swift_willThrow();
LABEL_35:

    return a1;
  }

  v30 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v31 = sub_255D8F9E4(a2);
  if (v32)
  {
    if (qword_27F7E5E80 == -1)
    {
LABEL_18:
      v33 = sub_255E386A8();
      __swift_project_value_buffer(v33, qword_27F8152D8);
      v34 = sub_255E38688();
      v35 = sub_255E3A848();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_255D2E000, v34, v35, "SubReference to find value, unable to resolve index", v36, 2u);
        MEMORY[0x259C4F9E0](v36, -1, -1);
      }

      sub_255D5C33C();
      a1 = swift_allocError();
      *v37 = 2;
      *(v37 + 8) = 0;
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = 5;
      swift_willThrow();
      return a1;
    }

LABEL_41:
    swift_once();
    goto LABEL_18;
  }

  v38 = v31;
  v39 = sub_255DDFB40(a1);
  if (v3)
  {
    return a1;
  }

  if (v38 < 0 || v38 >= *(v39 + 16))
  {

    sub_255D5C33C();
    swift_allocError();
    *v47 = a1;
    *(v47 + 32) = 1;
    swift_willThrow();
    goto LABEL_35;
  }

  v40 = *(v39 + 8 * v38 + 32);

  if ((~v30 & 0xF000000000000007) != 0)
  {

    a1 = sub_255DE0DFC(v40, a2, v30);

    sub_255D2F870(v30);
  }

  else
  {
LABEL_30:
    a1 = sub_255D7C9F8();
  }

  return a1;
}

double sub_255DE1388(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    v31 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v32 = sub_255D8F9E4(a2);
    if (v33)
    {
      if (qword_27F7E5E80 == -1)
      {
LABEL_18:
        v34 = sub_255E386A8();
        __swift_project_value_buffer(v34, qword_27F8152D8);
        v35 = sub_255E38688();
        v36 = sub_255E3A848();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_255D2E000, v35, v36, "SubReference to find value, unable to resolve index", v37, 2u);
          MEMORY[0x259C4F9E0](v37, -1, -1);
        }

        sub_255D5C33C();
        swift_allocError();
        *v38 = 2;
        *(v38 + 8) = 0;
        *(v38 + 16) = 0;
        *(v38 + 24) = 0;
        *(v38 + 32) = 5;
LABEL_21:
        swift_willThrow();
        return v4;
      }

LABEL_51:
      swift_once();
      goto LABEL_18;
    }

    v39 = v32;
    v40 = sub_255DDFB40(a1);
    if (v3)
    {
      return v4;
    }

    if ((v39 & 0x8000000000000000) == 0 && v39 < *(v40 + 16))
    {
      v41 = *(v40 + 8 * v39 + 32);

      if ((~v31 & 0xF000000000000007) == 0)
      {
        if (v41 >> 61 == 1)
        {
          v55 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          return v55;
        }

        if (v41 >> 61 == 2)
        {
          v4 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          return v4;
        }

        sub_255D7B470();
        swift_allocError();
        v56 = MEMORY[0x277D839F8];
        *v57 = v41;
        v57[1] = v56;
        goto LABEL_21;
      }

      v4 = sub_255DE1388(v41, a2, v31);

      v51 = v31;
LABEL_44:
      sub_255D2F870(v51);
      return v4;
    }

    sub_255D5C33C();
    swift_allocError();
    *v48 = a1;
    *(v48 + 32) = 1;
    swift_willThrow();
LABEL_40:

    return v4;
  }

  v7 = *(a3 + 48);
  v8 = StringResolvable.resolved(with:)(a2);
  if (v3)
  {
    return v4;
  }

  if (a1 >> 61 != 5)
  {

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v43 = a1;
    v43[1] = v42;
    swift_willThrow();
    goto LABEL_40;
  }

  v58 = v7;
  v59 = v8;
  v60 = v9;
  v10 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  v11 = sub_255E3AB08();
  v12 = v11;
  v13 = 0;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v10 + 64);
  v17 = (v14 + 63) >> 6;
  v18 = v11 + 64;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_13:
    v22 = v19 | (v13 << 6);
    v23 = (*(v10 + 48) + 16 * v22);
    v24 = *(*(v10 + 56) + 8 * v22);
    v25 = *v23;
    v26 = v23[1];
    *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (v12[6] + 16 * v22);
    *v27 = v25;
    v27[1] = v26;
    *(v12[7] + 8 * v22) = v24;
    v28 = v12[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_50;
    }

    v12[2] = v30;
  }

  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v13 >= v17)
    {
      break;
    }

    v21 = *(v10 + 64 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v16 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  if (!v12[2])
  {

LABEL_39:
    sub_255D5C33C();
    swift_allocError();
    *v49 = a1;
    *(v49 + 32) = 1;
    swift_willThrow();
    goto LABEL_40;
  }

  v44 = sub_255D3CA20(v59, v60);
  v46 = v45;

  if ((v46 & 1) == 0)
  {

    goto LABEL_39;
  }

  v47 = *(v12[7] + 8 * v44);

  if ((~v58 & 0xF000000000000007) != 0)
  {

    v4 = sub_255DE1388(v47, a2, v58);

    v51 = v58;
    goto LABEL_44;
  }

  if (v47 >> 61 == 1)
  {
    v52 = *((v47 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    return v52;
  }

  else if (v47 >> 61 == 2)
  {
    v4 = *((v47 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    sub_255D7B470();
    swift_allocError();
    v53 = MEMORY[0x277D839F8];
    *v54 = v47;
    v54[1] = v53;
    swift_willThrow();
  }

  return v4;
}

unint64_t sub_255DE1978(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = *(a3 + 48);
    v7 = StringResolvable.resolved(with:)(a2);
    if (v3)
    {
      return a1 & 1;
    }

    if (a1 >> 61 == 5)
    {
      v49 = v6;
      v50 = v7;
      v51 = v8;
      v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
      v10 = sub_255E3AB08();
      v11 = v10;
      v12 = 0;
      v13 = 1 << *(v9 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v9 + 64);
      v16 = (v13 + 63) >> 6;
      v17 = v10 + 64;
      if (v15)
      {
        while (1)
        {
          v18 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
LABEL_13:
          v21 = v18 | (v12 << 6);
          v22 = (*(v9 + 48) + 16 * v21);
          v23 = *(*(v9 + 56) + 8 * v21);
          v24 = *v22;
          v25 = v22[1];
          *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
          v26 = (v11[6] + 16 * v21);
          *v26 = v24;
          v26[1] = v25;
          *(v11[7] + 8 * v21) = v23;
          v27 = v11[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            break;
          }

          v11[2] = v29;

          if (!v15)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v19 = v12;
        while (1)
        {
          v12 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v12 >= v16)
          {
            if (v11[2])
            {
              v41 = sub_255D3CA20(v50, v51);
              v43 = v42;

              if (v43)
              {
                a1 = *(v11[7] + 8 * v41);

                v30 = v49;
                if ((~v49 & 0xF000000000000007) == 0)
                {
                  if (a1 >> 61 != 3)
                  {
                    goto LABEL_40;
                  }

LABEL_26:
                  LOBYTE(a1) = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

                  return a1 & 1;
                }

                LOBYTE(a1) = sub_255DE1978(a1, a2, v49);
LABEL_42:

                sub_255D2F870(v30);
                return a1 & 1;
              }
            }

            else
            {
            }

            sub_255D5C33C();
            swift_allocError();
            *v45 = a1;
            *(v45 + 32) = 1;
            swift_willThrow();
            goto LABEL_37;
          }

          v20 = *(v9 + 64 + 8 * v12);
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v15 = (v20 - 1) & v20;
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_45;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v40 = a1;
    v40[1] = v39;
    swift_willThrow();
LABEL_37:

    return a1 & 1;
  }

  v30 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v31 = sub_255D8F9E4(a2);
  if (v32)
  {
    if (qword_27F7E5E80 == -1)
    {
LABEL_18:
      v33 = sub_255E386A8();
      __swift_project_value_buffer(v33, qword_27F8152D8);
      a1 = sub_255E38688();
      v34 = sub_255E3A848();
      if (os_log_type_enabled(a1, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_255D2E000, a1, v34, "SubReference to find value, unable to resolve index", v35, 2u);
        MEMORY[0x259C4F9E0](v35, -1, -1);
      }

      sub_255D5C33C();
      LOBYTE(a1) = swift_allocError();
      *v36 = 2;
      *(v36 + 8) = 0;
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      *(v36 + 32) = 5;
      swift_willThrow();
      return a1 & 1;
    }

LABEL_45:
    swift_once();
    goto LABEL_18;
  }

  v37 = v31;
  v38 = sub_255DDFB40(a1);
  if (v3)
  {
    return a1 & 1;
  }

  if (v37 < 0 || v37 >= *(v38 + 16))
  {

    sub_255D5C33C();
    swift_allocError();
    *v44 = a1;
    *(v44 + 32) = 1;
    swift_willThrow();
    goto LABEL_37;
  }

  a1 = *(v38 + 8 * v37 + 32);

  if ((~v30 & 0xF000000000000007) != 0)
  {

    LOBYTE(a1) = sub_255DE1978(a1, a2, v30);
    goto LABEL_42;
  }

  if (a1 >> 61 == 3)
  {
    goto LABEL_26;
  }

LABEL_40:
  sub_255D7B470();
  swift_allocError();
  v47 = MEMORY[0x277D839B0];
  *v48 = a1;
  v48[1] = v47;
  swift_willThrow();
  return a1 & 1;
}

uint64_t sub_255DE1F48(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    v30 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v31 = sub_255D8F9E4(a2);
    if (v32)
    {
      if (qword_27F7E5E80 == -1)
      {
LABEL_18:
        v33 = sub_255E386A8();
        __swift_project_value_buffer(v33, qword_27F8152D8);
        v34 = sub_255E38688();
        v35 = sub_255E3A848();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_255D2E000, v34, v35, "SubReference to find value, unable to resolve index", v36, 2u);
          MEMORY[0x259C4F9E0](v36, -1, -1);
        }

        sub_255D5C33C();
        a1 = swift_allocError();
        *v37 = 2;
        *(v37 + 8) = 0;
        *(v37 + 16) = 0;
        *(v37 + 24) = 0;
        *(v37 + 32) = 5;
        swift_willThrow();
        return a1;
      }

LABEL_68:
      swift_once();
      goto LABEL_18;
    }

    v38 = v31;
    v39 = sub_255DDFB40(a1);
    if (!v3)
    {
      if (v38 < 0 || v38 >= *(v39 + 16))
      {

        sub_255D5C33C();
        swift_allocError();
        *v82 = a1;
        *(v82 + 32) = 1;
        swift_willThrow();
        goto LABEL_59;
      }

      a1 = *(v39 + 8 * v38 + 32);

      if ((~v30 & 0xF000000000000007) != 0)
      {

        a1 = sub_255DE1F48(a1, a2, v30);
        sub_255D2F870(v30);
        goto LABEL_64;
      }

      if (a1 >> 61 == 5)
      {
        v40 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
        result = sub_255E3AB08();
        a1 = result;
        v42 = 0;
        v43 = 1 << *(v40 + 32);
        v44 = -1;
        if (v43 < 64)
        {
          v44 = ~(-1 << v43);
        }

        v45 = v44 & *(v40 + 64);
        v46 = (v43 + 63) >> 6;
        v47 = result + 64;
        if (!v45)
        {
          goto LABEL_30;
        }

        while (1)
        {
          v48 = __clz(__rbit64(v45));
          for (v45 &= v45 - 1; ; v45 = (v50 - 1) & v50)
          {
            v51 = v48 | (v42 << 6);
            v52 = (*(v40 + 48) + 16 * v51);
            v53 = *(*(v40 + 56) + 8 * v51);
            v54 = *v52;
            v55 = v52[1];
            *(v47 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
            v56 = (*(a1 + 48) + 16 * v51);
            *v56 = v54;
            v56[1] = v55;
            *(*(a1 + 56) + 8 * v51) = v53;
            v57 = *(a1 + 16);
            v28 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v28)
            {
              goto LABEL_71;
            }

            *(a1 + 16) = v58;

            if (v45)
            {
              break;
            }

LABEL_30:
            v49 = v42;
            do
            {
              v42 = v49 + 1;
              if (__OFADD__(v49, 1))
              {
                __break(1u);
                goto LABEL_70;
              }

              if (v42 >= v46)
              {
                goto LABEL_64;
              }

              v50 = *(v40 + 64 + 8 * v42);
              ++v49;
            }

            while (!v50);
            v48 = __clz(__rbit64(v50));
          }
        }
      }

LABEL_62:
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
      sub_255D7B470();
      swift_allocError();
      *v85 = a1;
      v85[1] = v84;
      swift_willThrow();
    }

    return a1;
  }

  v6 = *(a3 + 48);
  v7 = StringResolvable.resolved(with:)(a2);
  if (v3)
  {
    return a1;
  }

  if (a1 >> 61 != 5)
  {

    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v60 = a1;
    v60[1] = v59;
    swift_willThrow();
LABEL_59:

    return a1;
  }

  v87 = v7;
  v88 = v8;
  v86 = v6;
  v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  v10 = sub_255E3AB08();
  v11 = v10;
  v12 = 0;
  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v9 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = v10 + 64;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_13:
    v21 = v18 | (v12 << 6);
    v22 = (*(v9 + 48) + 16 * v21);
    v23 = *(*(v9 + 56) + 8 * v21);
    v24 = *v22;
    v25 = v22[1];
    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (v11[6] + 16 * v21);
    *v26 = v24;
    v26[1] = v25;
    *(v11[7] + 8 * v21) = v23;
    v27 = v11[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_66;
    }

    v11[2] = v29;
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v12 >= v16)
    {
      break;
    }

    v20 = *(v9 + 64 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v15 = (v20 - 1) & v20;
      goto LABEL_13;
    }
  }

  if (!v11[2])
  {

LABEL_58:
    sub_255D5C33C();
    swift_allocError();
    *v83 = a1;
    *(v83 + 32) = 1;
    swift_willThrow();
    goto LABEL_59;
  }

  v61 = sub_255D3CA20(v87, v88);
  v63 = v62;

  if ((v63 & 1) == 0)
  {

    goto LABEL_58;
  }

  a1 = *(v11[7] + 8 * v61);

  if ((~v86 & 0xF000000000000007) != 0)
  {

    a1 = sub_255DE1F48(a1, a2, v86);
    sub_255D2F870(v86);
LABEL_64:

    return a1;
  }

  if (a1 >> 61 != 5)
  {
    goto LABEL_62;
  }

  v64 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  result = sub_255E3AB08();
  a1 = result;
  v65 = 0;
  v66 = 1 << *(v64 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & *(v64 + 64);
  v69 = (v66 + 63) >> 6;
  v70 = result + 64;
  if (!v68)
  {
LABEL_47:
    v72 = v65;
    while (1)
    {
      v65 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        goto LABEL_67;
      }

      if (v65 >= v69)
      {
        goto LABEL_64;
      }

      v73 = *(v64 + 64 + 8 * v65);
      ++v72;
      if (v73)
      {
        v71 = __clz(__rbit64(v73));
        v68 = (v73 - 1) & v73;
        goto LABEL_52;
      }
    }
  }

  while (1)
  {
    v71 = __clz(__rbit64(v68));
    v68 &= v68 - 1;
LABEL_52:
    v74 = v71 | (v65 << 6);
    v75 = (*(v64 + 48) + 16 * v74);
    v76 = *(*(v64 + 56) + 8 * v74);
    v77 = *v75;
    v78 = v75[1];
    *(v70 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
    v79 = (*(a1 + 48) + 16 * v74);
    *v79 = v77;
    v79[1] = v78;
    *(*(a1 + 56) + 8 * v74) = v76;
    v80 = *(a1 + 16);
    v28 = __OFADD__(v80, 1);
    v81 = v80 + 1;
    if (v28)
    {
      break;
    }

    *(a1 + 16) = v81;

    if (!v68)
    {
      goto LABEL_47;
    }
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}