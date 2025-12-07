void sub_237E431B4(void *a1@<X8>)
{
  sub_237E42C18();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

unint64_t sub_237E4322C()
{
  result = qword_280C8D2B8[0];
  if (!qword_280C8D2B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C8D2B8);
  }

  return result;
}

unint64_t sub_237E43280()
{
  result = qword_280C8D2A0;
  if (!qword_280C8D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8D2A0);
  }

  return result;
}

unint64_t sub_237E432D4()
{
  result = qword_280C8D290;
  if (!qword_280C8D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8D290);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShapedArrayReference.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_237E43404(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ShapedArrayReference.Scalar(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237E435B0()
{
  result = qword_27DEB4AD8;
  if (!qword_27DEB4AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4AD8);
  }

  return result;
}

unint64_t sub_237E43624()
{
  result = qword_27DEB4AE0;
  if (!qword_27DEB4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4AE0);
  }

  return result;
}

unint64_t sub_237E4367C()
{
  result = qword_280C8D2A8;
  if (!qword_280C8D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8D2A8);
  }

  return result;
}

unint64_t sub_237E436D4()
{
  result = qword_280C8D2B0;
  if (!qword_280C8D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8D2B0);
  }

  return result;
}

unint64_t sub_237E43760()
{
  result = qword_280C8D298;
  if (!qword_280C8D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8D298);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_88(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83948];

  return sub_237DA21D0(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_3_82(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83978];

  return sub_237DA21D0(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_4_78()
{

  return sub_237EF9A70();
}

void *OUTLINED_FUNCTION_13_46()
{

  return sub_237EF9970();
}

uint64_t sub_237E438DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 104);
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

uint64_t sub_237E4391C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_237E43988(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0428, &unk_237F0AFE0);
  v4 = swift_allocObject();
  v5 = 0;
  *(v4 + 16) = xmmword_237F03530;
  *(v4 + 32) = a1;
  while (1)
  {
    v6 = v5 + 1;
    if (v5 >= v5 + 1)
    {
      break;
    }

    v7 = *(v4 + 8 * v5 + 32) ^ (*(v4 + 8 * v5 + 32) >> 30);
    v8 = 0x5851F42D00000000 * v7 + 0x4C957F2D00000000 * HIDWORD(v7) + 1284865837 * v7;
    v9 = v8 + v6;
    if (__CFADD__(v8, v6))
    {
      goto LABEL_9;
    }

    v10 = *(v4 + 24);
    if (v6 >= v10 >> 1)
    {
      sub_237D0BA94(v10 > 1, v5 + 2, 1, v4);
      v4 = v11;
    }

    *(v4 + 16) = v5 + 2;
    *(v4 + 8 * v5++ + 40) = v9;
    if (v5 == 623)
    {
      *a2 = xmmword_237F19770;
      *(a2 + 16) = xmmword_237F19780;
      *(a2 + 32) = xmmword_237F19790;
      *(a2 + 48) = xmmword_237F197A0;
      *(a2 + 64) = xmmword_237F197B0;
      *(a2 + 80) = xmmword_237F197C0;
      *(a2 + 96) = 0x5851F42D4C957F2DLL;
      *(a2 + 104) = v4;
      *(a2 + 112) = 0;
      return;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

void sub_237E43AEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[14];
  if (v5 == v4[1])
  {
    sub_237E43C00(result, a2, a3, a4);
    v5 = v4[14];
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(v4[13] + 16))
  {
    OUTLINED_FUNCTION_0_78();
    OUTLINED_FUNCTION_1_97();
    OUTLINED_FUNCTION_0_78();
    OUTLINED_FUNCTION_1_97();
    OUTLINED_FUNCTION_0_78();
    OUTLINED_FUNCTION_1_97();
    OUTLINED_FUNCTION_0_78();
    OUTLINED_FUNCTION_1_97();
    v4[14] = v6 + 1;
    return;
  }

  __break(1u);
}

void sub_237E43C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v5[1];
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (v7)
  {
    v6 = v5[2];
    v4 = v5[13];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_20;
    }

    while (v7 <= *(v4 + 16))
    {
      v8 = 0;
      v9 = v4 + 32;
      while (1)
      {
        v10 = v8 + 1;
        v11 = (v8 + 1) % v7;
        if ((v11 & 0x8000000000000000) != 0)
        {
          break;
        }

        v12 = *(v4 + 16);
        if (v11 >= v12)
        {
          goto LABEL_16;
        }

        v13 = v4 + 8 * v8;
        v14 = *(v9 + 8 * v11) % v7;
        v15 = (v14 & 0xFFFFFFFE | (*(v13 + 36) << 32)) >> 1;
        if (v14)
        {
          v15 ^= v5[4];
        }

        v16 = __OFADD__(v8, v6);
        v17 = v8 + v6;
        if (v16)
        {
          goto LABEL_17;
        }

        v18 = v17 % v7;
        if (v18 >= v12)
        {
          goto LABEL_18;
        }

        *(v13 + 32) = *(v9 + 8 * v18) ^ v15;
        v8 = v10;
        if (v7 == v10)
        {
          v5[13] = v4;
          v5[14] = 0;
          return;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      sub_237E64200(v4, a2, a3, a4);
      v4 = v19;
    }

    __break(1u);
  }
}

uint64_t sub_237E43D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D0, &unk_237F166A0);
  OUTLINED_FUNCTION_18(v14);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8, &unk_237F06050);
  OUTLINED_FUNCTION_18(v16);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1278, &qword_237F0DED8);
  OUTLINED_FUNCTION_18(v18);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_0();
  v20 = *(a1 + 56);
  v21 = type metadata accessor for FullyConnectedNetworkRegressorModel(0, a4, a5, a6);
  v22 = v21[11];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5E8, &unk_237F05B90);
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  v27 = sub_237EF8260();
  sub_237C6C074(v27, 1, v20, a7);
  sub_237EF6580();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  sub_237EF6530();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  type metadata accessor for FullyConnectedNetwork(0);
  OUTLINED_FUNCTION_0_79();
  sub_237E462D4(v36, v37, &unk_237F0361C);
  sub_237EF6660();

  __swift_storeEnumTagSinglePayload(v7, 0, 1, v23);
  result = sub_237E46324(v7, &a7[v22]);
  *&a7[v21[12]] = a2;
  *&a7[v21[13]] = a3;
  return result;
}

uint64_t FullyConnectedNetworkRegressorModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a1;
  v5[5] = *(a4 + 16);
  v5[6] = *(a4 + 24);
  v6 = sub_237EF7E90();
  v5[7] = v6;
  OUTLINED_FUNCTION_6_1(v6);
  v5[8] = v7;
  v5[9] = swift_task_alloc();
  v8 = sub_237EF6B10();
  v5[10] = v8;
  OUTLINED_FUNCTION_6_1(v8);
  v5[11] = v9;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237E440BC, 0, 0);
}

uint64_t sub_237E440BC()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  if (*(v1 + *(v2 + 52)) < 1)
  {
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000014, 0x8000000237EFB950);
    MEMORY[0x2383E0710](0xD000000000000023, 0x8000000237F19820);
    MEMORY[0x2383E0710](0xD000000000000034, 0x8000000237EFB990);
    sub_237C6514C();
    swift_allocError();
    *v19 = 0;
    v19[1] = 0xE000000000000000;
  }

  else
  {
    v3 = sub_237EF7E20();
    v4 = *(v1 + *(v2 + 48));
    v5 = sub_237C60C7C(v3, v4);

    if (v5)
    {
      v6 = *(v0 + 104);
      v7 = *(v0 + 112);
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      v10 = *(v0 + 72);
      v11 = *(v0 + 80);
      v12 = *(v0 + 40);
      (*(*(v0 + 64) + 16))(v10, *(v0 + 16), *(v0 + 56));
      sub_237D4A7B4(v10, v12, v8);
      sub_237EF69B0();
      v13 = *(v9 + 8);
      v13(v8, v11);
      sub_237EF6AE0();
      v13(v6, v11);
      sub_237EF6950();
      type metadata accessor for FullyConnectedNetwork(0);
      OUTLINED_FUNCTION_0_79();
      sub_237E462D4(v14, v15, &unk_237F0361C);
      sub_237EF6830();
      v13(v8, v11);
      sub_237EF6AE0();
      sub_237EF6A90();
      v13(v8, v11);
      v13(v6, v11);
      v13(v7, v11);
      v16 = *(v0 + 120);

      v17 = *(v0 + 8);
      v18.n128_u32[0] = v16;
      goto LABEL_7;
    }

    v20 = sub_237EF7E20();
    sub_237EF9330();

    v21 = MEMORY[0x2383E0A10](v4, MEMORY[0x277D83B88]);
    MEMORY[0x2383E0710](v21);

    MEMORY[0x2383E0710](0x7078652073617720, 0xEE002E6465746365);
    sub_237C84150();
    swift_allocError();
    *v22 = v20;
    *(v22 + 8) = 0xD000000000000024;
    *(v22 + 16) = 0x8000000237F007F0;
    *(v22 + 24) = 0;
    *(v22 + 32) = 6;
  }

  swift_willThrow();

  v17 = *(v0 + 8);
LABEL_7:

  return v17(v18);
}

uint64_t sub_237E444D0(void x0_0, uint64_t a1)
{
  v3 = v2;
  type metadata accessor for FullyConnectedNetwork(0);
  OUTLINED_FUNCTION_0_79();
  sub_237E462D4(v5, v6, &unk_237F0361C);
  sub_237EF6510();
  v7 = *(a1 + 44);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5E8, &unk_237F05B90);
  if (!__swift_getEnumTagSinglePayload(v3 + v7, 1, v8))
  {
    sub_237EF6670();
  }
}

uint64_t sub_237E445B8()
{
  v0 = sub_237EF6B10();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0, &unk_237F11860);
  sub_237EF6420();
  type metadata accessor for FullyConnectedNetwork(0);
  sub_237E462D4(&qword_27DEAD2E8, type metadata accessor for FullyConnectedNetwork, &unk_237F0361C);
  sub_237EF6850();
  v10 = *(v1 + 8);
  v10(v3, v0);
  sub_237EF6400();
  sub_237EF6AD0();
  v10(v3, v0);
  v10(v6, v0);
  sub_237EF6400();
  sub_237EF6500();
  v10(v6, v0);
  return (v10)(v9, v0);
}

unint64_t sub_237E447E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_237EF9890();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_237E44830(char a1)
{
  if (!a1)
  {
    return 0x6C65646F6DLL;
  }

  if (a1 == 1)
  {
    return 0x6168537475706E69;
  }

  return 0x6F69746172657469;
}

uint64_t sub_237E44894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_237E4493C;

  return FullyConnectedNetworkRegressorModel.applied(to:eventHandler:)(a2, v9, v10, a5);
}

