uint64_t sub_239825B60(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_239825C0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_239825CB0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_239825CE8()
{
  v1 = (type metadata accessor for MatterAddDeviceRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v7 = sub_239856AF4();
        (*(*(v7 - 8) + 8))(v5, v7);
        break;
      case 6:

        break;
      case 7:
        sub_2398282D8(*v5, *(v5 + 8));
        break;
    }
  }

  else if (EnumCaseMultiPayload <= 2)
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_239825E80()
{
  v1 = sub_239856B64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_239825F4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_239825F9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_239825FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4C0, &qword_23985A5D8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2398260B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4C0, &qword_23985A5D8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_239826188()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2398261D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_239826210()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

double static MatterAddDeviceExtensionRequestHandler.WiFiNetworkAssociation.defaultSystemNetwork.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_2398599A0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

void static MatterAddDeviceExtensionRequestHandler.WiFiNetworkAssociation.network(ssid:credentials:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  sub_239826330(a1, a2);

  sub_239826330(a3, a4);
}

void sub_239826330(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_239826384()
{
  if (*v0)
  {
    return 0x6B726F7774656ELL;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_2398263C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000023985CC30 == a2 || (sub_239857054() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6B726F7774656ELL && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_239857054();

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

uint64_t sub_2398264B8(uint64_t a1)
{
  v2 = sub_2398288E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2398264F4(uint64_t a1)
{
  v2 = sub_2398288E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239826530(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v27 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C298, &qword_239859F90);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v24 = &v21 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C2A0, &qword_239859F98);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C2A8, &qword_239859FA0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2398288E0();
  v16 = v27;
  sub_239857144();
  if (v16 >> 60 == 15)
  {
    LOBYTE(v29) = 0;
    sub_2398289DC();
    sub_239856FA4();
    (*(v9 + 8))(v11, v8);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    LOBYTE(v29) = 1;
    sub_239828934();
    v18 = v24;
    sub_239856FA4();
    v29 = v23;
    v30 = v16;
    v31 = 0;
    sub_239828988();
    v19 = v26;
    v20 = v28;
    sub_239856FE4();
    if (!v20)
    {
      v29 = v21;
      v30 = v22;
      v31 = 1;
      sub_239856FE4();
    }

    (*(v25 + 8))(v18, v19);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_2398268B0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2398268E0(uint64_t a1)
{
  v2 = sub_2398289DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23982691C(uint64_t a1)
{
  v2 = sub_2398289DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239826958()
{
  v1 = *v0;
  sub_239857094();
  MEMORY[0x23EE790C0](v1);
  return sub_2398570E4();
}

uint64_t sub_2398269A0(uint64_t a1)
{
  v2 = *v1;
  sub_239857094();
  MEMORY[0x23EE790C0](v2);
  return sub_2398570E4();
}

uint64_t sub_2398269E4()
{
  if (*v0)
  {
    return 0x69746E6564657263;
  }

  else
  {
    return 1684632435;
  }
}

uint64_t sub_239826A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632435 && a2 == 0xE400000000000000;
  if (v5 || (sub_239857054() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_239857054();

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

uint64_t sub_239826B00(uint64_t a1)
{
  v2 = sub_239828934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239826B3C(uint64_t a1)
{
  v2 = sub_239828934();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_239826B78@<X0>(char **a1@<X8>, void *a2@<X0>)
{
  result = sub_239827924(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

BOOL sub_239826BC8(_BOOL8 *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 >> 60 == 15)
  {
    return v4 >> 60 == 15;
  }

  if (v4 >> 60 == 15)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[2];
  v9 = a2[3];
  if (!sub_239827F9C(*a1, v3, *a2, v4))
  {
    return 0;
  }

  return sub_239827F9C(v6, v7, v8, v9);
}

uint64_t static MatterAddDeviceExtensionRequestHandler.WiFiNetworkAssociation.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 >> 60 == 15)
  {
    if (v4 >> 60 == 15)
    {
      return 1;
    }
  }

  else if (v4 >> 60 != 15)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = a2[2];
    v9 = a2[3];
    if (sub_239827F9C(*a1, v3, *a2, v4) && sub_239827F9C(v6, v7, v8, v9))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_239826D10()
{
  sub_239857094();
  MEMORY[0x23EE790C0](0);
  return sub_2398570E4();
}

uint64_t sub_239826D54(uint64_t a1)
{
  sub_239857094();
  MEMORY[0x23EE790C0](0);
  return sub_2398570E4();
}

uint64_t sub_239826DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000023985CBE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_239857054();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_239826E44(uint64_t a1)
{
  v2 = sub_2398281E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239826E80(uint64_t a1)
{
  v2 = sub_2398281E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiNetworkAssociation.encode(to:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C238, &qword_2398599B0);
  v16 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v4 = &v11 - v3;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_239828190(v5, v6, v7, v8);
  sub_2398281E0();
  sub_239857144();
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  sub_239828234();
  v9 = v11;
  sub_239856FE4();
  sub_239828288(v12, v13, v14, v15);
  return (*(v16 + 8))(v4, v9);
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiNetworkAssociation.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8) >> 60 == 15)
  {
    return MEMORY[0x23EE790C0](0);
  }

  MEMORY[0x23EE790C0](1);
  sub_239856AC4();

  return sub_239856AC4();
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiNetworkAssociation.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_239857094();
  if (v1 >> 60 == 15)
  {
    MEMORY[0x23EE790C0](0);
  }

  else
  {
    MEMORY[0x23EE790C0](1);
    sub_239856AC4();
    sub_239856AC4();
  }

  return sub_2398570E4();
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiNetworkAssociation.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C250, &qword_2398599B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2398281E0();
  sub_239857134();
  if (!v2)
  {
    sub_239828378();
    sub_239856F44();
    (*(v6 + 8))(v8, v5);
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2398272DC()
{
  v1 = *(v0 + 8);
  sub_239857094();
  if (v1 >> 60 == 15)
  {
    MEMORY[0x23EE790C0](0);
  }

  else
  {
    MEMORY[0x23EE790C0](1);
    sub_239856AC4();
    sub_239856AC4();
  }

  return sub_2398570E4();
}

uint64_t sub_239827370(uint64_t a1)
{
  if (*(v1 + 8) >> 60 == 15)
  {
    return MEMORY[0x23EE790C0](0);
  }

  MEMORY[0x23EE790C0](1);
  sub_239856AC4();

  return sub_239856AC4();
}

uint64_t sub_239827410(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_239857094();
  if (v2 >> 60 == 15)
  {
    MEMORY[0x23EE790C0](0);
  }

  else
  {
    MEMORY[0x23EE790C0](1);
    sub_239856AC4();
    sub_239856AC4();
  }

  return sub_2398570E4();
}

uint64_t sub_2398274D0(_BOOL8 *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 >> 60 == 15)
  {
    if (v4 >> 60 == 15)
    {
      return 1;
    }
  }

  else if (v4 >> 60 != 15)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = a2[2];
    v9 = a2[3];
    if (sub_239827F9C(*a1, v3, *a2, v4) && sub_239827F9C(v6, v7, v8, v9))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_239827564@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_2398569F4();
    if (v10)
    {
      v11 = sub_239856A14();
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
      result = sub_239856A04();
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
  v10 = sub_2398569F4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_239856A14();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_239856A04();
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

uint64_t sub_239827794(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_239827EE4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2398282D8(a3, a4);
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
  sub_239827564(v13, a3, a4, &v12);
  v10 = v4;
  sub_2398282D8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

char *sub_239827924(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C2C8, &qword_239859FA8);
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C2D0, &qword_239859FB0);
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C2D8, &qword_239859FB8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2398288E0();
  v14 = v30;
  sub_239857134();
  if (!v14)
  {
    v15 = v29;
    v30 = v10;
    v16 = sub_239856F94();
    v17 = (2 * *(v16 + 16)) | 1;
    v34 = v16;
    v35 = v16 + 32;
    v36 = 0;
    v37 = v17;
    v18 = sub_2398383C8();
    if (v18 == 2 || v36 != v37 >> 1)
    {
      v20 = sub_239856E44();
      swift_allocError();
      v22 = v21;
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C2E0, &unk_239859FC0) + 48);
      *v22 = &_s22WiFiNetworkAssociationV18AssociationDetailsON;
      sub_239856EF4();
      sub_239856E34();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      LOBYTE(v33) = 1;
      sub_239828934();
      sub_239856EE4();
      v19 = v30;
      v29 = v12;
      LOBYTE(v32) = 0;
      sub_239828A30();
      v25 = v27;
      sub_239856F44();
      v8 = v33;
      v38 = 1;
      sub_239856F44();
      (*(v28 + 8))(v5, v25);
      (*(v19 + 8))(v29, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v33) = 0;
      sub_2398289DC();
      sub_239856EE4();
      v24 = v30;
      (*(v15 + 1))(v8, v6);
      (*(v24 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v8 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v8;
}

uint64_t sub_239827EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2398569F4();
  v11 = result;
  if (result)
  {
    result = sub_239856A14();
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

  sub_239856A04();
  sub_239827564(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_239827F9C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_239826330(a3, a4);
          return sub_239827794(v13, a2, a3, a4) & 1;
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_239828190(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_239826330(a1, a2);

    sub_239826330(a3, a4);
  }
}

unint64_t sub_2398281E0()
{
  result = qword_27DF7C240;
  if (!qword_27DF7C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C240);
  }

  return result;
}

unint64_t sub_239828234()
{
  result = qword_27DF7C248;
  if (!qword_27DF7C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C248);
  }

  return result;
}

uint64_t sub_239828288(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_2398282D8(result, a2);

    return sub_2398282D8(a3, a4);
  }

  return result;
}

uint64_t sub_2398282D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_239828378()
{
  result = qword_27DF7C258;
  if (!qword_27DF7C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C258);
  }

  return result;
}

unint64_t sub_2398283D0()
{
  result = qword_27DF7C260;
  if (!qword_27DF7C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C260);
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

uint64_t get_enum_tag_for_layout_string_13MatterSupport0A32AddDeviceExtensionRequestHandlerC22WiFiNetworkAssociationV0K7DetailsO(uint64_t a1)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_239828474(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 32))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2398284D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void sub_239828558(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2398285A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 32))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2398285F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_239828650(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t _s22WiFiNetworkAssociationV10CodingKeysOwet(unsigned int *a1, int a2)
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

  return *a1;
}

_WORD *_s22WiFiNetworkAssociationV10CodingKeysOwst(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_239828784()
{
  result = qword_27DF7C278;
  if (!qword_27DF7C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C278);
  }

  return result;
}

unint64_t sub_2398287DC()
{
  result = qword_27DF7C280;
  if (!qword_27DF7C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C280);
  }

  return result;
}

unint64_t sub_239828834()
{
  result = qword_27DF7C288;
  if (!qword_27DF7C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C288);
  }

  return result;
}

unint64_t sub_23982888C()
{
  result = qword_27DF7C290;
  if (!qword_27DF7C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C290);
  }

  return result;
}

unint64_t sub_2398288E0()
{
  result = qword_27DF7C2B0;
  if (!qword_27DF7C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C2B0);
  }

  return result;
}

unint64_t sub_239828934()
{
  result = qword_27DF7C2B8;
  if (!qword_27DF7C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C2B8);
  }

  return result;
}

unint64_t sub_239828988()
{
  result = qword_27DF7C3A0;
  if (!qword_27DF7C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C3A0);
  }

  return result;
}

unint64_t sub_2398289DC()
{
  result = qword_27DF7C2C0;
  if (!qword_27DF7C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C2C0);
  }

  return result;
}

unint64_t sub_239828A30()
{
  result = qword_27DF7C370;
  if (!qword_27DF7C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C370);
  }

  return result;
}

uint64_t _s8TopologyV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s8TopologyV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_239828C04()
{
  result = qword_27DF7C2E8;
  if (!qword_27DF7C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C2E8);
  }

  return result;
}

unint64_t sub_239828C5C()
{
  result = qword_27DF7C2F0;
  if (!qword_27DF7C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C2F0);
  }

  return result;
}

unint64_t sub_239828CB4()
{
  result = qword_27DF7C2F8;
  if (!qword_27DF7C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C2F8);
  }

  return result;
}

unint64_t sub_239828D0C()
{
  result = qword_27DF7C300;
  if (!qword_27DF7C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C300);
  }

  return result;
}

unint64_t sub_239828D64()
{
  result = qword_27DF7C308;
  if (!qword_27DF7C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C308);
  }

  return result;
}

unint64_t sub_239828DBC()
{
  result = qword_27DF7C310;
  if (!qword_27DF7C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C310);
  }

  return result;
}

unint64_t sub_239828E14()
{
  result = qword_27DF7C318;
  if (!qword_27DF7C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C318);
  }

  return result;
}

unint64_t sub_239828E6C()
{
  result = qword_27DF7C320;
  if (!qword_27DF7C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C320);
  }

  return result;
}

uint64_t MatterAddDeviceRequest.topology.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 MatterAddDeviceRequest.topology.setter(uint64_t a1)
{
  v3 = *a1;

  v1->n128_u64[1] = v3;
  result = *(a1 + 8);
  v1[1] = result;
  return result;
}

void *MatterAddDeviceRequest.setupPayload.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t MatterAddDeviceRequest.showDeviceCriteria.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MatterAddDeviceRequest(0) + 28);

  return sub_2398290D4(a1, v3);
}

uint64_t sub_2398290D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MatterAddDeviceRequest.shouldScanNetworks.setter(char a1)
{
  result = type metadata accessor for MatterAddDeviceRequest(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t MatterAddDeviceRequest.init(topology:setupPayload:showing:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  sub_23982EAE8(0, &qword_27DF7C330, 0x277D86200);
  v11 = *(a1 + 1);
  *a4 = sub_239856DC4();
  *(a4 + 8) = v8;
  *(a4 + 16) = v11;
  *(a4 + 32) = a2;
  v9 = type metadata accessor for MatterAddDeviceRequest(0);
  result = sub_23982E9A0(a3, a4 + *(v9 + 28), type metadata accessor for MatterAddDeviceRequest.DeviceCriteria);
  *(a4 + *(v9 + 32)) = 1;
  return result;
}

uint64_t MatterAddDeviceRequest.init(topology:setupPayload:showing:shouldScanNetworks:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  sub_23982EAE8(0, &qword_27DF7C330, 0x277D86200);
  v13 = *(a1 + 1);
  *a5 = sub_239856DC4();
  *(a5 + 8) = v10;
  *(a5 + 16) = v13;
  *(a5 + 32) = a2;
  v11 = type metadata accessor for MatterAddDeviceRequest(0);
  result = sub_23982E9A0(a3, a5 + *(v11 + 28), type metadata accessor for MatterAddDeviceRequest.DeviceCriteria);
  *(a5 + *(v11 + 32)) = a4;
  return result;
}

uint64_t MatterAddDeviceRequest.perform()()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C338, &qword_23985A2F0);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2398294D8, 0, 0);
}

