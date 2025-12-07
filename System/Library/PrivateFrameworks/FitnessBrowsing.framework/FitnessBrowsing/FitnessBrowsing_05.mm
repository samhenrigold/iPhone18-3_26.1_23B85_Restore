uint64_t sub_24B4F8024(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 84);
  v6 = *(a3[3] - 8);
  v7 = *(v6 + 84);
  if (v5 <= v7)
  {
    v8 = *(v6 + 84);
  }

  else
  {
    v8 = *(v4 + 84);
  }

  v9 = *(a3[5] - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v8;
  }

  v12 = *(a3[6] - 8);
  v13 = *(v4 + 80);
  v14 = *(*(a3[2] - 8) + 64);
  v15 = *(v6 + 80);
  v16 = *(v9 + 80);
  v17 = *(v12 + 80);
  if (v11 <= *(v12 + 84))
  {
    v18 = *(v12 + 84);
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(*(a3[3] - 8) + 64) + 7;
  v21 = v16 + 16;
  v22 = *(*(a3[5] - 8) + 64) + v17;
  v23 = a2 - v19;
  if (a2 <= v19)
  {
    goto LABEL_37;
  }

  v24 = ((v22 + ((v21 + ((v20 + ((v14 + v15 + ((v13 + 17) & ~v13)) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & ~v17) + *(v12 + 64);
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_16;
  }

  v28 = ((v23 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_37;
      }

LABEL_16:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_37;
      }

LABEL_24:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v24)
      {
        if (v24 <= 3)
        {
          v30 = ((v22 + ((v21 + ((v20 + ((v14 + v15 + ((v13 + 17) & ~v13)) & ~v15)) & 0xFFFFFFF8)) & ~v16)) & ~v17) + *(v12 + 64);
        }

        else
        {
          v30 = 4;
        }

        if (v30 > 2)
        {
          if (v30 == 3)
          {
            v31 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v31 = *a1;
          }
        }

        else if (v30 == 1)
        {
          v31 = *a1;
        }

        else
        {
          v31 = *a1;
        }
      }

      else
      {
        v31 = 0;
      }

      return v19 + (v31 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_24;
    }
  }

LABEL_37:
  v32 = (a1 + v13 + 17) & ~v13;
  if (v5 == v19)
  {
    v33 = *(v4 + 48);
    v34 = *(v4 + 84);
    v35 = a3[2];

    return v33(v32, v34, v35);
  }

  v32 = (v32 + v14 + v15) & ~v15;
  if (v7 == v19)
  {
    v33 = *(v6 + 48);
    v34 = *(v6 + 84);
    v35 = a3[3];

    return v33(v32, v34, v35);
  }

  v36 = ((v20 + v32) & 0xFFFFFFFFFFFFFFF8);
  if ((v18 & 0x80000000) != 0)
  {
    v38 = (v36 + v21) & ~v16;
    if (v10 != v19)
    {
      v40 = ~v17;
      v33 = *(v12 + 48);
      v32 = (v22 + v38) & v40;
      v34 = *(v12 + 84);
      v35 = a3[6];

      return v33(v32, v34, v35);
    }

    v39 = *(v9 + 48);

    return v39(v38);
  }

  else
  {
    v37 = *v36;
    if (v37 >= 0xFFFFFFFF)
    {
      LODWORD(v37) = -1;
    }

    return (v37 + 1);
  }
}

void sub_24B4F844C(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(a4[5] - 8);
  v12 = *(v11 + 84);
  if (v10 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v10;
  }

  v14 = *(a4[6] - 8);
  v15 = *(v6 + 80);
  v16 = *(*(a4[2] - 8) + 64);
  v17 = *(v8 + 80);
  v18 = *(*(a4[3] - 8) + 64);
  v19 = *(v11 + 80);
  v20 = *(v14 + 80);
  if (v13 <= *(v14 + 84))
  {
    v21 = *(v14 + 84);
  }

  else
  {
    v21 = v13;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  v23 = v18 + 7;
  v24 = *(*(a4[5] - 8) + 64) + v20;
  v25 = ((v24 + ((v19 + 16 + ((v18 + 7 + ((v16 + v17 + ((v15 + 17) & ~v15)) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v19)) & ~v20) + *(v14 + 64);
  v26 = a3 >= v22;
  v27 = a3 - v22;
  if (v27 != 0 && v26)
  {
    if (v25 <= 3)
    {
      v31 = ((v27 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
      if (HIWORD(v31))
      {
        v28 = 4;
      }

      else
      {
        if (v31 < 0x100)
        {
          v32 = 1;
        }

        else
        {
          v32 = 2;
        }

        if (v31 >= 2)
        {
          v28 = v32;
        }

        else
        {
          v28 = 0;
        }
      }
    }

    else
    {
      v28 = 1;
    }
  }

  else
  {
    v28 = 0;
  }

  if (v22 >= a2)
  {
    if (v28 > 1)
    {
      if (v28 != 2)
      {
        *&a1[v25] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_40;
      }

      *&a1[v25] = 0;
    }

    else if (v28)
    {
      a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    if (!a2)
    {
      return;
    }

LABEL_40:
    v34 = &a1[v15 + 17] & ~v15;
    if (v7 == v22)
    {
      v35 = *(v6 + 56);
    }

    else
    {
      v34 = (v34 + v16 + v17) & ~v17;
      if (v9 == v22)
      {
        v35 = *(v8 + 56);
      }

      else
      {
        v36 = ((v23 + v34) & 0xFFFFFFFFFFFFFFF8);
        if ((v21 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            *v36 = a2 & 0x7FFFFFFF;
            v36[1] = 0;
          }

          else
          {
            *v36 = a2 - 1;
          }

          return;
        }

        v34 = (v36 + v19 + 16) & ~v19;
        if (v12 == v22)
        {
          v35 = *(v11 + 56);
        }

        else
        {
          v37 = v24 + v34;
          v35 = *(v14 + 56);
          v34 = v37 & ~v20;
        }
      }
    }

    v35(v34);
    return;
  }

  v29 = ~v22 + a2;
  if (v25 < 4)
  {
    v30 = (v29 >> (8 * v25)) + 1;
    if (v25)
    {
      v33 = v29 & ~(-1 << (8 * v25));
      bzero(a1, v25);
      if (v25 != 3)
      {
        if (v25 == 2)
        {
          *a1 = v33;
          if (v28 > 1)
          {
LABEL_59:
            if (v28 == 2)
            {
              *&a1[v25] = v30;
            }

            else
            {
              *&a1[v25] = v30;
            }

            return;
          }
        }

        else
        {
          *a1 = v29;
          if (v28 > 1)
          {
            goto LABEL_59;
          }
        }

        goto LABEL_56;
      }

      *a1 = v33;
      a1[2] = BYTE2(v33);
    }

    if (v28 > 1)
    {
      goto LABEL_59;
    }
  }

  else
  {
    bzero(a1, v25);
    *a1 = v29;
    v30 = 1;
    if (v28 > 1)
    {
      goto LABEL_59;
    }
  }

LABEL_56:
  if (v28)
  {
    a1[v25] = v30;
  }
}

unint64_t sub_24B4F88F4()
{
  result = qword_27EFFE0A8;
  if (!qword_27EFFE0A8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EFFE0A8);
  }

  return result;
}

unint64_t sub_24B4F895C()
{
  result = qword_27EFFE0B0;
  if (!qword_27EFFE0B0)
  {
    sub_24B51701C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE0B0);
  }

  return result;
}

uint64_t DynamicBrowseMenuState.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DynamicBrowseMenuState.bookmarkState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DynamicBrowseMenuState(0) + 20);

  return sub_24B4F8AD4(v3, a1);
}

uint64_t type metadata accessor for DynamicBrowseMenuState(uint64_t a1)
{
  result = qword_27EFFE0E0;
  if (!qword_27EFFE0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B4F8AD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7B8, &qword_24B51AF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DynamicBrowseMenuState.showBookmarkOption.setter(char a1)
{
  result = type metadata accessor for DynamicBrowseMenuState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t DynamicBrowseMenuState.showShareOption.setter(char a1)
{
  result = type metadata accessor for DynamicBrowseMenuState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t DynamicBrowseMenuState.init(identifier:bookmarkState:showBookmarkOption:showShareOption:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for DynamicBrowseMenuState(0);
  result = sub_24B4F8CE8(a3, a6 + v10[5]);
  *(a6 + v10[6]) = a4;
  *(a6 + v10[7]) = a5;
  return result;
}

uint64_t sub_24B4F8CE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7B8, &qword_24B51AF90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4F8D58()
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x72616853776F6873;
  }

  if (*v0)
  {
    v1 = 0x6B72616D6B6F6F62;
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

uint64_t sub_24B4F8DF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4F9880(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4F8E1C(uint64_t a1)
{
  v2 = sub_24B4F90A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4F8E58(uint64_t a1)
{
  v2 = sub_24B4F90A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicBrowseMenuState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE0B8, &qword_24B524C98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4F90A0();
  sub_24B517FDC();
  v8[15] = 0;
  sub_24B517E7C();
  if (!v1)
  {
    type metadata accessor for DynamicBrowseMenuState(0);
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7B8, &qword_24B51AF90);
    sub_24B4F9440(&qword_27EFFE0C8, MEMORY[0x277D043D0]);
    sub_24B517EBC();
    v8[13] = 2;
    sub_24B517E8C();
    v8[12] = 3;
    sub_24B517E8C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B4F90A0()
{
  result = qword_27EFFE0C0;
  if (!qword_27EFFE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE0C0);
  }

  return result;
}

uint64_t DynamicBrowseMenuState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7B8, &qword_24B51AF90);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE0D0, &qword_24B524CA0);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v16 - v6;
  v8 = type metadata accessor for DynamicBrowseMenuState(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4F90A0();
  v19 = v7;
  v11 = v21;
  sub_24B517FCC();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v25 = 0;
  *v10 = sub_24B517DCC();
  v10[1] = v13;
  v21 = v13;
  v24 = 1;
  sub_24B4F9440(&qword_27EFFE0D8, MEMORY[0x277D043D8]);
  sub_24B517E0C();
  sub_24B4F8CE8(v5, v10 + v8[5]);
  v23 = 2;
  *(v10 + v8[6]) = sub_24B517DDC() & 1;
  v22 = 3;
  v14 = sub_24B517DDC();
  (*(v12 + 8))(v19, v20);
  *(v10 + v8[7]) = v14 & 1;
  sub_24B4F94B0(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B4F9514(v10);
}

uint64_t sub_24B4F9440(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFC7B8, &qword_24B51AF90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B4F94B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicBrowseMenuState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4F9514(uint64_t a1)
{
  v2 = type metadata accessor for DynamicBrowseMenuState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s15FitnessBrowsing22DynamicBrowseMenuStateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_24B517EEC()) && (v5 = type metadata accessor for DynamicBrowseMenuState(0), (sub_24B51796C()) && *(a1 + *(v5 + 24)) == *(a2 + *(v5 + 24)))
  {
    v6 = *(a1 + *(v5 + 28)) ^ *(a2 + *(v5 + 28)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_24B4F9684(uint64_t a1)
{
  sub_24B4F9710();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24B4F9710()
{
  if (!qword_27EFFE0F0)
  {
    v0 = sub_24B51798C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFFE0F0);
    }
  }
}

unint64_t sub_24B4F977C()
{
  result = qword_27EFFE0F8;
  if (!qword_27EFFE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE0F8);
  }

  return result;
}

unint64_t sub_24B4F97D4()
{
  result = qword_27EFFE100;
  if (!qword_27EFFE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE100);
  }

  return result;
}

unint64_t sub_24B4F982C()
{
  result = qword_27EFFE108;
  if (!qword_27EFFE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE108);
  }

  return result;
}

uint64_t sub_24B4F9880(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xED00006574617453 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B527AB0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72616853776F6873 && a2 == 0xEF6E6F6974704F65)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4F9A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B517EEC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B4F9AC0(uint64_t a1)
{
  v2 = sub_24B4F9DF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4F9AFC(uint64_t a1)
{
  v2 = sub_24B4F9DF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4F9B38(uint64_t a1)
{
  v2 = sub_24B4F9E48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4F9B74(uint64_t a1)
{
  v2 = sub_24B4F9E48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicBrowseMenuAction.hashValue.getter()
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](0);
  return sub_24B517FBC();
}

uint64_t DynamicBrowseMenuAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE110, &qword_24B524E70);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE118, &qword_24B524E78);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4F9DF4();
  sub_24B517FDC();
  sub_24B4F9E48();
  sub_24B517E3C();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_24B4F9DF4()
{
  result = qword_27EFFE120;
  if (!qword_27EFFE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE120);
  }

  return result;
}

unint64_t sub_24B4F9E48()
{
  result = qword_27EFFE128;
  if (!qword_27EFFE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE128);
  }

  return result;
}

uint64_t sub_24B4F9ECC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE110, &qword_24B524E70);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE118, &qword_24B524E78);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4F9DF4();
  sub_24B517FDC();
  sub_24B4F9E48();
  sub_24B517E3C();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24B4FA0A4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE160, &qword_24B525130);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE168, &qword_24B525138);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4F9DF4();
  sub_24B517FCC();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_24B517E1C();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if (sub_24B4A2664() || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_24B517D0C();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
    *v16 = &type metadata for DynamicBrowseMenuAction;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_24B4F9E48();
  sub_24B517D7C();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

unint64_t sub_24B4FA3F4()
{
  result = qword_27EFFE130;
  if (!qword_27EFFE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE130);
  }

  return result;
}

unint64_t sub_24B4FA47C()
{
  result = qword_27EFFE138;
  if (!qword_27EFFE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE138);
  }

  return result;
}

unint64_t sub_24B4FA4D4()
{
  result = qword_27EFFE140;
  if (!qword_27EFFE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE140);
  }

  return result;
}

unint64_t sub_24B4FA52C()
{
  result = qword_27EFFE148;
  if (!qword_27EFFE148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE148);
  }

  return result;
}

unint64_t sub_24B4FA584()
{
  result = qword_27EFFE150;
  if (!qword_27EFFE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE150);
  }

  return result;
}

unint64_t sub_24B4FA5DC()
{
  result = qword_27EFFE158;
  if (!qword_27EFFE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE158);
  }

  return result;
}

uint64_t sub_24B4FA630()
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](0);
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t sub_24B4FA690(uint64_t a1)
{
  MEMORY[0x24C241D70](0);

  return sub_24B517B3C();
}

uint64_t sub_24B4FA6E4(uint64_t a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](0);
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t sub_24B4FA740(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24B517EEC();
  }
}

__n128 DynamicBrowseMenuFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24B4FA784(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_24B517BCC();
  v5[3] = sub_24B517BBC();
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  v5[4] = v9;
  *v9 = v5;
  v9[1] = sub_24B4C8FCC;

  return v11(a4, a5);
}

uint64_t _s15FitnessBrowsing24DynamicBrowseMenuFeatureV6reduce10localState06sharedI011sideEffects6actiony8DataFlow05EmptyI0Vz_AA0cdeI0VzSayAI10SideEffectOyAA0cdE6ActionOGGzAQtF_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD060, "Xu");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - v7;
  v10 = *v3;
  v9 = v3[1];
  v11 = *a2;
  v12 = a2[1];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
  v14 = v13[16];
  v15 = v13[20];
  v28[1] = v13[12];
  v29 = v15;
  v16 = &v8[v13[24]];
  v31 = v11;
  v32 = v12;
  sub_24B4FAD28();
  swift_bridgeObjectRetain_n();
  sub_24B517CBC();
  v17 = *MEMORY[0x277D043F0];
  v18 = sub_24B5179AC();
  (*(*(v18 - 8) + 104))(&v8[v14], v17, v18);
  v19 = swift_allocObject();
  v19[2] = v10;
  v19[3] = v9;
  v19[4] = v11;
  v19[5] = v12;
  *v16 = &unk_24B525208;
  *(v16 + 1) = v19;

  sub_24B517BDC();
  v20 = *MEMORY[0x277D043E8];
  v21 = sub_24B51799C();
  v22 = v20;
  v23 = v30;
  (*(*(v21 - 8) + 104))(&v8[v29], v22, v21);
  (*(v6 + 104))(v8, *MEMORY[0x277D043B0], v5);
  v24 = *v23;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_24B4CA27C(0, v24[2] + 1, 1, v24);
  }

  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_24B4CA27C((v25 > 1), v26 + 1, 1, v24);
  }

  v24[2] = v26 + 1;
  result = (*(v6 + 32))(v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26, v8, v5);
  *v23 = v24;
  return result;
}

unint64_t sub_24B4FAB80()
{
  result = qword_27EFFE170;
  if (!qword_27EFFE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE170);
  }

  return result;
}

unint64_t sub_24B4FABD8()
{
  result = qword_27EFFE178;
  if (!qword_27EFFE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE178);
  }

  return result;
}

unint64_t sub_24B4FAC30()
{
  result = qword_27EFFE180;
  if (!qword_27EFFE180)
  {
    type metadata accessor for DynamicBrowseMenuState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE180);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24B4FAC94(uint64_t *a1, int a2)
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

uint64_t sub_24B4FACDC(uint64_t result, int a2, int a3)
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

unint64_t sub_24B4FAD28()
{
  result = qword_27EFFE188;
  if (!qword_27EFFE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE188);
  }

  return result;
}

uint64_t sub_24B4FAD7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B4C9DE4;

  return sub_24B4FA784(a1, v4, v5, v7, v6);
}

uint64_t sub_24B4FAE38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24B4FAE80(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_24B4FAED0()
{
  result = qword_27EFFE190;
  if (!qword_27EFFE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE190);
  }

  return result;
}

uint64_t sub_24B4FAF28()
{
  v1 = 1701602409;
  v2 = 0x64656863746566;
  if (*v0 != 2)
  {
    v2 = 0x676E696863746566;
  }

  if (*v0)
  {
    v1 = 0x6F5464656C696166;
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

uint64_t sub_24B4FAFA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4FD688(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4FAFCC(uint64_t a1)
{
  v2 = sub_24B4FCE88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4FB008(uint64_t a1)
{
  v2 = sub_24B4FCE88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4FB058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B517EEC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B4FB0DC(uint64_t a1)
{
  v2 = sub_24B4FCF84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4FB118(uint64_t a1)
{
  v2 = sub_24B4FCF84();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24B4FB154()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_24B4FB1BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4FD7F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4FB1E4(uint64_t a1)
{
  v2 = sub_24B4FCF30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4FB220(uint64_t a1)
{
  v2 = sub_24B4FCF30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4FB25C(uint64_t a1)
{
  v2 = sub_24B4FCEDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4FB298(uint64_t a1)
{
  v2 = sub_24B4FCEDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4FB2D4(uint64_t a1)
{
  v2 = sub_24B4FCFD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4FB310(uint64_t a1)
{
  v2 = sub_24B4FCFD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseLoadState.preferredInsetBehavior.getter()
{
  State = type metadata accessor for BrowseLoadState(0);
  MEMORY[0x28223BE20](State);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4FCDC4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = 0;
  v6 = type metadata accessor for BrowseLoadState;
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v5 = v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFE8, &qword_24B5252B0) + 48)];

      v6 = type metadata accessor for BrowseContent;
    }

    sub_24B4FCE28(v3, v6);
  }

  return v5 & 1;
}

uint64_t BrowseLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE198, &qword_24B5252B8);
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE1A0, &qword_24B5252C0);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v33 - v5;
  v37 = type metadata accessor for BrowseContent(0);
  MEMORY[0x28223BE20](v37);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE1A8, &qword_24B5252C8);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE1B0, &qword_24B5252D0);
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  State = type metadata accessor for BrowseLoadState(0);
  MEMORY[0x28223BE20](State);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE1B8, &qword_24B5252D8);
  v45 = *(v16 - 8);
  v46 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4FCE88();
  sub_24B517FDC();
  sub_24B4FCDC4(v44, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      LOBYTE(v48) = 0;
      sub_24B4FCFD8();
      v23 = v46;
      sub_24B517E3C();
      (*(v33 + 8))(v12, v10);
    }

    else
    {
      LOBYTE(v48) = 3;
      sub_24B4FCEDC();
      v32 = v36;
      v23 = v46;
      sub_24B517E3C();
      (*(v38 + 8))(v32, v39);
    }

    return (*(v45 + 8))(v18, v23);
  }

  else if (EnumCaseMultiPayload)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFE8, &qword_24B5252B0);
    v25 = v15[*(v24 + 48)];
    v26 = *&v15[*(v24 + 64)];
    v27 = v41;
    sub_24B4FD02C(v15, v41, type metadata accessor for BrowseContent);
    LOBYTE(v48) = 2;
    sub_24B4FCF30();
    v28 = v40;
    v29 = v46;
    sub_24B517E3C();
    LOBYTE(v48) = 0;
    sub_24B4FD178(&qword_27EFFE1D8, type metadata accessor for BrowseContent, &protocol conformance descriptor for BrowseContent);
    v30 = v43;
    v31 = v47;
    sub_24B517EBC();
    if (v31)
    {

      (*(v42 + 8))(v28, v30);
      sub_24B4FCE28(v27, type metadata accessor for BrowseContent);
      return (*(v45 + 8))(v18, v29);
    }

    else
    {
      LOBYTE(v48) = v25;
      v49 = 1;
      sub_24B4D1A2C();
      sub_24B517E6C();
      v48 = v26;
      v49 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE1E0, &qword_24B5252E0);
      sub_24B4FD094(&qword_27EFFE1E8, &qword_27EFFE1F0, MEMORY[0x277CC9B00], MEMORY[0x277D83B50]);
      sub_24B517EBC();
      (*(v42 + 8))(v28, v30);
      sub_24B4FCE28(v27, type metadata accessor for BrowseContent);
      (*(v45 + 8))(v18, v29);
    }
  }

  else
  {
    LOBYTE(v48) = 1;
    sub_24B4FCF84();
    v20 = v46;
    sub_24B517E3C();
    v21 = v35;
    sub_24B517E7C();

    (*(v34 + 8))(v9, v21);
    return (*(v45 + 8))(v18, v20);
  }
}