uint64_t sub_237E4493C(float a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237E44A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237E44AC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_237E44B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237E44B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_237E44C0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237E447E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_237E44C3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237E44830(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237E44C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E4482C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E44C98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E44CEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t FullyConnectedNetworkRegressorModel.encode(to:)(void *a1, uint64_t *a2)
{
  type metadata accessor for FullyConnectedNetworkRegressorModel.CodingKeys(255, a2[2], a2[3], a2[4]);
  OUTLINED_FUNCTION_3_83();
  swift_getWitnessTable();
  v4 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  type metadata accessor for FullyConnectedNetwork(0);
  OUTLINED_FUNCTION_0_79();
  sub_237E462D4(v8, v9, &unk_237F035F4);
  sub_237EF9A70();
  if (!v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
    sub_237DA21D0(&qword_280C8CD30, MEMORY[0x277D83B90], MEMORY[0x277D83948]);
    sub_237EF9A70();
    sub_237EF9A50();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t FullyConnectedNetworkRegressorModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v9 = type metadata accessor for FullyConnectedNetwork(0);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  v35 = v10;
  type metadata accessor for FullyConnectedNetworkRegressorModel.CodingKeys(255, a2, a3, a4);
  OUTLINED_FUNCTION_3_83();
  swift_getWitnessTable();
  v36 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v34 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  type metadata accessor for FullyConnectedNetworkRegressorModel(0, a2, a3, a4);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  v39 = v18;
  v19 = *(v18 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5E8, &unk_237F05B90);
  v37 = v19;
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = v38;
  sub_237EFA190();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_237C863A0(a3 + v37, &qword_27DEB1278, &qword_237F0DED8);
  }

  else
  {
    v38 = v16;
    v25 = v34;
    v43 = 0;
    OUTLINED_FUNCTION_0_79();
    sub_237E462D4(v26, v27, &unk_237F035CC);
    v28 = v35;
    sub_237EF9970();
    sub_237DE7AF8(v28, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
    v42 = 1;
    sub_237DA21D0(&qword_280C8CD28, MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
    sub_237EF9970();
    v29 = v39;
    *(a3 + *(v39 + 48)) = v40;
    v41 = 2;
    v30 = sub_237EF9950();
    (*(v25 + 8))(v14, v36);
    *(a3 + *(v29 + 52)) = v30;
    v31 = v38;
    (*(v38 + 16))(v33, a3, v29);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v31 + 8))(a3, v29);
  }
}

unint64_t sub_237E4540C()
{
  result = qword_27DEB4AE8[0];
  if (!qword_27DEB4AE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB4AE8);
  }

  return result;
}

uint64_t sub_237E45460(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E454BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v112 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v111 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_3();
  v119 = v5;
  v109 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v108 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v8);
  v106 = sub_237EF6FC0();
  OUTLINED_FUNCTION_1();
  v105 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v11);
  sub_237EF71F0();
  OUTLINED_FUNCTION_1();
  v117 = v13;
  v118 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v14);
  v99 = sub_237EF7080();
  OUTLINED_FUNCTION_1();
  v103 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v101 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_2(&v94 - v19);
  v20 = sub_237EF6E60();
  v21 = OUTLINED_FUNCTION_18(v20);
  MEMORY[0x28223BE20](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E78, &qword_237F0CCF8);
  OUTLINED_FUNCTION_18(v22);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v23);
  v25 = &v94 - v24;
  v26 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v116 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_2();
  v114 = v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v94 - v36;
  sub_237EF7720();
  sub_237EF7620();
  v100 = a1;
  v38 = sub_237EF7EF0();
  sub_237E5E9F0(v38, v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_237C863A0(v25, &qword_27DEB0E78, &qword_237F0CCF8);
    type metadata accessor for SerializationError(0);
    sub_237E462D4(qword_280C8E658, type metadata accessor for SerializationError, &protocol conformance descriptor for SerializationError);
    swift_allocError();
    v40 = v39;
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000017, 0x8000000237EFDDB0);
    v122 = sub_237EF7EF0();
    type metadata accessor for MLMultiArrayDataType(0);
    sub_237EF9670();
    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v41 = __dst[1];
    *v40 = __dst[0];
    v40[1] = v41;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v116 + 8))(v37, v120);
  }

  else
  {
    v97 = v28;
    v43 = *(v28 + 32);
    v98 = v26;
    v43(v31, v25, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
    v44 = sub_237EF70E0();
    OUTLINED_FUNCTION_6_1(v44);
    v45 = swift_allocObject();
    v94 = xmmword_237F03530;
    *(v45 + 16) = xmmword_237F03530;
    v46 = *(v113 + *(v100 + 48));
    sub_237EF6CF0();
    OUTLINED_FUNCTION_6_66();
    sub_237EF7090();
    sub_237EF76B0();
    *(swift_allocObject() + 16) = v94;
    sub_237EF6CF0();
    sub_237EF7090();
    sub_237EF7700();
    sub_237EF7600();
    sub_237EF75E0();
    v47 = *(v46 + 16) >= 2uLL;
    v48 = v37;
    v96 = v31;
    if (v47)
    {
      v49 = v102;
      sub_237EF6FD0();
      sub_237C6D0D4(0xD000000000000010, 0x8000000237F00010, 0x746567726174, 0xE600000000000000, v50, v51, v52, v53, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
      v55 = v54;
      v56 = v99;
      (*(v103 + 16))(v101, v49, v99);
      sub_237D0BC38(0, 1, 1, MEMORY[0x277D84F90]);
      v58 = v57;
      v60 = *(v57 + 16);
      v59 = *(v57 + 24);
      v70 = v120;
      v71 = v116;
      if (v60 >= v59 >> 1)
      {
        sub_237D0BC38(v59 > 1, v60 + 1, 1, v57);
        v58 = v93;
      }

      *(v58 + 16) = v60 + 1;
      v61 = v103;
      (*(v103 + 32))(v58 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v60, v101, v56);
      v124 = v58;
      sub_237E4868C(v55);
      (*(v61 + 8))(v102, v56);
    }

    else
    {
      v62 = OUTLINED_FUNCTION_6_66();
      sub_237C6D0D4(v62, v63, v64, 0xE600000000000000, v65, v66, v67, v68, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
      v124 = v69;
      v70 = v120;
      v71 = v116;
    }

    v72 = v115;
    sub_237EF71E0();
    (*(v105 + 104))(v104, *MEMORY[0x277D25168], v106);
    sub_237EF71D0();
    v73 = v107;
    (*(v117 + 16))(v107, v72, v118);
    (*(v108 + 104))(v73, *MEMORY[0x277D25388], v109);
    sub_237EF7660();
    v74 = v71;
    v95 = v48;
    v75 = *(v71 + 16);
    v76 = v114;
    v75(v114, v48, v70);
    v77 = v70;
    v78 = v119;
    sub_237EF7810();
    v79 = type metadata accessor for CoreMLPackage(0);
    v80 = v110;
    v81 = v110 + *(v79 + 24);
    *(v81 + 80) = 0;
    *(v81 + 48) = 0u;
    *(v81 + 64) = 0u;
    *(v81 + 16) = 0u;
    *(v81 + 32) = 0u;
    *v81 = 0u;
    v75(v80, v76, v77);
    memcpy(__dst, v81, sizeof(__dst));
    sub_237C863A0(__dst, &unk_27DEAD7B0, &unk_237F03CA0);
    *v81 = 0u;
    *(v81 + 16) = 0u;
    *(v81 + 32) = 0u;
    *(v81 + 48) = 0u;
    *(v81 + 64) = 0u;
    *(v81 + 80) = 0;
    v82 = v111;
    v83 = v112;
    (*(v111 + 16))(v80 + *(v79 + 20), v78, v112);
    v84 = sub_237E34060();
    v86 = v85;
    v87 = sub_237EF7780();
    v89 = v88;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = *v89;
    sub_237C91098(v84, v86, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
    *v89 = v121;
    v87(&v122, 0);
    (*(v82 + 8))(v119, v83);
    v91 = *(v74 + 8);
    v92 = v120;
    v91(v114, v120);
    (*(v117 + 8))(v115, v118);
    (*(v97 + 8))(v96, v98);
    return (v91)(v95, v92);
  }
}

void sub_237E46084(uint64_t a1)
{
  type metadata accessor for FullyConnectedNetwork(319);
  if (v1 <= 0x3F)
  {
    sub_237E46150(319);
    if (v2 <= 0x3F)
    {
      sub_237CFF010();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237E46150(uint64_t a1)
{
  if (!qword_27DEB4B70[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAE5E8, &unk_237F05B90);
    v1 = sub_237EF90F0();
    if (!v2)
    {
      atomic_store(v1, qword_27DEB4B70);
    }
  }
}

_BYTE *sub_237E461B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237E462D4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_237E46324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1278, &qword_237F0DED8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237E463E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Tree(255, *(a1 + 16), *(a1 + 24), a4);
  result = sub_237EF8A60();
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237E46490(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v17 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((((((((*(*(v4 - 8) + 64) + ((v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_237E465F8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((((((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((((((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v19 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237E4680C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365657274 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F635365736162 && a2 == 0xE900000000000065;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4365727574616566 && a2 == 0xEC000000746E756FLL;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F43746567726174 && a2 == 0xEB00000000746E75;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x756F437373616C63 && a2 == 0xEA0000000000746ELL;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C656C6C61726170 && a2 == 0xED0000746E756F43;
            if (v10 || (sub_237EF9D40() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_237EF9D40();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_237E46A60(char a1)
{
  result = 0x7365657274;
  switch(a1)
  {
    case 1:
      result = 0x726F635365736162;
      break;
    case 2:
      result = 0x4365727574616566;
      break;
    case 3:
      result = 0x6F43746567726174;
      break;
    case 4:
      result = 0x756F437373616C63;
      break;
    case 5:
      result = 0x6C656C6C61726170;
      break;
    case 6:
      result = 0x6E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237E46B4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v21 = a3;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v19[0] = a2;
  type metadata accessor for TreeModel.CodingKeys(255, v5, v6, a4);
  OUTLINED_FUNCTION_2_89();
  swift_getWitnessTable();
  v7 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v22 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v19[1];
  sub_237EFA1B0();
  v28 = *v12;
  v27 = 0;
  v13 = v5;
  v14 = v20;
  type metadata accessor for Tree(255, v13, v6, v15);
  sub_237EF8A60();
  v25 = v21;
  v26 = v14;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = v23;
  sub_237EF9A70();
  if (v16)
  {
    return (*(v22 + 8))(v11, v7);
  }

  v18 = v22;
  LOBYTE(v28) = 1;
  sub_237EF9A70();
  OUTLINED_FUNCTION_1_98(2);
  OUTLINED_FUNCTION_1_98(3);
  OUTLINED_FUNCTION_1_98(4);
  OUTLINED_FUNCTION_1_98(5);
  OUTLINED_FUNCTION_1_98(6);
  return (*(v18 + 8))(v11, v7);
}

uint64_t sub_237E46E08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v52 = a4;
  v60 = a1;
  v41 = a6;
  OUTLINED_FUNCTION_1_1();
  v45 = v8;
  MEMORY[0x28223BE20](v9);
  v49 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TreeModel.CodingKeys(255, v11, v12, v13);
  OUTLINED_FUNCTION_2_89();
  WitnessTable = swift_getWitnessTable();
  v51 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v48 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  v20 = type metadata accessor for TreeModel(0, a2, a3, v19);
  OUTLINED_FUNCTION_1_1();
  v58 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = (&v40 - v23);
  v47 = type metadata accessor for Tree(0, a2, a3, v25);
  v46 = sub_237EF89A0();
  *v24 = v46;
  v26 = v20[9];
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  v44 = v26;
  sub_237EF9CE0();
  v43 = v20[10];
  *(v24 + v43) = 0;
  v42 = v20[11];
  *(v24 + v42) = 1;
  v27 = v20[12];
  *(v24 + v27) = 0;
  v28 = v20[13];
  *(v24 + v28) = 1;
  v59 = v20;
  v29 = v20[14];
  v57 = v24;
  *(v24 + v29) = 1;
  __swift_project_boxed_opaque_existential_1(v60, v60[3]);
  v53 = v17;
  v30 = v56;
  sub_237EFA190();
  if (v30)
  {
    v32 = v57;
    __swift_destroy_boxed_opaque_existential_1(v60);
    return (*(v58 + 8))(v32, v59);
  }

  else
  {
    WitnessTable = v28;
    v56 = v27;
    v54 = v29;
    v31 = v49;
    sub_237EF8A60();
    v64[0] = 0;
    v62 = v52;
    v63 = v50;
    v61 = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_237EF9970();

    v33 = v57;
    *v57 = v65;
    LOBYTE(v65) = 1;
    sub_237EF9970();
    (*(v45 + 40))(&v33[v44], v31, a2);
    *&v33[v43] = OUTLINED_FUNCTION_0_80(2);
    *&v33[v42] = OUTLINED_FUNCTION_0_80(3);
    *&v33[v56] = OUTLINED_FUNCTION_0_80(4);
    *&v33[WitnessTable] = OUTLINED_FUNCTION_0_80(5);
    v34 = OUTLINED_FUNCTION_0_80(6);
    v35 = OUTLINED_FUNCTION_4_79();
    v36(v35);
    *&v33[v54] = v34;
    v38 = v58;
    v37 = v59;
    (*(v58 + 16))(v41, v33, v59);
    __swift_destroy_boxed_opaque_existential_1(v60);
    return (*(v38 + 8))(v33, v37);
  }
}

uint64_t sub_237E47374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E4680C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E473A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237E46A58();
  *a1 = result;
  return result;
}

uint64_t sub_237E473D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E47428(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

_BYTE *sub_237E474D8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_0_80@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_237EF9950();
}

uint64_t OUTLINED_FUNCTION_1_98@<X0>(char a2@<W8>)
{
  *(v2 - 72) = a2;

  return sub_237EF9A50();
}

void sub_237E47668(uint64_t a2@<X8>)
{
  if (v2[3])
  {
    v8 = OUTLINED_FUNCTION_39_18();
LABEL_9:
    *a2 = v3;
    *(a2 + 8) = v6;
    *(a2 + 16) = v8;
    *(a2 + 24) = v5;
    *(a2 + 32) = v4;
    return;
  }

  v3 = *v2;
  if (__OFADD__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_53_12(*v2 + 1);
    if (v12)
    {
      v8 = OUTLINED_FUNCTION_39_18();
      *(v2 + 24) = 1;
      goto LABEL_9;
    }

    if (!v9)
    {
      v13 = v10 + 32 * v11;
      v4 = *(v13 + 56);
      v5 = *(v13 + 48);
      v6 = *(v13 + 32);
      v2[2] = v11 + 1;
      v8 = sub_237EF8260();
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_237E47700()
{
  if (*(v0 + 24))
  {
    goto LABEL_8;
  }

  if (__OFADD__(*v0, 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_53_12(*v0 + 1);
    if (v3)
    {
      *(v0 + 24) = 1;
LABEL_8:
      OUTLINED_FUNCTION_46_18();
      return;
    }

    if (!v1)
    {
      *(v0 + 16) = v2 + 1;
      sub_237EF8260();
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_237E47794(void *a1@<X8>)
{
  if (*(v1 + 24) == 1)
  {
    goto LABEL_5;
  }

  v3 = *v1;
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  ++*v1;
  v5 = v1[1];
  v4 = v1[2];
  v6 = *(v5 + 16);
  if (v4 != v6)
  {
    if (v4 < v6)
    {
      v10 = *(_s10DenseBlockVMa(0) - 8);
      v11 = v4 + 1;
      v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v4;
      v1[2] = v11;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD668, &unk_237F036E0);
      v14 = *(v13 + 48);
      *a1 = v3;
      sub_237E4F098(v12, a1 + v14);
      v8 = a1;
      v9 = 0;
      v7 = v13;
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  *(v1 + 24) = 1;
LABEL_5:
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD668, &unk_237F036E0);
  v8 = a1;
  v9 = 1;
LABEL_8:

  __swift_storeEnumTagSinglePayload(v8, v9, 1, v7);
}

BOOL sub_237E478D8(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  sub_237EFA120();
  OUTLINED_FUNCTION_46_18();
  sub_237EF8610();
  sub_237EFA170();
  OUTLINED_FUNCTION_34_16();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (a3[6] + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_237EF9D40();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_237E479BC(uint64_t a1, char a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_237EFA120();
  sub_237EFA140();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x2383E2210](a1);
  }

  v7 = sub_237EFA170();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = *(a3 + 48) + 16 * v9;
    if ((*(v11 + 8) & 1) == 0)
    {
      break;
    }

    if (a2)
    {
      return 1;
    }

LABEL_13:
    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  if ((a2 & 1) != 0 || *v11 != a1)
  {
    goto LABEL_13;
  }

  return 1;
}

BOOL sub_237E47AC0(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_237EFA120();
  sub_237EFA140();
  v4 = sub_237EFA170();
  v5 = a2 + 56;
  do
  {
    v6 = v4 & ~(-1 << *(a2 + 32));
    result = ((1 << v6) & *(v5 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8))) != 0;
    if (((1 << v6) & *(v5 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v8 = *(*(a2 + 48) + v6);
    v4 = v6 + 1;
  }

  while (v8 != (a1 & 1));
  return result;
}

uint64_t sub_237E47B7C(uint64_t a1)
{
  result = sub_237EF6F80();
  if (a1 != 2 && a1)
  {
    if (a1 < 3)
    {
      __break(1u);
      return result;
    }

    sub_237CDC02C(a1, *(v1 + 8));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0, &unk_237F07370);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_237F03530;
    *(v4 + 32) = *(v1 + 8);
  }

  sub_237EF6F30();
  sub_237EF6F40();
  v5 = *v1;
  v15 = 0;
  v16 = v5;
  v17 = 0;
  v18 = 0;
  sub_237D74FBC(v1, v14);
  while (1)
  {
    sub_237E47700();
    if (!v7)
    {
      break;
    }

    v9 = v6;
    v10 = v7;
    v11 = v8;
    v12 = sub_237EF6F70();
    sub_237E47CD4(v9, a1, v13, v10, v11);

    v12(v14, 0);
  }
}

void sub_237E47CD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v52 = a1;
  v51 = sub_237EF6F50();
  v7 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_237EF6F20();
  MEMORY[0x28223BE20](v9);
  v48 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v47 = &v38 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v16 = 0;
  v40 = *MEMORY[0x277D25150];
  v44 = (v17 + 16);
  v45 = (v7 + 104);
  v49 = v17;
  v42 = v17 + 32;
  v43 = v17 + 8;
  v39 = *MEMORY[0x277D25148];
  v53 = a4;
  v18 = a4 + 40;
  v38 = xmmword_237F03530;
  v46 = a3;
  while (1)
  {
    v19 = *(v53 + 16);
    if (v16 == v19)
    {
      break;
    }

    if (v16 >= v19)
    {
      __break(1u);
      return;
    }

    if (HIBYTE(*(v18 + 44)) > 0xFEuLL)
    {
      return;
    }

    v20 = v9;
    v21 = *(v18 + 40) | (*(v18 + 44) << 32);
    v22 = *(v18 - 8);
    MEMORY[0x2383DEFF0]();
    sub_237EF6EF0();
    v54 = v16;
    sub_237EF6EE0();
    sub_237EF6EC0();
    v23 = *v45;
    if ((v21 & 0x10000000000) != 0)
    {
      v23(v50, v39, v51);
      sub_237EF6EB0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D08, &qword_237F19CD0);
      inited = swift_initStackObject();
      *(inited + 16) = v38;
      *(inited + 32) = v41;
      *(inited + 40) = *&v22;
      sub_237EF8230();
      sub_237EF6F00();
      v9 = v20;
      (*v44)(v47, v15, v20);
      v24 = v46;
      v25 = *v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0BCF8(0, *(v25 + 16) + 1, 1, v25);
        v25 = v36;
      }

      v26 = v54;
      v28 = *(v25 + 16);
      v32 = *(v25 + 24);
      v29 = v28 + 1;
      if (v28 >= v32 >> 1)
      {
        sub_237D0BCF8(v32 > 1, v28 + 1, 1, v25);
        v25 = v37;
      }

      v30 = v47;
    }

    else
    {
      v23(v50, v40, v51);
      sub_237EF6EB0();
      sub_237EF6E80();
      sub_237EF6E70();
      sub_237EF6ED0();
      sub_237EF6E90();
      sub_237EF6EA0();
      v9 = v20;
      (*v44)(v48, v15, v20);
      v24 = v46;
      v25 = *v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0BCF8(0, *(v25 + 16) + 1, 1, v25);
        v25 = v34;
      }

      v26 = v54;
      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        sub_237D0BCF8(v27 > 1, v28 + 1, 1, v25);
        v25 = v35;
      }

      v30 = v48;
    }

    v33 = v49;
    (*(v49 + 8))(v15, v9);
    *(v25 + 16) = v29;
    (*(v33 + 32))(v25 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28, v30, v9);
    *v24 = v25;
    v18 += 56;
    v16 = v26 + 1;
  }
}

uint64_t sub_237E481CC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_237E4BFB8(result, 1, sub_237D0B340);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_237E48298(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v6))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_237E4BFB8(v7 + v6, 1, sub_237D0B340);
  v10 = *v4;
  if (v5 == a3)
  {
    if (v6 <= 0)
    {
LABEL_10:
      swift_unknownObjectRelease();
      *v4 = v10;
      return;
    }

    __break(1u);
  }

  v11 = *(v10 + 16);
  if ((*(v10 + 24) >> 1) - v11 < v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  memcpy((v10 + 8 * v11 + 32), (a2 + 8 * a3), 8 * v6);
  if (v6 <= 0)
  {
    goto LABEL_10;
  }

  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, v6);
  v14 = v12 + v6;
  if (!v13)
  {
    *(v10 + 16) = v14;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_237E48384(unint64_t a1)
{
  v3 = sub_237D6DA5C();
  v4 = sub_237D6DA5C();
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_237E4BF18(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_237E4FEDC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_237E48488(uint64_t a1)
{
  result = OUTLINED_FUNCTION_38_15(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_237E4BFB8(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_237E4858C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_237E4BFB8(result, 1, sub_237D0B354);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_237E486B8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_38_15(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_237E4BFB8(result, 1, sub_237D0B6E8);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0420, &qword_237F0AFD8);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_237E48798()
{
  OUTLINED_FUNCTION_13_4();
  v79 = v1;
  v73 = v2;
  v78 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v75 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v5);
  v72 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v71 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v8);
  v84 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4CF8, &qword_237F19CC8);
  v16 = OUTLINED_FUNCTION_18(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22_2(&v65 - v17);
  sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v80 = v19;
  v81 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v65 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v65 - v24;
  v26 = *v0;
  v82 = v0[1];
  v83 = v26;
  v28 = v0[2];
  v27 = v0[3];
  v30 = v0[4];
  v29 = v0[5];

  sub_237EF7720();
  sub_237EF75E0();
  v69 = v28;
  v31 = sub_237E48ECC(v28);
  v86[0] = v27;
  v86[1] = v30;
  v86[2] = v29;
  v32 = v79;
  sub_237E4976C();
  if (v32)
  {

    (*(v80 + 8))(v25, v81);
LABEL_11:
    OUTLINED_FUNCTION_12_6();
    return;
  }

  v68 = v25;

  v33 = v76;
  sub_237ED82A8(v31, v76);
  v34 = v81;
  if (__swift_getEnumTagSinglePayload(v33, 1, v81) != 1)
  {
    v65 = v31;
    v79 = 0;
    sub_237EF76F0();
    v35 = v80;
    v36 = *(v80 + 8);
    v76 = v80 + 8;
    v66 = v36;
    v36(v33, v34);
    v67 = v22;
    sub_237EF76B0();
    v37 = v68;
    sub_237EF7620();
    v38 = v69;
    v39 = *(v69 + 16);
    if (v39)
    {
      v86[0] = MEMORY[0x277D84F90];
      sub_237C63284(0, v39, 0);
      v40 = v86[0];
      v41 = (v38 + 56);
      do
      {
        v42 = *(v41 - 1);
        v43 = *v41;
        sub_237EF8260();
        sub_237E0ECD4(v42, v43, v14);

        v86[0] = v40;
        v45 = *(v40 + 16);
        v44 = *(v40 + 24);
        if (v45 >= v44 >> 1)
        {
          v47 = OUTLINED_FUNCTION_17_0(v44);
          sub_237C63284(v47, v45 + 1, 1);
          v40 = v86[0];
        }

        v41 += 32;
        *(v40 + 16) = v45 + 1;
        OUTLINED_FUNCTION_28();
        (*(v10 + 32))(v40 + v46 + *(v10 + 72) * v45, v14, v84);
        --v39;
      }

      while (v39);
      v35 = v80;
      v34 = v81;
      v37 = v68;
    }

    sub_237EF76B0();
    v48 = v67;
    sub_237EF76F0();
    sub_237EF7700();
    sub_237EF8260();
    sub_237EF7600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD388, &qword_237F188B0);
    OUTLINED_FUNCTION_14_54();
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_237F03530;
    v50 = *(v35 + 16);
    (v50)(&v37[v49], v48, v34);
    v86[0] = v65;
    OUTLINED_FUNCTION_10_58();
    sub_237E48488(v49);
    v51 = v70;
    sub_237EF7470();
    (*(v71 + 104))(v51, *MEMORY[0x277D25350], v72);
    sub_237EF7660();
    (v50)(v77, v37, v34);
    v52 = v74;
    sub_237EF7810();
    v53 = type metadata accessor for CoreMLPackage(0);
    v54 = OUTLINED_FUNCTION_18_37(*(v53 + 24));
    v50(v54);
    memcpy(v86, v37, 0x58uLL);
    sub_237C9A114(v86, &unk_27DEAD7B0, &unk_237F03CA0);
    OUTLINED_FUNCTION_30_35();
    v55 = v75;
    v56 = OUTLINED_FUNCTION_52_12();
    v57(v56, v52, v78);
    sub_237E34060();
    v58 = sub_237EF7780();
    OUTLINED_FUNCTION_27_26(v58, v59);
    OUTLINED_FUNCTION_16_47();
    OUTLINED_FUNCTION_58_9(v60, v61, 0xD00000000000001ALL, v62, v63);
    OUTLINED_FUNCTION_49_14();
    v34(&v85, 0);
    (*(v55 + 8))(v52, v78);
    v64 = v66;
    v66(v77, v34);
    v64(v67, v34);
    v64(v68, v34);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_237E48ECC(uint64_t a1)
{
  sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v134 = v3;
  v135 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v4);
  v5 = sub_237EF6E60();
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v7);
  v128 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v127 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v10);
  v142 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v144 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v141 = v13;
  MEMORY[0x28223BE20](v14);
  v140 = v125 - v15;
  OUTLINED_FUNCTION_12_1();
  v147 = sub_237EF7420();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_2();
  v146 = v19;
  MEMORY[0x28223BE20](v20);
  *&v148 = v125 - v21;
  OUTLINED_FUNCTION_12_1();
  v136 = sub_237EF7460();
  OUTLINED_FUNCTION_1();
  v131 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_3();
  v145 = v24;
  OUTLINED_FUNCTION_12_1();
  v130 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v129 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  sub_237EF7720();
  v143 = v29;
  sub_237EF7620();
  v30 = *(a1 + 16);
  if (v30)
  {
    v149[0] = MEMORY[0x277D84F90];
    sub_237C62D90(0, v30, 0);
    v31 = v149[0];
    v139 = a1;
    v32 = (a1 + 40);
    v33 = v30;
    do
    {
      v35 = *(v32 - 1);
      v34 = *v32;
      v149[0] = v31;
      v36 = *(v31 + 16);
      v37 = *(v31 + 24);
      sub_237EF8260();
      if (v36 >= v37 >> 1)
      {
        sub_237C62D90((v37 > 1), v36 + 1, 1);
        v31 = v149[0];
      }

      *(v31 + 16) = v36 + 1;
      v38 = v31 + 16 * v36;
      *(v38 + 32) = v35;
      *(v38 + 40) = v34;
      v32 += 4;
      --v33;
    }

    while (v33);
    a1 = v139;
  }

  v39 = sub_237CADF98();
  v149[4] = v39;
  sub_237EF8260();
  sub_237E4B218(0xD000000000000013, 0x8000000237F00900, v39, v40, v41, v42, v43, v44, v125[0], v125[1], v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
  v46 = v45;
  v48 = v47;

  sub_237EF8260();
  sub_237E4C084(v149, v46, v48, v49, v50, v51, v52, v53, v48, v46, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);

  sub_237EF7450();
  v54 = 0;
  if (!v30)
  {
LABEL_27:
    v115 = v131;
    v116 = v126;
    (*(v131 + 16))(v126, v145, v136);
    (*(v127 + 104))(v116, *MEMORY[0x277D25348], v128);
    v117 = v143;
    sub_237EF7660();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
    v118 = swift_allocObject();
    v148 = xmmword_237F03530;
    *(v118 + 16) = xmmword_237F03530;
    (*(v134 + 104))(v133, *MEMORY[0x277D250F0], v135);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
    v119 = swift_allocObject();
    *(v119 + 16) = v148;
    *(v119 + 32) = v54;
    sub_237EF6CF0();

    v120 = OUTLINED_FUNCTION_28_6();
    v121(v120);
    OUTLINED_FUNCTION_19_42();
    sub_237EF7090();
    sub_237EF7700();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD388, &qword_237F188B0);
    v122 = v129;
    OUTLINED_FUNCTION_14_54();
    v123 = swift_allocObject();
    *(v123 + 16) = v148;
    v124 = v130;
    (*(v122 + 16))(v123 + v117, v117, v130);
    (*(v115 + 8))(v145, v136);
    (*(v122 + 8))(v117, v124);
    return v123;
  }

  v138 = v17 + 32;
  v139 = v144 + 32;
  v137 = v17 + 8;
  v55 = (a1 + 56);
  while (1)
  {
    v56 = *(v55 - 3);
    v57 = *(v55 - 1);
    v58 = *v55;
    swift_bridgeObjectRetain_n();
    if (v58 < 4)
    {
      break;
    }

    result = sub_237EF73E0();
    v60 = __OFADD__(v54++, 1);
    if (v60)
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_31_24();
    sub_237E0ECD4(v72, 4, v73);

    v63 = v143;
    v74 = sub_237EF7690();
    v76 = OUTLINED_FUNCTION_22_35(v74, v75);
    *v57 = v56;
    if ((v76 & 1) == 0)
    {
      v105 = OUTLINED_FUNCTION_7_64();
      sub_237D0BCB8(v105, v106, v107, v108);
      OUTLINED_FUNCTION_24_33(v109);
    }

    OUTLINED_FUNCTION_32_26();
    if (v68)
    {
      v110 = OUTLINED_FUNCTION_9_55(v77);
      sub_237D0BCB8(v110, v111, v112, v113);
      OUTLINED_FUNCTION_24_33(v114);
    }

    v69 = OUTLINED_FUNCTION_15_41();
    v71 = v140;
LABEL_22:
    v70(v69, v71, v142);
    v63(v149, 0);
    (*(v17 + 16))(v146, v148, v147);
    v78 = v145;
    v79 = sub_237EF7430();
    v81 = OUTLINED_FUNCTION_22_35(v79, v80);
    *v57 = v56;
    if ((v81 & 1) == 0)
    {
      v85 = OUTLINED_FUNCTION_7_64();
      sub_237D0BC78(v85, v86, v87, v88);
      OUTLINED_FUNCTION_24_33(v89);
    }

    OUTLINED_FUNCTION_32_26();
    if (v68)
    {
      v90 = OUTLINED_FUNCTION_9_55(v82);
      sub_237D0BC78(v90, v91, v92, v93);
      OUTLINED_FUNCTION_24_33(v94);
    }

    v55 += 32;
    *(v56 + 16) = v58;
    OUTLINED_FUNCTION_28();
    v84 = v56 + v83 + *(v17 + 72) * v46;
    v46 = v147;
    (*(v17 + 32))(v84, v146, v147);
    v78(v149, 0);
    (*(v17 + 8))(v148, v46);
    if (!--v30)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_31_24();
  result = sub_237EF73E0();
  v60 = __OFADD__(v54, v57);
  v54 += v57;
  if (!v60)
  {
    OUTLINED_FUNCTION_31_24();
    sub_237E0ECD4(v61, v58, v62);

    v63 = v143;
    v64 = sub_237EF7690();
    v66 = OUTLINED_FUNCTION_22_35(v64, v65);
    *v57 = v56;
    if ((v66 & 1) == 0)
    {
      v95 = OUTLINED_FUNCTION_7_64();
      sub_237D0BCB8(v95, v96, v97, v98);
      OUTLINED_FUNCTION_24_33(v99);
    }

    OUTLINED_FUNCTION_32_26();
    if (v68)
    {
      v100 = OUTLINED_FUNCTION_9_55(v67);
      sub_237D0BCB8(v100, v101, v102, v103);
      OUTLINED_FUNCTION_24_33(v104);
    }

    v69 = OUTLINED_FUNCTION_15_41();
    v71 = v141;
    goto LABEL_22;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_237E4976C()
{
  OUTLINED_FUNCTION_13_4();
  v58 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v61 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_3();
  v57 = v6;
  OUTLINED_FUNCTION_12_1();
  v67 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v60 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  v65 = v9;
  OUTLINED_FUNCTION_12_1();
  v64 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v66 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  v55 = v12;
  OUTLINED_FUNCTION_12_1();
  v63 = sub_237EF6F90();
  OUTLINED_FUNCTION_1();
  v59 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8_30();
  v19 = sub_237EF7550();
  OUTLINED_FUNCTION_1();
  v56 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_21();
  v22 = sub_237EF5BF0();
  OUTLINED_FUNCTION_1();
  v62 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v28 = *v0;
  sub_237E88538();
  if (v1)
  {
LABEL_14:
    OUTLINED_FUNCTION_12_6();
    return;
  }

  v54 = v2;
  v53 = v19;
  sub_237EF5C30();
  swift_allocObject();
  sub_237EF5C20();
  (*(v62 + 104))(v27, *MEMORY[0x277CC86A8], v22);
  sub_237EF5C00();
  sub_237E4C030();
  sub_237EF5C10();
  memcpy(v74, v75, sizeof(v74));
  memcpy(v78, v75, sizeof(v78));
  sub_237D73A1C(&v76);
  sub_237D6E9A0(v74);

  v29 = OUTLINED_FUNCTION_28_6();
  sub_237CBA6B8(v29, v30);
  sub_237EF7540();
  sub_237EF6F80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0, &unk_237F07370);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_237F03530;
  *(v31 + 32) = v77;
  sub_237EF6F30();
  sub_237EF6F40();
  v70 = 0;
  v71 = v76;
  v72 = 0;
  v73 = 0;
  sub_237D74FBC(&v76, v69);
  v32 = v61;
  while (1)
  {
    sub_237E47700();
    if (!v34)
    {
      break;
    }

    v36 = v33;
    v37 = v34;
    v38 = v35;
    v39 = sub_237EF6F70();
    sub_237E47CD4(v36, 0, v40, v37, v38);

    v39(v69, 0);
  }

  sub_237C9A114(&v76, &qword_27DEB2210, &unk_237F10700);

  (*(v59 + 32))(v3, v17, v63);
  v41 = v54;
  sub_237EF7530();
  sub_237EF7720();
  sub_237EF7620();
  if ((v28 & 0x8000000000000000) == 0)
  {
    v42 = v60;
    if (v28)
    {
      v70 = MEMORY[0x277D84F90];
      sub_237C63284(0, v28, 0);
      v43 = 0;
      v44 = v70;
      v68 = *MEMORY[0x277D25128];
      v45 = v55;
      do
      {
        OUTLINED_FUNCTION_54_9();
        v69[0] = v46;
        v69[1] = 0xE700000000000000;
        v47 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v47);

        sub_237EF6DA0();
        (*(v60 + 104))(v65, v68, v67);
        OUTLINED_FUNCTION_19_42();
        sub_237EF7090();
        v70 = v44;
        v48 = v45;
        v50 = *(v44 + 16);
        v49 = *(v44 + 24);
        if (v50 >= v49 >> 1)
        {
          v52 = OUTLINED_FUNCTION_17_0(v49);
          sub_237C63284(v52, v50 + 1, 1);
          v44 = v70;
        }

        ++v43;
        *(v44 + 16) = v50 + 1;
        OUTLINED_FUNCTION_28();
        (*(v66 + 32))(v44 + v51 + *(v66 + 72) * v50, v48, v64);
        v45 = v48;
      }

      while (v28 != v43);
      v32 = v61;
      v42 = v60;
      v41 = v54;
    }

    else
    {
      v68 = *MEMORY[0x277D25128];
    }

    sub_237EF76B0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
    *(swift_allocObject() + 16) = xmmword_237F03530;
    sub_237EF8260();
    sub_237EF6DA0();
    (*(v42 + 104))(v65, v68, v67);
    OUTLINED_FUNCTION_48_13();
    OUTLINED_FUNCTION_19_42();
    sub_237EF7090();
    sub_237EF7700();
    sub_237EF8260();
    OUTLINED_FUNCTION_48_13();
    sub_237EF7600();
    OUTLINED_FUNCTION_21_42();
    (*(v56 + 16))(v57, v41, v53);
    (*(v32 + 104))(v57, *MEMORY[0x277D25380], v58);
    sub_237EF7660();
    (*(v56 + 8))(v41, v53);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_237E49F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v23;
  a20 = v24;
  v48 = v25;
  v26 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_21();
  sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8_30();
  v34 = *(v20 + 2);
  v51 = *v20;
  v52 = v34;
  sub_237E4976C();
  if (!v21)
  {
    v47 = v26;
    v35 = OUTLINED_FUNCTION_41_13();
    (v28)(v35);
    sub_237EF7810();
    v36 = type metadata accessor for CoreMLPackage(0);
    v37 = OUTLINED_FUNCTION_12_47(*(v36 + 24));
    (v28)(v37);
    memcpy(v50, v31, sizeof(v50));
    sub_237C9A114(v50, &unk_27DEAD7B0, &unk_237F03CA0);
    OUTLINED_FUNCTION_29_29();
    v38 = OUTLINED_FUNCTION_52_12();
    v39(v38, v22);
    sub_237E34060();
    v41 = v40;
    v42 = sub_237EF7780();
    OUTLINED_FUNCTION_27_26(v42, v43);
    OUTLINED_FUNCTION_16_47();
    OUTLINED_FUNCTION_25_32(v44, &a16);
    OUTLINED_FUNCTION_49_14();
    v48(&v49, 0);
    (*(v28 + 8))(v22, v47);
    v45 = OUTLINED_FUNCTION_45_17();
    v41(v45);
    v46 = OUTLINED_FUNCTION_47_15();
    v41(v46);
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237E4A1D0()
{
  OUTLINED_FUNCTION_13_4();
  v170 = v3;
  v152 = v4;
  v153 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v151 = sub_237EF7570();
  OUTLINED_FUNCTION_1();
  v150 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v13);
  v163 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v168 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_30();
  v166 = sub_237EF75B0();
  OUTLINED_FUNCTION_1();
  v165 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v19);
  v147 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v146 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v22);
  v173 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v169 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_22_2(&v135 - v27);
  v177 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v171 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_26();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v135 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4CF8, &qword_237F19CC8);
  v37 = OUTLINED_FUNCTION_18(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  v40 = &v135 - v39;
  v41 = v0[5];
  if (!v41)
  {
    sub_237C84150();
    swift_allocError();
    *v73 = 0xD000000000000012;
    *(v73 + 8) = 0x8000000237F00840;
    *(v73 + 16) = 0xD00000000000001FLL;
    *(v73 + 24) = 0x8000000237F00860;
    *(v73 + 32) = 5;
    swift_willThrow();
    goto LABEL_28;
  }

  v42 = v0;
  v155 = v35;
  v175 = v1;
  v139 = v2;
  v141 = v32;
  v145 = v10;
  v142 = v6;
  v43 = *v0;
  v44 = v0[1];
  v46 = v0[2];
  v45 = v0[3];
  v47 = v0[4];
  v48 = v0[6];
  v49 = v42[7];
  v176 = v42[8];
  swift_bridgeObjectRetain_n();

  v172 = sub_237E48ECC(v46);
  v179[0] = v43;
  v179[1] = v44;
  v140 = v46;
  v179[2] = v46;
  v179[3] = v45;
  v157 = v45;
  v156 = v47;
  v179[4] = v47;
  v179[5] = v41;
  v50 = v48;
  v162 = v41;
  v179[6] = v48;
  v179[7] = v49;
  v138 = v49;
  v179[8] = v176;
  v51 = TreeClassifierModel.featureColumnNames.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400, &unk_237F106F0);
  inited = swift_initStackObject();
  v137 = xmmword_237F04760;
  *(inited + 16) = xmmword_237F04760;
  v167 = v43;
  *(inited + 32) = v43;
  *(inited + 40) = v44;
  v161 = v44;
  sub_237ED82A8(v172, v40);
  v53 = v173;
  if (__swift_getEnumTagSinglePayload(v40, 1, v173) == 1)
  {
    goto LABEL_30;
  }

  v54 = sub_237EF76F0();
  v55 = *(v169 + 8);
  v144 = v169 + 8;
  v143 = v55;
  v55(v40, v53);
  if (!*(v54 + 16))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v56 = *(v171 + 80);
  v57 = *(v171 + 16);
  v176 = (v56 + 32) & ~v56;
  v57(v155, v54 + v176, v177);

  v58 = sub_237EF70A0();
  v60 = v59;
  v61 = OUTLINED_FUNCTION_47_15();
  v62(v61);
  *(inited + 48) = v58;
  *(inited + 56) = v60;
  v178[0] = v51;
  sub_237E4858C(inited);
  v44 = sub_237CADF98();
  v179[0] = v167;
  v179[1] = v161;
  sub_237EF8260();
  MEMORY[0x2383E0710](0x6C696261626F7250, 0xEB00000000797469);
  sub_237E4B218(v179[0], v179[1], v44, v63, v64, v65, v66, v67, v135, v136, v137, *(&v137 + 1), v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155);
  v69 = v68;
  v71 = v70;

  v179[0] = v157;
  v179[1] = v156;
  v179[2] = v162;
  v179[3] = v50;
  v72 = v175;
  sub_237E4B378();
  if (v72)
  {

    swift_bridgeObjectRelease_n();
LABEL_28:
    OUTLINED_FUNCTION_12_6();
    return;
  }

  v136 = v56;
  v155 = v44;
  v175 = v69;
  v157 = v71;
  v156 = 0;
  v40 = v154;
  sub_237ED82A8(v172, v154);
  v49 = v173;
  if (__swift_getEnumTagSinglePayload(v40, 1, v173) == 1)
  {
    goto LABEL_31;
  }

  sub_237EF76F0();
  v143(v40, v49);
  sub_237EF76B0();

  v74 = swift_dynamicCastMetatype();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
  v75 = *(v171 + 72);
  *(swift_allocObject() + 16) = v137;
  v76 = v141;
  if (v74)
  {
    sub_237EF6D00();
    v77 = OUTLINED_FUNCTION_50_15();
    v78(v77);
    OUTLINED_FUNCTION_19_42();
    sub_237EF7090();
    sub_237EF8260();
    sub_237EF6E40();
  }

  else
  {
    sub_237EF6DB0();
    v79 = OUTLINED_FUNCTION_50_15();
    v80(v79);
    OUTLINED_FUNCTION_19_42();
    sub_237EF7090();
    sub_237EF8260();
    sub_237EF6E50();
  }

  v50 = v163;
  v44 = 0xD000000000000012;
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_19_42();
  sub_237EF7090();
  v81 = v174;
  sub_237EF7700();
  v40 = v139;
  sub_237EF7650();
  v49 = v168;
  v82 = (*(v168 + 88))(v40, v50);
  if (v82 == *MEMORY[0x277D25390])
  {
    LODWORD(v170) = v82;

    (*(v49 + 96))(v40, v50);
    (*(v165 + 32))(v164, v40, v166);
    v83 = v138;
    v84 = *(v138 + 16);
    v85 = MEMORY[0x277D84F90];
    if (v84)
    {
      v179[0] = MEMORY[0x277D84F90];
      v86 = OUTLINED_FUNCTION_44_17();
      sub_237C62D90(v86, v87, v88);
      v85 = v179[0];
      v89 = (v83 + 40);
      v50 = (v83 + 40);
      do
      {
        v91 = *v50;
        v50 += 2;
        v90 = v91;
        if (v91)
        {
          v92 = *(v89 - 1);
          v81 = v90;
        }

        else
        {
          v92 = 0;
          v81 = 0xE000000000000000;
        }

        v179[0] = v85;
        v94 = *(v85 + 16);
        v93 = *(v85 + 24);
        sub_237EF8260();
        if (v94 >= v93 >> 1)
        {
          sub_237C62D90((v93 > 1), v94 + 1, 1);
          v85 = v179[0];
        }

        *(v85 + 16) = v94 + 1;
        v95 = v85 + 16 * v94;
        *(v95 + 32) = v92;
        *(v95 + 40) = v81;
        v89 = v50;
        --v84;
      }

      while (v84);
      OUTLINED_FUNCTION_43_18();
      v49 = v168;
    }

    v96 = v149;
    *v149 = v85;
    (*(v150 + 104))(v96, *MEMORY[0x277D25258], v151);
    v97 = v164;
    sub_237EF7580();
    v98 = v158;
    (*(v165 + 16))(v158, v97, v166);
    v99 = *(v49 + 104);
    v100 = v170;
    v168 = v49 + 104;
    v170 = v99;
    v99(v98, v100, v50);
    sub_237EF7660();
    sub_237EF7720();
    sub_237EF7620();
    v101 = v140;
    v102 = *(v140 + 16);
    if (v102)
    {
      v179[0] = MEMORY[0x277D84F90];
      v103 = OUTLINED_FUNCTION_44_17();
      sub_237C63284(v103, v104, v105);
      v106 = v179[0];
      v50 = (v171 + 32);
      v107 = (v101 + 56);
      do
      {
        v108 = *(v107 - 1);
        v81 = *v107;
        sub_237EF8260();
        sub_237E0ECD4(v108, v81, v76);

        v179[0] = v106;
        v110 = *(v106 + 16);
        v109 = *(v106 + 24);
        if (v110 >= v109 >> 1)
        {
          v111 = OUTLINED_FUNCTION_17_0(v109);
          sub_237C63284(v111, v110 + 1, 1);
          v106 = v179[0];
        }

        v107 += 32;
        *(v106 + 16) = v110 + 1;
        (*v50)(v106 + v176 + v75 * v110, v76, v177);
        --v102;
      }

      while (v102);
      OUTLINED_FUNCTION_43_18();
    }

    v112 = v159;
    sub_237EF76B0();
    sub_237EF76F0();
    sub_237EF7700();
    sub_237EF7600();
    sub_237EF7640();
    sub_237EF75E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD388, &qword_237F188B0);
    v113 = v169;
    OUTLINED_FUNCTION_14_54();
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_237F03530;
    v115 = *(v113 + 16);
    v116 = v173;
    v115(&v112[v114], v81, v173);
    v179[0] = v172;
    OUTLINED_FUNCTION_10_58();
    sub_237E48488(v114);
    v117 = v158;
    sub_237EF74F0();
    v170(v117, *MEMORY[0x277D25368], v50);
    sub_237EF7660();
    v115(v160, v112, v116);
    v118 = v145;
    sub_237EF7810();
    v119 = type metadata accessor for CoreMLPackage(0);
    v120 = OUTLINED_FUNCTION_18_37(*(v119 + 24));
    (v115)(v120);
    memcpy(v179, v112, 0x58uLL);
    sub_237C9A114(v179, &unk_27DEAD7B0, &unk_237F03CA0);
    OUTLINED_FUNCTION_30_35();
    v121 = v142;
    v122 = OUTLINED_FUNCTION_52_12();
    v123 = v118;
    v124 = v153;
    v125(v122, v123, v153);
    sub_237E34060();
    v126 = sub_237EF7780();
    OUTLINED_FUNCTION_27_26(v126, v127);
    OUTLINED_FUNCTION_16_47();
    OUTLINED_FUNCTION_58_9(v128, v129, 0xD00000000000001ALL, v130, v131);
    OUTLINED_FUNCTION_49_14();
    (v102)(v178, 0);

    (*(v121 + 8))(v145, v124);
    v132 = v173;
    v133 = v143;
    v143(v160, v173);
    v134 = OUTLINED_FUNCTION_47_15();
    v133(v134);
    (*(v165 + 8))(v164, v166);
    (v133)(v174, v132);
    goto LABEL_28;
  }

LABEL_32:
  (*(v49 + 8))(v40, v50);
  sub_237EF9740("Fatal error", 11, 2, v44 + 29, 0x8000000237F008B0, "CreateMLComponents/CoreMLExport.swift", 37, 2, 89);
  __break(1u);
}

void sub_237E4B218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_57_9();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  if (!sub_237E478D8(v34, v32, v30))
  {
    sub_237EF8260();
LABEL_14:
    OUTLINED_FUNCTION_56_15();
    return;
  }

  v36 = 1;
  v37 = MEMORY[0x277D83B88];
LABEL_3:
  sub_237EF8260();
  MEMORY[0x2383E0710](95, 0xE100000000000000);
  v38 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v38);

  if (!__OFADD__(v36++, 1))
  {
    if (v31[2])
    {
      v40 = v37;
      sub_237EFA120();
      sub_237EF8610();
      sub_237EFA170();
      OUTLINED_FUNCTION_34_16();
      v43 = ~v42;
      while (1)
      {
        v44 = v41 & v43;
        if (((*(v31 + (((v41 & v43) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v41 & v43)) & 1) == 0)
        {
          break;
        }

        v45 = (v31[6] + 16 * v44);
        if (*v45 != v35 || v45[1] != v33)
        {
          v47 = sub_237EF9D40();
          v41 = v44 + 1;
          if ((v47 & 1) == 0)
          {
            continue;
          }
        }

        v37 = v40;
        goto LABEL_3;
      }
    }

    goto LABEL_14;
  }

  __break(1u);
}

void sub_237E4B378()
{
  OUTLINED_FUNCTION_13_4();
  v50 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v59 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_3();
  v49 = v4;
  OUTLINED_FUNCTION_12_1();
  v48 = sub_237EF7570();
  OUTLINED_FUNCTION_1();
  v58 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_3();
  v57 = v7;
  OUTLINED_FUNCTION_12_1();
  v8 = sub_237EF6F90();
  v9 = OUTLINED_FUNCTION_18(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12_1();
  sub_237EF6F60();
  OUTLINED_FUNCTION_1();
  v53 = v11;
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_3();
  v52 = v12;
  OUTLINED_FUNCTION_12_1();
  v56 = sub_237EF75B0();
  OUTLINED_FUNCTION_1();
  v51 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_3();
  v55 = v15;
  OUTLINED_FUNCTION_12_1();
  v65 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v60 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v64 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  v27 = sub_237EF5BF0();
  OUTLINED_FUNCTION_1();
  v61 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5();
  v32 = v31 - v30;
  v34 = *v0;
  v33 = v0[1];
  sub_237E88538();
  if (v1)
  {
    goto LABEL_12;
  }

  v63 = v33;
  v47 = v34;
  sub_237EF5C30();
  swift_allocObject();
  sub_237EF5C20();
  (*(v61 + 104))(v32, *MEMORY[0x277CC86A8], v27);
  sub_237EF5C00();
  sub_237E4C030();
  sub_237EF5C10();
  memcpy(v66, v67, sizeof(v66));
  memcpy(v69, v67, sizeof(v69));
  sub_237D73A1C(v68);
  sub_237D6E9A0(v66);

  v35 = OUTLINED_FUNCTION_28_6();
  sub_237CBA6B8(v35, v36);
  sub_237EF7720();
  sub_237EF7620();
  if (v33 < 0)
  {
    __break(1u);
  }

  else
  {
    v37 = v65;
    if (v33)
    {
      v70 = MEMORY[0x277D84F90];
      sub_237C63284(0, v33, 0);
      v38 = 0;
      v62 = *MEMORY[0x277D25128];
      do
      {
        OUTLINED_FUNCTION_54_9();
        v39 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v39);

        sub_237EF6DA0();
        (*(v60 + 104))(v20, v62, v37);
        OUTLINED_FUNCTION_19_42();
        sub_237EF7090();
        v41 = *(v70 + 16);
        v40 = *(v70 + 24);
        if (v41 >= v40 >> 1)
        {
          v43 = OUTLINED_FUNCTION_17_0(v40);
          sub_237C63284(v43, v41 + 1, 1);
        }

        ++v38;
        *(v70 + 16) = v41 + 1;
        OUTLINED_FUNCTION_28();
        (*(v64 + 32))(v70 + v42 + *(v64 + 72) * v41, v26, v21);
        v37 = v65;
      }

      while (v63 != v38);
    }

    sub_237EF76B0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
    *(swift_allocObject() + 16) = xmmword_237F04760;
    sub_237EF8260();
    sub_237EF6D00();
    (*(v60 + 104))(v20, *MEMORY[0x277D25118], v37);
    OUTLINED_FUNCTION_19_42();
    sub_237EF7090();
    sub_237EF8260();
    sub_237EF6E40();
    OUTLINED_FUNCTION_19_42();
    sub_237EF7090();
    sub_237EF7700();
    sub_237EF8260();
    sub_237EF7600();
    sub_237EF8260();
    sub_237EF7640();
    OUTLINED_FUNCTION_21_42();
    sub_237EF75A0();
    v44 = MEMORY[0x277D25160];
    if (v47 != 2)
    {
      v44 = MEMORY[0x277D25158];
    }

    (*(v53 + 104))(v52, *v44, v54);
    sub_237EF7590();
    sub_237E47B7C(v47);
    sub_237C9A114(v68, &qword_27DEB2210, &unk_237F10700);
    sub_237EF7560();
    if ((v47 & 0x8000000000000000) == 0)
    {
      *v57 = sub_237EC9280(0, v47);
      (*(v58 + 104))(v57, *MEMORY[0x277D25250], v48);
      sub_237EF7580();
      (*(v51 + 16))(v49, v55, v56);
      (*(v59 + 104))(v49, *MEMORY[0x277D25390], v50);
      sub_237EF7660();
      v45 = OUTLINED_FUNCTION_48_13();
      v46(v45);
LABEL_12:
      OUTLINED_FUNCTION_12_6();
      return;
    }
  }

  __break(1u);
}

void sub_237E4BC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v23;
  a20 = v24;
  v49 = v25;
  v26 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_21();
  sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8_30();
  v34 = *(v20 + 2);
  v35 = *(v20 + 3);
  v52 = *v20;
  v53 = v34;
  v54 = v35;
  sub_237E4B378();
  if (!v21)
  {
    v48 = v26;
    v36 = OUTLINED_FUNCTION_41_13();
    (v28)(v36);
    sub_237EF7810();
    v37 = type metadata accessor for CoreMLPackage(0);
    v38 = OUTLINED_FUNCTION_12_47(*(v37 + 24));
    (v28)(v38);
    memcpy(v51, v31, sizeof(v51));
    sub_237C9A114(v51, &unk_27DEAD7B0, &unk_237F03CA0);
    OUTLINED_FUNCTION_29_29();
    v39 = OUTLINED_FUNCTION_52_12();
    v40(v39, v22, v26);
    sub_237E34060();
    v42 = v41;
    v43 = sub_237EF7780();
    OUTLINED_FUNCTION_27_26(v43, v44);
    OUTLINED_FUNCTION_16_47();
    OUTLINED_FUNCTION_25_32(v45, &a14);
    OUTLINED_FUNCTION_49_14();
    v49(&v50, 0);
    (*(v28 + 8))(v22, v48);
    v46 = OUTLINED_FUNCTION_45_17();
    v42(v46);
    v47 = OUTLINED_FUNCTION_47_15();
    v42(v47);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E4BF18(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_237EF9710();
LABEL_9:
  result = sub_237EF93C0();
  *v2 = result;
  return result;
}

uint64_t sub_237E4BFB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

unint64_t sub_237E4C030()
{
  result = qword_27DEB4D00;
  if (!qword_27DEB4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4D00);
  }

  return result;
}

BOOL sub_237E4C18C(unint64_t *a1, unint64_t a2)
{
  v7 = *v2;
  sub_237EFA110();
  OUTLINED_FUNCTION_17_46();
  while (1)
  {
    OUTLINED_FUNCTION_28_29();
    if (v8)
    {
      break;
    }

    if (*(*(v7 + 48) + 8 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_51_14();
  v10 = sub_237E4DB68(a2, v3, v9);
  OUTLINED_FUNCTION_55_9(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20);
LABEL_6:
  result = v4 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_237E4C234(uint64_t a1, uint64_t a2)
{
  v4 = sub_237EF60B0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v25 = v2;
  v11 = *v2;
  sub_237E4FE98(&qword_27DEAFC78, MEMORY[0x277CC99D8]);
  v29 = a2;
  sub_237EF83D0();
  v27 = v11;
  v28 = v11 + 56;
  OUTLINED_FUNCTION_34_16();
  v14 = ~v13;
  while (1)
  {
    v15 = v12 & v14;
    v16 = (1 << (v12 & v14)) & *(v28 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v16)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_46_18();
      v22();
      v30 = *v25;
      sub_237E4DC6C(v10, v15, isUniquelyReferenced_nonNull_native);
      *v25 = v30;
      OUTLINED_FUNCTION_46_18();
      v23();
      return v16 == 0;
    }

    v17 = v6[9] * v15;
    v18 = v6[2];
    v18(v10, *(v27 + 48) + v17, v4);
    sub_237E4FE98(&qword_27DEB4D18, MEMORY[0x277CC99E0]);
    v19 = sub_237EF8520();
    v20 = v6[1];
    v20(v10, v4);
    if (v19)
    {
      break;
    }

    v12 = v15 + 1;
  }

  v20(v29, v4);
  v18(a1, *(v27 + 48) + v17, v4);
  return v16 == 0;
}

BOOL sub_237E4C5F8(_DWORD *a1, unint64_t a2)
{
  v7 = *v2;
  MEMORY[0x2383E21E0](*(v7 + 40), a2, 4);
  OUTLINED_FUNCTION_17_46();
  while (1)
  {
    OUTLINED_FUNCTION_28_29();
    if (v8)
    {
      break;
    }

    if (*(*(v7 + 48) + 4 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_51_14();
  v10 = sub_237E4E08C(a2, v3, v9);
  OUTLINED_FUNCTION_55_9(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20);
LABEL_6:
  result = v4 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_237E4C6A8(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_11_54(a1);
  sub_237EFA140();
  if ((a3 & 1) == 0)
  {
    MEMORY[0x2383E2210](a2);
  }

  v8 = sub_237EFA170();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v5 + 48) + 16 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v14)
      {
        if (a3)
        {
          result = 0;
          a2 = v13;
          goto LABEL_12;
        }
      }

      else if ((a3 & 1) == 0 && v13 == a2)
      {
        result = 0;
        goto LABEL_12;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v4;
  sub_237E4E194(a2, a3 & 1, v10, isUniquelyReferenced_nonNull_native);
  *v4 = v17;
  result = 1;
  v14 = a3;
LABEL_12:
  *v3 = a2;
  *(v3 + 8) = v14 & 1;
  return result;
}

BOOL sub_237E4C7EC(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_11_54(a1);
  v6 = a2 & 1;
  sub_237EFA140();
  sub_237EFA170();
  OUTLINED_FUNCTION_17_46();
  while (1)
  {
    v11 = v7 & v9;
    v12 = (v10 << (v7 & v9)) & *(v8 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      sub_237E4E334(a2 & 1, v11, isUniquelyReferenced_nonNull_native);
      *v3 = v15;
      goto LABEL_7;
    }

    if (*(*(v4 + 48) + v11) == (a2 & 1))
    {
      break;
    }

    v7 = v11 + 1;
  }

  v6 = *(*(v4 + 48) + v11);
LABEL_7:
  result = v12 == 0;
  *v2 = v6;
  return result;
}

uint64_t sub_237E4C8D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44D8, &qword_237F179F0);
  result = sub_237EF92F0();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_237D28F08(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_237EFA120();
    sub_237EF8610();
    result = sub_237EFA170();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_237E4CB2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44E0, &qword_237F179F8);
  result = sub_237EF92F0();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_237D28F08(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_237EFA110();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_237E4CD50(uint64_t a1)
{
  v2 = v1;
  v36 = sub_237EF60B0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D20, &qword_237F19CE0);
  result = sub_237EF92F0();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_237D28F08(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_237E4FE98(&qword_27DEAFC78, MEMORY[0x277CC99D8]);
    result = sub_237EF83D0();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_237E4D094(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D28, &qword_237F19CE8);
  result = sub_237EF92F0();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_237D28F08(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v18 = *v16;
    v17 = v16[1];
    sub_237EFA120();
    sub_237EFA140();
    if (v17)
    {
      sub_237EF8610();
    }

    result = sub_237EFA170();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v18;
    v27[1] = v17;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_237E4D30C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D10, &qword_237F19CD8);
  result = sub_237EF92F0();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_237D28F08(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
    result = MEMORY[0x2383E21E0](*(v5 + 40), v16, 4);
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 4 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_237E4D534(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D40, &qword_237F19CF8);
  result = sub_237EF92F0();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_237D28F08(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 16 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    sub_237EFA120();
    sub_237EFA140();
    if (v18 != 1)
    {
      MEMORY[0x2383E2210](v17);
    }

    result = sub_237EFA170();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = *(v5 + 48) + 16 * v22;
    *v27 = v17;
    *(v27 + 8) = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_237E4D7B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4558, &unk_237F17A50);
  result = sub_237EF92F0();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_237D28F08(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_237EFA120();
    sub_237EFA140();
    result = sub_237EFA170();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_237E4DA00(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_237E4C8D0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_237E4EE64(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_237EFA120();
      sub_237EF8610();
      result = sub_237EFA170();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_237EF9D40() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_237E4E474();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_237EFA010();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

unint64_t sub_237E4DB68(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_237E4CB2C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_237E4F0FC(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = sub_237EFA110();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_237E4E5CC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_237EFA010();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_237E4DC6C(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_237EF60B0();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_237E4CD50(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_237E4F2E8(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_237E4FE98(&qword_27DEAFC78, MEMORY[0x277CC99D8]);
      v14 = sub_237EF83D0();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_237E4FE98(&qword_27DEB4D18, MEMORY[0x277CC99E0]);
        v16 = sub_237EF8520();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_237E4E70C();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_237EFA010();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_237E4DED0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_237E4D094(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_237E4E940();
        goto LABEL_22;
      }

      sub_237E4F5EC(v9 + 1);
    }

    v11 = *v4;
    sub_237EFA120();
    sub_237EFA140();
    if (a2)
    {
      sub_237EF8610();
    }

    result = sub_237EFA170();
    v12 = v11 + 56;
    v13 = -1 << *(v11 + 32);
    a3 = result & ~v13;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      v15 = *(v11 + 48);
      do
      {
        v16 = (v15 + 16 * a3);
        v17 = v16[1];
        if (v17)
        {
          if (a2)
          {
            if (*v16 == v8 && v17 == a2)
            {
              goto LABEL_25;
            }

            result = sub_237EF9D40();
            if (result)
            {
              goto LABEL_25;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_25;
        }

        a3 = (a3 + 1) & v14;
      }

      while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_22:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD490, &qword_237F07150);
    result = sub_237EFA010();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

unint64_t sub_237E4E08C(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_237E4D30C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_237E4F83C(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = MEMORY[0x2383E21E0](*(*v3 + 40), v5, 4);
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 4 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_237E4EA94();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 4 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_237EFA010();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_237E4E194(uint64_t result, char a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_237E4D534(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_237E4EBD4();
        goto LABEL_18;
      }

      sub_237E4FA2C(v8 + 1);
    }

    v10 = *v4;
    sub_237EFA120();
    sub_237EFA140();
    if ((a2 & 1) == 0)
    {
      MEMORY[0x2383E2210](v7);
    }

    result = sub_237EFA170();
    v11 = -1 << *(v10 + 32);
    a3 = result & ~v11;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v12 = ~v11;
      do
      {
        v13 = *(v10 + 48) + 16 * a3;
        if (*(v13 + 8))
        {
          if (a2)
          {
            goto LABEL_21;
          }
        }

        else if ((a2 & 1) == 0 && *v13 == v7)
        {
          goto LABEL_21;
        }

        a3 = (a3 + 1) & v12;
      }

      while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_18:
  v14 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v15 = *(v14 + 48) + 16 * a3;
  *v15 = v7;
  *(v15 + 8) = a2 & 1;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECB0, &unk_237F1A490);
    result = sub_237EFA010();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

unint64_t sub_237E4E334(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_237E4D7B4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_237E4FC7C(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_237EFA120();
      sub_237EFA140();
      result = sub_237EFA170();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == (v5 & 1))
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_237E4ED24();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5 & 1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_237EFA010();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_237E4E474()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44D8, &qword_237F179F0);
  v2 = *v0;
  v3 = sub_237EF92E0();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_237EF8260();
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

void *sub_237E4E5CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44E0, &qword_237F179F8);
  v2 = *v0;
  v3 = sub_237EF92E0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_237E4E70C()
{
  v1 = v0;
  v2 = sub_237EF60B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D20, &qword_237F19CE0);
  v6 = *v0;
  v7 = sub_237EF92E0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
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
LABEL_17:
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
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *sub_237E4E940()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D28, &qword_237F19CE8);
  v2 = *v0;
  v3 = sub_237EF92E0();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
        result = sub_237EF8260();
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

void *sub_237E4EA94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D10, &qword_237F19CD8);
  v2 = *v0;
  v3 = sub_237EF92E0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_237E4EBD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D40, &qword_237F19CF8);
  v2 = *v0;
  v3 = sub_237EF92E0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v19 + 8) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(v4 + 48) + 16 * v14;
      *v19 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_237E4ED24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4558, &unk_237F17A50);
  v2 = *v0;
  v3 = sub_237EF92E0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_237E4EE64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44D8, &qword_237F179F0);
  result = sub_237EF92F0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_237EFA120();
        sub_237EF8260();
        sub_237EF8610();
        result = sub_237EFA170();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_237E4F098(uint64_t a1, uint64_t a2)
{
  v4 = _s10DenseBlockVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237E4F0FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44E0, &qword_237F179F8);
  result = sub_237EF92F0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_237EFA110();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_237E4F2E8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_237EF60B0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D20, &qword_237F19CE0);
  v7 = sub_237EF92F0();
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
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_237E4FE98(&qword_27DEAFC78, MEMORY[0x277CC99D8]);
        result = sub_237EF83D0();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_237E4F5EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D28, &qword_237F19CE8);
  result = sub_237EF92F0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v17 = *v15;
        v16 = v15[1];
        sub_237EFA120();
        sub_237EFA140();
        if (v16)
        {
          sub_237EF8260();
          sub_237EF8610();
        }

        result = sub_237EFA170();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v17;
        v26[1] = v16;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_27;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_237E4F83C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D10, &qword_237F19CD8);
  result = sub_237EF92F0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 4 * (v12 | (v6 << 6)));
        result = MEMORY[0x2383E21E0](*(v5 + 40), v15, 4);
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 4 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_237E4FA2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D40, &qword_237F19CF8);
  result = sub_237EF92F0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v3 + 48) + 16 * (v12 | (v6 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        sub_237EFA120();
        sub_237EFA140();
        if (v17 != 1)
        {
          MEMORY[0x2383E2210](v16);
        }

        result = sub_237EFA170();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = *(v5 + 48) + 16 * v21;
        *v26 = v16;
        *(v26 + 8) = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_27;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_237E4FC7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4558, &unk_237F17A50);
  result = sub_237EF92F0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_237EFA120();
        sub_237EFA140();
        result = sub_237EFA170();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_237E4FE98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_237EF60B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237E4FEDC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_237EF9710();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_237D6DA5C();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_237E50040();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_237E50084();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D30, &qword_237F19CF0);
          v9 = sub_237E0FEE8(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_237E50040()
{
  result = qword_27DEAF160;
  if (!qword_27DEAF160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEAF160);
  }

  return result;
}

unint64_t sub_237E50084()
{
  result = qword_27DEB4D38;
  if (!qword_27DEB4D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB4D30, &qword_237F19CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4D38);
  }

  return result;
}

void *OUTLINED_FUNCTION_11_54(uint64_t a1, ...)
{

  return sub_237EFA120();
}

uint64_t OUTLINED_FUNCTION_12_47@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *(v2 + 80) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = 0u;
  return v1;
}

uint64_t OUTLINED_FUNCTION_18_37@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 256);
  v3 = v2 + a1;
  *(v3 + 80) = 0;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
  return v2;
}

uint64_t OUTLINED_FUNCTION_21_42()
{

  return sub_237EF75E0();
}

uint64_t OUTLINED_FUNCTION_22_35(uint64_t a1, uint64_t *a2)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_25_32@<X0>(char a1@<W4>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256) | 0x8000000000000000;

  return sub_237C91098(v3, v2, 0xD00000000000001ALL, v5, a1);
}

uint64_t OUTLINED_FUNCTION_27_26(uint64_t a1, uint64_t *a2)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

double OUTLINED_FUNCTION_29_29()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  return result;
}

double OUTLINED_FUNCTION_30_35()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  return sub_237C91098(v5, v6, a3, v7 | 0x8000000000000000, a5);
}

uint64_t TreeRegressorModel.featureColumnNames.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_237C62D90(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);
      sub_237EF8260();
      if (v7 >= v8 >> 1)
      {
        sub_237C62D90((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t TreeRegressorModel.predictionColumnName.getter()
{
  v1 = *v0;
  sub_237EF8260();
  return v1;
}

uint64_t TreeRegressorModel.predictionColumnName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TreeRegressorModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF450, &qword_237F08850);
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *v4;
  *(v5 + 72) = v7;
  *(v5 + 80) = v8;
  *(v5 + 88) = *(v4 + 1);
  *(v5 + 104) = *(v4 + 3);
  *(v5 + 120) = v4[5];

  return MEMORY[0x2822009F8](sub_237E50704, 0, 0);
}

void sub_237E50704()
{
  v24 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  *v21 = *(v0 + 80);
  *&v21[8] = *(v0 + 88);
  v22 = v2;
  v23 = v1;
  sub_237E50988(&v18);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = v19;
  v6 = v18;
  *&v18 = *(v0 + 104);
  *(&v18 + 1) = v3;
  v19 = v4;
  *v21 = v6;
  v21[16] = v5;
  *&v22 = v20;

  v7 = BaseTreeRegressorModel.applied(features:eventHandler:)(v21);

  sub_237EF6190();
  v8 = *(v7 + 16);
  if (v8)
  {
    *v21 = MEMORY[0x277D84F90];
    sub_237EF8260();
    sub_237C62FA0(0, v8, 0);
    v9 = 0;
    v10 = *v21;
    while (v9 < *(v7 + 16))
    {
      v11 = *(v7 + 4 * v9 + 32);
      *v21 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_237C62FA0(v12 > 1, v13 + 1, 1);
        v10 = *v21;
      }

      ++v9;
      *(v10 + 16) = v13 + 1;
      *(v10 + 8 * v13 + 32) = v11;
      if (v8 == v9)
      {

        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    sub_237EF8260();

    v10 = MEMORY[0x277D84F90];
LABEL_13:
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v16 = *(v0 + 56);
    *(v0 + 16) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8, &qword_237F15D00);
    sub_237DDC6C4();
    sub_237EF6220();
    sub_237EF6110();
    (*(v15 + 8))(v14, v16);

    v17 = *(v0 + 8);

    v17();
  }
}

uint64_t sub_237E50988@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  result = sub_237DDE9AC(*(v1 + 16), 0xD000000000000012, 0x8000000237F19CF0, &v14);
  if (!v2)
  {
    v6 = v14;
    v7 = v16;
    if (*(&v14 + 1) == v4)
    {
      v8 = v15;
      *a1 = v14;
      *(a1 + 8) = v4;
      *(a1 + 16) = v8;
      *(a1 + 24) = v7;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_237F04760;
      *(v9 + 32) = v6;

      *&v14 = 0;
      *(&v14 + 1) = 0xE000000000000000;
      sub_237EF9330();

      *&v14 = 0x6465746365707845;
      *(&v14 + 1) = 0xE900000000000020;
      v10 = sub_237EF9AB0();
      MEMORY[0x2383E0710](v10);

      MEMORY[0x2383E0710](0xD000000000000012, 0x8000000237EFBD50);
      v11 = sub_237EF9AB0();
      MEMORY[0x2383E0710](v11);

      v12 = v14;
      sub_237C84150();
      swift_allocError();
      *v13 = v9;
      *(v13 + 8) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 6;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_237E50B4C(uint64_t a1)
{
  sub_237EF5BF0();
  OUTLINED_FUNCTION_1();
  v20 = v5;
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_79();
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[5];

  v35 = sub_237E88538();
  if (v2)
  {
  }

  v11 = v10;
  v18 = v7;
  sub_237EF5C30();
  swift_allocObject();
  sub_237EF5C20();
  (*(v20 + 104))(v3, *MEMORY[0x277CC86A8], v21);
  sub_237EF5C00();
  sub_237E4C030();
  v12 = v35;
  sub_237EF5C10();
  memcpy(v24, v31, sizeof(v24));
  memcpy(v34, v31, sizeof(v34));
  sub_237D73A1C(v32);
  sub_237D6E9A0(v24);

  sub_237CBA6B8(v12, v11);

  v23[112] = 0;
  *(v22 + 7) = v32[0];
  *(&v22[1] + 7) = v32[1];
  *(&v22[2] + 7) = v32[2];
  *(&v22[3] + 7) = v33;
  v25[0] = 0uLL;
  *&v25[1] = v8;
  *(&v25[1] + 1) = v6;
  *&v25[2] = v18;
  *(&v25[2] + 1) = v9;
  LOBYTE(v25[3]) = 0;
  v25[6] = *(&v22[2] + 15);
  *(&v25[5] + 1) = v22[2];
  *(&v25[4] + 1) = v22[1];
  *(&v25[3] + 1) = v22[0];
  v26[1] = 0;
  v26[0] = 0;
  v26[2] = v8;
  v26[3] = v6;
  v26[4] = v18;
  v26[5] = v9;
  v27 = 0;
  *&v30[15] = *(&v22[2] + 15);
  *v30 = v22[2];
  v29 = v22[1];
  v28 = v22[0];
  sub_237EF8260();
  sub_237EF8260();
  sub_237E52138(v25, v23);
  sub_237E52170(v26);
  memcpy(v23, v25, 0x70uLL);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
  v15 = *(v14 + 8);
  v16 = sub_237E523C0();
  v15(v23, &unk_284ADB0E0, v16, v13, v14);
  memcpy(v22, v23, sizeof(v22));
  return sub_237E52170(v22);
}

void *sub_237E50E6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = sub_237EF85C0();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_79();
  sub_237C66728(a1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D98, &qword_237F19E20);
  type metadata accessor for EstimatorPackageDecoder(0);
  if (!swift_dynamicCast())
  {
    sub_237EF93E0();
    swift_allocError();
    v21 = v20;
    sub_237EF93D0();
    OUTLINED_FUNCTION_22_3();
    (*(v22 + 104))(v21);
    return swift_willThrow();
  }

  v38 = a2;
  v39 = v8;

  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  v12 = *(v11 + 8);
  v13 = sub_237E52340();
  result = v12(v41, &unk_284ADB0E0, &unk_284ADB0E0, v13, v10, v11);
  if (v2)
  {
    return result;
  }

  memcpy(v40, v41, sizeof(v40));
  v15 = v40[13];
  v45 = v40[7];
  v46 = v40[8];
  v47 = *&v40[9];
  v48 = *&v40[11];
  v49 = v40[13];
  sub_237EF8260();
  sub_237D7360C(&v45, v42);
  memcpy(v43, v42, sizeof(v43));
  if (sub_237E52394(v43) == 1)
  {
    sub_237EF93E0();
    swift_allocError();
    v17 = v16;
    sub_237EF9330();

    v50 = v15;
    v18 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v18);
    sub_237E52170(v40);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    sub_237EF93D0();
    OUTLINED_FUNCTION_22_3();
    (*(v19 + 104))(v17);
    return swift_willThrow();
  }

  memcpy(v44, v43, sizeof(v44));
  sub_237D6E010();
  sub_237EF85B0();
  v23 = sub_237EF85A0();
  v25 = v24;

  result = (*(v39 + 8))(v3, v6);
  if (v25 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_237CBA860(v42, &qword_27DEB4DA8, &unk_237F19E28);
    type metadata accessor for XGBooster();
    swift_allocObject();
    v26 = sub_237E88668(0, 0);
    sub_237E88474(v23, v25);
    v27 = 0;
    v28 = v40[2];
    v29 = (v40[2] + 56);
    v30 = *(v40[2] + 16) + 1;
    while (--v30)
    {
      v31 = *v29;
      v32 = *(v29 - 1);
      v29 += 32;
      if (v31 >= 4)
      {
        v33 = 1;
      }

      else
      {
        v33 = v32;
      }

      v34 = __OFADD__(v27, v33);
      v27 += v33;
      if (v34)
      {
        __break(1u);
        break;
      }
    }

    sub_237E523AC(v23, v25);
    v35 = v40[4];
    if (LOBYTE(v40[6]))
    {
      v36 = 0;
    }

    else
    {
      v36 = v40[5];
    }

    v37 = v40[3];
    sub_237EF8260();
    sub_237EF8260();
    result = sub_237E52170(v40);
    v38[4] = v26;
    v38[5] = v36;
    v38[2] = v28;
    v38[3] = v27;
    *v38 = v37;
    v38[1] = v35;
  }

  return result;
}

uint64_t sub_237E51334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_237C5FFA4;

  return TreeRegressorModel.applied(to:eventHandler:)(a1, a2, a3, a4);
}

uint64_t sub_237E51430(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D78, &qword_237F19E18);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v31 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E52090();
  sub_237EFA1B0();
  LOBYTE(v36[0]) = 0;
  OUTLINED_FUNCTION_3_84();
  sub_237EF99D0();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v40 = v11;
    v12 = *(v11 + 16);
    if (v12)
    {
      v31[0] = v3;
      v31[1] = 0;
      v32 = v7;
      v33 = v5;
      *&v36[0] = MEMORY[0x277D84F90];
      sub_237EF8260();
      sub_237C62D90(0, v12, 0);
      v13 = *&v36[0];
      v14 = (v11 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        *&v36[0] = v13;
        v17 = *(v13 + 16);
        v2 = *(v13 + 24);
        sub_237EF8260();
        if (v17 >= v2 >> 1)
        {
          sub_237C62D90((v2 > 1), v17 + 1, 1);
          v13 = *&v36[0];
        }

        *(v13 + 16) = v17 + 1;
        v18 = v13 + 16 * v17;
        *(v18 + 32) = v15;
        *(v18 + 40) = v16;
        v14 += 4;
        --v12;
      }

      while (v12);
      v5 = v33;
      v7 = v32;
      v3 = v31[0];
    }

    else
    {
      sub_237E522DC(&v40, v36, &qword_27DEB4D58, &qword_237F19E10);
      v13 = MEMORY[0x277D84F90];
    }

    *&v36[0] = v13;
    v34[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
    v19 = sub_237CAD3E8(&qword_27DEAEBD8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_9_33(v36, v34, v20, v21, v19);
    if (v2)
    {
      sub_237CBA860(&v40, &qword_27DEB4D58, &qword_237F19E10);
    }

    else
    {

      *&v36[0] = v40;
      v34[0] = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D58, &qword_237F19E10);
      v22 = sub_237E521A0(&qword_27DEB4D80, sub_237E52218, MEMORY[0x277D83948]);
      OUTLINED_FUNCTION_9_33(v36, v34, v23, v24, v22);
      sub_237CBA860(&v40, &qword_27DEB4D58, &qword_237F19E10);
      LOBYTE(v36[0]) = 2;
      OUTLINED_FUNCTION_3_84();
      sub_237EF9A10();
      LOBYTE(v36[0]) = 5;
      OUTLINED_FUNCTION_3_84();
      sub_237EF99F0();
      v26 = *(v3 + 72);
      v38[0] = *(v3 + 56);
      v38[1] = v26;
      v38[2] = *(v3 + 88);
      v39 = *(v3 + 104);
      v27 = *(v3 + 72);
      v36[0] = *(v3 + 56);
      v36[1] = v27;
      v36[2] = *(v3 + 88);
      v37 = *(v3 + 104);
      v35 = 6;
      sub_237E522DC(v38, v34, &qword_27DEB2210, &unk_237F10700);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210, &unk_237F10700);
      v28 = sub_237E5226C(&qword_27DEB4D90, &unk_237F19B20);
      OUTLINED_FUNCTION_9_33(v36, &v35, v29, v30, v28);
    }
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_237E51874@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D48, &qword_237F19E08);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E52090();
  sub_237EFA190();
  if (v2)
  {
    v7 = 0;
  }

  else
  {
    LOBYTE(v44[0]) = 0;
    v6 = 0;
    v9 = sub_237EF98D0();
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D58, &qword_237F19E10);
    LOBYTE(v43[0]) = 3;
    sub_237E521A0(&qword_27DEB4D60, sub_237E520E4, MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_2_90();
    sub_237EF9900();
    v12 = v44[0];
    if (v44[0])
    {
      v38 = v9;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
      LOBYTE(v43[0]) = 1;
      sub_237CAD3E8(&qword_27DEAEC28, MEMORY[0x277D83808], MEMORY[0x277D83978]);
      OUTLINED_FUNCTION_2_90();
      sub_237EF9970();
      v38 = v9;
      v17 = MEMORY[0x10];
      if (MEMORY[0x10])
      {
        v35 = v11;
        v37 = a2;
        v44[0] = MEMORY[0x277D84F90];
        sub_237C6304C(0, MEMORY[0x10], 0);
        v18 = v44[0];
        v19 = 40;
        do
        {
          v20 = *(v19 - 8);
          v21 = *v19;
          v44[0] = v18;
          v22 = *(v18 + 16);
          v6 = *(v18 + 24);
          v39 = v22 + 1;
          sub_237EF8260();
          if (v22 >= v6 >> 1)
          {
            sub_237C6304C((v6 > 1), v39, 1);
            v18 = v44[0];
          }

          *(v18 + 16) = v39;
          v23 = v18 + 32 * v22;
          *(v23 + 32) = v20;
          *(v23 + 40) = v21;
          *(v23 + 48) = 3;
          *(v23 + 56) = 4;
          v19 += 16;
          --v17;
        }

        while (v17);
        v12 = v18;

        v11 = v35;
        a2 = v37;
      }

      else
      {

        v12 = MEMORY[0x277D84F90];
      }
    }

    OUTLINED_FUNCTION_6_67(2);
    v13 = sub_237EF9910();
    if (!v6)
    {
      v24 = v14;
      v40 = v13;
      OUTLINED_FUNCTION_6_67(5);
      v36 = sub_237EF98F0();
      v63 = v25 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210, &unk_237F10700);
      v54 = 6;
      sub_237E5226C(&qword_27DEB4D70, &unk_237F19AE0);
      OUTLINED_FUNCTION_2_90();
      sub_237EF9970();
      v26 = OUTLINED_FUNCTION_0_81();
      v27(v26);
      v41 = v55;
      v28 = v56;
      v33 = v58;
      v34 = v57;
      v31 = v60;
      v32 = v59;
      v30 = v61;
      v43[0] = v38;
      v43[1] = v11;
      v43[2] = v12;
      v43[3] = v40;
      v43[4] = v24;
      v43[5] = v36;
      v29 = v63;
      LOBYTE(v43[6]) = v63;
      *(&v43[6] + 1) = *v62;
      HIDWORD(v43[6]) = *&v62[3];
      v43[7] = v55;
      LODWORD(v43[8]) = v56;
      v43[9] = v57;
      v43[10] = v58;
      v43[11] = v59;
      v43[12] = v60;
      v43[13] = v61;
      sub_237E52138(v43, v44);
      __swift_destroy_boxed_opaque_existential_1(v42);
      v44[0] = v38;
      v44[1] = v11;
      v44[2] = v12;
      v44[3] = v40;
      v44[4] = v24;
      v44[5] = v36;
      v45 = v29;
      *v46 = *v62;
      *&v46[3] = *&v62[3];
      v47 = v41;
      v48 = v28;
      v49 = v34;
      v50 = v33;
      v51 = v32;
      v52 = v31;
      v53 = v30;
      sub_237E52170(v44);
      return memcpy(a2, v43, 0x70uLL);
    }

    v15 = OUTLINED_FUNCTION_0_81();
    v16(v15);
    v7 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v42);

  if (v7)
  {
  }

  return result;
}

unint64_t sub_237E51DA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_237EF9890();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_237E51DFC(char a1)
{
  result = 0x6C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x636E456C6562616CLL;
      break;
    case 5:
      result = 0x6F69746172657469;
      break;
    case 6:
      result = 0x65646F4D65657274;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_237E51F08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237E51DA8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_237E51F38@<X0>(unint64_t *a1@<X8>)
{
  result = sub_237E51DFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237E51F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E51DF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E51FA8(uint64_t a1)
{
  v2 = sub_237E52090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E51FE4(uint64_t a1)
{
  v2 = sub_237E52090();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_237E52020@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_237E51874(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x70uLL);
  }

  return result;
}

unint64_t sub_237E52090()
{
  result = qword_27DEB4D50;
  if (!qword_27DEB4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4D50);
  }

  return result;
}

unint64_t sub_237E520E4()
{
  result = qword_27DEB4D68;
  if (!qword_27DEB4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4D68);
  }

  return result;
}

uint64_t sub_237E521A0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB4D58, &qword_237F19E10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237E52218()
{
  result = qword_27DEB4D88;
  if (!qword_27DEB4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4D88);
  }

  return result;
}

uint64_t sub_237E5226C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB2210, &unk_237F10700);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237E522DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_22_3();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_237E52340()
{
  result = qword_27DEB4DA0;
  if (!qword_27DEB4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4DA0);
  }

  return result;
}

uint64_t sub_237E52394(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_237E523AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_237CBA6B8(a1, a2);
  }

  return a1;
}

unint64_t sub_237E523C0()
{
  result = qword_27DEB4DB0;
  if (!qword_27DEB4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4DB0);
  }

  return result;
}

_BYTE *sub_237E52414(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237E524EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_237E5252C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_237E52598()
{
  result = qword_27DEB4DB8;
  if (!qword_27DEB4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4DB8);
  }

  return result;
}

unint64_t sub_237E525F0()
{
  result = qword_27DEB4DC0;
  if (!qword_27DEB4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4DC0);
  }

  return result;
}

unint64_t sub_237E52648()
{
  result = qword_27DEB4DC8[0];
  if (!qword_27DEB4DC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB4DC8);
  }

  return result;
}

BOOL static MLModelClassifierAdaptor.Label.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      sub_237E52844(*a1, v3, 1);
      v7 = OUTLINED_FUNCTION_5_12();
      sub_237E52844(v7, v8, 1);
      return v2 == v5;
    }

    goto LABEL_6;
  }

  if (a2[2])
  {
    sub_237EF8260();
LABEL_6:
    v10 = OUTLINED_FUNCTION_5_12();
    sub_237E52834(v10, v11, v6);
    sub_237E52844(v2, v3, v4);
    v12 = OUTLINED_FUNCTION_5_12();
    sub_237E52844(v12, v13, v6);
    return 0;
  }

  v14 = *a1;
  if (v2 == v5 && v3 == a2[1])
  {
    sub_237E52834(v14, v3, 0);
    v27 = OUTLINED_FUNCTION_3_85();
    sub_237E52834(v27, v28, v29);
    v30 = OUTLINED_FUNCTION_3_85();
    sub_237E52844(v30, v31, v32);
    v33 = OUTLINED_FUNCTION_3_85();
    sub_237E52844(v33, v34, v35);
    return 1;
  }

  else
  {
    v16 = sub_237EF9D40();
    v17 = OUTLINED_FUNCTION_5_12();
    sub_237E52834(v17, v18, 0);
    v19 = OUTLINED_FUNCTION_3_85();
    sub_237E52834(v19, v20, v21);
    v22 = OUTLINED_FUNCTION_3_85();
    sub_237E52844(v22, v23, v24);
    v25 = OUTLINED_FUNCTION_5_12();
    sub_237E52844(v25, v26, 0);
    return v16 & 1;
  }
}

uint64_t sub_237E52834(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_237EF8260();
  }

  return result;
}

uint64_t sub_237E52844(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t MLModelClassifierAdaptor.Label.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (v1[2])
  {
    MEMORY[0x2383E2210](1);
    return MEMORY[0x2383E2210](v2);
  }

  else
  {
    MEMORY[0x2383E2210](0);

    return sub_237EF8610();
  }
}

uint64_t MLModelClassifierAdaptor.Label.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_237EFA120();
  MLModelClassifierAdaptor.Label.hash(into:)(v3);
  return sub_237EFA170();
}

uint64_t sub_237E52934(uint64_t a1)
{
  sub_237EFA120();
  MLModelClassifierAdaptor.Label.hash(into:)(v2);
  return sub_237EFA170();
}

void MLModelClassifierAdaptor.init(contentsOf:configuration:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_237C75918(0, &qword_27DEAF200, 0x277CBFF20);
  (*(v9 + 16))(v13, v4, v7);
  v14 = v2;
  sub_237CCB8EC(v13, v14);
  if (v0)
  {
    (*(v9 + 8))(v4, v7);
  }

  else
  {
    MLModelClassifierAdaptor.init(model:)();
    (*(v9 + 8))(v4, v7);

    *v6 = v15;
    v6[1] = v16;
  }

  OUTLINED_FUNCTION_12_6();
}

void MLModelClassifierAdaptor.init(model:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = v3;
  v5 = [v4 modelDescription];
  v6 = [v5 inputDescriptionsByName];

  sub_237C75918(0, qword_27DEAF298, 0x277CBFEE0);
  v7 = sub_237EF8210();

  if (*(v7 + 16) != 1)
  {

    goto LABEL_12;
  }

  sub_237CA35B4(v7);
  v9 = v8;
  v11 = v10;

  if (!v9)
  {
LABEL_12:
    v19 = [v4 modelDescription];

    v20 = [v19 inputDescriptionsByName];
    v21 = sub_237EF8210();

    v22 = *(v21 + 16);

    v23 = sub_237CCD12C();
    OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v23);
    *v24 = 1;
    v24[1] = v22;
    OUTLINED_FUNCTION_17_21(v24, 3);

    goto LABEL_13;
  }

  v12 = [v11 type];
  if (v12 == 5 || v12 == 2)
  {
    v14 = v11;
    v15 = [v4 modelDescription];
    v16 = [v15 outputDescriptionsByName];

    v17 = sub_237EF8210();
    if (*(v17 + 16) == 2)
    {

      v18 = sub_237E1B598();
      if (!v0)
      {
        v31 = v18;
        v32 = sub_237E1B444();

        *v2 = v4;
        v2[1] = v14;
        v2[2] = v31;
        v2[3] = v32;
        goto LABEL_13;
      }
    }

    else
    {

      v25 = *(v17 + 16);

      v26 = sub_237CCD12C();
      OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v26);
      *v27 = 2;
      v27[1] = v25;
      OUTLINED_FUNCTION_17_21(v27, 4);
    }
  }

  else
  {

    v28 = [v11 type];
    v29 = sub_237CCD12C();
    OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v29);
    *v30 = 5;
    *(v30 + 8) = v28;
    *(v30 + 16) = 0;
    swift_willThrow();
  }

LABEL_13:
  OUTLINED_FUNCTION_12_6();
}

uint64_t MLModelClassifierAdaptor.applied(to:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  *(v1 + 96) = v4;
  v5 = sub_237EF7E90();
  *(v1 + 120) = v5;
  *(v1 + 128) = *(v5 - 8);
  *(v1 + 136) = swift_task_alloc();
  v6 = v0[1];
  *(v1 + 144) = *v0;
  *(v1 + 160) = v6;

  return MEMORY[0x2822009F8](sub_237E52ED4, 0, 0);
}

uint64_t sub_237E52ED4()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF150, &unk_237F07D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  v7 = [v1 name];
  v8 = sub_237EF8590();
  v10 = v9;

  *(inited + 32) = v8;
  *(inited + 40) = v10;
  sub_237C75918(0, &qword_27DEAF160, 0x277CBFF48);
  (*(v3 + 16))(v2, v5, v4);
  swift_getWitnessTable();
  v11 = sub_237EF8F40();
  v12 = [objc_opt_self() featureValueWithMultiArray_];

  *(inited + 72) = sub_237C75918(0, &qword_27DEAF158, 0x277CBFEF8);
  *(inited + 48) = v12;
  sub_237EF8230();
  v13 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v14 = sub_237CCD044();
  v0[22] = v14;
  v15 = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CBFF68]);
  v17 = v15;
  v18 = [v16 init];
  v0[23] = v18;
  v19 = swift_task_alloc();
  v0[24] = v19;
  *v19 = v0;
  v19[1] = sub_237E53184;

  return MEMORY[0x282111978](v17, v18);
}

uint64_t sub_237E53184()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  *(v2 + 200) = v3;
  *(v2 + 208) = v0;

  if (v0)
  {
    v4 = sub_237E5336C;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_237E532A0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_237E532A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_237E533DC(*(v8 + 200), *(v8 + 112), a3, a4, a5, a6, a7, a8, v11, v12, *(v8 + 144), *(v8 + 152), *(v8 + 160), *(v8 + 168), v13, v14, v15, v8, v16, v17);

  swift_unknownObjectRelease();

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_237E5336C()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

void sub_237E533DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = *(v20 + 24);
  v27 = [*(v20 + 16) name];
  if (!v27)
  {
    sub_237EF8590();
    v27 = sub_237EF8560();
  }

  v28 = [v25 featureValueForName_];

  if (v28)
  {
    v29 = [v28 dictionaryValue];
    sub_237C75918(0, &qword_280C8CCF8, 0x277CCABB0);
    v30 = sub_237EF8210();

    if (*(v30 + 16))
    {
      v31 = [v26 type];
      if (v31 == 3)
      {
        OUTLINED_FUNCTION_18_38(3, v32, v33, v34, v35, v36, v37, v38, v65);
        MEMORY[0x28223BE20](v53);
        OUTLINED_FUNCTION_9_56();
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4ED0, &qword_237F1A2D8);
        v54 = OUTLINED_FUNCTION_16_48(255);
        OUTLINED_FUNCTION_1_99();
        WitnessTable = swift_getWitnessTable();
        v43 = type metadata accessor for Classification(0, v54, WitnessTable, v56);
        v44 = sub_237E54D20();
        v45 = MEMORY[0x277D84A98];
        v46 = sub_237E54CFC;
        goto LABEL_11;
      }

      if (v31 == 1)
      {
        OUTLINED_FUNCTION_18_38(1, v32, v33, v34, v35, v36, v37, v38, v65);
        MEMORY[0x28223BE20](v39);
        OUTLINED_FUNCTION_9_56();
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4ED0, &qword_237F1A2D8);
        v40 = OUTLINED_FUNCTION_16_48(255);
        OUTLINED_FUNCTION_1_99();
        v41 = swift_getWitnessTable();
        v43 = type metadata accessor for Classification(0, v40, v41, v42);
        v44 = sub_237E54D20();
        v45 = MEMORY[0x277D84A98];
        v46 = sub_237E54D84;
LABEL_11:
        sub_237C9339C(v46, v21, v66, v43, v45, v44);
        v58 = v57;

        a10 = v58;
        v59 = OUTLINED_FUNCTION_16_48(0);
        OUTLINED_FUNCTION_1_99();
        v60 = swift_getWitnessTable();
        type metadata accessor for Classification(255, v59, v60, v61);
        v62 = sub_237EF8A60();
        v63 = swift_getWitnessTable();
        ClassificationDistribution.init<A>(_:)(&a10, v59, v62, v60, v63, v67);
LABEL_14:

        goto LABEL_15;
      }

      v64 = sub_237CCD12C();
      OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v64);
      *v51 = xmmword_237F17CC0;
      v52 = 8;
    }

    else
    {

      v49 = [v28 type];
      v50 = sub_237CCD12C();
      OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v50);
      *v51 = 6;
      *(v51 + 8) = v49;
      v52 = 2;
    }

    OUTLINED_FUNCTION_17_21(v51, v52);
    goto LABEL_14;
  }

  v47 = sub_237CCD12C();
  OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v47);
  *v48 = xmmword_237F08210;
  OUTLINED_FUNCTION_17_21(v48, 8);
LABEL_15:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E5376C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_237E54DA8(a1, v20);

  v23 = v20[0];
  v24 = v20[1];
  v25 = v21;
  swift_dynamicCast();
  v18[0] = v26;
  v18[1] = 0;
  v19 = 1;
  sub_237E54DA8(a1, v16);
  v10 = v17;
  [v17 floatValue];
  v12 = v11;

  v13 = type metadata accessor for MLModelClassifierAdaptor.Label(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  Classification.init(label:probability:)(v18, v13, WitnessTable, a5, v12);
  return sub_237E54E18(v16);
}

uint64_t sub_237E53890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_237E54DA8(a1, v22);

  v25 = v22[0];
  v26 = v22[1];
  v27 = v23;
  swift_dynamicCast();
  v18[0] = v20;
  v18[1] = v21;
  v19 = 0;
  sub_237E54DA8(a1, v16);
  v10 = v17;
  [v17 floatValue];
  v12 = v11;

  v13 = type metadata accessor for MLModelClassifierAdaptor.Label(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  Classification.init(label:probability:)(v18, v13, WitnessTable, a5, v12);
  return sub_237E54E18(v16);
}

uint64_t sub_237E539BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237E53A6C;

  return MLModelClassifierAdaptor.applied(to:eventHandler:)();
}

uint64_t sub_237E53A6C()
{
  OUTLINED_FUNCTION_2_0();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_237E53B5C()
{
  OUTLINED_FUNCTION_13_4();
  v126 = v1;
  v113 = v2;
  v116 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v115 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v114 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF290, &qword_237F1A2D0);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_22_2(&v113 - v8);
  v122 = sub_237EF6E30();
  OUTLINED_FUNCTION_1();
  v121 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v12 - v11);
  v129 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v138 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22_2(&v113 - v18);
  v133 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v132 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v22 - v21);
  v23 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_26();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v113 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v113 - v34;
  sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v136 = v37;
  v137 = v36;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  v40 = &v113 - v39;
  v41 = *v0;
  v139 = *(v0 + 8);
  v42 = *(v0 + 24);
  v127 = *(v0 + 16);
  v125 = v42;
  sub_237EF7720();
  sub_237EF7620();
  v43 = [v41 modelDescription];
  v44 = [v43 modelURL];

  sub_237EF5EB0();
  sub_237EF5E40();
  v130 = v45;
  v135 = v35;
  sub_237EF5DE0();
  sub_237EF5E90();
  v46 = *(v25 + 8);
  v46(v29, v23);
  sub_237EF5EC0();
  v134 = v46;
  v46(v32, v23);
  v47 = v131;
  v48 = v40;
  sub_237EF7270();
  (*(v132 + 104))(v47, *MEMORY[0x277D253B0], v133);
  sub_237EF7660();
  v49 = [v139 type];
  if (v49 != 5)
  {
    if (v49 == 2)
    {
      OUTLINED_FUNCTION_12_48();
      v50 = v128;
      sub_237EF6DA0();
      v51 = MEMORY[0x277D25128];
      goto LABEL_12;
    }

    type metadata accessor for SerializationError(0);
    v62 = sub_237CA2D6C();
    OUTLINED_FUNCTION_21_40(v62);
    OUTLINED_FUNCTION_1_19();
    goto LABEL_9;
  }

  v52 = v120;
  v53 = v121;
  v54 = v122;
  v55 = v123;
  v56 = [v139 multiArrayConstraint];
  if (!v56)
  {
    type metadata accessor for SerializationError(0);
    v66 = sub_237CA2D6C();
    OUTLINED_FUNCTION_21_40(v66);
    OUTLINED_FUNCTION_1_19();
    v65 = v67 + 2;
LABEL_9:
    *v63 = v65;
    v63[1] = v64;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_10;
  }

  v57 = v56;
  sub_237E5E63C(v57, v55);
  if (__swift_getEnumTagSinglePayload(v55, 1, v54) == 1)
  {
    sub_237C863A0(v55, &qword_27DEAF290, &qword_237F1A2D0);
    type metadata accessor for SerializationError(0);
    v58 = sub_237CA2D6C();
    OUTLINED_FUNCTION_21_40(v58);
    OUTLINED_FUNCTION_1_19();
    *v60 = v59 + 11;
    v60[1] = v61;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_10:
    v134(v135, v23);
    (*(v136 + 8))(v48, v137);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_48();

  v68 = *(v53 + 32);
  v69 = v52;
  v68(v52, v55, v54);
  v50 = v128;
  v68(v128, v69, v54);
  v51 = MEMORY[0x277D250A0];
LABEL_12:
  v70 = v129;
  (*(v138 + 104))(v50, *v51, v129);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
  v130 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v72 = *(v71 + 72);
  v123 = v73;
  *(swift_allocObject() + 16) = xmmword_237F03530;
  v74 = [v139 name];
  sub_237EF8590();

  (*(v138 + 16))(v124, v50, v70);
  sub_237EF7090();
  v75 = v118;
  sub_237EF76B0();
  v124 = v72;
  v139 = swift_allocObject();
  *(v139 + 1) = xmmword_237F04760;
  v76 = [v127 name];
  sub_237EF8590();

  v77 = v125;
  v78 = [v125 type];
  v79 = v126;
  sub_237E54838(v78);
  if (v79)
  {

    v80 = OUTLINED_FUNCTION_2_91();
    v81(v80);
    v82 = OUTLINED_FUNCTION_4_80();
    v83(v82);
    (*(v136 + 8))(v75, v137);
    *(v139 + 2) = 0;
  }

  else
  {
    sub_237EF7090();
    v84 = [v77 name];
    sub_237EF8590();

    v85 = [v77 type];
    sub_237E548C4(v85, v119);
    sub_237EF7090();
    v86 = v118;
    sub_237EF7700();
    v87 = [v77 name];
    sub_237EF8590();
    v139 = 0;

    v118 = v86;
    sub_237EF7600();
    v88 = [v127 name];
    sub_237EF8590();

    sub_237EF7640();
    v90 = v136;
    v89 = v137;
    v91 = *(v136 + 16);
    v92 = v117;
    v91(v117, v86, v137);
    v93 = v114;
    sub_237EF7810();
    v94 = type metadata accessor for CoreMLPackage(0);
    v95 = v113;
    v96 = v113 + *(v94 + 24);
    *(v96 + 80) = 0;
    *(v96 + 48) = 0u;
    *(v96 + 64) = 0u;
    *(v96 + 16) = 0u;
    *(v96 + 32) = 0u;
    *v96 = 0u;
    v91(v95, v92, v89);
    memcpy(v141, v96, 0x58uLL);
    sub_237C863A0(v141, &unk_27DEAD7B0, &unk_237F03CA0);
    *v96 = 0u;
    *(v96 + 16) = 0u;
    *(v96 + 32) = 0u;
    *(v96 + 48) = 0u;
    *(v96 + 64) = 0u;
    *(v96 + 80) = 0;
    v97 = v115;
    v98 = v93;
    v99 = v93;
    v100 = v116;
    (*(v115 + 16))(v95 + *(v94 + 20), v98, v116);
    v101 = sub_237E34060();
    v103 = v102;
    v131 = sub_237EF7780();
    v105 = v104;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v142 = *v105;
    sub_237C91098(v101, v103, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
    *v105 = v142;
    v131(&v140, 0);
    (*(v97 + 8))(v99, v100);
    v107 = *(v90 + 8);
    v108 = v137;
    v107(v117, v137);
    v109 = OUTLINED_FUNCTION_2_91();
    v110(v109);
    v111 = OUTLINED_FUNCTION_4_80();
    v112(v111);
    v107(v118, v108);
  }

LABEL_15:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E54838(uint64_t a1)
{
  if (a1 == 3)
  {
    return sub_237EF6E50();
  }

  if (a1 == 1)
  {
    return sub_237EF6E40();
  }

  v2 = type metadata accessor for SerializationError(0);
  v3 = sub_237CA2D6C();
  OUTLINED_FUNCTION_45_0(v2, v3);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_17_47(v4, v5);
  return swift_willThrow();
}

uint64_t sub_237E548C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 3)
  {
    sub_237EF6DB0();
    v3 = MEMORY[0x277D25130];
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    sub_237EF6D00();
    v3 = MEMORY[0x277D25118];
LABEL_5:
    v4 = *v3;
    v5 = sub_237EF6E60();
    return (*(*(v5 - 8) + 104))(a2, v4, v5);
  }

  v7 = type metadata accessor for SerializationError(0);
  v8 = sub_237CA2D6C();
  OUTLINED_FUNCTION_45_0(v7, v8);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_17_47(v9, v10);
  return swift_willThrow();
}

unint64_t MLModelClassifierAdaptor.Label.debugDescription.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    sub_237EF9330();

    OUTLINED_FUNCTION_20_5();
    v5 = 0xD000000000000019;
    v2 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v2);
  }

  else
  {
    v3 = v0[1];
    sub_237EF9330();

    OUTLINED_FUNCTION_20_5();
    v5 = 0xD000000000000018;
    MEMORY[0x2383E0710](v1, v3);
  }

  MEMORY[0x2383E0710](46, 0xE100000000000000);
  return v5;
}