uint64_t sub_2398294D8()
{
  v1 = v0[18];
  sub_239856D54();
  sub_239856B04();
  v0[22] = [objc_allocWithZone(MTSDeviceSetupManager) init];
  v2 = swift_task_alloc();
  v0[23] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_239829614;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_239829614()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_239829A6C;
  }

  else
  {

    v2 = sub_239829730;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_239829730()
{
  v1 = v0[25];
  sub_239856A74();
  swift_allocObject();
  sub_239856A64();
  type metadata accessor for MatterAddDeviceRequest(0);
  sub_23982D96C(&qword_27DF7C340, type metadata accessor for MatterAddDeviceRequest, &protocol conformance descriptor for MatterAddDeviceRequest);
  v2 = sub_239856A54();
  v0[26] = v2;
  v0[27] = v3;
  if (v1)
  {

LABEL_3:
    v4 = v0[22];
    [objc_opt_self() mts:2 errorWithCode:?];
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  v7 = v2;
  v8 = v3;

  v9 = objc_allocWithZone(MTSDeviceSetupRequest);
  sub_239826330(v7, v8);
  v10 = sub_239856AA4();
  v11 = [v9 initWithSerializedRequest_];
  v0[28] = v11;

  sub_2398282D8(v7, v8);
  if (!v11)
  {
    sub_2398282D8(v7, v8);
    goto LABEL_3;
  }

  v12 = v0[21];
  v16 = v0[22];
  v13 = v0[19];
  v14 = v0[20];
  v0[2] = v0;
  v0[3] = sub_239829ADC;
  swift_continuation_init();
  v0[17] = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C348, &qword_23985A2F8);
  sub_239856CD4();
  (*(v14 + 32))(boxed_opaque_existential_0, v12, v13);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_239829D08;
  v0[13] = &block_descriptor;
  [v16 performDeviceSetupUsingRequest:v11 completionHandler:v0 + 10];
  (*(v14 + 8))(boxed_opaque_existential_0, v13);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_239829A6C()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_239829ADC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_239829C70;
  }

  else
  {
    v2 = sub_239829BEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_239829BEC()
{
  v1 = v0[28];
  v2 = v0[22];
  sub_2398282D8(v0[26], v0[27]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_239829C70(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[26];
  v4 = v1[27];
  v5 = v1[22];
  swift_willThrow();
  sub_2398282D8(v3, v4);

  v6 = v1[1];

  return v6();
}

void sub_239829D08(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C338, &qword_23985A2F0);
    sub_239856CE4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C338, &qword_23985A2F0);
    sub_239856CF4();
  }
}

uint64_t sub_239829D98(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4D8, &qword_23985A5E8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C338, &qword_23985A2F0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  v14 = OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D24FirstOneWinsContinuation_continuation;
  swift_beginAccess();
  sub_23982EFD0(v2 + v14, v9, &qword_27DF7C4D8, &qword_23985A5E8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_23982F038(v9, &qword_27DF7C4D8, &qword_23985A5E8);
  }

  (*(v11 + 32))(v13, v9, v10);
  v17[0] = a1;
  v16 = a1;
  sub_239856CE4();
  (*(v11 + 8))(v13, v10);
  (*(v11 + 56))(v7, 1, 1, v10);
  swift_beginAccess();
  sub_23982EA78(v7, v2 + v14);
  return swift_endAccess();
}

uint64_t sub_239829FF0()
{
  sub_23982F038(v0 + OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D24FirstOneWinsContinuation_continuation, &qword_27DF7C4D8, &qword_23985A5E8);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23982A04C(uint64_t a1, void *a2)
{
  v34 = a2;
  v37 = a1;
  v2 = type metadata accessor for MatterAddDeviceRequest(0);
  v40 = *(v2 - 8);
  v39 = *(v40 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4D8, &qword_23985A5E8);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C338, &qword_23985A2F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v35 = &v30 - v8;
  v9 = sub_239856D84();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v31 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_239856D74();
  MEMORY[0x28223BE20](v11);
  v12 = sub_239856BF4();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_239856B74();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_239856D34();
  v17 = MEMORY[0x277D84F90];
  sub_239856B04();
  strcpy(v16, "_matter._tcp");
  v16[13] = 0;
  *(v16 + 7) = -5120;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  (*(v14 + 104))(v16, *MEMORY[0x277CD90D8], v13);
  sub_239856B54();
  sub_239856B44();
  sub_239856BD4();
  swift_allocObject();
  v18 = sub_239856B94();
  sub_23982EAE8(0, &qword_27DF7C4E8, 0x277D85C78);
  sub_239856BE4();
  v41 = v17;
  sub_23982D96C(&qword_27DF7C4F0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4F8, &unk_23985A5F0);
  sub_23982EB30();
  sub_239856DF4();
  (*(v32 + 104))(v31, *MEMORY[0x277D85260], v33);
  v19 = sub_239856D94();
  v20 = v35;
  (*(v7 + 16))(v35, v37, v6);
  type metadata accessor for MatterAddDeviceRequest.FirstOneWinsContinuation(0);
  v21 = swift_allocObject();
  swift_defaultActor_initialize();
  v22 = OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D24FirstOneWinsContinuation_continuation;
  v23 = *(v7 + 56);
  v23(v21 + OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D24FirstOneWinsContinuation_continuation, 1, 1, v6);
  v24 = v36;
  (*(v7 + 32))(v36, v20, v6);
  v23(v24, 0, 1, v6);
  swift_beginAccess();
  sub_23982EA78(v24, v21 + v22);
  swift_endAccess();
  v25 = v38;
  sub_23982E8D8(v34, v38, type metadata accessor for MatterAddDeviceRequest);
  v26 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v27 = (v39 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_23982E9A0(v25, v28 + v26, type metadata accessor for MatterAddDeviceRequest);
  *(v28 + v27) = v18;
  *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;

  sub_239856B84();
  sub_239856BB4();
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

uint64_t sub_23982A730(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23982A7A8(uint64_t *a1, NSObject **a2, uint64_t a3, uint64_t a4)
{
  v68 = a4;
  v69 = a3;
  v75 = sub_239856B64();
  v72 = *(v75 - 8);
  v6 = MEMORY[0x28223BE20](v75);
  v67 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v73 = &v63 - v9;
  v66 = v10;
  MEMORY[0x28223BE20](v8);
  v74 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  MEMORY[0x28223BE20](v12 - 8);
  v70 = &v63 - v13;
  v14 = sub_239856BA4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v63 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v63 - v22;
  v24 = sub_239856D34();
  v25 = *a2;
  v26 = v15;
  isa = v15[2].isa;
  v71 = a1;
  isa(v23, a1, v14);
  if (os_log_type_enabled(v25, v24))
  {
    v28 = swift_slowAlloc();
    v63 = v18;
    v29 = v28;
    v30 = swift_slowAlloc();
    v65 = v26;
    v31 = v30;
    v76 = v30;
    *v29 = 136315138;
    isa(v21, v23, v14);
    v32 = sub_239856C44();
    v34 = v33;
    v64 = v65[1].isa;
    (v64)(v23, v14);
    v35 = sub_2398407F4(v32, v34, &v76);
    v36 = v72;

    *(v29 + 4) = v35;
    _os_log_impl(&dword_239824000, v25, v24, "TCC state %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v37 = v31;
    v26 = v65;
    MEMORY[0x23EE79A40](v37, -1, -1);
    v38 = v29;
    v18 = v63;
    MEMORY[0x23EE79A40](v38, -1, -1);
    v39 = v25;
  }

  else
  {
    v64 = v26[1].isa;
    (v64)(v23, v14);
    v39 = v25;
    v36 = v72;
  }

  isa(v18, v71, v14);
  result = (v26[11].isa)(v18, v14);
  v41 = v75;
  v42 = v73;
  if (result == *MEMORY[0x277CD9108])
  {
    (v26[12].isa)(v18, v14);
    v43 = v74;
    v72 = v36[4];
    (v72)(v74, v18, v41);
    v44 = sub_239856D44();
    v45 = v36[2];
    v45(v42, v43, v41);
    if (os_log_type_enabled(v39, v44))
    {
      v46 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v46 = 138412290;
      sub_23982D96C(&unk_27DF7C510, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      swift_allocError();
      v65 = v39;
      v47 = v36;
      v45(v48, v42, v75);
      v49 = _swift_stdlib_bridgeErrorToNSError();
      v73 = v47[1];
      (v73)(v42, v75);
      *(v46 + 4) = v49;
      v50 = v71;
      *v71 = v49;
      v41 = v75;
      _os_log_impl(&dword_239824000, v65, v44, "Local browse failed; unable to start an add device operation (error: %@)", v46, 0xCu);
      sub_23982F038(v50, &qword_27DF7CAF0, &qword_23985A620);
      MEMORY[0x23EE79A40](v50, -1, -1);
      MEMORY[0x23EE79A40](v46, -1, -1);
    }

    else
    {
      v73 = v36[1];
      (v73)(v42, v41);
      v47 = v36;
    }

    sub_239856BC4();
    v54 = sub_239856D14();
    v55 = v70;
    (*(*(v54 - 8) + 56))(v70, 1, 1, v54);
    v56 = v67;
    v57 = v74;
    v45(v67, v74, v41);
    v58 = (*(v47 + 80) + 40) & ~*(v47 + 80);
    v59 = swift_allocObject();
    v59[2] = 0;
    v59[3] = 0;
    v59[4] = v68;
    (v72)(v59 + v58, v56, v41);

    sub_23982B328(0, 0, v55, &unk_23985A618, v59);

    return (v73)(v57, v41);
  }

  if (result == *MEMORY[0x277CD9110])
  {
    sub_239856D44();
    sub_239856B04();
    sub_239856BC4();
    v51 = sub_239856D14();
    v52 = v70;
    (*(*(v51 - 8) + 56))(v70, 1, 1, v51);
    v53 = swift_allocObject();
    v53[2] = 0;
    v53[3] = 0;
    v53[4] = v68;

    sub_23982B328(0, 0, v52, &unk_23985A608, v53);

    return (v64)(v18, v14);
  }

  if (result != *MEMORY[0x277CD9100])
  {
    if (result == *MEMORY[0x277CD90F8])
    {
      sub_239856D34();
      sub_239856B04();
      sub_239856BC4();
      v60 = sub_239856D14();
      v61 = v70;
      (*(*(v60 - 8) + 56))(v70, 1, 1, v60);
      v62 = swift_allocObject();
      v62[2] = 0;
      v62[3] = 0;
      v62[4] = v68;

      sub_23982B328(0, 0, v61, &unk_23985A630, v62);
    }

    if (result != *MEMORY[0x277CD9118])
    {
      return (v64)(v18, v14);
    }
  }

  return result;
}

uint64_t sub_23982B078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4D8, &qword_23985A5E8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C338, &qword_23985A2F0);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23982B18C, a4, 0);
}

uint64_t sub_23982B18C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D24FirstOneWinsContinuation_continuation;
  swift_beginAccess();
  sub_23982EFD0(v4 + v5, v3, &qword_27DF7C4D8, &qword_23985A5E8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_23982F038(v0[10], &qword_27DF7C4D8, &qword_23985A5E8);
  }

  else
  {
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];
    v9 = v0[9];
    (*(v7 + 32))(v6, v0[10], v8);
    sub_239856CF4();
    (*(v7 + 8))(v6, v8);
    (*(v7 + 56))(v9, 1, 1, v8);
    swift_beginAccess();
    sub_23982EA78(v9, v4 + v5);
    swift_endAccess();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_23982B328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23982EFD0(a3, v25 - v10, &qword_27DF7C508, &qword_23985C690);
  v12 = sub_239856D14();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23982F038(v11, &qword_27DF7C508, &qword_23985C690);
  }

  else
  {
    sub_239856D04();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_239856CC4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_239856C54() + 32;
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

      sub_23982F038(a3, &qword_27DF7C508, &qword_23985C690);

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

  sub_23982F038(a3, &qword_27DF7C508, &qword_23985C690);
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

uint64_t sub_23982B628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4D8, &qword_23985A5E8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C338, &qword_23985A2F0);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23982B738, 0, 0);
}

uint64_t sub_23982B738()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = sub_239856B64();
  sub_23982D96C(&unk_27DF7C510, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
  v0[16] = swift_allocError();
  (*(*(v3 - 8) + 16))(v4, v2, v3);

  return MEMORY[0x2822009F8](sub_23982B830, v1, 0);
}

uint64_t sub_23982B830()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D24FirstOneWinsContinuation_continuation;
  swift_beginAccess();
  sub_23982EFD0(v4 + v5, v3, &qword_27DF7C4D8, &qword_23985A5E8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_23982F038(*(v0 + 96), &qword_27DF7C4D8, &qword_23985A5E8);
  }

  else
  {
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    v10 = *(v0 + 88);
    (*(v9 + 32))(v6, *(v0 + 96), v8);
    *(v0 + 64) = v7;
    v11 = v7;
    sub_239856CE4();
    (*(v9 + 8))(v6, v8);
    (*(v9 + 56))(v10, 1, 1, v8);
    swift_beginAccess();
    sub_23982EA78(v10, v4 + v5);
    swift_endAccess();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_23982BA20()
{
  v1 = *(v0 + 16);
  *(v0 + 24) = [objc_opt_self() mts:3 errorWithCode:?];

  return MEMORY[0x2822009F8](sub_23982BAAC, v1, 0);
}

uint64_t sub_23982BAAC()
{
  v1 = *(v0 + 24);
  sub_239829D98(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t MatterAddDeviceRequest.hash(into:)(uint64_t a1)
{
  sub_239856DB4();
  v3 = *(v1 + 24);
  sub_239856C64();
  MEMORY[0x23EE790C0](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 40;
    do
    {

      sub_239856C64();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  v6 = *(v1 + 32);
  sub_2398570B4();
  if (v6)
  {
    v7 = v6;
    sub_239856DB4();
  }

  type metadata accessor for MatterAddDeviceRequest(0);
  MatterAddDeviceRequest.DeviceCriteria.hash(into:)(a1);
  return sub_2398570B4();
}

uint64_t MatterAddDeviceRequest.hashValue.getter()
{
  sub_239857094();
  MatterAddDeviceRequest.hash(into:)(v1);
  return sub_2398570E4();
}

uint64_t sub_23982BC50()
{
  sub_239857094();
  MatterAddDeviceRequest.hash(into:)(v1);
  return sub_2398570E4();
}

uint64_t sub_23982BC94(uint64_t a1)
{
  sub_239857094();
  MatterAddDeviceRequest.hash(into:)(v2);
  return sub_2398570E4();
}

uint64_t sub_23982BCE0()
{
  sub_239857094();
  sub_239856C64();

  return sub_2398570E4();
}

uint64_t sub_23982BDB4(uint64_t a1)
{
  sub_239856C64();
}

uint64_t sub_23982BE74(uint64_t a1)
{
  sub_239857094();
  sub_239856C64();

  return sub_2398570E4();
}

unint64_t sub_23982BF44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23982E094(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23982BF74(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x79676F6C6F706F74;
  v4 = 0x800000023985CB90;
  if (*v1 != 2)
  {
    v4 = 0x800000023985CBB0;
  }

  if (*v1)
  {
    v3 = 0x7961507075746573;
    v2 = 0xEC00000064616F6CLL;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_23982C004()
{
  v1 = 0x79676F6C6F706F74;
  if (*v0)
  {
    v1 = 0x7961507075746573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

unint64_t sub_23982C090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23982E094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23982C0C4(uint64_t a1)
{
  v2 = sub_23982D8C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23982C100(uint64_t a1)
{
  v2 = sub_23982D8C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v4 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C350, &qword_23985A300);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_23982D8C4();
  sub_239857134();
  if (!v2)
  {
    v12 = v6;
    v32 = v8;
    v39 = 0;
    sub_23982D918();
    sub_239856F44();
    v13 = v7;
    v15 = v35;
    v14 = v36;
    v16 = v37;
    LOBYTE(v35) = 2;
    sub_23982D96C(&qword_27DF7C368, type metadata accessor for MatterAddDeviceRequest.DeviceCriteria, &protocol conformance descriptor for MatterAddDeviceRequest.DeviceCriteria);
    sub_239856F44();
    v17 = v14;
    v31 = v15;
    LOBYTE(v35) = 3;
    v18 = sub_239856F24();
    v39 = 1;
    sub_239828A30();
    sub_239856F04();
    v38 = v18;
    v29 = v17;
    v30 = v10;
    v20 = v36;
    if (v36 >> 60 == 15)
    {
      v21 = 0;
      v22 = v33;
    }

    else
    {
      v23 = v35;
      sub_23982EAE8(0, &qword_27DF7C378, 0x277CCAAC8);
      sub_23982EAE8(0, &qword_27DF7C380, 0x277CD5528);
      v24 = sub_239856D64();
      sub_23982D9B4(v23, v20);
      v22 = v33;
      v21 = v24;
    }

    v25 = type metadata accessor for MatterAddDeviceRequest(0);
    sub_23982E8D8(v12, v22 + *(v25 + 28), type metadata accessor for MatterAddDeviceRequest.DeviceCriteria);
    sub_23982EAE8(0, &qword_27DF7C330, 0x277D86200);
    v26 = sub_239856DC4();
    sub_23982E940(v12, type metadata accessor for MatterAddDeviceRequest.DeviceCriteria);
    (*(v32 + 8))(v30, v13);
    v27 = v31;
    *v22 = v26;
    v22[1] = v27;
    v22[2] = v29;
    v22[3] = v16;
    v22[4] = v21;
    *(v22 + *(v25 + 32)) = v38 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t MatterAddDeviceRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v26 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C388, &qword_23985A308);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23982D8C4();
  sub_239857144();
  v9 = v3[2];
  v10 = v3[3];
  v23 = v3[1];
  v24 = v9;
  v25 = v10;
  v22 = 0;
  sub_23982D9C8();

  sub_239856FE4();
  if (v2)
  {

    return (*(v6 + 8))(v8, v5);
  }

  type metadata accessor for MatterAddDeviceRequest(0);
  LOBYTE(v23) = 2;
  type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  sub_23982D96C(&qword_27DF7C398, type metadata accessor for MatterAddDeviceRequest.DeviceCriteria, &protocol conformance descriptor for MatterAddDeviceRequest.DeviceCriteria);
  sub_239856FE4();
  LOBYTE(v23) = 3;
  sub_239856FC4();
  v12 = v3[4];
  if (!v12)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v13 = objc_opt_self();
  v23 = 0;
  v14 = v12;
  v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v23];
  v16 = v23;
  if (!v15)
  {
    v20 = v16;
    sub_239856A94();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  v17 = sub_239856AB4();
  v19 = v18;

  v23 = v17;
  v24 = v19;
  v22 = 1;
  sub_239828988();
  sub_239856FE4();
  (*(v6 + 8))(v8, v5);

  return sub_2398282D8(v17, v19);
}

BOOL sub_23982CBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v37 = a5;
  v35 = a3;
  v36 = a4;
  v34 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4C0, &qword_23985A5D8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v33 - v13;
  v15 = _s14DeviceCriteriaO17DeviceDescriptionVMa(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0xF000000000000000;
  v20 = 0;
  if (a7 >> 60 != 15 && a8)
  {
    v38 = 0;
    v39 = 1;
    sub_239826330(a6, a7);
    sub_239857124();
    if (v39 == 1)
    {
      sub_23982D9B4(a6, a7);
      v18 = 0;
      v20 = 0;
      v19 = 0xF000000000000000;
    }

    else
    {
      v20 = v38;
      v18 = a6;
      v19 = a7;
    }
  }

  v33 = v19;
  sub_23982EFD0(v34, v14, &qword_27DF7C4C0, &qword_23985A5D8);
  v21 = 1;
  if (a2)
  {
    v38 = 0;
    v39 = 1;
    sub_239856D24();
    v22 = v38;
    v21 = v39;
  }

  else
  {
    v22 = 0;
  }

  if (v35)
  {
    v38 = 0;
    v39 = 1;
    sub_239856D24();
    v23 = v38;
    v24 = v39;
  }

  else
  {
    v23 = 0;
    v24 = 1;
  }

  sub_23982EA08(v14, v17);
  v25 = &v17[v15[5]];
  *v25 = v22;
  v25[8] = v21;
  v26 = &v17[v15[6]];
  *v26 = v23;
  v26[8] = v24;
  v27 = &v17[v15[7]];
  v28 = v37;
  *v27 = v36;
  v27[1] = v28;
  v29 = &v17[v15[8]];
  v30 = v33;
  *v29 = v18;
  v29[1] = v30;
  v29[2] = v20;
  type metadata accessor for MatterAddDeviceRequest(0);

  v31 = sub_23983250C(v17);
  sub_23982E940(v17, _s14DeviceCriteriaO17DeviceDescriptionVMa);
  return (v31 & 1) == 0;
}

id sub_23982D0C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t))
{
  v5 = type metadata accessor for MatterAddDeviceRequest(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23982E8D8(a1 + OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D7Wrapper_wrappedRequest, v7, type metadata accessor for MatterAddDeviceRequest);
  a3(v7, v5);
  v8 = sub_239856C24();

  return v8;
}

uint64_t sub_23982D208(uint64_t a1)
{
  sub_23982EFD0(a1, v5, &qword_27DF7C4C8, &qword_23985A5E0);
  if (!v6)
  {
    sub_23982F038(v5, &qword_27DF7C4C8, &qword_23985A5E0);
    goto LABEL_5;
  }

  type metadata accessor for MatterAddDeviceRequest.Wrapper(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = _s13MatterSupport0A16AddDeviceRequestV2eeoiySbAC_ACtFZ_0((v1 + OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D7Wrapper_wrappedRequest), &v4[OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D7Wrapper_wrappedRequest]);

  return v2 & 1;
}

id sub_23982D568(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23982D5A0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23982D698;

  return v6(a1);
}

uint64_t sub_23982D698()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _s13MatterSupport0A16AddDeviceRequestV2eeoiySbAC_ACtFZ_0(char *a1, void *a2)
{
  sub_23982EAE8(0, &qword_27DF7C4E0, 0x277D82BB8);
  if ((sub_239856DA4() & 1) == 0)
  {
    goto LABEL_15;
  }

  v4 = *(a1 + 3);
  v5 = a2[3];
  v6 = *(a1 + 1) == a2[1] && *(a1 + 2) == a2[2];
  if (!v6 && (sub_239857054() & 1) == 0 || (sub_239831634(v4, v5) & 1) == 0)
  {
    goto LABEL_15;
  }

  v7 = *(a1 + 4);
  v8 = a2[4];
  if (v7)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    sub_23982EAE8(0, &qword_27DF7C380, 0x277CD5528);
    v9 = v8;
    v10 = v7;
    v11 = sub_239856DA4();

    if ((v11 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v8)
  {
LABEL_15:
    v13 = 0;
    return v13 & 1;
  }

  v12 = type metadata accessor for MatterAddDeviceRequest(0);
  if ((static MatterAddDeviceRequest.DeviceCriteria.== infix(_:_:)(&a1[*(v12 + 28)], a2 + *(v12 + 28)) & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = a1[*(v12 + 32)] ^ *(a2 + *(v12 + 32)) ^ 1;
  return v13 & 1;
}

unint64_t sub_23982D8C4()
{
  result = qword_27DF7C358;
  if (!qword_27DF7C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C358);
  }

  return result;
}

unint64_t sub_23982D918()
{
  result = qword_27DF7C360;
  if (!qword_27DF7C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C360);
  }

  return result;
}

uint64_t sub_23982D96C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23982D9B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2398282D8(result, a2);
  }

  return result;
}

unint64_t sub_23982D9C8()
{
  result = qword_27DF7C390;
  if (!qword_27DF7C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C390);
  }

  return result;
}

void sub_23982DA8C(uint64_t a1)
{
  sub_23982EAE8(319, &qword_27DF7C330, 0x277D86200);
  if (v1 <= 0x3F)
  {
    sub_23982DB48(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23982DB48(uint64_t a1)
{
  if (!qword_27DF7C3C8)
  {
    sub_23982EAE8(255, &qword_27DF7C380, 0x277CD5528);
    v1 = sub_239856DD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF7C3C8);
    }
  }
}

void sub_23982DBD8(uint64_t a1)
{
  sub_23982DC74(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23982DC74(uint64_t a1)
{
  if (!qword_27DF7C3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF7C338, &qword_23985A2F0);
    v1 = sub_239856DD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF7C3F8);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23982DD48(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23982DD80(uint64_t a1)
{
  result = type metadata accessor for MatterAddDeviceRequest(319);
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

uint64_t getEnumTagSinglePayload for MatterAddDeviceRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MatterAddDeviceRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23982DF90()
{
  result = qword_27DF7C490;
  if (!qword_27DF7C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C490);
  }

  return result;
}

unint64_t sub_23982DFE8()
{
  result = qword_27DF7C498;
  if (!qword_27DF7C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C498);
  }

  return result;
}

unint64_t sub_23982E040()
{
  result = qword_27DF7C4A0;
  if (!qword_27DF7C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C4A0);
  }

  return result;
}

unint64_t sub_23982E094(uint64_t a1, uint64_t a2)
{
  v2 = sub_239856ED4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

id sub_23982E0E0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4B0, &qword_23985A5D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for MatterAddDeviceRequest(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  result = 0;
  if (a2 >> 60 != 15)
  {
    sub_239856A44();
    swift_allocObject();
    sub_239826330(a1, a2);
    sub_239856A34();
    sub_23982D96C(&qword_27DF7C4B8, type metadata accessor for MatterAddDeviceRequest, &protocol conformance descriptor for MatterAddDeviceRequest);
    sub_239856A24();

    (*(v8 + 56))(v6, 0, 1, v7);
    sub_23982E9A0(v6, v13, type metadata accessor for MatterAddDeviceRequest);
    sub_23982E8D8(v13, v11, type metadata accessor for MatterAddDeviceRequest);
    v15 = type metadata accessor for MatterAddDeviceRequest.Wrapper(0);
    v16 = objc_allocWithZone(v15);
    sub_23982E8D8(v11, v16 + OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D7Wrapper_wrappedRequest, type metadata accessor for MatterAddDeviceRequest);
    v19.receiver = v16;
    v19.super_class = v15;
    v17 = objc_msgSendSuper2(&v19, sel_init);
    sub_23982D9B4(a1, a2);
    sub_23982E940(v11, type metadata accessor for MatterAddDeviceRequest);
    sub_23982E940(v13, type metadata accessor for MatterAddDeviceRequest);
    return v17;
  }

  return result;
}

void *sub_23982E3DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v50 = a1;
  v56 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v8 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = type metadata accessor for MatterAddDeviceRequest(0);
  v9 = MEMORY[0x28223BE20](v49);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = (&v48 - v11);
  v12 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  v55 = a4;
  if (v12)
  {
    v58 = MEMORY[0x277D84F90];
    sub_239841134(0, v12, 0);
    v14 = v58;
    v15 = (a3 + 40);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v58 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_239841134((v18 > 1), v19 + 1, 1);
        v14 = v58;
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 2;
      --v12;
    }

    while (v12);
    a4 = v55;
    v13 = MEMORY[0x277D84F90];
    if (!(v55 >> 62))
    {
LABEL_7:
      v21 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_19:

      v24 = MEMORY[0x277D84F90];
LABEL_20:
      v36 = swift_allocBox();
      v38 = v37;
      v39 = swift_allocObject();
      *(v39 + 16) = v24;
      *v38 = v39;
      swift_storeEnumTagMultiPayload();
      v40 = v49;
      v41 = v51;
      *(v51 + *(v49 + 28)) = v36;
      swift_storeEnumTagMultiPayload();
      sub_23982EAE8(0, &qword_27DF7C330, 0x277D86200);
      v42 = sub_239856DC4();
      v43 = v50;
      *v41 = v42;
      v41[1] = v43;
      v41[2] = a2;
      v41[3] = v14;
      v41[4] = 0;
      *(v41 + *(v40 + 32)) = 1;
      v44 = v52;
      sub_23982E8D8(v41, v52, type metadata accessor for MatterAddDeviceRequest);
      v45 = type metadata accessor for MatterAddDeviceRequest.Wrapper(0);
      v46 = objc_allocWithZone(v45);
      sub_23982E8D8(v44, v46 + OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D7Wrapper_wrappedRequest, type metadata accessor for MatterAddDeviceRequest);
      v57.receiver = v46;
      v57.super_class = v45;
      v47 = objc_msgSendSuper2(&v57, sel_init);
      sub_23982E940(v44, type metadata accessor for MatterAddDeviceRequest);
      sub_23982E940(v41, type metadata accessor for MatterAddDeviceRequest);
      return v47;
    }
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
    if (!(a4 >> 62))
    {
      goto LABEL_7;
    }
  }

  v21 = sub_239856EC4();
  if (!v21)
  {
    goto LABEL_19;
  }

LABEL_8:
  v58 = v13;

  result = sub_239841114(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v48 = a2;
    v23 = 0;
    v24 = v58;
    v25 = a4;
    v53 = a4 & 0xC000000000000001;
    do
    {
      if (v53)
      {
        v26 = MEMORY[0x23EE78E40](v23, v25);
      }

      else
      {
        v26 = *(v25 + 8 * v23 + 32);
      }

      v27 = v26;
      v28 = [v26 rootPublicKey];
      v29 = sub_239856AB4();
      v31 = v30;

      v32 = [v27 nodeID];
      v33 = sub_239857104();

      *v8 = v29;
      v8[1] = v31;
      v8[2] = v33;
      swift_storeEnumTagMultiPayload();
      v58 = v24;
      v35 = *(v24 + 16);
      v34 = *(v24 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_239841114((v34 > 1), v35 + 1, 1);
        v24 = v58;
      }

      ++v23;
      *(v24 + 16) = v35 + 1;
      sub_23982E9A0(v8, v24 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v35, type metadata accessor for MatterAddDeviceRequest.DeviceCriteria);
      v25 = v55;
    }

    while (v21 != v23);
    a2 = v48;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_23982E8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23982E940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23982E9A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23982EA08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4C0, &qword_23985A5D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23982EA78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4D8, &qword_23985A5E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23982EAE8(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_23982EB30()
{
  result = qword_27DF7C500;
  if (!qword_27DF7C500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF7C4F8, &unk_23985A5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C500);
  }

  return result;
}

uint64_t sub_23982EB94(uint64_t *a1)
{
  v3 = *(type metadata accessor for MatterAddDeviceRequest(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_23982A7A8(a1, (v1 + v4), v6, v7);
}

uint64_t sub_23982EC3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23982F208;

  return sub_23982BA00(a1, v4, v5, v6);
}

uint64_t sub_23982ECF0(uint64_t a1)
{
  v4 = *(sub_239856B64() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23982EDE8;

  return sub_23982B628(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_23982EDE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_31Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23982EF1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23982F208;

  return sub_23982B078(a1, v4, v5, v6);
}

uint64_t sub_23982EFD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23982F038(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23982F098(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23982F208;

  return sub_23982D5A0(a1, v4);
}

uint64_t sub_23982F150(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23982EDE8;

  return sub_23982D5A0(a1, v4);
}

uint64_t MatterAddDeviceRequest.Room.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MatterAddDeviceRequest.Room.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MatterAddDeviceRequest.Room.init(displayName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MatterAddDeviceRequest.Room.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_239857054();
  }
}

uint64_t sub_23982F2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_239857054();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23982F378(uint64_t a1)
{
  v2 = sub_23982F52C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23982F3B4(uint64_t a1)
{
  v2 = sub_23982F52C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceRequest.Room.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C580, &qword_23985A658);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23982F52C();
  sub_239857144();
  sub_239856FB4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_23982F52C()
{
  result = qword_27DF7C588;
  if (!qword_27DF7C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C588);
  }

  return result;
}

uint64_t MatterAddDeviceRequest.Room.hashValue.getter()
{
  sub_239857094();
  sub_239856C64();
  return sub_2398570E4();
}

uint64_t MatterAddDeviceRequest.Room.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C590, &qword_23985A660);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23982F52C();
  sub_239857134();
  if (!v2)
  {
    v9 = sub_239856F14();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23982F748()
{
  sub_239857094();
  sub_239856C64();
  return sub_2398570E4();
}

uint64_t sub_23982F79C(uint64_t a1)
{
  sub_239857094();
  sub_239856C64();
  return sub_2398570E4();
}

unint64_t sub_23982F7E8()
{
  result = qword_27DF7C598;
  if (!qword_27DF7C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C598);
  }

  return result;
}

uint64_t sub_23982F854(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C580, &qword_23985A658);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23982F52C();
  sub_239857144();
  sub_239856FB4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23982F990(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_239857054();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23982F9CC(uint64_t a1, int a2)
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

uint64_t sub_23982FA14(uint64_t result, int a2, int a3)
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

unint64_t sub_23982FA74()
{
  result = qword_27DF7C5A0;
  if (!qword_27DF7C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C5A0);
  }

  return result;
}

unint64_t sub_23982FACC()
{
  result = qword_27DF7C5A8;
  if (!qword_27DF7C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C5A8);
  }

  return result;
}

unint64_t sub_23982FB24()
{
  result = qword_27DF7C5B0;
  if (!qword_27DF7C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C5B0);
  }

  return result;
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadScanResult.networkName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadScanResult.networkName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadScanResult.extendedAddress.getter()
{
  v1 = *(v0 + 40);
  sub_239826330(v1, *(v0 + 48));
  return v1;
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadScanResult.extendedAddress.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2398282D8(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadScanResult.init(networkName:panID:extendedPANID:channel:extendedAddress:rssi:version:linkQualityIndicator:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, __int16 a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 57) = a10;
  return result;
}

void sub_23982FDD0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 networkName];
  v5 = sub_239856C34();
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7;
  v8 = [a1 panID];
  LOWORD(v5) = sub_2398570F4();

  *(a2 + 16) = v5;
  v9 = [a1 extendedPANID];
  v10 = sub_239857104();

  *(a2 + 24) = v10;
  v11 = [a1 channel];
  LOWORD(v10) = sub_2398570F4();

  *(a2 + 32) = v10;
  v12 = [a1 extendedAddress];
  v13 = sub_239856AB4();
  v15 = v14;

  *(a2 + 40) = v13;
  *(a2 + 48) = v15;
  v16 = [a1 rssi];
  LOBYTE(v13) = sub_239857074();

  *(a2 + 56) = v13;
  v17 = [a1 version];
  LOBYTE(v13) = sub_239857084();

  *(a2 + 57) = v13;
  v18 = [a1 lqi];
  LOBYTE(v13) = sub_239857084();

  *(a2 + 58) = v13;
}

unint64_t sub_23982FF84()
{
  v1 = *v0;
  v2 = 0x4E6B726F7774656ELL;
  v3 = 0x6E6F6973726576;
  if (v1 != 6)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0x6465646E65747865;
  if (v1 != 4)
  {
    v4 = 1769173874;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6465646E65747865;
  if (v1 != 2)
  {
    v5 = 0x6C656E6E616863;
  }

  if (*v0)
  {
    v2 = 0x44496E6170;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_239830098@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2398310AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2398300CC(uint64_t a1)
{
  v2 = sub_239830C78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239830108(uint64_t a1)
{
  v2 = sub_239830C78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadScanResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C5B8, &qword_23985A860);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - v5;
  v25 = *(v1 + 16);
  v21 = *(v1 + 24);
  v20 = *(v1 + 32);
  v7 = *(v1 + 40);
  v18 = *(v1 + 48);
  v19 = v7;
  LODWORD(v7) = *(v1 + 56);
  v17[0] = *(v1 + 57);
  v17[1] = v7;
  v8 = *(v1 + 58);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_239830C78();
  sub_239857144();
  LOBYTE(v23) = 0;
  v13 = v22;
  sub_239856FB4();
  if (v13)
  {
    return (*(v4 + 8))(v6, v12);
  }

  v15 = v18;
  v14 = v19;
  LODWORD(v22) = v8;
  LOBYTE(v23) = 1;
  sub_239857014();
  LOBYTE(v23) = 2;
  sub_239857024();
  LOBYTE(v23) = 3;
  sub_239857014();
  v23 = v14;
  v24 = v15;
  v26 = 4;
  sub_239826330(v14, v15);
  sub_239828988();
  sub_239856FE4();
  sub_2398282D8(v23, v24);
  LOBYTE(v23) = 5;
  sub_239856FF4();
  LOBYTE(v23) = 6;
  sub_239857004();
  LOBYTE(v23) = 7;
  sub_239857004();
  return MEMORY[8](v6, v12);
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadScanResult.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_239856C64();
  sub_2398570C4();
  MEMORY[0x23EE790F0](v2);
  sub_2398570C4();
  sub_239856AC4();
  sub_2398570B4();
  sub_2398570B4();
  return sub_2398570B4();
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadScanResult.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_239857094();
  sub_239856C64();
  sub_2398570C4();
  MEMORY[0x23EE790F0](v1);
  sub_2398570C4();
  sub_239856AC4();
  sub_2398570B4();
  sub_2398570B4();
  sub_2398570B4();
  return sub_2398570E4();
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadScanResult.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C5C8, &qword_23985A868);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_239830C78();
  sub_239857134();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v28) = 0;
  v9 = sub_239856F14();
  v11 = v10;
  v12 = v9;
  LOBYTE(v28) = 1;
  v38 = sub_239856F74();
  LOBYTE(v28) = 2;
  v24 = sub_239856F84();
  LOBYTE(v28) = 3;
  v23 = sub_239856F74();
  LOBYTE(v25) = 4;
  sub_239828A30();
  sub_239856F44();
  v21 = v29;
  v22 = v28;
  LOBYTE(v28) = 5;
  v20 = sub_239856F54();
  LOBYTE(v28) = 6;
  v19 = sub_239856F64();
  v39 = 7;
  v13 = sub_239856F64();
  (*(v6 + 8))(v8, v5);
  *&v25 = v12;
  *(&v25 + 1) = v11;
  v14 = v38;
  LOWORD(v26) = v38;
  v15 = v24;
  *(&v26 + 1) = v24;
  *v27 = v23;
  v16 = v21;
  *&v27[8] = v22;
  *&v27[16] = v21;
  v27[24] = v20;
  v27[25] = v19;
  v27[26] = v13;
  v17 = v26;
  *a2 = v25;
  a2[1] = v17;
  a2[2] = *v27;
  *(a2 + 43) = *&v27[11];
  sub_239830CCC(&v25, &v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v28 = v12;
  v29 = v11;
  v30 = v14;
  v31 = v15;
  v32 = v23;
  v33 = v22;
  v34 = v16;
  v35 = v20;
  v36 = v19;
  v37 = v13;
  return sub_239830D04(&v28);
}

uint64_t sub_239830978(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_239856C64();
  sub_2398570C4();
  MEMORY[0x23EE790F0](v2);
  sub_2398570C4();
  sub_239856AC4();
  sub_2398570B4();
  sub_2398570B4();
  return sub_2398570B4();
}

uint64_t sub_239830A20(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_239857094();
  sub_239856C64();
  sub_2398570C4();
  MEMORY[0x23EE790F0](v2);
  sub_2398570C4();
  sub_239856AC4();
  sub_2398570B4();
  sub_2398570B4();
  sub_2398570B4();
  return sub_2398570E4();
}

BOOL _s13MatterSupport0A32AddDeviceExtensionRequestHandlerC16ThreadScanResultV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = a1[3];
  v4 = *(a1 + 16);
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(a1 + 56);
  v8 = *(a1 + 57);
  v9 = *(a1 + 58);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 58);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    result = 0;
    if (v2 != v10)
    {
      return result;
    }

    if (v3 != v11)
    {
      return result;
    }

    v23 = *(a2 + 56);
    v24 = *(a2 + 57);
    if (v4 != v12)
    {
      return result;
    }
  }

  else
  {
    v19 = *(a2 + 48);
    v20 = *(a2 + 40);
    v23 = *(a2 + 56);
    v24 = *(a2 + 57);
    v21 = a1[6];
    v22 = a1[5];
    v17 = sub_239857054();
    result = 0;
    if ((v17 & 1) == 0)
    {
      return result;
    }

    if (v2 != v10)
    {
      return result;
    }

    if (v3 != v11)
    {
      return result;
    }

    v6 = v21;
    v5 = v22;
    v14 = v19;
    v13 = v20;
    if (v4 != v12)
    {
      return result;
    }
  }

  v18 = sub_239827F9C(v5, v6, v13, v14) && v7 == v23;
  if (v8 != v24)
  {
    v18 = 0;
  }

  return v9 == v15 && v18;
}

unint64_t sub_239830C78()
{
  result = qword_27DF7C5C0;
  if (!qword_27DF7C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C5C0);
  }

  return result;
}

unint64_t sub_239830D38()
{
  result = qword_27DF7C5D0;
  if (!qword_27DF7C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C5D0);
  }

  return result;
}

__n128 __swift_memcpy59_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_239830DA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 59))
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

uint64_t sub_239830DF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 59) = 1;
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

    *(result + 59) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s16ThreadScanResultV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16ThreadScanResultV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_239830FA8()
{
  result = qword_27DF7C5D8;
  if (!qword_27DF7C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C5D8);
  }

  return result;
}

unint64_t sub_239831000()
{
  result = qword_27DF7C5E0;
  if (!qword_27DF7C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C5E0);
  }

  return result;
}

unint64_t sub_239831058()
{
  result = qword_27DF7C5E8;
  if (!qword_27DF7C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C5E8);
  }

  return result;
}

uint64_t sub_2398310AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E6B726F7774656ELL && a2 == 0xEB00000000656D61;
  if (v4 || (sub_239857054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496E6170 && a2 == 0xE500000000000000 || (sub_239857054() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465646E65747865 && a2 == 0xED000044494E4150 || (sub_239857054() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000 || (sub_239857054() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465646E65747865 && a2 == 0xEF73736572646441 || (sub_239857054() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1769173874 && a2 == 0xE400000000000000 || (sub_239857054() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_239857054() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023985D020 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_239857054();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

id sub_239831358(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_239856E84();
    v3 = v1 + 40;
    do
    {
      v4 = objc_allocWithZone(MTSDeviceSetupHome);

      v5 = sub_239856C24();
      [v4 initWithName_];

      sub_239856E64();
      sub_239856E94();
      sub_239856EA4();
      sub_239856E74();
      v3 += 16;
      --v2;
    }

    while (v2);
  }

  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_239832400();
  v7 = sub_239856C94();

  v8 = [v6 initWithHomes_];

  return v8;
}

uint64_t MatterAddDeviceRequest.Topology.init(ecosystemName:homes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t MatterAddDeviceRequest.Topology.ecosystemName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MatterAddDeviceRequest.Topology.ecosystemName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MatterAddDeviceRequest.Topology.homes.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t static MatterAddDeviceRequest.Topology.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_239857054() & 1) == 0)
  {
    return 0;
  }

  return sub_239831634(v2, v3);
}

uint64_t sub_239831634(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_239857054() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2398316C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_23983244C(v13, v10);
        sub_23983244C(v14, v7);
        v16 = static MatterAddDeviceRequest.DeviceCriteria.== infix(_:_:)(v10, v7);
        sub_2398324B0(v7);
        sub_2398324B0(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_239831838()
{
  if (*v0)
  {
    return 0x73656D6F68;
  }

  else
  {
    return 0x65747379736F6365;
  }
}

uint64_t sub_23983187C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65747379736F6365 && a2 == 0xED0000656D614E6DLL;
  if (v6 || (sub_239857054() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656D6F68 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_239857054();

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

uint64_t sub_23983195C(uint64_t a1)
{
  v2 = sub_239831BAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239831998(uint64_t a1)
{
  v2 = sub_239831BAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceRequest.Topology.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C5F0, &qword_23985AB08);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_239831BAC();
  sub_239857144();
  v13 = 0;
  sub_239856FB4();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C600, &qword_23985AB10);
    sub_239832118(&qword_27DF7C608, sub_239831C00, MEMORY[0x277D83948]);
    sub_239856FE4();
  }

  return (*(v10 + 8))(v6, v4);
}

unint64_t sub_239831BAC()
{
  result = qword_27DF7C5F8;
  if (!qword_27DF7C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C5F8);
  }

  return result;
}

unint64_t sub_239831C00()
{
  result = qword_27DF7C610;
  if (!qword_27DF7C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C610);
  }

  return result;
}

uint64_t MatterAddDeviceRequest.Topology.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_239856C64();
  result = MEMORY[0x23EE790C0](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2 + 40;
    do
    {

      sub_239856C64();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t MatterAddDeviceRequest.Topology.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_239857094();
  sub_239856C64();
  MEMORY[0x23EE790C0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_239856C64();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return sub_2398570E4();
}

uint64_t MatterAddDeviceRequest.Topology.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C618, &qword_23985AB18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_239831BAC();
  sub_239857134();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_239856F14();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C600, &qword_23985AB10);
  v16 = 1;
  sub_239832118(&qword_27DF7C620, sub_239832190, MEMORY[0x277D83978]);
  sub_239856F44();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_239831FCC()
{
  v2[9] = *v0;
  v3 = *(v0 + 8);
  sub_239857094();
  MatterAddDeviceRequest.Topology.hash(into:)(v2);
  return sub_2398570E4();
}

uint64_t sub_239832024(uint64_t a1)
{
  v3[9] = *v1;
  v4 = *(v1 + 8);
  sub_239857094();
  MatterAddDeviceRequest.Topology.hash(into:)(v3);
  return sub_2398570E4();
}

uint64_t sub_2398320A4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_239857054() & 1) == 0)
  {
    return 0;
  }

  return sub_239831634(v2, v3);
}

uint64_t sub_239832118(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF7C600, &qword_23985AB10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_239832190()
{
  result = qword_27DF7C628;
  if (!qword_27DF7C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C628);
  }

  return result;
}

unint64_t sub_2398321E8()
{
  result = qword_27DF7C630;
  if (!qword_27DF7C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C630);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_239832250(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_239832298(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2398322FC()
{
  result = qword_27DF7C638;
  if (!qword_27DF7C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C638);
  }

  return result;
}

unint64_t sub_239832354()
{
  result = qword_27DF7C640;
  if (!qword_27DF7C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C640);
  }

  return result;
}

unint64_t sub_2398323AC()
{
  result = qword_27DF7C648;
  if (!qword_27DF7C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C648);
  }

  return result;
}

unint64_t sub_239832400()
{
  result = qword_27DF7C650;
  if (!qword_27DF7C650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF7C650);
  }

  return result;
}

uint64_t sub_23983244C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2398324B0(uint64_t a1)
{
  v2 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23983250C(_BYTE *a1)
{
  v77 = a1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C888, &unk_23985B9B0);
  MEMORY[0x28223BE20](v72);
  v75 = &v69 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4C0, &qword_23985A5D8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v74 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v69 - v5;
  v7 = sub_239856AF4();
  v73 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v69 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C890, &unk_23985B9C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v69 - v14;
  v16 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v69 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = (&v69 - v24);
  sub_23983244C(v76, &v69 - v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      v42 = v77;
      v43 = *v25;
      if (EnumCaseMultiPayload == 4)
      {
        v44 = *(_s14DeviceCriteriaO17DeviceDescriptionVMa(0) + 20);
      }

      else
      {
        v44 = *(_s14DeviceCriteriaO17DeviceDescriptionVMa(0) + 24);
      }

      v39 = v42[v44 + 8] | (*&v42[v44] != v43);
      return v39 & 1;
    }

    v27 = v77;
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
LABEL_40:
        v39 = 0;
        return v39 & 1;
      }

      v28 = *v25;
      v29 = v25[1];
      v30 = v25[2];
      v31 = &v27[*(_s14DeviceCriteriaO17DeviceDescriptionVMa(0) + 32)];
      v33 = *v31;
      v32 = v31[1];
      v34 = v31[2];
      if (v32 >> 60 == 15)
      {
        if (v29 >> 60 == 15)
        {
          sub_239838098(v33, v32);
LABEL_8:
          sub_23982D9B4(v33, v32);
          goto LABEL_40;
        }
      }

      else if (v29 >> 60 != 15)
      {
        sub_239838098(v33, v32);
        sub_239826330(v28, v29);
        v68 = sub_239827F9C(v33, v32, v28, v29);
        sub_2398282D8(v28, v29);
        sub_23982D9B4(v28, v29);
        if (v68 && v34 == v30)
        {
          goto LABEL_8;
        }

        v62 = v33;
        v63 = v32;
        goto LABEL_44;
      }

      sub_239838098(v33, v32);
      sub_23982D9B4(v33, v32);
      v62 = v28;
      v63 = v29;
LABEL_44:
      sub_23982D9B4(v62, v63);
      goto LABEL_45;
    }

    v46 = *v25;
    v45 = v25[1];
    v47 = &v27[*(_s14DeviceCriteriaO17DeviceDescriptionVMa(0) + 28)];
    v48 = v47[1];
    if (v48)
    {
      if (*v47 == v46 && v48 == v45)
      {

        goto LABEL_40;
      }

      v64 = sub_239857054();

      if (v64)
      {
        goto LABEL_40;
      }
    }

    else
    {
    }

LABEL_45:
    v39 = 1;
    return v39 & 1;
  }

  v70 = v10;
  v71 = v12;
  v76 = v6;
  v36 = v73;
  v35 = v74;
  v37 = v75;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v55 = v71;
      v56 = v7;
      v69 = *(v73 + 32);
      v69(v71, v25, v7);
      v57 = v76;
      (*(v36 + 16))(v76, v55, v7);
      (*(v36 + 56))(v57, 0, 1, v7);
      v58 = v37;
      v59 = *(v72 + 48);
      sub_2398380AC(v77, v58);
      sub_2398380AC(v57, v58 + v59);
      v60 = *(v36 + 48);
      if (v60(v58, 1, v7) == 1)
      {
        sub_23982F038(v57, &qword_27DF7C4C0, &qword_23985A5D8);
        (*(v36 + 8))(v55, v7);
        if (v60(v58 + v59, 1, v7) == 1)
        {
          sub_23982F038(v58, &qword_27DF7C4C0, &qword_23985A5D8);
          goto LABEL_40;
        }
      }

      else
      {
        sub_2398380AC(v58, v35);
        if (v60(v58 + v59, 1, v7) != 1)
        {
          v65 = v70;
          v69(v70, (v58 + v59), v7);
          sub_2398368EC(&qword_27DF7C898, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v66 = sub_239856C14();
          v67 = *(v36 + 8);
          v67(v65, v56);
          sub_23982F038(v76, &qword_27DF7C4C0, &qword_23985A5D8);
          v67(v71, v56);
          v67(v35, v56);
          sub_23982F038(v58, &qword_27DF7C4C0, &qword_23985A5D8);
          if (v66)
          {
            goto LABEL_40;
          }

          goto LABEL_45;
        }

        sub_23982F038(v76, &qword_27DF7C4C0, &qword_23985A5D8);
        v61 = *(v36 + 8);
        v61(v71, v7);
        v61(v35, v7);
      }

      sub_23982F038(v58, &qword_27DF7C888, &unk_23985B9B0);
      goto LABEL_45;
    }

    v40 = swift_projectBox();
    sub_23983244C(v40, v23);
    v41 = sub_23983250C(v77);
    sub_2398324B0(v23);

    v39 = v41 ^ 1;
    return v39 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    v38 = *(*v25 + 16);
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    *(&v69 - 2) = v77;

    sub_239836524(sub_23983811C, v38, v15);

    v39 = (*(v17 + 48))(v15, 1, v16) == 1;
    sub_23982F038(v15, &qword_27DF7C890, &unk_23985B9C0);

    return v39 & 1;
  }

  v49 = *(*v25 + 16);
  v50 = *(v49 + 16);

  v52 = 0;
  v53 = v77;
  while (1)
  {
    if (v50 == v52)
    {

      goto LABEL_40;
    }

    if (v52 >= *(v49 + 16))
    {
      break;
    }

    sub_23983244C(v49 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v52++, v20);
    v54 = sub_23983250C(v53);
    result = sub_2398324B0(v20);
    if (v54)
    {

      goto LABEL_45;
    }
  }

  __break(1u);
  return result;
}

