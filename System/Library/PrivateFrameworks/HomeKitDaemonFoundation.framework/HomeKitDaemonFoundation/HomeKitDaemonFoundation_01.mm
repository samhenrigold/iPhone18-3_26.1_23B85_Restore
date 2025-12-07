uint64_t _s23HomeKitDaemonFoundation3MTRO7ClusterO10ThermostatO35ApplePredictedSuggestedPresetStructV9hashValueSivg_0()
{
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DB434();
  return sub_2531DB454();
}

uint64_t sub_25317C2C8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v19 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2531DB4B4();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v18;
  v12 = v19;
  v22 = 0;
  sub_253175240();
  sub_2531DAE14();
  v15 = v20;
  v14 = v21;
  v22 = 1;
  sub_2531757D4();
  sub_2531DAE14();
  (*(v13 + 8))(v11, v9);
  v16 = v20;
  *v12 = v15;
  *(v12 + 8) = v14;
  *(v12 + 16) = v16;
  sub_25316D050(v15, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25316D308(v15, v14);
}

uint64_t sub_25317C4F4(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DB434();
  return sub_2531DB454();
}

uint64_t MTR.Cluster.Thermostat.AppleActivePresetChangedEventStruct.presetHandle.getter()
{
  v1 = *(v0 + 8);
  sub_25316D050(v1, *(v0 + 16));
  return v1;
}

uint64_t MTR.Cluster.Thermostat.AppleActivePresetChangedEventStruct.presetHandle.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25316D308(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MTR.Cluster.Thermostat.AppleActivePresetChangedEventStruct.coolingSetpoint.setter(uint64_t result)
{
  *(v1 + 26) = result;
  *(v1 + 28) = BYTE2(result) & 1;
  return result;
}

uint64_t MTR.Cluster.Thermostat.AppleActivePresetChangedEventStruct.heatingSetpoint.setter(uint64_t result)
{
  *(v1 + 30) = result;
  *(v1 + 32) = BYTE2(result) & 1;
  return result;
}

unint64_t sub_25317C71C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2531675C4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_25317C748()
{
  v1 = *v0;
  v2 = 0x6148746573657270;
  v3 = 0x53676E696C6F6F63;
  v4 = 0x53676E6974616568;
  if (v1 != 4)
  {
    v4 = 0x6F4D6D6574737973;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6353746573657270;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000019;
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

uint64_t sub_25317C838@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2531806C4(a2, a3);
  *a1 = result;
  return result;
}

unint64_t sub_25317C860@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2531675C4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_25317C888(uint64_t a1)
{
  v2 = sub_25317E774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25317C8C4(uint64_t a1)
{
  v2 = sub_25317E774();

  return MEMORY[0x2821FE720](a1, v2);
}

_BYTE *MTR.Cluster.Thermostat.AppleActivePresetChangedEventStruct.init(activePresetChangedReason:presetHandle:presetScenario:coolingSetpoint:heatingSetpoint:systemMode:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, int a5@<W4>, int a6@<W5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a4;
  v9 = *a7;
  *a8 = *result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = v8;
  *(a8 + 26) = a5;
  *(a8 + 28) = BYTE2(a5) & 1;
  *(a8 + 30) = a6;
  *(a8 + 32) = BYTE2(a6) & 1;
  *(a8 + 33) = v9;
  return result;
}

void *MTR.Cluster.Thermostat.AppleActivePresetChangedEventStruct.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2531DA6D4();
  if (!*(a1 + 16))
  {

    goto LABEL_7;
  }

  v7 = sub_25317D998(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_25317E5F0(*(a1 + 56) + 32 * v7, &v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v15 = objc_opt_self();
    v16 = sub_2531DA6C4();
    [v15 hmfErrorWithCode:3 reason:v16];

    return swift_willThrow();
  }

  result = MTR.Value.init(from:)(v19, &v20);
  if (!v2)
  {
    v11 = v20;
    v12 = v21;
    v13 = v22;
    sub_253172EC0(v20, v21, v22, MEMORY[0x277D84F98], v17);
    result = sub_25316D2BC(v11, v12, v13);
    v14 = v17[1];
    *a2 = v17[0];
    *(a2 + 16) = v14;
    *(a2 + 32) = v18;
  }

  return result;
}

uint64_t MTR.Cluster.Thermostat.AppleActivePresetChangedEventStruct.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD00000000000003FLL, 0x80000002531DC2C0);
  v3 = sub_2531DA6F4();
  MEMORY[0x259BFE570](v3);

  MEMORY[0x259BFE570](0xD000000000000012, 0x80000002531DC300);
  sub_253172B50(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D458, &qword_2531E2A28);
  sub_25317EB04(&qword_27F58D460, &qword_27F58D458, &qword_2531E2A28, MEMORY[0x277D83958]);
  v4 = sub_2531DA6A4();
  v6 = v5;

  MEMORY[0x259BFE570](v4, v6);

  MEMORY[0x259BFE570](0xD000000000000012, 0x80000002531DBFE0);
  v7 = sub_2531DA6F4();
  MEMORY[0x259BFE570](v7);

  MEMORY[0x259BFE570](0xD000000000000013, 0x80000002531DC320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D470, &qword_2531E2A38);
  v8 = sub_2531DA6F4();
  MEMORY[0x259BFE570](v8);

  MEMORY[0x259BFE570](0xD000000000000014, 0x80000002531DC340);
  v9 = sub_2531DA6F4();
  MEMORY[0x259BFE570](v9);

  MEMORY[0x259BFE570](0x6D6574737973202CLL, 0xEE00203A65646F4DLL);
  v10 = sub_2531DA6F4();
  MEMORY[0x259BFE570](v10);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0;
}

uint64_t MTR.Cluster.Thermostat.AppleActivePresetChangedEventStruct.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D540, &qword_2531E2AB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = *v1;
  v8 = *(v1 + 2);
  v19 = *(v1 + 1);
  v23 = v1[24];
  v9 = *(v1 + 13);
  v17 = v1[28];
  v18 = v9;
  LODWORD(v5) = v1[32];
  v15 = *(v1 + 15);
  v16 = v5;
  v14 = v1[33];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25317E774();
  sub_2531DB4D4();
  LOBYTE(v21) = v7;
  v24 = 0;
  sub_25317E7C8();
  v10 = v20;
  sub_2531DAED4();
  if (!v10)
  {
    v11 = v23;
    v21 = v19;
    v22 = v8;
    v24 = 1;
    sub_25316D050(v19, v8);
    sub_25317E240();
    sub_2531DAED4();
    sub_25316D308(v21, v22);
    LOBYTE(v21) = v11;
    v24 = 2;
    sub_2531779C8();
    sub_2531DAED4();
    LOBYTE(v21) = 3;
    sub_2531DAEA4();
    LOBYTE(v21) = 4;
    sub_2531DAEA4();
    LOBYTE(v21) = v14;
    v24 = 5;
    sub_25317E3A4();
    sub_2531DAED4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MTR.Cluster.Thermostat.AppleActivePresetChangedEventStruct.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 28);
  v3 = *(v1 + 32);
  sub_2531DB414();
  sub_2531DA164();
  sub_2531DB414();
  if (v2 != 1)
  {
    sub_2531DB414();
    sub_2531DB424();
    if (!v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2531DB414();
    return sub_2531DB414();
  }

  sub_2531DB414();
  if (v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2531DB414();
  sub_2531DB424();
  return sub_2531DB414();
}

uint64_t MTR.Cluster.Thermostat.AppleActivePresetChangedEventStruct.hashValue.getter()
{
  sub_2531DB3F4();
  MTR.Cluster.Thermostat.AppleActivePresetChangedEventStruct.hash(into:)(v1);
  return sub_2531DB454();
}

uint64_t MTR.Cluster.Thermostat.AppleActivePresetChangedEventStruct.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D558, &qword_2531E2AC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25317E774();
  sub_2531DB4B4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v26) = 0;
  sub_25317E81C();
  sub_2531DAE14();
  v9 = v29;
  LOBYTE(v26) = 1;
  sub_253175240();
  sub_2531DAE14();
  v24 = v29;
  v25 = v30;
  LOBYTE(v26) = 2;
  sub_253177E84();
  sub_2531DAE14();
  v10 = v29;
  LOBYTE(v29) = 3;
  v22 = sub_2531DADE4();
  v23 = v10;
  v39 = BYTE2(v22) & 1;
  LOBYTE(v29) = 4;
  v21 = sub_2531DADE4();
  v38 = BYTE2(v21) & 1;
  v40 = 5;
  sub_25317E3F8();
  sub_2531DAE14();
  (*(v6 + 8))(v8, v5);
  LOBYTE(v26) = v9;
  v11 = v24;
  v12 = v25;
  *(&v26 + 1) = v24;
  *&v27 = v25;
  v13 = v22;
  BYTE8(v27) = v23;
  WORD5(v27) = v22;
  v19 = v41;
  v20 = v39;
  BYTE12(v27) = v39;
  v14 = v21;
  HIWORD(v27) = v21;
  v15 = v38;
  LOBYTE(v28) = v38;
  HIBYTE(v28) = v41;
  v16 = v27;
  *a2 = v26;
  *(a2 + 16) = v16;
  *(a2 + 32) = v28;
  sub_25317E870(&v26, &v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v29) = v9;
  v30 = v11;
  v31 = v12;
  v32 = v23;
  v33 = v13;
  v34 = v20;
  v35 = v14;
  v36 = v15;
  v37 = v19;
  return sub_25317E8A8(&v29);
}

uint64_t sub_25317D550()
{
  sub_2531DB3F4();
  MTR.Cluster.Thermostat.AppleActivePresetChangedEventStruct.hash(into:)(v1);
  return sub_2531DB454();
}

uint64_t sub_25317D594(uint64_t a1)
{
  sub_2531DB3F4();
  MTR.Cluster.Thermostat.AppleActivePresetChangedEventStruct.hash(into:)(v2);
  return sub_2531DB454();
}

uint64_t sub_25317D5D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
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
    v10 = sub_2531DA044();
    if (v10)
    {
      v11 = sub_2531DA074();
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
      result = sub_2531DA064();
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
  v10 = sub_2531DA044();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2531DA074();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2531DA064();
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

uint64_t sub_25317D808(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_25317DE38(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_25316D308(a3, a4);
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
  sub_25317D5D8(v13, a3, a4, &v12);
  v10 = v4;
  sub_25316D308(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_25317D998(uint64_t a1, uint64_t a2)
{
  sub_2531DB3F4();
  sub_2531DA734();
  v4 = sub_2531DB454();

  return sub_25317DB28(a1, a2, v4);
}

unint64_t sub_25317DA10(uint64_t a1, char a2)
{
  sub_2531DB3F4();
  v4 = __ROR8__(a1, 32);
  if (a2)
  {
    v5 = a1;
  }

  else
  {
    v5 = v4;
  }

  MEMORY[0x259BFF270](v5);
  v6 = sub_2531DB454();

  return sub_25317DBE0(a1, a2 & 1, v6);
}

unint64_t sub_25317DA90(uint64_t a1)
{
  sub_2531DA204();
  sub_253180A40(&qword_27F58D708, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_2531DA684();

  return sub_25317DC78(a1, v2);
}

unint64_t sub_25317DB28(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2531DB144())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25317DBE0(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    v8 = __ROR8__(a1, 32);
    a1 = a1;
    if ((a2 & 1) == 0)
    {
      a1 = v8;
    }

    do
    {
      v9 = *(v3 + 48) + 12 * result;
      v10 = __ROR8__(*v9, 32);
      if (*(v9 + 8))
      {
        v11 = *v9;
      }

      else
      {
        v11 = v10;
      }

      if (v11 == a1)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25317DC78(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2531DA204();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_253180A40(&qword_27F58D710, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_2531DA6B4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_25317DE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2531DA044();
  v11 = result;
  if (result)
  {
    result = sub_2531DA074();
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

  sub_2531DA064();
  sub_25317D5D8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_25317DEF0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_25316D050(a3, a4);
          return sub_25317D808(v13, a2, a3, a4) & 1;
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

uint64_t _s23HomeKitDaemonFoundation3MTRO7ClusterO10ThermostatO12PresetStructV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 42);
  v20 = *(a1 + 46);
  v17 = *(a1 + 44);
  v18 = *(a1 + 47);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 42);
  v16 = *(a2 + 44);
  v19 = *(a2 + 46);
  v21 = *(a2 + 47);
  if (!sub_25317DEF0(*a1, *(a1 + 8), *a2, *(a2 + 8)) || (0xFE060504030201uLL >> (8 * v2)) != (0xFE060504030201uLL >> (8 * v7)))
  {
    return 0;
  }

  if (v4)
  {
    if (!v8 || (v3 != v9 || v4 != v8) && (sub_2531DB144() & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    if (v6)
    {
      if (!v11)
      {
        return 0;
      }
    }

    else
    {
      if (v5 == v10)
      {
        v12 = v11;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        return 0;
      }
    }

    if (v20)
    {
      v13 = v21;
      if (!v19)
      {
        return 0;
      }
    }

    else
    {
      v14 = v19;
      if (v17 != v16)
      {
        v14 = 1;
      }

      v13 = v21;
      if (v14)
      {
        return 0;
      }
    }

    if (v18 == 2)
    {
      if (v13 != 2)
      {
        return 0;
      }
    }

    else if (v13 == 2 || ((v13 ^ v18) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  return 0;
}

unint64_t sub_25317E1EC()
{
  result = qword_27F58D488;
  if (!qword_27F58D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D488);
  }

  return result;
}

unint64_t sub_25317E240()
{
  result = qword_27F58D490;
  if (!qword_27F58D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D490);
  }

  return result;
}

unint64_t sub_25317E2FC()
{
  result = qword_27F58D4A8;
  if (!qword_27F58D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D4A8);
  }

  return result;
}

unint64_t sub_25317E350()
{
  result = qword_27F58D4C0;
  if (!qword_27F58D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D4C0);
  }

  return result;
}

unint64_t sub_25317E3A4()
{
  result = qword_27F58D4C8;
  if (!qword_27F58D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D4C8);
  }

  return result;
}

unint64_t sub_25317E3F8()
{
  result = qword_27F58D4D8;
  if (!qword_27F58D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D4D8);
  }

  return result;
}

unint64_t sub_25317E44C()
{
  result = qword_27F58D4E8;
  if (!qword_27F58D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D4E8);
  }

  return result;
}

unint64_t sub_25317E4A0()
{
  result = qword_27F58D4F8;
  if (!qword_27F58D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D4F8);
  }

  return result;
}

unint64_t sub_25317E4F4()
{
  result = qword_27F58D500;
  if (!qword_27F58D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D500);
  }

  return result;
}

unint64_t sub_25317E548()
{
  result = qword_27F58D518;
  if (!qword_27F58D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D518);
  }

  return result;
}

unint64_t sub_25317E59C()
{
  result = qword_27F58D530;
  if (!qword_27F58D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D530);
  }

  return result;
}

uint64_t sub_25317E5F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

BOOL _s23HomeKitDaemonFoundation3MTRO7ClusterO10ThermostatO35AppleActivePresetChangedEventStructV2eeoiySbAI_AItFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[24];
  v3 = *(a1 + 13);
  v4 = a1[28];
  v5 = *(a1 + 15);
  v6 = a1[32];
  v7 = a2[24];
  v8 = *(a2 + 13);
  v9 = a2[28];
  v10 = *(a2 + 15);
  v11 = a2[32];
  v15 = a2[33];
  v16 = a1[33];
  if (!sub_25317DEF0(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) || (0xFE060504030201uLL >> (8 * v2)) != (0xFE060504030201uLL >> (8 * v7)))
  {
    return 0;
  }

  if (v4)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v8)
    {
      v13 = v9;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v10)
    {
      v14 = v11;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  return byte_2531E48C5[v16] == byte_2531E48C5[v15];
}