uint64_t BrowseLoadState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE208, &qword_24B5252E8);
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v67 = &v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE210, &qword_24B5252F0);
  v5 = *(v4 - 8);
  v62 = v4;
  v63 = v5;
  MEMORY[0x28223BE20](v4);
  v66 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE218, &qword_24B5252F8);
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x28223BE20](v7);
  v65 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE220, &qword_24B525300);
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE228, &unk_24B525308);
  v69 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v13 = &v53 - v12;
  State = type metadata accessor for BrowseLoadState(0);
  v15 = MEMORY[0x28223BE20](State);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v53 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  v23 = a1[3];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24B4FCE88();
  v24 = v70;
  sub_24B517FCC();
  if (!v24)
  {
    v53 = v20;
    v70 = v11;
    v25 = v65;
    v26 = v66;
    v27 = v67;
    v54 = v22;
    v55 = State;
    v28 = v68;
    v29 = v64;
    v30 = sub_24B517E1C();
    v31 = (2 * *(v30 + 16)) | 1;
    v72 = v30;
    v73 = v30 + 32;
    v74 = 0;
    v75 = v31;
    v32 = sub_24B4A39B4();
    if (v32 == 4 || v74 != v75 >> 1)
    {
      v36 = sub_24B517D0C();
      swift_allocError();
      v37 = v13;
      v39 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
      *v39 = v55;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v36 - 8) + 104))(v39, *MEMORY[0x277D84160], v36);
      swift_willThrow();
      (*(v69 + 8))(v37, v29);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v32 > 1u)
      {
        if (v32 == 2)
        {
          v76 = 2;
          sub_24B4FCF30();
          v41 = v26;
          sub_24B517D7C();
          v42 = v69;
          type metadata accessor for BrowseContent(0);
          v76 = 0;
          sub_24B4FD178(&qword_27EFFE230, type metadata accessor for BrowseContent, &protocol conformance descriptor for BrowseContent);
          v43 = v62;
          sub_24B517E0C();
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFE8, &qword_24B5252B0);
          v76 = 1;
          sub_24B4D1B28();
          v70 = v17;
          sub_24B517DBC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE1E0, &qword_24B5252E0);
          v76 = 2;
          sub_24B4FD094(&qword_27EFFE238, &qword_27EFFE240, MEMORY[0x277CC9B28], MEMORY[0x277D83B70]);
          sub_24B517E0C();
          (*(v63 + 8))(v41, v43);
          (*(v42 + 8))(v13, v29);
          swift_unknownObjectRelease();
          v52 = v70;
          swift_storeEnumTagMultiPayload();
          v34 = v54;
          sub_24B4FD02C(v52, v54, type metadata accessor for BrowseLoadState);
          v35 = v28;
        }

        else
        {
          v76 = 3;
          sub_24B4FCEDC();
          sub_24B517D7C();
          v35 = v28;
          v45 = v69;
          (*(v58 + 8))(v27, v61);
          (*(v45 + 8))(v13, v29);
          swift_unknownObjectRelease();
          v34 = v54;
          swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
        if (v32)
        {
          v76 = 1;
          sub_24B4FCF84();
          v44 = v25;
          sub_24B517D7C();
          v46 = v60;
          v47 = sub_24B517DCC();
          v49 = v48;
          (*(v59 + 8))(v44, v46);
          (*(v69 + 8))(v13, v29);
          swift_unknownObjectRelease();
          v50 = v53;
          *v53 = v47;
          v50[1] = v49;
          swift_storeEnumTagMultiPayload();
          v51 = v50;
          v34 = v54;
          sub_24B4FD02C(v51, v54, type metadata accessor for BrowseLoadState);
        }

        else
        {
          v76 = 0;
          sub_24B4FCFD8();
          v33 = v70;
          sub_24B517D7C();
          (*(v56 + 8))(v33, v57);
          (*(v69 + 8))(v13, v29);
          swift_unknownObjectRelease();
          v34 = v54;
          swift_storeEnumTagMultiPayload();
        }

        v35 = v28;
      }

      sub_24B4FD02C(v34, v35, type metadata accessor for BrowseLoadState);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v71);
}

uint64_t BrowseLoadState.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BrowseContent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for BrowseLoadState(0);
  MEMORY[0x28223BE20](State);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4FCDC4(v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = 3;
    }

    return MEMORY[0x24C241D70](v12);
  }

  else if (EnumCaseMultiPayload)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFE8, &qword_24B5252B0);
    v14 = v9[*(v13 + 48)];
    v15 = *&v9[*(v13 + 64)];
    sub_24B4FD02C(v9, v6, type metadata accessor for BrowseContent);
    MEMORY[0x24C241D70](2);
    BrowseContent.hash(into:)(a1);
    sub_24B517F9C();
    if (v14 != 2)
    {
      MEMORY[0x24C241D70](v14 & 1);
    }

    sub_24B48AF48(a1, v15);

    return sub_24B4FCE28(v6, type metadata accessor for BrowseContent);
  }

  else
  {
    MEMORY[0x24C241D70](1);
    sub_24B517B3C();
  }
}

uint64_t BrowseLoadState.hashValue.getter()
{
  sub_24B517F7C();
  BrowseLoadState.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4FC92C()
{
  sub_24B517F7C();
  BrowseLoadState.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4FC970(uint64_t a1)
{
  sub_24B517F7C();
  BrowseLoadState.hash(into:)(v2);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing15BrowseLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseContent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for BrowseLoadState(0);
  v8 = MEMORY[0x28223BE20](State);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v33 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE2C0, &unk_24B5258C0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v33 - v15;
  v17 = (&v33 + *(v14 + 56) - v15);
  sub_24B4FCDC4(a1, &v33 - v15);
  sub_24B4FCDC4(a2, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_16;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload)
  {
    sub_24B4FCDC4(v16, v10);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFE8, &qword_24B5252B0);
    v22 = *(v21 + 48);
    v23 = v10[v22];
    v24 = *(v21 + 64);
    v25 = *&v10[v24];
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      sub_24B4FCE28(v10, type metadata accessor for BrowseContent);
      goto LABEL_16;
    }

    v26 = *(v17 + v22);
    v27 = *(v17 + v24);
    sub_24B4FD02C(v17, v6, type metadata accessor for BrowseContent);
    v28 = _s15FitnessBrowsing13BrowseContentO2eeoiySbAC_ACtFZ_0(v10, v6);
    sub_24B4FCE28(v10, type metadata accessor for BrowseContent);
    if ((v28 & 1) == 0)
    {
      sub_24B4FCE28(v6, type metadata accessor for BrowseContent);

LABEL_32:
      sub_24B4FCE28(v16, type metadata accessor for BrowseLoadState);
      goto LABEL_17;
    }

    if (v23 == 2)
    {
      if (v26 != 2)
      {
LABEL_31:

        sub_24B4FCE28(v6, type metadata accessor for BrowseContent);
        goto LABEL_32;
      }
    }

    else if (v26 == 2 || ((v26 ^ v23) & 1) != 0)
    {
      goto LABEL_31;
    }

    v29 = sub_24B513128(v25, v27);

    sub_24B4FCE28(v6, type metadata accessor for BrowseContent);
    sub_24B4FCE28(v16, type metadata accessor for BrowseLoadState);
    return v29 & 1;
  }

  sub_24B4FCDC4(v16, v12);
  v20 = *v12;
  v19 = v12[1];
  if (!swift_getEnumCaseMultiPayload())
  {
    if (v20 == *v17 && v19 == v17[1])
    {
    }

    else
    {
      v31 = sub_24B517EEC();

      if ((v31 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

LABEL_26:
    sub_24B4FCE28(v16, type metadata accessor for BrowseLoadState);
    v29 = 1;
    return v29 & 1;
  }

LABEL_16:
  sub_24B4FD918(v16);
LABEL_17:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_24B4FCDC4(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for BrowseLoadState(0);
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

uint64_t sub_24B4FCE28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B4FCE88()
{
  result = qword_27EFFE1C0;
  if (!qword_27EFFE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE1C0);
  }

  return result;
}

unint64_t sub_24B4FCEDC()
{
  result = qword_27EFFE1C8;
  if (!qword_27EFFE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE1C8);
  }

  return result;
}

unint64_t sub_24B4FCF30()
{
  result = qword_27EFFE1D0;
  if (!qword_27EFFE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE1D0);
  }

  return result;
}

unint64_t sub_24B4FCF84()
{
  result = qword_27EFFE1F8;
  if (!qword_27EFFE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE1F8);
  }

  return result;
}

unint64_t sub_24B4FCFD8()
{
  result = qword_27EFFE200;
  if (!qword_27EFFE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE200);
  }

  return result;
}

uint64_t sub_24B4FD02C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4FD094(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFE1E0, &qword_24B5252E0);
    sub_24B4FD178(a2, MEMORY[0x277CC9AF8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B4FD178(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B4FD214()
{
  result = qword_27EFFE258;
  if (!qword_27EFFE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE258);
  }

  return result;
}

unint64_t sub_24B4FD26C()
{
  result = qword_27EFFE260;
  if (!qword_27EFFE260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE260);
  }

  return result;
}

unint64_t sub_24B4FD2C4()
{
  result = qword_27EFFE268;
  if (!qword_27EFFE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE268);
  }

  return result;
}

unint64_t sub_24B4FD31C()
{
  result = qword_27EFFE270;
  if (!qword_27EFFE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE270);
  }

  return result;
}

unint64_t sub_24B4FD374()
{
  result = qword_27EFFE278;
  if (!qword_27EFFE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE278);
  }

  return result;
}

unint64_t sub_24B4FD3CC()
{
  result = qword_27EFFE280;
  if (!qword_27EFFE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE280);
  }

  return result;
}

unint64_t sub_24B4FD424()
{
  result = qword_27EFFE288;
  if (!qword_27EFFE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE288);
  }

  return result;
}

unint64_t sub_24B4FD47C()
{
  result = qword_27EFFE290;
  if (!qword_27EFFE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE290);
  }

  return result;
}

unint64_t sub_24B4FD4D4()
{
  result = qword_27EFFE298;
  if (!qword_27EFFE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE298);
  }

  return result;
}

unint64_t sub_24B4FD52C()
{
  result = qword_27EFFE2A0;
  if (!qword_27EFFE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE2A0);
  }

  return result;
}

unint64_t sub_24B4FD584()
{
  result = qword_27EFFE2A8;
  if (!qword_27EFFE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE2A8);
  }

  return result;
}

unint64_t sub_24B4FD5DC()
{
  result = qword_27EFFE2B0;
  if (!qword_27EFFE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE2B0);
  }

  return result;
}

unint64_t sub_24B4FD634()
{
  result = qword_27EFFE2B8;
  if (!qword_27EFFE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE2B8);
  }

  return result;
}

uint64_t sub_24B4FD688(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F5464656C696166 && a2 == 0xEC00000064616F4CLL || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4FD7F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B5278E0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B527B10 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4FD918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE2C0, &unk_24B5258C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static BrowseMarketingDescriptor.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = sub_24B517EEC(), result = 0, (v5 & 1) != 0))
  {
    if (v2 == 2)
    {
      if (v3 != 2)
      {
        return 0;
      }
    }

    else if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t BrowseMarketingDescriptor.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

FitnessBrowsing::BrowseMarketingDescriptor __swiftcall BrowseMarketingDescriptor.init(placementIdentifier:preferredInsetBehavior:)(FitnessBrowsing::BrowseMarketingDescriptor placementIdentifier, FitnessBrowsing::BrowseInsetBehavior_optional preferredInsetBehavior)
{
  *v2 = placementIdentifier.placementIdentifier;
  *(v2 + 16) = preferredInsetBehavior;
  placementIdentifier.preferredInsetBehavior = preferredInsetBehavior;
  return placementIdentifier;
}

unint64_t sub_24B4FDA4C()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_24B4FDA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000024B527B30 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B5278E0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24B517EEC();

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

uint64_t sub_24B4FDB6C(uint64_t a1)
{
  v2 = sub_24B4FDD78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4FDBA8(uint64_t a1)
{
  v2 = sub_24B4FDD78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseMarketingDescriptor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE2C8, &qword_24B5258D0);
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4FDD78();
  sub_24B517FDC();
  v13 = 0;
  sub_24B517E7C();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_24B4D1A2C();
    sub_24B517E6C();
  }

  return (*(v9 + 8))(v6, v4);
}

unint64_t sub_24B4FDD78()
{
  result = qword_27EFFE2D0;
  if (!qword_27EFFE2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE2D0);
  }

  return result;
}

uint64_t BrowseMarketingDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE2D8, &qword_24B5258D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4FDD78();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v9 = sub_24B517DCC();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  sub_24B4D1B28();
  sub_24B517DBC();
  (*(v6 + 8))(v8, v5);
  v13 = v17;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t BrowseMarketingDescriptor.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24B517B3C();
  if (v2 == 2)
  {
    return sub_24B517F9C();
  }

  sub_24B517F9C();
  return MEMORY[0x24C241D70](v2 & 1);
}

uint64_t BrowseMarketingDescriptor.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_24B517F7C();
  sub_24B517B3C();
  sub_24B517F9C();
  if (v1 != 2)
  {
    MEMORY[0x24C241D70](v1 & 1);
  }

  return sub_24B517FBC();
}

uint64_t sub_24B4FE0D4()
{
  v1 = *(v0 + 16);
  sub_24B517F7C();
  sub_24B517B3C();
  sub_24B517F9C();
  if (v1 != 2)
  {
    MEMORY[0x24C241D70](v1 & 1);
  }

  return sub_24B517FBC();
}

uint64_t sub_24B4FE158(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24B517B3C();
  if (v2 == 2)
  {
    return sub_24B517F9C();
  }

  sub_24B517F9C();
  return MEMORY[0x24C241D70](v2 & 1);
}

uint64_t sub_24B4FE1B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24B517F7C();
  sub_24B517B3C();
  sub_24B517F9C();
  if (v2 != 2)
  {
    MEMORY[0x24C241D70](v2 & 1);
  }

  return sub_24B517FBC();
}

unint64_t sub_24B4FE23C()
{
  result = qword_27EFFE2E0;
  if (!qword_27EFFE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE2E0);
  }

  return result;
}

uint64_t sub_24B4FE290(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = sub_24B517EEC(), result = 0, (v5 & 1) != 0))
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_24B4FE318(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_24B4FE360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B4FE3C4()
{
  result = qword_27EFFE2E8;
  if (!qword_27EFFE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE2E8);
  }

  return result;
}

unint64_t sub_24B4FE41C()
{
  result = qword_27EFFE2F0;
  if (!qword_27EFFE2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE2F0);
  }

  return result;
}

unint64_t sub_24B4FE474()
{
  result = qword_27EFFE2F8;
  if (!qword_27EFFE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE2F8);
  }

  return result;
}

FitnessBrowsing::BrowseEditorialGalleryMetricsBehavior_optional __swiftcall BrowseEditorialGalleryMetricsBehavior.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_24B517D6C();

  if (v1 == 1)
  {
    v2.value = FitnessBrowsing_BrowseEditorialGalleryMetricsBehavior_trainerTipsQuarantine;
  }

  else
  {
    v2.value = FitnessBrowsing_BrowseEditorialGalleryMetricsBehavior_unknownDefault;
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

uint64_t BrowseEditorialGalleryMetricsBehavior.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_24B4FE558(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x800000024B527490;
  }

  if (*a2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0x800000024B527490;
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
    v8 = sub_24B517EEC();
  }

  return v8 & 1;
}

uint64_t sub_24B4FE604@<X0>(char *a2@<X8>)
{
  v3 = sub_24B517D6C();

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

void sub_24B4FE664(unint64_t *a1@<X8>)
{
  v2 = 0x800000024B527490;
  v3 = 0x746C7561666564;
  if (*v1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_24B4FE75C()
{
  result = qword_27EFFE300;
  if (!qword_27EFFE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE300);
  }

  return result;
}

uint64_t sub_24B4FE7B0()
{
  sub_24B517F7C();
  sub_24B517B3C();

  return sub_24B517FBC();
}

uint64_t sub_24B4FE838(uint64_t a1)
{
  sub_24B517B3C();
}

uint64_t sub_24B4FE8AC(uint64_t a1)
{
  sub_24B517F7C();
  sub_24B517B3C();

  return sub_24B517FBC();
}

unint64_t sub_24B4FE940()
{
  result = qword_27EFFE308;
  if (!qword_27EFFE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE308);
  }

  return result;
}

uint64_t sub_24B4FE994(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x656966697473756ALL;
    }

    else
    {
      v4 = 0x7265746E6563;
    }

    if (v2)
    {
      v3 = 0xE900000000000064;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1952867692;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6C61727574616ELL;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x7468676972;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656966697473756ALL;
    }

    else
    {
      v9 = 0x7265746E6563;
    }

    if (a2)
    {
      v8 = 0xE900000000000064;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x6C61727574616ELL;
    if (a2 != 3)
    {
      v6 = 0x7468676972;
      v5 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1952867692;
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
    v10 = sub_24B517EEC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24B4FEB0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007468;
  v3 = 0x67694C6172746C75;
  if (a1 <= 3u)
  {
    v4 = 0xE500000000000000;
    v5 = 0x746867696CLL;
    if (a1 != 2)
    {
      v5 = 0x72616C75676572;
      v4 = 0xE700000000000000;
    }

    v7 = 0xE400000000000000;
    v8 = 1852401780;
    if (!a1)
    {
      v8 = 0x67694C6172746C75;
      v7 = 0xEA00000000007468;
    }

    v9 = a1 <= 1u;
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 1684828002;
    v6 = 0x7976616568;
    if (a1 != 7)
    {
      v6 = 0x6B63616C62;
    }

    if (a1 != 6)
    {
      v5 = v6;
      v4 = 0xE500000000000000;
    }

    v7 = 0xE600000000000000;
    v8 = 0x6D756964656DLL;
    if (a1 != 4)
    {
      v8 = 0x646C6F62696D6573;
      v7 = 0xE800000000000000;
    }

    v9 = a1 <= 5u;
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v9)
  {
    v11 = v7;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE500000000000000;
        if (v10 != 0x746867696CLL)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v10 != 0x72616C75676572)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2)
    {
      v2 = 0xE400000000000000;
      if (v10 != 1852401780)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xE600000000000000;
        if (v10 != 0x6D756964656DLL)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v10 != 0x646C6F62696D6573)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 == 6)
    {
      v2 = 0xE400000000000000;
      if (v10 != 1684828002)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v2 = 0xE500000000000000;
    if (a2 == 7)
    {
      if (v10 != 0x7976616568)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v3 = 0x6B63616C62;
  }

  if (v10 != v3)
  {
LABEL_45:
    v12 = sub_24B517EEC();
    goto LABEL_46;
  }

LABEL_42:
  if (v11 != v2)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_24B4FED70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF73647261632D6CLL;
  v3 = 0x6169726F74696465;
  if (a1 <= 3u)
  {
    v4 = 0xE800000000000000;
    v12 = 0x7974696C61646F6DLL;
    if (a1 != 2)
    {
      v12 = 0x7473696C79616C70;
      v4 = 0xE800000000000000;
    }

    v8 = 0xEF736D6574692D6CLL;
    if (!a1)
    {
      v8 = 0xEF73647261632D6CLL;
    }

    v10 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v11 = 0x6169726F74696465;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x72656E69617274;
    v6 = 0x65486C6C65737075;
    v7 = 0xEC00000072656461;
    if (a1 != 7)
    {
      v6 = 0x74756F6B726F77;
      v7 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0xE700000000000000;
    v9 = 0x6D6172676F7270;
    if (a1 != 4)
    {
      v9 = 0x2D72656E69617274;
      v8 = 0xEC00000073706974;
    }

    v10 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }
  }

  if (v10)
  {
    v13 = v8;
  }

  else
  {
    v13 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      v2 = 0xE800000000000000;
      if (a2 == 2)
      {
        if (v11 != 0x7974696C61646F6DLL)
        {
          goto LABEL_46;
        }
      }

      else if (v11 != 0x7473696C79616C70)
      {
        goto LABEL_46;
      }

      goto LABEL_42;
    }

    if (a2)
    {
      v2 = 0xEF736D6574692D6CLL;
      if (v11 != 0x6169726F74696465)
      {
        goto LABEL_46;
      }

      goto LABEL_42;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6D6172676F7270)
        {
          goto LABEL_46;
        }

        goto LABEL_42;
      }

      v14 = 0x2D72656E69617274;
      v15 = 1936746868;
      goto LABEL_45;
    }

    if (a2 == 6)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x72656E69617274)
      {
        goto LABEL_46;
      }

      goto LABEL_42;
    }

    if (a2 == 7)
    {
      v14 = 0x65486C6C65737075;
      v15 = 1919247457;
LABEL_45:
      v2 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v11 != v14)
      {
        goto LABEL_46;
      }

      goto LABEL_42;
    }

    v2 = 0xE700000000000000;
    v3 = 0x74756F6B726F77;
  }

  if (v11 != v3)
  {
LABEL_46:
    v16 = sub_24B517EEC();
    goto LABEL_47;
  }