uint64_t static MatterAddDeviceRequest.DeviceCriteria.== infix(_:_:)(char *a1, uint64_t a2)
{
  v74 = a1;
  v3 = sub_239856AF4();
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x28223BE20](v3);
  v71 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  v6 = MEMORY[0x28223BE20](v5);
  v70 = (&v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v68 = (&v67 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v69 = (&v67 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v67 = (&v67 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v67 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v67 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v67 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v67 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (&v67 - v27);
  MEMORY[0x28223BE20](v26);
  v30 = (&v67 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C658, &qword_23985AD30);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v34 = &v67 - v33;
  v35 = (&v67 + *(v32 + 56) - v33);
  sub_23983244C(v74, &v67 - v33);
  sub_23983244C(a2, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v56 = v67;
        sub_23983244C(v34, v67);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v56 = v69;
        sub_23983244C(v34, v69);
        if (swift_getEnumCaseMultiPayload() != 5)
        {
          goto LABEL_41;
        }
      }

      v45 = *v56 == *v35;
LABEL_34:
      v55 = v45;
      goto LABEL_37;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v57 = v68;
      sub_23983244C(v34, v68);
      v59 = *v57;
      v58 = v57[1];
      if (swift_getEnumCaseMultiPayload() != 6)
      {

        goto LABEL_41;
      }

      if (v59 == *v35 && v58 == v35[1])
      {
      }

      else
      {
        v61 = sub_239857054();

        if ((v61 & 1) == 0)
        {
LABEL_24:
          sub_2398324B0(v34);
LABEL_42:
          v55 = 0;
          return v55 & 1;
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        v37 = v70;
        sub_23983244C(v34, v70);
        v38 = *v37;
        v39 = v37[1];
        v40 = v37[2];
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v41 = *v35;
          v42 = v35[1];
          v43 = v35[2];
          v44 = sub_239827F9C(v38, v39, *v35, v42);
          sub_2398282D8(v41, v42);
          sub_2398282D8(v38, v39);
          if (v44)
          {
            v45 = v40 == v43;
            goto LABEL_34;
          }

          goto LABEL_24;
        }

        sub_2398282D8(v38, v39);
LABEL_41:
        sub_23982F038(v34, &qword_27DF7C658, &qword_23985AD30);
        goto LABEL_42;
      }

      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_41;
      }
    }

    sub_2398324B0(v34);
    v55 = 1;
    return v55 & 1;
  }

  v70 = v22;
  v74 = v19;
  v46 = v71;
  v47 = v72;
  v48 = v73;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23983244C(v34, v28);
      v49 = *v28;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_26:
        v62 = *(v49 + 16);
        v63 = *(*v35 + 16);

        v55 = sub_2398316C4(v62, v63);

        goto LABEL_37;
      }
    }

    else
    {
      sub_23983244C(v34, v30);
      v49 = *v30;
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_26;
      }
    }

