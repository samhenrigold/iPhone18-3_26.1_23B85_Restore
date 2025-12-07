uint64_t sub_1B4A1B9A4()
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  sub_1B4A1F7D4(qword_1EDC3AAF8, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  return sub_1B4D17DAC();
}

double RingsPropertiesQuery.filters.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RingsPropertiesQuery(0) + 20));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;

  return result;
}

double RingsPropertiesQuery.groupBy.getter()
{
  type metadata accessor for RingsPropertiesQuery(0);

  return result;
}

double RingsPropertiesQuery.propertyKinds.getter()
{
  type metadata accessor for RingsPropertiesQuery(0);

  return result;
}

uint64_t RingsPropertiesQuery.hash(into:)(uint64_t a1)
{
  DateRangeDescriptor.hash(into:)(a1);
  v3 = type metadata accessor for RingsPropertiesQuery(0);
  v4 = (v1 + v3[5]);
  v5 = v4[1];
  v6 = v4[2];
  sub_1B49C28E8(a1, *v4);
  sub_1B49C27B8(a1, v5);
  sub_1B49C2A9C(a1, v6);
  sub_1B49C4F70(a1, *(v1 + v3[6]));
  v7 = *(v1 + v3[7]);

  return sub_1B49C4BA0(a1, v7);
}

uint64_t RingsPropertiesQuery.hashValue.getter()
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)(v6);
  v1 = type metadata accessor for RingsPropertiesQuery(0);
  v2 = (v0 + v1[5]);
  v3 = v2[1];
  v4 = v2[2];
  sub_1B49C28E8(v6, *v2);
  sub_1B49C27B8(v6, v3);
  sub_1B49C2A9C(v6, v4);
  sub_1B49C4F70(v6, *(v0 + v1[6]));
  sub_1B49C4BA0(v6, *(v0 + v1[7]));
  return sub_1B4D18EDC();
}

double sub_1B4A1BCFC@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  v5 = v3[2];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;

  return result;
}

uint64_t sub_1B4A1BD68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  sub_1B4A1F5E8(a1, a6, type metadata accessor for DateRangeDescriptor);
  result = sub_1B4A1F650(a1, type metadata accessor for DateRangeDescriptor);
  v15 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v16 = v13;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    v17 = v12;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    v15 = v11;
  }

  v18 = a5[6];
  v19 = (a6 + a5[5]);
  *v19 = v15;
  v19[1] = v17;
  v19[2] = v16;
  *(a6 + v18) = a3;
  *(a6 + a5[7]) = a4;
  return result;
}

uint64_t sub_1B4A1BE24(int *a1)
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)(v7);
  v3 = (v1 + a1[5]);
  v4 = v3[1];
  v5 = v3[2];
  sub_1B49C28E8(v7, *v3);
  sub_1B49C27B8(v7, v4);
  sub_1B49C2A9C(v7, v5);
  sub_1B49C4F70(v7, *(v1 + a1[6]));
  sub_1B49C4BA0(v7, *(v1 + a1[7]));
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A1BEC0(uint64_t a1, int *a2)
{
  DateRangeDescriptor.hash(into:)(a1);
  v5 = (v2 + a2[5]);
  v6 = v5[1];
  v7 = v5[2];
  sub_1B49C28E8(a1, *v5);
  sub_1B49C27B8(a1, v6);
  sub_1B49C2A9C(a1, v7);
  sub_1B49C4F70(a1, *(v2 + a2[6]));
  v8 = *(v2 + a2[7]);

  return sub_1B49C4BA0(a1, v8);
}

uint64_t sub_1B4A1BF54(uint64_t a1, int *a2)
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)(v8);
  v4 = (v2 + a2[5]);
  v5 = v4[1];
  v6 = v4[2];
  sub_1B49C28E8(v8, *v4);
  sub_1B49C27B8(v8, v5);
  sub_1B49C2A9C(v8, v6);
  sub_1B49C4F70(v8, *(v2 + a2[6]));
  sub_1B49C4BA0(v8, *(v2 + a2[7]));
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A1BFEC(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4A1F7D4(&qword_1EDC39538, type metadata accessor for RingsPropertiesQuery, &protocol conformance descriptor for RingsPropertiesQuery);
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4A1F7D4(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    v1 = sub_1B4D17D6C();
    sub_1B4A1F650(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  }

  return v1;
}

uint64_t sub_1B4A1C170(char *a1, unint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  v84 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = a2;
  sub_1B4A1F7D4(&qword_1EDC3C268, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  sub_1B4D17DAC();
  v83 = v2;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v13 = *(v12 + 28);
  sub_1B4975024(&a1[v13], &qword_1EB8A7BE8, &qword_1B4D1FE98);
  sub_1B4A1F750(v11, &a1[v13], type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  (*(v9 + 56))(&a1[v13], 0, 1, v8);
  v14 = type metadata accessor for RingsPropertiesQuery(0);
  v15 = (a2 + v14[5]);
  v16 = *(v15 + 2);
  v85 = *v15;
  v86 = v16;
  sub_1B4A1F7D4(qword_1EDC3AAF8, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  v17 = v83;
  sub_1B4D17DAC();
  v83 = v17;
  v18 = *(v12 + 32);
  sub_1B4975024(&a1[v18], &qword_1EB8A7BE0, &qword_1B4D1FE90);
  sub_1B4A1F750(v7, &a1[v18], type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  v19 = *(v84 + 7);
  v84 = a1;
  v19(&a1[v18], 0, 1, v5);
  v20 = v14[6];
  v82 = a2;
  v21 = *(a2 + v20);
  v22 = *(v21 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v81 = v14;
    v88 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v22, 0);
    v24 = (v21 + 32);
    v23 = v88;
    do
    {
      v26 = *v24++;
      v25 = v26;
      v27 = v26 == 1;
      if (v26 == 1)
      {
        v28 = 0x656557664F796164;
      }

      else
      {
        v28 = 0x646573756170;
      }

      if (v27)
      {
        v29 = 0xE90000000000006BLL;
      }

      else
      {
        v29 = 0xE600000000000000;
      }

      if (v25)
      {
        v30 = v28;
      }

      else
      {
        v30 = 0x59664F68746E6F6DLL;
      }

      if (v25)
      {
        v31 = v29;
      }

      else
      {
        v31 = 0xEB00000000726165;
      }

      v88 = v23;
      v33 = *(v23 + 16);
      v32 = *(v23 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1B4BCF43C((v32 > 1), v33 + 1, 1);
        v23 = v88;
      }

      *(v23 + 16) = v33 + 1;
      v34 = v23 + 16 * v33;
      *(v34 + 32) = v30;
      *(v34 + 40) = v31;
      --v22;
    }

    while (v22);
    v14 = v81;
  }

  v35 = v84;

  *v35 = v23;
  v36 = *(v82 + v14[7]);
  v37 = *(v36 + 16);
  v38 = MEMORY[0x1E69E7CC0];
  if (v37)
  {
    v88 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v37, 0);
    v39 = (v36 + 32);
    v38 = v88;
    v40 = 0x80000001B4D48A80;
    v41 = 0x80000001B4D48A60;
    v42 = 0x80000001B4D48A40;
    v43 = 0x80000001B4D48A20;
    v44 = 0x80000001B4D48A00;
    v45 = 0x80000001B4D489E0;
    v46 = 0x80000001B4D489B0;
    v47 = 0x80000001B4D48990;
    v48 = 0x80000001B4D48970;
    v49 = 0x80000001B4D48950;
    v50 = 0x80000001B4D48930;
    v51 = 0x80000001B4D48910;
    v52 = 0x80000001B4D488F0;
    v53 = 0x80000001B4D488D0;
    v54 = 0x80000001B4D488B0;
    v82 = 0x80000001B4D48880;
    v81 = 0x80000001B4D48860;
    v79 = 0x80000001B4D48820;
    v80 = 0x80000001B4D48840;
    v78 = 0x80000001B4D48800;
    do
    {
      v55 = *v39++;
      v56 = 0xEA00000000006B61;
      v57 = 0x6572745365766F6DLL;
      switch(v55)
      {
        case 1:
          v56 = 0xEE006B6165727453;
          v57 = 0x6573696372657865;
          break;
        case 2:
          v57 = 0x727453646E617473;
          v56 = 0xEB000000006B6165;
          break;
        case 3:
          v57 = 0xD000000000000013;
          v56 = v78;
          break;
        case 4:
          v57 = 0xD000000000000012;
          v56 = v79;
          break;
        case 5:
          v57 = 0xD000000000000018;
          v56 = v80;
          break;
        case 6:
          v57 = 0xD000000000000016;
          v56 = v81;
          break;
        case 7:
          v57 = 0xD000000000000013;
          v56 = v82;
          break;
        case 8:
          v56 = 0xEF73636974736974;
          v57 = 0x6174537370657473;
          break;
        case 9:
          v57 = 0xD000000000000011;
          v56 = v54;
          break;
        case 10:
          v57 = 0xD000000000000012;
          v56 = v53;
          break;
        case 11:
          v57 = 0xD000000000000015;
          v56 = v52;
          break;
        case 12:
          v57 = 0xD000000000000019;
          v56 = v51;
          break;
        case 13:
          v57 = 0xD000000000000016;
          v56 = v50;
          break;
        case 14:
          v57 = 0xD00000000000001ELL;
          v56 = v49;
          break;
        case 15:
          v57 = 0xD000000000000011;
          v56 = v48;
          break;
        case 16:
          v57 = 0xD000000000000014;
          v56 = v47;
          break;
        case 17:
          v57 = 0xD000000000000011;
          v56 = v46;
          break;
        case 18:
          v56 = 0xEE0061746C65446CLL;
          v57 = 0x616F47646E617473;
          break;
        case 19:
          v57 = 0xD000000000000011;
          v56 = v45;
          break;
        case 20:
          v57 = 0xD000000000000015;
          v56 = v44;
          break;
        case 21:
          v57 = 0xD000000000000012;
          v56 = v43;
          break;
        case 22:
          v57 = 0xD000000000000016;
          v56 = v42;
          break;
        case 23:
          v57 = 0xD000000000000015;
          v56 = v41;
          break;
        case 24:
          v57 = 0xD000000000000014;
          v56 = v40;
          break;
        case 25:
          v56 = 0xEA0000000000746ELL;
          v57 = 0x756F436C61746F74;
          break;
        default:
          break;
      }

      v88 = v38;
      v59 = *(v38 + 16);
      v58 = *(v38 + 24);
      if (v59 >= v58 >> 1)
      {
        v71 = v46;
        v70 = v47;
        v69 = v48;
        v76 = v41;
        v77 = v40;
        v74 = v43;
        v75 = v42;
        v73 = v44;
        v72 = v45;
        v68 = v49;
        v67 = v50;
        v66 = v51;
        v65 = v52;
        v64 = v53;
        v63 = v54;
        sub_1B4BCF43C((v58 > 1), v59 + 1, 1);
        v54 = v63;
        v53 = v64;
        v52 = v65;
        v51 = v66;
        v50 = v67;
        v49 = v68;
        v48 = v69;
        v47 = v70;
        v46 = v71;
        v45 = v72;
        v44 = v73;
        v43 = v74;
        v42 = v75;
        v41 = v76;
        v40 = v77;
        v38 = v88;
      }

      *(v38 + 16) = v59 + 1;
      v60 = v38 + 16 * v59;
      *(v60 + 32) = v57;
      *(v60 + 40) = v56;
      --v37;
    }

    while (v37);
  }

  v61 = v84;

  *(v61 + 1) = v38;
  return result;
}

uint64_t sub_1B4A1CA54()
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  sub_1B4A1F7D4(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A1CB14@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1B4D1750C();
    if (v10)
    {
      v11 = sub_1B4D1752C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1B4D1751C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1B4D1750C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1B4D1752C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1B4D1751C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B4A1CD44(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
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
    v10 = sub_1B4A1EECC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1B49DDD2C(a3, a4);
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
  sub_1B4A1CB14(v13, a3, a4, &v12);
  v10 = v4;
  sub_1B49DDD2C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t type metadata accessor for RingsPropertiesQuery(uint64_t a1)
{
  result = qword_1EDC3CEE8;
  if (!qword_1EDC3CEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1B4A1CF84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E10, &qword_1B4D20300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B4A1D0B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E00, &qword_1B4D202F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4A1D21C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7888, &unk_1B4D20440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1B4A1D320(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F08, &qword_1B4D20430);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F10, &qword_1B4D20438);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4A1D490(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1B4A1D58C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C10, &unk_1B4D200B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1B4A1D690(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4A1D7C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C88, &qword_1B4D1BBC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1B4A1D8C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D10, &qword_1B4D1BC98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1B4A1DA70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E18, &qword_1B4D20308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4A1DC00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C50, &qword_1B4D20100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4A1DD0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6848, &unk_1B4D1AB60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B4A1DE7C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1B4A1E0B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D68, &qword_1B4D20240);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B4A1E1FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7ED8, &qword_1B4D203E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B4A1E330(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C88, &qword_1B4D20140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C90, &qword_1B4D20148);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B4A1E4FC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1B4A1E6E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C18, &qword_1B4D2F640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B4A1E7E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C20, &qword_1B4D200C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1B4A1E914(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_1B4A1EA88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1B4A1EC78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C70, &qword_1B4D20128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4A1EDC0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

uint64_t sub_1B4A1EECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1B4D1750C();
  v11 = result;
  if (result)
  {
    result = sub_1B4D1752C();
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

  sub_1B4D1751C();
  sub_1B4A1CB14(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t _s19FitnessIntelligence20RingsPropertiesQueryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for RingsPropertiesQuery(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  v9 = (a2 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];

  if ((sub_1B4A0A1C0(v6, v10) & 1) == 0 || (sub_1B4A0A568(v7, v11) & 1) == 0)
  {

    return 0;
  }

  v13 = sub_1B4A0A7D0(v8, v12);

  if ((v13 & 1) == 0 || (sub_1B4A0D340(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  v14 = v4[7];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);

  return sub_1B4A0D49C(v15, v16);
}

unint64_t sub_1B4A1F10C(uint64_t a1)
{
  result = sub_1B4A1F134();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A1F134()
{
  result = qword_1EDC383C8;
  if (!qword_1EDC383C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC383C8);
  }

  return result;
}

unint64_t sub_1B4A1F18C()
{
  result = qword_1EDC383C0;
  if (!qword_1EDC383C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC383C0);
  }

  return result;
}

unint64_t sub_1B4A1F278()
{
  result = qword_1EB8A7BF8;
  if (!qword_1EB8A7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7BF8);
  }

  return result;
}

uint64_t sub_1B4A1F2CC(void *a1)
{
  a1[1] = sub_1B4A1F7D4(&qword_1EDC39550, type metadata accessor for RingsPropertiesQuery, &protocol conformance descriptor for RingsPropertiesQuery);
  a1[2] = sub_1B4A1F7D4(&qword_1EDC39538, type metadata accessor for RingsPropertiesQuery, &protocol conformance descriptor for RingsPropertiesQuery);
  result = sub_1B4A1F7D4(&qword_1EDC39548, type metadata accessor for RingsPropertiesQuery, &protocol conformance descriptor for RingsPropertiesQuery);
  a1[3] = result;
  return result;
}

void sub_1B4A1F488(uint64_t a1)
{
  type metadata accessor for DateRangeDescriptor(319);
  if (v1 <= 0x3F)
  {
    sub_1B4A1F54C(319, &qword_1EDC3CB90, &type metadata for RingsPropertyDimensionsField);
    if (v2 <= 0x3F)
    {
      sub_1B4A1F54C(319, &qword_1EDC3CBA0, &type metadata for RingsPropertyKind);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4A1F54C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1B4D184BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_1B4A1F598(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B4A1F5AC(result, a2, a3);
  }

  return v3;
}

double sub_1B4A1F5AC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1B4A1F5C0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B4A1F5D4(result, a2, a3);
  }

  return result;
}

uint64_t sub_1B4A1F5D4(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1B4A1F5E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A1F650(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4A1F6B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1B4A1F704(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2 != 2)
  {
    v3 = result;
    result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0);
    *(v3 + *(result + 20)) = v2;
  }

  return result;
}

uint64_t sub_1B4A1F750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A1F7D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4A1F858()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4A1F92C(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4A1F9EC(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

unint64_t sub_1B4A1FABC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B4A2141C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B4A1FAEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1852141679;
  v5 = 0xE400000000000000;
  v6 = 1701669236;
  v7 = 0xE600000000000000;
  v8 = 0x796772656E65;
  if (v2 != 3)
  {
    v8 = 0xD000000000000018;
    v7 = 0x80000001B4D4AB70;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65636E6174736964;
    v3 = 0xE800000000000000;
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

uint64_t sub_1B4A1FB7C()
{
  v1 = *v0;
  v2 = 1852141679;
  v3 = 1701669236;
  v4 = 0x796772656E65;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65636E6174736964;
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

unint64_t sub_1B4A1FC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4A2141C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4A1FC30(uint64_t a1)
{
  v2 = sub_1B4A20770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4A1FC6C(uint64_t a1)
{
  v2 = sub_1B4A20770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutGoal.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v11 = *(v10 - 8);
  v59 = v10;
  v60 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v49 - v14;
  v15 = sub_1B4D179EC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F58, &qword_1B4D20498);
  v62 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4A20770();
  sub_1B4D18EFC();
  (*(v16 + 16))(v18, v2, v15);
  v22 = (*(v16 + 88))(v18, v15);
  if (v22 == *MEMORY[0x1E6985B50])
  {
    (*(v16 + 96))(v18, v15);
    v23 = *(v18 + 1);
    v63 = 1;
    sub_1B4D18C4C();
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v24 = v23;
    v25 = v58;
    sub_1B4D1741C();
    __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
    v26 = v61;
    sub_1B4D18D9C();
    v27 = v19;
    if (v26)
    {

      v28 = v59;
      v29 = v60;
LABEL_4:
      (*(v29 + 8))(v25, v28);
LABEL_13:
      (*(v62 + 8))(v21, v27);
      return __swift_destroy_boxed_opaque_existential_1Tm(v64);
    }

    __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968078]);
    v39 = v59;
    sub_1B4D18DAC();

    v40 = v60;
    goto LABEL_12;
  }

  v30 = v61;
  v31 = v21;
  if (v22 == *MEMORY[0x1E6985B40])
  {
    (*(v16 + 96))(v18, v15);
    v32 = *(v18 + 1);
    v63 = 2;
    v33 = v19;
    v34 = v31;
    sub_1B4D18C4C();
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    v35 = v32;
    v36 = v55;
    sub_1B4D1741C();
    __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
    sub_1B4D18D9C();
    if (v30)
    {

      (*(v56 + 8))(v36, v57);
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
      sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968078]);
      v44 = v57;
      sub_1B4D18DAC();
      v45 = v56;

      (*(v45 + 8))(v36, v44);
    }

    (*(v62 + 8))(v34, v33);
    return __swift_destroy_boxed_opaque_existential_1Tm(v64);
  }

  if (v22 == *MEMORY[0x1E6985B48])
  {
    (*(v16 + 96))(v18, v15);
    v37 = *(v18 + 1);
    v63 = 3;
    v27 = v19;
    sub_1B4D18C4C();
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    v38 = v37;
    v25 = v52;
    sub_1B4D1741C();
    __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
    sub_1B4D18D9C();
    if (v30)
    {

      v29 = v53;
      v28 = v54;
      goto LABEL_4;
    }

    __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
    sub_1B49B0578(&qword_1EB8A6ED0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968078]);
    v39 = v54;
    sub_1B4D18DAC();

    v40 = v53;
LABEL_12:
    (*(v40 + 8))(v25, v39);
    goto LABEL_13;
  }

  if (v22 == *MEMORY[0x1E6985B30])
  {
    (*(v16 + 96))(v18, v15);
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F68, &qword_1B4D204A0) + 48);
    v42 = v59;
    (*(v60 + 32))(v50, v18, v59);
    v43 = v56;
    (*(v56 + 32))(v51, &v18[v41], v57);
    v63 = 4;
    sub_1B4D18C4C();
    __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968078]);
    sub_1B4D18DAC();
    if (v30)
    {
      (*(v43 + 8))(v51, v57);
      (*(v60 + 8))(v50, v42);
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
      sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968078]);
      v47 = v51;
      v48 = v57;
      sub_1B4D18DAC();
      (*(v56 + 8))(v47, v48);
      (*(v60 + 8))(v50, v59);
    }

    (*(v62 + 8))(v31, v19);
    return __swift_destroy_boxed_opaque_existential_1Tm(v64);
  }

  if (v22 == *MEMORY[0x1E6985B38])
  {
    LOBYTE(v64[0]) = 0;
    sub_1B4D18CCC();
    return (*(v62 + 8))(v21, v19);
  }

  else
  {
    v64[0] = 0;
    v64[1] = 0xE000000000000000;
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD000000000000036, 0x80000001B4D5FA10);
    sub_1B4D18A8C();
    result = sub_1B4D18A9C();
    __break(1u);
  }

  return result;
}

unint64_t sub_1B4A20770()
{
  result = qword_1EB8A7F60;
  if (!qword_1EB8A7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7F60);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t WorkoutGoal.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v54 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v51 - v3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v55 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v51 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v60 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F70, &qword_1B4D204A8);
  v64 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v15 = sub_1B4D179EC();
  v63 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B4A20770();
  v19 = v66;
  sub_1B4D18EEC();
  if (!v19)
  {
    v52 = v11;
    v53 = v8;
    v21 = v64;
    v20 = v65;
    v66 = v17;
    v22 = sub_1B4D18C2C();
    if (*(v22 + 16))
    {
      v23 = *(v22 + 32);

      if (v23 <= 1)
      {
        if (!v23)
        {
          (*(v21 + 8))(v14, v12);
          v31 = v63;
          v47 = v66;
          (*(v63 + 104))(v66, *MEMORY[0x1E6985B38], v15);
LABEL_10:
          (*(v31 + 32))(v62, v47, v15);
          return __swift_destroy_boxed_opaque_existential_1Tm(v67);
        }

        v39 = v20;
        v68 = 1;
        sub_1B4D18B3C();
        v40 = v21;
        v59 = v14;
        __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
        sub_1B4D18D7C();
        v42 = v41;
        __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
        sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968098]);
        v43 = v52;
        sub_1B4D18D8C();
        v50 = sub_1B4D1740C();
        (*(v60 + 8))(v43, v39);
        (*(v40 + 8))(v59, v12);
        v47 = v66;
        *v66 = v42;
        *(v47 + 1) = v50;
        v48 = MEMORY[0x1E6985B50];
      }

      else if (v23 == 2)
      {
        v68 = 2;
        sub_1B4D18B3C();
        __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
        sub_1B4D18D7C();
        v32 = v21;
        v34 = v33;
        v65 = v71;
        __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
        sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968098]);
        v35 = v56;
        v36 = v61;
        sub_1B4D18D8C();
        v45 = sub_1B4D1740C();
        (*(v55 + 8))(v35, v36);
        (*(v32 + 8))(v14, v12);
        v47 = v66;
        *v66 = v34;
        *(v47 + 1) = v45;
        v48 = MEMORY[0x1E6985B40];
      }

      else if (v23 == 3)
      {
        v68 = 3;
        sub_1B4D18B3C();
        __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
        sub_1B4D18D7C();
        v25 = v24;
        v65 = v71;
        __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
        sub_1B49B0578(&qword_1EB8A6F10, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968098]);
        v26 = v57;
        v27 = v59;
        sub_1B4D18D8C();
        v46 = sub_1B4D1740C();
        (*(v54 + 8))(v26, v27);
        (*(v21 + 8))(v14, v12);
        v47 = v66;
        *v66 = v25;
        *(v47 + 1) = v46;
        v48 = MEMORY[0x1E6985B48];
      }

      else
      {
        v68 = 4;
        sub_1B4D18B3C();
        v59 = v14;
        __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
        sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968098]);
        sub_1B4D18D8C();
        v57 = v71;
        __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
        sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968098]);
        v37 = v58;
        v38 = v61;
        sub_1B4D18D8C();
        (*(v21 + 8))(v59, v12);
        v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F68, &qword_1B4D204A0) + 48);
        v47 = v66;
        (*(v60 + 32))(v66, v53, v20);
        (*(v55 + 32))(&v47[v49], v37, v38);
        v48 = MEMORY[0x1E6985B30];
      }

      v31 = v63;
      (*(v63 + 104))(v47, *v48, v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      goto LABEL_10;
    }

    v28 = sub_1B4D189BC();
    swift_allocError();
    v30 = v29;
    sub_1B4D18B5C();
    sub_1B4D189AC();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6B00], v28);
    swift_willThrow();
    (*(v21 + 8))(v14, v12);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v67);
}