LABEL_42:
  if (v13 != v2)
  {
    goto LABEL_46;
  }

  v16 = 1;
LABEL_47:

  return v16 & 1;
}

uint64_t BrowseFeature.environment.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x110uLL);
  memcpy(a1, v1, 0x110uLL);
  return sub_24B4FF07C(__dst, v4);
}

uint64_t sub_24B4FF0D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      v4 = 1;
      goto LABEL_16;
    case 2:
      v4 = 2;
      goto LABEL_16;
    case 3:
      v4 = 4;
      goto LABEL_16;
    case 4:
      v4 = 5;
      goto LABEL_16;
    case 5:
      v4 = 6;
      goto LABEL_16;
    case 6:
      v4 = 8;
      goto LABEL_16;
    case 7:
      v4 = 9;
      goto LABEL_16;
    case 8:
      v4 = 10;
      goto LABEL_16;
    case 9:
      v4 = 11;
      goto LABEL_16;
    case 10:
      v4 = 12;
      goto LABEL_16;
    case 11:
      v4 = 13;
      goto LABEL_16;
    case 12:
      if (a2 | a3)
      {
        v5 = 7;
      }

      else
      {
        v5 = 3;
      }

      return MEMORY[0x24C241D70](v5);
    default:
      v4 = 0;
LABEL_16:
      MEMORY[0x24C241D70](v4);

      return sub_24B517B3C();
  }
}

uint64_t sub_24B4FF1D0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_24B517F7C();
  sub_24B4FF0D8(v5, v1, v2, v3);
  return sub_24B517FBC();
}

uint64_t sub_24B4FF238(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_24B517F7C();
  sub_24B4FF0D8(v6, v2, v3, v4);
  return sub_24B517FBC();
}

void BrowseFeature.reduce(localState:sharedState:sideEffects:action:)(void (*a1)(void, void, void), _BYTE *a2, uint64_t *a3, uint64_t a4)
{
  *(&v397 + 1) = a4;
  v393 = a3;
  v395 = a2;
  v391 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD5F8, &qword_24B520F90);
  MEMORY[0x28223BE20](v4 - 8);
  v367 = &v358 - v5;
  v6 = sub_24B516BEC();
  v389 = *(v6 - 8);
  v390 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v358 = &v358 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v381 = &v358 - v9;
  v10 = type metadata accessor for BrowseContent(0);
  MEMORY[0x28223BE20](v10 - 8);
  v387 = (&v358 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v386 = sub_24B516B8C();
  v388 = *(v386 - 1);
  v12 = *(v388 + 8);
  v13 = MEMORY[0x28223BE20](v386);
  v370 = &v358 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v384 = &v358 - v14;
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD050, &qword_24B51E548);
  v396 = *(v398 - 8);
  v15 = MEMORY[0x28223BE20](v398);
  v382 = &v358 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v380 = &v358 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v366 = &v358 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v379 = &v358 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v365 = &v358 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v378 = &v358 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v364 = &v358 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v377 = &v358 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v376 = &v358 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v374 = &v358 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v362 = &v358 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v360 = &v358 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v375 = &v358 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v363 = &v358 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v372 = &v358 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v371 = &v358 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v373 = &v358 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v361 = &v358 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v359 = &v358 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v369 = &v358 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v383 = &v358 - v56;
  MEMORY[0x28223BE20](v55);
  v368 = &v358 - v57;
  v392 = type metadata accessor for BrowseIdentifier(0);
  v58 = MEMORY[0x28223BE20](v392);
  v60 = (&v358 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = MEMORY[0x28223BE20](v58);
  v385 = (&v358 - v62);
  MEMORY[0x28223BE20](v61);
  v64 = &v358 - v63;
  State = type metadata accessor for BrowseLoadState(0);
  v65 = MEMORY[0x28223BE20](State);
  v67 = &v358 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x28223BE20](v65);
  v70 = &v358 - v69;
  v71 = MEMORY[0x28223BE20](v68);
  v73 = &v358 - v72;
  MEMORY[0x28223BE20](v71);
  v75 = &v358 - v74;
  v76 = type metadata accessor for BrowseAction(0);
  MEMORY[0x28223BE20](v76);
  v78 = (&v358 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  memcpy(v400, v397, 0x110uLL);
  sub_24B50ECD8(*(&v397 + 1), v78, type metadata accessor for BrowseAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v80 = *(v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE310, &qword_24B525D58) + 48));
        v81 = v387;
        sub_24B50ED88(v78, v387, type metadata accessor for BrowseContent);
        v82 = *(type metadata accessor for BrowseState(0) + 36);
        v83 = v395;
        sub_24B50ECD8(&v395[v82], v73, type metadata accessor for BrowseLoadState);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          sub_24B50EDF0(v73, type metadata accessor for BrowseLoadState);
          v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFE8, &qword_24B5252B0);
          v398 = *(v84 + 48);
          v85 = *(v84 + 64);
          sub_24B50ECD8(v81, v70, type metadata accessor for BrowseContent);
          memcpy(v399, v400, sizeof(v399));
          v86 = v81;
          v87 = BrowseContent.sectionDescriptors.getter();
          v88 = sub_24B504974(v87);

          sub_24B50EDF0(v86, type metadata accessor for BrowseContent);
          v70[v398] = v88;
          *&v70[v85] = v80;
          swift_storeEnumTagMultiPayload();
          sub_24B50D690(v70, &v83[v82]);
        }

        else
        {
          sub_24B50EDF0(v81, type metadata accessor for BrowseContent);

          sub_24B50EDF0(v73, type metadata accessor for BrowseLoadState);
        }
      }

      else
      {
        v138 = v391;
        sub_24B50CD08(v391);
        v140 = v389;
        v139 = v390;
        (*(v389 + 32))(v138, v78, v390);
        (*(v140 + 56))(v138, 0, 1, v139);
      }
    }

    else
    {
      v113 = *v78;
      v112 = v78[1];
      v114 = &v395[*(type metadata accessor for BrowseState(0) + 36)];
      sub_24B50ECD8(v114, v75, type metadata accessor for BrowseLoadState);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_24B50EDF0(v75, type metadata accessor for BrowseLoadState);
        sub_24B50EDF0(v114, type metadata accessor for BrowseLoadState);
        *v114 = v113;
        v114[1] = v112;
        swift_storeEnumTagMultiPayload();
      }

      else
      {

        sub_24B50EDF0(v75, type metadata accessor for BrowseLoadState);
      }
    }

    return;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v115 = type metadata accessor for BrowseState(0);
    v116 = v395;
    v117 = v395[v115[8]];
    sub_24B50EDF0(&v395[v115[9]], type metadata accessor for BrowseLoadState);
    swift_storeEnumTagMultiPayload();
    sub_24B50ECD8(&v116[v115[5]], v64, type metadata accessor for BrowseIdentifier);
    v118 = swift_getEnumCaseMultiPayload();
    v120 = *v64;
    v119 = *(v64 + 1);
    if (v118)
    {
      if (v118 == 1)
      {
        DWORD2(v397) = v64[16];
        v121 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCE8, &qword_24B523C50) + 64);
        v395 = *(v388 + 4);
        v122 = v384;
        v123 = v386;
        (v395)(v384, &v64[v121], v386);
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
        v392 = v124[16];
        *&v397 = v124[20];
        v125 = v383;
        State = (v383 + v124[24]);
        *&v399[0] = v120;
        *(&v399[0] + 1) = v119;
        LOBYTE(v399[1]) = 1;
        sub_24B50CCB4();

        sub_24B517CBC();
        sub_24B517BDC();
        v126 = *MEMORY[0x277D04400];
        v127 = sub_24B5179AC();
        (*(*(v127 - 8) + 104))(v125 + v392, v126, v127);
        v128 = v388 + 16;
        v129 = v370;
        (*(v388 + 2))(v370, v122, v123);
        v130 = (v128[64] + 312) & ~v128[64];
        v131 = swift_allocObject();
        memcpy((v131 + 16), v400, 0x110uLL);
        *(v131 + 288) = BYTE8(v397);
        *(v131 + 296) = v120;
        *(v131 + 304) = v119;
        (v395)(v131 + v130, v129, v123);
        v132 = State;
        *State = &unk_24B525D78;
        v132[1] = v131;
        v133 = *MEMORY[0x277D043E8];
        v134 = sub_24B51799C();
        (*(*(v134 - 8) + 104))(v125 + v397, v133, v134);
        v135 = v396;
        (*(v396 + 104))(v125, *MEMORY[0x277D043B0], v398);
        v108 = v393;
        v109 = *v393;
        sub_24B50CE08(v400, v399);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_24B4CA2A0(0, v109[2] + 1, 1, v109);
        }

        v137 = v109[2];
        v136 = v109[3];
        if (v137 >= v136 >> 1)
        {
          v109 = sub_24B4CA2A0((v136 > 1), v137 + 1, 1, v109);
        }

        (*(v388 + 1))(v384, v386);
        v109[2] = v137 + 1;
        (*(v135 + 32))(v109 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v137, v383, v398);
        goto LABEL_58;
      }

      v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
      v206 = v205[16];
      v199 = v205[20];
      v200 = v369;
      v207 = &v369[v205[24]];
      *&v399[0] = v120;
      *(&v399[0] + 1) = v119;
      LOBYTE(v399[1]) = 2;
      sub_24B50CCB4();
      sub_24B517CBC();
      sub_24B517BDC();
      v208 = *MEMORY[0x277D04400];
      v209 = sub_24B5179AC();
      (*(*(v209 - 8) + 104))(&v200[v206], v208, v209);
      v210 = swift_allocObject();
      memcpy((v210 + 16), v400, 0x110uLL);
      *(v210 + 288) = v117;
      *v207 = &unk_24B525D68;
      *(v207 + 1) = v210;
    }

    else
    {
      v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
      v198 = v197[16];
      v199 = v197[20];
      v200 = v368;
      v201 = &v368[v197[24]];
      *&v399[0] = v120;
      *(&v399[0] + 1) = v119;
      LOBYTE(v399[1]) = 0;
      sub_24B50CCB4();

      sub_24B517CBC();
      sub_24B517BDC();
      v202 = *MEMORY[0x277D04400];
      v203 = sub_24B5179AC();
      (*(*(v203 - 8) + 104))(&v200[v198], v202, v203);
      v204 = swift_allocObject();
      memcpy(v204 + 2, v400, 0x110uLL);
      v204[36] = v120;
      v204[37] = v119;
      *v201 = &unk_24B525D88;
      *(v201 + 1) = v204;
    }

    v211 = *MEMORY[0x277D043E8];
    v212 = sub_24B51799C();
    (*(*(v212 - 8) + 104))(&v200[v199], v211, v212);
    v213 = v396;
    (*(v396 + 104))(v200, *MEMORY[0x277D043B0], v398);
    v108 = v393;
    v109 = *v393;
    sub_24B50CE08(v400, v399);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v109 = sub_24B4CA2A0(0, v109[2] + 1, 1, v109);
    }

    v215 = v109[2];
    v214 = v109[3];
    if (v215 >= v214 >> 1)
    {
      v109 = sub_24B4CA2A0((v214 > 1), v215 + 1, 1, v109);
    }

    v109[2] = v215 + 1;
    (*(v213 + 32))(v109 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v215, v200, v398);
    goto LABEL_58;
  }

  v89 = v395;
  if (EnumCaseMultiPayload == 4)
  {
    v90 = type metadata accessor for BrowseState(0);
    v91 = v89[v90[8]];
    if (qword_27EFFBD48 != -1)
    {
      swift_once();
    }

    v92 = sub_24B516F1C();
    __swift_project_value_buffer(v92, qword_27F017B88);
    v93 = sub_24B516EFC();
    v94 = sub_24B517C7C();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 67109120;
      *(v95 + 4) = v91;
      _os_log_impl(&dword_24B479000, v93, v94, "[BrowseFeature] subscriptionChanged, isSubscribed: %{BOOL}d", v95, 8u);
      MEMORY[0x24C242250](v95, -1, -1);
    }

    sub_24B50ECD8(&v89[v90[5]], v60, type metadata accessor for BrowseIdentifier);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_24B50EDF0(v60, type metadata accessor for BrowseIdentifier);
      v144 = sub_24B516EFC();
      v145 = sub_24B517C7C();
      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        *v146 = 0;
        _os_log_impl(&dword_24B479000, v144, v145, "[BrowseFeature] skipping update on subscription change for non editorial page", v146, 2u);
        MEMORY[0x24C242250](v146, -1, -1);
      }

      return;
    }

    v96 = *v60;
    v97 = v60[1];
    sub_24B50EDF0(&v89[v90[9]], type metadata accessor for BrowseLoadState);
    swift_storeEnumTagMultiPayload();
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
    v99 = v98[16];
    v100 = v98[20];
    v101 = v382;
    v102 = (v382 + v98[24]);
    *&v399[0] = v96;
    *(&v399[0] + 1) = v97;
    LOBYTE(v399[1]) = 2;
    sub_24B50CCB4();
    sub_24B517CBC();
    sub_24B517BDC();
    v103 = *MEMORY[0x277D04400];
    v104 = sub_24B5179AC();
    (*(*(v104 - 8) + 104))(v101 + v99, v103, v104);
    *v102 = &unk_24B525C48;
    v102[1] = 0;
    v105 = *MEMORY[0x277D043E8];
    v106 = sub_24B51799C();
    (*(*(v106 - 8) + 104))(v101 + v100, v105, v106);
    v107 = v396;
    (*(v396 + 104))(v101, *MEMORY[0x277D043B0], v398);
    v108 = v393;
    v109 = *v393;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v109 = sub_24B4CA2A0(0, v109[2] + 1, 1, v109);
    }

    v111 = v109[2];
    v110 = v109[3];
    if (v111 >= v110 >> 1)
    {
      v109 = sub_24B4CA2A0((v110 > 1), v111 + 1, 1, v109);
    }

    v109[2] = v111 + 1;
    (*(v107 + 32))(v109 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v111, v101, v398);