LABEL_27:

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_23983244C(v34, v25);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_27;
    }

    v50 = swift_projectBox();
    v51 = swift_projectBox();
    v52 = v70;
    sub_23983244C(v50, v70);
    v53 = v51;
    v54 = v74;
    sub_23983244C(v53, v74);
    v55 = static MatterAddDeviceRequest.DeviceCriteria.== infix(_:_:)(v52, v54);
    sub_2398324B0(v54);
    sub_2398324B0(v52);
  }

  else
  {
    sub_23983244C(v34, v16);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      (*(v47 + 8))(v16, v48);
      goto LABEL_41;
    }

    v64 = v46;
    (*(v47 + 32))(v46, v35, v48);
    v55 = sub_239856AD4();
    v65 = *(v47 + 8);
    v65(v64, v48);
    v65(v16, v48);
  }

LABEL_37:
  sub_2398324B0(v34);
  return v55 & 1;
}

uint64_t sub_2398334C8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x63697665446C6C61;
    v6 = 7105633;
    if (a1 != 2)
    {
      v6 = 7630702;
    }

    if (a1)
    {
      v5 = 7958113;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x49746375646F7270;
    v2 = 0x754E6C6169726573;
    if (a1 != 7)
    {
      v2 = 0x6F4E636972626166;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x697373696D6D6F63;
    if (a1 != 4)
    {
      v3 = 0x4449726F646E6576;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2398335F0(uint64_t a1)
{
  v2 = sub_239836934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23983362C(uint64_t a1)
{
  v2 = sub_239836934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239833668(uint64_t a1)
{
  v2 = sub_2398369DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2398336A4(uint64_t a1)
{
  v2 = sub_2398369DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2398336E0(uint64_t a1)
{
  v2 = sub_239836988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23983371C(uint64_t a1)
{
  v2 = sub_239836988();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239833760@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_239837D74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_239833794(uint64_t a1)
{
  v2 = sub_2398366A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2398337D0(uint64_t a1)
{
  v2 = sub_2398366A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23983380C(uint64_t a1)
{
  v2 = sub_239836844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239833848(uint64_t a1)
{
  v2 = sub_239836844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239833884()
{
  if (*v0)
  {
    return 0x444965646F6ELL;
  }

  else
  {
    return 0x6C627550746F6F72;
  }
}

uint64_t sub_2398338C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C627550746F6F72 && a2 == 0xED000079654B6369;
  if (v6 || (sub_239857054() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x444965646F6ELL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_239857054();

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

uint64_t sub_2398339A8(uint64_t a1)
{
  v2 = sub_2398366F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2398339E4(uint64_t a1)
{
  v2 = sub_2398366F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239833A20(uint64_t a1)
{
  v2 = sub_239836898();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239833A5C(uint64_t a1)
{
  v2 = sub_239836898();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239833A98(uint64_t a1)
{
  v2 = sub_23983679C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239833AD4(uint64_t a1)
{
  v2 = sub_23983679C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239833B10(uint64_t a1)
{
  v2 = sub_239836748();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239833B4C(uint64_t a1)
{
  v2 = sub_239836748();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239833B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_239857054();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_239833C08(uint64_t a1)
{
  v2 = sub_2398367F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239833C44(uint64_t a1)
{
  v2 = sub_2398367F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceRequest.DeviceCriteria.encode(to:)(void *a1)
{
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C660, &qword_23985AD38);
  v71 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v66 - v2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C668, &qword_23985AD40);
  v70 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v66 - v3;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C670, &qword_23985AD48);
  v69 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v66 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C678, &qword_23985AD50);
  v68 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v66 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C680, &qword_23985AD58);
  v67 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v93 = &v66 - v6;
  v7 = sub_239856AF4();
  v91 = *(v7 - 8);
  v92 = v7;
  MEMORY[0x28223BE20](v7);
  v90 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C688, &qword_23985AD60);
  v66 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v89 = &v66 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C690, &qword_23985AD68);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v88 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C698, &qword_23985AD70);
  v76 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v66 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C6A0, &qword_23985AD78);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v66 - v14;
  v15 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (&v66 - v19);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C6A8, &qword_23985AD80);
  v94 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v22 = &v66 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2398366A0();
  v97 = v22;
  sub_239857144();
  sub_23983244C(v95, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v32 = v18;
    v33 = v13;
    v95 = v11;
    v34 = v88;
    v35 = v89;
    v36 = v90;
    v37 = v91;
    v38 = v93;
    if (EnumCaseMultiPayload > 1)
    {
      v43 = v98;
      if (EnumCaseMultiPayload == 2)
      {
        v44 = swift_projectBox();
        sub_23983244C(v44, v32);
        LOBYTE(v99) = 3;
        sub_239836898();
        v45 = v97;
        sub_239856FA4();
        sub_2398368EC(&qword_27DF7C398, type metadata accessor for MatterAddDeviceRequest.DeviceCriteria, &protocol conformance descriptor for MatterAddDeviceRequest.DeviceCriteria);
        v46 = v75;
        sub_239856FE4();
        (*(v66 + 8))(v35, v46);
        sub_2398324B0(v32);
        (*(v94 + 8))(v45, v43);
      }

      else
      {
        v59 = v92;
        (*(v91 + 32))(v90, v20, v92);
        LOBYTE(v99) = 4;
        sub_239836844();
        v60 = v38;
        v61 = v97;
        sub_239856FA4();
        sub_2398368EC(&qword_27DF7C6E0, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
        v62 = v78;
        sub_239856FE4();
        (*(v67 + 8))(v60, v62);
        (*(v37 + 8))(v36, v59);
        return (*(v94 + 8))(v61, v98);
      }
    }

    else
    {
      v39 = v98;
      if (EnumCaseMultiPayload)
      {
        v56 = *(*v20 + 16);
        LOBYTE(v99) = 2;
        sub_239836934();

        v57 = v97;
        sub_239856FA4();
        v99 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C6F8, &qword_23985AD88);
        sub_239836A94(&qword_27DF7C700, &qword_27DF7C398, &protocol conformance descriptor for MatterAddDeviceRequest.DeviceCriteria, MEMORY[0x277D83948]);
        v58 = v79;
        sub_239856FE4();
        (*(v77 + 8))(v34, v58);
        (*(v94 + 8))(v57, v39);
      }

      else
      {
        v40 = *(*v20 + 16);
        LOBYTE(v99) = 1;
        sub_239836988();

        v41 = v97;
        sub_239856FA4();
        v99 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C6F8, &qword_23985AD88);
        sub_239836A94(&qword_27DF7C700, &qword_27DF7C398, &protocol conformance descriptor for MatterAddDeviceRequest.DeviceCriteria, MEMORY[0x277D83948]);
        v42 = v95;
        sub_239856FE4();
        (*(v76 + 8))(v33, v42);
        (*(v94 + 8))(v41, v39);
      }
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      LOBYTE(v99) = 5;
      sub_2398367F0();
      v47 = v80;
      v49 = v97;
      v48 = v98;
      sub_239856FA4();
      v50 = v81;
      sub_239856FD4();
      v51 = &v100;
    }

    else
    {
      LOBYTE(v99) = 6;
      sub_23983679C();
      v47 = v82;
      v49 = v97;
      v48 = v98;
      sub_239856FA4();
      v50 = v83;
      sub_239856FD4();
      v51 = v101;
    }

    (*(*(v51 - 32) + 8))(v47, v50);
    return (*(v94 + 8))(v49, v48);
  }

  else if (EnumCaseMultiPayload == 6)
  {
    LOBYTE(v99) = 7;
    sub_239836748();
    v52 = v84;
    v54 = v97;
    v53 = v98;
    sub_239856FA4();
    v55 = v85;
    sub_239856FB4();

    (*(v70 + 8))(v52, v55);
    return (*(v94 + 8))(v54, v53);
  }

  else if (EnumCaseMultiPayload == 7)
  {
    v25 = *v20;
    v24 = v20[1];
    LOBYTE(v99) = 8;
    sub_2398366F4();
    v26 = v86;
    v28 = v97;
    v27 = v98;
    sub_239856FA4();
    v99 = v25;
    v100 = v24;
    v101[23] = 0;
    sub_239828988();
    v29 = v87;
    v30 = v96;
    sub_239856FE4();
    if (v30)
    {
      (*(v71 + 8))(v26, v29);
      (*(v94 + 8))(v28, v27);
      return sub_2398282D8(v25, v24);
    }

    else
    {
      LOBYTE(v99) = 1;
      sub_239857024();
      sub_2398282D8(v25, v24);
      (*(v71 + 8))(v26, v29);
      return (*(v94 + 8))(v28, v27);
    }
  }

  else
  {
    LOBYTE(v99) = 0;
    sub_2398369DC();
    v63 = v72;
    v65 = v97;
    v64 = v98;
    sub_239856FA4();
    (*(v73 + 8))(v63, v74);
    return (*(v94 + 8))(v65, v64);
  }
}

uint64_t MatterAddDeviceRequest.DeviceCriteria.hash(into:)(uint64_t a1)
{
  v3 = sub_239856AF4();
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v38 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = (&v38 - v17);
  sub_23983244C(v1, &v38 - v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v36 = v39;
        (*(v39 + 32))(v5, v18, v3);
        MEMORY[0x23EE790C0](4);
        sub_2398368EC(&qword_27DF7C718, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_239856C04();
        return (*(v36 + 8))(v5, v3);
      }

      v29 = swift_projectBox();
      sub_23983244C(v29, v10);
      MEMORY[0x23EE790C0](3);
      MatterAddDeviceRequest.DeviceCriteria.hash(into:)(a1);
      sub_2398324B0(v10);
    }

    else
    {
      v24 = v7;
      if (EnumCaseMultiPayload)
      {
        v32 = *(*v18 + 16);
        MEMORY[0x23EE790C0](2);
        MEMORY[0x23EE790C0](*(v32 + 16));
        v33 = *(v32 + 16);
        if (v33)
        {
          v34 = v32 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
          v35 = *(v24 + 72);

          do
          {
            sub_23983244C(v34, v13);
            MatterAddDeviceRequest.DeviceCriteria.hash(into:)(a1);
            sub_2398324B0(v13);
            v34 += v35;
            --v33;
          }

          while (v33);
          goto LABEL_20;
        }
      }

      else
      {
        v25 = *(*v18 + 16);
        MEMORY[0x23EE790C0](1);
        MEMORY[0x23EE790C0](*(v25 + 16));
        v26 = *(v25 + 16);
        if (v26)
        {
          v27 = v25 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
          v28 = *(v24 + 72);

          do
          {
            sub_23983244C(v27, v16);
            MatterAddDeviceRequest.DeviceCriteria.hash(into:)(a1);
            sub_2398324B0(v16);
            v27 += v28;
            --v26;
          }

          while (v26);
LABEL_20:
        }
      }
    }
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v30 = *v18;
    if (EnumCaseMultiPayload == 4)
    {
      v31 = 5;
    }

    else
    {
      v31 = 6;
    }

    MEMORY[0x23EE790C0](v31);
    v37 = v30;
  }

  else
  {
    if (EnumCaseMultiPayload == 6)
    {
      MEMORY[0x23EE790C0](7);
      sub_239856C64();
    }

    if (EnumCaseMultiPayload == 7)
    {
      v20 = *v18;
      v21 = v18[1];
      v22 = v18[2];
      MEMORY[0x23EE790C0](8);
      sub_239856AC4();
      MEMORY[0x23EE790F0](v22);
      return sub_2398282D8(v20, v21);
    }

    v37 = 0;
  }

  return MEMORY[0x23EE790C0](v37);
}

uint64_t MatterAddDeviceRequest.DeviceCriteria.hashValue.getter()
{
  sub_239857094();
  MatterAddDeviceRequest.DeviceCriteria.hash(into:)(v1);
  return sub_2398570E4();
}

uint64_t MatterAddDeviceRequest.DeviceCriteria.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C720, &qword_23985AD90);
  v122 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v127 = &v97 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C728, &qword_23985AD98);
  v120 = *(v4 - 8);
  v121 = v4;
  MEMORY[0x28223BE20](v4);
  v126 = &v97 - v5;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C730, &qword_23985ADA0);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v124 = &v97 - v6;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C738, &qword_23985ADA8);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v134 = &v97 - v7;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C740, &qword_23985ADB0);
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v125 = &v97 - v8;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C748, &qword_23985ADB8);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v133 = &v97 - v9;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C750, &qword_23985ADC0);
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v132 = &v97 - v10;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C758, &qword_23985ADC8);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v131 = &v97 - v11;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C760, &qword_23985ADD0);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v123 = &v97 - v12;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C768, &unk_23985ADD8);
  v135 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v14 = &v97 - v13;
  v129 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  v15 = MEMORY[0x28223BE20](v129);
  v104 = (&v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v97 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v97 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v97 - v24);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = (&v97 - v29);
  v31 = a1[3];
  v137 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_2398366A0();
  v32 = v136;
  sub_239857134();
  if (v32)
  {
    goto LABEL_12;
  }

  v98 = v25;
  v99 = v22;
  v101 = v28;
  v100 = v19;
  v33 = v131;
  v34 = v132;
  v36 = v133;
  v35 = v134;
  v103 = 0;
  v102 = v30;
  v37 = v130;
  v136 = v14;
  v38 = sub_239856F94();
  if (*(v38 + 16) != 1 || (v39 = *(v38 + 32), v39 == 9))
  {
    v44 = sub_239856E44();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C2E0, &unk_239859FC0);
    *v46 = v129;
    v47 = v136;
    sub_239856EF4();
    sub_239856E34();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
    swift_willThrow();
    (*(v135 + 8))(v47, v37);
LABEL_11:
    swift_unknownObjectRelease();
LABEL_12:
    v48 = v137;
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  if (*(v38 + 32) <= 3u)
  {
    v50 = v136;
    if (*(v38 + 32) <= 1u)
    {
      v51 = v128;
      v52 = v103;
      if (*(v38 + 32))
      {
        LOBYTE(v138) = 1;
        sub_239836988();
        v66 = v33;
        sub_239856EE4();
        if (!v52)
        {
          v67 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C6F8, &qword_23985AD88);
          sub_239836A94(&qword_27DF7C778, &qword_27DF7C368, &protocol conformance descriptor for MatterAddDeviceRequest.DeviceCriteria, MEMORY[0x277D83978]);
          v68 = v108;
          sub_239856F44();
          (*(v107 + 8))(v66, v68);
          (*(v135 + 8))(v50, v37);
          swift_unknownObjectRelease();
          v54 = v102;
          *v102 = v67;
          goto LABEL_40;
        }
      }

      else
      {
        LOBYTE(v138) = 0;
        sub_2398369DC();
        v53 = v123;
        sub_239856EE4();
        if (!v52)
        {
          (*(v105 + 8))(v53, v106);
          (*(v135 + 8))(v50, v37);
          swift_unknownObjectRelease();
          v54 = v102;
LABEL_40:
          swift_storeEnumTagMultiPayload();
          v91 = v137;
          goto LABEL_44;
        }
      }

LABEL_29:
      (*(v135 + 8))(v50, v37);
      goto LABEL_11;
    }

    v55 = v103;
    if (v39 == 2)
    {
      LOBYTE(v138) = 2;
      sub_239836934();
      sub_239856EE4();
      if (v55)
      {
        goto LABEL_29;
      }

      v56 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C6F8, &qword_23985AD88);
      sub_239836A94(&qword_27DF7C778, &qword_27DF7C368, &protocol conformance descriptor for MatterAddDeviceRequest.DeviceCriteria, MEMORY[0x277D83978]);
      v57 = v109;
      sub_239856F44();
      (*(v110 + 8))(v34, v57);
      (*(v135 + 8))(v50, v37);
      swift_unknownObjectRelease();
      v54 = v102;
      *v102 = v56;
    }

    else
    {
      LOBYTE(v138) = 3;
      sub_239836898();
      sub_239856EE4();
      if (v55)
      {
        goto LABEL_29;
      }

      v77 = swift_allocBox();
      sub_2398368EC(&qword_27DF7C368, type metadata accessor for MatterAddDeviceRequest.DeviceCriteria, &protocol conformance descriptor for MatterAddDeviceRequest.DeviceCriteria);
      v78 = v112;
      sub_239856F44();
      (*(v111 + 8))(v36, v78);
      (*(v135 + 8))(v50, v37);
      swift_unknownObjectRelease();
      v54 = v102;
      *v102 = v77;
    }

    swift_storeEnumTagMultiPayload();
LABEL_43:
    v91 = v137;
    v51 = v128;
    goto LABEL_44;
  }

  if (*(v38 + 32) > 5u)
  {
    if (v39 != 6)
    {
      v40 = v136;
      if (v39 == 7)
      {
        LOBYTE(v138) = 7;
        sub_239836748();
        v41 = v126;
        v42 = v103;
        sub_239856EE4();
        if (!v42)
        {
          v43 = v121;
          v83 = sub_239856F14();
          v85 = v84;
          (*(v120 + 8))(v41, v43);
          (*(v135 + 8))(v40, v37);
          swift_unknownObjectRelease();
          v86 = v100;
          *v100 = v83;
          v86[1] = v85;
          swift_storeEnumTagMultiPayload();
          v87 = v86;
LABEL_42:
          v54 = v102;
          sub_239836A30(v87, v102);
          goto LABEL_43;
        }

        (*(v135 + 8))(v40, v37);
        goto LABEL_11;
      }

      LOBYTE(v138) = 8;
      sub_2398366F4();
      v69 = v127;
      v70 = v103;
      sub_239856EE4();
      v71 = v128;
      if (v70)
      {
        (*(v135 + 8))(v40, v37);
LABEL_34:
        swift_unknownObjectRelease();
        v48 = v137;
        return __swift_destroy_boxed_opaque_existential_1(v48);
      }

      v140 = 0;
      sub_239828A30();
      v79 = v119;
      sub_239856F44();
      v88 = v69;
      v90 = v138;
      v89 = v139;
      v140 = 1;
      v134 = sub_239856F84();
      (*(v122 + 8))(v88, v79);
      (*(v135 + 8))(v40, v37);
      swift_unknownObjectRelease();
      v95 = v104;
      *v104 = v90;
      v95[1] = v89;
      v95[2] = v134;
      swift_storeEnumTagMultiPayload();
      v96 = v95;
      v54 = v102;
      sub_239836A30(v96, v102);
      v91 = v137;
      v51 = v71;
      goto LABEL_44;
    }

    LOBYTE(v138) = 6;
    sub_23983679C();
    v64 = v124;
    v60 = v136;
    v65 = v103;
    sub_239856EE4();
    if (!v65)
    {
      v74 = v118;
      v75 = sub_239856F34();
      v76 = v135;
      v81 = v75;
      (*(v117 + 8))(v64, v74);
      (*(v76 + 8))(v60, v37);
      swift_unknownObjectRelease();
      v82 = v99;
      *v99 = v81;
      swift_storeEnumTagMultiPayload();
      v87 = v82;
      goto LABEL_42;
    }

    goto LABEL_25;
  }

  v51 = v128;
  if (v39 == 4)
  {
    v58 = v128;
    LOBYTE(v138) = 4;
    sub_239836844();
    v59 = v125;
    v60 = v136;
    v61 = v103;
    sub_239856EE4();
    if (!v61)
    {
      sub_239856AF4();
      sub_2398368EC(&qword_27DF7C770, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
      v62 = v101;
      v63 = v114;
      sub_239856F44();
      (*(v113 + 8))(v59, v63);
      (*(v135 + 8))(v60, v37);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v54 = v102;
      sub_239836A30(v62, v102);
      v91 = v137;
      v51 = v58;
      goto LABEL_44;
    }

LABEL_25:
    (*(v135 + 8))(v60, v37);
    goto LABEL_11;
  }

  LOBYTE(v138) = 5;
  sub_2398367F0();
  v72 = v136;
  v73 = v103;
  sub_239856EE4();
  if (v73)
  {
    (*(v135 + 8))(v72, v37);
    goto LABEL_34;
  }

  v80 = v116;
  v92 = sub_239856F34();
  (*(v115 + 8))(v35, v80);
  (*(v135 + 8))(v136, v37);
  swift_unknownObjectRelease();
  v93 = v98;
  *v98 = v92;
  swift_storeEnumTagMultiPayload();
  v94 = v93;
  v54 = v102;
  sub_239836A30(v94, v102);
  v91 = v137;
LABEL_44:
  sub_239836A30(v54, v51);
  return __swift_destroy_boxed_opaque_existential_1(v91);
}

uint64_t sub_2398363F4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_239836428()
{
  sub_239857094();
  MatterAddDeviceRequest.DeviceCriteria.hash(into:)(v1);
  return sub_2398570E4();
}

uint64_t sub_23983646C(uint64_t a1)
{
  sub_239857094();
  MatterAddDeviceRequest.DeviceCriteria.hash(into:)(v2);
  return sub_2398570E4();
}

uint64_t sub_2398364DC(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  return sub_239827F9C(*a1, a1[1], *a2, a2[1]) & (v2 == v3);
}

uint64_t sub_239836524@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_23983244C(v12, v10);
      v14 = a1(v10);
      if (v3)
      {
        return sub_2398324B0(v10);
      }

      if (v14)
      {
        break;
      }

      sub_2398324B0(v10);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_239836A30(v10, v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

unint64_t sub_2398366A0()
{
  result = qword_27DF7C6B0;
  if (!qword_27DF7C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C6B0);
  }

  return result;
}

unint64_t sub_2398366F4()
{
  result = qword_27DF7C6B8;
  if (!qword_27DF7C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C6B8);
  }

  return result;
}