unint64_t sub_25317E774()
{
  result = qword_27F58D548;
  if (!qword_27F58D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D548);
  }

  return result;
}

unint64_t sub_25317E7C8()
{
  result = qword_27F58D550;
  if (!qword_27F58D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D550);
  }

  return result;
}

unint64_t sub_25317E81C()
{
  result = qword_27F58D560;
  if (!qword_27F58D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D560);
  }

  return result;
}

unint64_t sub_25317E8DC()
{
  result = qword_27F58D568;
  if (!qword_27F58D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D568);
  }

  return result;
}

unint64_t sub_25317E978()
{
  result = qword_27F58D580;
  if (!qword_27F58D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D580);
  }

  return result;
}

unint64_t sub_25317EA14()
{
  result = qword_27F58D598;
  if (!qword_27F58D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D598);
  }

  return result;
}

unint64_t sub_25317EA6C()
{
  result = qword_27F58D5A0;
  if (!qword_27F58D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D5A0);
  }

  return result;
}

uint64_t sub_25317EB04(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_25317EB50()
{
  result = qword_27F58D5B8;
  if (!qword_27F58D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D5B8);
  }

  return result;
}

unint64_t sub_25317EBA4(uint64_t a1)
{
  result = sub_253177974();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25317EBD0()
{
  result = qword_27F58D5C0;
  if (!qword_27F58D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D5C0);
  }

  return result;
}

unint64_t sub_25317EC28()
{
  result = qword_27F58D5C8;
  if (!qword_27F58D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D5C8);
  }

  return result;
}

unint64_t sub_25317EC80()
{
  result = qword_27F58D5D0;
  if (!qword_27F58D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D5D0);
  }

  return result;
}

unint64_t sub_25317ECD8()
{
  result = qword_27F58D5D8;
  if (!qword_27F58D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D5D8);
  }

  return result;
}

unint64_t sub_25317ED2C(uint64_t a1)
{
  result = sub_25317E1EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25317ED58()
{
  result = qword_27F58D5E0;
  if (!qword_27F58D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D5E0);
  }

  return result;
}

unint64_t sub_25317EDB0()
{
  result = qword_27F58D5E8;
  if (!qword_27F58D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D5E8);
  }

  return result;
}

unint64_t sub_25317EE08()
{
  result = qword_27F58D5F0;
  if (!qword_27F58D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D5F0);
  }

  return result;
}

unint64_t sub_25317EE60()
{
  result = qword_27F58D5F8;
  if (!qword_27F58D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D5F8);
  }

  return result;
}

unint64_t sub_25317EEB4(uint64_t a1)
{
  result = sub_25317E2FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25317EEE0()
{
  result = qword_27F58D600;
  if (!qword_27F58D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D600);
  }

  return result;
}

unint64_t sub_25317EF38()
{
  result = qword_27F58D608;
  if (!qword_27F58D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D608);
  }

  return result;
}

unint64_t sub_25317EF90()
{
  result = qword_27F58D610;
  if (!qword_27F58D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D610);
  }

  return result;
}

unint64_t sub_25317EFE8()
{
  result = qword_27F58D618;
  if (!qword_27F58D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D618);
  }

  return result;
}

unint64_t sub_25317F03C(uint64_t a1)
{
  result = sub_25317E350();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25317F068()
{
  result = qword_27F58D620;
  if (!qword_27F58D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D620);
  }

  return result;
}

unint64_t sub_25317F0C0()
{
  result = qword_27F58D628;
  if (!qword_27F58D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D628);
  }

  return result;
}

unint64_t sub_25317F118()
{
  result = qword_27F58D630;
  if (!qword_27F58D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D630);
  }

  return result;
}

unint64_t sub_25317F170()
{
  result = qword_27F58D638;
  if (!qword_27F58D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D638);
  }

  return result;
}

unint64_t sub_25317F1C4(uint64_t a1)
{
  result = sub_25317F1EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25317F1EC()
{
  result = qword_27F58D640;
  if (!qword_27F58D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D640);
  }

  return result;
}

unint64_t sub_25317F244()
{
  result = qword_27F58D648;
  if (!qword_27F58D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D648);
  }

  return result;
}

unint64_t sub_25317F298(uint64_t a1)
{
  result = sub_25317E4A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25317F2C4()
{
  result = qword_27F58D650;
  if (!qword_27F58D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D650);
  }

  return result;
}

unint64_t sub_25317F31C()
{
  result = qword_27F58D658;
  if (!qword_27F58D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D658);
  }

  return result;
}

unint64_t sub_25317F374()
{
  result = qword_27F58D660;
  if (!qword_27F58D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D660);
  }

  return result;
}

unint64_t sub_25317F3CC()
{
  result = qword_27F58D668;
  if (!qword_27F58D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D668);
  }

  return result;
}

unint64_t sub_25317F420(uint64_t a1)
{
  result = sub_25317E548();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25317F44C()
{
  result = qword_27F58D670;
  if (!qword_27F58D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D670);
  }

  return result;
}

unint64_t sub_25317F4A4()
{
  result = qword_27F58D678;
  if (!qword_27F58D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D678);
  }

  return result;
}

unint64_t sub_25317F4FC()
{
  result = qword_27F58D680;
  if (!qword_27F58D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D680);
  }

  return result;
}

unint64_t sub_25317F550(uint64_t a1)
{
  result = sub_25317F578();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25317F578()
{
  result = qword_27F58D688;
  if (!qword_27F58D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D688);
  }

  return result;
}

unint64_t sub_25317F5D0()
{
  result = qword_27F58D690;
  if (!qword_27F58D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D690);
  }

  return result;
}

unint64_t sub_25317F624(uint64_t a1)
{
  result = sub_25317E59C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25317F650()
{
  result = qword_27F58D698;
  if (!qword_27F58D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D698);
  }

  return result;
}

unint64_t sub_25317F6A8()
{
  result = qword_27F58D6A0;
  if (!qword_27F58D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D6A0);
  }

  return result;
}

unint64_t sub_25317F700()
{
  result = qword_27F58D6A8;
  if (!qword_27F58D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D6A8);
  }

  return result;
}

unint64_t sub_25317F754(uint64_t a1)
{
  result = sub_25317F77C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25317F77C()
{
  result = qword_27F58D6B0;
  if (!qword_27F58D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D6B0);
  }

  return result;
}

unint64_t sub_25317F7D4()
{
  result = qword_27F58D6B8;
  if (!qword_27F58D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D6B8);
  }

  return result;
}

uint64_t _s10ThermostatO14SystemModeEnumOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10ThermostatO14SystemModeEnumOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s10ThermostatO18PresetScenarioEnumOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10ThermostatO18PresetScenarioEnumOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s10ThermostatO16PresetTypeStructVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && a1[4])
  {
    return (*a1 + 250);
  }

  v3 = *a1;
  v4 = v3 >= 7;
  v5 = v3 - 7;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s10ThermostatO16PresetTypeStructVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
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

uint64_t sub_25317FC08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_25317FC64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_2(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s10ThermostatO21AppleHoldPolicyStructVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s10ThermostatO21AppleHoldPolicyStructVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_25317FDC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25317FE18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_25317FED4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 21))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 20);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25317FF28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25317FF80(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_253180010(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2531800D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 20))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_253180124(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t _s10DeviceTypeV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10DeviceTypeV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2531802E8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && a1[34])
  {
    return (*a1 + 251);
  }

  v3 = *a1;
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25318032C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_253180384(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_253180414(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2531804E4(uint64_t a1)
{
  result = sub_25317E774();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_253180510()
{
  result = qword_27F58D6C0;
  if (!qword_27F58D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D6C0);
  }

  return result;
}

unint64_t sub_253180568()
{
  result = qword_27F58D6C8;
  if (!qword_27F58D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D6C8);
  }

  return result;
}

unint64_t sub_2531805C0()
{
  result = qword_27F58D6D0;
  if (!qword_27F58D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D6D0);
  }

  return result;
}

unint64_t sub_253180618()
{
  result = qword_27F58D6D8;
  if (!qword_27F58D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D6D8);
  }

  return result;
}

unint64_t sub_253180670()
{
  result = qword_27F58D6E0;
  if (!qword_27F58D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D6E0);
  }

  return result;
}

uint64_t sub_2531806C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x80000002531DC360 == a2 || (sub_2531DB144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6148746573657270 && a2 == 0xEC000000656C646ELL || (sub_2531DB144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6353746573657270 && a2 == 0xEE006F6972616E65 || (sub_2531DB144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x53676E696C6F6F63 && a2 == 0xEF746E696F707465 || (sub_2531DB144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x53676E6974616568 && a2 == 0xEF746E696F707465 || (sub_2531DB144() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F4D6D6574737973 && a2 == 0xEA00000000006564)
  {

    return 5;
  }

  else
  {
    v5 = sub_2531DB144();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_2531808F0()
{
  result = qword_27F58D6E8;
  if (!qword_27F58D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D6E8);
  }

  return result;
}

unint64_t sub_253180944()
{
  result = qword_27F58D6F0;
  if (!qword_27F58D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D6F0);
  }

  return result;
}

unint64_t sub_253180998()
{
  result = qword_27F58D6F8;
  if (!qword_27F58D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D6F8);
  }

  return result;
}

unint64_t sub_2531809EC()
{
  result = qword_27F58D700;
  if (!qword_27F58D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D700);
  }

  return result;
}

uint64_t sub_253180A40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_253180BA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D770, &qword_2531E4948);
    v2 = sub_2531DAD74();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_25317E5F0(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        sub_2531675D4(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D730, &qword_2531E48E0);
        swift_dynamicCast();
        sub_2531675D4(&v23, v25);
        sub_2531675D4(v25, v26);
        sub_2531675D4(v26, &v24);
        result = sub_25317D998(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_2531675D4(&v24, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_2531675D4(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void MTRDevice.readCachedAttributeValue(from:)(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v11 = [v4 readAttributeWithEndpointID:v8 clusterID:v9 attributeID:v10 params:0];

  if (v11)
  {
    v12 = sub_2531DA624();

    MTR.Value.init(from:)(v12, &v17);
    if (v3)
    {
      v13 = objc_opt_self();
      v14 = sub_2531DA6C4();
      v15 = sub_2531DA0A4();
      [v13 hmfErrorWithCode:3 reason:v14 suggestion:0 underlyingError:v15];

      swift_willThrow();
      return;
    }

    v16 = v18;
    *a2 = v17;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    v16 = -1;
  }

  *(a2 + 16) = v16;
}

uint64_t MTRDevice.readCachedAttributeValues(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v5 = a2;
  v23 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = objc_opt_self();
    v22 = v4;
    v8 = (v4 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
      v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v14 = [v7 requestPathWithEndpointID:v11 clusterID:v12 attributeID:v13];

      MEMORY[0x259BFE6B0]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2531DA8C4();
      }

      v8 += 3;
      sub_2531DA904();
      --v6;
    }

    while (v6);
    v4 = v22;
    v5 = a2;
  }

  sub_253181ED8(0, &qword_27F58D728, 0x277CD51D0);
  v15 = sub_2531DA894();

  v16 = [v3 readAttributePaths_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
  v17 = sub_2531DA8A4();

  if (*(v17 + 16))
  {

    return MTR.Attribute.BatchReadResult.init(batchReadResponse:batchReadRequestedPaths:)(v17, v4, v5);
  }

  else
  {

    v19 = objc_opt_self();
    v20 = sub_2531DA6C4();
    [v19 hmfErrorWithCode:8 reason:v20];

    return swift_willThrow();
  }
}

void MTRDevice.writeAttributeValue(_:to:for:)(uint64_t a1, unsigned __int16 *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v14 = *(a2 + 2);
  v5 = *(a3 + 32);
  MTR.Value.makeDataValue()();
  sub_2531DB4E4();
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v8 = 0;
  if (v5 == 1)
  {
    sub_2531DB4E4();
    v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  v16 = v8;
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D730, &qword_2531E48E0);
  v13 = sub_2531DA604();

  [v15 writeAttributeWithEndpointID:v10 clusterID:v11 attributeID:v12 value:v13 expectedValueInterval:v7 timedWriteTimeout:v16];
}

uint64_t MTRDevice.invokeCommand(by:payload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 152) = a1;
  *(v4 + 160) = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D738, &qword_2531E48F0);
  *(v4 + 168) = v7;
  *(v4 + 176) = *(v7 - 8);
  *(v4 + 184) = swift_task_alloc();
  v8 = sub_2531DA594();
  *(v4 + 192) = v8;
  *(v4 + 200) = *(v8 - 8);
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 288) = *a2;
  *(v4 + 280) = *(a2 + 4);
  *(v4 + 216) = *a3;
  *(v4 + 290) = *(a3 + 16);

  return MEMORY[0x2822009F8](sub_2531815DC, 0, 0);
}