LABEL_58:
    *v108 = v109;
    return;
  }

  v141 = type metadata accessor for BrowseState(0);
  v142 = *(v141 + 36);
  sub_24B50ECD8(&v89[v142], v67, type metadata accessor for BrowseLoadState);
  v143 = swift_getEnumCaseMultiPayload();
  if (v143 > 1)
  {
    if (v143 != 2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v143)
  {
    sub_24B50EDF0(v67, type metadata accessor for BrowseLoadState);
LABEL_38:
    sub_24B50EDF0(&v89[v142], type metadata accessor for BrowseLoadState);
    swift_storeEnumTagMultiPayload();
    v147 = v385;
    sub_24B50ECD8(&v89[*(v141 + 20)], v385, type metadata accessor for BrowseIdentifier);
    v148 = swift_getEnumCaseMultiPayload();
    v149 = v147[1];
    *&v397 = *v147;
    *(&v397 + 1) = v149;
    v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
    v151 = v150[16];
    v152 = v150[20];
    v153 = v150[24];
    if (v148)
    {
      if (v148 == 1)
      {
        v154 = v371;
        v155 = &v371[v153];
        v399[0] = v397;
        LOBYTE(v399[1]) = 2;
        v156 = sub_24B50CCB4();
        swift_bridgeObjectRetain_n();
        v395 = v156;
        sub_24B517CBC();
        sub_24B517BDC();
        v157 = *MEMORY[0x277D04400];
        v158 = sub_24B5179AC();
        v159 = *(v158 - 8);
        v389 = *(v159 + 104);
        v390 = v158;
        v387 = (v159 + 104);
        (v389)(&v154[v151], v157);
        *v155 = &unk_24B525CF8;
        *(v155 + 1) = 0;
        v160 = *MEMORY[0x277D043E8];
        v161 = sub_24B51799C();
        v162 = *(v161 - 8);
        v383 = *(v162 + 104);
        v384 = v161;
        v382 = v162 + 104;
        (v383)(&v154[v152], v160);
        v163 = v396;
        v164 = *(v396 + 104);
        LODWORD(v392) = *MEMORY[0x277D043B0];
        State = (v396 + 104);
        v391 = v164;
        v164(v154);
        v165 = *v393;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        LODWORD(v378) = v160;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v165 = sub_24B4CA2A0(0, *(v165 + 16) + 1, 1, v165);
        }

        v168 = *(v165 + 16);
        v167 = *(v165 + 24);
        if (v168 >= v167 >> 1)
        {
          v165 = sub_24B4CA2A0((v167 > 1), v168 + 1, 1, v165);
        }

        *(v165 + 16) = v168 + 1;
        v170 = *(v163 + 32);
        v169 = v163 + 32;
        v380 = ((*(v169 + 48) + 32) & ~*(v169 + 48));
        v381 = v170;
        v379 = *(v169 + 40);
        v171 = v398;
        (v170)(&v380[v165 + v379 * v168], v371, v398);
        v172 = v150[16];
        v396 = v150[20];
        v173 = v372;
        v174 = &v372[v150[24]];
        v399[0] = v397;
        LOBYTE(v399[1]) = 3;
        sub_24B517CBC();
        sub_24B517BDC();
        (v389)(&v173[v172], v157, v390);
        v175 = swift_allocObject();
        memcpy((v175 + 16), v400, 0x110uLL);
        *v174 = &unk_24B525D08;
        *(v174 + 1) = v175;
        (v383)(&v173[v396], v378, v384);
        v391(v173, v392, v171);
        sub_24B50CE08(v400, v399);
        v177 = *(v165 + 16);
        v176 = *(v165 + 24);
        if (v177 >= v176 >> 1)
        {
          v165 = sub_24B4CA2A0((v176 > 1), v177 + 1, 1, v165);
        }

        *(v165 + 16) = v177 + 1;
        v178 = v398;
        (v381)(&v380[v165 + v177 * v379], v372, v398);
        v179 = v150[16];
        v180 = v150[20];
        v181 = v363;
        v182 = &v363[v150[24]];
        v399[0] = v397;
        LOBYTE(v399[1]) = 5;
        sub_24B517CBC();
        LODWORD(v378) = *MEMORY[0x277D043F0];
        (v389)(&v181[v179]);
        v183 = *MEMORY[0x277D043E0];
        (v383)(&v181[v180], v183, v384);
        v184 = swift_allocObject();
        memcpy((v184 + 16), v400, 0x110uLL);
        *v182 = &unk_24B525D18;
        *(v182 + 1) = v184;
        sub_24B50CE08(v400, v399);
        sub_24B517BDC();
        v391(v181, v392, v178);
        v186 = *(v165 + 16);
        v185 = *(v165 + 24);
        if (v186 >= v185 >> 1)
        {
          v165 = sub_24B4CA2A0((v185 > 1), v186 + 1, 1, v165);
        }

        *(v165 + 16) = v186 + 1;
        v187 = v398;
        v396 = v169;
        (v381)(&v380[v165 + v186 * v379], v181, v398);
        v188 = v150[16];
        v189 = v150[20];
        v190 = v375;
        v191 = &v375[v150[24]];
        v399[0] = v397;
        LOBYTE(v399[1]) = 10;
        sub_24B517CBC();
        (v389)(&v190[v188], v378, v390);
        (v383)(&v190[v189], v183, v384);
        v192 = swift_allocObject();
        memcpy((v192 + 16), v400, 0x110uLL);
        *v191 = &unk_24B525D28;
        *(v191 + 1) = v192;
        sub_24B50CE08(v400, v399);
        sub_24B517BDC();
        v391(v190, v392, v187);
        v194 = *(v165 + 16);
        v193 = *(v165 + 24);
        if (v194 >= v193 >> 1)
        {
          v165 = sub_24B4CA2A0((v193 > 1), v194 + 1, 1, v165);
        }

        v195 = v393;
        v196 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCE8, &qword_24B523C50) + 64);
        *(v165 + 16) = v194 + 1;
        (v381)(&v380[v165 + v194 * v379], v375, v398);
        *v195 = v165;
        (*(v388 + 1))(v385 + v196, v386);
      }

      else
      {
        v253 = v360;
        v254 = &v360[v153];
        v255 = *(&v397 + 1);
        swift_bridgeObjectRetain_n();
        *&v399[0] = v397;
        *(&v399[0] + 1) = v255;
        LOBYTE(v399[1]) = 2;
        v256 = sub_24B50CCB4();
        swift_bridgeObjectRetain_n();
        v395 = v256;
        sub_24B517CBC();
        sub_24B517BDC();
        v257 = *MEMORY[0x277D04400];
        v258 = sub_24B5179AC();
        v259 = *(v258 - 8);
        v260 = *(v259 + 104);
        LODWORD(v381) = v257;
        v390 = v258;
        v386 = (v259 + 104);
        v387 = v260;
        (v260)(&v253[v151], v257);
        *v254 = &unk_24B525C50;
        *(v254 + 1) = 0;
        v261 = *MEMORY[0x277D043E8];
        v262 = sub_24B51799C();
        v263 = *(v262 - 8);
        v264 = *(v263 + 104);
        LODWORD(v382) = v261;
        State = v262;
        v391 = (v263 + 104);
        v392 = v264;
        v264(&v253[v152], v261);
        v265 = *(v396 + 104);
        LODWORD(v389) = *MEMORY[0x277D043B0];
        v388 = v265;
        v265(v253);
        v266 = *v393;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v266 = sub_24B4CA2A0(0, *(v266 + 16) + 1, 1, v266);
        }

        v267 = v362;
        v269 = *(v266 + 16);
        v268 = *(v266 + 24);
        if (v269 >= v268 >> 1)
        {
          v266 = sub_24B4CA2A0((v268 > 1), v269 + 1, 1, v266);
        }

        *(v266 + 16) = v269 + 1;
        v270 = *(v396 + 32);
        v384 = ((*(v396 + 80) + 32) & ~*(v396 + 80));
        v385 = v270;
        v383 = *(v396 + 72);
        v271 = v253;
        v272 = v398;
        v396 += 32;
        (v270)(&v384[v266 + v383 * v269], v271, v398);
        v273 = v150[16];
        v274 = v150[20];
        v275 = &v267[v150[24]];
        v399[0] = v397;
        LOBYTE(v399[1]) = 3;
        sub_24B517CBC();
        sub_24B517BDC();
        (v387)(&v267[v273], v381, v390);
        v276 = swift_allocObject();
        memcpy((v276 + 16), v400, 0x110uLL);
        *v275 = &unk_24B525C60;
        *(v275 + 1) = v276;
        (v392)(&v267[v274], v382, State);
        (v388)(v267, v389, v272);
        sub_24B50CE08(v400, v399);
        v278 = *(v266 + 16);
        v277 = *(v266 + 24);
        if (v278 >= v277 >> 1)
        {
          v266 = sub_24B4CA2A0((v277 > 1), v278 + 1, 1, v266);
        }

        *(v266 + 16) = v278 + 1;
        v279 = v398;
        (v385)(&v384[v266 + v278 * v383], v267, v398);
        v280 = v150[16];
        v281 = v150[20];
        v282 = v374;
        v283 = &v374[v150[24]];
        v399[0] = v397;
        LOBYTE(v399[1]) = 4;
        sub_24B517CBC();
        sub_24B517BDC();
        (v387)(&v282[v280], v381, v390);
        v284 = swift_allocObject();
        memcpy((v284 + 16), v400, 0x110uLL);
        *v283 = &unk_24B525C70;
        *(v283 + 1) = v284;
        (v392)(&v282[v281], v382, State);
        (v388)(v282, v389, v279);
        sub_24B50CE08(v400, v399);
        v286 = *(v266 + 16);
        v285 = *(v266 + 24);
        if (v286 >= v285 >> 1)
        {
          v266 = sub_24B4CA2A0((v285 > 1), v286 + 1, 1, v266);
        }

        *(v266 + 16) = v286 + 1;
        v287 = v398;
        (v385)(&v384[v266 + v286 * v383], v374, v398);
        v288 = v150[16];
        v289 = v150[20];
        v290 = v376;
        v291 = &v376[v150[24]];
        v399[0] = v397;
        LOBYTE(v399[1]) = 5;
        sub_24B517CBC();
        LODWORD(v375) = *MEMORY[0x277D043F0];
        (v387)(&v290[v288]);
        LODWORD(v374) = *MEMORY[0x277D043E0];
        (v392)(&v290[v289]);
        v292 = swift_allocObject();
        memcpy((v292 + 16), v400, 0x110uLL);
        *v291 = &unk_24B525C80;
        *(v291 + 1) = v292;
        sub_24B50CE08(v400, v399);
        sub_24B517BDC();
        (v388)(v290, v389, v287);
        v294 = *(v266 + 16);
        v293 = *(v266 + 24);
        if (v294 >= v293 >> 1)
        {
          v266 = sub_24B4CA2A0((v293 > 1), v294 + 1, 1, v266);
        }

        *(v266 + 16) = v294 + 1;
        v295 = v398;
        (v385)(&v384[v266 + v294 * v383], v376, v398);
        v296 = v150[16];
        v297 = v150[20];
        v298 = v377;
        v299 = &v377[v150[24]];
        v399[0] = xmmword_24B525C30;
        LOBYTE(v399[1]) = 12;
        sub_24B517CBC();
        sub_24B517BDC();
        (v387)(&v298[v296], v381, v390);
        v300 = swift_allocObject();
        memcpy((v300 + 16), v400, 0x110uLL);
        *v299 = &unk_24B525C90;
        *(v299 + 1) = v300;
        (v392)(&v298[v297], v382, State);
        (v388)(v298, v389, v295);
        sub_24B50CE08(v400, v399);
        v302 = *(v266 + 16);
        v301 = *(v266 + 24);
        if (v302 >= v301 >> 1)
        {
          v266 = sub_24B4CA2A0((v301 > 1), v302 + 1, 1, v266);
        }

        v303 = v364;
        *(v266 + 16) = v302 + 1;
        v304 = v398;
        (v385)(&v384[v266 + v302 * v383], v377, v398);
        v305 = v150[16];
        v306 = v150[20];
        v307 = &v303[v150[24]];
        v399[0] = v397;
        LOBYTE(v399[1]) = 6;
        sub_24B517CBC();
        sub_24B517BDC();
        (v387)(&v303[v305], v381, v390);
        v308 = swift_allocObject();
        memcpy((v308 + 16), v400, 0x110uLL);
        *v307 = &unk_24B525CA0;
        *(v307 + 1) = v308;
        (v392)(&v303[v306], v382, State);
        (v388)(v303, v389, v304);
        sub_24B50CE08(v400, v399);
        v310 = *(v266 + 16);
        v309 = *(v266 + 24);
        if (v310 >= v309 >> 1)
        {
          v266 = sub_24B4CA2A0((v309 > 1), v310 + 1, 1, v266);
        }

        *(v266 + 16) = v310 + 1;
        v311 = v398;
        (v385)(&v384[v266 + v310 * v383], v303, v398);
        v312 = v150[16];
        v313 = v150[20];
        v314 = v378;
        v315 = &v378[v150[24]];
        v399[0] = v397;
        LOBYTE(v399[1]) = 7;
        sub_24B517CBC();
        sub_24B517BDC();
        (v387)(&v314[v312], v381, v390);
        v316 = swift_allocObject();
        memcpy((v316 + 16), v400, 0x110uLL);
        *v315 = &unk_24B525CB0;
        *(v315 + 1) = v316;
        (v392)(&v314[v313], v382, State);
        (v388)(v314, v389, v311);
        sub_24B50CE08(v400, v399);
        v318 = *(v266 + 16);
        v317 = *(v266 + 24);
        if (v318 >= v317 >> 1)
        {
          v266 = sub_24B4CA2A0((v317 > 1), v318 + 1, 1, v266);
        }

        v319 = v365;
        *(v266 + 16) = v318 + 1;
        v320 = v398;
        (v385)(&v384[v266 + v318 * v383], v378, v398);
        v321 = v150[16];
        v322 = v150[20];
        v323 = &v319[v150[24]];
        v399[0] = v397;
        LOBYTE(v399[1]) = 8;
        sub_24B517CBC();
        sub_24B517BDC();
        (v387)(&v319[v321], v381, v390);
        v324 = swift_allocObject();
        memcpy((v324 + 16), v400, 0x110uLL);
        *v323 = &unk_24B525CC0;
        *(v323 + 1) = v324;
        (v392)(&v319[v322], v382, State);
        (v388)(v319, v389, v320);
        sub_24B50CE08(v400, v399);
        v326 = *(v266 + 16);
        v325 = *(v266 + 24);
        if (v326 >= v325 >> 1)
        {
          v266 = sub_24B4CA2A0((v325 > 1), v326 + 1, 1, v266);
        }

        *(v266 + 16) = v326 + 1;
        v327 = v398;
        (v385)(&v384[v266 + v326 * v383], v319, v398);
        v328 = v150[16];
        v329 = v150[20];
        v330 = v379;
        v331 = &v379[v150[24]];
        v399[0] = v397;
        LOBYTE(v399[1]) = 10;
        sub_24B517CBC();
        (v387)(&v330[v328], v375, v390);
        (v392)(&v330[v329], v374, State);
        v332 = swift_allocObject();
        memcpy((v332 + 16), v400, 0x110uLL);
        *v331 = &unk_24B525CD0;
        *(v331 + 1) = v332;
        sub_24B50CE08(v400, v399);
        sub_24B517BDC();
        (v388)(v330, v389, v327);
        v334 = *(v266 + 16);
        v333 = *(v266 + 24);
        if (v334 >= v333 >> 1)
        {
          v266 = sub_24B4CA2A0((v333 > 1), v334 + 1, 1, v266);
        }

        v335 = v366;
        *(v266 + 16) = v334 + 1;
        v336 = v398;
        (v385)(&v384[v266 + v334 * v383], v379, v398);
        v337 = v150[16];
        v338 = v150[20];
        v339 = &v335[v150[24]];
        v399[0] = v397;
        LOBYTE(v399[1]) = 9;
        sub_24B517CBC();
        sub_24B517BDC();
        (v387)(&v335[v337], v381, v390);
        v340 = swift_allocObject();
        memcpy((v340 + 16), v400, 0x110uLL);
        *v339 = &unk_24B525CE0;
        *(v339 + 1) = v340;
        (v392)(&v335[v338], v382, State);
        (v388)(v335, v389, v336);
        sub_24B50CE08(v400, v399);
        v342 = *(v266 + 16);
        v341 = *(v266 + 24);
        if (v342 >= v341 >> 1)
        {
          v266 = sub_24B4CA2A0((v341 > 1), v342 + 1, 1, v266);
        }

        *(v266 + 16) = v342 + 1;
        v343 = v398;
        (v385)(&v384[v266 + v342 * v383], v335, v398);
        v344 = v150[16];
        v345 = v150[20];
        v346 = v380;
        v347 = &v380[v150[24]];
        v399[0] = v397;
        LOBYTE(v399[1]) = 11;
        sub_24B517CBC();
        sub_24B517BDC();
        (v387)(&v346[v344], v381, v390);
        v348 = swift_allocObject();
        memcpy((v348 + 16), v400, 0x110uLL);
        *v347 = &unk_24B525CF0;
        *(v347 + 1) = v348;
        (v392)(&v346[v345], v382, State);
        (v388)(v346, v389, v343);
        sub_24B50CE08(v400, v399);
        v350 = *(v266 + 16);
        v349 = *(v266 + 24);
        if (v350 >= v349 >> 1)
        {
          v266 = sub_24B4CA2A0((v349 > 1), v350 + 1, 1, v266);
        }

        v351 = v393;
        *(v266 + 16) = v350 + 1;
        (v385)(&v384[v266 + v350 * v383], v380, v398);
        *v351 = v266;
      }
    }

    else
    {
      v219 = v359;
      v220 = &v359[v153];
      v399[0] = v397;
      LOBYTE(v399[1]) = 2;
      v221 = sub_24B50CCB4();
      swift_bridgeObjectRetain_n();
      v395 = v221;
      sub_24B517CBC();
      sub_24B517BDC();
      v222 = *MEMORY[0x277D04400];
      v223 = sub_24B5179AC();
      v224 = *(v223 - 8);
      v389 = *(v224 + 104);
      v390 = v223;
      v388 = (v224 + 104);
      (v389)(&v219[v151], v222);
      *v220 = &unk_24B525D30;
      *(v220 + 1) = 0;
      v225 = *MEMORY[0x277D043E8];
      v226 = sub_24B51799C();
      v227 = *(v226 - 1);
      v386 = *(v227 + 104);
      v387 = v226;
      v385 = (v227 + 104);
      (v386)(&v219[v152], v225);
      v228 = v396;
      v229 = *(v396 + 104);
      LODWORD(v392) = *MEMORY[0x277D043B0];
      State = (v396 + 104);
      v391 = v229;
      v229(v219);
      v230 = *v393;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v230 = sub_24B4CA2A0(0, v230[2] + 1, 1, v230);
      }

      v232 = v230[2];
      v231 = v230[3];
      if (v232 >= v231 >> 1)
      {
        v230 = sub_24B4CA2A0((v231 > 1), v232 + 1, 1, v230);
      }

      v230[2] = v232 + 1;
      v234 = *(v228 + 32);
      v233 = v228 + 32;
      v383 = (*(v233 + 48) + 32) & ~*(v233 + 48);
      v384 = v234;
      v382 = *(v233 + 40);
      v235 = v398;
      (v234)(v230 + v383 + v382 * v232, v219, v398);
      v236 = v150[16];
      v237 = v150[20];
      v238 = v361;
      v239 = &v361[v150[24]];
      v399[0] = v397;
      LOBYTE(v399[1]) = 5;
      sub_24B517CBC();
      LODWORD(v381) = *MEMORY[0x277D043F0];
      (v389)(&v238[v236]);
      v240 = *MEMORY[0x277D043E0];
      (v386)(&v238[v237], v240, v387);
      v241 = swift_allocObject();
      memcpy((v241 + 16), v400, 0x110uLL);
      *v239 = &unk_24B525D40;
      *(v239 + 1) = v241;
      sub_24B50CE08(v400, v399);
      sub_24B517BDC();
      v391(v238, v392, v235);
      v243 = v230[2];
      v242 = v230[3];
      if (v243 >= v242 >> 1)
      {
        v230 = sub_24B4CA2A0((v242 > 1), v243 + 1, 1, v230);
      }

      v230[2] = v243 + 1;
      v244 = v398;
      v396 = v233;
      (v384)(v230 + v383 + v243 * v382, v238, v398);
      v245 = v150[16];
      v246 = v150[20];
      v247 = v373;
      v248 = &v373[v150[24]];
      v399[0] = v397;
      LOBYTE(v399[1]) = 10;
      sub_24B517CBC();
      (v389)(&v247[v245], v381, v390);
      (v386)(&v247[v246], v240, v387);
      v249 = swift_allocObject();
      memcpy((v249 + 16), v400, 0x110uLL);
      *v248 = &unk_24B525D50;
      *(v248 + 1) = v249;
      sub_24B50CE08(v400, v399);
      sub_24B517BDC();
      v391(v247, v392, v244);
      v251 = v230[2];
      v250 = v230[3];
      if (v251 >= v250 >> 1)
      {
        v230 = sub_24B4CA2A0((v250 > 1), v251 + 1, 1, v230);
      }

      v252 = v393;
      v230[2] = v251 + 1;
      (v384)(v230 + v383 + v251 * v382, v373, v398);
      *v252 = v230;
    }

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFE8, &qword_24B5252B0);

  v216 = v367;
  sub_24B4DDB80(v391, v367);
  v217 = v389;
  v218 = v390;
  if ((*(v389 + 48))(v216, 1, v390) == 1)
  {
    sub_24B50CD08(v216);
    sub_24B50EDF0(v67, type metadata accessor for BrowseContent);
    return;
  }

  (*(v217 + 32))(v381, v216, v218);
  v352 = v358;
  sub_24B516BDC();
  sub_24B516BBC();
  v354 = v353;
  *(&v397 + 1) = *(v217 + 8);
  (*(&v397 + 1))(v352, v218);
  v355 = v391;
  sub_24B50CD08(v391);
  (*(v217 + 56))(v355, 1, 1, v218);
  sub_24B517C2C();
  v357 = v356;
  (*(&v397 + 1))(v381, v218);
  sub_24B50EDF0(v67, type metadata accessor for BrowseContent);
  if (v357 <= v354)
  {
    goto LABEL_38;
  }
}

uint64_t sub_24B5022AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a3;
  v4[39] = a4;
  v4[36] = a1;
  v4[37] = a2;
  v4[40] = type metadata accessor for BrowseAction(0);
  v4[41] = swift_task_alloc();
  type metadata accessor for EditorialCollectionDetail(0);
  v4[42] = swift_task_alloc();
  sub_24B517BCC();
  v4[43] = sub_24B517BBC();
  v6 = sub_24B517B9C();
  v4[44] = v6;
  v4[45] = v5;

  return MEMORY[0x2822009F8](sub_24B5023A4, v6, v5);
}

uint64_t sub_24B5023A4()
{
  v1 = v0[37];
  v2 = *v1;
  v3 = swift_allocObject();
  v0[46] = v3;
  memcpy((v3 + 16), v1, 0x110uLL);
  sub_24B50CE08(v1, (v0 + 2));
  v9 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[47] = v4;
  *v4 = v0;
  v4[1] = sub_24B5024F8;
  v5 = v0[42];
  v6 = v0[38];
  v7 = v0[39];

  return v9(v5, v6, v7, sub_24B50EBF8, v3);
}

uint64_t sub_24B5024F8()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = *(v2 + 352);
    v4 = *(v2 + 360);
    v5 = sub_24B502930;
  }

  else
  {

    v3 = *(v2 + 352);
    v4 = *(v2 + 360);
    v5 = sub_24B502614;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B502614()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE310, &qword_24B525D58) + 48);
  sub_24B50ECD8(v2, v1, type metadata accessor for EditorialCollectionDetail);
  type metadata accessor for BrowseContent(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + v3) = MEMORY[0x277D84FA0];
  swift_storeEnumTagMultiPayload();
  v4 = swift_task_alloc();
  v0[49] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
  *v4 = v0;
  v4[1] = sub_24B502744;
  v6 = v0[41];

  return MEMORY[0x282159B08](v6, v5);
}

uint64_t sub_24B502744()
{
  v1 = *v0;
  v2 = *(*v0 + 328);

  sub_24B50EDF0(v2, type metadata accessor for BrowseAction);
  v3 = *(v1 + 360);
  v4 = *(v1 + 352);

  return MEMORY[0x2822009F8](sub_24B50289C, v4, v3);
}

uint64_t sub_24B50289C()
{
  v1 = *(v0 + 336);

  sub_24B50EDF0(v1, type metadata accessor for EditorialCollectionDetail);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B502930()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B5029BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 152) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  *(v6 + 48) = type metadata accessor for BrowseAction(0);
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = sub_24B517BCC();
  *(v6 + 72) = sub_24B517BBC();
  v11 = *(a2 + 16);
  *(v6 + 80) = *(a2 + 256);
  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  *(v6 + 96) = v12;
  *v12 = v6;
  v12[1] = sub_24B502B2C;

  return v14(a3, a4, a5);
}