unint64_t sub_239836748()
{
  result = qword_27DF7C6C0;
  if (!qword_27DF7C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C6C0);
  }

  return result;
}

unint64_t sub_23983679C()
{
  result = qword_27DF7C6C8;
  if (!qword_27DF7C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C6C8);
  }

  return result;
}

unint64_t sub_2398367F0()
{
  result = qword_27DF7C6D0;
  if (!qword_27DF7C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C6D0);
  }

  return result;
}

unint64_t sub_239836844()
{
  result = qword_27DF7C6D8;
  if (!qword_27DF7C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C6D8);
  }

  return result;
}

unint64_t sub_239836898()
{
  result = qword_27DF7C6E8;
  if (!qword_27DF7C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C6E8);
  }

  return result;
}

uint64_t sub_2398368EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_239836934()
{
  result = qword_27DF7C6F0;
  if (!qword_27DF7C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C6F0);
  }

  return result;
}

unint64_t sub_239836988()
{
  result = qword_27DF7C708;
  if (!qword_27DF7C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C708);
  }

  return result;
}

unint64_t sub_2398369DC()
{
  result = qword_27DF7C710;
  if (!qword_27DF7C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C710);
  }

  return result;
}

uint64_t sub_239836A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_239836A94(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF7C6F8, &qword_23985AD88);
    sub_2398368EC(a2, type metadata accessor for MatterAddDeviceRequest.DeviceCriteria, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_239836BC8(uint64_t a1)
{
  sub_239856AF4();
  if (v1 <= 0x3F)
  {
    sub_239836C64();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_239836C64()
{
  if (!qword_27DF7C798)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DF7C798);
    }
  }
}