unint64_t sub_1B4A21318()
{
  result = qword_1EB8A7F78;
  if (!qword_1EB8A7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7F78);
  }

  return result;
}

unint64_t sub_1B4A21370()
{
  result = qword_1EB8A7F80;
  if (!qword_1EB8A7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7F80);
  }

  return result;
}

unint64_t sub_1B4A213C8()
{
  result = qword_1EB8A7F88;
  if (!qword_1EB8A7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7F88);
  }

  return result;
}

unint64_t sub_1B4A2141C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B4D18B1C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B4A215D0()
{
  v0 = type metadata accessor for LogSystem(0);
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B4D17F6C();
  __swift_allocate_value_buffer(v4, qword_1EB8A7FA8);
  v5 = __swift_project_value_buffer(v4, qword_1EB8A7FA8);
  sub_1B49552AC();
  v6 = sub_1B4D187EC();
  *v3 = v6;
  v7 = *(v1 + 28);
  v8 = v6;
  sub_1B4D17F7C();
  (*(*(v4 - 8) + 16))(v5, &v3[v7], v4);
  return sub_1B4955394(v3);
}

uint64_t sub_1B4A21798()
{
  v0 = sub_1B4D17F6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B4D17EFC();
  __swift_allocate_value_buffer(v4, qword_1EDC36F40);
  __swift_project_value_buffer(v4, qword_1EDC36F40);
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EDC3CED0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1B4D17EDC();
}

void __swiftcall WorkoutMediaDetails.init(title:artistName:genreName:isFavorited:isPlaying:elapsedTime:duration:)(FitnessIntelligence::WorkoutMediaDetails *__return_ptr retstr, Swift::String_optional title, Swift::String_optional artistName, Swift::String_optional genreName, Swift::Bool isFavorited, Swift::Bool isPlaying, Swift::Double_optional elapsedTime, Swift::Double_optional duration)
{
  retstr->title = title;
  retstr->artistName = artistName;
  retstr->genreName = genreName;
  retstr->isFavorited = isFavorited;
  retstr->isPlaying = isPlaying;
  *(&retstr->elapsedTime.value + 6) = *&elapsedTime.is_nil;
  BYTE5(retstr->duration.value) = v8 & 1;
  retstr[1].title.value._countAndFlagsBits = v9;
  LOBYTE(retstr[1].title.value._object) = v10 & 1;
}

void __swiftcall WorkoutMediaDetails.init(title:artistName:genreName:isFavorited:isPlaying:)(FitnessIntelligence::WorkoutMediaDetails *__return_ptr retstr, Swift::String_optional title, Swift::String_optional artistName, Swift::String_optional genreName, Swift::Bool isFavorited, Swift::Bool isPlaying)
{
  retstr->title = title;
  retstr->artistName = artistName;
  retstr->genreName = genreName;
  retstr->isFavorited = isFavorited;
  retstr->isPlaying = isPlaying;
  *(&retstr->elapsedTime.value + 6) = 0.0;
  BYTE5(retstr->duration.value) = 1;
  retstr[1].title.value._countAndFlagsBits = 0;
  LOBYTE(retstr[1].title.value._object) = 1;
}

uint64_t sub_1B4A219E4()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x5464657370616C65;
  if (v1 != 5)
  {
    v3 = 0x6E6F697461727564;
  }

  v4 = 0x69726F7661467369;
  if (v1 != 3)
  {
    v4 = 0x6E6979616C507369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x614E747369747261;
  if (v1 != 1)
  {
    v5 = 0x6D614E65726E6567;
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

uint64_t sub_1B4A21ADC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4A228EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4A21B10(uint64_t a1)
{
  v2 = sub_1B4A224DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4A21B4C(uint64_t a1)
{
  v2 = sub_1B4A224DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutMediaDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7FF0, &qword_1B4D20680);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = v7;
  v8 = *(v1 + 32);
  v17 = *(v1 + 40);
  v18 = v8;
  LODWORD(v8) = *(v1 + 48);
  v15 = *(v1 + 49);
  v16 = v8;
  v14 = *(v1 + 56);
  LODWORD(v8) = *(v1 + 64);
  v11[1] = *(v1 + 72);
  v12 = *(v1 + 80);
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4A224DC();
  sub_1B4D18EFC();
  v28 = 0;
  v9 = v21;
  sub_1B4D18C6C();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v27 = 1;
  sub_1B4D18C6C();
  v26 = 2;
  sub_1B4D18C6C();
  v25 = 3;
  sub_1B4D18CCC();
  v24 = 4;
  sub_1B4D18CCC();
  v23 = 5;
  sub_1B4D18C8C();
  v22 = 6;
  sub_1B4D18C8C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t WorkoutMediaDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8000, &qword_1B4D20688);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4A224DC();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v44[0]) = 0;
  v9 = sub_1B4D18B6C();
  v11 = v10;
  v12 = v9;
  LOBYTE(v44[0]) = 1;
  v13 = sub_1B4D18B6C();
  *(&v37 + 1) = v14;
  *&v37 = v13;
  LOBYTE(v44[0]) = 2;
  v15 = sub_1B4D18B6C();
  v17 = v16;
  v36 = v15;
  LOBYTE(v44[0]) = 3;
  v35 = sub_1B4D18BCC();
  LOBYTE(v44[0]) = 4;
  v34 = sub_1B4D18BCC();
  LOBYTE(v44[0]) = 5;
  v18 = sub_1B4D18B8C();
  v32 = a2;
  v33 = v18;
  v55 = v19 & 1;
  v56 = 6;
  v20 = sub_1B4D18B8C();
  v22 = v21;
  v35 &= 1u;
  v34 &= 1u;
  v23 = *(v6 + 8);
  v31 = v20;
  v23(v8, v5);
  v22 &= 1u;
  v54 = v22;
  *&v38 = v12;
  *(&v38 + 1) = v11;
  v24 = v37;
  v39 = v37;
  *&v40 = v36;
  *(&v40 + 1) = v17;
  LOBYTE(v41) = v35;
  BYTE1(v41) = v34;
  v25 = v33;
  *(&v41 + 1) = v33;
  HIDWORD(v30) = v55;
  LOBYTE(v42) = v55;
  *(&v42 + 1) = v31;
  v43 = v22;
  v26 = v41;
  v27 = v32;
  *(v32 + 32) = v40;
  *(v27 + 48) = v26;
  v28 = v39;
  *v27 = v38;
  *(v27 + 16) = v28;
  *(v27 + 64) = v42;
  *(v27 + 80) = v22;
  sub_1B4A22530(&v38, v44);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v44[0] = v12;
  v44[1] = v11;
  v45 = v24;
  v46 = v36;
  v47 = v17;
  v48 = v35;
  v49 = v34;
  v50 = v25;
  v51 = BYTE4(v30);
  v52 = v31;
  v53 = v22;
  return sub_1B4A22568(v44);
}