uint64_t sub_2531815DC()
{
  v1 = *(v0 + 290);
  if (v1 == 8)
  {
    v2 = *(v0 + 284);
    v3 = *(v0 + 280);
    v4 = *(v0 + 200);
    v5 = *(v0 + 208);
    v6 = *(v0 + 192);
    v36 = *(v0 + 176);
    v33 = *(v0 + 168);
    v34 = *(v0 + 184);
    v38 = *(v0 + 160);
    v37 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
    *(v0 + 232) = v37;
    v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    *(v0 + 240) = v35;
    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    *(v0 + 248) = v7;
    v8 = MTR.Value.makeDataValue()();
    sub_253180BA0(v8);

    v9 = sub_2531DA604();
    *(v0 + 256) = v9;

    sub_253181ED8(0, &qword_27F58D748, 0x277D85C78);
    (*(v4 + 104))(v5, *MEMORY[0x277D851C8], v6);
    v10 = sub_2531DAAB4();
    *(v0 + 264) = v10;
    (*(v4 + 8))(v5, v6);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_253181BB0;
    swift_continuation_init();
    *(v0 + 136) = v33;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D750, &qword_2531E48F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D758, &qword_2531E4FB0);
    sub_2531DA954();
    (*(v36 + 32))(boxed_opaque_existential_0, v34, v33);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_253181F84;
    *(v0 + 104) = &block_descriptor;
    [v38 invokeCommandWithEndpointID:v37 clusterID:v35 commandID:v7 commandFields:v9 expectedValues:0 expectedValueInterval:0 queue:v10 completion:v0 + 80];
    (*(v36 + 8))(boxed_opaque_existential_0, v33);

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v13 = *(v0 + 216);
    v12 = *(v0 + 224);
    v14 = sub_2531DAC44();
    swift_allocError();
    v16 = v15;
    *(v15 + 24) = &type metadata for MTR.Value;
    *v15 = v13;
    *(v15 + 8) = v12;
    *(v15 + 16) = v1;
    sub_25316D004(v13, v12, v1);
    sub_2531DABC4();
    MEMORY[0x259BFE570](0xD00000000000002FLL, 0x80000002531DC3D0);
    if (v1 > 4)
    {
      v25 = 0xE500000000000000;
      v26 = 0x7961727261;
      v27 = 0xE700000000000000;
      v28 = 0x6E776F6E6B6E75;
      if (v1 != 9)
      {
        v28 = 1819047278;
        v27 = 0xE400000000000000;
      }

      if (v1 != 7)
      {
        v26 = v28;
        v25 = v27;
      }

      v29 = 0xE600000000000000;
      v30 = 0x676E69727473;
      if (v1 != 5)
      {
        v30 = 1635017060;
        v29 = 0xE400000000000000;
      }

      if (v1 <= 6)
      {
        v23 = v30;
      }

      else
      {
        v23 = v26;
      }

      if (v1 <= 6)
      {
        v24 = v29;
      }

      else
      {
        v24 = v25;
      }
    }

    else
    {
      v17 = 0xE300000000000000;
      v18 = 7630441;
      v19 = 0xE400000000000000;
      v20 = 1953393013;
      v21 = 0xE500000000000000;
      v22 = 0x74616F6C66;
      if (v1 != 3)
      {
        v22 = 0x656C62756F64;
        v21 = 0xE600000000000000;
      }

      if (v1 != 2)
      {
        v20 = v22;
        v19 = v21;
      }

      if (!v1)
      {
        v18 = 1819242338;
        v17 = 0xE400000000000000;
      }

      if (v1 <= 1)
      {
        v23 = v18;
      }

      else
      {
        v23 = v20;
      }

      if (v1 <= 1)
      {
        v24 = v17;
      }

      else
      {
        v24 = v19;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D740, &qword_2531E7730);
    MEMORY[0x259BFE570](v23, v24);

    MEMORY[0x259BFE570](0x64616574736E6920, 0xEA00000000002E29);
    sub_2531DAC14();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D841A8], v14);
    swift_willThrow();

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_253181BB0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_253181E2C;
  }

  else
  {
    v2 = sub_253181CC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_253181CC0()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = *(v0 + 144);

  if (*(v5 + 16))
  {
    v6 = *(v5 + 32);

    v7 = sub_2531DA6D4();
    v9 = v8;
    if (*(v6 + 16))
    {
      v10 = v7;

      sub_25317D998(v10, v9);
      LOBYTE(v10) = v11;

      if (v10)
      {
        MTR.Value.init(from:)(v6, *(v0 + 152));
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v12 = *(v0 + 152);
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 10;
LABEL_8:

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_253181E2C(uint64_t a1)
{
  v2 = v1[33];
  v4 = v1[31];
  v3 = v1[32];
  v6 = v1[29];
  v5 = v1[30];
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

uint64_t sub_253181ED8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_253181F84(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D738, &qword_2531E48F0);
    sub_2531DA964();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
    sub_2531DA8A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D738, &qword_2531E48F0);
    sub_2531DA974();
  }
}

uint64_t MTRDevice.readAttributeValue(from:polling:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = v3;
  v7 = sub_2531DACF4();
  *(v4 + 72) = v7;
  *(v4 + 80) = *(v7 - 8);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  v8 = sub_2531DAD04();
  *(v4 + 104) = v8;
  *(v4 + 112) = *(v8 - 8);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 34) = *a2;
  v9 = *(a2 + 8);
  *(v4 + 36) = *(a2 + 4);
  *(v4 + 192) = v9;
  *(v4 + 128) = *a3;
  *(v4 + 144) = *(a3 + 16);

  return MEMORY[0x2822009F8](sub_2531821D0, 0, 0);
}

uint64_t sub_2531821D0()
{
  v32 = v0;
  if ((*(v0 + 144) & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_10;
  }

  v1 = 0;
  do
  {
    *(v0 + 152) = v1;
    if (v1)
    {
      goto LABEL_9;
    }

    v2 = *(v0 + 192);
    v3 = *(v0 + 36);
    v4 = *(v0 + 64);
    v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
    v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v8 = [v4 readAttributeWithEndpointID:v5 clusterID:v6 attributeID:v7 params:0];

    if (v8)
    {
      v25 = sub_2531DA624();

      MTR.Value.init(from:)(v25, &v30);
      v27 = v31;
      **(v0 + 56) = v30;
LABEL_17:
      *(*(v0 + 56) + 16) = v27;

      v28 = *(v0 + 8);

      return v28();
    }

    v9 = *(v0 + 152);
    if (v9 == *(v0 + 144))
    {
      v26 = *(v0 + 56);
      *v26 = 0;
      v26[1] = 0;
      v27 = -1;
      goto LABEL_17;
    }

    v1 = v9 + 1;
  }

  while (!__OFADD__(v9, 1));
  __break(1u);
LABEL_9:
  if (qword_27F58D0F0 != -1)
  {
    goto LABEL_21;
  }

LABEL_10:
  v10 = sub_2531DA274();
  __swift_project_value_buffer(v10, qword_27F59A2A8);
  v11 = sub_2531DA254();
  v12 = sub_2531DAA74();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 144);
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = v1;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v13;
    _os_log_impl(&dword_253166000, v11, v12, "readAttributeValueWithRetry((path)) - sleeping to retry read (%ld of %ld attempts)", v14, 0x16u);
    MEMORY[0x259BFFA80](v14, -1, -1);
  }

  v16 = *(v0 + 128);
  v15 = *(v0 + 136);
  v18 = *(v0 + 80);
  v17 = *(v0 + 88);
  v19 = *(v0 + 72);

  sub_2531DB394();
  *(v0 + 40) = v16;
  *(v0 + 48) = v15;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v20 = sub_253183024(&qword_27F58D760, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2531DB374();
  sub_253183024(&qword_27F58D768, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2531DAD14();
  v21 = *(v18 + 8);
  *(v0 + 160) = v21;
  *(v0 + 168) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v17, v19);
  v22 = swift_task_alloc();
  *(v0 + 176) = v22;
  *v22 = v0;
  v22[1] = sub_2531826A8;
  v24 = *(v0 + 96);
  v23 = *(v0 + 104);

  return MEMORY[0x2822008C8](v24, v0 + 16, v23, v20);
}

uint64_t sub_2531826A8()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    (*(v2 + 160))(*(v2 + 96), *(v2 + 72));
    v3 = sub_253182CD0;
  }

  else
  {
    v5 = *(v2 + 112);
    v4 = *(v2 + 120);
    v6 = *(v2 + 104);
    (*(v2 + 160))(*(v2 + 96), *(v2 + 72));
    (*(v5 + 8))(v4, v6);
    v3 = sub_253182800;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_253182800()
{
  v36 = v0;
  v33 = *(v0 + 184);
  while (1)
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 36);
    v3 = *(v0 + 64);
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
    v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v7 = [v3 readAttributeWithEndpointID:v4 clusterID:v5 attributeID:v6 params:0];

    if (v7)
    {
      break;
    }

    v8 = *(v0 + 152);
    if (v8 == *(v0 + 144))
    {
      v30 = *(v0 + 56);
      *v30 = 0;
      v30[1] = 0;
      v31 = -1;
      goto LABEL_16;
    }

    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    *(v0 + 152) = v9;
    if (v8 != -1)
    {
      if (qword_27F58D0F0 == -1)
      {
LABEL_7:
        v10 = sub_2531DA274();
        __swift_project_value_buffer(v10, qword_27F59A2A8);
        v11 = sub_2531DA254();
        v12 = sub_2531DAA74();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = *(v0 + 144);
          v14 = swift_slowAlloc();
          *v14 = 134218240;
          *(v14 + 4) = v9;
          *(v14 + 12) = 2048;
          *(v14 + 14) = v13;
          _os_log_impl(&dword_253166000, v11, v12, "readAttributeValueWithRetry((path)) - sleeping to retry read (%ld of %ld attempts)", v14, 0x16u);
          MEMORY[0x259BFFA80](v14, -1, -1);
        }

        v16 = *(v0 + 128);
        v15 = *(v0 + 136);
        v18 = *(v0 + 80);
        v17 = *(v0 + 88);
        v19 = *(v0 + 72);

        sub_2531DB394();
        *(v0 + 40) = v16;
        *(v0 + 48) = v15;
        *(v0 + 24) = 0;
        *(v0 + 16) = 0;
        *(v0 + 32) = 1;
        v20 = sub_253183024(&qword_27F58D760, MEMORY[0x277D85928], MEMORY[0x277D85930]);
        sub_2531DB374();
        sub_253183024(&qword_27F58D768, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
        sub_2531DAD14();
        v21 = *(v18 + 8);
        *(v0 + 160) = v21;
        *(v0 + 168) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v21(v17, v19);
        v22 = swift_task_alloc();
        *(v0 + 176) = v22;
        *v22 = v0;
        v22[1] = sub_2531826A8;
        v24 = *(v0 + 96);
        v23 = *(v0 + 104);

        return MEMORY[0x2822008C8](v24, v0 + 16, v23, v20);
      }

LABEL_21:
      swift_once();
      goto LABEL_7;
    }
  }

  v25 = sub_2531DA624();

  MTR.Value.init(from:)(v25, &v34);
  if (v33)
  {
    v26 = objc_opt_self();
    v27 = sub_2531DA6C4();
    v28 = sub_2531DA0A4();
    [v26 hmfErrorWithCode:3 reason:v27 suggestion:0 underlyingError:v28];

    swift_willThrow();

    v29 = *(v0 + 8);
    goto LABEL_17;
  }

  v31 = v35;
  **(v0 + 56) = v34;
LABEL_16:
  *(*(v0 + 56) + 16) = v31;

  v29 = *(v0 + 8);
LABEL_17:

  return v29();
}

uint64_t sub_253182CD0()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t MTRDevice.readAttributeValues(from:polling:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a3 + 16);
  v4[4] = v3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_253182D90, 0, 0);
}

uint64_t sub_253182D90()
{
  if ((*(v0 + 40) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    MTRDevice.readCachedAttributeValues(from:)(*(v0 + 24), *(v0 + 16));
    v1 = *(v0 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_253182E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_253170628;

  return MTRDevice.readAttributeValue(from:polling:)(a1, a2, a3);
}

uint64_t sub_253182F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a3 + 16);
  v4[4] = *v3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_253182D90, 0, 0);
}

uint64_t sub_253182F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_253170160;

  return MTRDevice.invokeCommand(by:payload:)(a1, a2, a3);
}

uint64_t sub_253183024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MTR.Product.ID.description.getter()
{
  sub_253168D7C();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  return 30768;
}

uint64_t MTR.Product.ID.debugDescription.getter()
{
  sub_2531DABC4();

  strcpy(v2, "Product.ID(0x");
  sub_253168D7C();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return v2[0];
}

unint64_t sub_253183258()
{
  result = qword_27F58D778;
  if (!qword_27F58D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D778);
  }

  return result;
}

unint64_t sub_2531832D0()
{
  result = qword_27F58D780;
  if (!qword_27F58D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D780);
  }

  return result;
}

_DWORD *MTR.DeviceType.init(_:revision:)@<X0>(_DWORD *result@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  *(a3 + 4) = v3;
  return result;
}

uint64_t MTR.DeviceType.description.getter()
{
  MEMORY[0x259BFE570](30768, 0xE200000000000000);
  sub_253169338();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](58, 0xE100000000000000);
  sub_2531DAD24();
  return 0;
}

uint64_t MTR.DeviceType.debugDescription.getter()
{
  sub_2531DABC4();
  MEMORY[0x259BFE570](0x7954656369766544, 0xED00007830286570);
  sub_253169338();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](0x697369766572202CLL, 0xEC000000203A6E6FLL);
  sub_2531DAD24();
  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0;
}

uint64_t MTR.DeviceType.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_2531DB144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2531DB144();

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

uint64_t MTR.DeviceType.CodingKeys.init(intValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t MTR.DeviceType.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x6E6F697369766572;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2531836BC()
{
  if (*v0)
  {
    return 0x6E6F697369766572;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2531836F0(uint64_t a1)
{
  v2 = sub_253183960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25318372C(uint64_t a1)
{
  v2 = sub_253183960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MTR.DeviceType.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D788, &qword_2531E4AC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = *(v1 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253183960();
  sub_2531DB4D4();
  v15 = v8;
  v14 = 0;
  sub_2531839B4();
  sub_2531DAED4();
  if (!v2)
  {
    v12 = v11;
    v13 = 1;
    sub_253183A08();
    sub_2531DAED4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_253183960()
{
  result = qword_27F58D790;
  if (!qword_27F58D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D790);
  }

  return result;
}

unint64_t sub_2531839B4()
{
  result = qword_27F58D798;
  if (!qword_27F58D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D798);
  }

  return result;
}

unint64_t sub_253183A08()
{
  result = qword_27F58D7A0;
  if (!qword_27F58D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D7A0);
  }

  return result;
}

uint64_t MTR.DeviceType.hashValue.getter()
{
  sub_2531DB3F4();
  sub_2531DB434();
  sub_2531DB424();
  return sub_2531DB454();
}

uint64_t MTR.DeviceType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D7A8, &qword_2531E4AC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253183960();
  sub_2531DB4B4();
  if (!v2)
  {
    v15 = 0;
    sub_253183FB4();
    sub_2531DAE14();
    v9 = v16;
    v14 = 1;
    sub_253184008();
    sub_2531DAE14();
    (*(v6 + 8))(v8, v5);
    v10 = v13;
    *a2 = v9;
    *(a2 + 4) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_253183D00()
{
  sub_2531DB3F4();
  sub_2531DB434();
  sub_2531DB424();
  return sub_2531DB454();
}

uint64_t sub_253183DA0(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DB434();
  sub_2531DB424();
  return sub_2531DB454();
}

unint64_t sub_253183FB4()
{
  result = qword_27F58D7B0;
  if (!qword_27F58D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D7B0);
  }

  return result;
}

unint64_t sub_253184008()
{
  result = qword_27F58D7B8;
  if (!qword_27F58D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D7B8);
  }

  return result;
}

unint64_t sub_253184060()
{
  result = qword_27F58D7C0;
  if (!qword_27F58D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D7C0);
  }

  return result;
}

unint64_t sub_2531840B4(uint64_t a1)
{
  result = sub_253183960();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2531840E0()
{
  result = qword_27F58D7C8;
  if (!qword_27F58D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D7C8);
  }

  return result;
}

unint64_t sub_253184138()
{
  result = qword_27F58D7D0;
  if (!qword_27F58D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D7D0);
  }

  return result;
}

unint64_t sub_253184190()
{
  result = qword_27F58D7D8;
  if (!qword_27F58D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D7D8);
  }

  return result;
}