uint64_t _s14DeviceCriteriaO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14DeviceCriteriaO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_239836EAC()
{
  result = qword_27DF7C7A0;
  if (!qword_27DF7C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7A0);
  }

  return result;
}

unint64_t sub_239836F04()
{
  result = qword_27DF7C7A8;
  if (!qword_27DF7C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7A8);
  }

  return result;
}

unint64_t sub_239836F5C()
{
  result = qword_27DF7C7B0;
  if (!qword_27DF7C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7B0);
  }

  return result;
}

unint64_t sub_239836FB4()
{
  result = qword_27DF7C7B8;
  if (!qword_27DF7C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7B8);
  }

  return result;
}

unint64_t sub_23983700C()
{
  result = qword_27DF7C7C0;
  if (!qword_27DF7C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7C0);
  }

  return result;
}

unint64_t sub_239837064()
{
  result = qword_27DF7C7C8;
  if (!qword_27DF7C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7C8);
  }

  return result;
}

unint64_t sub_2398370BC()
{
  result = qword_27DF7C7D0;
  if (!qword_27DF7C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7D0);
  }

  return result;
}

unint64_t sub_239837114()
{
  result = qword_27DF7C7D8;
  if (!qword_27DF7C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7D8);
  }

  return result;
}

unint64_t sub_23983716C()
{
  result = qword_27DF7C7E0;
  if (!qword_27DF7C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7E0);
  }

  return result;
}