uint64_t sub_24B502B2C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_24B517B9C();
    v7 = v6;
    v8 = sub_24B5031C8;
    v9 = v5;
    v10 = v7;
  }

  else
  {
    v4[14] = a1;
    v11 = sub_24B517B9C();
    v10 = v12;
    v4[15] = v11;
    v4[16] = v12;
    v8 = sub_24B502CBC;
    v9 = v11;
  }

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_24B502CBC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = *(v0 + 152);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE310, &qword_24B525D58) + 48);
  v8 = *(type metadata accessor for BrowseGalleryDescriptor(0) + 32);
  v9 = sub_24B516B8C();
  (*(*(v9 - 8) + 16))(v2 + v8, v4, v9);
  *v2 = v6;
  *(v2 + 8) = v5;
  *(v2 + 16) = v3;
  *(v2 + 24) = v1;
  *(v2 + 32) = 0;
  type metadata accessor for BrowseContent(0);
  swift_storeEnumTagMultiPayload();
  *(v2 + v7) = MEMORY[0x277D84FA0];
  swift_storeEnumTagMultiPayload();

  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
  *v10 = v0;
  v10[1] = sub_24B502E54;
  v12 = *(v0 + 56);

  return MEMORY[0x282159B08](v12, v11);
}

uint64_t sub_24B502E54()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 56);
  v4 = *v0;

  sub_24B50EDF0(v3, type metadata accessor for BrowseAction);
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  *(v1 + 144) = v5;
  *v5 = v4;
  v5[1] = sub_24B503038;

  return v7();
}

uint64_t sub_24B503038()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_24B503158, v3, v2);
}

uint64_t sub_24B503158()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B5031C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B503238(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 448) = a3;
  *(v3 + 320) = a1;
  *(v3 + 328) = a2;
  *(v3 + 336) = type metadata accessor for BrowseAction(0);
  *(v3 + 344) = swift_task_alloc();
  sub_24B517BCC();
  *(v3 + 352) = sub_24B517BBC();
  v5 = sub_24B517B9C();
  *(v3 + 360) = v5;
  *(v3 + 368) = v4;

  return MEMORY[0x2822009F8](sub_24B503304, v5, v4);
}

uint64_t sub_24B503304()
{
  v1 = v0[41];
  v2 = v1[4];
  v0[47] = v1[32];
  v0[48] = v1[33];
  v3 = swift_allocObject();
  v0[49] = v3;
  memcpy((v3 + 16), v1, 0x110uLL);
  sub_24B50CE08(v1, (v0 + 2));
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[50] = v4;
  *v4 = v0;
  v4[1] = sub_24B50345C;

  return v6(sub_24B50EE58, v3);
}

uint64_t sub_24B50345C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 408) = v1;

  if (v1)
  {
    v5 = v4[45];
    v6 = v4[46];
    v7 = sub_24B503A60;
  }

  else
  {

    v4[52] = a1;
    v5 = v4[45];
    v6 = v4[46];
    v7 = sub_24B50358C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B50358C()
{
  v12 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);
  v3 = Array<A>.includingMarketingUpsellSectionDescriptors(isSubscribed:)(*(v0 + 448), *(v0 + 416));

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE310, &qword_24B525D58) + 48);
  *v1 = v3;
  type metadata accessor for BrowseContent(0);
  swift_storeEnumTagMultiPayload();
  memcpy(__dst, v2, sizeof(__dst));

  v6 = sub_24B503E90(v5);

  *(v1 + v4) = v6;
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  *(v0 + 424) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
  *v7 = v0;
  v7[1] = sub_24B5036F0;
  v9 = *(v0 + 344);

  return MEMORY[0x282159B08](v9, v8);
}

uint64_t sub_24B5036F0()
{
  v1 = *v0;
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 344);
  v4 = *v0;

  sub_24B50EDF0(v3, type metadata accessor for BrowseAction);
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  *(v1 + 432) = v5;
  *v5 = v4;
  v5[1] = sub_24B5038D4;

  return v7();
}

uint64_t sub_24B5038D4()
{
  v1 = *v0;

  v2 = *(v1 + 368);
  v3 = *(v1 + 360);

  return MEMORY[0x2822009F8](sub_24B5039F4, v3, v2);
}

uint64_t sub_24B5039F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B503A60()
{
  v1 = *(v0 + 344);

  swift_getErrorValue();
  *v1 = sub_24B517F2C();
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  *(v0 + 440) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
  *v3 = v0;
  v3[1] = sub_24B503B5C;
  v5 = *(v0 + 344);

  return MEMORY[0x282159B08](v5, v4);
}

uint64_t sub_24B503B5C()
{
  v1 = *v0;
  v2 = *(*v0 + 344);

  sub_24B50EDF0(v2, type metadata accessor for BrowseAction);
  v3 = *(v1 + 368);
  v4 = *(v1 + 360);

  return MEMORY[0x2822009F8](sub_24B503CB4, v4, v3);
}

uint64_t sub_24B503CB4()
{
  v1 = *(v0 + 408);

  MEMORY[0x24C242050](v1);

  v2 = *(v0 + 8);

  return v2();
}

BOOL sub_24B503D2C(uint64_t a1)
{
  v2 = type metadata accessor for BrowseDetailContent(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BrowseInsetBehaviorProviderType(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B50ECD8(a1, v7, type metadata accessor for BrowseInsetBehaviorProviderType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v7 == 25;
  }

  sub_24B50ED88(v7, v4, type metadata accessor for BrowseDetailContent);
  v8 = swift_getEnumCaseMultiPayload() == 0;
  sub_24B50EDF0(v4, type metadata accessor for BrowseDetailContent);
  return v8;
}

uint64_t sub_24B503E90(uint64_t a1)
{
  v76 = sub_24B516C6C();
  v84 = *(v76 - 8);
  v2 = MEMORY[0x28223BE20](v76);
  v75 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v74 = &v57 - v4;
  v70 = type metadata accessor for BrowseItem(0);
  MEMORY[0x28223BE20](v70);
  v69 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BrowseLazyItem(0);
  v72 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE320, &qword_24B526090);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v71 = (&v57 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE328, &qword_24B526098);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (&v57 - v19);
  v63 = type metadata accessor for BrowseSectionDescriptor(0);
  v58 = *(v63 - 8);
  MEMORY[0x28223BE20](v63 - 8);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for BrowseEditorialDescriptor(0);
  MEMORY[0x28223BE20](v23 - 8);
  v60 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE330, &qword_24B5260A0);
  v25 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v57 = (&v57 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE338, &qword_24B5260A8);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  result = MEMORY[0x28223BE20](v28);
  v66 = (&v57 - v30);
  v31 = 0;
  v65 = (v25 + 56);
  v64 = (v25 + 48);
  v33 = v32;
  v79 = (v13 + 48);
  v80 = (v13 + 56);
  v59 = a1;
  v34 = *(a1 + 16);
  v73 = (v84 + 8);
  v82 = v20;
  v84 = v22;
  v85 = MEMORY[0x277D84FA0];
  v61 = v32;
  v62 = v34;
  v78 = v18;
  while (1)
  {
    if (v31 == v34)
    {
      v37 = 1;
      v68 = v34;
      v38 = v67;
      goto LABEL_10;
    }

    v38 = v67;
    if (v31 >= v34)
    {
      goto LABEL_35;
    }

    v39 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    v40 = v59 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v31;
    v41 = *(v67 + 48);
    v42 = v57;
    *v57 = v31;
    sub_24B50ECD8(v40, v42 + v41, type metadata accessor for BrowseSectionDescriptor);
    v43 = v42;
    v33 = v61;
    sub_24B49AA90(v43, v61, &qword_27EFFE330, &qword_24B5260A0);
    v37 = 0;
    v68 = v39;
    v22 = v84;
LABEL_10:
    (*v65)(v33, v37, 1, v38);
    v44 = v66;
    sub_24B49AA90(v33, v66, &qword_27EFFE338, &qword_24B5260A8);
    if ((*v64)(v44, 1, v38) == 1)
    {
      return v85;
    }

    v77 = *v44;
    sub_24B50ED88(v44 + *(v38 + 48), v22, type metadata accessor for BrowseSectionDescriptor);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v45 = v60;
      sub_24B50ED88(v22, v60, type metadata accessor for BrowseEditorialDescriptor);
      if (v45[8] == 1)
      {
        v46 = *v45;
        v81 = *(*v45 + 16);

        v47 = 0;
        while (1)
        {
          if (v47 == v81)
          {
            v50 = 1;
            v47 = v81;
          }

          else
          {
            if ((v47 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            if (v47 >= *(v46 + 16))
            {
              goto LABEL_34;
            }

            v51 = v71;
            v52 = v46 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v47;
            v53 = *(v12 + 48);
            *v71 = v47;
            sub_24B50ECD8(v52, v51 + v53, type metadata accessor for BrowseLazyItem);
            sub_24B49AA90(v51, v18, &qword_27EFFE320, &qword_24B526090);
            v50 = 0;
            ++v47;
            v22 = v84;
          }

          (*v80)(v18, v50, 1, v12);
          sub_24B49AA90(v18, v20, &qword_27EFFE328, &qword_24B526098);
          if ((*v79)(v20, 1, v12) == 1)
          {

            result = sub_24B50EDF0(v60, type metadata accessor for BrowseEditorialDescriptor);
            v33 = v61;
            goto LABEL_4;
          }

          v83 = *v20;
          sub_24B50ED88(v20 + *(v12 + 48), v11, type metadata accessor for BrowseLazyItem);
          sub_24B50ECD8(v11, v9, type metadata accessor for BrowseLazyItem);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v54 = v9[72];

            v20 = v82;

            v22 = v84;

            if (v54 <= 3)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v55 = v69;
            sub_24B50ED88(v9, v69, type metadata accessor for BrowseItem);
            v54 = *(v55 + *(v70 + 72));
            sub_24B50EDF0(v55, type metadata accessor for BrowseItem);
            if (v54 <= 3)
            {
              goto LABEL_28;
            }
          }

          if (v54 == 7)
          {

LABEL_15:
            v48 = v75;
            MEMORY[0x24C240A40](v83, v77);
            v49 = v74;
            sub_24B50DB98(v74, v48);
            v22 = v84;
            (*v73)(v49, v76);
            goto LABEL_16;
          }

LABEL_28:
          v56 = sub_24B517EEC();

          v20 = v82;
          if (v56)
          {
            goto LABEL_15;
          }

LABEL_16:
          result = sub_24B50EDF0(v11, type metadata accessor for BrowseLazyItem);
          v18 = v78;
        }
      }

      v35 = type metadata accessor for BrowseEditorialDescriptor;
      v36 = v45;
    }

    else
    {
      v35 = type metadata accessor for BrowseSectionDescriptor;
      v36 = v22;
    }

    result = sub_24B50EDF0(v36, v35);
LABEL_4:
    v34 = v62;
    v31 = v68;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_24B504974(uint64_t a1)
{
  v2 = type metadata accessor for BrowseGalleryDescriptor(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BrowseEditorialDescriptor(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BrowseDetailDescriptor(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BrowseSectionDescriptor(0);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  if (!v15)
  {
    return 2;
  }

  v16 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v17 = *(v12 + 72);
  while (1)
  {
    sub_24B50ECD8(v16, v14, type metadata accessor for BrowseSectionDescriptor);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          sub_24B50ED88(v14, v10, type metadata accessor for BrowseDetailDescriptor);
          v20 = v10[*(v8 + 24)];
          v22 = type metadata accessor for BrowseDetailDescriptor;
          v23 = v10;
          goto LABEL_16;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_24B50ED88(v14, v4, type metadata accessor for BrowseGalleryDescriptor);
          v21 = v4[32];
          sub_24B50EDF0(v4, type metadata accessor for BrowseGalleryDescriptor);
          return v21;
        }

        if (EnumCaseMultiPayload == 4)
        {
          v20 = v14[16];

          return v20;
        }
      }

      sub_24B50EDF0(v14, type metadata accessor for BrowseSectionDescriptor);
      return 0;
    }

    sub_24B50ED88(v14, v7, type metadata accessor for BrowseEditorialDescriptor);
    if (*(*v7 + 16))
    {
      break;
    }

    sub_24B50EDF0(v7, type metadata accessor for BrowseEditorialDescriptor);
    v16 += v17;
    if (!--v15)
    {
      return 2;
    }
  }

  v20 = v7[32];
  v22 = type metadata accessor for BrowseEditorialDescriptor;
  v23 = v7;
LABEL_16:
  sub_24B50EDF0(v23, v22);
  return v20;
}

uint64_t sub_24B504CAC(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for BrowseAction(0);
  v1[4] = swift_task_alloc();
  sub_24B517BCC();
  v1[5] = sub_24B517BBC();
  v3 = sub_24B517B9C();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_24B504D74, v3, v2);
}

uint64_t sub_24B504D74()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
  *v1 = v0;
  v1[1] = sub_24B504E34;
  v3 = *(v0 + 32);

  return MEMORY[0x282159B08](v3, v2);
}

uint64_t sub_24B504E34()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  sub_24B50EDF0(v2, type metadata accessor for BrowseAction);
  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24B50EE50, v4, v3);
}

uint64_t sub_24B504F8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = sub_24B517BCC();
  *(v2 + 112) = sub_24B517BBC();
  v4 = *(a2 + 96);
  *(v2 + 120) = *(a2 + 240);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 136) = v5;
  *v5 = v2;
  v5[1] = sub_24B5050A4;

  return v7(v2 + 56);
}

uint64_t sub_24B5050A4()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = sub_24B517B9C();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_24B50EE54;
  }

  else
  {
    v5 = sub_24B505204;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B505204()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B517BBC();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_24B5053DC;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v5, v7);
}

uint64_t sub_24B5053DC()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x2822009F8](sub_24B5054F0, v4, v5);
  }

  return result;
}

uint64_t sub_24B5054F0()
{
  if (*(v0 + 96))
  {
    (*(v0 + 120))(*(v0 + 96));

    v1 = sub_24B517BBC();
    *(v0 + 168) = v1;
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 176) = v2;
    *v2 = v0;
    v2[1] = sub_24B5053DC;
    v3 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 96, v1, v3);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_24B505648(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = sub_24B517BCC();
  *(v2 + 112) = sub_24B517BBC();
  v4 = *(a2 + 192);
  *(v2 + 120) = *(a2 + 240);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 136) = v5;
  *v5 = v2;
  v5[1] = sub_24B505760;

  return v7(v2 + 56);
}

uint64_t sub_24B505760()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = sub_24B517B9C();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_24B50EE54;
  }

  else
  {
    v5 = sub_24B5058C0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B5058C0()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B517BBC();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_24B505A98;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v5, v7);
}

uint64_t sub_24B505A98()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x2822009F8](sub_24B505BAC, v4, v5);
  }

  return result;
}

uint64_t sub_24B505BAC()
{
  if (*(v0 + 96))
  {
    (*(v0 + 120))(*(v0 + 96));

    v1 = sub_24B517BBC();
    *(v0 + 168) = v1;
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 176) = v2;
    *v2 = v0;
    v2[1] = sub_24B505A98;
    v3 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 96, v1, v3);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_24B505D04(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = type metadata accessor for BrowseAction(0);
  v2[14] = swift_task_alloc();
  v2[15] = sub_24B517BCC();
  v2[16] = sub_24B517BBC();
  v6 = (*(a2 + 64) + **(a2 + 64));
  v4 = swift_task_alloc();
  v2[17] = v4;
  *v4 = v2;
  v4[1] = sub_24B505E48;

  return v6(v2 + 7);
}

uint64_t sub_24B505E48()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = sub_24B517B9C();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_24B50EE5C;
  }

  else
  {
    v5 = sub_24B505FA8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B505FA8()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B517BBC();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_24B506180;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v5, v7);
}

uint64_t sub_24B506180()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x2822009F8](sub_24B506294, v4, v5);
  }

  return result;
}

uint64_t sub_24B506294()
{
  if (*(v0 + 192) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
    *v3 = v0;
    v3[1] = sub_24B5063B0;
    v5 = *(v0 + 112);

    return MEMORY[0x282159B08](v5, v4);
  }
}

uint64_t sub_24B5063B0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  sub_24B50EDF0(v2, type metadata accessor for BrowseAction);
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B506508, v4, v3);
}

uint64_t sub_24B506508(uint64_t a1)
{
  v2 = sub_24B517BBC();
  v1[21] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_24B506180;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 24, v2, v4);
}

uint64_t sub_24B5065E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = sub_24B517BCC();
  *(v2 + 112) = sub_24B517BBC();
  v4 = *(a2 + 96);
  *(v2 + 120) = *(a2 + 240);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 136) = v5;
  *v5 = v2;
  v5[1] = sub_24B5066FC;

  return v7(v2 + 56);
}

uint64_t sub_24B5066FC()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = sub_24B517B9C();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_24B50EE54;
  }

  else
  {
    v5 = sub_24B50685C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B50685C()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B517BBC();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_24B506A34;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v5, v7);
}

uint64_t sub_24B506A34()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x2822009F8](sub_24B506B48, v4, v5);
  }

  return result;
}

uint64_t sub_24B506B48()
{
  if (*(v0 + 96))
  {
    (*(v0 + 120))(*(v0 + 96));

    v1 = sub_24B517BBC();
    *(v0 + 168) = v1;
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 176) = v2;
    *v2 = v0;
    v2[1] = sub_24B506A34;
    v3 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 96, v1, v3);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_24B506CA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = sub_24B517BCC();
  *(v2 + 112) = sub_24B517BBC();
  v4 = *(a2 + 192);
  *(v2 + 120) = *(a2 + 240);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 136) = v5;
  *v5 = v2;
  v5[1] = sub_24B506DB8;

  return v7(v2 + 56);
}

uint64_t sub_24B506DB8()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = sub_24B517B9C();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_24B50EE54;
  }

  else
  {
    v5 = sub_24B506F18;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B506F18()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B517BBC();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_24B5070F0;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v5, v7);
}

uint64_t sub_24B5070F0()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x2822009F8](sub_24B507204, v4, v5);
  }

  return result;
}

uint64_t sub_24B507204()
{
  if (*(v0 + 96))
  {
    (*(v0 + 120))(*(v0 + 96));

    v1 = sub_24B517BBC();
    *(v0 + 168) = v1;
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 176) = v2;
    *v2 = v0;
    v2[1] = sub_24B5070F0;
    v3 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 96, v1, v3);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_24B50735C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = type metadata accessor for BrowseAction(0);
  v2[14] = swift_task_alloc();
  v2[15] = sub_24B517BCC();
  v2[16] = sub_24B517BBC();
  v6 = (*(a2 + 64) + **(a2 + 64));
  v4 = swift_task_alloc();
  v2[17] = v4;
  *v4 = v2;
  v4[1] = sub_24B5074A0;

  return v6(v2 + 7);
}

uint64_t sub_24B5074A0()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = sub_24B517B9C();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_24B507C3C;
  }

  else
  {
    v5 = sub_24B507600;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B507600()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B517BBC();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_24B5077D8;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v5, v7);
}

uint64_t sub_24B5077D8()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x2822009F8](sub_24B5078EC, v4, v5);
  }

  return result;
}

uint64_t sub_24B5078EC()
{
  if (*(v0 + 192) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
    *v3 = v0;
    v3[1] = sub_24B507A08;
    v5 = *(v0 + 112);

    return MEMORY[0x282159B08](v5, v4);
  }
}

uint64_t sub_24B507A08()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  sub_24B50EDF0(v2, type metadata accessor for BrowseAction);
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B507B60, v4, v3);
}

uint64_t sub_24B507B60(uint64_t a1)
{
  v2 = sub_24B517BBC();
  v1[21] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_24B5077D8;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 24, v2, v4);
}

uint64_t sub_24B507C3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B507CAC(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = type metadata accessor for BrowseAction(0);
  v2[14] = swift_task_alloc();
  v2[15] = sub_24B517BCC();
  v2[16] = sub_24B517BBC();
  v6 = (*(a2 + 80) + **(a2 + 80));
  v4 = swift_task_alloc();
  v2[17] = v4;
  *v4 = v2;
  v4[1] = sub_24B507DF0;

  return v6(v2 + 7);
}

uint64_t sub_24B507DF0()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = sub_24B517B9C();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_24B50EE5C;
  }

  else
  {
    v5 = sub_24B507F50;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B507F50()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B517BBC();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_24B508128;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v5, v7);
}

uint64_t sub_24B508128()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x2822009F8](sub_24B50823C, v4, v5);
  }

  return result;
}

uint64_t sub_24B50823C(uint64_t a1)
{
  if (*(v1 + 192) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v1 + 16));

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    sub_24B516BDC();
    swift_storeEnumTagMultiPayload();
    v4 = swift_task_alloc();
    *(v1 + 184) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
    *v4 = v1;
    v4[1] = sub_24B508368;
    v6 = *(v1 + 112);

    return MEMORY[0x282159B08](v6, v5);
  }
}

uint64_t sub_24B508368()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  sub_24B50EDF0(v2, type metadata accessor for BrowseAction);
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B5084C0, v4, v3);
}

uint64_t sub_24B5084C0(uint64_t a1)
{
  v2 = sub_24B517BBC();
  v1[21] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_24B508128;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 24, v2, v4);
}