unint64_t sub_2531841E8()
{
  result = qword_27F58D7E0;
  if (!qword_27F58D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D7E0);
  }

  return result;
}

unint64_t sub_253184240()
{
  result = qword_27F58D7E8;
  if (!qword_27F58D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D7E8);
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s10DeviceTypeVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10DeviceTypeVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 6) = v3;
  return result;
}

unint64_t sub_253184334()
{
  result = qword_27F58D7F0;
  if (!qword_27F58D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D7F0);
  }

  return result;
}

unint64_t sub_253184388()
{
  result = qword_27F58D7F8;
  if (!qword_27F58D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D7F8);
  }

  return result;
}

uint64_t AsyncPromise.__allocating_init()()
{
  v0 = swift_allocObject();
  AsyncPromise.init()();
  return v0;
}

char *AsyncPromise.init()()
{
  swift_defaultActor_initialize();
  v1 = sub_2531DA204();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D758, &qword_2531E4FB0);
  v2 = sub_2531DA984();
  swift_getTupleTypeMetadata2();
  v3 = sub_2531DA8D4();
  v4 = sub_253188954(&qword_27F58D708, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v5 = sub_253187EFC(v3, v1, v2, v4);

  *(v0 + 14) = v5;
  v6 = *(*v0 + 104);
  v7 = sub_2531DB464();
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  return v0;
}

void _s23HomeKitDaemonFoundation12AsyncPromiseCAAytRszrlE4fireyyF_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D888, &unk_2531E5090);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v50 - v3;
  v5 = sub_2531DA204();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D890, &unk_2531E8E90);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  swift_beginAccess();
  if (*(v0 + 128) == 255)
  {
    v60 = v8;
    swift_beginAccess();
    v51 = v0;
    v15 = *(v0 + 112);
    v16 = *(v15 + 64);
    v53 = v15 + 64;
    v17 = 1 << *(v15 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v6;
    v20 = v18 & v16;
    v52 = (v17 + 63) >> 6;
    v56 = v2 + 16;
    v57 = v19 + 16;
    v55 = v19 + 32;
    v67 = v4;
    v21 = (v2 + 32);
    v63 = v2;
    v64 = v15;
    v61 = v19;
    v65 = (v19 + 8);
    v66 = (v2 + 8);

    v22 = 0;
    v23 = v5;
    v68 = v5;
    v62 = v1;
    v58 = v14;
    v59 = v12;
    v54 = (v2 + 32);
    v24 = &qword_2531E50A0;
    if (v20)
    {
      while (1)
      {
        v25 = v22;
LABEL_13:
        v28 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v29 = v28 | (v25 << 6);
        v30 = v64;
        v31 = v60;
        v32 = v61;
        (*(v61 + 16))(v60, *(v64 + 48) + *(v61 + 72) * v29, v23);
        v33 = *(v30 + 56);
        v35 = v62;
        v34 = v63;
        v36 = v67;
        (*(v63 + 16))(v67, v33 + *(v63 + 72) * v29, v62);
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D898, v24);
        v38 = *(v37 + 48);
        v39 = *(v32 + 32);
        v12 = v59;
        v39(v59, v31, v68);
        v40 = v36;
        v1 = v35;
        v41 = v35;
        v21 = v54;
        (*(v34 + 32))(&v12[v38], v40, v41);
        (*(*(v37 - 8) + 56))(v12, 0, 1, v37);
        v27 = v25;
        v42 = v24;
        v14 = v58;
LABEL_14:
        sub_253188638(v12, v14);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D898, v42);
        if ((*(*(v43 - 8) + 48))(v14, 1, v43) == 1)
        {
          break;
        }

        v44 = v67;
        (*v21)(v67, &v14[*(v43 + 48)], v1);
        sub_2531DA974();
        (*v66)(v44, v1);
        v23 = v68;
        (*v65)(v14, v68);
        v22 = v27;
        v24 = v42;
        if (!v20)
        {
          goto LABEL_6;
        }
      }

      v46 = sub_2531B5608(MEMORY[0x277D84F90]);
      v47 = v51;
      *(v51 + 112) = v46;

      v48 = *(v47 + 120);
      *(v47 + 120) = 0;
      v49 = *(v47 + 128);
      *(v47 + 128) = 0;
      sub_2531886A8(v48, v49);
    }

    else
    {
LABEL_6:
      if (v52 <= v22 + 1)
      {
        v26 = v22 + 1;
      }

      else
      {
        v26 = v52;
      }

      v27 = v26 - 1;
      while (1)
      {
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v25 >= v52)
        {
          v42 = v24;
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D898, v24);
          (*(*(v45 - 8) + 56))(v12, 1, 1, v45);
          v20 = 0;
          goto LABEL_14;
        }

        v20 = *(v53 + 8 * v25);
        ++v22;
        if (v20)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t AsyncPromise.fire(_:)(uint64_t a1)
{
  v91 = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  v84 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v88 = &v63 - v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D758, &qword_2531E4FB0);
  v5 = sub_2531DA984();
  v82 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v92 = &v63 - v6;
  v7 = sub_2531DA204();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v79 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v10;
  v94 = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v89 = sub_2531DAAF4();
  v85 = *(v89 - 8);
  v12 = MEMORY[0x28223BE20](v89);
  v81 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v80 = &v63 - v14;
  v90 = v3;
  v15 = sub_2531DB464();
  v16 = sub_2531DAAF4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v63 - v21;
  v23 = *(v2 + 104);
  swift_beginAccess();
  (*(v17 + 16))(v22, &v1[v23], v16);
  v24 = *(v15 - 8);
  LODWORD(v87) = (*(v24 + 48))(v22, 1, v15);
  result = (*(v17 + 8))(v22, v16);
  if (v87 == 1)
  {
    v64 = v24;
    v65 = v23;
    v66 = v20;
    v67 = v15;
    v68 = v17;
    v69 = v16;
    swift_beginAccess();
    v70 = v1;
    v26 = *(v1 + 14);
    v27 = *(v26 + 64);
    v71 = v26 + 64;
    v28 = 1 << *(v26 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & v27;
    v31 = (v28 + 63) >> 6;
    v86 = TupleTypeMetadata2 - 8;
    v75 = v8 + 16;
    v74 = v82 + 16;
    v73 = v8 + 32;
    v32 = (v82 + 32);
    v87 = (v84 + 2);
    v84 = (v82 + 8);
    v85 += 4;
    v77 = v8;
    v83 = (v8 + 8);
    v78 = v26;

    v33 = 0;
    v34 = TupleTypeMetadata2;
    v76 = TupleTypeMetadata2;
    v35 = v81;
    v36 = v80;
    v72 = v32;
    if (v30)
    {
      while (1)
      {
        v37 = v33;
LABEL_13:
        v40 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
        v41 = v40 | (v37 << 6);
        v42 = v78;
        v43 = v77;
        (*(v77 + 16))(v79, *(v78 + 48) + *(v77 + 72) * v41, v93);
        v44 = v82;
        v45 = *(v42 + 56) + *(v82 + 72) * v41;
        v46 = v92;
        v47 = v94;
        (*(v82 + 16))(v92, v45, v94);
        v48 = *(v76 + 48);
        v49 = *(v43 + 32);
        v34 = v76;
        v35 = v81;
        v49();
        v32 = v72;
        (*(v44 + 32))(&v35[v48], v46, v47);
        v50 = 0;
        v39 = v37;
        v36 = v80;
LABEL_14:
        v51 = *(v34 - 8);
        (*(v51 + 56))(v35, v50, 1, v34);
        (*v85)(v36, v35, v89);
        if ((*(v51 + 48))(v36, 1, v34) == 1)
        {
          break;
        }

        v52 = v92;
        v53 = v94;
        (*v32)(v92, &v36[*(v34 + 48)], v94);
        (*v87)(v88, v91, v90);
        sub_2531DA974();
        (*v84)(v52, v53);
        result = (*v83)(v36, v93);
        v33 = v39;
        if (!v30)
        {
          goto LABEL_6;
        }
      }

      v55 = v93;
      v54 = v94;
      swift_getTupleTypeMetadata2();
      v56 = sub_2531DA8D4();
      v57 = sub_253188954(&qword_27F58D708, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v58 = sub_253187EFC(v56, v55, v54, v57);

      v59 = v70;
      *(v70 + 14) = v58;

      v60 = v66;
      (*v87)(v66, v91, v90);
      v61 = v67;
      swift_storeEnumTagMultiPayload();
      (*(v64 + 56))(v60, 0, 1, v61);
      v62 = v65;
      swift_beginAccess();
      (*(v68 + 40))(&v59[v62], v60, v69);
      return swift_endAccess();
    }

    else
    {
LABEL_6:
      if (v31 <= v33 + 1)
      {
        v38 = v33 + 1;
      }

      else
      {
        v38 = v31;
      }

      v39 = v38 - 1;
      while (1)
      {
        v37 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v37 >= v31)
        {
          v30 = 0;
          v50 = 1;
          goto LABEL_14;
        }

        v30 = *(v71 + 8 * v37);
        ++v33;
        if (v30)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t AsyncPromise.fire(throwing:)(void *a1)
{
  v92 = a1;
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D758, &qword_2531E4FB0);
  v3 = sub_2531DA984();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v93 = &v66 - v5;
  v6 = sub_2531DA204();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v84 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v9;
  v95 = v3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v91 = sub_2531DAAF4();
  v89 = *(v91 - 8);
  v11 = MEMORY[0x28223BE20](v91);
  v86 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = &v66 - v13;
  v14 = sub_2531DB464();
  v15 = sub_2531DAAF4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v66 - v20;
  v22 = *(v2 + 104);
  swift_beginAccess();
  v23 = *(v16 + 16);
  v73 = v22;
  v23(v21, &v1[v22], v15);
  v24 = *(v14 - 8);
  LODWORD(v90) = (*(v24 + 48))(v21, 1, v14);
  result = (*(v16 + 8))(v21, v15);
  if (v90 == 1)
  {
    v67 = v24;
    v68 = v19;
    v69 = v14;
    v70 = v16;
    v71 = v15;
    swift_beginAccess();
    v72 = v1;
    v26 = *(v1 + 14);
    v27 = *(v26 + 64);
    v75 = v26 + 64;
    v28 = 1 << *(v26 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & v27;
    v74 = (v28 + 63) >> 6;
    v90 = TupleTypeMetadata2 - 8;
    v79 = v7 + 16;
    v78 = v4 + 16;
    v77 = v7 + 32;
    v31 = (v4 + 32);
    v89 += 4;
    v82 = v4;
    v88 = (v4 + 8);
    v81 = v7;
    v87 = (v7 + 8);
    v83 = v26;

    v32 = 0;
    v80 = TupleTypeMetadata2;
    v33 = v85;
    v34 = v86;
    v76 = v31;
    v35 = v82;
    if (v30)
    {
      while (1)
      {
        v36 = v32;
LABEL_13:
        v39 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
        v40 = v39 | (v36 << 6);
        v41 = v83;
        v42 = v81;
        v43 = v84;
        v44 = v94;
        (*(v81 + 16))(v84, *(v83 + 48) + *(v81 + 72) * v40, v94);
        v45 = *(v41 + 56) + *(v35 + 72) * v40;
        v46 = v93;
        v47 = v95;
        (*(v35 + 16))(v93, v45, v95);
        TupleTypeMetadata2 = v80;
        v48 = *(v80 + 48);
        v49 = *(v42 + 32);
        v34 = v86;
        v49(v86, v43, v44);
        v31 = v76;
        (*(v35 + 32))(&v34[v48], v46, v47);
        v50 = 0;
        v38 = v36;
        v33 = v85;
LABEL_14:
        v51 = *(TupleTypeMetadata2 - 8);
        (*(v51 + 56))(v34, v50, 1, TupleTypeMetadata2);
        (*v89)(v33, v34, v91);
        if ((*(v51 + 48))(v33, 1, TupleTypeMetadata2) == 1)
        {
          break;
        }

        v52 = v93;
        v53 = v95;
        (*v31)(v93, &v33[*(TupleTypeMetadata2 + 48)], v95);
        v96 = v92;
        v54 = v92;
        sub_2531DA964();
        (*v88)(v52, v53);
        result = (*v87)(v33, v94);
        v32 = v38;
        if (!v30)
        {
          goto LABEL_6;
        }
      }

      v56 = v94;
      v55 = v95;
      swift_getTupleTypeMetadata2();
      v57 = sub_2531DA8D4();
      v58 = sub_253188954(&qword_27F58D708, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v59 = sub_253187EFC(v57, v56, v55, v58);

      v60 = v72;
      *(v72 + 14) = v59;

      v61 = v92;
      v62 = v68;
      *v68 = v92;
      v63 = v69;
      swift_storeEnumTagMultiPayload();
      (*(v67 + 56))(v62, 0, 1, v63);
      v64 = v73;
      swift_beginAccess();
      v65 = v61;
      (*(v70 + 40))(&v60[v64], v62, v71);
      return swift_endAccess();
    }

    else
    {
LABEL_6:
      if (v74 <= v32 + 1)
      {
        v37 = v32 + 1;
      }

      else
      {
        v37 = v74;
      }

      v38 = v37 - 1;
      while (1)
      {
        v36 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v36 >= v74)
        {
          v30 = 0;
          v50 = 1;
          goto LABEL_14;
        }

        v30 = *(v75 + 8 * v36);
        ++v32;
        if (v30)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t AsyncPromise.callAsFunction()(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  v3 = *v1;
  v4 = sub_2531DA204();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = *(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D758, &qword_2531E4FB0);
  v5 = sub_2531DB464();
  v2[13] = v5;
  v6 = sub_2531DAAF4();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253185EA8, v1, 0);
}

uint64_t sub_253185EA8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[7];
  v7 = *(*v6 + 104);
  swift_beginAccess();
  (*(v4 + 16))(v1, v6 + v7, v3);
  if ((*(v2 + 48))(v1, 1, v5) == 1)
  {
    v8 = v0[11];
    v9 = v0[7];
    (*(v0[15] + 8))(v0[16], v0[14]);
    sub_2531DA1F4();
    v10 = swift_task_alloc();
    v0[20] = v10;
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v11 = swift_task_alloc();
    v0[21] = v11;
    *(v11 + 16) = v9;
    *(v11 + 24) = v8;
    WitnessTable = swift_getWitnessTable();
    v13 = swift_task_alloc();
    v0[22] = v13;
    *v13 = v0;
    v13[1] = sub_25318619C;
    v14 = v0[12];
    v15 = v0[6];

    return MEMORY[0x282200830](v15, &unk_2531E4FC8, v10, sub_253188294, v11, v9, WitnessTable, v14);
  }

  else
  {
    v16 = v0[18];
    v17 = v0[19];
    v18 = v0[17];
    v19 = v0[13];
    v20 = v0[6];
    (*(v18 + 32))(v17, v0[16], v19);
    (*(v18 + 16))(v16, v17, v19);
    sub_25318642C(v19, (v0 + 5), v20);
    (*(v0[17] + 8))(v0[19], v0[13]);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_25318619C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_253186370;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_2531862CC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2531862CC()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_253186370()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25318642C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t sub_2531864FC(uint64_t a1, void *a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *a2;
  return MEMORY[0x2822009F8](sub_253186544, a2, 0);
}

uint64_t sub_253186544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(v4 + 40) + 80);
  type metadata accessor for AsyncPromise(255, v5, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v7 = swift_task_alloc();
  *(v4 + 48) = v7;
  v11 = *(v4 + 24);
  *(v7 + 16) = v11;
  v8 = swift_task_alloc();
  *(v4 + 56) = v8;
  *v8 = v4;
  v8[1] = sub_25318667C;
  v9 = *(v4 + 16);

  return MEMORY[0x2822008A0](v9, v11, WitnessTable, 0xD000000000000010, 0x80000002531DC480, sub_25318899C, v7, v5);
}

uint64_t sub_25318667C()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_2531867B8, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_2531867B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25318681C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return sub_253186888(a1, a3);
}

uint64_t sub_253186888(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D758, &qword_2531E4FB0);
  v4 = sub_2531DA984();
  v5 = sub_2531DAAF4();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_2531DA204();
  MEMORY[0x28223BE20](v8);
  (*(v10 + 16))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v11 = *(v4 - 8);
  (*(v11 + 16))(v7, a1, v4);
  (*(v11 + 56))(v7, 0, 1, v4);
  swift_beginAccess();
  sub_253188954(&qword_27F58D708, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2531DA654();
  sub_2531DA664();
  return swift_endAccess();
}

uint64_t sub_253186ACC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = sub_2531DA204();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58D800, &qword_2531E4FD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_2531DA9B4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v12 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = *(v4 + 80);
  *(v13 + 5) = a1;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_253187030(0, 0, v10, &unk_2531E50C8, v13);
}

uint64_t sub_253186CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_253186CEC, a4, 0);
}

uint64_t sub_253186CEC()
{
  sub_253186D4C(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_253186D4C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D758, &qword_2531E4FB0);
  v1 = sub_2531DA984();
  v2 = sub_2531DAAF4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v12 - v5;
  v7 = *(v1 - 8);
  MEMORY[0x28223BE20](v4);
  v9 = v12 - v8;
  swift_beginAccess();
  sub_2531DA204();
  sub_253188954(&qword_27F58D708, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2531DA654();
  sub_2531DA634();
  swift_endAccess();
  if ((*(v7 + 48))(v6, 1, v1) == 1)
  {
    return (*(v3 + 8))(v6, v2);
  }

  (*(v7 + 32))(v9, v6, v1);
  sub_2531DA994();
  sub_253188954(&qword_27F58D8A0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
  v11 = swift_allocError();
  sub_2531DA5F4();
  v12[1] = v11;
  sub_2531DA964();
  return (*(v7 + 8))(v9, v1);
}

uint64_t sub_253187030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58D800, &qword_2531E4FD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2531886CC(a3, v25 - v10);
  v12 = sub_2531DA9B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25318873C(v11);
  }

  else
  {
    sub_2531DA9A4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2531DA944();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2531DA714() + 32;
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

      sub_25318873C(a3);

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

  sub_25318873C(a3);
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

BOOL AsyncPromise.isEmpty.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D758, &qword_2531E4FB0);
  v2 = sub_2531DB464();
  v3 = sub_2531DAAF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 104);
  swift_beginAccess();
  (*(v4 + 16))(v6, &v0[v7], v3);
  v8 = (*(*(v2 - 8) + 48))(v6, 1, v2) == 1;
  (*(v4 + 8))(v6, v3);
  return v8;
}

char *AsyncPromise.deinit()
{

  v1 = *(*v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D758, &qword_2531E4FB0);
  sub_2531DB464();
  v2 = sub_2531DAAF4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncPromise.__deallocating_deinit()
{
  AsyncPromise.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t AsyncPromise.fireNonisolated(_:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58D800, &qword_2531E4FD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_2531DA9B4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v4 + 16))(v6, a1, v3);
  v11 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v3;
  *(v12 + 5) = v1;
  (*(v4 + 32))(&v12[v11], v6, v3);

  sub_253187030(0, 0, v9, &unk_2531E4FE0, v12);
}

uint64_t sub_253187788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2531877A8, a4, 0);
}