unint64_t sub_2398371C4()
{
  result = qword_27DF7C7E8;
  if (!qword_27DF7C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7E8);
  }

  return result;
}

unint64_t sub_23983721C()
{
  result = qword_27DF7C7F0;
  if (!qword_27DF7C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7F0);
  }

  return result;
}

unint64_t sub_239837274()
{
  result = qword_27DF7C7F8;
  if (!qword_27DF7C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7F8);
  }

  return result;
}

unint64_t sub_2398372CC()
{
  result = qword_27DF7C800;
  if (!qword_27DF7C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C800);
  }

  return result;
}

unint64_t sub_239837324()
{
  result = qword_27DF7C808;
  if (!qword_27DF7C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C808);
  }

  return result;
}

unint64_t sub_23983737C()
{
  result = qword_27DF7C810;
  if (!qword_27DF7C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C810);
  }

  return result;
}

unint64_t sub_2398373D4()
{
  result = qword_27DF7C818;
  if (!qword_27DF7C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C818);
  }

  return result;
}

unint64_t sub_23983742C()
{
  result = qword_27DF7C820;
  if (!qword_27DF7C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C820);
  }

  return result;
}

unint64_t sub_239837484()
{
  result = qword_27DF7C828;
  if (!qword_27DF7C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C828);
  }

  return result;
}

unint64_t sub_2398374DC()
{
  result = qword_27DF7C830;
  if (!qword_27DF7C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C830);
  }

  return result;
}

unint64_t sub_239837534()
{
  result = qword_27DF7C838;
  if (!qword_27DF7C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C838);
  }

  return result;
}

unint64_t sub_23983758C()
{
  result = qword_27DF7C840;
  if (!qword_27DF7C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C840);
  }

  return result;
}

unint64_t sub_2398375E4()
{
  result = qword_27DF7C848;
  if (!qword_27DF7C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C848);
  }

  return result;
}

unint64_t sub_23983763C()
{
  result = qword_27DF7C850;
  if (!qword_27DF7C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C850);
  }

  return result;
}

unint64_t sub_239837694()
{
  result = qword_27DF7C858;
  if (!qword_27DF7C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C858);
  }

  return result;
}

unint64_t sub_2398376EC()
{
  result = qword_27DF7C860;
  if (!qword_27DF7C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C860);
  }

  return result;
}

unint64_t sub_239837744()
{
  result = qword_27DF7C868;
  if (!qword_27DF7C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C868);
  }

  return result;
}

unint64_t sub_23983779C()
{
  result = qword_27DF7C870;
  if (!qword_27DF7C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C870);
  }

  return result;
}

unint64_t sub_2398377F4()
{
  result = qword_27DF7C878;
  if (!qword_27DF7C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C878);
  }

  return result;
}

unint64_t sub_23983784C()
{
  result = qword_27DF7C880;
  if (!qword_27DF7C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C880);
  }

  return result;
}

uint64_t sub_2398378A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_239856AF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4C0, &qword_23985A5D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C888, &unk_23985B9B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v50 - v13;
  v15 = *(v12 + 56);
  sub_2398380AC(a1, &v50 - v13);
  sub_2398380AC(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_23982F038(v14, &qword_27DF7C4C0, &qword_23985A5D8);
      goto LABEL_9;
    }