uint64_t sub_24B50859C(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = sub_24B517BCC();
  *(v2 + 112) = sub_24B517BBC();
  v4 = *(a2 + 96);
  *(v2 + 120) = *(a2 + 240);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 136) = v5;
  *v5 = v2;
  v5[1] = sub_24B5086B4;

  return v7(v2 + 56);
}

uint64_t sub_24B5086B4()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = sub_24B517B9C();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_24B508C58;
  }

  else
  {
    v5 = sub_24B508814;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B508814()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B517BBC();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_24B5089EC;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v5, v7);
}

uint64_t sub_24B5089EC()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x2822009F8](sub_24B508B00, v4, v5);
  }

  return result;
}

uint64_t sub_24B508B00()
{
  if (*(v0 + 96))
  {
    (*(v0 + 120))(*(v0 + 96));

    v1 = sub_24B517BBC();
    *(v0 + 168) = v1;
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 176) = v2;
    *v2 = v0;
    v2[1] = sub_24B5089EC;
    v3 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 96, v1, v3);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_24B508C58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B508CBC(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = sub_24B517BCC();
  *(v2 + 104) = sub_24B517BBC();
  *(v2 + 112) = *(a2 + 48);
  v6 = (*(a2 + 112) + **(a2 + 112));
  v4 = swift_task_alloc();
  *(v2 + 128) = v4;
  *v4 = v2;
  v4[1] = sub_24B508DD4;

  return v6(v2 + 56);
}

uint64_t sub_24B508DD4()
{
  v2 = *v1;
  v2[17] = v0;

  v4 = sub_24B517B9C();
  v2[18] = v4;
  v2[19] = v3;
  if (v0)
  {
    v5 = sub_24B509574;
  }

  else
  {
    v5 = sub_24B508F34;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B508F34()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B517BBC();
  v0[20] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_24B50910C;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v5, v7);
}

uint64_t sub_24B50910C()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 144);
    v5 = *(v2 + 152);

    return MEMORY[0x2822009F8](sub_24B509220, v4, v5);
  }

  return result;
}

uint64_t sub_24B509220()
{
  if (*(v0 + 192) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = (*(v0 + 112) + **(v0 + 112));
    v3 = swift_task_alloc();
    *(v0 + 176) = v3;
    *v3 = v0;
    v3[1] = sub_24B50935C;

    return v4();
  }
}

uint64_t sub_24B50935C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_24B5095D8;
  }

  else
  {
    v5 = sub_24B509498;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B509498(uint64_t a1)
{
  v2 = sub_24B517BBC();
  v1[20] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[21] = v3;
  *v3 = v1;
  v3[1] = sub_24B50910C;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 24, v2, v4);
}

uint64_t sub_24B509574()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B5095D8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B509644(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = type metadata accessor for BrowseAction(0);
  v2[14] = swift_task_alloc();
  v2[15] = sub_24B517BCC();
  v2[16] = sub_24B517BBC();
  v6 = (*(a2 + 128) + **(a2 + 128));
  v4 = swift_task_alloc();
  v2[17] = v4;
  *v4 = v2;
  v4[1] = sub_24B509788;

  return v6(v2 + 7);
}

uint64_t sub_24B509788()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = sub_24B517B9C();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_24B50EE5C;
  }

  else
  {
    v5 = sub_24B5098E8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B5098E8()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B517BBC();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_24B509AC0;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v5, v7);
}

uint64_t sub_24B509AC0()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x2822009F8](sub_24B509BD4, v4, v5);
  }

  return result;
}

uint64_t sub_24B509BD4()
{
  if (*(v0 + 192) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
    *v3 = v0;
    v3[1] = sub_24B509CF0;
    v5 = *(v0 + 112);

    return MEMORY[0x282159B08](v5, v4);
  }
}

uint64_t sub_24B509CF0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  sub_24B50EDF0(v2, type metadata accessor for BrowseAction);
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B509E48, v4, v3);
}

uint64_t sub_24B509E48(uint64_t a1)
{
  v2 = sub_24B517BBC();
  v1[21] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_24B509AC0;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 24, v2, v4);
}

uint64_t sub_24B509F24(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = type metadata accessor for BrowseAction(0);
  v2[14] = swift_task_alloc();
  v2[15] = sub_24B517BCC();
  v2[16] = sub_24B517BBC();
  v6 = (*(a2 + 144) + **(a2 + 144));
  v4 = swift_task_alloc();
  v2[17] = v4;
  *v4 = v2;
  v4[1] = sub_24B50A068;

  return v6(v2 + 7);
}

uint64_t sub_24B50A068()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = sub_24B517B9C();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_24B50EE5C;
  }

  else
  {
    v5 = sub_24B50A1C8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B50A1C8()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B517BBC();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_24B50A3A0;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v5, v7);
}

uint64_t sub_24B50A3A0()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x2822009F8](sub_24B50A4B4, v4, v5);
  }

  return result;
}

uint64_t sub_24B50A4B4()
{
  if (*(v0 + 192) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
    *v3 = v0;
    v3[1] = sub_24B50A5D0;
    v5 = *(v0 + 112);

    return MEMORY[0x282159B08](v5, v4);
  }
}

uint64_t sub_24B50A5D0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  sub_24B50EDF0(v2, type metadata accessor for BrowseAction);
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B50A728, v4, v3);
}

uint64_t sub_24B50A728(uint64_t a1)
{
  v2 = sub_24B517BBC();
  v1[21] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_24B50A3A0;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 24, v2, v4);
}

uint64_t sub_24B50A804(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = type metadata accessor for BrowseAction(0);
  v2[14] = swift_task_alloc();
  v2[15] = sub_24B517BCC();
  v2[16] = sub_24B517BBC();
  v6 = (*(a2 + 160) + **(a2 + 160));
  v4 = swift_task_alloc();
  v2[17] = v4;
  *v4 = v2;
  v4[1] = sub_24B50A948;

  return v6(v2 + 7);
}

uint64_t sub_24B50A948()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = sub_24B517B9C();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_24B50EE5C;
  }

  else
  {
    v5 = sub_24B50AAA8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B50AAA8()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B517BBC();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_24B50AC80;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v5, v7);
}

uint64_t sub_24B50AC80()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x2822009F8](sub_24B50AD94, v4, v5);
  }

  return result;
}

uint64_t sub_24B50AD94()
{
  if (*(v0 + 192) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
    *v3 = v0;
    v3[1] = sub_24B50AEB0;
    v5 = *(v0 + 112);

    return MEMORY[0x282159B08](v5, v4);
  }
}

uint64_t sub_24B50AEB0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  sub_24B50EDF0(v2, type metadata accessor for BrowseAction);
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B50B008, v4, v3);
}

uint64_t sub_24B50B008(uint64_t a1)
{
  v2 = sub_24B517BBC();
  v1[21] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_24B50AC80;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 24, v2, v4);
}

uint64_t sub_24B50B0E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = sub_24B517BCC();
  *(v2 + 112) = sub_24B517BBC();
  v4 = *(a2 + 192);
  *(v2 + 120) = *(a2 + 240);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 136) = v5;
  *v5 = v2;
  v5[1] = sub_24B50B1FC;

  return v7(v2 + 56);
}

uint64_t sub_24B50B1FC()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = sub_24B517B9C();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_24B50EE54;
  }

  else
  {
    v5 = sub_24B50B35C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B50B35C()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B517BBC();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_24B50B534;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v5, v7);
}

uint64_t sub_24B50B534()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x2822009F8](sub_24B50B648, v4, v5);
  }

  return result;
}

uint64_t sub_24B50B648()
{
  if (*(v0 + 96))
  {
    (*(v0 + 120))(*(v0 + 96));

    v1 = sub_24B517BBC();
    *(v0 + 168) = v1;
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 176) = v2;
    *v2 = v0;
    v2[1] = sub_24B50B534;
    v3 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v0 + 96, v1, v3);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_24B50B7A0(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = type metadata accessor for BrowseAction(0);
  v2[14] = swift_task_alloc();
  v2[15] = sub_24B517BCC();
  v2[16] = sub_24B517BBC();
  v6 = (*(a2 + 176) + **(a2 + 176));
  v4 = swift_task_alloc();
  v2[17] = v4;
  *v4 = v2;
  v4[1] = sub_24B50B8E4;

  return v6(v2 + 7);
}

uint64_t sub_24B50B8E4()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = sub_24B517B9C();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_24B50EE5C;
  }

  else
  {
    v5 = sub_24B50BA44;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B50BA44()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B517BBC();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_24B50BC1C;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v5, v7);
}

uint64_t sub_24B50BC1C()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x2822009F8](sub_24B50BD30, v4, v5);
  }

  return result;
}

uint64_t sub_24B50BD30()
{
  if (*(v0 + 192) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
    *v3 = v0;
    v3[1] = sub_24B50BE4C;
    v5 = *(v0 + 112);

    return MEMORY[0x282159B08](v5, v4);
  }
}

uint64_t sub_24B50BE4C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  sub_24B50EDF0(v2, type metadata accessor for BrowseAction);
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B50BFA4, v4, v3);
}

uint64_t sub_24B50BFA4(uint64_t a1)
{
  v2 = sub_24B517BBC();
  v1[21] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_24B50BC1C;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 24, v2, v4);
}

uint64_t sub_24B50C080(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = type metadata accessor for BrowseAction(0);
  v2[14] = swift_task_alloc();
  v2[15] = sub_24B517BCC();
  v2[16] = sub_24B517BBC();
  v6 = (*(a2 + 208) + **(a2 + 208));
  v4 = swift_task_alloc();
  v2[17] = v4;
  *v4 = v2;
  v4[1] = sub_24B50C1C4;

  return v6(v2 + 7);
}

uint64_t sub_24B50C1C4()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = sub_24B517B9C();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_24B50EE5C;
  }

  else
  {
    v5 = sub_24B50C324;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B50C324()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B517BBC();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_24B50C4FC;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v5, v7);
}

uint64_t sub_24B50C4FC()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x2822009F8](sub_24B50C610, v4, v5);
  }

  return result;
}

uint64_t sub_24B50C610()
{
  if (*(v0 + 192) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
    *v3 = v0;
    v3[1] = sub_24B50C72C;
    v5 = *(v0 + 112);

    return MEMORY[0x282159B08](v5, v4);
  }
}

uint64_t sub_24B50C72C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  sub_24B50EDF0(v2, type metadata accessor for BrowseAction);
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B50C884, v4, v3);
}

uint64_t sub_24B50C884(uint64_t a1)
{
  v2 = sub_24B517BBC();
  v1[21] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_24B50C4FC;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 24, v2, v4);
}

uint64_t sub_24B50C960(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for BrowseAction(0);
  v1[4] = swift_task_alloc();
  sub_24B517BCC();
  v1[5] = sub_24B517BBC();
  v3 = sub_24B517B9C();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_24B50CA28, v3, v2);
}

uint64_t sub_24B50CA28()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE318, &qword_24B526088);
  *v1 = v0;
  v1[1] = sub_24B50CAE8;
  v3 = *(v0 + 32);

  return MEMORY[0x282159B08](v3, v2);
}

uint64_t sub_24B50CAE8()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  sub_24B50EDF0(v2, type metadata accessor for BrowseAction);
  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24B50CC40, v4, v3);
}

uint64_t sub_24B50CC40()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24B50CCB4()
{
  result = qword_2810EE7D0[0];
  if (!qword_2810EE7D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810EE7D0);
  }

  return result;
}

uint64_t sub_24B50CD08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD5F8, &qword_24B520F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B50CD70(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B50735C(a1, v1 + 16);
}

uint64_t sub_24B50CE40(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B507CAC(a1, v1 + 16);
}

uint64_t sub_24B50CED8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B50859C(a1, v1 + 16);
}

uint64_t sub_24B50CF70(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B508CBC(a1, v1 + 16);
}

uint64_t sub_24B50D008(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B509644(a1, v1 + 16);
}

uint64_t sub_24B50D0A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B509F24(a1, v1 + 16);
}

uint64_t sub_24B50D138(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B50A804(a1, v1 + 16);
}

uint64_t sub_24B50D1D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B50B0E4(a1, v1 + 16);
}

uint64_t sub_24B50D268(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B50B7A0(a1, v1 + 16);
}

uint64_t sub_24B50D300(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B50C080(a1, v1 + 16);
}

uint64_t sub_24B50D398(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B505D04(a1, v1 + 16);
}

uint64_t sub_24B50D430(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B5065E4(a1, v1 + 16);
}

uint64_t sub_24B50D4C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B506CA0(a1, v1 + 16);
}

uint64_t sub_24B50D560(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B504F8C(a1, v1 + 16);
}

uint64_t sub_24B50D5F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B505648(a1, v1 + 16);
}

uint64_t sub_24B50D690(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for BrowseLoadState(0);
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t sub_24B50D6F4(uint64_t a1)
{
  v4 = *(v1 + 288);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B4CA728;

  return sub_24B503238(a1, v1 + 16, v4);
}

uint64_t sub_24B50D79C(uint64_t a1)
{
  v4 = *(sub_24B516B8C() - 8);
  v5 = (*(v4 + 80) + 312) & ~*(v4 + 80);
  v6 = *(v1 + 296);
  v7 = *(v1 + 304);
  v8 = *(v1 + 288);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24B4C9DE4;

  return sub_24B5029BC(a1, v1 + 16, v8, v6, v7, v1 + v5);
}

uint64_t sub_24B50D894(uint64_t a1)
{
  v4 = *(v1 + 288);
  v5 = *(v1 + 296);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B4CA728;

  return sub_24B5022AC(a1, v1 + 16, v4, v5);
}

uint64_t get_enum_tag_for_layout_string_15FitnessBrowsing13BrowseFeatureV14TaskIdentifier33_1AA3979A9478512A84B861DB5AD42312LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 0xB)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

uint64_t sub_24B50DA8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 17))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B50DAD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
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

uint64_t sub_24B50DB18(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    LOBYTE(a2) = 12;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_24B50DB44()
{
  result = qword_2810EE7C8;
  if (!qword_2810EE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EE7C8);
  }

  return result;
}

uint64_t sub_24B50DB98(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24B516C6C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24B50ED40(&qword_2810EED58, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  v33 = a2;
  v11 = sub_24B517A8C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24B50ED40(&qword_27EFFE340, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
      v21 = sub_24B517AAC();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24B50E1D4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24B50DE78(uint64_t a1)
{
  v2 = v1;
  v36 = sub_24B516C6C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE348, &unk_24B5260B0);
  result = sub_24B517CDC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_24B50ED40(&qword_2810EED58, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
      result = sub_24B517A8C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_24B50E1D4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_24B516C6C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24B50DE78(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_24B50E478();
      goto LABEL_12;
    }

    sub_24B50E6B0(v10 + 1);
  }

  v12 = *v3;
  sub_24B50ED40(&qword_2810EED58, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  v13 = sub_24B517A8C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_24B50ED40(&qword_27EFFE340, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
      v21 = sub_24B517AAC();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24B517F0C();
  __break(1u);
  return result;
}

void *sub_24B50E478()
{
  v1 = v0;
  v2 = sub_24B516C6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE348, &unk_24B5260B0);
  v6 = *v0;
  v7 = sub_24B517CCC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

uint64_t sub_24B50E6B0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_24B516C6C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE348, &unk_24B5260B0);
  v7 = sub_24B517CDC();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_24B50ED40(&qword_2810EED58, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
      result = sub_24B517A8C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_24B50E9CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 2:
      if (a6 != 2)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 3:
      if (a6 != 3)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 4:
      if (a6 != 4)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 5:
      if (a6 != 5)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 6:
      if (a6 != 6)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 7:
      if (a6 != 7)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 8:
      if (a6 != 8)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 9:
      if (a6 != 9)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 10:
      if (a6 != 10)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 11:
      if (a6 != 11)
      {
        goto LABEL_59;
      }

      if (a1 != a4 || a2 != a5)
      {
        goto LABEL_55;
      }

      result = 1;
      break;
    case 12:
      if (a1 | a2)
      {
        if (a6 != 12 || a4 != 1 || a5)
        {
          goto LABEL_59;
        }

        result = 1;
      }

      else
      {
        if (a6 != 12 || a5 | a4)
        {
          goto LABEL_59;
        }

        result = 1;
      }

      break;
    default:
      if (a6)
      {
LABEL_59:
        result = 0;
      }

      else if (a1 == a4 && a2 == a5)
      {
        result = 1;
      }

      else
      {
LABEL_55:
        result = sub_24B517EEC();
      }

      break;
  }

  return result;
}

uint64_t objectdestroyTm_0(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_24B50ECD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B50ED40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B50ED88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B50EDF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Array<A>.includingMarketingUpsellSectionDescriptors(isSubscribed:)(char a1, uint64_t a2)
{
  v4 = sub_24B516C2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BrowseEditorialDescriptor(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BrowseSectionDescriptor(0);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  MEMORY[0x28223BE20](v12);
  v18 = &v47 - v17;
  if (a1)
  {

    return a2;
  }

  v49 = v5;
  v50 = v4;
  v51 = v7;
  v52 = v15;
  v54 = v16;
  v55 = a2;
  *&v53 = *(a2 + 16);
  if (!v53)
  {
LABEL_14:
    v25 = v56;
    sub_24B516C1C();
    v26 = sub_24B516BFC();
    v28 = v27;
    v29 = v50;
    v49 = *(v49 + 8);
    (v49)(v25, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD038, &unk_24B51E530);
    v30 = *(type metadata accessor for BrowseLazyItem(0) - 8);
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v32 = swift_allocObject();
    v53 = xmmword_24B521160;
    *(v32 + 16) = xmmword_24B521160;
    v33 = v32 + v31;
    *v33 = 25;
    *(v33 + 4) = *&v58[3];
    *(v33 + 1) = *v58;
    *(v33 + 24) = 0u;
    *(v33 + 8) = 0u;
    *(v33 + 40) = v26;
    *(v33 + 48) = v28;
    *(v33 + 56) = v26;
    *(v33 + 64) = v28;
    *(v33 + 72) = 7;
    swift_storeEnumTagMultiPayload();

    sub_24B516C1C();
    v34 = sub_24B516BFC();
    v36 = v35;
    (v49)(v25, v29);
    v37 = v52;
    v38 = *(v51 + 40);
    sub_24B516B5C();
    v39 = sub_24B516B8C();
    (*(*(v39 - 8) + 56))(v37 + v38, 0, 1, v39);
    sub_24B516B5C();
    *v37 = v32;
    *(v37 + 8) = 1;
    *(v37 + 9) = 537;
    *(v37 + 11) = 25;
    *(v37 + 16) = v34;
    *(v37 + 24) = v36;
    *(v37 + 32) = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD040, &qword_24B521170);
    v40 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v53;
    sub_24B50FDB4(v37, v41 + v40, type metadata accessor for BrowseSectionDescriptor);
    v57 = v41;

    sub_24B50FC70(v42, sub_24B4CA4AC, type metadata accessor for BrowseSectionDescriptor);
    sub_24B50FE1C(v37, type metadata accessor for BrowseSectionDescriptor);
    return v57;
  }

  v19 = v55 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
  v20 = *(v54 + 72);
  v48 = v19;
  v21 = v53;
  while (1)
  {
    sub_24B50FDB4(v19, v18, type metadata accessor for BrowseSectionDescriptor);
    sub_24B50FDB4(v18, v14, type metadata accessor for BrowseSectionDescriptor);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_24B50FE1C(v18, type metadata accessor for BrowseSectionDescriptor);
      sub_24B50FE1C(v14, type metadata accessor for BrowseSectionDescriptor);
      goto LABEL_6;
    }

    sub_24B50FC08(v14, v9, type metadata accessor for BrowseEditorialDescriptor);
    if (BrowseDisplayStyle.rawValue.getter(v9[9]) == 0x6564616548626174 && v22 == 0xE900000000000072)
    {
      break;
    }

    v24 = sub_24B517EEC();

    sub_24B50FE1C(v9, type metadata accessor for BrowseEditorialDescriptor);
    sub_24B50FE1C(v18, type metadata accessor for BrowseSectionDescriptor);
    if (v24)
    {
      goto LABEL_18;
    }

LABEL_6:
    v19 += v20;
    if (!--v21)
    {
      goto LABEL_14;
    }
  }

  sub_24B50FE1C(v9, type metadata accessor for BrowseEditorialDescriptor);
  sub_24B50FE1C(v18, type metadata accessor for BrowseSectionDescriptor);
LABEL_18:
  v57 = MEMORY[0x277D84F90];
  v44 = v53 + 1;
  for (i = v48; --v44; i = v46)
  {
    v46 = i + v20;
    sub_24B50F4E0(&v57, i);
  }

  return v57;
}

uint64_t sub_24B50F4E0(uint64_t *a1, uint64_t a2)
{
  v57 = a1;
  v3 = type metadata accessor for BrowseLazyItem(0);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B516C2C();
  v51 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BrowseSectionDescriptor(0);
  v56 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v55 = &v47 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  v52 = type metadata accessor for BrowseEditorialDescriptor(0);
  v18 = MEMORY[0x28223BE20](v52);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v47 - v21;
  sub_24B50FDB4(a2, v17, type metadata accessor for BrowseSectionDescriptor);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v25 = type metadata accessor for BrowseSectionDescriptor;
    v26 = v17;
LABEL_11:
    sub_24B50FE1C(v26, v25);
    goto LABEL_12;
  }

  sub_24B50FC08(v17, v22, type metadata accessor for BrowseEditorialDescriptor);
  if (v22[8] != 1)
  {
    v25 = type metadata accessor for BrowseEditorialDescriptor;
    v26 = v22;
    goto LABEL_11;
  }

  v50 = *v22;
  v49 = v22[9];
  if (BrowseDisplayStyle.rawValue.getter(v49) == 0x6564616548626174 && v23 == 0xE900000000000072)
  {
  }

  else
  {
    v48 = sub_24B517EEC();

    if ((v48 & 1) == 0)
    {
      sub_24B50FE1C(v22, type metadata accessor for BrowseEditorialDescriptor);

LABEL_12:
      sub_24B50FDB4(a2, v13, type metadata accessor for BrowseSectionDescriptor);
      v27 = v57;
      v28 = *v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_24B4CA4AC(0, v28[2] + 1, 1, v28);
      }

      v30 = v28[2];
      v29 = v28[3];
      if (v30 >= v29 >> 1)
      {
        v28 = sub_24B4CA4AC((v29 > 1), v30 + 1, 1, v28);
      }

      v28[2] = v30 + 1;
      result = sub_24B50FC08(v13, v28 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v30, type metadata accessor for BrowseSectionDescriptor);
      *v27 = v28;
      return result;
    }
  }

  sub_24B516C1C();
  v32 = sub_24B516BFC();
  v34 = v33;
  (*(v51 + 8))(v9, v7);
  *v6 = 25;
  *(v6 + 1) = *v59;
  *(v6 + 1) = *&v59[3];
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 5) = v32;
  *(v6 + 6) = v34;
  *(v6 + 7) = v32;
  *(v6 + 8) = v34;
  v6[72] = 7;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD038, &unk_24B51E530);
  v35 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_24B521160;
  sub_24B50FDB4(v6, v36 + v35, type metadata accessor for BrowseLazyItem);
  v58 = v36;

  sub_24B50FC70(v50, sub_24B4CA4D4, type metadata accessor for BrowseLazyItem);
  v37 = v58;
  LOWORD(v35) = *(v22 + 5);
  v39 = *(v22 + 2);
  v38 = *(v22 + 3);
  v40 = v52;
  sub_24B4D1850(&v22[*(v52 + 40)], &v20[*(v52 + 40)]);
  v41 = *(v40 + 44);
  v42 = sub_24B516B8C();
  (*(*(v42 - 8) + 16))(&v20[v41], &v22[v41], v42);
  *v20 = v37;
  v20[8] = 1;
  v20[9] = v49;
  *(v20 + 5) = v35;
  *(v20 + 2) = v39;
  *(v20 + 3) = v38;
  v20[32] = 1;
  sub_24B50FDB4(v20, v55, type metadata accessor for BrowseEditorialDescriptor);
  swift_storeEnumTagMultiPayload();
  v43 = v57;
  v44 = *v57;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = sub_24B4CA4AC(0, v44[2] + 1, 1, v44);
  }

  v46 = v44[2];
  v45 = v44[3];
  if (v46 >= v45 >> 1)
  {
    v44 = sub_24B4CA4AC((v45 > 1), v46 + 1, 1, v44);
  }

  sub_24B50FE1C(v20, type metadata accessor for BrowseEditorialDescriptor);
  sub_24B50FE1C(v6, type metadata accessor for BrowseLazyItem);
  sub_24B50FE1C(v22, type metadata accessor for BrowseEditorialDescriptor);
  v44[2] = v46 + 1;
  result = sub_24B50FC08(v55, v44 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v46, type metadata accessor for BrowseSectionDescriptor);
  *v43 = v44;
  return result;
}