uint64_t sub_2531877A8()
{
  AsyncPromise.fire(_:)(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AsyncPromise.fireNonisolated(throwing:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58D800, &qword_2531E4FD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_2531DA9B4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = a1;

  v8 = a1;
  sub_253187030(0, 0, v5, &unk_2531E4FF0, v7);
}

uint64_t sub_25318791C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_25318793C, a4, 0);
}

uint64_t sub_25318793C()
{
  AsyncPromise.fire(throwing:)(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AsyncPromise<>.fireNonisolated()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58D800, &qword_2531E4FD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_2531DA9B4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_253187030(0, 0, v3, &unk_2531E5000, v5);
}

uint64_t sub_253187AA8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_253187BA0;

  return v6(a1);
}

uint64_t sub_253187BA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_253187C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2531DA684();

  return sub_253187CF4(a1, v6, a2, a3);
}

unint64_t sub_253187CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_2531DA6B4();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_253187E9C()
{
  _s23HomeKitDaemonFoundation12AsyncPromiseCAAytRszrlE4fireyyF_0();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_253187EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_2531DA914())
  {
    sub_2531DAD84();
    v13 = sub_2531DAD74();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_2531DA914();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_2531DA8F4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_2531DABE4();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_253187C98(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_2531881E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_253170160;

  return sub_2531864FC(a1, v5, v4);
}

uint64_t sub_25318829C(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 48) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_253170628;

  return sub_253187788(a1, v6, v4, v7, v1 + v5);
}

uint64_t sub_25318838C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_253170628;

  return sub_25318791C(a1, v4, v5, v7, v6);
}

uint64_t sub_25318844C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_253170628;

  return sub_253187E7C(a1, v4, v5, v6);
}

uint64_t sub_253188518(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D758, &qword_2531E4FB0);
  sub_2531DB464();
  result = sub_2531DAAF4();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_253188638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D890, &unk_2531E8E90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2531886A8(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_2531886C0(result, a2 & 1);
  }
}

void sub_2531886C0(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_2531886CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58D800, &qword_2531E4FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25318873C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F58D800, &qword_2531E4FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2531887A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_253170628;

  return sub_253187AA8(a1, v4);
}

uint64_t sub_25318885C(uint64_t a1)
{
  v4 = *(sub_2531DA204() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_253170160;

  return sub_253186CCC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_253188954(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *MTR.ServerAttribute.value<A>(of:)@<X0>(uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v15 = MEMORY[0x277D84F98];
  result = (*(a4 + 32))(&v13, a2, a4);
  if (!v6)
  {
    v11 = v13;
    v12 = v14;
    MTR.ValueDecoder.decode<A>(_:from:)(&v11, a3, a5, x8_0);
    return sub_25316D2BC(v11, *(&v11 + 1), v12);
  }

  return result;
}

void *MTR.ServerAttribute.setValue<A>(_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5)
{
  *&v9 = MEMORY[0x277D84F98];
  result = MTR.ValueEncoder.encode<A>(_:)(a1, a3, a5, &v11);
  if (!v5)
  {
    v9 = v11;
    v10 = v12;
    (*(a4 + 40))(&v9, a2, a4);
    return sub_25316D2BC(v9, *(&v9 + 1), v10);
  }

  return result;
}

uint64_t sub_253188BAC(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        a2 = a2 | 0xFFFFFFFE00000000;
      }

      else
      {
        v6 = a2 | 0xFF00;
        if (BYTE2(a2) != 1)
        {
          v6 = 0;
        }

        if (BYTE2(a2))
        {
          v7 = v6;
        }

        else
        {
          v7 = a2;
        }

        a2 = *&v7 | 0xFFFFFFFFFFFF0000;
      }
    }
  }

  else
  {
    if (a3 == 5)
    {
      v3 = a2;
    }

    else
    {
      v3 = 0;
    }

    v4 = a2 | 0xFFFFFFFB00000000;
    if (a3 != 3)
    {
      v4 = a2 | 0xFFFFFFFD00000000;
    }

    if (a3 <= 4u)
    {
      a2 = v4;
    }

    else
    {
      a2 = v3;
    }
  }

  return MEMORY[0x259BFF270](a2);
}

uint64_t static MTR.Cluster.Binding.readBindings(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 48) = a1;
  *(v2 + 84) = *a2;
  return MEMORY[0x2822009F8](sub_253188C80, 0, 0);
}

uint64_t sub_253188C80()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 48);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 72) = v1;
  *(v0 + 76) = 30;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D8A8, &qword_2531E50F0);
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 32) = 10;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = sub_253188F94(&qword_27F58D8B0, sub_253188DE0, MEMORY[0x277D83978]);
  *v6 = v0;
  v6[1] = sub_253174A10;

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 72, v5, v0 + 16, v3, v5, v4, v7);
}

unint64_t sub_253188DE0()
{
  result = qword_27F58D8B8;
  if (!qword_27F58D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D8B8);
  }

  return result;
}

uint64_t static MTR.Cluster.Binding.writeBindings(_:device:endpoint:)(uint64_t a1, uint64_t a2, _WORD *a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = *a3;
  return MEMORY[0x2822009F8](sub_253188E5C, 0, 0);
}

uint64_t sub_253188E5C()
{
  v16 = v0;
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v5 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  *(v0 + 16) = v3;
  v10 = v1;
  v11 = 30;
  v12 = xmmword_2531E2780;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D8A8, &qword_2531E50F0);
  v7 = sub_253188F94(&qword_27F58D8C0, sub_25318900C, MEMORY[0x277D83948]);
  MTR.Device.writeAttributeValue<A>(_:to:for:)(v0 + 16, &v10, &v12, v5, v6, v4, v7);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_253188F94(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D8A8, &qword_2531E50F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25318900C()
{
  result = qword_27F58D8C8;
  if (!qword_27F58D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D8C8);
  }

  return result;
}

void MTR.Cluster.Binding.Target.node.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t MTR.Cluster.Binding.Target.node.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void MTR.Cluster.Binding.Target.group.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 10);
  *(a1 + 2) = *(v1 + 12);
  *a1 = v2;
}

__int16 *MTR.Cluster.Binding.Target.group.setter(__int16 *result)
{
  v2 = *result;
  *(v1 + 12) = *(result + 2);
  *(v1 + 10) = v2;
  return result;
}

void MTR.Cluster.Binding.Target.endpoint.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 14);
  *(a1 + 2) = v2;
}

uint64_t MTR.Cluster.Binding.Target.endpoint.setter(uint64_t result)
{
  v2 = *(result + 2);
  *(v1 + 14) = *result;
  *(v1 + 16) = v2;
  return result;
}

void MTR.Cluster.Binding.Target.cluster.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 20);
  *(a1 + 4) = v2;
}

uint64_t MTR.Cluster.Binding.Target.cluster.setter(uint64_t result)
{
  v2 = *(result + 4);
  *(v1 + 20) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t MTR.Cluster.Binding.Target.init(node:endpoint:cluster:)@<X0>(uint64_t result@<X0>, __int16 *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 8);
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 4);
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 12) = -1;
  *(a4 + 10) = 0;
  *(a4 + 14) = v5;
  *(a4 + 16) = 0;
  *(a4 + 20) = v6;
  *(a4 + 24) = v7;
  return result;
}

void MTR.Cluster.Binding.Target.init(node:group:cluster:)(__int16 *a1@<X1>, int *a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *a2;
  v6 = *(a2 + 4);
  *a3 = 0;
  *(a3 + 8) = -1;
  *(a3 + 12) = v4;
  *(a3 + 10) = v3;
  *(a3 + 14) = 0;
  *(a3 + 16) = 1;
  *(a3 + 20) = v5;
  *(a3 + 24) = v6;
}

__int16 *MTR.Cluster.Binding.Target.init(group:cluster:)@<X0>(__int16 *result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = *(result + 2);
  v5 = *a2;
  v6 = *(a2 + 4);
  *a3 = 0;
  *(a3 + 8) = -1;
  *(a3 + 12) = v4;
  *(a3 + 10) = v3;
  *(a3 + 14) = 0;
  *(a3 + 16) = 1;
  *(a3 + 20) = v5;
  *(a3 + 24) = v6;
  return result;
}

uint64_t MTR.Cluster.Binding.Target.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 10) | (*(v0 + 12) << 16);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v1 == 255)
  {
    result = 0;
    v6 = 0;
  }

  else
  {
    v26[0] = *v0;
    LOBYTE(v26[1]) = v1;
    result = MTR.Node.ID.description.getter();
  }

  v26[6] = result;
  v26[7] = v6;
  if (HIWORD(v2) > 0xFEu)
  {
    v27 = 0;
    v28 = 0;
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v29 = 0;
    v30 = 0;
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v9 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  v26[0] = 30768;
  v26[1] = 0xE200000000000000;
  sub_253168D7C();
  v11 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v11);

  v27 = 30768;
  v28 = 0xE200000000000000;
  if (v3)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_2531DABC4();

  strcpy(v26, "Endpoint.ID(0x");
  HIBYTE(v26[1]) = -18;
  sub_253168D7C();
  v7 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v7);

  result = MEMORY[0x259BFE570](41, 0xE100000000000000);
  v29 = v26[0];
  v30 = v26[1];
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_7:
  sub_2531DABC4();

  strcpy(v26, "Cluster.ID(0x");
  HIWORD(v26[1]) = -4864;
  sub_253169338();
  v8 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v8);

  result = MEMORY[0x259BFE570](41, 0xE100000000000000);
  v9 = v26[0];
  v10 = v26[1];