BOOL _s19FitnessIntelligence19WorkoutMediaDetailsV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = *(a1 + 3);
  v5 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *(a1 + 48);
  v9 = *(a1 + 49);
  v10 = a1[7];
  v11 = *(a1 + 64);
  v12 = a1[9];
  v13 = *(a1 + 80);
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v17 = *(a2 + 24);
  v16 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *(a2 + 48);
  v20 = *(a2 + 49);
  v21 = *(a2 + 56);
  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  v24 = *(a2 + 80);
  if (v3)
  {
    if (!v14)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v14)
    {
      v47 = *(a1 + 48);
      v49 = *(a2 + 49);
      v45 = *(a2 + 64);
      v46 = *(a1 + 49);
      v43 = *(a2 + 80);
      v44 = *(a1 + 64);
      v25 = *(a1 + 80);
      v26 = *(a1 + 5);
      v27 = *(a1 + 4);
      v28 = *(a2 + 40);
      v29 = *(a2 + 32);
      v30 = *(a2 + 16);
      v31 = sub_1B4D18DCC();
      v15 = v30;
      v16 = v29;
      v18 = v28;
      v5 = v27;
      v7 = v26;
      v13 = v25;
      v24 = v43;
      v11 = v44;
      v22 = v45;
      v9 = v46;
      v8 = v47;
      v20 = v49;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v6)
  {
    if (!v17)
    {
      return 0;
    }

    if (v4 != v15 || v6 != v17)
    {
      v48 = v13;
      v32 = v19;
      v33 = v7;
      v34 = v5;
      v50 = v18;
      v35 = v16;
      v36 = sub_1B4D18DCC();
      v16 = v35;
      v18 = v50;
      v5 = v34;
      v7 = v33;
      v19 = v32;
      v13 = v48;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v7)
  {
    if (!v18)
    {
      return 0;
    }

    if (v5 == v16 && v7 == v18)
    {
      result = 0;
      if (v8 != v19)
      {
        return result;
      }

LABEL_23:
      if ((v9 ^ v20))
      {
        return result;
      }

      goto LABEL_28;
    }

    v38 = v19;
    v39 = v13;
    v40 = sub_1B4D18DCC();
    result = 0;
    if ((v40 & 1) != 0 && ((v8 ^ v38) & 1) == 0)
    {
      v13 = v39;
      if (((v9 ^ v20) & 1) == 0)
      {
LABEL_28:
        if (v11)
        {
          if (!v22)
          {
            return 0;
          }
        }

        else
        {
          if (v10 == v21)
          {
            v41 = v22;
          }

          else
          {
            v41 = 1;
          }

          if (v41)
          {
            return 0;
          }
        }

        if ((v13 & 1) == 0)
        {
          if (v12 == v23)
          {
            v42 = v24;
          }

          else
          {
            v42 = 1;
          }

          return (v42 & 1) == 0;
        }

        return (v24 & 1) != 0;
      }
    }
  }

  else
  {
    result = 0;
    if (!v18 && ((v8 ^ v19) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  return result;
}

unint64_t sub_1B4A224DC()
{
  result = qword_1EB8A7FF8;
  if (!qword_1EB8A7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7FF8);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B4A225BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
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

uint64_t sub_1B4A22618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DayOfWeek(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DayOfWeek(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B4A227E8()
{
  result = qword_1EB8A8008;
  if (!qword_1EB8A8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8008);
  }

  return result;
}

unint64_t sub_1B4A22840()
{
  result = qword_1EB8A8010;
  if (!qword_1EB8A8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8010);
  }

  return result;
}

unint64_t sub_1B4A22898()
{
  result = qword_1EB8A8018;
  if (!qword_1EB8A8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8018);
  }

  return result;
}

uint64_t sub_1B4A228EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E65726E6567 && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69726F7661467369 && a2 == 0xEB00000000646574 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6979616C507369 && a2 == 0xE900000000000067 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5464657370616C65 && a2 == 0xEB00000000656D69 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

__n128 FitnessContextQueryResult.init(identifiers:queryDescriptor:component:metrics:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for FitnessContextQueryResult(0);
  sub_1B4A22C1C(a2, a5 + v9[5]);
  v10 = a5 + v9[6];
  v11 = *(a3 + 16);
  *v10 = *a3;
  *(v10 + 1) = v11;
  *(v10 + 4) = *(a3 + 32);
  v12 = (a5 + v9[7]);
  result = *a4;
  v14 = *(a4 + 16);
  *v12 = *a4;
  v12[1] = v14;
  return result;
}

uint64_t type metadata accessor for FitnessContextQueryResult(uint64_t a1)
{
  result = qword_1EB8A8020;
  if (!qword_1EB8A8020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4A22C1C(uint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  (*(*(Descriptor - 8) + 32))(a2, a1, Descriptor);
  return a2;
}

uint64_t FitnessContextQueryResult.queryDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FitnessContextQueryResult(0) + 20);

  return sub_1B49EEFF0(v3, a1);
}

uint64_t FitnessContextQueryResult.component.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FitnessContextQueryResult(0) + 24);

  return sub_1B4A22D10(v3, a1);
}

uint64_t sub_1B4A22D10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E68, &qword_1B4D20870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 FitnessContextQueryResult.metrics.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FitnessContextQueryResult(0) + 28);
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

void sub_1B4A22DE0(uint64_t a1)
{
  sub_1B4A22E94();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FitnessContextQueryDescriptor(319);
    if (v2 <= 0x3F)
    {
      sub_1B4A22EEC(319);
      if (v3 <= 0x3F)
      {
        sub_1B4A22F50();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4A22E94()
{
  if (!qword_1EDC36E08)
  {
    v0 = sub_1B4D1861C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC36E08);
    }
  }
}

void sub_1B4A22EEC(uint64_t a1)
{
  if (!qword_1EB8A8030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6E70, &qword_1B4D1C1A0);
    v1 = sub_1B4D1880C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB8A8030);
    }
  }
}

void sub_1B4A22F50()
{
  if (!qword_1EB8A8038)
  {
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8A8038);
    }
  }
}

void *FitnessPlusCountByTrainerProperty.init(value:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B4A23068(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = *(*(v3 + 56) + 8 * (v9 | (v4 << 6)));
    result = sub_1B49EF0C0();
    if ((v13 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v12)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1B4A23170(uint64_t a1, uint64_t a2)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v49 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v50 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81D0, &qword_1B4D20E40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = v44 - v9;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v47 = v10;
    v13 = 0;
    v45 = a1;
    v16 = *(a1 + 64);
    v15 = a1 + 64;
    v14 = v16;
    v17 = 1 << *(v15 - 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v14;
    v20 = (v17 + 63) >> 6;
    v44[0] = v15;
    v44[1] = v49 + 16;
    v51 = v44 - v9;
    v52 = (v49 + 32);
    v46 = (v49 + 8);
    while (v19)
    {
      v53 = (v19 - 1) & v19;
      v21 = __clz(__rbit64(v19)) | (v13 << 6);
LABEL_16:
      v26 = v45;
      v27 = v48;
      v28 = v49;
      v29 = v54;
      (*(v49 + 16))(v48, *(v45 + 48) + *(v49 + 72) * v21, v54, v11);
      v30 = *(*(v26 + 56) + 8 * v21);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81D8, &unk_1B4D3B2B0);
      v32 = *(v31 + 48);
      v33 = *(v28 + 32);
      v34 = v47;
      v33(v47, v27, v29);
      *(v34 + v32) = v30;
      (*(*(v31 - 8) + 56))(v34, 0, 1, v31);
      v12 = v51;
LABEL_17:
      sub_1B498B270(v34, v12, &qword_1EB8A81D0, &qword_1B4D20E40);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81D8, &unk_1B4D3B2B0);
      if ((*(*(v35 - 8) + 48))(v12, 1, v35) != 1)
      {
        v36 = *(v35 + 48);
        v37 = v50;
        v38 = v54;
        (*v52)(v50, v12, v54);
        v39 = *&v12[v36];
        v40 = sub_1B49E9B90(v37);
        LOBYTE(v36) = v41;
        (*v46)(v37, v38);
        if (v36)
        {
          v42 = *(*(a2 + 56) + 8 * v40) == v39;
          v12 = v51;
          v19 = v53;
          if (v42)
          {
            continue;
          }
        }
      }

      return;
    }

    if (v20 <= v13 + 1)
    {
      v22 = v13 + 1;
    }

    else
    {
      v22 = v20;
    }

    v23 = v22 - 1;
    while (1)
    {
      v24 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v24 >= v20)
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81D8, &unk_1B4D3B2B0);
        v34 = v47;
        (*(*(v43 - 8) + 56))(v47, 1, 1, v43);
        v53 = 0;
        v13 = v23;
        goto LABEL_17;
      }

      v25 = *(v44[0] + 8 * v24);
      ++v13;
      if (v25)
      {
        v53 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) | (v24 << 6);
        v13 = v24;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_1B4A235DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C0, &unk_1B4D47300);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v54 = a2;
  if (a1 != a2 && *(a1 + 16) == *(v54 + 16))
  {
    v46 = (&v43 - v10);
    v47 = v11;
    v13 = 0;
    v44 = a1;
    v14 = *(a1 + 64);
    v43 = a1 + 64;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v14;
    v18 = (v15 + 63) >> 6;
    v48 = v52 + 16;
    v49 = (v52 + 32);
    v45 = (v52 + 8);
    while (1)
    {
      v19 = v47;
      if (!v17)
      {
        break;
      }

      v50 = (v17 - 1) & v17;
      v20 = __clz(__rbit64(v17)) | (v13 << 6);
LABEL_16:
      v25 = *(*(v44 + 48) + 8 * v20);
      v27 = v51;
      v26 = v52;
      (*(v52 + 16))(v51, *(v44 + 56) + *(v52 + 72) * v20, v4, v12);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C8, &unk_1B4D20E30);
      v29 = *(v28 + 48);
      *v19 = v25;
      (*(v26 + 32))(&v19[v29], v27, v4);
      (*(*(v28 - 8) + 56))(v19, 0, 1, v28);
LABEL_17:
      v30 = v19;
      v31 = v46;
      sub_1B498B270(v30, v46, &qword_1EB8A81C0, &unk_1B4D47300);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C8, &unk_1B4D20E30);
      if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
      {
        return;
      }

      v33 = *(v32 + 48);
      v34 = *v31;
      (*v49)(v53, v31 + v33, v4);
      v35 = sub_1B49E9C38(v34);
      if ((v36 & 1) == 0)
      {
        (*v45)(v53, v4);
        return;
      }

      v37 = v51;
      v38 = v52;
      (*(v52 + 16))(v51, *(v54 + 56) + *(v52 + 72) * v35, v4);
      sub_1B49B0578(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968090]);
      v39 = v53;
      v40 = sub_1B4D1816C();
      v41 = *(v38 + 8);
      v41(v37, v4);
      v41(v39, v4);
      v17 = v50;
      if ((v40 & 1) == 0)
      {
        return;
      }
    }

    if (v18 <= v13 + 1)
    {
      v21 = v13 + 1;
    }

    else
    {
      v21 = v18;
    }

    v22 = v21 - 1;
    while (1)
    {
      v23 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v23 >= v18)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C8, &unk_1B4D20E30);
        (*(*(v42 - 8) + 56))(v19, 1, 1, v42);
        v50 = 0;
        v13 = v22;
        goto LABEL_17;
      }

      v24 = *(v43 + 8 * v23);
      ++v13;
      if (v24)
      {
        v50 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) | (v23 << 6);
        v13 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B4A23AD4(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1B49EF0B0(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1B4A23BDC(uint64_t a1, uint64_t a2)
{
  v88 = sub_1B4D179BC();
  v4 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v68 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7078, &qword_1B4D1CCB8);
  MEMORY[0x1EEE9AC00](v81);
  v11 = &v68 - v10;
  v12 = type metadata accessor for WorkoutMilestoneEntry(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v87 = (&v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v68 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v68 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81B8, &unk_1B4D46FD0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v85 = (&v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v68 - v23);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v86 = v13;
    v80 = v12;
    v25 = 0;
    v26 = *(a1 + 64);
    v74 = a1 + 64;
    v27 = 1 << *(a1 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & v26;
    v72 = v9;
    v73 = (v27 + 63) >> 6;
    v77 = a2;
    v78 = (v4 + 48);
    v69 = (v4 + 32);
    v70 = v6;
    v71 = (v4 + 8);
    v30 = v11;
    v31 = v87;
    v84 = (&v68 - v23);
    v76 = a1;
    while (1)
    {
      while (1)
      {
        if (!v29)
        {
          if (v73 <= v25 + 1)
          {
            v34 = v25 + 1;
          }

          else
          {
            v34 = v73;
          }

          v35 = v34 - 1;
          v33 = v86;
          while (1)
          {
            v36 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v36 >= v73)
            {
              v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7188, &unk_1B4D20E20);
              v66 = v85;
              (*(*(v65 - 8) + 56))(v85, 1, 1, v65);
              v83 = 0;
              v25 = v35;
              v43 = v66;
              v44 = v80;
              goto LABEL_17;
            }

            v37 = *(v74 + 8 * v36);
            ++v25;
            if (v37)
            {
              v83 = (v37 - 1) & v37;
              v32 = __clz(__rbit64(v37)) | (v36 << 6);
              v25 = v36;
              goto LABEL_16;
            }
          }

          __break(1u);
          return;
        }

        v83 = (v29 - 1) & v29;
        v32 = __clz(__rbit64(v29)) | (v25 << 6);
        v33 = v86;
LABEL_16:
        v38 = *(*(a1 + 48) + 8 * v32);
        v39 = v82;
        sub_1B4A290F8(*(a1 + 56) + *(v33 + 72) * v32, v82, type metadata accessor for WorkoutMilestoneEntry);
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7188, &unk_1B4D20E20);
        v41 = *(v40 + 48);
        v42 = v85;
        *v85 = v38;
        v43 = v42;
        sub_1B4A29160(v39, v42 + v41, type metadata accessor for WorkoutMilestoneEntry);
        (*(*(v40 - 8) + 56))(v43, 0, 1, v40);
        v44 = v80;
        v24 = v84;
LABEL_17:
        sub_1B498B270(v43, v24, &qword_1EB8A81B8, &unk_1B4D46FD0);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7188, &unk_1B4D20E20);
        v46 = (*(*(v45 - 8) + 48))(v24, 1, v45);
        v47 = v46 == 1;
        if (v46 == 1)
        {
          return;
        }

        v48 = *(v45 + 48);
        v49 = *v24;
        sub_1B4A29160(v24 + v48, v17, type metadata accessor for WorkoutMilestoneEntry);
        v50 = sub_1B49EF0B0(v49);
        if ((v51 & 1) == 0)
        {
          v67 = v17;
          goto LABEL_36;
        }

        sub_1B4A290F8(*(a2 + 56) + *(v86 + 72) * v50, v31, type metadata accessor for WorkoutMilestoneEntry);
        if (*v31 != *v17 || (sub_1B4D177AC() & 1) == 0)
        {
          sub_1B4A291C8(v31, type metadata accessor for WorkoutMilestoneEntry);
          v67 = v17;
          goto LABEL_36;
        }

        v79 = v47;
        v52 = *(v44 + 24);
        v53 = (v31 + v52);
        v54 = v17;
        v55 = (v17 + v52);
        if (*v53 != *v55 || v53[1] != v55[1] || v53[2] != v55[2] || v53[3] != v55[3] || v53[4] != v55[4])
        {
          sub_1B4A291C8(v87, type metadata accessor for WorkoutMilestoneEntry);
          v67 = v54;
LABEL_36:
          sub_1B4A291C8(v67, type metadata accessor for WorkoutMilestoneEntry);
          return;
        }

        v56 = *(type metadata accessor for LocalizedDate(0) + 36);
        v57 = *(v81 + 48);
        sub_1B4974FBC(v53 + v56, v30, &qword_1EB8A6C20, &unk_1B4D1FBF0);
        sub_1B4974FBC(v55 + v56, v30 + v57, &qword_1EB8A6C20, &unk_1B4D1FBF0);
        v58 = *v78;
        if ((*v78)(v30, 1, v88) != 1)
        {
          break;
        }

        sub_1B4A291C8(v87, type metadata accessor for WorkoutMilestoneEntry);
        v17 = v54;
        sub_1B4A291C8(v54, type metadata accessor for WorkoutMilestoneEntry);
        if (v58(v30 + v57, 1, v88) != 1)
        {
          goto LABEL_40;
        }

        sub_1B4975024(v30, &qword_1EB8A6C20, &unk_1B4D1FBF0);
        a1 = v76;
        a2 = v77;
        v31 = v87;
        v29 = v83;
        v24 = v84;
      }

      v59 = v72;
      sub_1B4974FBC(v30, v72, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      v60 = v58(v30 + v57, 1, v88);
      v61 = v54;
      if (v60 == 1)
      {
        break;
      }

      v62 = v30 + v57;
      v63 = v70;
      (*v69)(v70, v62, v88);
      sub_1B4A28364(&qword_1EB8A7080, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD8]);
      v75 = sub_1B4D1816C();
      v64 = *v71;
      (*v71)(v63, v88);
      v31 = v87;
      sub_1B4A291C8(v87, type metadata accessor for WorkoutMilestoneEntry);
      sub_1B4A291C8(v61, type metadata accessor for WorkoutMilestoneEntry);
      v64(v59, v88);
      sub_1B4975024(v30, &qword_1EB8A6C20, &unk_1B4D1FBF0);
      a1 = v76;
      a2 = v77;
      v29 = v83;
      v24 = v84;
      v17 = v61;
      if ((v75 & 1) == 0)
      {
        return;
      }
    }

    sub_1B4A291C8(v87, type metadata accessor for WorkoutMilestoneEntry);
    sub_1B4A291C8(v54, type metadata accessor for WorkoutMilestoneEntry);
    (*v71)(v59, v88);
LABEL_40:
    sub_1B4975024(v30, &qword_1EB8A7078, &qword_1B4D1CCB8);
  }
}