uint64_t sub_24B50FC08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B50FC70(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_24B50FDB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B50FE1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NewAndFeaturedEnvironment.init(navigateToIdentifier:resolveNewAndFeaturedData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_24B50FE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24B50FEDC(uint64_t a1)
{
  v2 = sub_24B510514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B50FF18(uint64_t a1)
{
  v2 = sub_24B510514();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B50FF54(uint64_t a1)
{
  v2 = sub_24B510610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B50FF90(uint64_t a1)
{
  v2 = sub_24B510610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B50FFCC(uint64_t a1)
{
  v2 = sub_24B510568();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B510008(uint64_t a1)
{
  v2 = sub_24B510568();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseLazyItem.encode(to:)(void *a1)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE350, &qword_24B526130);
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v24 = &v21 - v2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE358, &qword_24B526138);
  v22 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v21 - v3;
  v21 = type metadata accessor for BrowseItem(0);
  MEMORY[0x28223BE20](v21);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BrowseLazyItem(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE360, &qword_24B526140);
  v10 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v12 = &v21 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B510514();
  sub_24B517FDC();
  sub_24B4ABD68(v27, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = v9[3];
    v35 = v9[2];
    v36[0] = v13;
    *(v36 + 9) = *(v9 + 57);
    v14 = v9[1];
    v33 = *v9;
    v34 = v14;
    LOBYTE(v29) = 1;
    sub_24B510568();
    v15 = v24;
    v16 = v28;
    sub_24B517E3C();
    v31 = v35;
    v32[0] = v36[0];
    *(v32 + 9) = *(v36 + 9);
    v29 = v33;
    v30 = v34;
    sub_24B5105BC();
    v17 = v26;
    sub_24B517EBC();
    (*(v25 + 8))(v15, v17);
    (*(v10 + 8))(v12, v16);
    return sub_24B4851E4(&v33);
  }

  else
  {
    sub_24B510DE8(v9, v6, type metadata accessor for BrowseItem);
    LOBYTE(v33) = 0;
    sub_24B510610();
    v19 = v28;
    sub_24B517E3C();
    sub_24B51140C(&qword_27EFFE388, type metadata accessor for BrowseItem, &protocol conformance descriptor for BrowseItem);
    v20 = v23;
    sub_24B517EBC();
    (*(v22 + 8))(v4, v20);
    sub_24B51179C(v6, type metadata accessor for BrowseItem);
    return (*(v10 + 8))(v12, v19);
  }
}

unint64_t sub_24B510514()
{
  result = qword_27EFFE368;
  if (!qword_27EFFE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE368);
  }

  return result;
}

unint64_t sub_24B510568()
{
  result = qword_27EFFE370;
  if (!qword_27EFFE370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE370);
  }

  return result;
}

unint64_t sub_24B5105BC()
{
  result = qword_27EFFE378;
  if (!qword_27EFFE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE378);
  }

  return result;
}

unint64_t sub_24B510610()
{
  result = qword_27EFFE380;
  if (!qword_27EFFE380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE380);
  }

  return result;
}

uint64_t BrowseLazyItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE390, &qword_24B526148);
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v52 = &v43 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE398, &qword_24B526150);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v51 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE3A0, &unk_24B526158);
  v54 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = type metadata accessor for BrowseLazyItem(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v17 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24B510514();
  v18 = v55;
  sub_24B517FCC();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v46 = v14;
  v44 = v11;
  v20 = v51;
  v19 = v52;
  v55 = 0;
  v45 = v16;
  v21 = v53;
  v22 = sub_24B517E1C();
  v23 = (2 * *(v22 + 16)) | 1;
  v60 = v22;
  v61 = v22 + 32;
  v62 = 0;
  v63 = v23;
  v24 = sub_24B4A39B0();
  v25 = v7;
  if (v24 == 2 || v62 != v63 >> 1)
  {
    v28 = sub_24B517D0C();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
    *v30 = v8;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
    swift_willThrow();
    (*(v54 + 8))(v7, v5);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  if (v24)
  {
    LOBYTE(v56) = 1;
    sub_24B510568();
    v26 = v19;
    v27 = v55;
    sub_24B517D7C();
    if (v27)
    {
LABEL_6:
      (*(v54 + 8))(v25, v5);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v64);
    }

    v33 = v21;
    sub_24B510D94();
    v34 = v47;
    sub_24B517E0C();
    (*(v49 + 8))(v26, v34);
    (*(v54 + 8))(v25, v5);
    swift_unknownObjectRelease();
    v35 = v59[0];
    v36 = v44;
    v44[2] = v58;
    v36[3] = v35;
    *(v36 + 57) = *(v59 + 9);
    v37 = v57;
    *v36 = v56;
    v36[1] = v37;
    swift_storeEnumTagMultiPayload();
    v38 = v36;
  }

  else
  {
    LOBYTE(v56) = 0;
    sub_24B510610();
    v32 = v55;
    sub_24B517D7C();
    if (v32)
    {
      goto LABEL_6;
    }

    v33 = v21;
    v55 = v5;
    type metadata accessor for BrowseItem(0);
    sub_24B51140C(&qword_27EFFE3B0, type metadata accessor for BrowseItem, &protocol conformance descriptor for BrowseItem);
    v39 = v46;
    v40 = v50;
    sub_24B517E0C();
    v41 = v54;
    (*(v48 + 8))(v20, v40);
    (*(v41 + 8))(v7, v55);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v38 = v39;
  }

  v42 = v45;
  sub_24B510DE8(v38, v45, type metadata accessor for BrowseLazyItem);
  sub_24B510DE8(v42, v33, type metadata accessor for BrowseLazyItem);
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

unint64_t sub_24B510D94()
{
  result = qword_27EFFE3A8;
  if (!qword_27EFFE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE3A8);
  }

  return result;
}

uint64_t sub_24B510DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t BrowseLazyItem.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BrowseItem(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BrowseLazyItem(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B4ABD68(v2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = v9[3];
    v17 = v9[2];
    v18[0] = v10;
    *(v18 + 9) = *(v9 + 57);
    v11 = v9[1];
    v15 = *v9;
    v16 = v11;
    MEMORY[0x24C241D70](1);
    v13[2] = v17;
    v14[0] = v18[0];
    *(v14 + 9) = *(v18 + 9);
    v13[0] = v15;
    v13[1] = v16;
    BrowseItemPlaceholder.hash(into:)(a1);
    return sub_24B4851E4(&v15);
  }

  else
  {
    sub_24B510DE8(v9, v6, type metadata accessor for BrowseItem);
    MEMORY[0x24C241D70](0);
    BrowseItem.hash(into:)(a1);
    return sub_24B51179C(v6, type metadata accessor for BrowseItem);
  }
}

uint64_t BrowseLazyItem.hashValue.getter()
{
  sub_24B517F7C();
  BrowseLazyItem.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B511050()
{
  sub_24B517F7C();
  BrowseLazyItem.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B511094(uint64_t a1)
{
  sub_24B517F7C();
  BrowseLazyItem.hash(into:)(v2);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing14BrowseLazyItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseItem(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BrowseLazyItem(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBE00, &unk_24B526580);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v28 - v15;
  v17 = (v28 + *(v14 + 56) - v15);
  sub_24B4ABD68(a1, v28 - v15);
  sub_24B4ABD68(a2, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B4ABD68(v16, v10);
    v18 = v10[3];
    v35[2] = v10[2];
    v36[0] = v18;
    *(v36 + 9) = *(v10 + 57);
    v19 = v10[1];
    v35[0] = *v10;
    v35[1] = v19;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v17[1];
      v21 = v17[3];
      v33 = v17[2];
      v34[0] = v21;
      *(v34 + 9) = *(v17 + 57);
      v22 = v17[1];
      v32[0] = *v17;
      v32[1] = v22;
      v23 = v10[3];
      v30[2] = v10[2];
      v31[0] = v23;
      *(v31 + 9) = *(v10 + 57);
      v24 = v10[1];
      v30[0] = *v10;
      v30[1] = v24;
      v25 = v17[3];
      v28[2] = v33;
      v29[0] = v25;
      *(v29 + 9) = *(v17 + 57);
      v28[0] = v32[0];
      v28[1] = v20;
      v26 = _s15FitnessBrowsing21BrowseItemPlaceholderV2eeoiySbAC_ACtFZ_0(v30, v28);
      sub_24B4851E4(v32);
      sub_24B4851E4(v35);
LABEL_9:
      sub_24B51179C(v16, type metadata accessor for BrowseLazyItem);
      return v26 & 1;
    }

    sub_24B4851E4(v35);
  }

  else
  {
    sub_24B4ABD68(v16, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_24B510DE8(v17, v6, type metadata accessor for BrowseItem);
      v26 = static BrowseItem.== infix(_:_:)(v12, v6);
      sub_24B51179C(v6, type metadata accessor for BrowseItem);
      sub_24B51179C(v12, type metadata accessor for BrowseItem);
      goto LABEL_9;
    }

    sub_24B51179C(v12, type metadata accessor for BrowseItem);
  }

  sub_24B48517C(v16);
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_24B51140C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B511488()
{
  result = qword_27EFFE3C0;
  if (!qword_27EFFE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE3C0);
  }

  return result;
}

unint64_t sub_24B5114E0()
{
  result = qword_27EFFE3C8;
  if (!qword_27EFFE3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE3C8);
  }

  return result;
}

unint64_t sub_24B511538()
{
  result = qword_27EFFE3D0;
  if (!qword_27EFFE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE3D0);
  }

  return result;
}

unint64_t sub_24B511590()
{
  result = qword_27EFFE3D8;
  if (!qword_27EFFE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE3D8);
  }

  return result;
}

unint64_t sub_24B5115E8()
{
  result = qword_27EFFE3E0;
  if (!qword_27EFFE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE3E0);
  }

  return result;
}

unint64_t sub_24B511640()
{
  result = qword_27EFFE3E8;
  if (!qword_27EFFE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE3E8);
  }

  return result;
}

unint64_t sub_24B511698()
{
  result = qword_27EFFE3F0;
  if (!qword_27EFFE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE3F0);
  }

  return result;
}

unint64_t sub_24B5116F0()
{
  result = qword_27EFFE3F8;
  if (!qword_27EFFE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE3F8);
  }

  return result;
}

unint64_t sub_24B511748()
{
  result = qword_27EFFE400;
  if (!qword_27EFFE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE400);
  }

  return result;
}

uint64_t sub_24B51179C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DynamicBrowseMenuEnvironment.init(resolveBookmark:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t BrowseDetailTextItem.attributedTitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BrowseDetailTextItem(0) + 20);

  return sub_24B4D1850(v3, a1);
}

uint64_t BrowseDetailTextItem.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for BrowseDetailTextItem(0) + 24));

  return v1;
}

uint64_t BrowseDetailTextItem.init(identifier:attributedSummary:attributedTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for BrowseDetailTextItem(0);
  v11 = (a5 + *(v10 + 24));
  *v11 = a1;
  v11[1] = a2;
  sub_24B4D18C0(a3, a5);
  v12 = a5 + *(v10 + 20);

  return sub_24B4D18C0(a4, v12);
}

uint64_t sub_24B511928()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
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