LABEL_11:
  v12 = 0;
  v31 = v9;
  v32 = v10;
  v13 = MEMORY[0x277D84F90];
LABEL_12:
  if (v12 <= 4)
  {
    v14 = 4;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 + 1;
  v16 = 16 * v12 + 40;
  while (1)
  {
    if (v12 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D468, &qword_2531E2A30);
      swift_arrayDestroy();
      strcpy(v26, "Binding(");
      BYTE1(v26[1]) = 0;
      WORD1(v26[1]) = 0;
      HIDWORD(v26[1]) = -402653184;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D458, &qword_2531E2A28);
      sub_25318A2D8();
      v23 = sub_2531DA6A4();
      v25 = v24;

      MEMORY[0x259BFE570](v23, v25);

      MEMORY[0x259BFE570](41, 0xE100000000000000);
      return v26[0];
    }

    if (v15 == ++v12)
    {
      break;
    }

    v17 = v16 + 16;
    v18 = *(&v26[2] + v16);
    v16 += 16;
    if (v18)
    {
      v19 = *(&v26[-1] + v17);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_253169E64(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
      }

      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_253169E64((v20 > 1), v21 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 16) = v21 + 1;
      v22 = v13 + 16 * v21;
      *(v22 + 32) = v19;
      *(v22 + 40) = v18;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t MTR.Cluster.Binding.Target.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080942 && a2 == 0xE400000000000000;
  if (v5 || (sub_2531DB144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_2531DB144() & 1) != 0)
  {

    v8 = 1;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000 || (sub_2531DB144() & 1) != 0)
  {

    v8 = 2;
  }

  else if (a1 == 0x72657473756C63 && a2 == 0xE700000000000000)
  {

    v8 = 3;
  }

  else
  {
    v9 = sub_2531DB144();

    if (v9)
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }
  }

  *a3 = v8;
  return result;
}

unint64_t MTR.Cluster.Binding.Target.CodingKeys.init(intValue:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x302010004uLL >> (8 * result);
  if (result >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *a2 = v2;
  return result;
}

uint64_t MTR.Cluster.Binding.Target.CodingKeys.stringValue.getter()
{
  v1 = 1701080942;
  v2 = 0x746E696F70646E65;
  if (*v0 != 2)
  {
    v2 = 0x72657473756C63;
  }

  if (*v0)
  {
    v1 = 0x70756F7267;
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

uint64_t sub_253189834()
{
  v1 = *v0;
  sub_2531DB3F4();
  MEMORY[0x259BFF230](v1 + 1);
  return sub_2531DB454();
}

uint64_t sub_2531898AC(uint64_t a1)
{
  v2 = *v1;
  sub_2531DB3F4();
  MEMORY[0x259BFF230](v2 + 1);
  return sub_2531DB454();
}

uint64_t sub_253189908()
{
  v1 = 1701080942;
  v2 = 0x746E696F70646E65;
  if (*v0 != 2)
  {
    v2 = 0x72657473756C63;
  }

  if (*v0)
  {
    v1 = 0x70756F7267;
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

uint64_t sub_253189990(uint64_t a1)
{
  v2 = sub_25318A498();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2531899CC(uint64_t a1)
{
  v2 = sub_25318A498();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MTR.Cluster.Binding.Target.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D8D0, &qword_2531E5100);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v25 = *(v1 + 12);
  v9 = *(v1 + 5);
  v20 = *(v1 + 7);
  v21 = v9;
  v10 = *(v1 + 16);
  v18 = *(v1 + 5);
  v19 = v10;
  HIDWORD(v17) = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25318A498();
  sub_2531DB4D4();
  v23 = v7;
  v24 = v8;
  v26 = 0;
  sub_25318A4EC();
  v11 = v22;
  sub_2531DAE94();
  if (!v11)
  {
    v13 = v19;
    v12 = v20;
    v15 = BYTE4(v17);
    v14 = v18;
    BYTE2(v23) = (v21 | (v25 << 16)) >> 16;
    LOWORD(v23) = v21;
    v26 = 1;
    sub_25318A540();
    sub_2531DAE94();
    LOWORD(v23) = v12;
    BYTE2(v23) = v13;
    v26 = 2;
    sub_25318A594();
    sub_2531DAE94();
    LODWORD(v23) = v14;
    BYTE4(v23) = v15;
    v26 = 3;
    sub_25318A5E8();
    sub_2531DAE94();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MTR.Cluster.Binding.Target.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v5 = *(v2 + 10) | (*(v2 + 12) << 16);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  if (v4 == 255)
  {
    sub_2531DB414();
  }

  else
  {
    v8 = *v2;
    sub_2531DB414();
    sub_253188BAC(a1, v8, v4);
  }

  if ((v5 & 0xFFFFFFu) >= 0xFF0000)
  {
    sub_2531DB414();
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_9:
    sub_2531DB414();
    sub_2531DB424();
    if (!v7)
    {
      goto LABEL_7;
    }

    return sub_2531DB414();
  }

  sub_2531DB414();
  sub_2531DB424();
  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_2531DB414();
  if (!v7)
  {
LABEL_7:
    sub_2531DB414();
    return sub_2531DB434();
  }

  return sub_2531DB414();
}

uint64_t MTR.Cluster.Binding.Target.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 10) | (*(v0 + 12) << 16);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_2531DB3F4();
  sub_2531DB414();
  if (v2 != 255)
  {
    sub_253188BAC(v7, v1, v2);
  }

  if ((v3 & 0xFFFFFFu) >= 0xFF0000)
  {
    sub_2531DB414();
    if (!v4)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_2531DB414();
    if (!v5)
    {
      goto LABEL_6;
    }

LABEL_9:
    sub_2531DB414();
    return sub_2531DB454();
  }

  sub_2531DB414();
  sub_2531DB424();
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_5:
  sub_2531DB414();
  sub_2531DB424();
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_2531DB414();
  sub_2531DB434();
  return sub_2531DB454();
}

uint64_t MTR.Cluster.Binding.Target.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D900, &qword_2531E5108);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25318A498();
  sub_2531DB4B4();
  if (!v2)
  {
    v22 = 0;
    sub_25318A63C();
    sub_2531DADD4();
    v9 = v19;
    v10 = v20;
    v22 = 1;
    sub_25318A690();
    sub_2531DADD4();
    v21 = v10;
    v18 = v9;
    LODWORD(v9) = BYTE2(v19);
    v11 = v19;
    v22 = 2;
    sub_2531720C0();
    sub_2531DADD4();
    v16 = v11;
    v17 = v9;
    LOWORD(v9) = v19;
    LOBYTE(v11) = BYTE2(v19);
    v22 = 3;
    sub_253172168();
    sub_2531DADD4();
    (*(v6 + 8))(v8, v5);
    v13 = v19;
    v14 = BYTE4(v19);
    v15 = v16 | (v17 << 16);
    *a2 = v18;
    *(a2 + 8) = v21;
    *(a2 + 12) = BYTE2(v15);
    *(a2 + 10) = v15;
    *(a2 + 14) = v9;
    *(a2 + 16) = v11;
    *(a2 + 20) = v13;
    *(a2 + 24) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25318A160(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 10) | (*(v1 + 12) << 16);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  sub_2531DB3F4();
  sub_2531DB414();
  if (v3 != 255)
  {
    sub_253188BAC(v8, v2, v3);
  }

  if ((v4 & 0xFFFFFFu) >= 0xFF0000)
  {
    sub_2531DB414();
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_2531DB414();
    if (!v6)
    {
      goto LABEL_6;
    }

LABEL_9:
    sub_2531DB414();
    return sub_2531DB454();
  }

  sub_2531DB414();
  sub_2531DB424();
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_5:
  sub_2531DB414();
  sub_2531DB424();
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_2531DB414();
  sub_2531DB434();
  return sub_2531DB454();
}

unint64_t sub_25318A2D8()
{
  result = qword_27F58D460;
  if (!qword_27F58D460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D458, &qword_2531E2A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D460);
  }

  return result;
}

BOOL _s23HomeKitDaemonFoundation3MTRO7ClusterO7BindingO6TargetV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = *(a1 + 10);
  v6 = *(a1 + 14);
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a1 + 24);
  v10 = *(a2 + 8);
  v11 = *(a2 + 12);
  v12 = *(a2 + 10);
  v13 = *(a2 + 14);
  v14 = *(a2 + 16);
  v15 = *(a2 + 20);
  v16 = *(a2 + 24);
  if (v3 == 255)
  {
    if (v10 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == 255)
    {
      return 0;
    }

    v24 = *(a2 + 10);
    v25 = *(a2 + 16);
    v17 = sub_253198C54(*a1, v3, *a2, v10);
    v12 = v24;
    v14 = v25;
    if (!v17)
    {
      return 0;
    }
  }

  v18 = v5 | (v4 << 16);
  v19 = v12 | (v11 << 16);
  if (BYTE2(v18) == 255)
  {
    if (BYTE2(v19) != 255)
    {
      return 0;
    }
  }

  else
  {
    if (BYTE2(v19) == 255)
    {
      return 0;
    }

    v20 = v5 | 0xFF00;
    if (BYTE2(v18) != 1)
    {
      v20 = 0;
    }

    if (BYTE2(v18))
    {
      LOWORD(v18) = v20;
    }

    if (BYTE2(v19))
    {
      if (BYTE2(v19) != 1)
      {
        if (v18)
        {
          return 0;
        }

        goto LABEL_20;
      }

      LOWORD(v19) = v19 | 0xFF00;
    }

    if (v18 != v19)
    {
      return 0;
    }
  }

LABEL_20:
  if (v7)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v13)
    {
      v21 = v14;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  if ((v9 & 1) == 0)
  {
    if (v8 == v15)
    {
      v23 = v16;
    }

    else
    {
      v23 = 1;
    }

    return (v23 & 1) == 0;
  }

  return (v16 & 1) != 0;
}

unint64_t sub_25318A498()
{
  result = qword_27F58D8D8;
  if (!qword_27F58D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D8D8);
  }

  return result;
}

unint64_t sub_25318A4EC()
{
  result = qword_27F58D8E0;
  if (!qword_27F58D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D8E0);
  }

  return result;
}

unint64_t sub_25318A540()
{
  result = qword_27F58D8E8;
  if (!qword_27F58D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D8E8);
  }

  return result;
}

unint64_t sub_25318A594()
{
  result = qword_27F58D8F0;
  if (!qword_27F58D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D8F0);
  }

  return result;
}

unint64_t sub_25318A5E8()
{
  result = qword_27F58D8F8;
  if (!qword_27F58D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D8F8);
  }

  return result;
}

unint64_t sub_25318A63C()
{
  result = qword_27F58D908;
  if (!qword_27F58D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D908);
  }

  return result;
}

unint64_t sub_25318A690()
{
  result = qword_27F58D910;
  if (!qword_27F58D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D910);
  }

  return result;
}

unint64_t sub_25318A6E8()
{
  result = qword_27F58D918;
  if (!qword_27F58D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D918);
  }

  return result;
}

unint64_t sub_25318A73C(uint64_t a1)
{
  result = sub_25318A498();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25318A768()
{
  result = qword_27F58D920;
  if (!qword_27F58D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D920);
  }

  return result;
}

unint64_t sub_25318A7C0()
{
  result = qword_27F58D928;
  if (!qword_27F58D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D928);
  }

  return result;
}

unint64_t sub_25318A818()
{
  result = qword_27F58D930;
  if (!qword_27F58D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D930);
  }

  return result;
}

uint64_t sub_25318A87C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 12);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_25318A8C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 12) = ~a2;
    }
  }

  return result;
}

uint64_t _s7BindingO6TargetV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s7BindingO6TargetV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25318AA74(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a2;
  v7 = a1;
  v8 = a4 + 40;
  v9 = *(a4 + 16) + 1;
  do
  {
    if (!--v9)
    {
      goto LABEL_34;
    }

    v10 = v8;
    v8 += 12;
  }

  while (*(v10 - 8) != a1 || *(v10 - 4) != __PAIR64__(a2, HIDWORD(a1)));
  v63 = HIDWORD(a1);
  v11 = *(a3 + 16);
  v12 = 0x27F58D000uLL;
  if (!v11)
  {
LABEL_29:
    if (*(v12 + 240) != -1)
    {
      swift_once();
    }

    v51 = sub_2531DA274();
    __swift_project_value_buffer(v51, qword_27F59A2A8);
    v52 = sub_2531DA254();
    v53 = sub_2531DAA84();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v66[0] = v55;
      *v54 = 136315138;
      LOWORD(v67[0]) = v7;
      *(v67 + 4) = __PAIR64__(v6, v63);
      v56 = sub_2531DA6F4();
      v58 = sub_253196608(v56, v57, v66);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_253166000, v52, v53, "Did not find read response for %s.", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x259BFFA80](v55, -1, -1);
      MEMORY[0x259BFFA80](v54, -1, -1);
    }

LABEL_34:
    sub_25318DD6C();
    swift_allocError();
    *v59 = 11;
    return swift_willThrow();
  }

  v13 = a3 + 32;
  v62 = a1;
  while (1)
  {

    v25 = sub_253180BA0(v24);

    v26 = objc_allocWithZone(MEMORY[0x277CD51C8]);
    v27 = sub_25318CD38(v25);
    if (v5)
    {
      goto LABEL_11;
    }

    v32 = v27;
    v33 = [v27 path];
    LOWORD(v67[0]) = v7;
    *(v67 + 4) = __PAIR64__(v6, v63);
    v34 = _s23HomeKitDaemonFoundation3MTRO9AttributeO4PathV6isSame4path03mtrG0SbAG_So012MTRAttributeG0CtFZ_0(v67, v33);

    if (v34)
    {
      break;
    }

LABEL_9:
    v13 += 8;
    if (!--v11)
    {
      goto LABEL_29;
    }
  }

  v35 = [v32 error];
  if (v35)
  {
    v36 = v35;
    if (*(v12 + 240) != -1)
    {
      swift_once();
    }

    v37 = sub_2531DA274();
    __swift_project_value_buffer(v37, qword_27F59A2A8);
    v5 = v36;
    v38 = sub_2531DA254();
    v39 = sub_2531DAA84();

    if (os_log_type_enabled(v38, v39))
    {
      v65 = v11;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v66[0] = v68;
      *v40 = 136315394;
      LOWORD(v67[0]) = v7;
      *(v67 + 4) = __PAIR64__(v6, v63);
      v42 = sub_2531DA6F4();
      v44 = sub_253196608(v42, v43, v66);
      v6 = a2;

      *(v40 + 4) = v44;
      v7 = v62;
      *(v40 + 12) = 2112;
      v45 = v5;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v46;
      *v41 = v46;
      _os_log_impl(&dword_253166000, v38, v39, "Got an error while reading %s: %@", v40, 0x16u);
      sub_25316FD44(v41);
      v47 = v41;
      v12 = 0x27F58D000;
      MEMORY[0x259BFFA80](v47, -1, -1);
      v48 = v68;
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x259BFFA80](v48, -1, -1);
      v49 = v40;
      v11 = v65;
      MEMORY[0x259BFFA80](v49, -1, -1);
    }

    swift_willThrow();