LABEL_6:
    sub_23982F038(v14, &qword_27DF7C888, &unk_23985B9B0);
    return 0;
  }

  sub_2398380AC(v14, v10);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v7, &v14[v15], v4);
  sub_2398368EC(&qword_27DF7C898, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v18 = sub_239856C14();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_23982F038(v14, &qword_27DF7C4C0, &qword_23985A5D8);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v20 = _s14DeviceCriteriaO17DeviceDescriptionVMa(0);
  v21 = v20[5];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = v20[6];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  v31 = v20[7];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (!v33)
  {
    if (!v35)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (!v35)
  {
    return 0;
  }

  if (*v32 != *v34 || v33 != v35)
  {
    v36 = v20;
    v37 = sub_239857054();
    v20 = v36;
    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_28:
  v38 = v20[8];
  v39 = a1 + v38;
  v41 = *(a1 + v38);
  v40 = *(a1 + v38 + 8);
  v42 = *(v39 + 16);
  v43 = (a2 + v38);
  v45 = *v43;
  v44 = v43[1];
  v46 = v43[2];
  if (v40 >> 60 != 15)
  {
    if (v44 >> 60 != 15)
    {
      sub_239838098(v41, v40);
      sub_239838098(v45, v44);
      v49 = sub_239827F9C(v41, v40, v45, v44);
      sub_23982D9B4(v45, v44);
      if (v49 && v42 == v46)
      {
        goto LABEL_31;
      }

      v47 = v41;
      v48 = v40;
      goto LABEL_37;
    }

LABEL_33:
    sub_239838098(v41, v40);
    sub_239838098(v45, v44);
    sub_23982D9B4(v41, v40);
    v47 = v45;
    v48 = v44;
LABEL_37:
    sub_23982D9B4(v47, v48);
    return 0;
  }

  if (v44 >> 60 != 15)
  {
    goto LABEL_33;
  }

  sub_239838098(v41, v40);
  sub_239838098(v45, v44);
LABEL_31:
  sub_23982D9B4(v41, v40);
  return 1;
}

uint64_t sub_239837D74(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x63697665446C6C61 && a2 == 0xEA00000000007365 || (sub_239857054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7958113 && a2 == 0xE300000000000000 || (sub_239857054() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000 || (sub_239857054() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7630702 && a2 == 0xE300000000000000 || (sub_239857054() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x697373696D6D6F63 && a2 == 0xEF4449676E696E6FLL || (sub_239857054() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4449726F646E6576 && a2 == 0xE800000000000000 || (sub_239857054() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000044 || (sub_239857054() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (sub_239857054() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F4E636972626166 && a2 == 0xEA00000000006564)
  {

    return 8;
  }

  else
  {
    v5 = sub_239857054();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

void sub_239838098(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_239826330(a1, a2);
  }
}

uint64_t sub_2398380AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4C0, &qword_23985A5D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_239838180(uint64_t a1)
{
  sub_239838264(319);
  if (v1 <= 0x3F)
  {
    sub_2398382BC(319, &qword_27DF7C8B8, MEMORY[0x277D83B88]);
    if (v2 <= 0x3F)
    {
      sub_2398382BC(319, &qword_27DF7C8C0, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_2398382BC(319, &qword_27DF7C8C8, &_s14DeviceCriteriaO10FabricNodeVN);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_239838264(uint64_t a1)
{
  if (!qword_27DF7C8B0)
  {
    sub_239856AF4();
    v1 = sub_239856DD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF7C8B0);
    }
  }
}

void sub_2398382BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_239856DD4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_239838308(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
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

uint64_t sub_23983835C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t static MatterAddDeviceExtensionRequestHandler.ThreadNetworkAssociation.network(extendedPANID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2398383F4(void *a1, uint64_t a2, int a3)
{
  v20 = a3;
  v18 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C920, &qword_23985BDC0);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - v4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C928, &qword_23985BDC8);
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C930, &qword_23985BDD0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_239839320();
  sub_239857144();
  if (v20)
  {
    v21 = 0;
    sub_2398393C8();
    sub_239856FA4();
    (*(v6 + 8))(v8, v16);
  }

  else
  {
    v22 = 1;
    sub_239839374();
    sub_239856FA4();
    v14 = v19;
    sub_239857024();
    (*(v17 + 8))(v5, v14);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2398386EC(uint64_t a1)
{
  v2 = sub_239839320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239838728(uint64_t a1)
{
  v2 = sub_239839320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239838764(uint64_t a1)
{
  v2 = sub_2398393C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2398387A0(uint64_t a1)
{
  v2 = sub_2398393C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239838800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465646E65747865 && a2 == 0xED000044494E4150)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_239857054();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_239838890(uint64_t a1)
{
  v2 = sub_239839374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2398388CC(uint64_t a1)
{
  v2 = sub_239839374();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_239838908@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_23983941C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

BOOL sub_23983895C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t static MatterAddDeviceExtensionRequestHandler.ThreadNetworkAssociation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2 != 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2398389D4(uint64_t a1)
{
  v2 = sub_239838BA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239838A10(uint64_t a1)
{
  v2 = sub_239838BA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadNetworkAssociation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C8D0, &qword_23985BAD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_239838BA4();
  sub_239857144();
  v10 = v7;
  v11 = v8;
  sub_239838BF8();
  sub_239856FE4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_239838BA4()
{
  result = qword_27DF7C8D8;
  if (!qword_27DF7C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C8D8);
  }

  return result;
}

unint64_t sub_239838BF8()
{
  result = qword_27DF7C8E0;
  if (!qword_27DF7C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C8E0);
  }

  return result;
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadNetworkAssociation.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    return MEMORY[0x23EE790C0](0);
  }

  v2 = *v0;
  MEMORY[0x23EE790C0](1);
  return MEMORY[0x23EE790F0](v2);
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadNetworkAssociation.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_239857094();
  if (v2 == 1)
  {
    MEMORY[0x23EE790C0](0);
  }

  else
  {
    MEMORY[0x23EE790C0](1);
    MEMORY[0x23EE790F0](v1);
  }

  return sub_2398570E4();
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadNetworkAssociation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C8E8, &qword_23985BAD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_239838BA4();
  sub_239857134();
  if (!v2)
  {
    sub_239838FB0();
    sub_239856F44();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 8) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_239838E84()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_239857094();
  if (v2 == 1)
  {
    MEMORY[0x23EE790C0](0);
  }

  else
  {
    MEMORY[0x23EE790C0](1);
    MEMORY[0x23EE790F0](v1);
  }

  return sub_2398570E4();
}

uint64_t sub_239838EF4()
{
  if (*(v0 + 8) == 1)
  {
    return MEMORY[0x23EE790C0](0);
  }

  v2 = *v0;
  MEMORY[0x23EE790C0](1);
  return MEMORY[0x23EE790F0](v2);
}

uint64_t sub_239838F44(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_239857094();
  if (v3 == 1)
  {
    MEMORY[0x23EE790C0](0);
  }

  else
  {
    MEMORY[0x23EE790C0](1);
    MEMORY[0x23EE790F0](v2);
  }

  return sub_2398570E4();
}

unint64_t sub_239838FB0()
{
  result = qword_27DF7C8F0;
  if (!qword_27DF7C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C8F0);
  }

  return result;
}

unint64_t sub_239839008()
{
  result = qword_27DF7C8F8;
  if (!qword_27DF7C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C8F8);
  }

  return result;
}

uint64_t sub_23983908C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s24ThreadNetworkAssociationV18AssociationDetailsOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s24ThreadNetworkAssociationVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t _s24ThreadNetworkAssociationV18AssociationDetailsOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_239839164(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239839180(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_2398391C4()
{
  result = qword_27DF7C900;
  if (!qword_27DF7C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C900);
  }

  return result;
}

unint64_t sub_23983921C()
{
  result = qword_27DF7C908;
  if (!qword_27DF7C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C908);
  }

  return result;
}

unint64_t sub_239839274()
{
  result = qword_27DF7C910;
  if (!qword_27DF7C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C910);
  }

  return result;
}

unint64_t sub_2398392CC()
{
  result = qword_27DF7C918;
  if (!qword_27DF7C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C918);
  }

  return result;
}

unint64_t sub_239839320()
{
  result = qword_27DF7C938;
  if (!qword_27DF7C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C938);
  }

  return result;
}

unint64_t sub_239839374()
{
  result = qword_27DF7C940;
  if (!qword_27DF7C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C940);
  }

  return result;
}

unint64_t sub_2398393C8()
{
  result = qword_27DF7C948;
  if (!qword_27DF7C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C948);
  }

  return result;
}

void *sub_23983941C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C950, &qword_23985BDD8);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C958, &qword_23985BDE0);
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C960, &qword_23985BDE8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = a1[3];
  v30 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_239839320();
  v14 = v29;
  sub_239857134();
  if (!v14)
  {
    v25 = v5;
    v15 = v28;
    v29 = v9;
    v16 = sub_239856F94();
    v17 = (2 * *(v16 + 16)) | 1;
    v31 = v16;
    v32 = v16 + 32;
    v33 = 0;
    v34 = v17;
    v18 = sub_2398383C8();
    if (v18 == 2 || v33 != v34 >> 1)
    {
      v20 = sub_239856E44();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C2E0, &unk_239859FC0);
      *v22 = &_s24ThreadNetworkAssociationV18AssociationDetailsON;
      v13 = v11;
      sub_239856EF4();
      sub_239856E34();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v29 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      v35 = 1;
      sub_239839374();
      sub_239856EE4();
      v19 = v29;
      v13 = sub_239856F84();
      (*(v27 + 8))(v4, v15);
      (*(v19 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0;
      sub_2398393C8();
      sub_239856EE4();
      v24 = v29;
      (*(v26 + 8))(v7, v25);
      (*(v24 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
  return v13;
}

unint64_t sub_239839928()
{
  result = qword_27DF7C968;
  if (!qword_27DF7C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C968);
  }

  return result;
}

unint64_t sub_239839980()
{
  result = qword_27DF7C970;
  if (!qword_27DF7C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C970);
  }

  return result;
}

unint64_t sub_2398399D8()
{
  result = qword_27DF7C978;
  if (!qword_27DF7C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C978);
  }

  return result;
}

unint64_t sub_239839A30()
{
  result = qword_27DF7C980;
  if (!qword_27DF7C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C980);
  }

  return result;
}

unint64_t sub_239839A88()
{
  result = qword_27DF7C988;
  if (!qword_27DF7C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C988);
  }

  return result;
}

unint64_t sub_239839AE0()
{
  result = qword_27DF7C990;
  if (!qword_27DF7C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C990);
  }

  return result;
}

unint64_t sub_239839B38()
{
  result = qword_27DF7C998;
  if (!qword_27DF7C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C998);
  }

  return result;
}

unint64_t sub_239839B90()
{
  result = qword_27DF7C9A0;
  if (!qword_27DF7C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C9A0);
  }

  return result;
}

uint64_t sub_239839BF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1684632435;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7974697275636573;
    }

    else
    {
      v4 = 1684955490;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1769173874;
    }

    else
    {
      v4 = 1684632435;
    }

    v5 = 0xE400000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x7974697275636573;
  if (a2 != 2)
  {
    v7 = 1684955490;
    v6 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 1769173874;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_239857054();
  }

  return v10 & 1;
}

uint64_t sub_239839D08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    v3 = 0xD000000000000012;
    if (v2 == 2)
    {
      v4 = 0x800000023985CB90;
    }

    else
    {
      v4 = 0x800000023985CBB0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x7961507075746573;
    }

    else
    {
      v3 = 0x79676F6C6F706F74;
    }

    if (v2)
    {
      v4 = 0xEC00000064616F6CLL;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x800000023985CB90;
    }

    else
    {
      v6 = 0x800000023985CBB0;
    }

    if (v3 != 0xD000000000000012)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x7961507075746573;
    }

    else
    {
      v5 = 0x79676F6C6F706F74;
    }

    if (a2)
    {
      v6 = 0xEC00000064616F6CLL;
    }

    else
    {
      v6 = 0xE800000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
LABEL_26:
    v7 = sub_239857054();
    goto LABEL_27;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiScanResult.ssid.getter()
{
  v1 = *v0;
  sub_239826330(*v0, *(v0 + 8));
  return v1;
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiScanResult.ssid.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2398282D8(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiScanResult.init(ssid:rssi:security:band:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 17) = a4;
  *(a6 + 18) = a5;
  return result;
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiScanResult.hash(into:)(uint64_t a1)
{
  sub_239856AC4();
  sub_2398570B4();
  sub_2398570B4();
  return sub_2398570B4();
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiScanResult.hashValue.getter()
{
  sub_239857094();
  sub_239856AC4();
  sub_2398570B4();
  sub_2398570B4();
  sub_2398570B4();
  return sub_2398570E4();
}

uint64_t sub_23983A084()
{
  sub_239857094();
  sub_239856AC4();
  sub_2398570B4();
  sub_2398570B4();
  sub_2398570B4();
  return sub_2398570E4();
}

uint64_t sub_23983A110(uint64_t a1)
{
  sub_239856AC4();
  sub_2398570B4();
  sub_2398570B4();
  return sub_2398570B4();
}

uint64_t sub_23983A170(uint64_t a1)
{
  sub_239857094();
  sub_239856AC4();
  sub_2398570B4();
  sub_2398570B4();
  sub_2398570B4();
  return sub_2398570E4();
}

uint64_t sub_23983A208()
{
  sub_239857094();
  sub_239856C64();

  return sub_2398570E4();
}

uint64_t sub_23983A2B0(uint64_t a1)
{
  sub_239856C64();
}

uint64_t sub_23983A344(uint64_t a1)
{
  sub_239857094();
  sub_239856C64();

  return sub_2398570E4();
}

unint64_t sub_23983A3E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23983ACF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23983A418(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1684632435;
  v4 = 0xE800000000000000;
  v5 = 0x7974697275636573;
  if (*v1 != 2)
  {
    v5 = 1684955490;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 1769173874;
    v2 = 0xE400000000000000;
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

uint64_t sub_23983A47C()
{
  v1 = 1684632435;
  v2 = 0x7974697275636573;
  if (*v0 != 2)
  {
    v2 = 1684955490;
  }

  if (*v0)
  {
    v1 = 1769173874;
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

unint64_t sub_23983A4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23983ACF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23983A504(uint64_t a1)
{
  v2 = sub_23983AA68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23983A540(uint64_t a1)
{
  v2 = sub_23983AA68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiScanResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C9A8, &qword_23985C0D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23983AA68();
  sub_239857134();
  if (!v2)
  {
    v18 = 0;
    sub_239828A30();
    sub_239856F44();
    v10 = v15;
    v9 = v16;
    LOBYTE(v15) = 1;
    v17 = sub_239856F54();
    LOBYTE(v15) = 2;
    v14 = sub_239856F64();
    LOBYTE(v15) = 3;
    v12 = sub_239856F64();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 8) = v9;
    *(a2 + 16) = v17;
    *(a2 + 17) = v14;
    *(a2 + 18) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiScanResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C9B8, &qword_23985C0E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v8 = *v1;
  v7 = *(v1 + 8);
  v16 = *(v1 + 16);
  v9 = *(v1 + 17);
  v12[0] = *(v1 + 18);
  v12[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_239826330(v8, v7);
  sub_23983AA68();
  sub_239857144();
  v14 = v8;
  v15 = v7;
  v17 = 0;
  sub_239828988();
  v10 = v13;
  sub_239856FE4();
  sub_2398282D8(v14, v15);
  if (!v10)
  {
    LOBYTE(v14) = 1;
    sub_239856FF4();
    LOBYTE(v14) = 2;
    sub_239857004();
    LOBYTE(v14) = 3;
    sub_239857004();
  }

  return (*(v4 + 8))(v6, v3);
}

BOOL _s13MatterSupport0A32AddDeviceExtensionRequestHandlerC14WiFiScanResultV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = *(a2 + 16);
  v6 = *(a2 + 17);
  v7 = *(a2 + 18);
  v8 = sub_239827F9C(*a1, *(a1 + 8), *a2, *(a2 + 8));
  v9 = v4 == v7;
  if (v2 != v5 || v3 != v6)
  {
    v9 = 0;
  }

  return v8 && v9;
}

unint64_t sub_23983AA68()
{
  result = qword_27DF7C9B0;
  if (!qword_27DF7C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C9B0);
  }

  return result;
}

unint64_t sub_23983AAC0()
{
  result = qword_27DF7C9C0;
  if (!qword_27DF7C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C9C0);
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_23983AB28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 19))
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

uint64_t sub_23983AB7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_23983ABF4()
{
  result = qword_27DF7C9C8;
  if (!qword_27DF7C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C9C8);
  }

  return result;
}

unint64_t sub_23983AC4C()
{
  result = qword_27DF7C9D0;
  if (!qword_27DF7C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C9D0);
  }

  return result;
}

unint64_t sub_23983ACA4()
{
  result = qword_27DF7C9D8;
  if (!qword_27DF7C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C9D8);
  }

  return result;
}

unint64_t sub_23983ACF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_239856ED4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t MatterAddDeviceRequest.Home.init(displayName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MatterAddDeviceRequest.Home.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MatterAddDeviceRequest.Home.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static MatterAddDeviceRequest.Home.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_239857054();
  }
}

uint64_t sub_23983AE04(uint64_t a1)
{
  v2 = sub_23983AFB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23983AE40(uint64_t a1)
{
  v2 = sub_23983AFB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceRequest.Home.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C9E0, &qword_23985C3A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23983AFB8();
  sub_239857144();
  sub_239856FB4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_23983AFB8()
{
  result = qword_27DF7C9E8;
  if (!qword_27DF7C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C9E8);
  }

  return result;
}

uint64_t MatterAddDeviceRequest.Home.hashValue.getter()
{
  sub_239857094();
  sub_239856C64();
  return sub_2398570E4();
}

uint64_t MatterAddDeviceRequest.Home.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C9F0, &qword_23985C3A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23983AFB8();
  sub_239857134();
  if (!v2)
  {
    v9 = sub_239856F14();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23983B1D8()
{
  result = qword_27DF7C9F8;
  if (!qword_27DF7C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C9F8);
  }

  return result;
}

uint64_t sub_23983B244(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C9E0, &qword_23985C3A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23983AFB8();
  sub_239857144();
  sub_239856FB4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_23983B3A4()
{
  result = qword_27DF7CA00;
  if (!qword_27DF7CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7CA00);
  }

  return result;
}

unint64_t sub_23983B3FC()
{
  result = qword_27DF7CA08;
  if (!qword_27DF7CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7CA08);
  }

  return result;
}

unint64_t sub_23983B454()
{
  result = qword_27DF7CA10;
  if (!qword_27DF7CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7CA10);
  }

  return result;
}

id MatterAddDeviceExtensionRequestHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MatterAddDeviceExtensionRequestHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatterAddDeviceExtensionRequestHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MatterAddDeviceExtensionRequestHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatterAddDeviceExtensionRequestHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of MatterAddDeviceExtensionRequestHandler.validateDeviceCredential(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23982F208;

  return v7(a1);
}

uint64_t dispatch thunk of MatterAddDeviceExtensionRequestHandler.selectWiFiNetwork(from:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23982F208;

  return v9(a1, a2);
}

uint64_t dispatch thunk of MatterAddDeviceExtensionRequestHandler.selectThreadNetwork(from:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x60);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23982F208;

  return v9(a1, a2);
}

uint64_t dispatch thunk of MatterAddDeviceExtensionRequestHandler.commissionDevice(in:onboardingPayload:commissioningID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x68);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23982EDE8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MatterAddDeviceExtensionRequestHandler.rooms(in:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23983BF90;

  return v7(a1);
}

uint64_t sub_23983BF90(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of MatterAddDeviceExtensionRequestHandler.configureDevice(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x78);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23982EDE8;

  return v11(a1, a2, a3);
}

void *sub_23983C1E4(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_23982A730(a1, v9);
  type metadata accessor for MatterAddDeviceExtensionRequestHandler();
  if (swift_dynamicCast())
  {
    *&v1[OBJC_IVAR____TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler_extensionRequestHandler] = v8;
    v7.receiver = v1;
    v7.super_class = ObjectType;
    v4 = objc_msgSendSuper2(&v7, sel_init);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v4;
  }

  else
  {
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    sub_239856E14();
    MEMORY[0x23EE78C90](0xD000000000000054, 0x800000023985D530);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_239857044();
    MEMORY[0x23EE78C90](10272, 0xE200000000000000);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v6 = sub_239857174();
    MEMORY[0x23EE78C90](v6);

    MEMORY[0x23EE78C90](41, 0xE100000000000000);
    result = sub_239856EB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_23983C3C0(void *a1)
{
  v2 = v1;
  if (qword_27DF7C230 != -1)
  {
    swift_once();
  }

  v4 = sub_239856B34();
  __swift_project_value_buffer(v4, qword_27DF82E80);
  v5 = a1;
  v6 = sub_239856B14();
  v7 = sub_239856D34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_239824000, v6, v7, "Accepting XPC connection: %@", v8, 0xCu);
    sub_23982F038(v9, &qword_27DF7CAF0, &qword_23985A620);
    MEMORY[0x23EE79A40](v9, -1, -1);
    MEMORY[0x23EE79A40](v8, -1, -1);
  }

  v11 = [objc_opt_self() mts_deviceSetupExtensionInterface];
  [v5 setExportedInterface_];

  [v5 setExportedObject_];
  [v5 activate];
  return 1;
}