uint64_t MLModelClassifierAdaptor.Label.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t MLModelClassifierAdaptor.Label.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_237E54B24(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E54BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E54C04(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_237E54C44(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_237E54C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_237E54D20()
{
  result = qword_27DEB4ED8;
  if (!qword_27DEB4ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB4ED0, &qword_237F1A2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4ED8);
  }

  return result;
}

uint64_t sub_237E54DA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4EE0, &unk_237F1A2E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_12_48()
{
  *(v3 - 392) = v0;
  *(v3 - 272) = v1;
  *(v3 - 264) = v2;
}

uint64_t OUTLINED_FUNCTION_16_48(uint64_t a1)
{

  return type metadata accessor for MLModelClassifierAdaptor.Label(a1, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_17_47@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = 0xD000000000000020;
  a2[1] = a3;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_18_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 96) = &a9;
  *(v11 - 88) = v9;
  *(v11 - 72) = v10;
}

__n128 sub_237E54F5C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = *a1;
  v8 = *(a1 + 16);
  *(a7 + 24) = *a1;
  *(a7 + 40) = v8;
  *(a7 + 8) = a4;
  *(a7 + 16) = a2;
  *a7 = a3;
  *(a7 + 56) = a5;
  *(a7 + 64) = a6;
  return result;
}

uint64_t sub_237E54F94(uint64_t a1, uint64_t a2)
{
  v6 = sub_237EF5BF0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[5];
  if (v11)
  {
    v46 = a1;
    v47 = v8;
    v12 = v2[1];
    v44 = *v2;
    v45 = a2;
    v42 = v2[2];
    v43 = v12;
    v14 = v2[6];
    v13 = v2[7];
    v15 = v2[8];

    v48 = sub_237E88538();
    v55 = v16;
    if (!v3)
    {
      v38 = v15;
      v39 = v13;
      v40 = v14;
      v41 = v11;
      sub_237EF5C30();
      swift_allocObject();
      sub_237EF5C20();
      (*(v47 + 104))(v10, *MEMORY[0x277CC86A8], v6);
      sub_237EF5C00();
      sub_237E4C030();
      v22 = v48;
      v23 = v55;
      sub_237EF5C10();
      memcpy(v51, v52, sizeof(v51));
      memcpy(v54, v52, sizeof(v54));
      sub_237D73A1C(v53);
      sub_237D6E9A0(v51);

      sub_237CBA6B8(v22, v23);
      v24 = *(v45 + 16);
      v25 = *(v45 + 24);
      v26 = v42;
      sub_237EF8260();
      v27 = v43;
      sub_237EF8260();
      v28 = v39;
      sub_237EF8260();
      v29 = v38;
      sub_237EF8260();
      sub_237E56D00(v26, v44, v27, v28, v29, v40, v53, v24, v50, v25);
      v30 = *(v46 + 24);
      v31 = *(v46 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v46, v30);
      v32 = *(v31 + 8);
      v34 = type metadata accessor for TreeClassifierModel.Storage(0, v24, v25, v33);
      WitnessTable = swift_getWitnessTable();
      v32(v50, v34, WitnessTable, v30, v31);
      memcpy(v49, v50, sizeof(v49));
      OUTLINED_FUNCTION_7_16();
      (*(v36 + 8))(v49, v34);
    }
  }

  else
  {
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v17 = swift_allocError();
    OUTLINED_FUNCTION_12_49(v17, v18);
    *(v19 + 16) = v20;
    *(v19 + 24) = 0x8000000237F00860;
    *(v19 + 32) = 5;
    return swift_willThrow();
  }
}

void *sub_237E55314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = sub_237EF85C0();
  OUTLINED_FUNCTION_1();
  v84 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237C66728(a1, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D98, &qword_237F19E20);
  type metadata accessor for EstimatorPackageDecoder(0);
  if (!swift_dynamicCast())
  {
    v27 = sub_237EF93E0();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    v29 = v28;
    sub_237EF93D0();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84168], v27);
    return swift_willThrow();
  }

  v61 = a4;
  v62 = v9;

  v15 = type metadata accessor for TreeClassifierModel.Storage(0, a2, a3, v14);
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v17);
  v18 = *(v16 + 8);
  WitnessTable = swift_getWitnessTable();
  result = v18(v67, v15, v15, WitnessTable, v17, v16);
  if (v4)
  {
    return result;
  }

  sub_237E55974();
  v82[0] = v75;
  v82[1] = v76;
  v82[2] = v77;
  v83 = v78;
  sub_237D74FBC(v82, v66);
  sub_237D7360C(v82, v79);
  memcpy(v80, v79, sizeof(v80));
  if (sub_237E52394(v80) == 1)
  {
    v21 = v83;
    OUTLINED_FUNCTION_8_75();
    (*(*(v15 - 8) + 8))(v66, v15);
    v22 = sub_237EF93E0();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    v24 = v23;
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237F00970);
    v63 = v21;
    v25 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v25);

    MEMORY[0x2383E0710](0xD00000000000001ELL, 0x8000000237F00A80);
    v63 = 1;
    v26 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v26);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    sub_237EF93D0();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84168], v22);
    return swift_willThrow();
  }

  memcpy(v81, v80, sizeof(v81));
  sub_237D6E010();
  sub_237EF85B0();
  v30 = sub_237EF85A0();
  v32 = v31;

  result = (*(v84 + 8))(v13, v62);
  if (v32 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v33 = v15;
    sub_237E582A4(v79);
    type metadata accessor for XGBooster();
    swift_allocObject();
    v34 = sub_237E88668(0, 0);
    v35 = OUTLINED_FUNCTION_6_68();
    sub_237E88474(v35, v36);
    v84 = v30;
    v37 = 0;
    v38 = v71;
    v39 = v72;
    v40 = v68;
    v41 = *(v71 + 16);
    v42 = (v68 + 56);
    v43 = *(v68 + 16) + 1;
    while (--v43)
    {
      v44 = *v42;
      v45 = *(v42 - 1);
      v42 += 32;
      if (v44 >= 4)
      {
        v46 = 1;
      }

      else
      {
        v46 = v45;
      }

      v47 = __OFADD__(v37, v46);
      v37 += v46;
      if (v47)
      {
        __break(1u);
        break;
      }
    }

    v48 = v73;
    if (v74)
    {
      v48 = 0;
    }

    v62 = v48;
    v59 = v41;
    v60 = v69;
    v58 = v70;
    OUTLINED_FUNCTION_8_75();
    OUTLINED_FUNCTION_7_16();
    v50 = *(v49 + 8);
    v56[1] = v49 + 8;
    v57 = v50;
    v51 = v33;
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();

    v52 = v58;
    sub_237EF8260();
    v57(v66, v51);
    v53 = v61;
    v61[4] = v37;
    v53[5] = v34;
    v55 = v59;
    v54 = v60;
    v53[2] = v40;
    v53[3] = v55;
    *v53 = v54;
    v53[1] = v52;
    v53[6] = v62;
    v53[7] = v38;
    v53[8] = v39;
    sub_237E523AC(v84, v32);
  }

  return result;
}