LABEL_11:
    v68 = 0;
LABEL_12:
    if (*(v12 + 240) != -1)
    {
      swift_once();
    }

    v28 = sub_2531DA274();
    __swift_project_value_buffer(v28, qword_27F59A2A8);
    v29 = v5;
    v30 = sub_2531DA254();
    v31 = sub_2531DAA84();

    if (os_log_type_enabled(v30, v31))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v64 = v11;
      *&v66[0] = swift_slowAlloc();
      v16 = *&v66[0];
      *v14 = 138412546;
      v17 = v5;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v18;
      *v15 = v18;
      *(v14 + 12) = 2080;
      LOWORD(v67[0]) = v7;
      *(v67 + 4) = __PAIR64__(v6, v63);
      v19 = sub_2531DA6F4();
      v21 = sub_253196608(v19, v20, v66);
      v7 = v62;

      *(v14 + 14) = v21;
      v6 = a2;
      _os_log_impl(&dword_253166000, v30, v31, "Caught the exception %@ while converting the response to %s.", v14, 0x16u);
      sub_25316FD44(v15);
      v22 = v15;
      v12 = 0x27F58D000uLL;
      MEMORY[0x259BFFA80](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v16);
      v23 = v16;
      v11 = v64;
      MEMORY[0x259BFFA80](v23, -1, -1);
      MEMORY[0x259BFFA80](v14, -1, -1);
    }

    else
    {
    }

    v5 = v68;
    goto LABEL_9;
  }

  if ([v32 value])
  {
    sub_2531DAB44();
    swift_unknownObjectRelease();
    sub_25318306C(v66, v67);
  }

  else
  {
    memset(v67, 0, sizeof(v67));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D958, &qword_2531E55E0);
  sub_253181ED8(0, &qword_27F58D978, 0x277CCABB0);
  if (!swift_dynamicCast())
  {
    sub_25318DD6C();
    v5 = swift_allocError();
    *v50 = 4;
    swift_willThrow();

    v68 = 0;
    v7 = v62;
    goto LABEL_12;
  }

  return *&v66[0];
}

uint64_t sub_25318B1C8(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = v6;
  v8 = a2;
  v9 = a1;
  v10 = a4 + 40;
  v11 = *(a4 + 16) + 1;
  do
  {
    if (!--v11)
    {
      goto LABEL_35;
    }

    v12 = v10;
    v10 += 12;
  }

  while (*(v12 - 8) != a1 || *(v12 - 4) != __PAIR64__(a2, HIDWORD(a1)));
  v67 = HIDWORD(a1);
  v13 = *(a3 + 16);
  v14 = 0x27F58D000uLL;
  if (!v13)
  {
LABEL_30:
    if (*(v14 + 240) != -1)
    {
      swift_once();
    }

    v53 = sub_2531DA274();
    __swift_project_value_buffer(v53, qword_27F59A2A8);
    v54 = sub_2531DA254();
    v55 = sub_2531DAA84();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v70[0] = v57;
      *v56 = 136315138;
      LOWORD(v71[0]) = v9;
      *(v71 + 4) = __PAIR64__(v8, v67);
      v58 = sub_2531DA6F4();
      v60 = sub_253196608(v58, v59, v70);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_253166000, v54, v55, "Did not find read response for %s.", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x259BFFA80](v57, -1, -1);
      MEMORY[0x259BFFA80](v56, -1, -1);
    }

LABEL_35:
    sub_25318DD6C();
    swift_allocError();
    *v61 = 11;
    return swift_willThrow();
  }

  v15 = a3 + 32;
  v66 = a1;
  while (1)
  {

    v27 = sub_253180BA0(v26);

    v28 = objc_allocWithZone(MEMORY[0x277CD51C8]);
    v29 = sub_25318CD38(v27);
    if (v7)
    {
      v72 = 0;
      goto LABEL_26;
    }

    v30 = v29;
    v31 = [v29 path];
    LOWORD(v71[0]) = v9;
    *(v71 + 4) = __PAIR64__(v8, v67);
    v32 = _s23HomeKitDaemonFoundation3MTRO9AttributeO4PathV6isSame4path03mtrG0SbAG_So012MTRAttributeG0CtFZ_0(v71, v31);

    if (v32)
    {
      break;
    }

LABEL_9:
    v15 += 8;
    if (!--v13)
    {
      goto LABEL_30;
    }
  }

  v33 = [v30 error];
  if (v33)
  {
    v34 = v33;
    if (*(v14 + 240) != -1)
    {
      swift_once();
    }

    v35 = sub_2531DA274();
    __swift_project_value_buffer(v35, qword_27F59A2A8);
    v7 = v34;
    v36 = sub_2531DA254();
    v37 = sub_2531DAA84();

    if (os_log_type_enabled(v36, v37))
    {
      v69 = v13;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v70[0] = v72;
      *v38 = 136315394;
      LOWORD(v71[0]) = v66;
      *(v71 + 4) = __PAIR64__(v8, v67);
      v40 = sub_2531DA6F4();
      v42 = sub_253196608(v40, v41, v70);
      v8 = a2;

      *(v38 + 4) = v42;
      *(v38 + 12) = 2112;
      v43 = v7;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v44;
      *v39 = v44;
      _os_log_impl(&dword_253166000, v36, v37, "Got an error while reading %s: %@", v38, 0x16u);
      sub_25316FD44(v39);
      v45 = v39;
      v14 = 0x27F58D000;
      MEMORY[0x259BFFA80](v45, -1, -1);
      v46 = v72;
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x259BFFA80](v46, -1, -1);
      v47 = v38;
      v13 = v69;
      MEMORY[0x259BFFA80](v47, -1, -1);
    }

LABEL_25:
    swift_willThrow();

    v72 = 0;
    v9 = v66;
LABEL_26:
    if (*(v14 + 240) != -1)
    {
      swift_once();
    }

    v49 = sub_2531DA274();
    __swift_project_value_buffer(v49, qword_27F59A2A8);
    v50 = v7;
    v51 = sub_2531DA254();
    v52 = sub_2531DAA84();

    if (os_log_type_enabled(v51, v52))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v68 = v13;
      *&v70[0] = swift_slowAlloc();
      v18 = *&v70[0];
      *v16 = 138412546;
      v19 = v7;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v20;
      *v17 = v20;
      *(v16 + 12) = 2080;
      LOWORD(v71[0]) = v9;
      *(v71 + 4) = __PAIR64__(v8, v67);
      v21 = sub_2531DA6F4();
      v23 = sub_253196608(v21, v22, v70);
      v9 = v66;

      *(v16 + 14) = v23;
      v8 = a2;
      _os_log_impl(&dword_253166000, v51, v52, "Caught the exception %@ while converting the response to %s.", v16, 0x16u);
      sub_25316FD44(v17);
      v24 = v17;
      v14 = 0x27F58D000uLL;
      MEMORY[0x259BFFA80](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v25 = v18;
      v13 = v68;
      MEMORY[0x259BFFA80](v25, -1, -1);
      MEMORY[0x259BFFA80](v16, -1, -1);
    }

    else
    {
    }

    v7 = v72;
    goto LABEL_9;
  }

  if ([v30 value])
  {
    sub_2531DAB44();
    swift_unknownObjectRelease();
    sub_25318306C(v70, v71);
  }

  else
  {
    memset(v71, 0, sizeof(v71));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D958, &qword_2531E55E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (!swift_dynamicCast())
  {
    sub_25318DD6C();
    v7 = swift_allocError();
    *v48 = 4;
    goto LABEL_25;
  }

  return *&v70[0];
}

uint64_t MTR.Cluster.RVCCleanMode.label.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

BOOL sub_25318B8EC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_2531DB3F4();
  sub_2531DB434();
  v4 = sub_2531DB454();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_25318B9E4(char a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  if (!sub_253167838(a1, v4))
  {
    return 0;
  }

  return sub_25318CE20(a2, v4);
}

void *MTR.Cluster.RVCCleanMode.primaryTags.getter()
{
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 24);
  v2 = *(v1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = 8 * v4;

  if (v3 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    MEMORY[0x28223BE20](v6);
    bzero(v21 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0), v5);
    v7 = 0;
    v8 = 0;
    v9 = 1 << *(v1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v1 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_12:
      if (*(*(v1 + 48) + v14) >= 0xBu)
      {
        *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v14;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
          return sub_25318D118((v21 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)), v4, v7, v1);
        }
      }
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_25318D118((v21 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)), v4, v7, v1);
      }

      v16 = *(v1 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

  v19 = swift_slowAlloc();

  v20 = sub_25318D088(v19, v4, v1, sub_25318BCA4);
  swift_bridgeObjectRelease_n();
  MEMORY[0x259BFFA80](v19, -1, -1);
  return v20;
}

void *MTR.Cluster.RVCCleanMode.secondaryTags.getter()
{
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 24);
  v2 = *(v1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = 8 * v4;

  if (v3 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    MEMORY[0x28223BE20](v6);
    bzero(v21 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0), v5);
    v7 = 0;
    v8 = 0;
    v9 = 1 << *(v1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v1 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_12:
      if (*(*(v1 + 48) + v14) <= 0xAu)
      {
        *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v14;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
          return sub_25318D118((v21 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)), v4, v7, v1);
        }
      }
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_25318D118((v21 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)), v4, v7, v1);
      }

      v16 = *(v1 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

  v19 = swift_slowAlloc();

  v20 = sub_25318D088(v19, v4, v1, sub_25318BF10);
  swift_bridgeObjectRelease_n();
  MEMORY[0x259BFFA80](v19, -1, -1);
  return v20;
}

double static MTR.Cluster.RVCCleanMode.attributePaths(endpoint:)(__int16 *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1E8, &qword_2531E1490);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2531E53E0;
  *(v2 + 32) = v1;
  *(v2 + 36) = 0x100000055;
  *(v2 + 44) = v1;
  *&result = 85;
  *(v2 + 48) = 85;
  return result;
}

double static MTR.Cluster.RVCCleanMode.currentModeAttributePath(endpoint:)@<D0>(_WORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *&result = 0x100000055;
  *(a2 + 4) = 0x100000055;
  return result;
}

double static MTR.Cluster.RVCCleanMode.supportedModesAttributePath(endpoint:)@<D0>(_WORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *&result = 85;
  *(a2 + 4) = 85;
  return result;
}

uint64_t static MTR.Cluster.RVCCleanMode.currentRunModeFrom(batchReadResult:endpoint:)@<X0>(uint64_t *a1@<X0>, unsigned __int16 *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = sub_25318AA74(*a2 | 0x5500000000, 1u, *a1, a1[1]);
  v5 = [v4 unsignedShortValue];

  return MTR.Cluster.RVCCleanMode.CleanModeType.init(rawValue:)(v5, a3);
}

uint64_t MTR.Cluster.RVCCleanMode.CleanModeType.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result <= 5u)
  {
    goto LABEL_7;
  }

  if (result <= 8u)
  {
    if (result == 6 || result == 7 || result == 8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (result <= 0x4000u)
    {
      if (result != 9)
      {
        if (result == 0x4000)
        {
          *a2 = 10;
          return result;
        }

        goto LABEL_16;
      }

LABEL_7:
      *a2 = result;
      return result;
    }

    if (result == 16385)
    {
      *a2 = 11;
      return result;
    }

    if (result == 16386)
    {
      *a2 = 12;
      return result;
    }
  }

LABEL_16:
  *a2 = 13;
  return result;
}

uint64_t static MTR.Cluster.RVCCleanMode.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a2[3];
  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (sub_2531DB144() & 1) == 0)
  {
    return 0;
  }

  return sub_253167918(v2, v3);
}