uint64_t sub_1B4A24508(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = *(*(v2 + 48) + v11);
    v13 = *(*(v2 + 56) + 8 * v11);
    v14 = v13 == 0;

    if (!v13)
    {
      return v14;
    }

    sub_1B49E9CA4(v12);
    if ((v15 & 1) == 0)
    {

      return 0;
    }

    v17 = sub_1B4A0B674(v16, v13);

    if ((v17 & 1) == 0)
    {
      return v14;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1B4A24660(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for WorkoutRecord(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v11 = 0;
    v12 = *(a1 + 64);
    v36 = a1 + 64;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v37 = v16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v38 = (v15 - 1) & v15;
LABEL_14:
      v20 = v17 | (v11 << 6);
      v21 = *(*(a1 + 56) + 8 * v20);
      v22 = *(*(a1 + 48) + 8 * v20);

      v23 = sub_1B49E9DFC(v22);
      v25 = v24;

      if ((v25 & 1) == 0 || (v26 = *(*(a2 + 56) + 8 * v23), v27 = *(v26 + 16), v27 != *(v21 + 16)))
      {
LABEL_26:

        return;
      }

      if (v27 && v26 != v21)
      {
        v34 = a1;
        v35 = a2;
        v28 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v39 = v26 + v28;
        v29 = v21 + v28;

        v30 = 0;
        while (v30 < *(v26 + 16))
        {
          v31 = *(v40 + 72) * v30;
          sub_1B4A290F8(v39 + v31, v10, type metadata accessor for WorkoutRecord);
          if (v30 >= *(v21 + 16))
          {
            goto LABEL_30;
          }

          sub_1B4A290F8(v29 + v31, v7, type metadata accessor for WorkoutRecord);
          v32 = _s19FitnessIntelligence13WorkoutRecordV2eeoiySbAC_ACtFZ_0(v10, v7);
          sub_1B4A291C8(v7, type metadata accessor for WorkoutRecord);
          sub_1B4A291C8(v10, type metadata accessor for WorkoutRecord);
          if (!v32)
          {

            goto LABEL_26;
          }

          if (v27 == ++v30)
          {

            a1 = v34;
            a2 = v35;
            goto LABEL_6;
          }
        }

        goto LABEL_29;
      }

LABEL_6:

      v16 = v37;
      v15 = v38;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        return;
      }

      v19 = *(v36 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t sub_1B4A2495C(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1B49EF0B0(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1B4A24A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81A8, &unk_1B4D20E10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v48 = a2;
    v49 = (&v46 - v14);
    v15 = 0;
    v47 = a1;
    v16 = *(a1 + 64);
    v46 = a1 + 64;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    while (v19)
    {
      v51 = (v19 - 1) & v19;
      v21 = __clz(__rbit64(v19)) | (v15 << 6);
      v22 = v50;
LABEL_16:
      v27 = (*(v47 + 48) + 16 * v21);
      v28 = *v27;
      v29 = v27[1];
      sub_1B4A290F8(*(v47 + 56) + *(v5 + 72) * v21, v10, type metadata accessor for WorkoutMetadata);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81B0, &qword_1B4D382C0);
      v31 = *(v30 + 48);
      *v22 = v28;
      v22[1] = v29;
      sub_1B4A29160(v10, v22 + v31, type metadata accessor for WorkoutMetadata);
      (*(*(v30 - 8) + 56))(v22, 0, 1, v30);

LABEL_17:
      v32 = v49;
      sub_1B498B270(v22, v49, &qword_1EB8A81A8, &unk_1B4D20E10);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81B0, &qword_1B4D382C0);
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
      {
        return;
      }

      v34 = v10;
      v35 = v5;
      v36 = *(v33 + 48);
      v38 = *v32;
      v37 = v32[1];
      sub_1B4A29160(v32 + v36, v7, type metadata accessor for WorkoutMetadata);
      v39 = v48;
      v40 = sub_1B49E9EC4(v38, v37);
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        sub_1B4A291C8(v7, type metadata accessor for WorkoutMetadata);
        return;
      }

      v43 = *(v39 + 56);
      v5 = v35;
      v10 = v34;
      sub_1B4A290F8(v43 + *(v35 + 72) * v40, v34, type metadata accessor for WorkoutMetadata);
      v44 = _s19FitnessIntelligence15WorkoutMetadataO2eeoiySbAC_ACtFZ_0(v34, v7);
      sub_1B4A291C8(v34, type metadata accessor for WorkoutMetadata);
      sub_1B4A291C8(v7, type metadata accessor for WorkoutMetadata);
      v19 = v51;
      if ((v44 & 1) == 0)
      {
        return;
      }
    }

    if (v20 <= v15 + 1)
    {
      v23 = v15 + 1;
    }

    else
    {
      v23 = v20;
    }

    v24 = v23 - 1;
    v22 = v50;
    while (1)
    {
      v25 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v25 >= v20)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81B0, &qword_1B4D382C0);
        (*(*(v45 - 8) + 56))(v22, 1, 1, v45);
        v51 = 0;
        v15 = v24;
        goto LABEL_17;
      }

      v26 = *(v46 + 8 * v25);
      ++v15;
      if (v26)
      {
        v51 = (v26 - 1) & v26;
        v21 = __clz(__rbit64(v26)) | (v25 << 6);
        v15 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_1B4A24EFC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    v3 = a1;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = 0;
      v44 = a1 + 64;
      v5 = 1 << *(a1 + 32);
      v6 = -1;
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      v7 = v6 & *(a1 + 64);
      v8 = (v5 + 63) >> 6;
      v45 = v8;
      if (v7)
      {
        while (1)
        {
          v9 = __clz(__rbit64(v7));
          v47 = (v7 - 1) & v7;
LABEL_12:
          v12 = v9 | (v4 << 6);
          v13 = *(*(v3 + 48) + 8 * v12);
          v14 = *(*(v3 + 56) + 8 * v12);
          v15 = v13;

          if (!v13)
          {
            break;
          }

          v16 = sub_1B49E9E4C(v15);
          v18 = v17;

          if ((v18 & 1) == 0 || (v19 = *(*(v2 + 56) + 8 * v16), v20 = *(v19 + 16), v20 != *(v14 + 16)))
          {
LABEL_33:

            return;
          }

          if (v20)
          {
            v21 = v19 == v14;
          }

          else
          {
            v21 = 1;
          }

          if (!v21)
          {
            v43 = v2;

            v22 = 32;
            while (v20)
            {
              v26 = *(v19 + v22);
              v27 = *(v14 + v22);
              objc_opt_self();
              v28 = swift_dynamicCastObjCClass();
              if (v28 && (v29 = v28, objc_opt_self(), (v30 = swift_dynamicCastObjCClass()) != 0))
              {
                v31 = v30;
                v32 = v26;
                v33 = v27;
                v34 = v32;
                v35 = v33;
                [v29 coordinate];
                v37 = v36;
                [v31 coordinate];
                if (v37 != v38)
                {

                  return;
                }

                [v29 coordinate];
                v40 = v39;
                [v31 coordinate];
                v42 = v41;

                if (v40 != v42)
                {
LABEL_32:

                  goto LABEL_33;
                }
              }

              else
              {
                sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
                v23 = v26;
                v24 = v27;
                v25 = sub_1B4D187AC();

                if ((v25 & 1) == 0)
                {
                  goto LABEL_32;
                }
              }

              v22 += 8;
              if (!--v20)
              {

                v2 = v43;
                goto LABEL_29;
              }
            }

            goto LABEL_37;
          }

LABEL_29:

          v8 = v45;
          v3 = a1;
          v7 = v47;
          if (!v47)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        v10 = v4;
        while (1)
        {
          v4 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v4 >= v8)
          {
            return;
          }

          v11 = *(v44 + 8 * v4);
          ++v10;
          if (v11)
          {
            v9 = __clz(__rbit64(v11));
            v47 = (v11 - 1) & v11;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
      }
    }
  }
}

uint64_t sub_1B4A25200(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    v14 = *(*(v3 + 56) + 8 * v12);
    v15 = v13 == 0;

    if (v13)
    {
      v16 = sub_1B49E9F3C(v13);
      v18 = v17;

      if ((v18 & 1) != 0 && *(*(a2 + 56) + 8 * v16) == v14)
      {
        continue;
      }
    }

    return v15;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL static FitnessPlusBestWorkoutProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0) + 28);
    v5 = *(a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v5 == *v7 && v6 == v7[1];
    if (v8 || (sub_1B4D18DCC() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t FitnessPlusBestWorkoutProperty.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0);

  return sub_1B4D1820C();
}

uint64_t FitnessPlusBestWorkoutProperty.hashValue.getter()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0);
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A25644()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0);
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A25704(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0);

  return sub_1B4D1820C();
}

uint64_t sub_1B4A257C0(uint64_t a1)
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0);
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