uint64_t sub_24B511998@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B512BC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5119C0(uint64_t a1)
{
  v2 = sub_24B51292C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5119FC(uint64_t a1)
{
  v2 = sub_24B51292C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseDetailTextItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE408, "\\y");
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B51292C();
  sub_24B517FDC();
  v11 = 0;
  sub_24B516B8C();
  sub_24B47B774(&qword_27EFFC510, MEMORY[0x277CC8C40], MEMORY[0x277CC8C48]);
  sub_24B517E6C();
  if (!v1)
  {
    type metadata accessor for BrowseDetailTextItem(0);
    v10 = 1;
    sub_24B517E6C();
    v9 = 2;
    sub_24B517E7C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t BrowseDetailTextItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE418, &qword_24B5265E0);
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for BrowseDetailTextItem(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B51292C();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v14;
  sub_24B516B8C();
  v30 = 0;
  sub_24B47B774(&qword_27EFFC588, MEMORY[0x277CC8C40], MEMORY[0x277CC8C60]);
  v15 = v26;
  sub_24B517DBC();
  sub_24B4D18C0(v27, v23);
  v29 = 1;
  sub_24B517DBC();
  v16 = v23;
  sub_24B4D18C0(v7, &v23[*(v12 + 20)]);
  v28 = 2;
  v17 = sub_24B517DCC();
  v19 = v18;
  (*(v25 + 8))(v11, v15);
  v20 = (v16 + *(v12 + 24));
  *v20 = v17;
  v20[1] = v19;
  sub_24B512980(v16, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B5129E4(v16);
}

uint64_t BrowseDetailTextItem.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24B516B8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  sub_24B4D1850(v2, &v16 - v11);
  v13 = *(v4 + 48);
  if (v13(v12, 1, v3) == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    (*(v4 + 32))(v6, v12, v3);
    sub_24B517F9C();
    sub_24B47B774(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_24B517A9C();
    (*(v4 + 8))(v6, v3);
  }

  v14 = type metadata accessor for BrowseDetailTextItem(0);
  sub_24B4D1850(v2 + *(v14 + 20), v10);
  if (v13(v10, 1, v3) == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    (*(v4 + 32))(v6, v10, v3);
    sub_24B517F9C();
    sub_24B47B774(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_24B517A9C();
    (*(v4 + 8))(v6, v3);
  }

  return sub_24B517B3C();
}

uint64_t BrowseDetailTextItem.hashValue.getter()
{
  sub_24B517F7C();
  BrowseDetailTextItem.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B512354()
{
  sub_24B517F7C();
  BrowseDetailTextItem.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B512398(uint64_t a1)
{
  sub_24B517F7C();
  BrowseDetailTextItem.hash(into:)(v2);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing20BrowseDetailTextItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B516B8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v48 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v47 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v43[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC608, &qword_24B51F5B0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v43[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v43[-v17];
  v19 = *(v16 + 48);
  v49 = a1;
  sub_24B4D1850(a1, &v43[-v17]);
  sub_24B4D1850(a2, &v18[v19]);
  v20 = *(v5 + 48);
  if (v20(v18, 1, v4) == 1)
  {
    if (v20(&v18[v19], 1, v4) == 1)
    {
      v45 = v5;
      v46 = a2;
      sub_24B49689C(v18, &qword_27EFFC4E8, &qword_24B51F380);
      goto LABEL_8;
    }

LABEL_6:
    v21 = v18;
LABEL_14:
    sub_24B49689C(v21, &qword_27EFFC608, &qword_24B51F5B0);
    goto LABEL_15;
  }

  sub_24B4D1850(v18, v11);
  if (v20(&v18[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  v46 = a2;
  v22 = *(v5 + 32);
  v23 = v5;
  v24 = v48;
  v22(v48, &v18[v19], v4);
  sub_24B47B774(&qword_2810EED90, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
  v44 = sub_24B517AAC();
  v45 = v23;
  v25 = *(v23 + 8);
  v25(v24, v4);
  v25(v11, v4);
  sub_24B49689C(v18, &qword_27EFFC4E8, &qword_24B51F380);
  if ((v44 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v26 = type metadata accessor for BrowseDetailTextItem(0);
  v27 = *(v26 + 20);
  v28 = *(v12 + 48);
  v29 = v49;
  sub_24B4D1850(v49 + v27, v15);
  v30 = v46 + v27;
  v31 = v46;
  sub_24B4D1850(v30, &v15[v28]);
  if (v20(v15, 1, v4) != 1)
  {
    v32 = v47;
    sub_24B4D1850(v15, v47);
    if (v20(&v15[v28], 1, v4) == 1)
    {
      (*(v45 + 8))(v32, v4);
      goto LABEL_13;
    }

    v35 = v45;
    v36 = v48;
    (*(v45 + 32))(v48, &v15[v28], v4);
    sub_24B47B774(&qword_2810EED90, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
    v37 = sub_24B517AAC();
    v38 = *(v35 + 8);
    v38(v36, v4);
    v38(v32, v4);
    sub_24B49689C(v15, &qword_27EFFC4E8, &qword_24B51F380);
    if (v37)
    {
      goto LABEL_18;
    }

LABEL_15:
    v33 = 0;
    return v33 & 1;
  }

  if (v20(&v15[v28], 1, v4) != 1)
  {
LABEL_13:
    v21 = v15;
    goto LABEL_14;
  }

  sub_24B49689C(v15, &qword_27EFFC4E8, &qword_24B51F380);
LABEL_18:
  v39 = *(v26 + 24);
  v40 = *(v29 + v39);
  v41 = *(v29 + v39 + 8);
  v42 = (v31 + v39);
  if (v40 == *v42 && v41 == v42[1])
  {
    v33 = 1;
  }

  else
  {
    v33 = sub_24B517EEC();
  }

  return v33 & 1;
}

unint64_t sub_24B51292C()
{
  result = qword_27EFFE410;
  if (!qword_27EFFE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE410);
  }

  return result;
}

uint64_t sub_24B512980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseDetailTextItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B5129E4(uint64_t a1)
{
  v2 = type metadata accessor for BrowseDetailTextItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B512AC4()
{
  result = qword_27EFFE428;
  if (!qword_27EFFE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE428);
  }

  return result;
}

unint64_t sub_24B512B1C()
{
  result = qword_27EFFE430;
  if (!qword_27EFFE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE430);
  }

  return result;
}

unint64_t sub_24B512B74()
{
  result = qword_27EFFE438;
  if (!qword_27EFFE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE438);
  }

  return result;
}

uint64_t sub_24B512BC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000024B527B50 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEF656C7469546465 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B517EEC();

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

uint64_t sub_24B512CFC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v24 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v25 = v9;
  v26 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_24B517F7C();
    sub_24B517B3C();

    v16 = sub_24B517FBC();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v27 = v12;
    v19 = ~v17;
    while (!*(*(a2 + 48) + v18))
    {
      v20 = 0x6C6F427469617274;
      v21 = 0xE900000000000064;
      if (!v15)
      {
        goto LABEL_24;
      }

LABEL_18:
      if (v15 == 1)
      {
        v22 = 0x800000024B5273C0;
      }

      else
      {
        v22 = 0x800000024B5273E0;
      }

      if (v20 == 0xD000000000000011)
      {
        goto LABEL_25;
      }

LABEL_26:
      v23 = sub_24B517EEC();

      if (v23)
      {
        goto LABEL_32;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    v20 = 0xD000000000000011;
    if (*(*(a2 + 48) + v18) == 1)
    {
      v21 = 0x800000024B5273C0;
      if (!v15)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    v21 = 0x800000024B5273E0;
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_24:
    v22 = 0xE900000000000064;
    if (v20 != 0x6C6F427469617274)
    {
      goto LABEL_26;
    }

LABEL_25:
    if (v21 != v22)
    {
      goto LABEL_26;
    }

LABEL_32:
    v9 = v25;
    v3 = v26;
    v8 = v27;
  }

  while (v27);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v24 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B512FB8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_24B517F7C();
    MEMORY[0x24C241D70](v13);
    result = sub_24B517FBC();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (v13 != *(*(a2 + 48) + v15))
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B513128(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B516C6C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_24B516AF0(&qword_2810EED58, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
      v26 = sub_24B517A8C();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_24B516AF0(&qword_27EFFE340, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
        v31 = sub_24B517AAC();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B5134D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_24B517F7C();
    MEMORY[0x24C241D70](v13);
    result = sub_24B517FBC();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24B513648()
{
  v1 = *v0;
  v2 = 0x6F5464656C696166;
  v3 = 0xD00000000000001DLL;
  if (v1 != 4)
  {
    v3 = 0x4164694477656976;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD000000000000017;
  if (v1 != 1)
  {
    v4 = 0x646564616F6CLL;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_24B513718@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B516818(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B513740(uint64_t a1)
{
  v2 = sub_24B514658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B51377C(uint64_t a1)
{
  v2 = sub_24B514658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5137B8(uint64_t a1)
{
  v2 = sub_24B5148B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5137F4(uint64_t a1)
{
  v2 = sub_24B5148B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B513830(uint64_t a1)
{
  v2 = sub_24B514860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B51386C(uint64_t a1)
{
  v2 = sub_24B514860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5138A8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_24B5138E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B527B10 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

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

uint64_t sub_24B5139CC(uint64_t a1)
{
  v2 = sub_24B51480C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B513A08(uint64_t a1)
{
  v2 = sub_24B51480C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B513A44(uint64_t a1)
{
  v2 = sub_24B5147B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B513A80(uint64_t a1)
{
  v2 = sub_24B5147B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B513ABC(uint64_t a1)
{
  v2 = sub_24B514764();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B513AF8(uint64_t a1)
{
  v2 = sub_24B514764();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B513B34(uint64_t a1)
{
  v2 = sub_24B514710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B513B70(uint64_t a1)
{
  v2 = sub_24B514710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE440, &qword_24B5267F0);
  v60 = *(v2 - 8);
  v61 = v2;
  MEMORY[0x28223BE20](v2);
  v56 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE448, &qword_24B5267F8);
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v63 = &v48 - v5;
  v6 = sub_24B516BEC();
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x28223BE20](v6);
  v59 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE450, &qword_24B526800);
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v52 = &v48 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE458, &qword_24B526808);
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v58 = &v48 - v10;
  v53 = type metadata accessor for BrowseContent(0);
  MEMORY[0x28223BE20](v53);
  v57 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE460, &qword_24B526810);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE468, &qword_24B526818);
  v49 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  v17 = type metadata accessor for BrowseAction(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE470, &qword_24B526820);
  v70 = *(v20 - 8);
  v71 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B514658();
  v69 = v22;
  sub_24B517FDC();
  sub_24B5146AC(v73, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      LOBYTE(v75) = 1;
      sub_24B514860();
      v39 = v71;
      v40 = v69;
      sub_24B517E3C();
      (*(v50 + 8))(v13, v51);
      return (*(v70 + 8))(v40, v39);
    }

    else
    {
      v32 = v71;
      if (EnumCaseMultiPayload == 4)
      {
        LOBYTE(v75) = 3;
        sub_24B5147B8();
        v33 = v52;
        v34 = v69;
        sub_24B517E3C();
        v36 = v54;
        v35 = v55;
      }

      else
      {
        LOBYTE(v75) = 5;
        sub_24B514710();
        v33 = v56;
        v34 = v69;
        sub_24B517E3C();
        v36 = v60;
        v35 = v61;
      }

      (*(v36 + 8))(v33, v35);
      return (*(v70 + 8))(v34, v32);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v24 = v72;
    if (EnumCaseMultiPayload == 1)
    {
      v25 = *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE310, &qword_24B525D58) + 48)];
      v26 = v57;
      sub_24B515634(v19, v57, type metadata accessor for BrowseContent);
      LOBYTE(v75) = 2;
      sub_24B51480C();
      v27 = v58;
      v28 = v71;
      v29 = v69;
      sub_24B517E3C();
      LOBYTE(v75) = 0;
      sub_24B516AF0(&qword_27EFFE1D8, type metadata accessor for BrowseContent, &protocol conformance descriptor for BrowseContent);
      v30 = v64;
      sub_24B517EBC();
      if (v24)
      {

        (*(v62 + 8))(v27, v30);
        sub_24B516A90(v26, type metadata accessor for BrowseContent);
        return (*(v70 + 8))(v29, v28);
      }

      else
      {
        v75 = v25;
        v74[0] = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE1E0, &qword_24B5252E0);
        sub_24B51569C(&qword_27EFFE1E8, &qword_27EFFE1F0, MEMORY[0x277CC9B00], MEMORY[0x277D83B50]);
        sub_24B517EBC();
        (*(v62 + 8))(v27, v30);
        sub_24B516A90(v26, type metadata accessor for BrowseContent);
        (*(v70 + 8))(v29, v28);
      }
    }

    else
    {
      v42 = v65;
      v41 = v66;
      v43 = v59;
      (*(v65 + 32))(v59, v19, v66);
      LOBYTE(v75) = 4;
      sub_24B514764();
      v44 = v63;
      v45 = v71;
      v46 = v69;
      sub_24B517E3C();
      sub_24B516AF0(&qword_27EFFD610, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
      v47 = v68;
      sub_24B517EBC();
      (*(v67 + 8))(v44, v47);
      (*(v42 + 8))(v43, v41);
      return (*(v70 + 8))(v46, v45);
    }
  }

  else
  {
    LOBYTE(v75) = 0;
    sub_24B5148B4();
    v37 = v71;
    v38 = v69;
    sub_24B517E3C();
    sub_24B517E7C();

    (*(v49 + 8))(v16, v14);
    return (*(v70 + 8))(v38, v37);
  }
}

uint64_t type metadata accessor for BrowseAction(uint64_t a1)
{
  result = qword_2810EE9E8;
  if (!qword_2810EE9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B514658()
{
  result = qword_2810EEA80[0];
  if (!qword_2810EEA80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810EEA80);
  }

  return result;
}

uint64_t sub_24B5146AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B514710()
{
  result = qword_2810EEA48;
  if (!qword_2810EEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA48);
  }

  return result;
}

unint64_t sub_24B514764()
{
  result = qword_27EFFE478;
  if (!qword_27EFFE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE478);
  }

  return result;
}

unint64_t sub_24B5147B8()
{
  result = qword_27EFFE480;
  if (!qword_27EFFE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE480);
  }

  return result;
}

unint64_t sub_24B51480C()
{
  result = qword_27EFFE488;
  if (!qword_27EFFE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE488);
  }

  return result;
}

unint64_t sub_24B514860()
{
  result = qword_27EFFE490;
  if (!qword_27EFFE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE490);
  }

  return result;
}

unint64_t sub_24B5148B4()
{
  result = qword_27EFFE498;
  if (!qword_27EFFE498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE498);
  }

  return result;
}

uint64_t BrowseAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE4A0, &qword_24B526828);
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v73 = &v55 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE4A8, &qword_24B526830);
  v69 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v77 = &v55 - v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE4B0, &qword_24B526838);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v76 = &v55 - v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE4B8, &qword_24B526840);
  v70 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v71 = &v55 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE4C0, &qword_24B526848);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v72 = &v55 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE4C8, &qword_24B526850);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v74 = &v55 - v9;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE4D0, &unk_24B526858);
  v79 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v11 = &v55 - v10;
  v12 = type metadata accessor for BrowseAction(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v55 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v55 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = &v55 - v22;
  v24 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24B514658();
  v25 = v80;
  sub_24B517FCC();
  if (!v25)
  {
    v55 = v21;
    v56 = v15;
    v26 = v74;
    v27 = v76;
    v57 = v18;
    v28 = v77;
    v58 = v12;
    v80 = v23;
    v29 = v78;
    v30 = v75;
    v31 = sub_24B517E1C();
    v32 = (2 * *(v31 + 16)) | 1;
    v82 = v31;
    v83 = v31 + 32;
    v84 = 0;
    v85 = v32;
    v33 = sub_24B4A39BC();
    if (v33 != 6 && v84 == v85 >> 1)
    {
      if (v33 > 2u)
      {
        if (v33 == 3)
        {
          v86 = 3;
          sub_24B5147B8();
          sub_24B517D7C();
          (*(v63 + 8))(v27, v64);
          (*(v79 + 8))(v11, v30);
          swift_unknownObjectRelease();
          v48 = v80;
          goto LABEL_17;
        }

        if (v33 != 4)
        {
          v86 = 5;
          sub_24B514710();
          v47 = v73;
          sub_24B517D7C();
          (*(v65 + 8))(v47, v66);
          (*(v79 + 8))(v11, v30);
          swift_unknownObjectRelease();
          v48 = v80;
          goto LABEL_17;
        }

        v86 = 4;
        sub_24B514764();
        v40 = v28;
        sub_24B517D7C();
        sub_24B516BEC();
        sub_24B516AF0(&qword_27EFFD620, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
        v41 = v56;
        v42 = v67;
        sub_24B517E0C();
        (*(v69 + 8))(v40, v42);
        (*(v79 + 8))(v11, v30);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v53 = v41;
      }

      else if (v33)
      {
        if (v33 == 1)
        {
          v86 = 1;
          sub_24B514860();
          v34 = v72;
          sub_24B517D7C();
          v35 = v79;
          (*(v61 + 8))(v34, v62);
          (*(v35 + 8))(v11, v30);
          swift_unknownObjectRelease();
          v48 = v80;
LABEL_17:
          swift_storeEnumTagMultiPayload();
LABEL_19:
          sub_24B515634(v48, v29, type metadata accessor for BrowseAction);
          return __swift_destroy_boxed_opaque_existential_1(v81);
        }

        v86 = 2;
        sub_24B51480C();
        v44 = v71;
        sub_24B517D7C();
        v45 = v79;
        type metadata accessor for BrowseContent(0);
        v86 = 0;
        sub_24B516AF0(&qword_27EFFE230, type metadata accessor for BrowseContent, &protocol conformance descriptor for BrowseContent);
        v46 = v68;
        sub_24B517E0C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE310, &qword_24B525D58);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE1E0, &qword_24B5252E0);
        v86 = 1;
        sub_24B51569C(&qword_27EFFE238, &qword_27EFFE240, MEMORY[0x277CC9B28], MEMORY[0x277D83B70]);
        sub_24B517E0C();
        (*(v70 + 8))(v44, v46);
        (*(v45 + 8))(v11, v30);
        swift_unknownObjectRelease();
        v54 = v57;
        swift_storeEnumTagMultiPayload();
        v53 = v54;
      }

      else
      {
        v86 = 0;
        sub_24B5148B4();
        sub_24B517D7C();
        v43 = v60;
        v49 = sub_24B517DCC();
        v51 = v50;
        (*(v59 + 8))(v26, v43);
        (*(v79 + 8))(v11, v30);
        swift_unknownObjectRelease();
        v52 = v55;
        *v55 = v49;
        v52[1] = v51;
        swift_storeEnumTagMultiPayload();
        v53 = v52;
      }

      v48 = v80;
      sub_24B515634(v53, v80, type metadata accessor for BrowseAction);
      goto LABEL_19;
    }

    v36 = sub_24B517D0C();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
    *v38 = v58;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    (*(v79 + 8))(v11, v30);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v81);
}

uint64_t sub_24B515634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B51569C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFE1E0, &qword_24B5252E0);
    sub_24B516AF0(a2, MEMORY[0x277CC9AF8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t BrowseAction.hash(into:)(__int128 *a1)
{
  v3 = sub_24B516BEC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BrowseContent(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BrowseAction(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B5146AC(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v16 = 1;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v16 = 3;
    }

    else
    {
      v16 = 5;
    }

    return MEMORY[0x24C241D70](v16);
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE310, &qword_24B525D58) + 48)];
      sub_24B515634(v12, v9, type metadata accessor for BrowseContent);
      MEMORY[0x24C241D70](2);
      BrowseContent.hash(into:)(a1);
      sub_24B48AF48(a1, v14);

      return sub_24B516A90(v9, type metadata accessor for BrowseContent);
    }

    else
    {
      (*(v4 + 32))(v6, v12, v3);
      MEMORY[0x24C241D70](4);
      sub_24B516AF0(&qword_27EFFE4D8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_24B517A9C();
      return (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    MEMORY[0x24C241D70](0);
    sub_24B517B3C();
  }
}

uint64_t BrowseAction.hashValue.getter()
{
  sub_24B517F7C();
  BrowseAction.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B515A80()
{
  sub_24B517F7C();
  BrowseAction.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B515AC4(uint64_t a1)
{
  sub_24B517F7C();
  BrowseAction.hash(into:)(v2);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing12BrowseActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B516BEC();
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BrowseContent(0);
  MEMORY[0x28223BE20](v7 - 8);
  v38 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BrowseAction(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = (&v38 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE508, &qword_24B527018);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v38 - v20;
  v22 = (&v38 + *(v19 + 56) - v20);
  sub_24B5146AC(a1, &v38 - v20);
  sub_24B5146AC(a2, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_22;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_22:
        sub_24B516A28(v21);
LABEL_23:
        v30 = 0;
        return v30 & 1;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_22;
    }

LABEL_33:
    sub_24B516A90(v21, type metadata accessor for BrowseAction);
    v30 = 1;
    return v30 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_24B5146AC(v21, v17);
    v32 = *v17;
    v31 = v17[1];
    if (swift_getEnumCaseMultiPayload())
    {

      goto LABEL_22;
    }

    if (v32 == *v22 && v31 == v22[1])
    {
    }

    else
    {
      v36 = sub_24B517EEC();

      if ((v36 & 1) == 0)
      {
LABEL_31:
        sub_24B516A90(v21, type metadata accessor for BrowseAction);
        goto LABEL_23;
      }
    }

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_24B5146AC(v21, v12);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v33 = v39;
      (*(v39 + 32))(v6, v22, v4);
      v30 = sub_24B516BCC();
      v34 = *(v33 + 8);
      v34(v6, v4);
      v34(v12, v4);
      goto LABEL_17;
    }

    (*(v39 + 8))(v12, v4);
    goto LABEL_22;
  }

  sub_24B5146AC(v21, v15);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE310, &qword_24B525D58) + 48);
  v25 = *&v15[v24];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    sub_24B516A90(v15, type metadata accessor for BrowseContent);
    goto LABEL_22;
  }

  v26 = *(v22 + v24);
  v27 = v22;
  v28 = v38;
  sub_24B515634(v27, v38, type metadata accessor for BrowseContent);
  v29 = static BrowseContent.== infix(_:_:)();
  sub_24B516A90(v15, type metadata accessor for BrowseContent);
  if ((v29 & 1) == 0)
  {
    sub_24B516A90(v28, type metadata accessor for BrowseContent);

    goto LABEL_31;
  }

  v30 = sub_24B513128(v25, v26);

  sub_24B516A90(v28, type metadata accessor for BrowseContent);
LABEL_17:
  sub_24B516A90(v21, type metadata accessor for BrowseAction);
  return v30 & 1;
}

void sub_24B516070(uint64_t a1)
{
  sub_24B47AB14();
  if (v1 <= 0x3F)
  {
    sub_24B5160F8(319);
    if (v2 <= 0x3F)
    {
      sub_24B516BEC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24B5160F8(uint64_t a1)
{
  if (!qword_2810EE880)
  {
    type metadata accessor for BrowseContent(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFE1E0, &qword_24B5252E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2810EE880);
    }
  }
}

unint64_t sub_24B5161EC()
{
  result = qword_27EFFE4E8;
  if (!qword_27EFFE4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE4E8);
  }

  return result;
}

unint64_t sub_24B516244()
{
  result = qword_27EFFE4F0;
  if (!qword_27EFFE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE4F0);
  }

  return result;
}

unint64_t sub_24B51629C()
{
  result = qword_27EFFE4F8;
  if (!qword_27EFFE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE4F8);
  }

  return result;
}

unint64_t sub_24B5162F4()
{
  result = qword_27EFFE500;
  if (!qword_27EFFE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFE500);
  }

  return result;
}

unint64_t sub_24B51634C()
{
  result = qword_2810EEA50;
  if (!qword_2810EEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA50);
  }

  return result;
}

unint64_t sub_24B5163A4()
{
  result = qword_2810EEA58;
  if (!qword_2810EEA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA58);
  }

  return result;
}

unint64_t sub_24B5163FC()
{
  result = qword_2810EEA18;
  if (!qword_2810EEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA18);
  }

  return result;
}

unint64_t sub_24B516454()
{
  result = qword_2810EEA20;
  if (!qword_2810EEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA20);
  }

  return result;
}

unint64_t sub_24B5164AC()
{
  result = qword_2810EEA60;
  if (!qword_2810EEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA60);
  }

  return result;
}

unint64_t sub_24B516504()
{
  result = qword_2810EEA68;
  if (!qword_2810EEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA68);
  }

  return result;
}

unint64_t sub_24B51655C()
{
  result = qword_2810EEA28;
  if (!qword_2810EEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA28);
  }

  return result;
}

unint64_t sub_24B5165B4()
{
  result = qword_2810EEA30;
  if (!qword_2810EEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA30);
  }

  return result;
}

unint64_t sub_24B51660C()
{
  result = qword_2810EEA08;
  if (!qword_2810EEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA08);
  }

  return result;
}

unint64_t sub_24B516664()
{
  result = qword_2810EEA10;
  if (!qword_2810EEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA10);
  }

  return result;
}

unint64_t sub_24B5166BC()
{
  result = qword_2810EEA38;
  if (!qword_2810EEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA38);
  }

  return result;
}

unint64_t sub_24B516714()
{
  result = qword_2810EEA40;
  if (!qword_2810EEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA40);
  }

  return result;
}

unint64_t sub_24B51676C()
{
  result = qword_2810EEA70;
  if (!qword_2810EEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA70);
  }

  return result;
}

unint64_t sub_24B5167C4()
{
  result = qword_2810EEA78;
  if (!qword_2810EEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EEA78);
  }

  return result;
}

uint64_t sub_24B516818(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F5464656C696166 && a2 == 0xEC00000064616F4CLL;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B527B90 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B527BB0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024B527BD0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    return 5;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B516A28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFE508, &qword_24B527018);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B516A90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B516AF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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