uint64_t sub_25318C310(uint64_t result, uint64_t a2, uint64_t (*a3)(void, void), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = 0;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(result + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a2 + 56;
  v30 = a3;
  v31 = result;
  v28 = v10;
  v29 = result + 56;
  if (v9)
  {
    while (1)
    {
      v12 = a3;
      v13 = __clz(__rbit64(v9));
      v32 = (v9 - 1) & v9;
LABEL_13:
      v16 = (*(result + 48) + 32 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v20 = v16[3];
      sub_2531DB3F4();
      MEMORY[0x259BFF230](v17);

      sub_2531DA734();
      v12(v34, v20);
      v21 = sub_2531DB454();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v11 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = (*(a2 + 48) + 32 * v23);
        if (*v25 == v17)
        {
          v26 = v25[3];
          v27 = v25[1] == v18 && v25[2] == v19;
          if (v27 || (sub_2531DB144()) && (a4(v26, v20))
          {
            break;
          }
        }

        v23 = (v23 + 1) & v24;
        if (((*(v11 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      a3 = v30;
      result = v31;
      v10 = v28;
      v6 = v29;
      v9 = v32;
      if (!v32)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return 1;
    }

    v15 = *(v6 + 8 * v5);
    ++v14;
    if (v15)
    {
      v12 = a3;
      v13 = __clz(__rbit64(v15));
      v32 = (v15 - 1) & v15;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t MTR.Cluster.RVCCleanMode.hash(into:)(__int128 *a1)
{
  v3 = v1[3];
  MEMORY[0x259BFF230](*v1);
  sub_2531DA734();

  return sub_253167A9C(a1, v3);
}

uint64_t MTR.Cluster.RVCCleanMode.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[3];
  sub_2531DB3F4();
  MEMORY[0x259BFF230](v1);
  sub_2531DA734();
  sub_253167A9C(v4, v2);
  return sub_2531DB454();
}

uint64_t sub_25318C640()
{
  v1 = *v0;
  v2 = v0[3];
  sub_2531DB3F4();
  MEMORY[0x259BFF230](v1);
  sub_2531DA734();
  sub_253167A9C(v4, v2);
  return sub_2531DB454();
}

uint64_t sub_25318C6B8(__int128 *a1)
{
  v3 = v1[3];
  MEMORY[0x259BFF230](*v1);
  sub_2531DA734();

  return sub_253167A9C(a1, v3);
}

uint64_t sub_25318C720(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[3];
  sub_2531DB3F4();
  MEMORY[0x259BFF230](v2);
  sub_2531DA734();
  sub_253167A9C(v5, v3);
  return sub_2531DB454();
}

uint64_t sub_25318C794(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a2[3];
  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (sub_2531DB144() & 1) == 0)
  {
    return 0;
  }

  return sub_253167918(v2, v3);
}

uint64_t sub_25318C870()
{
  sub_2531DB3F4();
  sub_2531DB424();
  return sub_2531DB454();
}

uint64_t sub_25318C8F8(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DB424();
  return sub_2531DB454();
}

uint64_t sub_25318CA0C(__int128 *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4 = a1[3];
  v25 = a1[2];
  v26 = v4;
  v27 = *(a1 + 8);
  v5 = a1[1];
  v23 = *a1;
  v24 = v5;
  sub_2531DB454();
  v6 = a2 + 56;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 56);
  v10 = (v7 + 63) >> 6;
  v21 = a2;

  v12 = 0;
  for (i = 0; v9; v12 ^= v19)
  {
    v14 = i;
LABEL_9:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = (*(v21 + 48) + ((v14 << 11) | (32 * v15)));
    v17 = *v16;
    v18 = v16[3];
    sub_2531DB3F4();
    MEMORY[0x259BFF230](v17);

    sub_2531DA734();
    a3(v22, v18);
    v19 = sub_2531DB454();
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return MEMORY[0x259BFF230](v12);
    }

    v9 = *(v6 + 8 * v14);
    ++i;
    if (v9)
    {
      i = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25318CBA8(__int128 *a1, uint64_t a2)
{
  sub_2531DB454();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_10:
    v12 = *(*(a2 + 48) + 24 * (__clz(__rbit64(v5)) | (v9 << 6)) + 16);
    sub_2531DB3F4();
    sub_2531DB414();
    sub_2531DB414();
    if (v12)
    {

      sub_2531DA734();
    }

    v5 &= v5 - 1;
    v10 = sub_2531DB454();

    v8 ^= v10;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return MEMORY[0x259BFF230](v8);
    }

    v5 = *(a2 + 56 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id sub_25318CD38(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2531DA604();

  v7[0] = 0;
  v3 = [v1 initWithResponseValue:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_2531DA0B4();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_25318CE20(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      v7 = *(v5 + v4);
      sub_2531DB3F4();
      v8 = word_2531E5612[v7];
      sub_2531DB424();
      v9 = sub_2531DB454();
      v10 = -1 << *(a2 + 32);
      v11 = v9 & ~v10;
      if ((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v12 = ~v10;
  while (word_2531E5612[*(*(a2 + 48) + v11)] != v8)
  {
    v11 = (v11 + 1) & v12;
    if (((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_25318CF40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_25318D118(v20, a2, v7, a3);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_25318D088(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_25318CF40(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_25318D118(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D988, &qword_2531E5608);
  result = sub_2531DABA4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_2531DB3F4();
    sub_2531DB424();
    result = sub_2531DB454();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t _s23HomeKitDaemonFoundation3MTRO7ClusterO12RVCCleanModeV07toCleanH4Type4fromShyAG0jhK0OGSayypG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = MEMORY[0x277D84F90];
LABEL_44:
    v10 = sub_2531C2AC4(v3);

    return v10;
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  v4 = 0x279719000uLL;
  while (1)
  {
    sub_25317E5F0(v2, v14);
    sub_25317E5F0(v14, &v12);
    sub_253181ED8(0, &qword_27F58D990, 0x277CD54A0);
    if (!swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
      goto LABEL_4;
    }

    v5 = [v11 *(v4 + 3592)];
    v12 = 0;
    v13 = 1;
    sub_2531DAA14();

    result = __swift_destroy_boxed_opaque_existential_1(v14);
    if (v13)
    {
      goto LABEL_4;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v12 >> 16)
    {
      goto LABEL_46;
    }

    if (v12 <= 5u)
    {
      if (v12 <= 2u)
      {
        if (v12)
        {
          if (v12 == 1)
          {
            v7 = 1;
          }

          else
          {
            v7 = 2;
          }
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_38;
      }

      switch(v12)
      {
        case 3u:
          v7 = 3;
          goto LABEL_38;
        case 4u:
          v7 = 4;
          goto LABEL_38;
        case 5u:
          v7 = 5;
          goto LABEL_38;
      }
    }

    else if (v12 <= 8u)
    {
      switch(v12)
      {
        case 6u:
          v7 = 6;
          goto LABEL_38;
        case 7u:
          v7 = 7;
          goto LABEL_38;
        case 8u:
          v7 = 8;
          goto LABEL_38;
      }
    }

    else if (v12 > 0x4000u)
    {
      if (v12 == 16385)
      {
        v7 = 11;
        goto LABEL_38;
      }

      if (v12 == 16386)
      {
        v7 = 12;
        goto LABEL_38;
      }
    }

    else
    {
      if (v12 == 9)
      {
        v7 = 9;
        goto LABEL_38;
      }

      if (v12 == 0x4000)
      {
        v7 = 10;
LABEL_38:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_25316A4F0(0, *(v3 + 2) + 1, 1, v3);
        }

        v9 = *(v3 + 2);
        v8 = *(v3 + 3);
        if (v9 >= v8 >> 1)
        {
          v3 = sub_25316A4F0((v8 > 1), v9 + 1, 1, v3);
        }

        *(v3 + 2) = v9 + 1;
        v3[v9 + 32] = v7;
        v4 = 0x279719000;
      }
    }

LABEL_4:
    v2 += 32;
    if (!--v1)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_25318D5E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (*(a2 + 16))
  {
    v7 = *(v5 + v4);
    sub_2531DB3F4();
    v8 = word_2531E5612[v7];
    sub_2531DB424();
    v9 = sub_2531DB454();
    v10 = -1 << *(a2 + 32);
    v11 = v9 & ~v10;
    if (((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      break;
    }

    ++v4;
    v12 = ~v10;
    while (word_2531E5612[*(*(a2 + 48) + v11)] != v8)
    {
      v11 = (v11 + 1) & v12;
      if (((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        return 0;
      }
    }

    if (v4 == v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s23HomeKitDaemonFoundation3MTRO7ClusterO12RVCCleanModeV17allCleanModesFrom15batchReadResult8endpointShyAGGSgAC9AttributeO05BatchnO0V_AC8EndpointO2IDVtFZ_0(uint64_t *a1, unsigned __int16 *a2)
{
  v2 = sub_25318B1C8(*a2 | 0x5500000000, 0, *a1, a1[1], &qword_27F58D980, &qword_2531E5600);
  v11 = v2;
  if (!(v2 >> 62))
  {
    v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_24:
    v14 = MEMORY[0x277D84F90];
LABEL_25:

    v33 = sub_2531C2AF8(v14);

    return v33;
  }

  v12 = sub_2531DAD44();
  if (!v12)
  {
    goto LABEL_24;
  }

LABEL_6:
  v13 = 0;
  v35 = v11 & 0xFFFFFFFFFFFFFF8;
  v36 = v11 & 0xC000000000000001;
  v14 = MEMORY[0x277D84F90];
  v34 = v11;
  while (1)
  {
    if (v36)
    {
      v15 = MEMORY[0x259BFEA20](v13, v11);
    }

    else
    {
      if (v13 >= *(v35 + 16))
      {
        goto LABEL_22;
      }

      v15 = *(v11 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    v18 = v12;
    v19 = [v15 mode];
    v20 = [v19 unsignedIntegerValue];

    v21 = [v16 label];
    v22 = sub_2531DA6D4();
    v24 = v23;

    v25 = [v16 modeTags];
    v26 = sub_2531DA8A4();

    v27 = _s23HomeKitDaemonFoundation3MTRO7ClusterO12RVCCleanModeV07toCleanH4Type4fromShyAG0jhK0OGSayypG_tFZ_0(v26);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_25316A504(0, *(v14 + 2) + 1, 1, v14);
    }

    v29 = *(v14 + 2);
    v28 = *(v14 + 3);
    if (v29 >= v28 >> 1)
    {
      v14 = sub_25316A504((v28 > 1), v29 + 1, 1, v14);
    }

    *(v14 + 2) = v29 + 1;
    v30 = &v14[32 * v29];
    *(v30 + 4) = v20;
    *(v30 + 5) = v22;
    *(v30 + 6) = v24;
    *(v30 + 7) = v27;
    ++v13;
    v12 = v18;
    v31 = v17 == v18;
    v11 = v34;
    if (v31)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  swift_once();
  v3 = sub_2531DA274();
  __swift_project_value_buffer(v3, qword_27F59A2A8);
  v4 = v14;
  v5 = sub_2531DA254();
  v6 = sub_2531DAA84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v14;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_253166000, v5, v6, "Error occurred while parsing run mode response: %@", v7, 0xCu);
    sub_25316FD44(v8);
    MEMORY[0x259BFFA80](v8, -1, -1);
    MEMORY[0x259BFFA80](v7, -1, -1);
  }

  else
  {
  }

  return 0;
}

unint64_t sub_25318DA78()
{
  result = qword_27F58D938;
  if (!qword_27F58D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D938);
  }

  return result;
}

unint64_t sub_25318DAD0()
{
  result = qword_27F58D940;
  if (!qword_27F58D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D940);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25318DB30(uint64_t a1, int a2)
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

uint64_t sub_25318DB78(uint64_t result, int a2, int a3)
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

uint64_t _s12RVCCleanModeV13CleanModeTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s12RVCCleanModeV13CleanModeTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25318DD18()
{
  result = qword_27F58D948;
  if (!qword_27F58D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D948);
  }

  return result;
}

unint64_t sub_25318DD6C()
{
  result = qword_27F58D950;
  if (!qword_27F58D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D950);
  }

  return result;
}

void *sub_25318DDCC(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_253169F70(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D198, &qword_2531E1450);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_25318DED4(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_25316A868(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[12 * v7 + 32], v6 + 32, 12 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25318DFC8()
{
  result = sub_2531DAA04();
  qword_27F59A2A0 = result;
  return result;
}

uint64_t MTR.RVCDevice.currentServiceArea.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t MTR.RVCDevice.allRunningModes.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t MTR.RVCDevice.allCleaningModes.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t MTR.RVCDevice.allOperationalStates.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t MTR.RVCDevice.allSupportedClusterIDs.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

void MTR.RVCDevice.firstIdleRunningMode.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    v4 = 0;
    v5 = 1 << *(v3 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v3 + 56);
    v8 = (v5 + 63) >> 6;
LABEL_6:
    while (v7)
    {
LABEL_11:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(v3 + 48) + ((v4 << 11) | (32 * v10));
      v12 = *(v11 + 24);
      if (*(v12 + 16))
      {
        v18 = *v11;
        v13 = *(v11 + 16);
        sub_2531DB3F4();
        sub_2531DB424();
        v14 = sub_2531DB454();
        v15 = -1 << *(v12 + 32);
        v16 = v14 & ~v15;
        if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          while (*(*(v12 + 48) + v16) != 10)
          {
            v16 = (v16 + 1) & v17;
            if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          *a1 = v18;
          *(a1 + 16) = v13;
          *(a1 + 24) = v12;

          return;
        }
      }
    }

    while (1)
    {
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v9 >= v8)
      {
        goto LABEL_17;
      }

      v7 = *(v3 + 56 + 8 * v9);
      ++v4;
      if (v7)
      {
        v4 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

void MTR.RVCDevice.firstCleaningRunningMode.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    v4 = 0;
    v5 = 1 << *(v3 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v3 + 56);
    v8 = (v5 + 63) >> 6;
LABEL_6:
    while (v7)
    {
LABEL_11:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(v3 + 48) + ((v4 << 11) | (32 * v10));
      v12 = *(v11 + 24);
      if (*(v12 + 16))
      {
        v18 = *v11;
        v13 = *(v11 + 16);
        sub_2531DB3F4();
        sub_2531DB424();
        v14 = sub_2531DB454();
        v15 = -1 << *(v12 + 32);
        v16 = v14 & ~v15;
        if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          while (*(*(v12 + 48) + v16) != 11)
          {
            v16 = (v16 + 1) & v17;
            if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          *a1 = v18;
          *(a1 + 16) = v13;
          *(a1 + 24) = v12;

          return;
        }
      }
    }

    while (1)
    {
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v9 >= v8)
      {
        goto LABEL_17;
      }

      v7 = *(v3 + 56 + 8 * v9);
      ++v4;
      if (v7)
      {
        v4 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

void MTR.RVCDevice.firstVacuumCleaningMode.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 80);
  if (v2)
  {
    v23 = *(v1 + 80);
    v24 = a1;
    v3 = 0;
    v4 = v2 + 56;
    v5 = 1 << *(v2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v2 + 56);
    v8 = (v5 + 63) >> 6;
LABEL_6:
    while (v7)
    {
LABEL_11:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(v2 + 48) + ((v3 << 11) | (32 * v10));
      v12 = *(v11 + 24);
      if (*(v12 + 16))
      {
        v25 = *v11;
        v26 = *(v11 + 16);
        sub_2531DB3F4();
        sub_2531DB424();
        v13 = sub_2531DB454();
        v14 = v12 + 56;
        v15 = -1 << *(v12 + 32);
        v16 = v13 & ~v15;
        if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          v18 = *(v12 + 48);
          while (*(v18 + v16) != 11)
          {
            v16 = (v16 + 1) & v17;
            if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
LABEL_16:
              v2 = v23;
              goto LABEL_6;
            }
          }

          v19 = byte_2864F0FE0;
          sub_2531DB3F4();
          v20 = word_2531E582A[v19];
          sub_2531DB424();
          for (i = sub_2531DB454() & v17; ((*(v14 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v17)
          {
            if (word_2531E582A[*(v18 + i)] == v20)
            {
              goto LABEL_16;
            }
          }

          *v24 = v25;
          *(v24 + 2) = v26;
          *(v24 + 3) = v12;

          return;
        }
      }
    }

    while (1)
    {
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v9 >= v8)
      {
        v22 = 0uLL;
        a1 = v24;
        goto LABEL_23;
      }

      v7 = *(v4 + 8 * v9);
      ++v3;
      if (v7)
      {
        v3 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v22 = 0uLL;
LABEL_23:
    *a1 = v22;
    a1[1] = v22;
  }
}