BOOL sub_1B4A2587C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0) + 28);
    v5 = *(a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v5 == *v7 && v6 == v7[1];
    if (v8 || (sub_1B4D18DCC() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL static FitnessPlusAverageHeartRateProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8040, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t FitnessPlusAverageHeartRateProperty.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8048, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t FitnessPlusAverageHeartRateProperty.hashValue.getter()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8048, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
  MEMORY[0x1B8C7D2C0](*(v0 + *(v1 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A25D84()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8048, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
  MEMORY[0x1B8C7D2C0](*(v0 + *(v1 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A25EB8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8048, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t sub_1B4A25FD4(uint64_t a1)
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8048, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

BOOL sub_1B4A26104(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8040, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL static FitnessPlusCaloriesProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t FitnessPlusCaloriesProperty.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t FitnessPlusCaloriesProperty.hashValue.getter()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1B8C7D2C0](*(v0 + *(v1 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

BOOL static FitnessPlusDurationProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t FitnessPlusDurationProperty.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t FitnessPlusDurationProperty.hashValue.getter()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1B8C7D2C0](*(v0 + *(v1 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

double FitnessPlusCountByTrainerProperty.value.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t static FitnessPlusCountByTrainerProperty.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1B4A25200(*a1, *a2) & (v2 == v3);
}

uint64_t FitnessPlusCountByTrainerProperty.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B4A2809C(a1, v2);
  return MEMORY[0x1B8C7D290](v3);
}

uint64_t FitnessPlusCountByTrainerProperty.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B4D18E8C();
  sub_1B4A2809C(v4, v1);
  MEMORY[0x1B8C7D290](v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A26AC0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B4D18E8C();
  sub_1B4A2809C(v4, v1);
  MEMORY[0x1B8C7D290](v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A26B1C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B4A2809C(a1, v2);
  return MEMORY[0x1B8C7D290](v3);
}

uint64_t sub_1B4A26B50(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B4D18E8C();
  sub_1B4A2809C(v5, v2);
  MEMORY[0x1B8C7D290](v3);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A26BA8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1B4A25200(*a1, *a2) & (v2 == v3);
}

uint64_t FitnessPlusWorkoutCountProperty.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A26C84(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  for (i = (v6 + 63) >> 6; v8; v3 ^= result)
  {
    v10 = v4;
LABEL_9:
    v11 = (v10 << 9) | (8 * __clz(__rbit64(v8)));
    v12 = *(*(a2 + 56) + v11);
    v8 &= v8 - 1;
    MEMORY[0x1B8C7D290](*(*(a2 + 48) + v11));
    MEMORY[0x1B8C7D290](v12);
    result = sub_1B4D18EDC();
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1B8C7D290](v3);
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1B4A26DA8(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v3 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81D0, &qword_1B4D20E40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v39 - v9;
  v11 = *(a2 + 64);
  v39[0] = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v39[1] = v3 + 16;
  v47 = (v3 + 32);
  v42 = v3;
  v43 = a2;
  v44 = (v3 + 8);

  v16 = 0;
  v40 = v10;
  v41 = v7;
  v49 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = v20 | (v17 << 6);
      v23 = v42;
      v22 = v43;
      v24 = v46;
      v25 = v48;
      (*(v42 + 16))(v46, *(v43 + 48) + *(v42 + 72) * v21, v48);
      v26 = *(*(v22 + 56) + 8 * v21);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81D8, &unk_1B4D3B2B0);
      v28 = *(v27 + 48);
      v29 = *(v23 + 32);
      v7 = v41;
      v29(v41, v24, v25);
      *&v7[v28] = v26;
      (*(*(v27 - 8) + 56))(v7, 0, 1, v27);
      v19 = v17;
      v10 = v40;
LABEL_13:
      sub_1B498B270(v7, v10, &qword_1EB8A81D0, &qword_1B4D20E40);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81D8, &unk_1B4D3B2B0);
      if ((*(*(v30 - 8) + 48))(v10, 1, v30) == 1)
      {
        break;
      }

      v31 = *(v30 + 48);
      v32 = v46;
      v33 = v48;
      (*v47)(v46, v10, v48);
      v34 = *&v10[v31];
      v35 = *(v45 + 48);
      v52 = *(v45 + 32);
      v53 = v35;
      v54 = *(v45 + 64);
      v36 = *(v45 + 16);
      v50 = *v45;
      v51 = v36;
      sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968080]);
      sub_1B4D1808C();
      (*v44)(v32, v33);
      MEMORY[0x1B8C7D290](v34);
      v37 = sub_1B4D18EDC();
      v16 = v19;
      v49 ^= v37;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    MEMORY[0x1B8C7D290](v49);
  }

  else
  {
LABEL_5:
    if (v15 <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    else
    {
      v18 = v15;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81D8, &unk_1B4D3B2B0);
        (*(*(v38 - 8) + 56))(v7, 1, 1, v38);
        v14 = 0;
        goto LABEL_13;
      }

      v14 = *(v39[0] + 8 * v17);
      ++v16;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1B4A27218(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v3 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v5 = v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C0, &unk_1B4D47300);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - v10;
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  v37[1] = v3 + 16;
  v43 = (v3 + 32);
  v39 = v3;
  v40 = a2;
  v41 = (v3 + 8);

  v17 = 0;
  v38 = v8;
  v37[0] = v11;
  v45 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_12:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v18 << 6);
      v23 = v39;
      v24 = *(*(v40 + 48) + 8 * v22);
      v25 = v44;
      (*(v39 + 16))(v5, *(v40 + 56) + *(v39 + 72) * v22, v44);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C8, &unk_1B4D20E30);
      v27 = *(v26 + 48);
      v28 = v38;
      *v38 = v24;
      v29 = *(v23 + 32);
      v8 = v28;
      v29(&v28[v27], v5, v25);
      (*(*(v26 - 8) + 56))(v8, 0, 1, v26);
      v20 = v18;
      v11 = v37[0];
LABEL_13:
      sub_1B498B270(v8, v11, &qword_1EB8A81C0, &unk_1B4D47300);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C8, &unk_1B4D20E30);
      if ((*(*(v30 - 8) + 48))(v11, 1, v30) == 1)
      {
        break;
      }

      v31 = *v11;
      v32 = v44;
      (*v43)(v5, &v11[*(v30 + 48)], v44);
      v33 = *(v42 + 48);
      v48 = *(v42 + 32);
      v49 = v33;
      v50 = *(v42 + 64);
      v34 = *(v42 + 16);
      v46 = *v42;
      v47 = v34;
      MEMORY[0x1B8C7D2C0](v31);
      sub_1B49B0578(&qword_1EB8A72D0, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968080]);
      sub_1B4D1808C();
      (*v41)(v5, v32);
      v35 = sub_1B4D18EDC();
      v17 = v20;
      v45 ^= v35;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    MEMORY[0x1B8C7D290](v45);
  }

  else
  {
LABEL_5:
    if (v16 <= v17 + 1)
    {
      v19 = v17 + 1;
    }

    else
    {
      v19 = v16;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C8, &unk_1B4D20E30);
        (*(*(v36 - 8) + 56))(v8, 1, 1, v36);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B4A27684(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  for (i = (v6 + 63) >> 6; v8; v3 ^= result)
  {
    v10 = v4;
LABEL_9:
    v11 = (v10 << 9) | (8 * __clz(__rbit64(v8)));
    v12 = *(*(a2 + 56) + v11);
    v8 &= v8 - 1;
    MEMORY[0x1B8C7D290](*(*(a2 + 48) + v11));
    MEMORY[0x1B8C7D2C0](v12);
    result = sub_1B4D18EDC();
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1B8C7D290](v3);
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1B4A277A8(__int128 *a1, uint64_t a2)
{
  v55 = sub_1B4D179BC();
  v4 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v48 - v7;
  v8 = type metadata accessor for WorkoutMilestoneEntry(0);
  v52 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v60 = (&v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81B8, &unk_1B4D46FD0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v58 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v56 = (&v48 - v15);
  v16 = *(a2 + 64);
  v57 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v54 = (v4 + 48);
  v49 = (v4 + 32);
  v48 = (v4 + 8);
  v53 = a2;

  v21 = 0;
  v22 = 0;
  while (1)
  {
    v61 = v21;
    if (!v19)
    {
      break;
    }

    v24 = v22;
LABEL_16:
    v28 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v29 = v28 | (v24 << 6);
    v30 = *(*(v53 + 48) + 8 * v29);
    v31 = v51;
    sub_1B4A290F8(*(v53 + 56) + *(v52 + 72) * v29, v51, type metadata accessor for WorkoutMilestoneEntry);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7188, &unk_1B4D20E20);
    v33 = *(v32 + 48);
    v34 = v58;
    *v58 = v30;
    v27 = v34;
    sub_1B4A29160(v31, v34 + v33, type metadata accessor for WorkoutMilestoneEntry);
    (*(*(v32 - 8) + 56))(v27, 0, 1, v32);
LABEL_17:
    v35 = v27;
    v36 = v56;
    sub_1B498B270(v35, v56, &qword_1EB8A81B8, &unk_1B4D46FD0);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7188, &unk_1B4D20E20);
    if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
    {

      MEMORY[0x1B8C7D290](v61);
      return;
    }

    v38 = v36;
    v39 = *v36;
    v40 = v60;
    sub_1B4A29160(v38 + *(v37 + 48), v60, type metadata accessor for WorkoutMilestoneEntry);
    v41 = a1[3];
    v64 = a1[2];
    v65 = v41;
    v66 = *(a1 + 8);
    v42 = a1[1];
    v62 = *a1;
    v63 = v42;
    MEMORY[0x1B8C7D290](v39);
    MEMORY[0x1B8C7D2C0](*v40);
    sub_1B4D177CC();
    sub_1B4A28364(&qword_1EB8A72D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1B4D1808C();
    v43 = (v40 + *(v8 + 24));
    MEMORY[0x1B8C7D290](*v43);
    MEMORY[0x1B8C7D290](v43[1]);
    MEMORY[0x1B8C7D290](v43[2]);
    MEMORY[0x1B8C7D290](v43[3]);
    MEMORY[0x1B8C7D290](v43[4]);
    v44 = type metadata accessor for LocalizedDate(0);
    v45 = v59;
    sub_1B4974FBC(v43 + *(v44 + 36), v59, &qword_1EB8A6C20, &unk_1B4D1FBF0);
    v46 = v55;
    if ((*v54)(v45, 1, v55) == 1)
    {
      sub_1B4D18EAC();
    }

    else
    {
      v23 = v50;
      (*v49)(v50, v59, v46);
      sub_1B4D18EAC();
      sub_1B4A28364(&qword_1EB8A7040, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
      sub_1B4D1808C();
      (*v48)(v23, v46);
    }

    sub_1B4A291C8(v60, type metadata accessor for WorkoutMilestoneEntry);
    v21 = sub_1B4D18EDC() ^ v61;
  }

  if (v20 <= v22 + 1)
  {
    v25 = v22 + 1;
  }

  else
  {
    v25 = v20;
  }

  v26 = v25 - 1;
  v27 = v58;
  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7188, &unk_1B4D20E20);
      (*(*(v47 - 8) + 56))(v27, 1, 1, v47);
      v19 = 0;
      v22 = v26;
      goto LABEL_17;
    }

    v19 = *(v57 + 8 * v24);
    ++v22;
    if (v19)
    {
      v22 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1B4A27E5C(uint64_t a1, uint64_t a2)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v21 - v5;
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;
  v21 = (v4 + 8);
  v23 = a2;

  v12 = 0;
  v13 = 0;
  v14 = v22;
  if (v10)
  {
    while (1)
    {
      v15 = v13;
LABEL_8:
      v16 = __clz(__rbit64(v10)) | (v15 << 6);
      v17 = *(*(v23 + 48) + v16);
      v18 = *(*(v23 + 56) + 8 * v16);

      if (!v18)
      {
        break;
      }

      v10 &= v10 - 1;
      v19 = *(a1 + 48);
      v25[2] = *(a1 + 32);
      v25[3] = v19;
      v26 = *(a1 + 64);
      v20 = *(a1 + 16);
      v25[0] = *a1;
      v25[1] = v20;
      v24 = v17;
      DistanceReference.rawValue.getter();
      sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968080]);
      sub_1B4D1808C();
      (*v21)(v6, v14);
      sub_1B49C3E5C(v25, v18);

      v12 ^= sub_1B4D18EDC();
      v13 = v15;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    MEMORY[0x1B8C7D290](v12);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v11)
      {
        goto LABEL_11;
      }

      v10 = *(v7 + 8 * v15);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1B4A2809C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v16 = v2;
  while (v6)
  {
LABEL_10:
    v11 = (v9 << 9) | (8 * __clz(__rbit64(v6)));
    v12 = *(*(v2 + 48) + v11);
    v13 = *(*(v2 + 56) + v11);

    if (!v12)
    {
LABEL_15:

      MEMORY[0x1B8C7D290](v8);
      return;
    }

    MEMORY[0x1B8C7D290](*(v12 + 16));
    v14 = *(v12 + 16);
    if (v14)
    {

      v15 = v12 + 40;
      do
      {

        sub_1B4D1820C();

        v15 += 16;
        --v14;
      }

      while (v14);

      v2 = v16;
    }

    v6 &= v6 - 1;

    MEMORY[0x1B8C7D290](v13);
    v8 ^= sub_1B4D18EDC();
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      goto LABEL_15;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

unint64_t sub_1B4A28240()
{
  result = qword_1EB8A8050;
  if (!qword_1EB8A8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8050);
  }

  return result;
}

uint64_t sub_1B4A28294(uint64_t a1)
{
  result = sub_1B4A28364(&qword_1EB8A8058, type metadata accessor for FitnessPlusBestWorkoutProperty, &protocol conformance descriptor for FitnessPlusBestWorkoutProperty);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A28310()
{
  result = qword_1EB8A8060;
  if (!qword_1EB8A8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8060);
  }

  return result;
}

uint64_t sub_1B4A28364(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4A283AC(uint64_t a1)
{
  result = sub_1B4A28364(&qword_1EB8A8070, type metadata accessor for FitnessPlusBestWorkoutProperty, &protocol conformance descriptor for FitnessPlusBestWorkoutProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A28490(uint64_t a1)
{
  result = sub_1B4A28364(&qword_1EB8A8090, type metadata accessor for FitnessPlusAverageHeartRateProperty, &protocol conformance descriptor for FitnessPlusAverageHeartRateProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2854C(uint64_t a1)
{
  result = sub_1B4A28364(&qword_1EB8A80A0, type metadata accessor for FitnessPlusAverageHeartRateProperty, &protocol conformance descriptor for FitnessPlusAverageHeartRateProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A28630(uint64_t a1)
{
  result = sub_1B4A28364(&qword_1EB8A80C0, type metadata accessor for FitnessPlusCaloriesProperty, &protocol conformance descriptor for FitnessPlusCaloriesProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A286EC(uint64_t a1)
{
  result = sub_1B4A28364(&qword_1EB8A80D0, type metadata accessor for FitnessPlusCaloriesProperty, &protocol conformance descriptor for FitnessPlusCaloriesProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A287D0(uint64_t a1)
{
  result = sub_1B4A28364(&qword_1EB8A80F0, type metadata accessor for FitnessPlusDurationProperty, &protocol conformance descriptor for FitnessPlusDurationProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2888C(uint64_t a1)
{
  result = sub_1B4A28364(&qword_1EB8A8100, type metadata accessor for FitnessPlusDurationProperty, &protocol conformance descriptor for FitnessPlusDurationProperty);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A28930()
{
  result = qword_1EB8A8110;
  if (!qword_1EB8A8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8110);
  }

  return result;
}

unint64_t sub_1B4A28984(uint64_t a1)
{
  result = sub_1B4A289AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A289AC()
{
  result = qword_1EB8A8118;
  if (!qword_1EB8A8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8118);
  }

  return result;
}

unint64_t sub_1B4A28A04()
{
  result = qword_1EB8A8120;
  if (!qword_1EB8A8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8120);
  }

  return result;
}

unint64_t sub_1B4A28A58(uint64_t a1)
{
  result = sub_1B4A28A80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A28A80()
{
  result = qword_1EB8A8128;
  if (!qword_1EB8A8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8128);
  }

  return result;
}

unint64_t sub_1B4A28AD8()
{
  result = qword_1EB8A8130;
  if (!qword_1EB8A8130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8130);
  }

  return result;
}

unint64_t sub_1B4A28B30()
{
  result = qword_1EB8A8138;
  if (!qword_1EB8A8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8138);
  }

  return result;
}

unint64_t sub_1B4A28B84(uint64_t a1)
{
  result = sub_1B4A28BAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A28BAC()
{
  result = qword_1EB8A8140;
  if (!qword_1EB8A8140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8140);
  }

  return result;
}

unint64_t sub_1B4A28C04()
{
  result = qword_1EB8A8148;
  if (!qword_1EB8A8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8148);
  }

  return result;
}

unint64_t sub_1B4A28C58(uint64_t a1)
{
  result = sub_1B4A28C80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A28C80()
{
  result = qword_1EB8A8150;
  if (!qword_1EB8A8150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8150);
  }

  return result;
}

unint64_t sub_1B4A28CD8()
{
  result = qword_1EB8A8158;
  if (!qword_1EB8A8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8158);
  }

  return result;
}

void sub_1B4A28DDC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B498AFB8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_1B4A28FD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, void *a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  sub_1B4A28DDC(319, a4, a5, a6, a7);
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1B4A29054(uint64_t *a1, int a2)
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

uint64_t sub_1B4A2909C(uint64_t result, int a2, int a3)
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

uint64_t sub_1B4A290F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A29160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A291C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4A29268(char a1)
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](a1 & 1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A292CC(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4A29240(v3, *v1);
  return sub_1B4D18EDC();
}

uint64_t SnapshotQueryPlan.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v117 = a3;
  v6 = a1;
  v120 = a4;
  v7 = *(a2 - 8);
  v115 = v4;
  v116 = v7;
  MEMORY[0x1EEE9AC00](a1);
  v102 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v101);
  v110 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v108 = (&v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v109 = &v98 - v13;
  v100 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v100);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v106 = (&v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v107 = &v98 - v19;
  v99 = type metadata accessor for RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v99);
  v105 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v103 = (&v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v104 = &v98 - v24;
  v25 = type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = (&v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v98 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v98 - v33;
  v35 = sub_1B4D1880C();
  v112 = *(v35 - 8);
  v113 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v111 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v114 = &v98 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v98 - v40;
  v42 = *v6;
  v43 = *(*v6 + 16);
  v44 = MEMORY[0x1E69E7CC0];
  v128 = v34;
  v119 = a2;
  if (!v43)
  {
LABEL_10:
    *v120 = v44;
    Plan = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
    sub_1B4A2A9C4(v6 + *(Plan + 20), v34);
    v57 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
    if ((*(*(v57 - 8) + 48))(v34, 1, v57) == 1)
    {
      _s7FailureOMa_2(0, v119, v117, v58);
      swift_getWitnessTable();
      swift_allocError();
      *v59 = 0;
      swift_willThrow();
      v60 = v6;
      goto LABEL_31;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v62 = v116;
      v63 = v6;
      if (EnumCaseMultiPayload == 1)
      {
        v64 = v104;
        sub_1B4A2AC10(v128, v104, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
        v65 = v103;
        sub_1B4A2AA4C(v64, v103, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
        v66 = v115;
        RingsPropertiesQuery.init(_:)(v65, v105);
        v67 = v119;
        if (v66)
        {
          v68 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery;
LABEL_20:
          sub_1B4A2ACC0(v64, v68);
          v60 = v6;
          goto LABEL_31;
        }

        v125 = v41;
        sub_1B4A2ACC0(v64, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
        v76 = v114;
      }

      else
      {
        v64 = v109;
        sub_1B4A2AC10(v128, v109, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
        v74 = v108;
        sub_1B4A2AA4C(v64, v108, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
        v75 = v115;
        FitnessPlusPropertiesQuery.init(_:)(v74, v110);
        v67 = v119;
        if (v75)
        {
          v68 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery;
          goto LABEL_20;
        }

        v125 = v41;
        sub_1B4A2ACC0(v64, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
        v76 = v114;
      }

      v82 = swift_dynamicCast();
      v79 = v62;
      v78 = *(v62 + 56);
      v118 = v63;
      if (v82)
      {
        v80 = v76;
        v81 = 0;
      }

      else
      {
        v80 = v76;
        v81 = 1;
      }
    }

    else
    {
      v69 = v107;
      sub_1B4A2AC10(v128, v107, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      v70 = v106;
      sub_1B4A2AA4C(v69, v106, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      v71 = v115;
      WorkoutPropertiesQuery.init(_:)(v70, v15);
      v72 = v116;
      v73 = v6;
      if (v71)
      {
        sub_1B4A2ACC0(v69, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
        sub_1B4A2ACC0(v6, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan);
      }

      v125 = v41;
      sub_1B4A2ACC0(v69, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      v76 = v114;
      v67 = v119;
      v77 = swift_dynamicCast();
      v78 = *(v72 + 56);
      v79 = v72;
      v118 = v73;
      if (v77)
      {
        v80 = v76;
        v81 = 0;
      }

      else
      {
        v80 = v76;
        v81 = 1;
      }
    }

    v78(v80, v81, 1, v67);
    v83 = v76;
    v84 = v67;
    v85 = v120;
    v86 = v112;
    v87 = v113;
    v88 = v125;
    (*(v112 + 32))(v125, v83, v113);
    v89 = v111;
    (*(v86 + 16))(v111, v88, v87);
    v90 = (*(v79 + 48))(v89, 1, v84);
    v91 = *(v86 + 8);
    if (v90 != 1)
    {
      v91(v88, v87);
      sub_1B4A2ACC0(v118, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan);
      v94 = *(v79 + 32);
      v95 = v102;
      v94(v102, v89, v84);
      v97 = type metadata accessor for SnapshotQueryPlan(0, v84, v117, v96);
      return (v94)(v85 + *(v97 + 36), v95, v84);
    }

    v91(v89, v87);
    _s7FailureOMa_2(0, v84, v117, v92);
    swift_getWitnessTable();
    swift_allocError();
    *v93 = 1;
    swift_willThrow();
    v91(v88, v87);
    v60 = v118;
LABEL_31:
    sub_1B4A2ACC0(v60, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan);
  }

  v118 = v6;
  v129 = MEMORY[0x1E69E7CC0];
  v121 = v43;
  v127 = v42;
  result = sub_1B4BCEDFC(0, v43, 0);
  v46 = 0;
  v44 = v129;
  v47 = v127;
  v48 = v127 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
  v125 = v41;
  v126 = v48;
  v123 = v31;
  v124 = v15;
  v122 = v28;
  while (v46 < *(v47 + 16))
  {
    sub_1B4A2AA4C(v126 + *(v26 + 72) * v46, v31, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
    sub_1B4A2AA4C(v31, v28, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
    v49 = sub_1B4D18B1C();
    if (v49 > 2)
    {
      sub_1B4A2A970();
      swift_allocError();
      swift_willThrow();
      sub_1B4A2ACC0(v28, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
      sub_1B4A2ACC0(v31, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
      sub_1B4A2ACC0(v118, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan);
    }

    v50 = v49;
    sub_1B4A2ACC0(v31, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
    v52 = *v28;
    v51 = v28[1];
    result = sub_1B4A2ACC0(v28, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
    v129 = v44;
    v54 = *(v44 + 16);
    v53 = *(v44 + 24);
    if (v54 >= v53 >> 1)
    {
      result = sub_1B4BCEDFC((v53 > 1), v54 + 1, 1);
      v44 = v129;
    }

    ++v46;
    *(v44 + 16) = v54 + 1;
    v55 = v44 + 24 * v54;
    *(v55 + 32) = v52;
    *(v55 + 40) = v51;
    *(v55 + 48) = v50;
    v28 = v122;
    v15 = v124;
    v41 = v125;
    v47 = v127;
    v34 = v128;
    v31 = v123;
    if (v121 == v46)
    {
      v6 = v118;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t SnapshotQueryPlan.protobuf()(uint64_t a1, __n128 a2)
{
  type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
  sub_1B4A2AC78(qword_1EDC3CA58, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryPlan);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A2A040(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v65 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v61 - v10;
  v73 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v73);
  v67 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v62 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v61 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v74 = &v61 - v19;
  v20 = type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v76);
  v71 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v75 = &v61 - v26;
  v79 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v77 = a2;
  v78 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a2;
  v30 = *(*a2 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    v68 = a4;
    v69 = a1;
    v70 = a3;
    v82 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF4DC(0, v30, 0);
    v31 = v82;
    v32 = sub_1B4A2AC78(qword_1EDC3B590, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint, &protocol conformance descriptor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
    v80 = v32;
    v33 = v29 + 48;
    do
    {
      *&v34 = MEMORY[0x1EEE9AC00](v32);
      *(&v61 - 2) = v34;
      *(&v61 - 16) = v35;
      v36 = v81;
      sub_1B4D17DAC();
      v81 = v36;
      v82 = v31;
      v38 = *(v31 + 16);
      v37 = *(v31 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1B4BCF4DC((v37 > 1), v38 + 1, 1);
        v31 = v82;
      }

      *(v31 + 16) = v38 + 1;
      v32 = sub_1B4A2AC10(v23, v31 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v38, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
      v33 += 24;
      --v30;
    }

    while (v30);
    a1 = v69;
    a3 = v70;
    a4 = v68;
  }

  *a1 = v31;
  Plan = type metadata accessor for SnapshotQueryPlan(0, a3, a4, v39);
  v42 = v78;
  v41 = v79;
  (*(v79 + 16))(v78, v77 + *(Plan + 36), a3);
  v43 = v75;
  if (swift_dynamicCast())
  {
    v44 = v71;
    sub_1B4A2AC10(v43, v71, type metadata accessor for RingsPropertiesQuery);
    v45 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
    MEMORY[0x1EEE9AC00](v45);
    *(&v61 - 2) = v44;
    sub_1B4A2AC78(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    v46 = v74;
    v47 = v81;
    sub_1B4D17DAC();
    sub_1B4A2ACC0(v44, type metadata accessor for RingsPropertiesQuery);
    if (!v47)
    {
LABEL_15:
      v57 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v57 - 8) + 56))(v46, 0, 1, v57);
      v58 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
      sub_1B4A2ABA0(v46, a1 + *(v58 + 20));
    }
  }

  else
  {
    v48 = v72;
    if (swift_dynamicCast())
    {
      v49 = v67;
      sub_1B4A2AC10(v48, v67, type metadata accessor for WorkoutPropertiesQuery);
      v50 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
      MEMORY[0x1EEE9AC00](v50);
      *(&v61 - 2) = v49;
      sub_1B4A2AC78(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      v46 = v66;
      v51 = v81;
      sub_1B4D17DAC();
      sub_1B4A2ACC0(v49, type metadata accessor for WorkoutPropertiesQuery);
      if (!v51)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v52 = v64;
      if (!swift_dynamicCast())
      {
        _s7FailureOMa_2(0, a3, a4, v53);
        swift_getWitnessTable();
        swift_allocError();
        *v59 = 1;
        swift_willThrow();
        return (*(v41 + 8))(v42, a3);
      }

      v54 = v63;
      sub_1B4A2AC10(v52, v63, type metadata accessor for FitnessPlusPropertiesQuery);
      v55 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
      MEMORY[0x1EEE9AC00](v55);
      *(&v61 - 2) = v54;
      sub_1B4A2AC78(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      v46 = v62;
      v56 = v81;
      sub_1B4D17DAC();
      sub_1B4A2ACC0(v54, type metadata accessor for FitnessPlusPropertiesQuery);
      if (!v56)
      {
        goto LABEL_15;
      }
    }
  }

  return (*(v41 + 8))(v42, a3);
}

unint64_t sub_1B4A2A970()
{
  result = qword_1EB8A81E8;
  if (!qword_1EB8A81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A81E8);
  }

  return result;
}

uint64_t sub_1B4A2A9C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4A2AA4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A2ABA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4A2AC10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A2AC78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4A2ACC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static RingsStatisticsPropertyGenerator.from(_:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4D1746C();
  v9 = sub_1B4D1880C();
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v19 = *a2;
  sub_1B49A8448(a1, &v35);
  if (v36)
  {
    v33 = a4;
    sub_1B49A24C4(&v35, v37);
    v34 = v19;
    sub_1B4A2B060(&v34, &v35);
    v20 = v35;
    if (v35 != 7)
    {
      v21 = v38;
      v22 = v39;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      LOBYTE(v35) = v20;
      RingsRepresentable.measure<A>(metric:)(&v35, v21, a3, v22, v11);
      if ((*(v12 + 48))(v11, 1, v8) != 1)
      {
        (*(v12 + 32))(v18, v11, v8);
        (*(v12 + 16))(v15, v18, v8);
        v27 = v33;
        StatisticsPropertyValue.init(measurement:)(v15, a3, v33);
        (*(v12 + 8))(v18, v8);
        v30 = type metadata accessor for StatisticsPropertyValue(0, a3, v28, v29);
        (*(*(v30 - 8) + 56))(v27, 0, 1, v30);
        return __swift_destroy_boxed_opaque_existential_1Tm(v37);
      }

      (*(v32 + 8))(v11, v9);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    a4 = v33;
  }

  else
  {
    sub_1B49A84B8(&v35);
  }

  v25 = type metadata accessor for StatisticsPropertyValue(0, a3, v23, v24);
  return (*(*(v25 - 8) + 56))(a4, 1, 1, v25);
}

_BYTE *sub_1B4A2B060@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result - 4 >= 7)
  {
    v2 = 7;
  }

  else
  {
    v2 = *result - 4;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1B4A2B080(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

BOOL _s19FitnessIntelligence36WorkoutWeeklyCountStatisticsPropertyV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8378, &unk_1B4D21F10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1B4A235DC(a1[1], a2[1]);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v24 = v7;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0) + 32);
  v16 = *(v11 + 48);
  sub_1B4974FBC(a1 + v15, v13, &qword_1EB8A8370, &unk_1B4D21F00);
  sub_1B4974FBC(a2 + v15, &v13[v16], &qword_1EB8A8370, &unk_1B4D21F00);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A8370, &unk_1B4D21F00);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1B4974FBC(v13, v10, &qword_1EB8A8370, &unk_1B4D21F00);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    sub_1B4975024(v10, &qword_1EB8A6928, &qword_1B4D20480);
LABEL_8:
    v19 = &qword_1EB8A8378;
    v20 = &unk_1B4D21F10;
LABEL_17:
    sub_1B4975024(v13, v19, v20);
    return 0;
  }

  v21 = v24;
  sub_1B498B270(&v13[v16], v24, &qword_1EB8A6928, &qword_1B4D20480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  sub_1B49B0578(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968090]);
  if ((sub_1B4D1816C() & 1) == 0 || *&v10[*(v4 + 28)] != *(v21 + *(v4 + 28)) || (sub_1B4D1816C() & 1) == 0 || (sub_1B4D1816C() & 1) == 0 || (sub_1B4D1816C() & 1) == 0)
  {
    sub_1B4975024(v21, &qword_1EB8A6928, &qword_1B4D20480);
    sub_1B4975024(v10, &qword_1EB8A6928, &qword_1B4D20480);
    v19 = &qword_1EB8A8370;
    v20 = &unk_1B4D21F00;
    goto LABEL_17;
  }

  v22 = sub_1B4D1816C();
  sub_1B4975024(v21, &qword_1EB8A6928, &qword_1B4D20480);
  sub_1B4975024(v10, &qword_1EB8A6928, &qword_1B4D20480);
  sub_1B4975024(v13, &qword_1EB8A8370, &unk_1B4D21F00);
  return (v22 & 1) != 0;
}

uint64_t _s19FitnessIntelligence36WorkoutWeeklyCountStatisticsPropertyV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v13 - v9;
  MEMORY[0x1B8C7D2C0](*v1, v8);
  sub_1B4A27218(a1, v1[1]);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
  sub_1B4974FBC(v1 + *(v11 + 32), v10, &qword_1EB8A8370, &unk_1B4D21F00);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    return sub_1B4D18EAC();
  }

  sub_1B498B270(v10, v6, &qword_1EB8A6928, &qword_1B4D20480);
  sub_1B4D18EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  sub_1B49B0578(&qword_1EB8A72D0, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  MEMORY[0x1B8C7D2C0](*&v6[*(v3 + 28)]);
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4975024(v6, &qword_1EB8A6928, &qword_1B4D20480);
}

double FastestByDistanceProperty.value.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

void *FastestByDistanceProperty.init(value:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t static FastestByDistanceProperty.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1B4A24508(*a1, *a2) & (v2 == v3);
}

uint64_t FastestByDistanceProperty.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B4A27E5C(a1, v2);
  return MEMORY[0x1B8C7D290](v3);
}

uint64_t sub_1B4A2B8E8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B4A27E5C(a1, v2);
  return MEMORY[0x1B8C7D290](v3);
}

uint64_t sub_1B4A2B934(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1B4A24508(*a1, *a2) & (v2 == v3);
}

double FastestPaceProperty.value.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t sub_1B4A2BB2C(uint64_t (*a1)(void *, uint64_t))
{
  v3 = *v1;
  sub_1B4D18E8C();
  a1(v5, v3);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A2BBA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v5 = *v3;
  sub_1B4D18E8C();
  a3(v7, v5);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A2BC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1B4D18E8C();
  a4(v8, v6);
  return sub_1B4D18EDC();
}

BOOL static PaceStatisticsProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B49B0578(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8278, &qword_1B4D3B2D0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t PaceStatisticsProperty.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B49B0578(&qword_1EB8A72F8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8278, &qword_1B4D3B2D0);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t PaceStatisticsProperty.hashValue.getter()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B49B0578(&qword_1EB8A72F8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8278, &qword_1B4D3B2D0);
  MEMORY[0x1B8C7D2C0](*(v0 + *(v1 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A2C0C8()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B49B0578(&qword_1EB8A72F8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8278, &qword_1B4D3B2D0);
  MEMORY[0x1B8C7D2C0](*(v0 + *(v1 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A2C1FC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B49B0578(&qword_1EB8A72F8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8278, &qword_1B4D3B2D0);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t sub_1B4A2C318(uint64_t a1)
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B49B0578(&qword_1EB8A72F8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8278, &qword_1B4D3B2D0);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

BOOL sub_1B4A2C448(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B49B0578(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8278, &qword_1B4D3B2D0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL static AverageHeartRateStatisticsProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8040, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t AverageHeartRateStatisticsProperty.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8048, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t AverageHeartRateStatisticsProperty.hashValue.getter()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  sub_1B49B0578(&qword_1EB8A8048, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
  MEMORY[0x1B8C7D2C0](*(v0 + *(v1 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

BOOL static DiveDepthStatisticsProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t DiveDepthStatisticsProperty.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t DiveDepthStatisticsProperty.hashValue.getter()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  MEMORY[0x1B8C7D2C0](*(v0 + *(v1 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

BOOL static WorkoutCaloriesStatisticsProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t WorkoutCaloriesStatisticsProperty.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t WorkoutCaloriesStatisticsProperty.hashValue.getter()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1B8C7D2C0](*(v0 + *(v1 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

BOOL static WorkoutDurationStatisticsProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t WorkoutDurationStatisticsProperty.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t WorkoutDurationStatisticsProperty.hashValue.getter()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1B8C7D2C0](*(v0 + *(v1 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

BOOL static WeatherTemperatureStatisticsProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B49B0578(&qword_1EB8A8288, &qword_1EB8A7470, &qword_1B4D1F290, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8280, &unk_1B4D20FB0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t WeatherTemperatureStatisticsProperty.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B49B0578(&qword_1EB8A8290, &qword_1EB8A7470, &qword_1B4D1F290, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8280, &unk_1B4D20FB0);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t WeatherTemperatureStatisticsProperty.hashValue.getter()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B49B0578(&qword_1EB8A8290, &qword_1EB8A7470, &qword_1B4D1F290, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8280, &unk_1B4D20FB0);
  MEMORY[0x1B8C7D2C0](*(v0 + *(v1 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A2D9A8()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B49B0578(&qword_1EB8A8290, &qword_1EB8A7470, &qword_1B4D1F290, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8280, &unk_1B4D20FB0);
  MEMORY[0x1B8C7D2C0](*(v0 + *(v1 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A2DADC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B49B0578(&qword_1EB8A8290, &qword_1EB8A7470, &qword_1B4D1F290, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8280, &unk_1B4D20FB0);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t sub_1B4A2DBF8(uint64_t a1)
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B49B0578(&qword_1EB8A8290, &qword_1EB8A7470, &qword_1B4D1F290, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8280, &unk_1B4D20FB0);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

BOOL sub_1B4A2DD28(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  sub_1B49B0578(&qword_1EB8A8288, &qword_1EB8A7470, &qword_1B4D1F290, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8280, &unk_1B4D20FB0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t WorkoutTotalCountProperty.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

uint64_t static WorkoutCountByRoundedDistanceProperty.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1B4A23170(*a1, *a2);
  return v4 & (v2 == v3);
}

uint64_t WorkoutCountByRoundedDistanceProperty.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B4A26DA8(a1, v2);
  return MEMORY[0x1B8C7D290](v3);
}

uint64_t sub_1B4A2DFCC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B4A26DA8(a1, v2);
  return MEMORY[0x1B8C7D290](v3);
}

uint64_t sub_1B4A2E018(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1B4A23170(*a1, *a2);
  return v4 & (v2 == v3);
}

uint64_t static WorkoutCountByWeatherConditionProperty.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1B4A23068(*a1, *a2) & (v2 == v3);
}

uint64_t WorkoutCountByWeatherConditionProperty.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B4A26C84(a1, v2);
  return MEMORY[0x1B8C7D290](v3);
}

uint64_t sub_1B4A2E0E8(void (*a1)(void *, uint64_t))
{
  v3 = *v1;
  v4 = v1[1];
  sub_1B4D18E8C();
  a1(v6, v3);
  MEMORY[0x1B8C7D290](v4);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A2E164(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v5 = *v3;
  v6 = v3[1];
  sub_1B4D18E8C();
  a3(v8, v5);
  MEMORY[0x1B8C7D290](v6);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A2E1C8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B4A26C84(a1, v2);
  return MEMORY[0x1B8C7D290](v3);
}

uint64_t sub_1B4A2E214(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  sub_1B4D18E8C();
  a4(v9, v6);
  MEMORY[0x1B8C7D290](v7);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A2E274(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1B4A23068(*a1, *a2) & (v2 == v3);
}

uint64_t WorkoutWeeklyCountStatisticsProperty.hashValue.getter()
{
  sub_1B4D18E8C();
  _s19FitnessIntelligence36WorkoutWeeklyCountStatisticsPropertyV4hash4intoys6HasherVz_tF_0(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A2E3BC()
{
  sub_1B4D18E8C();
  _s19FitnessIntelligence36WorkoutWeeklyCountStatisticsPropertyV4hash4intoys6HasherVz_tF_0(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A2E400(uint64_t a1)
{
  sub_1B4D18E8C();
  _s19FitnessIntelligence36WorkoutWeeklyCountStatisticsPropertyV4hash4intoys6HasherVz_tF_0(v2);
  return sub_1B4D18EDC();
}

unint64_t sub_1B4A2E444()
{
  result = qword_1EB8A8298;
  if (!qword_1EB8A8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8298);
  }

  return result;
}

unint64_t sub_1B4A2E498(uint64_t a1)
{
  result = sub_1B4A2E4C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2E4C0()
{
  result = qword_1EDC38E70;
  if (!qword_1EDC38E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38E70);
  }

  return result;
}

unint64_t sub_1B4A2E518()
{
  result = qword_1EDC379B0;
  if (!qword_1EDC379B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC379B0);
  }

  return result;
}

uint64_t sub_1B4A2E56C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B4A2E5B4(uint64_t a1)
{
  result = sub_1B4A2E5DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2E5DC()
{
  result = qword_1EDC38E88[0];
  if (!qword_1EDC38E88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC38E88);
  }

  return result;
}

unint64_t sub_1B4A2E634()
{
  result = qword_1EDC38E80;
  if (!qword_1EDC38E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38E80);
  }

  return result;
}

unint64_t sub_1B4A2E6CC(uint64_t a1)
{
  result = sub_1B4A2E6F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2E6F4()
{
  result = qword_1EDC395B0;
  if (!qword_1EDC395B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC395B0);
  }

  return result;
}

unint64_t sub_1B4A2E78C(uint64_t a1)
{
  result = sub_1B4A2E7B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2E7B4()
{
  result = qword_1EDC395C8;
  if (!qword_1EDC395C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC395C8);
  }

  return result;
}

unint64_t sub_1B4A2E80C()
{
  result = qword_1EDC395C0;
  if (!qword_1EDC395C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC395C0);
  }

  return result;
}

unint64_t sub_1B4A2E860(uint64_t a1)
{
  result = sub_1B4A2E888();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2E888()
{
  result = qword_1EDC39108;
  if (!qword_1EDC39108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39108);
  }

  return result;
}

unint64_t sub_1B4A2E8DC(uint64_t a1)
{
  result = sub_1B4A2E904();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2E904()
{
  result = qword_1EDC39120;
  if (!qword_1EDC39120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39120);
  }

  return result;
}

unint64_t sub_1B4A2E95C()
{
  result = qword_1EDC39118;
  if (!qword_1EDC39118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39118);
  }

  return result;
}

unint64_t sub_1B4A2E9B0(uint64_t a1)
{
  result = sub_1B4A2E9D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2E9D8()
{
  result = qword_1EDC38DA0;
  if (!qword_1EDC38DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38DA0);
  }

  return result;
}

unint64_t sub_1B4A2EA2C(uint64_t a1)
{
  result = sub_1B4A2EA54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2EA54()
{
  result = qword_1EDC38DB8[0];
  if (!qword_1EDC38DB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC38DB8);
  }

  return result;
}

unint64_t sub_1B4A2EAAC()
{
  result = qword_1EDC38DB0;
  if (!qword_1EDC38DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38DB0);
  }

  return result;
}

unint64_t sub_1B4A2EB44(uint64_t a1)
{
  result = sub_1B4A2EB6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2EB6C()
{
  result = qword_1EDC38BD0;
  if (!qword_1EDC38BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38BD0);
  }

  return result;
}

unint64_t sub_1B4A2EC04(uint64_t a1)
{
  result = sub_1B4A2EC2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2EC2C()
{
  result = qword_1EDC38BE8[0];
  if (!qword_1EDC38BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC38BE8);
  }

  return result;
}

unint64_t sub_1B4A2EC84()
{
  result = qword_1EDC38BE0;
  if (!qword_1EDC38BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38BE0);
  }

  return result;
}

unint64_t sub_1B4A2ED1C(uint64_t a1)
{
  result = sub_1B4A2ED44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2ED44()
{
  result = qword_1EDC38F40;
  if (!qword_1EDC38F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38F40);
  }

  return result;
}

unint64_t sub_1B4A2EDDC(uint64_t a1)
{
  result = sub_1B4A2EE04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2EE04()
{
  result = qword_1EDC38F58;
  if (!qword_1EDC38F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38F58);
  }

  return result;
}

unint64_t sub_1B4A2EE5C()
{
  result = qword_1EDC38F50;
  if (!qword_1EDC38F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38F50);
  }

  return result;
}

uint64_t sub_1B4A2EEB0(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC38010, type metadata accessor for WorkoutDistanceStatisticsProperty, &protocol conformance descriptor for WorkoutDistanceStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2EF28(uint64_t a1)
{
  result = sub_1B4A2E56C(qword_1EDC38020, type metadata accessor for WorkoutDistanceStatisticsProperty, &protocol conformance descriptor for WorkoutDistanceStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F00C(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC392A8, type metadata accessor for PaceStatisticsProperty, &protocol conformance descriptor for PaceStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F0C8(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC392C0, type metadata accessor for PaceStatisticsProperty, &protocol conformance descriptor for PaceStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F168(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC38268, type metadata accessor for ElevationGainStatisticsProperty, &protocol conformance descriptor for ElevationGainStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F1E0(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC38280, type metadata accessor for ElevationGainStatisticsProperty, &protocol conformance descriptor for ElevationGainStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F2C4(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC37E88, type metadata accessor for AverageHeartRateStatisticsProperty, &protocol conformance descriptor for AverageHeartRateStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F380(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC37EA0, type metadata accessor for AverageHeartRateStatisticsProperty, &protocol conformance descriptor for AverageHeartRateStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F420(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC38A60, type metadata accessor for DiveDepthStatisticsProperty, &protocol conformance descriptor for DiveDepthStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F498(uint64_t a1)
{
  result = sub_1B4A2E56C(qword_1EDC38A78, type metadata accessor for DiveDepthStatisticsProperty, &protocol conformance descriptor for DiveDepthStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F57C(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC380C0, type metadata accessor for WorkoutCaloriesStatisticsProperty, &protocol conformance descriptor for WorkoutCaloriesStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F638(uint64_t a1)
{
  result = sub_1B4A2E56C(qword_1EDC380D0, type metadata accessor for WorkoutCaloriesStatisticsProperty, &protocol conformance descriptor for WorkoutCaloriesStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F71C(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC37F60, type metadata accessor for WorkoutDurationStatisticsProperty, &protocol conformance descriptor for WorkoutDurationStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F7D8(uint64_t a1)
{
  result = sub_1B4A2E56C(qword_1EDC37F70, type metadata accessor for WorkoutDurationStatisticsProperty, &protocol conformance descriptor for WorkoutDurationStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F8BC(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC37C90, type metadata accessor for WeatherTemperatureStatisticsProperty, &protocol conformance descriptor for WeatherTemperatureStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A2F978(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC37CA8, type metadata accessor for WeatherTemperatureStatisticsProperty, &protocol conformance descriptor for WeatherTemperatureStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2FA1C()
{
  result = qword_1EB8A8348;
  if (!qword_1EB8A8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8348);
  }

  return result;
}

unint64_t sub_1B4A2FA70(uint64_t a1)
{
  result = sub_1B4A2FA98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2FA98()
{
  result = qword_1EDC38CC8;
  if (!qword_1EDC38CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CC8);
  }

  return result;
}

unint64_t sub_1B4A2FAF0()
{
  result = qword_1EDC38558;
  if (!qword_1EDC38558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38558);
  }

  return result;
}

unint64_t sub_1B4A2FB44(uint64_t a1)
{
  result = sub_1B4A2FB6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2FB6C()
{
  result = qword_1EDC38CD8;
  if (!qword_1EDC38CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CD8);
  }

  return result;
}

unint64_t sub_1B4A2FBC4()
{
  result = qword_1EDC38CD0;
  if (!qword_1EDC38CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CD0);
  }

  return result;
}

unint64_t sub_1B4A2FC1C()
{
  result = qword_1EB8A8350;
  if (!qword_1EB8A8350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8350);
  }

  return result;
}

unint64_t sub_1B4A2FC70(uint64_t a1)
{
  result = sub_1B4A2FC98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2FC98()
{
  result = qword_1EDC37AA0;
  if (!qword_1EDC37AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37AA0);
  }

  return result;
}

unint64_t sub_1B4A2FCF0()
{
  result = qword_1EDC379A8;
  if (!qword_1EDC379A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC379A8);
  }

  return result;
}

unint64_t sub_1B4A2FD44(uint64_t a1)
{
  result = sub_1B4A2FD6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2FD6C()
{
  result = qword_1EDC37AB0;
  if (!qword_1EDC37AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37AB0);
  }

  return result;
}

unint64_t sub_1B4A2FDC4()
{
  result = qword_1EDC37AA8;
  if (!qword_1EDC37AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37AA8);
  }

  return result;
}

unint64_t sub_1B4A2FE1C()
{
  result = qword_1EB8A8358;
  if (!qword_1EB8A8358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8358);
  }

  return result;
}

unint64_t sub_1B4A2FE70(uint64_t a1)
{
  result = sub_1B4A2FE98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2FE98()
{
  result = qword_1EDC37A60;
  if (!qword_1EDC37A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37A60);
  }

  return result;
}

unint64_t sub_1B4A2FEF0(uint64_t a1)
{
  result = sub_1B4A2FF18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A2FF18()
{
  result = qword_1EDC37A70;
  if (!qword_1EDC37A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37A70);
  }

  return result;
}

unint64_t sub_1B4A2FF70()
{
  result = qword_1EDC37A68;
  if (!qword_1EDC37A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37A68);
  }

  return result;
}

uint64_t sub_1B4A30008(uint64_t a1)
{
  result = sub_1B4A2E56C(&qword_1EDC37BE8, type metadata accessor for WorkoutWeeklyCountStatisticsProperty, &protocol conformance descriptor for WorkoutWeeklyCountStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4A300C4(uint64_t a1)
{
  result = sub_1B4A2E56C(qword_1EDC37BF8, type metadata accessor for WorkoutWeeklyCountStatisticsProperty, &protocol conformance descriptor for WorkoutWeeklyCountStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

void sub_1B4A3025C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B4A30340(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    v6 = sub_1B498AFB8(255, a3, a4);
    v9 = type metadata accessor for StatisticsPropertyValue(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B4A30568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4A306AC(uint64_t a1)
{
  sub_1B4D173DC();
  swift_allocObject();
  sub_1B4D173CC();
  v1 = sub_1B4D173BC();

  return v1;
}

uint64_t sub_1B4A30740@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a4@<X8>)
{
  sub_1B4D173AC();
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B4D1738C();
  sub_1B49DDD2C(a1, a2);

  if (!v4)
  {
    *a4 = v9;
    a4[1] = v10;
  }

  return result;
}

unint64_t sub_1B4A30800(uint64_t a1)
{
  result = sub_1B4A30828();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A30828()
{
  result = qword_1EB8A8380;
  if (!qword_1EB8A8380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8380);
  }

  return result;
}

uint64_t WorkoutDetailFact.TemplateString.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  v6 = 8;
  if (v4 < 8)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t WorkoutDetailFact.TemplateString.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD00000000000004DLL;
  if (v1 != 6)
  {
    v2 = 0xD00000000000005BLL;
  }

  v3 = 0xD00000000000004FLL;
  if (v1 == 4)
  {
    v3 = 0xD000000000000041;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000051;
  if (v1 != 2)
  {
    v4 = 0xD00000000000005FLL;
  }

  v5 = 0xD000000000000053;
  if (!*v0)
  {
    v5 = 0xD000000000000045;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

const char *sub_1B4A309FC@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "d_date_and_time> in <location>.";
  v4 = 0xD00000000000004DLL;
  if (v2 != 6)
  {
    v4 = 0xD00000000000005BLL;
    v3 = "d_date_and_time> with <goal>.";
  }

  v5 = "ime> in <location> with <goal>.";
  v6 = 0xD00000000000004FLL;
  if (v2 == 4)
  {
    v6 = 0xD000000000000041;
  }

  else
  {
    v5 = "d_date_and_time>.";
  }

  if (*v1 <= 5u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = "ime> in <location>.";
  v8 = 0xD000000000000051;
  if (v2 != 2)
  {
    v8 = 0xD00000000000005FLL;
  }

  result = "I am starting a <activity_type> workout now on <start_date_and_time> in <location>.";
  if (v2 != 2)
  {
    v7 = "ime> with <goal>.";
  }

  v10 = 0xD000000000000053;
  if (*v1)
  {
    v11 = "start_date_and_time>.";
  }

  else
  {
    v10 = 0xD000000000000045;
    v11 = "poolSwimDistanceWithTime";
  }

  if (*v1 > 1u)
  {
    v10 = v8;
    v11 = v7;
  }

  if (*v1 <= 3u)
  {
    v12 = v11;
  }

  else
  {
    v10 = v4;
    v12 = v3;
  }

  *a1 = v10;
  a1[1] = v12 | 0x8000000000000000;
  return result;
}

uint64_t WorkoutDetailFact.placeholders()()
{
  v1 = type metadata accessor for WorkoutDetailFact(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1CBF0;
  v5 = [*v0 localizedName];
  v6 = sub_1B4D1818C();
  v8 = v7;

  strcpy((v4 + 32), "activity_type");
  *(v4 + 46) = -4864;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v4 + 48) = sub_1B4993DFC;
  *(v4 + 56) = v9;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  sub_1B4A3123C(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = swift_allocObject();
  sub_1B4A312A0(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *(v4 + 80) = 0xD000000000000013;
  *(v4 + 88) = 0x80000001B4D5FAB0;
  *(v4 + 96) = sub_1B4A31304;
  *(v4 + 104) = v11;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_1B4A3123C(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_1B4A312A0(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  *(v4 + 128) = 0xD000000000000011;
  *(v4 + 136) = 0x80000001B4D5FAD0;
  *(v4 + 144) = sub_1B4A3131C;
  *(v4 + 152) = v12;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  v14 = *(v0 + 8);
  v13 = *(v0 + 16);
  *(v4 + 176) = 0x6E6F697461636F6CLL;
  *(v4 + 184) = 0xE800000000000000;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  *(v4 + 192) = sub_1B4994004;
  *(v4 + 200) = v15;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  sub_1B4A3123C(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  sub_1B4A312A0(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v10);
  *(v4 + 224) = 1818324839;
  *(v4 + 232) = 0xE400000000000000;
  *(v4 + 240) = sub_1B4A31558;
  *(v4 + 248) = v16;
  *(v4 + 256) = 0;
  *(v4 + 264) = 0;

  return v4;
}

uint64_t sub_1B4A30DD4(uint64_t a1)
{
  type metadata accessor for WorkoutDetailFact(0);
  v2 = sub_1B4D11F8C();
  [v2 setDateStyle_];

  v3 = OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter;
  [*(a1 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter) setTimeStyle_];
  v4 = *(a1 + v3);
  v5 = sub_1B4D1771C();
  v6 = [v4 stringFromDate_];

  v7 = sub_1B4D1818C();
  return v7;
}

uint64_t sub_1B4A30EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1B4D1777C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WorkoutDetailFact(0);
  sub_1B4A315C4(a2 + *(v11 + 28), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B497A590(v6);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = sub_1B4D11F8C();
    [v13 setDateStyle_];

    v14 = OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter;
    [*(a1 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter) setTimeStyle_];
    v15 = *(a1 + v14);
    v16 = sub_1B4D1771C();
    v17 = [v15 stringFromDate_];

    v18 = sub_1B4D1818C();
    (*(v8 + 8))(v10, v7);
    return v18;
  }
}

uint64_t WorkoutDetailFact.selectTemplate(formatter:)@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for WorkoutDetailFact(0);
  sub_1B4D1491C(v1 + *(v7 + 32));
  v9 = v8;
  sub_1B4A315C4(v2 + *(v7 + 28), v6);
  v10 = sub_1B4D1777C();
  v11 = (*(*(v10 - 8) + 48))(v6, 1, v10);
  result = sub_1B497A590(v6);
  if (!*(v2 + 16))
  {
    if (v11 == 1)
    {
      v13 = 2;
    }

    else
    {
      v13 = 6;
    }

    if (!v9)
    {
      v13 = 4 * (v11 != 1);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v11 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 5;
  }

  if (v11 == 1)
  {
    v14 = 3;
  }

  else
  {
    v14 = 7;
  }

  if (v9)
  {
    v13 = v14;
LABEL_14:
  }

LABEL_15:
  *a1 = v13;
  return result;
}

uint64_t sub_1B4A3123C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4A312A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetailFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4A31334(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorkoutDetailFact(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_3Tm()
{
  v1 = type metadata accessor for WorkoutDetailFact(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v1[6];
  v6 = sub_1B4D1777C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v1[7];
  if (!(*(v7 + 48))(v0 + v3 + v9, 1, v6))
  {
    v8(v4 + v9, v6);
  }

  v10 = v1[8];
  v11 = sub_1B4D179EC();
  (*(*(v11 - 8) + 8))(v4 + v10, v11);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v13, v2 | 7);
}

uint64_t sub_1B4A315C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4A31638()
{
  result = qword_1EB8A8388;
  if (!qword_1EB8A8388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8388);
  }

  return result;
}

unint64_t sub_1B4A31690()
{
  result = qword_1EB8A8390;
  if (!qword_1EB8A8390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A8398, &qword_1B4D22018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8390);
  }

  return result;
}

unint64_t sub_1B4A316F8()
{
  result = qword_1EB8A83A0;
  if (!qword_1EB8A83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A83A0);
  }

  return result;
}

unint64_t sub_1B4A31750()
{
  result = qword_1EB8A83A8;
  if (!qword_1EB8A83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A83A8);
  }

  return result;
}

unint64_t sub_1B4A317A4(uint64_t a1)
{
  result = sub_1B4A317CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A317CC()
{
  result = qword_1EB8A83B0;
  if (!qword_1EB8A83B0)
  {
    type metadata accessor for WorkoutDetailFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A83B0);
  }

  return result;
}

uint64_t InferenceFeedback.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A83B8, &qword_1B4D22420);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v53 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for InferenceRecord(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v63 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = a1[1];

  v23 = sub_1B4D18B1C();

  v57 = v23;
  if (v23 >= 3)
  {
    sub_1B4A32760();
    swift_allocError();
    *v29 = v21;
    v29[1] = v22;
    swift_willThrow();

    return sub_1B4A329C0(a1, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);
  }

  v54 = v11;
  v24 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  sub_1B4974FBC(a1 + v24[6], v14, &qword_1EB8A83B8, &qword_1B4D22420);
  v25 = *(v16 + 48);
  if (v25(v14, 1, v15) == 1)
  {
    sub_1B4D17BBC();
    v26 = *(v15 + 20);
    if (qword_1EB8A6038 != -1)
    {
      swift_once();
    }

    *&v18[v26] = qword_1EB8A8440;
    v27 = v25(v14, 1, v15);

    v28 = v62;
    if (v27 != 1)
    {
      sub_1B4975024(v14, &qword_1EB8A83B8, &qword_1B4D22420);
    }
  }

  else
  {
    sub_1B4A32910(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
    v28 = v62;
  }

  v30 = v61;
  InferenceRecord.init(_:)(v18, v63);
  if (v30)
  {
    return sub_1B4A329C0(a1, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);
  }

  v32 = v24[8];
  v33 = (a1 + v24[7]);
  v34 = v33[1];
  v61 = *v33;
  v35 = v58;
  sub_1B4974FBC(a1 + v32, v58, &qword_1EB8A6940, &unk_1B4D22400);
  v36 = v60;
  v59 = *(v59 + 48);
  v37 = (v59)(v35, 1, v60);
  v62 = v34;

  sub_1B4975024(v35, &qword_1EB8A6940, &unk_1B4D22400);
  if (v37 == 1)
  {
    v38 = v63;
    v39 = v54;
    v40 = 1;
  }

  else
  {
    v41 = v55;
    sub_1B4974FBC(a1 + v32, v55, &qword_1EB8A6940, &unk_1B4D22400);
    v42 = v59;
    if ((v59)(v41, 1, v36) == 1)
    {
      v43 = v56;
      sub_1B4D17BBC();
      v44 = v43 + v36[5];
      *v44 = 0;
      *(v44 + 8) = 1;
      v45 = v43 + v36[6];
      *v45 = 0;
      *(v45 + 8) = 1;
      v46 = (v43 + v36[7]);
      *v46 = 0;
      v46[1] = 0;
      *(v43 + v36[8]) = 2;
      v47 = (v43 + v36[9]);
      *v47 = 0;
      v47[1] = 0;
      v48 = v43 + v36[10];
      *v48 = 0;
      *(v48 + 8) = 1;
      if (v42(v41, 1, v36) != 1)
      {
        sub_1B4975024(v41, &qword_1EB8A6940, &unk_1B4D22400);
      }
    }

    else
    {
      v43 = v56;
      sub_1B4A32910(v41, v56, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
    }

    v39 = v54;
    AnnounceUtteranceResult.init(_:)(v43, v54);
    v40 = 0;
    v38 = v63;
  }

  sub_1B4A329C0(a1, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);
  v49 = type metadata accessor for AnnounceUtteranceResult(0);
  (*(*(v49 - 8) + 56))(v39, v40, 1, v49);
  sub_1B4A32910(v38, v28, type metadata accessor for InferenceRecord);
  v50 = type metadata accessor for InferenceFeedback(0);
  *(v28 + v50[5]) = v57;
  v51 = (v28 + v50[6]);
  v52 = v62;
  *v51 = v61;
  v51[1] = v52;
  return sub_1B498C368(v39, v28 + v50[7]);
}

uint64_t InferenceFeedback.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  sub_1B4A32978(&qword_1EB8A83C8, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceFeedback);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A31FC8(uint64_t *a1, uint64_t a2)
{
  v44 = a1;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v43 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for AnnounceUtteranceResult(0);
  v46 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  v47 = a2;
  sub_1B4A32978(&qword_1EB8A83E0, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRecord);
  v16 = v48;
  result = sub_1B4D17DAC();
  if (!v16)
  {
    v39 = v9;
    v40 = v8;
    v41 = v11;
    v42 = 0;
    v38 = v5;
    v48 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
    v18 = v48[6];
    v19 = v44;
    sub_1B4975024(v44 + v18, &qword_1EB8A83B8, &qword_1B4D22420);
    sub_1B4A32910(v15, v19 + v18, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
    v20 = v19;
    (*(v13 + 56))(v19 + v18, 0, 1, v12);
    v21 = type metadata accessor for InferenceFeedback(0);
    v22 = v45;
    if (*(v45 + v21[5]))
    {
      v23 = v3;
      v24 = v41;
      v25 = v39;
      if (*(v45 + v21[5]) == 1)
      {
        v26 = 0xE800000000000000;
        v27 = 0x657669746167656ELL;
      }

      else
      {
        v26 = 0xE500000000000000;
        v27 = 0x726568746FLL;
      }
    }

    else
    {
      v26 = 0xE800000000000000;
      v27 = 0x6576697469736F70;
      v23 = v3;
      v24 = v41;
      v25 = v39;
    }

    *v20 = v27;
    v20[1] = v26;
    v28 = (v22 + v21[6]);
    v29 = v28[1];
    if (v29)
    {
      v30 = *v28;
      v31 = (v20 + v48[7]);

      *v31 = v30;
      v31[1] = v29;
      v23 = v3;
    }

    v32 = v22 + v21[7];
    v33 = v40;
    sub_1B4974FBC(v32, v40, &qword_1EB8A6948, qword_1B4D1E1C0);
    if ((*(v46 + 48))(v33, 1, v25) == 1)
    {
      return sub_1B4975024(v33, &qword_1EB8A6948, qword_1B4D1E1C0);
    }

    else
    {
      v34 = sub_1B4A32910(v33, v24, type metadata accessor for AnnounceUtteranceResult);
      MEMORY[0x1EEE9AC00](v34);
      *(&v37 - 2) = v24;
      sub_1B4A32978(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
      v35 = v38;
      sub_1B4D17DAC();
      v36 = v48[8];
      sub_1B4975024(v20 + v36, &qword_1EB8A6940, &unk_1B4D22400);
      sub_1B4A32910(v35, v20 + v36, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
      (*(v43 + 56))(v20 + v36, 0, 1, v23);
      return sub_1B4A329C0(v24, type metadata accessor for AnnounceUtteranceResult);
    }
  }

  return result;
}

uint64_t sub_1B4A32520(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4A32978(&qword_1EB8A83D8, type metadata accessor for InferenceFeedback, &protocol conformance descriptor for InferenceFeedback);
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4A32978(&qword_1EB8A83C8, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceFeedback);
    v1 = sub_1B4D17D6C();
    sub_1B4A329C0(v6, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);
  }

  return v1;
}

uint64_t sub_1B4A326A0()
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  sub_1B4A32978(&qword_1EB8A83C8, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceFeedback);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4A32760()
{
  result = qword_1EB8A83C0;
  if (!qword_1EB8A83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A83C0);
  }

  return result;
}

uint64_t sub_1B4A32860(uint64_t a1, int a2)
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

uint64_t sub_1B4A328A8(uint64_t result, int a2, int a3)
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

uint64_t sub_1B4A32910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A32978(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4A329C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

FitnessIntelligence::MilestoneFactType_optional __swiftcall MilestoneFactType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B4A32A58()
{
  result = qword_1EB8A83E8;
  if (!qword_1EB8A83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A83E8);
  }

  return result;
}