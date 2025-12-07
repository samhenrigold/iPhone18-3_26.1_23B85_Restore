unint64_t sub_2314E40A8()
{
  result = qword_27DD5B490;
  if (!qword_27DD5B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B490);
  }

  return result;
}

void *sub_2314E40FC(uint64_t a1)
{

  v2 = sub_231571404(v1);
  v31 = sub_231572E78();
  v3 = MEMORY[0x277D84F90];
  v4 = sub_2315860F4();
  v5 = sub_231566740(v2);
  if (v5)
  {
    v6 = v5;
    sub_23152D698(0, v5 & ~(v5 >> 63), 0);
    if (v6 < 0)
    {
      goto LABEL_30;
    }

    v7 = 0;
    v8 = v3;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x231930660](v7, v2);
      }

      else
      {
      }

      v9 = sub_2314B6020();
      v10 = static PriorDistributionUtils.computeDirichlet(frequencies:bandwidth:)(v9, 864000.0);

      v12 = *(v3 + 16);
      v11 = *(v3 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_23152D698(v11 > 1, v12 + 1, 1);
      }

      ++v7;
      *(v3 + 16) = v12 + 1;
      *(v3 + 8 * v12 + 32) = v10;
    }

    while (v6 != v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v13 = static PriorDistributionUtils.normalize(scores:)(v8);

  v30 = *(v13 + 16);
  if (!v30)
  {
LABEL_25:

    return v4;
  }

  v14 = 0;
  v15 = (v31 + 40);
  while (v14 < *(v13 + 16))
  {
    if (v14 >= *(v31 + 16))
    {
      goto LABEL_27;
    }

    v16 = *(v13 + 32 + 8 * v14);
    v18 = *(v15 - 1);
    v17 = *v15;

    swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_23149C888(v18, v17);
    if (__OFADD__(v4[2], (v20 & 1) == 0))
    {
      goto LABEL_28;
    }

    v21 = v19;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
    if (sub_231586A64())
    {
      v23 = sub_23149C888(v18, v17);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_31;
      }

      v21 = v23;
    }

    if (v22)
    {

      *(v4[7] + 8 * v21) = v16;
    }

    else
    {
      v4[(v21 >> 6) + 8] |= 1 << v21;
      v25 = (v4[6] + 16 * v21);
      *v25 = v18;
      v25[1] = v17;
      *(v4[7] + 8 * v21) = v16;
      v26 = v4[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_29;
      }

      v4[2] = v28;
    }

    ++v14;
    v15 += 2;
    if (v30 == v14)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_231586C84();
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for DisambiguationDonationFields(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2314E4554(uint64_t a1, uint64_t a2)
{
  v2 = sub_231586B04();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2314E45A0(char a1)
{
  result = 0xD000000000000019;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2314E4640@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2314E4554(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2314E4670@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2314E45A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2314E46A0()
{
  result = qword_27DD5B498;
  if (!qword_27DD5B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B498);
  }

  return result;
}

uint64_t sub_2314E46F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A0, &qword_23158A530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v33 - v5;
  v7 = sub_231585E34();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = v33 - v12;
  v15 = *a1;
  v14 = a1[1];
  v16 = sub_231585AF4();
  sub_231566A14(v15, v14, v16, v6);

  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_2314E49B4(v6);
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    v18 = OUTLINED_FUNCTION_4_2();
    v20 = v19(v18);
    if (v20 == *MEMORY[0x277D60008])
    {
      v21 = OUTLINED_FUNCTION_4_2();
      v22(v21);
      v33[3] = *v11;
      v23 = sub_231586C24();
      v25 = v24;
      result = (*(v8 + 8))(v13, v7);
      *a2 = v23;
      a2[1] = v25;
    }

    else
    {
      v26 = v20;
      v27 = *MEMORY[0x277D60010];
      v28 = *(v8 + 8);
      v28(v13, v7);
      if (v26 == v27)
      {
        v29 = OUTLINED_FUNCTION_4_2();
        result = v30(v29);
        v31 = v11[1];
        *a2 = *v11;
        a2[1] = v31;
      }

      else
      {
        *a2 = 0;
        a2[1] = 0;
        v32 = OUTLINED_FUNCTION_4_2();
        return (v28)(v32);
      }
    }
  }

  return result;
}

uint64_t sub_2314E49B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A0, &qword_23158A530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2314E4A30(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  while (v5)
  {
    v22 = MEMORY[0x277D84F90];
    sub_23152D7F4(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    v6 = 0;
    v7 = v22;
    v8 = (v3 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v8) = 1;
    }

    v9 = 4 << v8;
    v10 = v3 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v10 = v4;
    }

    v19 = v3;
    v20 = v10;
    v11 = 15;
    v18 = v9;
    while (1)
    {
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v12 = v11;
      if ((v11 & 0xC) == v9)
      {
        v12 = sub_2314E4F1C(v11, v3, a2);
      }

      v13 = v12 >> 16;
      if (v12 >> 16 >= v20)
      {
        goto LABEL_35;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v15 = sub_2315862E4();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v21[0] = v3;
        v21[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v15 = *(v21 + v13);
      }

      else
      {
        v14 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v3 & 0x1000000000000000) == 0)
        {
          v14 = sub_2315869B4();
        }

        v15 = *(v14 + v13);
      }

      v22 = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_23152D7F4(v16 > 1, v17 + 1, 1);
        v7 = v22;
      }

      *(v7 + 16) = v17 + 1;
      *(v7 + 4 * v17 + 32) = v15;
      v9 = v18;
      v3 = v19;
      if ((v11 & 0xC) == v18)
      {
        v11 = sub_2314E4F1C(v11, v19, a2);
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        if (v20 <= v11 >> 16)
        {
          goto LABEL_36;
        }

        v11 = sub_2315862C4();
      }

      else
      {
        v11 = (v11 & 0xFFFFFFFFFFFF0000) + 65540;
      }

      ++v6;
      if (v4 == v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v5 = sub_2315862B4();
  }
}

uint64_t DJB2Hash.hexString.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A8, &unk_23158E4B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  OUTLINED_FUNCTION_0_23(v0, MEMORY[0x277D84CC0]);

  return sub_2315861D4();
}

uint64_t DJB2Hash.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A8, &unk_23158E4B0);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84CC0];
  *(v0 + 16) = xmmword_231588340;
  OUTLINED_FUNCTION_0_23(v0, v1);
  v2 = sub_2315861D4();
  MEMORY[0x23192FF80](v2);

  return 30768;
}

uint64_t DJB2Hash.init(_:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_2_13();
    }

    while (!v3);
  }

  *a2 = 5381;
  return result;
}

uint64_t DJB2Hash.init(_:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int *a3@<X8>)
{
  sub_2314E4A30(a1, a2);
  v5 = v4;

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    v8 = 5381;
    do
    {
      v9 = *v7++;
      v8 = 33 * v8 + v9;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = 5381;
  }

  *a3 = v8;
  return result;
}

uint64_t DJB2Hash.init(_:)@<X0>(_DWORD *a1@<X8>, unint64_t a2@<X0>)
{
  sub_2314E4E9C(a2);
  if (*(v3 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_2_13();
    }

    while (!v4);
  }

  *a1 = 5381;
  return result;
}

double sub_2314E4E9C(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4B0, &qword_23158A5B8);
  v3 = swift_allocObject();
  *&result = 2;
  *(v3 + 16) = xmmword_231588FE0;
  *(v3 + 32) = v2;
  *(v3 + 36) = v1;
  return result;
}

uint64_t sub_2314E4F1C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_2315862F4();
    OUTLINED_FUNCTION_1_14(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x23192FFB0](15, a1 >> 16);
    OUTLINED_FUNCTION_1_14(v3);
    return v4 | 8;
  }
}

uint64_t sub_2314E4F90()
{
  result = sub_231586964();
  qword_27DD5B4B8 = result;
  unk_27DD5B4C0 = v1;
  return result;
}

uint64_t static DomainAffinityScoreSignal.signalName.getter()
{
  if (qword_27DD5AD80 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_27DD5AD80);
  }

  v0 = qword_27DD5B4B8;

  return v0;
}

unint64_t DomainAffinityScoreSignal.id.getter()
{
  type metadata accessor for DomainAffinityScoreSignal(0);
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5AD80 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_27DD5AD80);
  }

  MEMORY[0x23192FF80](qword_27DD5B4B8, unk_27DD5B4C0);
  return v1;
}

uint64_t type metadata accessor for DomainAffinityScoreSignal(uint64_t a1)
{
  result = qword_280D6CD68;
  if (!qword_280D6CD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DomainAffinityScoreSignal.instances()()
{
  type metadata accessor for SignalDefinitionParametersProvider.Builder();
  swift_initStackObject();
  SignalDefinitionParametersProvider.Builder.init()();
  sub_2315393D4(&unk_2846103D0);

  sub_23149A740(__src);

  memcpy(__dst, __src, sizeof(__dst));
  v0 = sub_2314E6358(__dst);
  sub_2314A0D7C(__dst);
  return v0;
}

uint64_t static DomainAffinityScoreSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314E6868(v3, v1, v2);
}

uint64_t static DomainAffinityScoreSignal.instances(useCases:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = OUTLINED_FUNCTION_19(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v20[-1] - v4;
  v6 = sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v20[3] = &type metadata for SignalComputationContext;
  v20[4] = &protocol witness table for SignalComputationContext;
  v13 = swift_allocObject();
  v20[0] = v13;
  *(v13 + 16) = MEMORY[0x277D84F90];
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = a1;
  v14 = qword_280D6FD68;
  swift_bridgeObjectRetain_n();

  if (v14 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v20, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2314A2910(v5, &qword_27DD5B008, &unk_23158A5C0);
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = (*(v8 + 32))(v12, v5, v6);
    if (a1)
    {
      v17 = a1;
    }

    else
    {
      v17 = &unk_2846103D0;
    }

    MEMORY[0x28223BE20](v16);
    *(&v19 - 2) = v12;

    v15 = sub_2314DCD00(sub_2314E6B00, (&v19 - 4), v17);

    (*(v8 + 8))(v12, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);

  swift_bridgeObjectRelease_n();

  return v15;
}

uint64_t static DomainAffinityScoreSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314E65E0(v3);
}

uint64_t sub_2314E54A4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for DomainAffinityScoreSignal(0);
  a3[3] = v6;
  a3[4] = &protocol witness table for DomainAffinityScoreSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = sub_231585D34();
  result = (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a2, v8);
  *(boxed_opaque_existential_1 + *(v6 + 20)) = v5;
  return result;
}

uint64_t static DomainAffinityScoreSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_2846119C8);
  *a1 = result;
  return result;
}

uint64_t DomainAffinityScoreSignal.value(completion:)(void (*a1)(uint64_t *), uint64_t a2)
{
  v67 = a2;
  v68 = a1;
  v3 = type metadata accessor for DomainAffinityScoreSignal(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v66 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v8 = OUTLINED_FUNCTION_19(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v61 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v12 = OUTLINED_FUNCTION_19(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11_0();
  v64 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  v18 = sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v61 - v26;
  v28 = *(v20 + 16);
  v28(&v61 - v26, v2, v18);
  v61 = v3;
  v29 = *(v2 + *(v3 + 20));
  sub_231585AE4();
  OUTLINED_FUNCTION_7_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  v65 = v2;
  v34 = DomainAffinityScoreSignal.id.getter();
  v62 = v35;
  v63 = v34;
  v28(v24, v27, v18);
  LOBYTE(v70) = v29;
  v36 = DomainUseCase.intentTypes.getter();
  if (v29 <= 0xD)
  {
    if (((1 << v29) & 0xA95) != 0)
    {
      v37 = MEMORY[0x277D5FFC0];
LABEL_6:
      v38 = *v37;
      v39 = sub_231585D74();
      OUTLINED_FUNCTION_8();
      (*(v40 + 104))(v10, v38, v39);
      v41 = v10;
      v42 = 0;
      v43 = 1;
      v44 = v39;
      goto LABEL_7;
    }

    if (((1 << v29) & 0x3060) != 0)
    {
      v37 = MEMORY[0x277D5FFB8];
      goto LABEL_6;
    }
  }

  sub_231585D74();
  OUTLINED_FUNCTION_7_1();
LABEL_7:
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  if (v29 - 1 > 0xA)
  {
    v45 = 2;
  }

  else
  {
    v45 = byte_23158A61C[(v29 - 1)];
  }

  v46 = v64;
  sub_2314A68F8(v17, v64);
  v47 = sub_2314A0DE8(v24, v36, v10, v45, v46, v63, v62, MEMORY[0x277D84F90], 0);
  v49 = v48;
  sub_2314A2910(v17, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v20 + 8))(v27, v18);
  v50 = sub_2314BB35C(v47, v49);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v51 = sub_231585FF4();
  __swift_project_value_buffer(v51, qword_280D72248);
  v52 = v66;
  sub_2314E6B1C(v65, v66);

  v53 = sub_231585FE4();
  v54 = sub_2315865D4();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v55 = 136315394;
    v69 = *(v52 + *(v61 + 20));
    v56 = DomainUseCase.rawValue.getter();
    OUTLINED_FUNCTION_8_11(v56, v57);
    if (qword_27DD5AD80 != -1)
    {
      OUTLINED_FUNCTION_0_24(&qword_27DD5AD80);
    }

    MEMORY[0x23192FF80](qword_27DD5B4B8, unk_27DD5B4C0);
    sub_2314E6B80(v52);
    v58 = sub_2314A22E8();

    *(v55 + 4) = v58;
    *(v55 + 12) = 2080;
    sub_2315860E4();
    v59 = sub_2314A22E8();

    *(v55 + 14) = v59;
    _os_log_impl(&dword_231496000, v53, v54, "%s value: %s", v55, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314E6B80(v52);
  }

  v70 = v50;
  LOBYTE(v71) = 3;
  v68(&v70);
  return sub_2314A5EEC(v70, v71);
}

uint64_t DomainAffinityScoreSignal.valueForApps(bundleIDs:completion:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v81 = a3;
  v82 = a2;
  v5 = type metadata accessor for DomainAffinityScoreSignal(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v80 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v10 = OUTLINED_FUNCTION_19(v9);
  MEMORY[0x28223BE20](v10);
  v79 = &v70 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v13 = OUTLINED_FUNCTION_19(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11_0();
  v76 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v70 - v17;
  v19 = sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v83 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v70 - v26;
  v71 = v5;
  v28 = *(v5 + 20);
  LODWORD(v78) = *(v3 + v28);
  v90 = 0xD000000000000013;
  v91 = 0x8000000231591960;
  v87 = &v90;
  v29 = sub_2314E62A8(sub_2314BB954, v86, a1);
  v90 = 0xD000000000000017;
  v91 = 0x800000023158F940;
  v85 = &v90;
  v30 = sub_2314E62A8(sub_2314BB974, v84, a1);
  v31 = v29 && (v78 - 7) < 7;
  if (!(v31 | !v30))
  {
    v31 = v78 < 7;
  }

  v73 = v31;
  v32 = *(v83 + 16);
  v32(v27, v3, v19);
  v33 = *(v3 + v28);
  sub_231585AE4();
  v77 = v18;
  OUTLINED_FUNCTION_7_1();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  v75 = v3;
  v38 = DomainAffinityScoreSignal.id.getter();
  v72 = v39;
  v74 = v24;
  v78 = v19;
  v32(v24, v27, v19);
  LOBYTE(v90) = v33;
  v40 = DomainUseCase.intentTypes.getter();
  if (v33 > 0xD)
  {
    goto LABEL_19;
  }

  if (((1 << v33) & 0xA95) != 0)
  {
    v41 = v38;
    v42 = *MEMORY[0x277D5FFC0];
    v43 = sub_231585D74();
    OUTLINED_FUNCTION_8();
    v45 = v79;
    (*(v44 + 104))(v79, v42, v43);
    v46 = v45;
    v47 = 0;
    v48 = 1;
    v49 = v43;
    goto LABEL_8;
  }

  if (((1 << v33) & 0x3060) != 0)
  {
    v41 = v38;
    v50 = *MEMORY[0x277D5FFB8];
    v51 = sub_231585D74();
    OUTLINED_FUNCTION_8();
    v45 = v79;
    (*(v52 + 104))(v79, v50, v51);
    v46 = v45;
    v47 = 0;
    v48 = 1;
    v49 = v51;
  }

  else
  {
LABEL_19:
    v41 = v38;
    sub_231585D74();
    v45 = v79;
    OUTLINED_FUNCTION_7_1();
  }

LABEL_8:
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  if (v33 - 1 > 0xA)
  {
    v53 = 2;
  }

  else
  {
    v53 = byte_23158A61C[(v33 - 1)];
  }

  v54 = v80;
  v55 = v76;
  v56 = v77;
  sub_2314A68F8(v77, v76);

  v57 = sub_2314A0DE8(v74, v40, v45, v53, v55, v41, v72, a1, v73);
  v59 = v58;
  sub_2314A2910(v56, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v83 + 8))(v27, v78);
  v60 = sub_2314BB35C(v57, v59);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v61 = sub_231585FF4();
  __swift_project_value_buffer(v61, qword_280D72248);
  sub_2314E6B1C(v75, v54);

  v62 = sub_231585FE4();
  v63 = sub_2315865D4();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v64 = 136315394;
    v88 = *(v54 + *(v71 + 20));
    v65 = DomainUseCase.rawValue.getter();
    OUTLINED_FUNCTION_8_11(v65, v66);
    if (qword_27DD5AD80 != -1)
    {
      OUTLINED_FUNCTION_0_24(&qword_27DD5AD80);
    }

    MEMORY[0x23192FF80](qword_27DD5B4B8, unk_27DD5B4C0);
    sub_2314E6B80(v54);
    v67 = sub_2314A22E8();

    *(v64 + 4) = v67;
    *(v64 + 12) = 2080;
    sub_2315860E4();
    v68 = sub_2314A22E8();

    *(v64 + 14) = v68;
    _os_log_impl(&dword_231496000, v62, v63, "%s value: %s", v64, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314E6B80(v54);
  }

  v90 = v60;
  LOBYTE(v91) = 3;
  v82(&v90);
  return sub_2314A5EEC(v90, v91);
}

uint64_t sub_2314E6200(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314E6868(v3, v1, v2);
}

uint64_t sub_2314E6264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_231586C44() & 1;
  }
}

BOOL sub_2314E62A8(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = (a1)(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2314E6358(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3 - 8];
  v5 = sub_231585D34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16[3] = &type metadata for SignalDefinitionParametersProvider;
  v16[4] = &protocol witness table for SignalDefinitionParametersProvider;
  v16[0] = swift_allocObject();
  memcpy((v16[0] + 16), a1, 0x50uLL);
  sub_2314E6CA4(a1, v15);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v16, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2314A2910(v4, &qword_27DD5B008, &unk_23158A5C0);
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v10 = a1[3];
    v11 = (*(v6 + 32))(v8, v4, v5);
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &unk_2846103D0;
    }

    MEMORY[0x28223BE20](v11);
    *(&v14 - 2) = v8;

    v9 = sub_2314DCD00(sub_2314E6D00, (&v14 - 4), v12);

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v9;
}

uint64_t sub_2314E65E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17[-v3 - 8];
  v5 = sub_231585D34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v18[3] = &type metadata for SignalComputationContext;
  v18[4] = &protocol witness table for SignalComputationContext;
  v9 = swift_allocObject();
  v18[0] = v9;
  v10 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v10;
  v9[3] = *(a1 + 32);
  sub_2314B5008(a1, v17);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v18, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2314A2910(v4, &qword_27DD5B008, &unk_23158A5C0);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = *(a1 + 40);
    v13 = (*(v6 + 32))(v8, v4, v5);
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &unk_2846103D0;
    }

    MEMORY[0x28223BE20](v13);
    *(&v16 - 2) = v8;

    v11 = sub_2314DCD00(sub_2314E6D00, (&v16 - 4), v14);

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v11;
}

uint64_t sub_2314E6868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19[-1] - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[3] = a2;
  v19[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v19, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314A2910(v8, &qword_27DD5B008, &unk_23158A5C0);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v15 = (*(a3 + 24))(a2, a3);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = &unk_2846103D0;
    }

    MEMORY[0x28223BE20](v15);
    *(&v18 - 2) = v12;
    v14 = sub_2314DCD00(sub_2314E6D00, (&v18 - 4), v16);

    (*(v10 + 8))(v12, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v14;
}

uint64_t sub_2314E6B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainAffinityScoreSignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314E6B80(uint64_t a1)
{
  v2 = type metadata accessor for DomainAffinityScoreSignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314E6C30(uint64_t a1)
{
  result = sub_231585D34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2314E6D2C()
{
  result = sub_231586964();
  qword_27DD5B4D8 = result;
  unk_27DD5B4E0 = v1;
  return result;
}

uint64_t static DomainDefaultAppSignal.signalName.getter()
{
  if (qword_27DD5AD88 != -1)
  {
    OUTLINED_FUNCTION_0_25(&qword_27DD5AD88);
  }

  v0 = qword_27DD5B4D8;

  return v0;
}

uint64_t DomainDefaultAppSignal.id.getter()
{
  if (qword_27DD5AD88 != -1)
  {
    OUTLINED_FUNCTION_0_25(&qword_27DD5AD88);
  }

  v0 = qword_27DD5B4D8;

  return v0;
}

uint64_t static DomainDefaultAppSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314E7434(v3, v1, v2);
}

uint64_t static DomainDefaultAppSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_2846119F0);
  *a1 = result;
  return result;
}

uint64_t DomainDefaultAppSignal.value(completion:)(uint64_t (*a1)(uint64_t *))
{
  v3 = *v1;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v4 = 3;
  }

  else
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      goto LABEL_12;
    }

    v4 = 4;
  }

  v5 = sub_2314E08C8(v4);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v9 = sub_231585FF4();
    __swift_project_value_buffer(v9, qword_280D72248);
    v10 = v3;

    v11 = sub_231585FE4();
    v12 = sub_2315865D4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v13 = 136315394;
      if (qword_27DD5AD88 != -1)
      {
        OUTLINED_FUNCTION_0_25(&qword_27DD5AD88);
      }

      v14 = sub_2314A22E8();

      *(v13 + 4) = v14;
      *(v13 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4E8, &qword_23158A630);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_231588340;
      *(inited + 32) = v7;
      *(inited + 40) = v8;
      *(inited + 48) = 1;

      v27 = sub_2315860F4();
      LOBYTE(v28) = 1;
      SignalValue.description.getter();
      sub_2314A5EEC(v27, 1u);
      v16 = sub_2314A22E8();

      *(v13 + 14) = v16;
      _os_log_impl(&dword_231496000, v11, v12, "%s value: %s", v13, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4E8, &qword_23158A630);
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_231588340;
    *(v26 + 32) = v7;
    *(v26 + 40) = v8;
    *(v26 + 48) = 1;
    v27 = sub_2315860F4();
    LOBYTE(v28) = 1;
    a1(&v27);
    return sub_2314A5EEC(v27, v28);
  }

LABEL_12:
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v17 = sub_231585FF4();
  __swift_project_value_buffer(v17, qword_280D72248);
  v18 = v3;

  v19 = sub_231585FE4();
  v20 = sub_2315865D4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v21 = 136315394;
    if (qword_27DD5AD88 != -1)
    {
      OUTLINED_FUNCTION_0_25(&qword_27DD5AD88);
    }

    v22 = sub_2314A22E8();

    *(v21 + 4) = v22;
    *(v21 + 12) = 2080;
    sub_231586954();

    v27 = 0xD000000000000015;
    v28 = 0x80000002315919A0;
    v23 = sub_231586C24();
    MEMORY[0x23192FF80](v23);

    MEMORY[0x23192FF80](62, 0xE100000000000000);
    v24 = sub_2314A22E8();

    *(v21 + 14) = v24;
    _os_log_impl(&dword_231496000, v19, v20, "%s value: %s", v21, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v27 = -1;
  LOBYTE(v28) = 0;
  return a1(&v27);
}

uint64_t sub_2314E73D4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314E7434(v3, v1, v2);
}

uint64_t sub_2314E7434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(a3 + 48))(a2, a3);
  if (v8)
  {
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_231588340;
    type metadata accessor for DefaultAppProvider();
    v11 = swift_allocObject();
    *(v10 + 56) = &type metadata for DomainDefaultAppSignal;
    *(v10 + 64) = &protocol witness table for DomainDefaultAppSignal;
    *(v10 + 32) = v9;
    *(v10 + 40) = v11;
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v12 = sub_231585FF4();
    __swift_project_value_buffer(v12, qword_280D72248);
    v13 = sub_231585FE4();
    v14 = sub_2315865E4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136315138;
      v19[0] = &type metadata for DomainDefaultAppSignal;
      v19[1] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4F0, &qword_23158A6A8);
      sub_231586204();
      v17 = sub_2314A22E8();

      *(v15 + 4) = v17;
      _os_log_impl(&dword_231496000, v13, v14, "%s no intent given", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x231931280](v16, -1, -1);
      MEMORY[0x231931280](v15, -1, -1);
    }

    v10 = MEMORY[0x277D84F90];
  }

  (*(v5 + 8))(v7, a2);
  return v10;
}

uint64_t sub_2314E76F4(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (1)
  {
    v6 = 0xE200000000000000;
    v7 = 27954;
    switch(*(v5 + v4))
    {
      case 1:
        v6 = 0xE300000000000000;
        v7 = 7155761;
        break;
      case 2:
        v7 = 26673;
        break;
      case 3:
        v7 = 26678;
        break;
      case 4:
        v7 = 25649;
        break;
      case 5:
        v7 = 25655;
        break;
      case 6:
        v6 = 0xE300000000000000;
        v7 = 6567986;
        break;
      case 7:
        v6 = 0xE300000000000000;
        v7 = 6712937;
        break;
      default:
        break;
    }

    v8 = 0xE200000000000000;
    v9 = 27954;
    switch(a1)
    {
      case 1:
        v8 = 0xE300000000000000;
        v9 = 7155761;
        break;
      case 2:
        v9 = 26673;
        break;
      case 3:
        v9 = 26678;
        break;
      case 4:
        v9 = 25649;
        break;
      case 5:
        v9 = 25655;
        break;
      case 6:
        v8 = 0xE300000000000000;
        v9 = 6567986;
        break;
      case 7:
        v8 = 0xE300000000000000;
        v9 = 6712937;
        break;
      default:
        break;
    }

    if (v7 == v9 && v6 == v8)
    {
      break;
    }

    v11 = sub_231586C44();

    if (v11)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_2314E78B4()
{
  result = sub_231586964();
  qword_280D6D2E8 = result;
  unk_280D6D2F0 = v1;
  return result;
}

uint64_t DomainFrequencySignal.id.getter()
{
  v3[8] = 0;
  *v3 = *(v0 + *(type metadata accessor for DomainFrequencySignal(0) + 20));
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](v1);

  OUTLINED_FUNCTION_7_10();
  if (qword_280D6D2E0 != -1)
  {
    OUTLINED_FUNCTION_0_26(&qword_280D6D2E0);
  }

  MEMORY[0x23192FF80](qword_280D6D2E8, unk_280D6D2F0);
  OUTLINED_FUNCTION_7_10();
  sub_231586A54();
  return *&v3[1];
}

uint64_t static DomainFrequencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314E8C84(v3, v1, v2);
}

uint64_t static DomainFrequencySignal.instances(useCases:)(uint64_t a1)
{
  type metadata accessor for SignalDefinitionParametersProvider.Builder();
  swift_initStackObject();
  SignalDefinitionParametersProvider.Builder.init()();
  sub_2315393D4(a1);

  sub_23149A740(__src);

  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_2314E879C(__dst);
  sub_2314A0D7C(__dst);
  return v2;
}

uint64_t static DomainFrequencySignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314E8A24(v3);
}

uint64_t sub_2314E7AE0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = type metadata accessor for DomainFrequencySignal(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v19 = *a1;
  v24 = MEMORY[0x277D84F90];
  sub_23152D5B8(0, 8, 0);
  v9 = v24;
  v10 = sub_231585D34();
  v11 = 0;
  v12 = *(*(v10 - 8) + 16);
  do
  {
    v13 = byte_28460FCD0[v11 + 32];
    v12(v8, a2, v10);
    *(v8 + *(v4 + 20)) = v19;
    *(v8 + *(v4 + 24)) = v13;
    v24 = v9;
    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_23152D5B8(v14 > 1, v15 + 1, 1);
      v9 = v24;
    }

    ++v11;
    v22 = v4;
    v23 = &protocol witness table for DomainFrequencySignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
    sub_2314E8F1C(v8, boxed_opaque_existential_1);
    *(v9 + 16) = v15 + 1;
    sub_23149FD3C(&v21, v9 + 40 * v15 + 32);
    result = sub_2314E8F80(v8);
  }

  while (v11 != 8);
  *a3 = v9;
  return result;
}

uint64_t static DomainFrequencySignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611A18);
  *a1 = result;
  return result;
}

uint64_t DomainFrequencySignal.value(completion:)(void (*a1)(uint64_t *), uint64_t a2)
{
  v79 = a2;
  v80 = a1;
  v3 = type metadata accessor for DomainFrequencySignal(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v78 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v11 = OUTLINED_FUNCTION_19(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v71 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v15 = OUTLINED_FUNCTION_19(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11_0();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v71 - v20;
  v22 = sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_11_0();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v71 - v30;
  v32 = sub_2314E76F4(*(v2 + *(v3 + 24)), byte_28460FCD0);
  if (v33)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v34 = sub_231585FF4();
    __swift_project_value_buffer(v34, qword_280D72248);
    sub_2314E8F1C(v2, v7);
    v35 = sub_231585FE4();
    v36 = sub_2315865E4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_12(v38, 4.8149e-34);
      v81 = *(v7 + *(v3 + 20));
      v39 = DomainUseCase.rawValue.getter();
      MEMORY[0x23192FF80](v39);

      OUTLINED_FUNCTION_7_10();
      if (qword_280D6D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_26(&qword_280D6D2E0);
      }

      MEMORY[0x23192FF80](qword_280D6D2E8, unk_280D6D2F0);
      OUTLINED_FUNCTION_7_10();
      v81 = *(v7 + *(v3 + 24));
      sub_231586A54();
      sub_2314E8F80(v7);
      v40 = sub_2314A22E8();

      *(v37 + 4) = v40;
      _os_log_impl(&dword_231496000, v35, v36, "Unsupported time bucket range received %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    else
    {

      sub_2314E8F80(v7);
    }

    v82 = sub_2315860F4();
    goto LABEL_26;
  }

  v75 = v32;
  v76 = v24;
  v41 = *(v24 + 16);
  v41(v31, v2, v22);
  v72 = v3;
  v42 = *(v2 + *(v3 + 20));
  v43 = sub_231585AE4();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v43);
  v77 = v2;
  v44 = DomainFrequencySignal.id.getter();
  v73 = v45;
  v74 = v44;
  v41(v28, v31, v22);
  LOBYTE(v82) = v42;
  v46 = DomainUseCase.intentTypes.getter();
  if (v42 > 0xD)
  {
    goto LABEL_27;
  }

  if (((1 << v42) & 0xA95) == 0)
  {
    if (((1 << v42) & 0x3060) != 0)
    {
      v53 = *MEMORY[0x277D5FFB8];
      v54 = sub_231585D74();
      OUTLINED_FUNCTION_8();
      (*(v55 + 104))(v13, v53, v54);
      v50 = v13;
      v51 = 0;
      v52 = v54;
      goto LABEL_15;
    }

LABEL_27:
    v52 = sub_231585D74();
    v50 = v13;
    v51 = 1;
    goto LABEL_15;
  }

  v47 = *MEMORY[0x277D5FFC0];
  v48 = sub_231585D74();
  OUTLINED_FUNCTION_8();
  (*(v49 + 104))(v13, v47, v48);
  v50 = v13;
  v51 = 0;
  v52 = v48;
LABEL_15:
  __swift_storeEnumTagSinglePayload(v50, v51, 1, v52);
  v56 = v76;
  if (v42 - 1 > 0xA)
  {
    v57 = 2;
  }

  else
  {
    v57 = byte_23158A712[(v42 - 1)];
  }

  sub_2314A68F8(v21, v18);
  v58 = sub_2314A0DE8(v28, v46, v13, v57, v18, v74, v73, MEMORY[0x277D84F90], 0);
  sub_2314A2910(v21, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v56 + 8))(v31, v22);
  v59 = sub_23156D02C(v75, v58);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v60 = sub_231585FF4();
  __swift_project_value_buffer(v60, qword_280D72248);
  v61 = v78;
  sub_2314E8F1C(v77, v78);

  v62 = sub_231585FE4();
  v63 = sub_2315865D4();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_12(v65, 4.8151e-34);
    v66 = v72;
    v81 = *(v61 + *(v72 + 20));
    v67 = DomainUseCase.rawValue.getter();
    MEMORY[0x23192FF80](v67);

    OUTLINED_FUNCTION_7_10();
    if (qword_280D6D2E0 != -1)
    {
      OUTLINED_FUNCTION_0_26(&qword_280D6D2E0);
    }

    MEMORY[0x23192FF80](qword_280D6D2E8, unk_280D6D2F0);
    OUTLINED_FUNCTION_7_10();
    v81 = *(v61 + *(v66 + 24));
    sub_231586A54();
    sub_2314E8F80(v61);
    v68 = sub_2314A22E8();

    *(v64 + 4) = v68;
    *(v64 + 12) = 2080;
    sub_2315860E4();
    v69 = sub_2314A22E8();

    *(v64 + 14) = v69;
    _os_log_impl(&dword_231496000, v62, v63, "%s value: %s", v64, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314E8F80(v61);
  }

  v82 = v59;
LABEL_26:
  LOBYTE(v83) = 1;
  v80(&v82);
  return sub_2314A5EEC(v82, v83);
}

uint64_t sub_2314E84F8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314E8C84(v3, v1, v2);
}

uint64_t type metadata accessor for DomainFrequencySignal(uint64_t a1)
{
  result = qword_280D6D2D0;
  if (!qword_280D6D2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s11SiriSignals21DomainFrequencySignalV9instancesSayAA0E9Providing_pGyFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v1 = OUTLINED_FUNCTION_19(v0);
  MEMORY[0x28223BE20](v1);
  v3 = &v16[-1] - v2;
  v4 = sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v16[3] = &type metadata for NoParameters;
  v16[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  sub_2315144B0(v16, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2314A2910(v3, &qword_27DD5B008, &unk_23158A5C0);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = (*(v6 + 32))(v10, v3, v4);
    MEMORY[0x28223BE20](v12);
    *(&v15 - 2) = v10;
    sub_231543A1C(sub_2314E90A4, (&v15 - 4), &unk_2846102A0);
    v11 = v13;
    (*(v6 + 8))(v10, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v11;
}

uint64_t sub_2314E879C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16[-v3 - 8];
  v5 = sub_231585D34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v17[3] = &type metadata for SignalDefinitionParametersProvider;
  v17[4] = &protocol witness table for SignalDefinitionParametersProvider;
  v17[0] = swift_allocObject();
  memcpy((v17[0] + 16), a1, 0x50uLL);
  sub_2314E6CA4(a1, v16);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v17, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2314A2910(v4, &qword_27DD5B008, &unk_23158A5C0);
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v10 = a1[3];
    v11 = (*(v6 + 32))(v8, v4, v5);
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &unk_2846102A0;
    }

    MEMORY[0x28223BE20](v11);
    *(&v15 - 2) = v8;

    sub_231543A1C(sub_2314E90A4, (&v15 - 4), v12);
    v9 = v13;

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v9;
}

uint64_t sub_2314E8A24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = OUTLINED_FUNCTION_19(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v22[-v4 - 8];
  v6 = sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v23[3] = &type metadata for SignalComputationContext;
  v23[4] = &protocol witness table for SignalComputationContext;
  v13 = swift_allocObject();
  v23[0] = v13;
  v14 = *(a1 + 16);
  v13[1] = *a1;
  v13[2] = v14;
  v13[3] = *(a1 + 32);
  sub_2314B5008(a1, v22);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  sub_2315144B0(v23, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2314A2910(v5, &qword_27DD5B008, &unk_23158A5C0);
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = *(a1 + 40);
    v17 = (*(v8 + 32))(v12, v5, v6);
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = &unk_2846102A0;
    }

    MEMORY[0x28223BE20](v17);
    *(&v21 - 2) = v12;

    sub_231543A1C(sub_2314E9088, (&v21 - 4), v18);
    v15 = v19;

    (*(v8 + 8))(v12, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v15;
}

uint64_t sub_2314E8C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20[-1] - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[3] = a2;
  v20[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v20, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314A2910(v8, &qword_27DD5B008, &unk_23158A5C0);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v15 = (*(a3 + 24))(a2, a3);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = &unk_2846102A0;
    }

    MEMORY[0x28223BE20](v15);
    *(&v19 - 2) = v12;
    sub_231543A1C(sub_2314E90A4, (&v19 - 4), v16);
    v14 = v17;

    (*(v10 + 8))(v12, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v14;
}

uint64_t sub_2314E8F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainFrequencySignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314E8F80(uint64_t a1)
{
  v2 = type metadata accessor for DomainFrequencySignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314E9004(uint64_t a1)
{
  result = sub_231585D34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2314E90D0()
{
  result = sub_231586964();
  qword_280D6CEF0 = result;
  unk_280D6CEF8 = v1;
  return result;
}

unint64_t DomainRecencyRankSignal.id.getter()
{
  type metadata accessor for DomainRecencyRankSignal(0);
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_280D6CEE8 != -1)
  {
    OUTLINED_FUNCTION_0_27(&qword_280D6CEE8);
  }

  MEMORY[0x23192FF80](qword_280D6CEF0, unk_280D6CEF8);
  return v1;
}

uint64_t type metadata accessor for DomainRecencyRankSignal(uint64_t a1)
{
  result = qword_280D6CED8;
  if (!qword_280D6CED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DomainRecencyRankSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314E9FD0(v3, v1, v2);
}

uint64_t static DomainRecencyRankSignal.instances(useCases:)(uint64_t a1)
{
  type metadata accessor for SignalDefinitionParametersProvider.Builder();
  swift_initStackObject();
  SignalDefinitionParametersProvider.Builder.init()();
  sub_2315393D4(a1);

  sub_23149A740(__src);

  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_2314E9B14(__dst);
  sub_2314A0D7C(__dst);
  return v2;
}

uint64_t static DomainRecencyRankSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314E9D8C(v3);
}

uint64_t sub_2314E92F0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for DomainRecencyRankSignal(0);
  a3[3] = v6;
  a3[4] = &protocol witness table for DomainRecencyRankSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  sub_231585D34();
  OUTLINED_FUNCTION_8();
  result = (*(v8 + 16))(boxed_opaque_existential_1, a2);
  *(boxed_opaque_existential_1 + *(v6 + 20)) = v5;
  return result;
}

uint64_t static DomainRecencyRankSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611A40);
  *a1 = result;
  return result;
}

uint64_t DomainRecencyRankSignal.value(completion:)(void (*a1)(unint64_t *), uint64_t a2)
{
  v4 = v2;
  v45 = a2;
  v46 = a1;
  v5 = type metadata accessor for DomainRecencyRankSignal(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  OUTLINED_FUNCTION_19(v7);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  OUTLINED_FUNCTION_19(v11);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v2);
  v19 = *(v5 + 20);
  LOBYTE(v48) = *(v2 + v19);
  v20 = DomainUseCase.intentTypes.getter();
  v21 = *(v2 + v19);
  if (v21 <= 0xD)
  {
    v22 = 1 << v21;
    if ((v22 & 0xA95) != 0)
    {
      v23 = MEMORY[0x277D5FFC0];
LABEL_6:
      v24 = *v23;
      v25 = sub_231585D74();
      OUTLINED_FUNCTION_8();
      (*(v26 + 104))(v14, v24, v25);
      v27 = v14;
      v28 = 0;
      v29 = v25;
      goto LABEL_7;
    }

    if ((v22 & 0x3060) != 0)
    {
      v23 = MEMORY[0x277D5FFB8];
      goto LABEL_6;
    }
  }

  v29 = sub_231585D74();
  v27 = v14;
  v28 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v27, v28, 1, v29);
  if (*(v4 + v19) - 1 >= 0xB)
  {
    v30 = 2;
  }

  else
  {
    v30 = byte_23158A772[(*(v4 + v19) - 1)];
  }

  v31 = sub_231585AE4();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v31);
  v32 = DomainRecencyRankSignal.id.getter();
  v34 = sub_2314A0DE8(v17, v20, v14, v30, v10, v32, v33, MEMORY[0x277D84F90], 0);
  v35 = sub_23156D520(v34);

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v36 = sub_231585FF4();
  __swift_project_value_buffer(v36, qword_280D72248);
  sub_2314EA258(v4, v3);

  v37 = sub_231585FE4();
  v38 = sub_2315865D4();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v50 = v40;
    *v39 = 136315394;
    v47 = *(v3 + *(v5 + 20));
    v48 = DomainUseCase.rawValue.getter();
    v49 = v41;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_280D6CEE8 != -1)
    {
      OUTLINED_FUNCTION_0_27(&qword_280D6CEE8);
    }

    MEMORY[0x23192FF80](qword_280D6CEF0, unk_280D6CEF8);
    sub_2314EA2BC(v3);
    v42 = sub_2314A22E8();

    *(v39 + 4) = v42;
    *(v39 + 12) = 2080;
    sub_2315860E4();
    v43 = sub_2314A22E8();

    *(v39 + 14) = v43;
    _os_log_impl(&dword_231496000, v37, v38, "%s value: %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231931280](v40, -1, -1);
    MEMORY[0x231931280](v39, -1, -1);
  }

  else
  {

    sub_2314EA2BC(v3);
  }

  v48 = v35;
  LOBYTE(v49) = 1;
  v46(&v48);
  return sub_2314A5EEC(v48, v49);
}

uint64_t sub_2314E98D8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314E9FD0(v3, v1, v2);
}

uint64_t _s11SiriSignals23DomainRecencyRankSignalV9instancesSayAA0F9Providing_pGyFZ_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  OUTLINED_FUNCTION_19(v1);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v2);
  v4 = &v13[-1] - v3;
  v5 = sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v13[3] = &type metadata for NoParameters;
  v13[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  sub_2315144B0(v13, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2314B5064(v4);
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v10 = (*(v7 + 32))(v0, v4, v5);
    MEMORY[0x28223BE20](v10);
    *(&v12 - 2) = v0;
    v9 = sub_23150466C(sub_2314EA360, (&v12 - 4), &unk_284610350);
    (*(v7 + 8))(v0, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

uint64_t sub_2314E9B14(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3 - 8];
  v5 = sub_231585D34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16[3] = &type metadata for SignalDefinitionParametersProvider;
  v16[4] = &protocol witness table for SignalDefinitionParametersProvider;
  v16[0] = swift_allocObject();
  memcpy((v16[0] + 16), a1, 0x50uLL);
  sub_2314E6CA4(a1, v15);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v16, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2314B5064(v4);
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v10 = a1[3];
    v11 = (*(v6 + 32))(v8, v4, v5);
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &unk_284610350;
    }

    MEMORY[0x28223BE20](v11);
    *(&v14 - 2) = v8;

    v9 = sub_23150466C(sub_2314EA360, (&v14 - 4), v12);

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v9;
}

uint64_t sub_2314E9D8C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  OUTLINED_FUNCTION_19(v3);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v4);
  v6 = &v19[-v5 - 8];
  v7 = sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v20[3] = &type metadata for SignalComputationContext;
  v20[4] = &protocol witness table for SignalComputationContext;
  v11 = swift_allocObject();
  v20[0] = v11;
  v12 = *(a1 + 16);
  v11[1] = *a1;
  v11[2] = v12;
  v11[3] = *(a1 + 32);
  sub_2314B5008(a1, v19);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  sub_2315144B0(v20, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2314B5064(v6);
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = *(a1 + 40);
    v15 = (*(v9 + 32))(v1, v6, v7);
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &unk_284610350;
    }

    MEMORY[0x28223BE20](v15);
    *(&v18 - 2) = v1;

    v13 = sub_23150466C(sub_2314EA340, (&v18 - 4), v16);

    (*(v9 + 8))(v1, v7);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v13;
}

uint64_t sub_2314E9FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19[-1] - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[3] = a2;
  v19[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v19, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314B5064(v8);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v15 = (*(a3 + 24))(a2, a3);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = &unk_284610350;
    }

    MEMORY[0x28223BE20](v15);
    *(&v18 - 2) = v12;
    v14 = sub_23150466C(sub_2314EA360, (&v18 - 4), v16);

    (*(v10 + 8))(v12, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v14;
}

uint64_t sub_2314EA258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainRecencyRankSignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314EA2BC(uint64_t a1)
{
  v2 = type metadata accessor for DomainRecencyRankSignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314EA38C()
{
  result = sub_231586964();
  qword_280D6D6B8 = result;
  unk_280D6D6C0 = v1;
  return result;
}

uint64_t static DomainRecencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EB190(v3, v1, v2);
}

uint64_t static DomainRecencySignal.instances(useCases:)(uint64_t a1)
{
  type metadata accessor for SignalDefinitionParametersProvider.Builder();
  swift_initStackObject();
  SignalDefinitionParametersProvider.Builder.init()();
  sub_2315393D4(a1);

  sub_23149A740(__src);

  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_2314EACA8(__dst);
  memcpy(v6, __src, sizeof(v6));
  sub_2314A0D7C(v6);
  return v2;
}

uint64_t static DomainRecencySignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314EAF30(v3);
}

uint64_t sub_2314EA4E4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for DomainRecencySignal(0);
  a3[3] = v6;
  a3[4] = &protocol witness table for DomainRecencySignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  sub_231585D34();
  OUTLINED_FUNCTION_8();
  result = (*(v8 + 16))(boxed_opaque_existential_1, a2);
  *(boxed_opaque_existential_1 + *(v6 + 20)) = v5;
  v10 = (boxed_opaque_existential_1 + *(v6 + 24));
  *v10 = sub_2314E03E4;
  v10[1] = 0;
  return result;
}

uint64_t static DomainRecencySignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611A68);
  *a1 = result;
  return result;
}

void DomainRecencySignal.derive(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v2 + *(type metadata accessor for DomainRecencySignal(0) + 24);
  v7 = *v6;
  v8 = *(v6 + 8);
  switch(v5)
  {
    case 1:
      swift_retain_n();
      sub_2314EA928(v4, v7, v8);
      v38 = v37;

      *a2 = v38;
      goto LABEL_36;
    case 2:
      v11 = OUTLINED_FUNCTION_6_1(*&v4);
      if (!(v13 ^ v14 | v12))
      {
        goto LABEL_42;
      }

      if (v11 <= -9.22337204e18)
      {
        goto LABEL_43;
      }

      if (v11 >= 9.22337204e18)
      {
        goto LABEL_44;
      }

      v15 = v11;
      if ((v11 & 0x8000000000000000) == 0)
      {

        v17 = v7(v16);

        if (v17 < v15)
        {
          v15 = -1;
        }

        else
        {
          v15 = v17 - v15;
        }
      }

      *a2 = v15;
      goto LABEL_36;
    case 3:
      v40 = *v6;
      v39 = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      v18 = sub_231586AC4();
      v19 = v4;
      OUTLINED_FUNCTION_1_15();
      v21 = v20 >> 6;
      v42 = v22 + 64;
      swift_retain_n();
      v23 = 0;
      v41 = v4;
      if (a2)
      {
        goto LABEL_17;
      }

      break;
    default:
      if ((v4 & 0x8000000000000000) == 0)
      {

        v10 = v7(v9);

        if (v10 < v4)
        {
          v4 = -1;
        }

        else
        {
          v4 = v10 - v4;
        }
      }

      *a2 = v4;
      goto LABEL_36;
  }

LABEL_18:
  v25 = v23;
  do
  {
    v23 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v23 >= v21)
    {

      LOBYTE(v5) = v39;
      *a2 = v18;
LABEL_36:
      *(a2 + 8) = v5;
      return;
    }

    ++v25;
  }

  while (!*(v19 + 8 * v23));
  OUTLINED_FUNCTION_9_8();
  while (1)
  {
    v26 = v24 | (v23 << 6);
    v27 = OUTLINED_FUNCTION_6_1(*(*(v4 + 56) + 8 * v26));
    if (!(v13 ^ v14 | v12))
    {
      break;
    }

    if (v27 <= -9.22337204e18)
    {
      goto LABEL_39;
    }

    if (v27 >= 9.22337204e18)
    {
      goto LABEL_40;
    }

    v28 = (*(v4 + 48) + 16 * v26);
    v29 = *v28;
    v30 = v28[1];
    v31 = v27;

    if ((v31 & 0x8000000000000000) == 0)
    {
      v33 = v40(v32);
      if (v33 < v31)
      {
        v31 = -1;
      }

      else
      {
        v31 = v33 - v31;
      }
    }

    *(v42 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v34 = (v18[6] + 16 * v26);
    *v34 = v29;
    v34[1] = v30;
    *(v18[7] + 8 * v26) = v31;
    v35 = v18[2];
    v14 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v14)
    {
      goto LABEL_41;
    }

    v18[2] = v36;
    v4 = v41;
    if (!a2)
    {
      goto LABEL_18;
    }

LABEL_17:
    OUTLINED_FUNCTION_7_11();
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_2314EA8CC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EB190(v3, v1, v2);
}

void sub_2314EA928(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B188, &unk_231588590);
  v5 = sub_231586AC4();
  OUTLINED_FUNCTION_1_15();
  v7 = v6 >> 6;
  v24 = v8 + 64;

  v9 = 0;
  if (v3)
  {
    while (1)
    {
      OUTLINED_FUNCTION_7_11();
LABEL_8:
      v12 = v10 | (v9 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      if ((v16 & 0x8000000000000000) == 0)
      {
        v18 = a2(v17);
        if (v18 < v16)
        {
          v16 = -1;
        }

        else
        {
          v16 = v18 - v16;
        }
      }

      *(v24 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v19 = (v5[6] + 16 * v12);
      *v19 = v15;
      v19[1] = v14;
      *(v5[7] + 8 * v12) = v16;
      v20 = v5[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v5[2] = v22;
      if (!v3)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v9;
    while (1)
    {
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return;
      }

      ++v11;
      if (*(a1 + 8 * v9))
      {
        OUTLINED_FUNCTION_9_8();
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t _s11SiriSignals19DomainRecencySignalV9instancesSayAA0E9Providing_pGyFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v1 = OUTLINED_FUNCTION_19(v0);
  MEMORY[0x28223BE20](v1);
  v3 = &v15[-1] - v2;
  v4 = sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v15[3] = &type metadata for NoParameters;
  v15[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  sub_2315144B0(v15, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2314A2910(v3, &qword_27DD5B008, &unk_23158A5C0);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = (*(v6 + 32))(v10, v3, v4);
    MEMORY[0x28223BE20](v12);
    *(&v14 - 2) = v10;
    v11 = sub_23150466C(sub_2314EB4F4, (&v14 - 4), &unk_2846101F8);
    (*(v6 + 8))(v10, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v11;
}

uint64_t sub_2314EACA8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3 - 8];
  v5 = sub_231585D34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16[3] = &type metadata for SignalDefinitionParametersProvider;
  v16[4] = &protocol witness table for SignalDefinitionParametersProvider;
  v16[0] = swift_allocObject();
  memcpy((v16[0] + 16), a1, 0x50uLL);
  sub_2314E6CA4(a1, v15);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v16, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2314A2910(v4, &qword_27DD5B008, &unk_23158A5C0);
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v10 = a1[3];
    v11 = (*(v6 + 32))(v8, v4, v5);
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &unk_2846101F8;
    }

    MEMORY[0x28223BE20](v11);
    *(&v14 - 2) = v8;

    v9 = sub_23150466C(sub_2314EB4F4, (&v14 - 4), v12);

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v9;
}

uint64_t sub_2314EAF30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = OUTLINED_FUNCTION_19(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v21[-v4 - 8];
  v6 = sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v22[3] = &type metadata for SignalComputationContext;
  v22[4] = &protocol witness table for SignalComputationContext;
  v13 = swift_allocObject();
  v22[0] = v13;
  v14 = *(a1 + 16);
  v13[1] = *a1;
  v13[2] = v14;
  v13[3] = *(a1 + 32);
  sub_2314B5008(a1, v21);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  sub_2315144B0(v22, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2314A2910(v5, &qword_27DD5B008, &unk_23158A5C0);
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = *(a1 + 40);
    v17 = (*(v8 + 32))(v12, v5, v6);
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = &unk_2846101F8;
    }

    MEMORY[0x28223BE20](v17);
    *(&v20 - 2) = v12;

    v15 = sub_23150466C(sub_2314EB4D4, (&v20 - 4), v18);

    (*(v8 + 8))(v12, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v15;
}

uint64_t sub_2314EB190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19[-1] - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[3] = a2;
  v19[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v19, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314A2910(v8, &qword_27DD5B008, &unk_23158A5C0);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v15 = (*(a3 + 24))(a2, a3);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = &unk_2846101F8;
    }

    MEMORY[0x28223BE20](v15);
    *(&v18 - 2) = v12;
    v14 = sub_23150466C(sub_2314EB4F4, (&v18 - 4), v16);

    (*(v10 + 8))(v12, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v14;
}

uint64_t sub_2314EB450(uint64_t a1)
{
  result = sub_231585D34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2314EB520()
{
  result = sub_231586964();
  qword_27DD5B4F8 = result;
  qword_27DD5B500 = v1;
  return result;
}

uint64_t static DomainRequestByHandleSignal.signalName.getter()
{
  if (qword_27DD5AD98 != -1)
  {
    OUTLINED_FUNCTION_0_29(&qword_27DD5AD98);
  }

  v0 = qword_27DD5B4F8;

  return v0;
}

uint64_t DomainRequestByHandleSignal.id.getter()
{
  if (qword_27DD5AD98 != -1)
  {
    OUTLINED_FUNCTION_0_29(&qword_27DD5AD98);
  }

  v0 = qword_27DD5B4F8;

  return v0;
}

uint64_t static DomainRequestByHandleSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EB8B4(v3, v1, v2);
}

uint64_t static DomainRequestByHandleSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611A90);
  *a1 = result;
  return result;
}

uint64_t DomainRequestByHandleSignal.value(completion:)(uint64_t (*a1)(void **))
{
  v3 = *v1;
  v4 = INIntent.isRequestByHandleType()();
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v5 = sub_231585FF4();
  __swift_project_value_buffer(v5, qword_280D72248);
  v6 = v3;
  v7 = sub_231585FE4();
  v8 = sub_2315865D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315394;
    if (qword_27DD5AD98 != -1)
    {
      OUTLINED_FUNCTION_0_29(&qword_27DD5AD98);
    }

    v11 = sub_2314A22E8();

    *(v9 + 4) = v11;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v4;
    _os_log_impl(&dword_231496000, v7, v8, "%s value: %ld", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x231931280](v10, -1, -1);
    MEMORY[0x231931280](v9, -1, -1);
  }

  v13 = v4;
  v14 = 0;
  return a1(&v13);
}

uint64_t sub_2314EB854(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EB8B4(v3, v1, v2);
}

uint64_t sub_2314EB8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(a3 + 48))(a2, a3);
  if (v8)
  {
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_231588340;
    *(v10 + 56) = &type metadata for DomainRequestByHandleSignal;
    *(v10 + 64) = &protocol witness table for DomainRequestByHandleSignal;
    *(v10 + 32) = v9;
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v11 = sub_231585FF4();
    __swift_project_value_buffer(v11, qword_280D72248);
    v12 = sub_231585FE4();
    v13 = sub_2315865E4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136315138;
      v18[0] = &type metadata for DomainRequestByHandleSignal;
      v18[1] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B508, &unk_23158A850);
      sub_231586204();
      v16 = sub_2314A22E8();

      *(v14 + 4) = v16;
      _os_log_impl(&dword_231496000, v12, v13, "%s no intent given", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x231931280](v15, -1, -1);
      MEMORY[0x231931280](v14, -1, -1);
    }

    v10 = MEMORY[0x277D84F90];
  }

  (*(v5 + 8))(v7, a2);
  return v10;
}

uint64_t sub_2314EBB5C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2314EBB9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2314EBBFC()
{
  result = sub_231586964();
  qword_27DD5B510 = result;
  *algn_27DD5B518 = v1;
  return result;
}

uint64_t static DomainRequestByLabelSignal.signalName.getter()
{
  if (qword_27DD5ADA0 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_27DD5ADA0);
  }

  v0 = qword_27DD5B510;

  return v0;
}

uint64_t DomainRequestByLabelSignal.id.getter()
{
  if (qword_27DD5ADA0 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_27DD5ADA0);
  }

  v0 = qword_27DD5B510;

  return v0;
}

uint64_t static DomainRequestByLabelSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EBF90(v3, v1, v2);
}

uint64_t static DomainRequestByLabelSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611AB8);
  *a1 = result;
  return result;
}

uint64_t DomainRequestByLabelSignal.value(completion:)(uint64_t (*a1)(void **))
{
  v3 = *v1;
  v4 = INIntent.isRequestByContactLabel()();
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v5 = sub_231585FF4();
  __swift_project_value_buffer(v5, qword_280D72248);
  v6 = v3;
  v7 = sub_231585FE4();
  v8 = sub_2315865D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315394;
    if (qword_27DD5ADA0 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_27DD5ADA0);
    }

    v11 = sub_2314A22E8();

    *(v9 + 4) = v11;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v4;
    _os_log_impl(&dword_231496000, v7, v8, "%s value: %ld", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x231931280](v10, -1, -1);
    MEMORY[0x231931280](v9, -1, -1);
  }

  v13 = v4;
  v14 = 0;
  return a1(&v13);
}

uint64_t sub_2314EBF30(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EBF90(v3, v1, v2);
}

uint64_t sub_2314EBF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(a3 + 48))(a2, a3);
  if (v8)
  {
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_231588340;
    *(v10 + 56) = &type metadata for DomainRequestByLabelSignal;
    *(v10 + 64) = &protocol witness table for DomainRequestByLabelSignal;
    *(v10 + 32) = v9;
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v11 = sub_231585FF4();
    __swift_project_value_buffer(v11, qword_280D72248);
    v12 = sub_231585FE4();
    v13 = sub_2315865E4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136315138;
      v18[0] = &type metadata for DomainRequestByLabelSignal;
      v18[1] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B520, &unk_23158A8D0);
      sub_231586204();
      v16 = sub_2314A22E8();

      *(v14 + 4) = v16;
      _os_log_impl(&dword_231496000, v12, v13, "%s no intent given", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x231931280](v15, -1, -1);
      MEMORY[0x231931280](v14, -1, -1);
    }

    v10 = MEMORY[0x277D84F90];
  }

  (*(v5 + 8))(v7, a2);
  return v10;
}

uint64_t sub_2314EC250()
{
  result = sub_231586964();
  qword_280D6CB20 = result;
  *algn_280D6CB28 = v1;
  return result;
}

uint64_t static DomainTaskAbandonmentSignal.signalName.getter()
{
  if (qword_280D6CB18 != -1)
  {
    OUTLINED_FUNCTION_0_31(&qword_280D6CB18);
  }

  v0 = qword_280D6CB20;

  return v0;
}

uint64_t DomainTaskAbandonmentSignal.id.getter()
{
  v3[8] = 0;
  *v3 = *(v0 + 9);
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](v1);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_280D6CB18 != -1)
  {
    OUTLINED_FUNCTION_0_31(&qword_280D6CB18);
  }

  MEMORY[0x23192FF80](qword_280D6CB20, *algn_280D6CB28);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  return *&v3[1];
}

char *static DomainTaskAbandonmentSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EDCB8(v3, v1, v2);
}

uint64_t static DomainTaskAbandonmentSignal.instances(useCases:)(uint64_t a1)
{
  v4 = MEMORY[0x277D84F90];
  v5 = 0u;
  v6 = 0u;
  v7 = a1;

  sub_2314EDACC(&v4);
  v2 = v1;
  sub_2314C1D18(&v4);
  return v2;
}

void static DomainTaskAbandonmentSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v2[0] = *a1;
  v2[1] = v1;
  v2[2] = a1[2];
  sub_2314EDACC(v2);
}

uint64_t static DomainTaskAbandonmentSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611B30);
  *a1 = result;
  return result;
}

void DomainTaskAbandonmentSignal.value(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 9);
  v8 = swift_allocObject();
  type metadata accessor for Aggregation();
  *(v8 + 16) = sub_2315860F4();
  v9 = [v5 publisher];
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 33) = v7;
  *(v10 + 40) = a1;
  *(v10 + 48) = a2;
  v21 = sub_2314EDF68;
  v22 = v10;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_2314B901C;
  v20 = &block_descriptor_6;
  v11 = _Block_copy(&v17);

  v12 = v5;

  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v6;
  *(v13 + 25) = v7;
  *(v13 + 32) = v8;
  v21 = sub_2314EDF78;
  v22 = v13;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_2314B8374;
  v20 = &block_descriptor_11;
  v14 = _Block_copy(&v17);

  v15 = v12;

  v16 = [v9 sinkWithCompletion:v11 receiveInput:v14];
  _Block_release(v14);
  _Block_release(v11);
}

uint64_t sub_2314EC714(uint64_t a1, uint64_t a2, void *a3, int a4, void (*a5)(uint64_t *))
{
  swift_beginAccess();
  v9 = *(a2 + 16);

  v10 = sub_2314D7854(a4, v9);

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v11 = sub_231585FF4();
  __swift_project_value_buffer(v11, qword_280D72248);
  v12 = a3;

  v13 = sub_231585FE4();
  v14 = sub_2315865D4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 136315394;
    v21 = 0;
    v22 = 0xE000000000000000;
    v23 = v16;
    v17 = DomainUseCase.rawValue.getter();
    MEMORY[0x23192FF80](v17);

    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_280D6CB18 != -1)
    {
      swift_once();
    }

    MEMORY[0x23192FF80](qword_280D6CB20, *algn_280D6CB28);
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    sub_231586A54();
    v18 = sub_2314A22E8();

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    sub_2315860E4();
    v19 = sub_2314A22E8();

    *(v15 + 14) = v19;
    _os_log_impl(&dword_231496000, v13, v14, "%s value: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231931280](v16, -1, -1);
    MEMORY[0x231931280](v15, -1, -1);
  }

  v21 = v10;
  LOBYTE(v22) = 1;
  a5(&v21);
  return sub_2314A5EEC(v21, v22);
}

void sub_2314ECA00(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = MEMORY[0x231930B10]();
  v7 = [a1 eventBody];
  swift_beginAccess();
  sub_2314ECAB0(v7, (a4 + 16));
  swift_endAccess();

  objc_autoreleasePoolPop(v6);
}

void sub_2314ECAB0(void *a1, uint64_t *a2)
{
  v5 = sub_231585884();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = *(v2 + 9);
  v41 = a1;
  v12 = sub_2314ED8D8(v41, &selRef_appPattern);
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = v12;
  v15 = v13;
  v16 = [v41 engagementUnderstandingFeatures];
  if (!v16)
  {

LABEL_28:

    return;
  }

  v40 = v16;
  v17 = sub_2314ED8D8(v41, &selRef_taskType);
  if (!v18)
  {

    v21 = v40;
LABEL_24:

    return;
  }

  v19 = 0xD000000000000023;
  if (v11 == 7)
  {
    v20 = "all.StartCallIntent";
    v19 = 0xD000000000000029;
    goto LABEL_11;
  }

  if (v11)
  {

    goto LABEL_28;
  }

  v20 = "";
LABEL_11:
  v38 = a2;
  v39 = v14;
  if (v17 == v19 && v18 == (v20 | 0x8000000000000000))
  {
  }

  else
  {
    v23 = sub_231586C44();

    if ((v23 & 1) == 0)
    {
LABEL_22:

      goto LABEL_23;
    }
  }

  v42 = v9;
  v43 = v10;
  v44 = v11;
  if (!sub_2314ECF3C(v40))
  {
    goto LABEL_22;
  }

  v42 = v9;
  v43 = v10;
  v44 = v11;
  v24 = [v41 pseEvents];
  sub_2314A207C(0, &qword_27DD5B528, 0x277CF1550);
  v25 = sub_231586384();

  LOBYTE(v24) = sub_2314ECFA0(v25, v39, v15);

  if ((v24 & 1) == 0)
  {
    goto LABEL_22;
  }

  v42 = v9;
  v43 = v10;
  v44 = v11;
  v26 = [v41 pseEvents];
  v27 = sub_231586384();

  sub_2314ED0E0(v27);
  v29 = v28;

  if (v29)
  {

LABEL_23:
    v21 = v41;
    goto LABEL_24;
  }

  v30 = v38;
  v31 = v39;
  v32 = *v38;
  if (*(*v38 + 16) && (v33 = sub_23149C888(v39, v15), (v34 & 1) != 0))
  {
    v35 = *(*(v32 + 56) + 8 * v33);
  }

  else
  {
    sub_2314B676C();
    v36 = sub_2315860F4();
    type metadata accessor for Aggregation();
    swift_allocObject();
    v35 = sub_2314B53E8(v36);
  }

  sub_231585774();
  sub_2314B56E8();
  (*(v6 + 8))(v8, v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v30;
  sub_2315760F4(v35, v31, v15, isUniquelyReferenced_nonNull_native);

  *v30 = v42;
}

uint64_t sub_2314ECFA0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_231586864())
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x231930660](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6 & 1) != 0 && (sub_2314ED1C8(v7))
      {

        return 1;
      }

      sub_2314ED54C(v8, a2, a3);
      v6 = v10;

      ++v5;
      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void sub_2314ED0E0(uint64_t a1)
{
  v2 = sub_2314A7080(a1);
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x231930660](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    if ([v4 hasDonatedTimestamp])
    {
      [v5 donatedTimestamp];

      return;
    }
  }
}

uint64_t sub_2314ED1C8(void *a1)
{
  v2 = a1;
  v3 = *(v1 + 9);
  v4 = [a1 pseContents];
  sub_2314A207C(0, &qword_27DD5B530, 0x277CF1558);
  v5 = sub_231586384();

  result = sub_2314A7080(v5);
  if (result)
  {
    v7 = result;
    if (result >= 1)
    {
      v38 = v2;
      v8 = 0;
      v40 = 0;
      v9 = 0;
      v10 = 0xEE00656D614E6570;
      v11 = 0xED00006972695379;
      v41 = v5 & 0xC000000000000001;
      v39 = v5;
      while (1)
      {
        if (v41)
        {
          v12 = MEMORY[0x231930660](v9, v5);
        }

        else
        {
          v12 = *(v5 + 8 * v9 + 32);
        }

        v13 = v12;
        v14 = sub_2314ED8D8(v12, &selRef_key);
        if (v15)
        {
          if (v14 == 0x7954746E65746E69 && v15 == v10)
          {

LABEL_15:
            v18 = sub_2314ED8D8(v13, &selRef_value);
            if (v3 == 7)
            {
              v20 = 0xD000000000000029;
              v21 = "all.StartCallIntent";
LABEL_19:
              if (!v19)
              {
                goto LABEL_26;
              }

              if (v18 != v20 || v19 != (v21 | 0x8000000000000000))
              {
                v23 = v7;
                v24 = v8;
                v25 = v11;
                v26 = v3;
                v27 = v10;
                v28 = sub_231586C44();

                v40 |= v28;
                v10 = v27;
                v3 = v26;
                v11 = v25;
                v8 = v24;
                v7 = v23;
                v5 = v39;
                goto LABEL_29;
              }
            }

            else
            {
              if (!v3)
              {
                v20 = 0xD000000000000023;
                v21 = "";
                goto LABEL_19;
              }

              if (v19)
              {
LABEL_26:

                goto LABEL_29;
              }
            }

            v40 = 1;
            goto LABEL_29;
          }

          v17 = sub_231586C44();

          if (v17)
          {
            goto LABEL_15;
          }
        }

LABEL_29:
        v29 = sub_2314ED8D8(v13, &selRef_key);
        if (!v30)
        {
          goto LABEL_44;
        }

        if (v29 == 0x42646574616E6F64 && v30 == v11)
        {
        }

        else
        {
          v32 = sub_231586C44();

          if ((v32 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        v33 = sub_2314ED8D8(v13, &selRef_value);
        if (!v34)
        {
LABEL_44:

          goto LABEL_47;
        }

        if (v33 == 0x65736C6166 && v34 == 0xE500000000000000)
        {
        }

        else
        {
          v36 = sub_231586C44();

          if ((v36 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        v8 = 1;
LABEL_47:
        if (v7 == ++v9)
        {

          v37 = v40 & v8;
          v2 = v38;
          return [v2 isPostSiriEngagement] & v37;
        }
      }
    }

    __break(1u);
  }

  else
  {

    v37 = 0;
    return [v2 isPostSiriEngagement] & v37;
  }

  return result;
}

void sub_2314ED54C(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2314ED8D8(a1, &selRef_domain);
  if (v7)
  {
    if (v6 == 0x74756F68636E7550 && v7 == 0xE800000000000000)
    {
    }

    else
    {
      v9 = sub_231586C44();

      if ((v9 & 1) == 0)
      {
        return;
      }
    }

    if ([a1 isPostSiriEngagement])
    {
      v10 = [a1 pseContents];
      sub_2314A207C(0, &qword_27DD5B530, 0x277CF1558);
      v11 = sub_231586384();

      v12 = sub_2314A7080(v11);
      if (v12)
      {
        v13 = v12;
        v24 = a2;
        v14 = 0;
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x231930660](v14, v11);
          }

          else
          {
            if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v15 = *(v11 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          v18 = sub_2314ED8D8(v15, &selRef_key);
          if (v19)
          {
            if (v18 == 0x6449656C646E7562 && v19 == 0xE800000000000000)
            {

LABEL_27:

              v22 = sub_2314ED8D8(v16, &selRef_value);
              sub_2314ED7BC(v24, a3, v22, v23);

              return;
            }

            v21 = sub_231586C44();

            if (v21)
            {
              goto LABEL_27;
            }
          }

          ++v14;
          if (v17 == v13)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
      }

      else
      {
LABEL_24:
      }
    }
  }
}

uint64_t sub_2314ED7BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 && (v5 == a1 ? (v9 = v6 == a2) : (v9 = 0), !v9))
  {
    v10 = sub_231586C44() ^ 1;
  }

  else
  {
LABEL_18:
    v10 = 0;
  }

  return v10 & 1;
}

char *sub_2314ED878(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EDCB8(v3, v1, v2);
}

uint64_t sub_2314ED8D8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2315861A4();

  return v4;
}

uint64_t _s11SiriSignals27DomainTaskAbandonmentSignalV9instancesSayAA0F9Providing_pGyFZ_0()
{
  v0 = 0;
  v1 = 0;
  v16 = MEMORY[0x277D84F90];
  do
  {
    v11 = v0;
    v2 = *(&unk_2846103F8 + v1 + 32);
    v15 = MEMORY[0x277D84F90];
    sub_23152D5B8(0, 8, 0);
    v3 = 0;
    v4 = v15;
    do
    {
      v5 = byte_284610638[v3 + 32];
      v6 = [BiomeLibrary() Siri];
      swift_unknownObjectRelease();
      v7 = [v6 PostSiriEngagement];
      swift_unknownObjectRelease();
      v15 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_23152D5B8(v8 > 1, v9 + 1, 1);
        v4 = v15;
      }

      ++v3;
      v13 = &type metadata for DomainTaskAbandonmentSignal;
      v14 = &protocol witness table for DomainTaskAbandonmentSignal;
      *&v12 = v7;
      BYTE8(v12) = v5;
      BYTE9(v12) = v2;
      *(v4 + 16) = v9 + 1;
      sub_23149FD3C(&v12, v4 + 40 * v9 + 32);
    }

    while (v3 != 8);
    sub_23152C7FC(v4);
    v0 = 1;
    v1 = 1u;
  }

  while ((v11 & 1) == 0);
  return v16;
}

void sub_2314EDACC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = &unk_2846103F8;
  }

  v20 = MEMORY[0x277D84F90];
  v14 = *(v2 + 2);
  if (v14)
  {
    v12 = v2 + 32;

    v3 = 0;
    v13 = v2;
    while (v3 < *(v2 + 2))
    {
      v15 = v3;
      v4 = v12[v3];
      v19 = MEMORY[0x277D84F90];
      sub_23152D5B8(0, 8, 0);
      v5 = 0;
      v6 = v19;
      do
      {
        v7 = byte_284611B08[v5 + 32];
        v8 = [BiomeLibrary() Siri];
        swift_unknownObjectRelease();
        v9 = [v8 PostSiriEngagement];
        swift_unknownObjectRelease();
        v19 = v6;
        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_23152D5B8(v10 > 1, v11 + 1, 1);
          v6 = v19;
        }

        ++v5;
        v17 = &type metadata for DomainTaskAbandonmentSignal;
        v18 = &protocol witness table for DomainTaskAbandonmentSignal;
        *&v16 = v9;
        BYTE8(v16) = v7;
        BYTE9(v16) = v4;
        *(v6 + 16) = v11 + 1;
        sub_23149FD3C(&v16, v6 + 40 * v11 + 32);
      }

      while (v5 != 8);
      v3 = v15 + 1;
      sub_23152C7FC(v6);
      v2 = v13;
      if (v15 + 1 == v14)
      {

        return;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

char *sub_2314EDCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v7 + 16))(v6);
  v8 = *(a3 + 24);
  v21 = v6;
  result = v8(a2, a3);
  if (!result)
  {
    result = &unk_2846103F8;
  }

  v31 = MEMORY[0x277D84F90];
  v25 = *(result + 2);
  if (v25)
  {
    v20 = a2;
    v10 = 0;
    v23 = result + 32;
    v24 = result;
    while (v10 < *(result + 2))
    {
      v26 = v10;
      v11 = v23[v10];
      v30 = MEMORY[0x277D84F90];
      sub_23152D5B8(0, 8, 0);
      v12 = 0;
      v13 = v30;
      do
      {
        v14 = byte_284610420[v12 + 32];
        v15 = [BiomeLibrary() Siri];
        swift_unknownObjectRelease();
        v16 = [v15 PostSiriEngagement];
        swift_unknownObjectRelease();
        v30 = v13;
        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_23152D5B8(v17 > 1, v18 + 1, 1);
          v13 = v30;
        }

        ++v12;
        v28 = &type metadata for DomainTaskAbandonmentSignal;
        v29 = &protocol witness table for DomainTaskAbandonmentSignal;
        *&v27 = v16;
        BYTE8(v27) = v14;
        BYTE9(v27) = v11;
        *(v13 + 16) = v18 + 1;
        sub_23149FD3C(&v27, v13 + 40 * v18 + 32);
      }

      while (v12 != 8);
      v10 = v26 + 1;
      sub_23152C7FC(v13);
      result = v24;
      if (v10 == v25)
      {

        v19 = v31;
        a2 = v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
LABEL_13:
    (*(v22 + 8))(v21, a2);
    return v19;
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_2314EDF9C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_2314EDFDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2314EE048()
{
  result = sub_231586964();
  qword_27DD5B538 = result;
  unk_27DD5B540 = v1;
  return result;
}

uint64_t static DomainToContactAffinityScoreByIntentSignal.signalName.getter()
{
  if (qword_27DD5ADB0 != -1)
  {
    OUTLINED_FUNCTION_0_32(&qword_27DD5ADB0);
  }

  v0 = qword_27DD5B538;

  return v0;
}

unint64_t DomainToContactAffinityScoreByIntentSignal.id.getter()
{
  type metadata accessor for DomainToContactAffinityScoreByIntentSignal(0);
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5ADB0 != -1)
  {
    OUTLINED_FUNCTION_0_32(&qword_27DD5ADB0);
  }

  MEMORY[0x23192FF80](qword_27DD5B538, unk_27DD5B540);
  return v1;
}

uint64_t type metadata accessor for DomainToContactAffinityScoreByIntentSignal(uint64_t a1)
{
  result = qword_27DD5B550;
  if (!qword_27DD5B550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DomainToContactAffinityScoreByIntentSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EEBD8(v3, v1, v2);
}

uint64_t sub_2314EE1EC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v27 = a3;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v26 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v24[-v13];
  v25 = *a1;
  v15 = *(v10 + 16);
  v15(&v24[-v13], a2, v9);
  v16 = a4[3];
  v17 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v16);
  v18 = (*(v17 + 8))(v16, v17);
  v19 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal(0);
  a5[3] = v19;
  a5[4] = &protocol witness table for DomainToContactAffinityScoreByIntentSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  v15(boxed_opaque_existential_1, v14, v9);
  *(boxed_opaque_existential_1 + v19[8]) = v25;
  v21 = v27;
  *(boxed_opaque_existential_1 + v19[5]) = v27;
  *(boxed_opaque_existential_1 + v19[6]) = v18;
  v15(v26, boxed_opaque_existential_1, v9);
  v22 = v21;
  sub_231585A74();
  return (*(v10 + 8))(v14, v9);
}

uint64_t static DomainToContactAffinityScoreByIntentSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611B58);
  *a1 = result;
  return result;
}

uint64_t DomainToContactAffinityScoreByIntentSignal.value(completion:)(void (*a1)(unint64_t *, __n128), uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v38 = a1;
  v4 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  sub_231585BA4();
  v35 = sub_2315860F4();
  v34 = sub_2315860F4();
  v10 = *(v2 + *(v4 + 24));
  v39 = v4;
  v11 = *(v2 + *(v4 + 32));
  v46 = 0xD000000000000013;
  v47 = 0x8000000231591960;
  v43 = &v46;
  v12 = sub_2314E62A8(sub_2314BB954, v42, v10);
  v46 = 0xD000000000000017;
  v47 = 0x800000023158F940;
  v41 = &v46;
  v13 = sub_2314E62A8(sub_2314BB974, v40, v10);
  if (v12 && v11 - 7 < 7 || v13 && v11 < 7)
  {
  }

  LOBYTE(v46) = v11;
  DomainUseCase.intentTypes.getter();
  if (v11 <= 0xD)
  {
    if (((1 << v11) & 0xA95) != 0)
    {
      v14 = MEMORY[0x277D5FFC0];
LABEL_9:
      v15 = *v14;
      v16 = sub_231585D74();
      OUTLINED_FUNCTION_8();
      (*(v17 + 104))(v9, v15, v16);
      v18 = v9;
      v19 = 0;
      v20 = v16;
      goto LABEL_10;
    }

    if (((1 << v11) & 0x3060) != 0)
    {
      v14 = MEMORY[0x277D5FFB8];
      goto LABEL_9;
    }
  }

  v20 = sub_231585D74();
  v18 = v9;
  v19 = 1;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v18, v19, 1, v20);
  v33 = v10;
  v21 = v36;
  v22 = sub_231585A34();
  sub_2314A2910(v9, &qword_27DD5B4C8, &unk_23158A6B0);

  v23 = sub_2314BB35C(v22, v33);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v24 = sub_231585FF4();
  __swift_project_value_buffer(v24, qword_280D72248);
  sub_2314EF198(v3, v21);
  v25 = sub_231585FE4();
  v26 = sub_2315865D4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v27 = 136315394;
    v44 = *(v21 + *(v39 + 32));
    v46 = DomainUseCase.rawValue.getter();
    v47 = v28;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_27DD5ADB0 != -1)
    {
      OUTLINED_FUNCTION_0_32(&qword_27DD5ADB0);
    }

    MEMORY[0x23192FF80](qword_27DD5B538, unk_27DD5B540);
    sub_2314EF1FC(v21);
    v29 = sub_2314A22E8();

    *(v27 + 4) = v29;
    *(v27 + 12) = 2080;

    sub_2315860E4();

    v30 = sub_2314A22E8();

    *(v27 + 14) = v30;
    _os_log_impl(&dword_231496000, v25, v26, "%s value: %s", v27, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314EF1FC(v21);
  }

  v46 = v23;
  LOBYTE(v47) = 3;

  (v38)(&v46);
  sub_2314A5EEC(v46, v47);
}

uint64_t sub_2314EEB78(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314EEBD8(v3, v1, v2);
}

uint64_t sub_2314EEBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a2;
  v45 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v43, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314A2910(v8, &qword_27DD5B008, &unk_23158A5C0);
LABEL_22:
    v26 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = v44;
  v15 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v16 = (*(v15 + 24))(v14, v15);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_28460FF58;
  }

  v18 = v44;
  v19 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v20 = (*(v19 + 48))(v18, v19);
  if (!v20)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v27 = sub_231585FF4();
    __swift_project_value_buffer(v27, qword_280D72248);
    v28 = sub_231585FE4();
    v29 = sub_2315865E4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42 = v31;
      *v30 = 136315138;
      v41 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B570, &unk_23158DE20);
      sub_231586204();
      v32 = sub_2314A22E8();

      *(v30 + 4) = v32;
      _os_log_impl(&dword_231496000, v28, v29, "%s no intent given", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x231931280](v31, -1, -1);
      MEMORY[0x231931280](v30, -1, -1);
    }

    goto LABEL_21;
  }

  v21 = v20;
  v22 = v44;
  v23 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v24 = *((*(v23 + 8))(v22, v23) + 16);

  if (!v24)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v33 = sub_231585FF4();
    __swift_project_value_buffer(v33, qword_280D72248);
    v34 = sub_231585FE4();
    v35 = sub_2315865E4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42 = v37;
      *v36 = 136315138;
      v41 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B570, &unk_23158DE20);
      sub_231586204();
      v38 = sub_2314A22E8();

      *(v36 + 4) = v38;
      _os_log_impl(&dword_231496000, v34, v35, "%s no bundleIds given", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x231931280](v37, -1, -1);
      MEMORY[0x231931280](v36, -1, -1);
    }

LABEL_21:
    (*(v10 + 8))(v12, v9);
    goto LABEL_22;
  }

  MEMORY[0x28223BE20](v25);
  *(&v40 - 4) = v12;
  *(&v40 - 3) = v21;
  *(&v40 - 2) = v43;
  v26 = sub_2314DCD00(sub_2314EF3D0, (&v40 - 6), v17);

  (*(v10 + 8))(v12, v9);
LABEL_23:
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v26;
}

uint64_t sub_2314EF198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314EF1FC(uint64_t a1)
{
  v2 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2314EF280(uint64_t a1)
{
  sub_231585D34();
  if (v1 <= 0x3F)
  {
    sub_2314EF33C();
    if (v2 <= 0x3F)
    {
      sub_2314EF380();
      if (v3 <= 0x3F)
      {
        sub_231585A84();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2314EF33C()
{
  result = qword_27DD5B560;
  if (!qword_27DD5B560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD5B560);
  }

  return result;
}

void sub_2314EF380()
{
  if (!qword_27DD5B568)
  {
    v0 = sub_231586454();
    if (!v1)
    {
      atomic_store(v0, &qword_27DD5B568);
    }
  }
}

uint64_t sub_2314EF404()
{
  result = sub_231586964();
  qword_27DD5B578 = result;
  unk_27DD5B580 = v1;
  return result;
}

uint64_t static DomainToContactAffinityScoreByNameSignal.signalName.getter()
{
  if (qword_27DD5ADB8 != -1)
  {
    OUTLINED_FUNCTION_1_16(&qword_27DD5ADB8);
  }

  v0 = qword_27DD5B578;

  return v0;
}

unint64_t DomainToContactAffinityScoreByNameSignal.id.getter()
{
  type metadata accessor for DomainToContactAffinityScoreByNameSignal(0);
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5ADB8 != -1)
  {
    OUTLINED_FUNCTION_1_16(&qword_27DD5ADB8);
  }

  MEMORY[0x23192FF80](qword_27DD5B578, unk_27DD5B580);
  return v1;
}

uint64_t type metadata accessor for DomainToContactAffinityScoreByNameSignal(uint64_t a1)
{
  result = qword_27DD5B5A0;
  if (!qword_27DD5B5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DomainToContactAffinityScoreByNameSignal.entityID.getter()
{
  v1 = *(v0 + *(type metadata accessor for DomainToContactAffinityScoreByNameSignal(0) + 24));

  return v1;
}

uint64_t static DomainToContactAffinityScoreByNameSignal.instances(createdFor:useCases:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[0] = MEMORY[0x277D84F90];
  v32[1] = a1;
  v32[2] = a2;
  v32[3] = 0;
  v32[4] = 0;
  v32[5] = a3;

  v3 = sub_2314F1D48(v32);
  sub_2314C1D18(v32);
  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    sub_2314A2C74(v5, v31);
    sub_23149FD3C(v31, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B590, &qword_23158A9D8);
    if ((OUTLINED_FUNCTION_26_1(v7, v8, v9) & 1) == 0)
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
LABEL_11:
      sub_2314A2910(&v27, &qword_27DD5B598, &qword_23158A9E0);
      goto LABEL_12;
    }

    if (!*(&v28 + 1))
    {
      goto LABEL_11;
    }

    sub_23149FD3C(&v27, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = OUTLINED_FUNCTION_22_5();
      OUTLINED_FUNCTION_39_0(v18, v19, v20, v21, &unk_27DD5B648, &unk_23158AB10);
      v6 = isUniquelyReferenced_nonNull_native;
    }

    v17 = *(v6 + 24);
    if (*(v6 + 16) >= v17 >> 1)
    {
      v22 = OUTLINED_FUNCTION_24_2(v17);
      OUTLINED_FUNCTION_39_0(v22, v23, v24, v25, &unk_27DD5B648, &unk_23158AB10);
      v6 = isUniquelyReferenced_nonNull_native;
    }

    OUTLINED_FUNCTION_25_0(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14, v15, v16);
LABEL_12:
    v5 += 40;
    --v4;
  }

  while (v4);

  return v6;
}

uint64_t static DomainToContactAffinityScoreByNameSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314F1D48(v3);
}

uint64_t static DomainToContactAffinityScoreByNameSignal.instances(createdFor:)(uint64_t a1, uint64_t a2)
{
  v31[0] = MEMORY[0x277D84F90];
  v31[1] = a1;
  v31[2] = a2;
  memset(&v31[3], 0, 24);

  v2 = sub_2314F1D48(v31);
  sub_2314C1D18(v31);
  v3 = *(v2 + 16);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = v2 + 32;
  v5 = MEMORY[0x277D84F90];
  do
  {
    sub_2314A2C74(v4, v30);
    sub_23149FD3C(v30, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B590, &qword_23158A9D8);
    if ((OUTLINED_FUNCTION_26_1(v6, v7, v8) & 1) == 0)
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
LABEL_11:
      sub_2314A2910(&v26, &qword_27DD5B598, &qword_23158A9E0);
      goto LABEL_12;
    }

    if (!*(&v27 + 1))
    {
      goto LABEL_11;
    }

    sub_23149FD3C(&v26, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = OUTLINED_FUNCTION_22_5();
      OUTLINED_FUNCTION_39_0(v17, v18, v19, v20, &unk_27DD5B648, &unk_23158AB10);
      v5 = isUniquelyReferenced_nonNull_native;
    }

    v16 = *(v5 + 24);
    if (*(v5 + 16) >= v16 >> 1)
    {
      v21 = OUTLINED_FUNCTION_24_2(v16);
      OUTLINED_FUNCTION_39_0(v21, v22, v23, v24, &unk_27DD5B648, &unk_23158AB10);
      v5 = isUniquelyReferenced_nonNull_native;
    }

    OUTLINED_FUNCTION_25_0(isUniquelyReferenced_nonNull_native, v10, v11, v12, v13, v14, v15);
LABEL_12:
    v4 += 40;
    --v3;
  }

  while (v3);

  return v5;
}

uint64_t static DomainToContactAffinityScoreByNameSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F2174(v3, v1, v2);
}

double sub_2314EF9B0@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = type metadata accessor for DomainToContactAffinityScoreByNameSignal(0);
  a5[3] = v10;
  a5[4] = &protocol witness table for DomainToContactAffinityScoreByNameSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  v12 = sub_231585D34();
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, a2, v12);
  *(boxed_opaque_existential_1 + *(v10 + 20)) = v9;
  v13 = (boxed_opaque_existential_1 + *(v10 + 24));
  *v13 = a3;
  v13[1] = a4;

  return result;
}

uint64_t static DomainToContactAffinityScoreByNameSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611B80);
  *a1 = result;
  return result;
}

uint64_t DomainToContactAffinityScoreByNameSignal.value(completion:)(void (*a1)(uint64_t), uint64_t a2)
{
  v90 = a2;
  v91 = a1;
  v3 = type metadata accessor for DomainToContactAffinityScoreByNameSignal(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v89 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v8 = OUTLINED_FUNCTION_19(v7);
  MEMORY[0x28223BE20](v8);
  v88 = &v85 - v9;
  OUTLINED_FUNCTION_29_0();
  sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v97 = v11;
  v98 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_0();
  v95 = v12 - v13;
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_35();
  v96 = v15;
  OUTLINED_FUNCTION_29_0();
  v16 = sub_231585E04();
  OUTLINED_FUNCTION_4_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5();
  v22 = (v21 - v20);
  v23 = sub_231585AE4();
  OUTLINED_FUNCTION_4_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_11_0();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v85 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v34 = OUTLINED_FUNCTION_19(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_11_0();
  v87 = v35 - v36;
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v37);
  v94 = &v85 - v38;
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_35();
  v92 = v3;
  v93 = v40;
  v41 = *(v3 + 20);
  v42 = v2;
  v86 = v41;
  v43 = *(v2 + v41);
  v44 = 1;
  if (v43 <= 0xD && ((1 << v43) & 0x2E5C) != 0)
  {
    sub_231585AD4();
    sub_231585AC4();
    v45 = *(v25 + 8);
    v45(v29, v23);
    OUTLINED_FUNCTION_31_0();
    *v22 = v46;
    v22[1] = v47;
    v22[2] = v48;
    v22[3] = v29;
    (*(v18 + 104))(v22, *MEMORY[0x277D5FFE8], v16);

    sub_231585A94();
    (*(v18 + 8))(v22, v16);
    v45(v32, v23);
    v44 = 0;
  }

  v49 = v93;
  __swift_storeEnumTagSinglePayload(v93, v44, 1, v23);
  v50 = v96;
  v51 = *(v97 + 16);
  v52 = v98;
  v51(v96, v2, v98);
  v53 = *(v2 + v86);
  sub_2314A1D9C(v49, v94, &qword_27DD5B4D0, &qword_23158A5D0);
  v86 = DomainToContactAffinityScoreByNameSignal.id.getter();
  v55 = v54;
  v51(v95, v50, v52);
  LOBYTE(v100) = v53;
  v56 = DomainUseCase.intentTypes.getter();
  v57 = v88;
  if (v53 <= 0xD)
  {
    if (((1 << v53) & 0xA95) != 0)
    {
      v58 = MEMORY[0x277D5FFC0];
LABEL_9:
      v59 = *v58;
      v60 = sub_231585D74();
      OUTLINED_FUNCTION_8();
      (*(v61 + 104))(v57, v59, v60);
      v62 = v57;
      v63 = 0;
      v64 = v60;
      goto LABEL_10;
    }

    if (((1 << v53) & 0x3060) != 0)
    {
      v58 = MEMORY[0x277D5FFB8];
      goto LABEL_9;
    }
  }

  v64 = sub_231585D74();
  v62 = v57;
  v63 = 1;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v62, v63, 1, v64);
  if (v53 - 1 > 0xA)
  {
    v65 = 2;
  }

  else
  {
    v65 = byte_23158AB52[(v53 - 1)];
  }

  v66 = v94;
  v67 = v87;
  sub_2314A1D9C(v94, v87, &qword_27DD5B4D0, &qword_23158A5D0);
  v68 = sub_2314A0DE8(v95, v56, v57, v65, v67, v86, v55, MEMORY[0x277D84F90], 0);
  v70 = v69;
  sub_2314A2910(v66, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v97 + 8))(v96, v98);
  sub_2314BB35C(v68, v70);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v71 = sub_231585FF4();
  __swift_project_value_buffer(v71, qword_280D72248);
  v72 = v89;
  sub_2314F25C0(v42, v89);

  v73 = sub_231585FE4();
  v74 = sub_2315865D4();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v102 = v76;
    *v75 = 136315394;
    v99 = *(v72 + *(v92 + 20));
    v77 = DomainUseCase.rawValue.getter();
    OUTLINED_FUNCTION_8_11(v77, v78);
    if (qword_27DD5ADB8 != -1)
    {
      OUTLINED_FUNCTION_1_16(&qword_27DD5ADB8);
    }

    MEMORY[0x23192FF80](qword_27DD5B578, unk_27DD5B580);
    sub_2314F2624(v72);
    v79 = sub_2314A22E8();

    *(v75 + 4) = v79;
    *(v75 + 12) = 2080;
    sub_2315860E4();
    v80 = sub_2314A22E8();

    *(v75 + 14) = v80;
    OUTLINED_FUNCTION_36_0(&dword_231496000, v81, v82, "%s value: %s");
    swift_arrayDestroy();
    MEMORY[0x231931280](v76, -1, -1);
    OUTLINED_FUNCTION_27();
  }

  else
  {

    sub_2314F2624(v72);
  }

  v83 = OUTLINED_FUNCTION_30_0();
  v91(v83);
  sub_2314A5EEC(v100, v101);
  return sub_2314A2910(v49, &qword_27DD5B4D0, &qword_23158A5D0);
}

uint64_t DomainToContactAffinityScoreByNameSignal.valueForApps(bundleIDs:completion:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v107 = a3;
  v108 = a2;
  v116 = a1;
  v4 = type metadata accessor for DomainToContactAffinityScoreByNameSignal(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v106 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v9 = OUTLINED_FUNCTION_19(v8);
  MEMORY[0x28223BE20](v9);
  v113 = &v102[-v10];
  OUTLINED_FUNCTION_29_0();
  sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v114 = v12;
  v115 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11_0();
  v111 = v13 - v14;
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_35();
  v112 = v16;
  OUTLINED_FUNCTION_29_0();
  v17 = sub_231585E04();
  OUTLINED_FUNCTION_4_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  v23 = (v22 - v21);
  v24 = sub_231585AE4();
  OUTLINED_FUNCTION_4_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_11_0();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v102[-v32];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v35 = OUTLINED_FUNCTION_19(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_11_0();
  v105 = v36 - v37;
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v38);
  v110 = &v102[-v39];
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_35();
  v117 = v41;
  v109 = v4;
  v42 = *(v4 + 20);
  v43 = v3;
  v104 = v42;
  v44 = *(v3 + v42);
  v45 = 1;
  if (v44 <= 0xD && ((1 << v44) & 0x2E5C) != 0)
  {
    sub_231585AD4();
    sub_231585AC4();
    v46 = *(v26 + 8);
    v46(v30, v24);
    OUTLINED_FUNCTION_31_0();
    *v23 = v47;
    v23[1] = v48;
    v23[2] = v49;
    v23[3] = v30;
    (*(v19 + 104))(v23, *MEMORY[0x277D5FFE8], v17);

    sub_231585A94();
    (*(v19 + 8))(v23, v17);
    v46(v33, v24);
    v45 = 0;
  }

  v50 = v117;
  v51 = __swift_storeEnumTagSinglePayload(v117, v45, 1, v24);
  v52 = v104;
  v53 = *(v3 + v104);
  v120 = 0xD000000000000013;
  v121 = 0x8000000231591960;
  MEMORY[0x28223BE20](v51);
  v54 = v116;
  v55 = sub_2314E62A8(sub_2314BB954, &v102[-32], v116);
  v56 = v55;
  v120 = 0xD000000000000017;
  v121 = 0x800000023158F940;
  MEMORY[0x28223BE20](v55);
  v101 = &v120;
  v57 = sub_2314E62A8(sub_2314BB974, &v102[-32], v54);
  v58 = v56 && v53 - 7 < 7;
  if (!(v58 | !v57))
  {
    v58 = v53 < 7;
  }

  v103 = v58;
  v59 = v115;
  v60 = *(v114 + 16);
  v61 = v112;
  v60(v112, v43, v115);
  v62 = *(v43 + v52);
  sub_2314A1D9C(v50, v110, &qword_27DD5B4D0, &qword_23158A5D0);
  v63 = DomainToContactAffinityScoreByNameSignal.id.getter();
  v65 = v64;
  v60(v111, v61, v59);
  LOBYTE(v120) = v62;
  v66 = DomainUseCase.intentTypes.getter();
  v67 = v43;
  if (v62 > 0xD)
  {
    goto LABEL_22;
  }

  if (((1 << v62) & 0xA95) != 0)
  {
    v68 = *MEMORY[0x277D5FFC0];
    v69 = sub_231585D74();
    OUTLINED_FUNCTION_8();
    v71 = v113;
    (*(v70 + 104))(v113, v68, v69);
    v72 = v71;
    v73 = 0;
    v74 = v69;
    goto LABEL_11;
  }

  if (((1 << v62) & 0x3060) != 0)
  {
    v75 = *MEMORY[0x277D5FFB8];
    v76 = sub_231585D74();
    OUTLINED_FUNCTION_8();
    v78 = v113;
    (*(v77 + 104))(v113, v75, v76);
    v72 = v78;
    v73 = 0;
    v74 = v76;
  }

  else
  {
LABEL_22:
    v74 = sub_231585D74();
    v72 = v113;
    v73 = 1;
  }

LABEL_11:
  __swift_storeEnumTagSinglePayload(v72, v73, 1, v74);
  if (v62 - 1 > 0xA)
  {
    v79 = 2;
  }

  else
  {
    v79 = byte_23158AB52[(v62 - 1)];
  }

  v80 = v110;
  v81 = v105;
  sub_2314A1D9C(v110, v105, &qword_27DD5B4D0, &qword_23158A5D0);
  v82 = v116;

  v83 = sub_2314A0DE8(v111, v66, v113, v79, v81, v63, v65, v82, v103);
  v85 = v84;
  sub_2314A2910(v80, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v114 + 8))(v112, v115);
  sub_2314BB35C(v83, v85);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v86 = sub_231585FF4();
  __swift_project_value_buffer(v86, qword_280D72248);
  v87 = v106;
  sub_2314F25C0(v67, v106);

  v88 = sub_231585FE4();
  v89 = sub_2315865D4();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v119 = v91;
    *v90 = 136315394;
    v118 = *(v87 + *(v109 + 20));
    v92 = DomainUseCase.rawValue.getter();
    OUTLINED_FUNCTION_8_11(v92, v93);
    if (qword_27DD5ADB8 != -1)
    {
      OUTLINED_FUNCTION_1_16(&qword_27DD5ADB8);
    }

    MEMORY[0x23192FF80](qword_27DD5B578, unk_27DD5B580);
    sub_2314F2624(v87);
    v94 = sub_2314A22E8();

    *(v90 + 4) = v94;
    *(v90 + 12) = 2080;
    sub_2315860E4();
    v95 = sub_2314A22E8();

    *(v90 + 14) = v95;
    OUTLINED_FUNCTION_36_0(&dword_231496000, v96, v97, "%s value: %s");
    swift_arrayDestroy();
    MEMORY[0x231931280](v91, -1, -1);
    OUTLINED_FUNCTION_27();
  }

  else
  {

    sub_2314F2624(v87);
  }

  v98 = v117;
  v99 = OUTLINED_FUNCTION_30_0();
  v108(v99);
  sub_2314A5EEC(v120, v121);
  return sub_2314A2910(v98, &qword_27DD5B4D0, &qword_23158A5D0);
}

uint64_t sub_2314F0B88(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F2174(v3, v1, v2);
}

void sub_2314F0BEC()
{
  OUTLINED_FUNCTION_13_4();
  if (v4)
  {
    OUTLINED_FUNCTION_3_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5B0, &qword_23158AA68);
    v7 = OUTLINED_FUNCTION_20();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_7_12();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_34_0();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_2314F0CFC()
{
  OUTLINED_FUNCTION_13_4();
  if (v4)
  {
    OUTLINED_FUNCTION_3_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_6_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5C0, &qword_23158E0D0);
    v7 = OUTLINED_FUNCTION_20();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_15_3();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_17_4();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2314F0DD4()
{
  OUTLINED_FUNCTION_13_4();
  if (v4)
  {
    OUTLINED_FUNCTION_3_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_6_2();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5C8, &qword_23158AA80);
    v8 = OUTLINED_FUNCTION_18_4(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_11_8(v9);
  }

  OUTLINED_FUNCTION_17_4();
  if (v1)
  {
    OUTLINED_FUNCTION_21_3();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2314F0EA4()
{
  OUTLINED_FUNCTION_13_4();
  if (v4)
  {
    OUTLINED_FUNCTION_3_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_6_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B670, &qword_23158AB40);
    v7 = OUTLINED_FUNCTION_20();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_7_12();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[2 * v2 + 4] <= v7 + 4)
    {
      memmove(v7 + 4, v0 + 4, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B678, &qword_23158AB48);
    swift_arrayInitWithCopy();
  }
}

void sub_2314F0FE0()
{
  OUTLINED_FUNCTION_13_4();
  if (v4)
  {
    OUTLINED_FUNCTION_3_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5F0, &unk_23158AAA8);
    v7 = OUTLINED_FUNCTION_20();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_7_12();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_34_0();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_2314F10E8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_13();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_12_1();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_2314F1A60(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2314F1200()
{
  OUTLINED_FUNCTION_13_4();
  if (v4)
  {
    OUTLINED_FUNCTION_3_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_16_4();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B650, &qword_23158AB20);
    v7 = OUTLINED_FUNCTION_20();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_15_3();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_34_0();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_2314F12D0()
{
  OUTLINED_FUNCTION_13_4();
  if (v4)
  {
    OUTLINED_FUNCTION_3_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_6_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B638, &unk_23158AB00);
    v7 = OUTLINED_FUNCTION_20();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_15_3();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_17_4();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2314F13C4()
{
  OUTLINED_FUNCTION_13_4();
  if (v4)
  {
    OUTLINED_FUNCTION_3_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_6_2();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5E8, &qword_23158AAA0);
    v8 = OUTLINED_FUNCTION_18_4(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_11_8(v9);
  }

  OUTLINED_FUNCTION_17_4();
  if (v1)
  {
    OUTLINED_FUNCTION_21_3();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2314F14B0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_3_13();
    if (v10 != v11)
    {
      OUTLINED_FUNCTION_12_1();
      if (v10)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = *(a4 + 2);
  if (v9 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    OUTLINED_FUNCTION_38_0(a1, a2, a3, a4, a5, a6);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v14 != a4 || &v17[24 * v12] <= v16)
    {
      memmove(v16, v17, 24 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2314F15A4()
{
  OUTLINED_FUNCTION_13_4();
  if (v4)
  {
    OUTLINED_FUNCTION_3_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_6_2();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5E0, &qword_23158AA98);
    v8 = OUTLINED_FUNCTION_18_4(v7);
    v9 = _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_11_8(v9);
  }

  OUTLINED_FUNCTION_17_4();
  if (v1)
  {
    OUTLINED_FUNCTION_21_3();
    if (v13)
    {
      v14 = v12 > v10;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      memmove(v10, v11, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2314F16BC()
{
  OUTLINED_FUNCTION_28_0();
  if (v6)
  {
    OUTLINED_FUNCTION_3_13();
    if (v11 != v12)
    {
      OUTLINED_FUNCTION_12_1();
      if (v11)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v10 = v5;
  }

  v13 = v0[2];
  if (v10 <= v13)
  {
    v14 = v0[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_38_0(v4, v5, v6, v7, v8, v9);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v15 != v0 || &v0[5 * v13 + 4] <= v15 + 4)
    {
      v18 = OUTLINED_FUNCTION_33();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_33();
    swift_arrayInitWithCopy();
  }
}

void sub_2314F17C4()
{
  OUTLINED_FUNCTION_13_4();
  if (v4)
  {
    OUTLINED_FUNCTION_3_13();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  OUTLINED_FUNCTION_6_2();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B668, &unk_23158E1A0);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_11_8(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_17_4();
  if (v1)
  {
    if (v7 != v0 || &v10[56 * v2] <= v9)
    {
      memmove(v9, v10, 56 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_2314F18D8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_2314F18F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

void sub_2314F1918()
{
  OUTLINED_FUNCTION_32();
  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80), OUTLINED_FUNCTION_8(), v1 + *(v4 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      OUTLINED_FUNCTION_10_6();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    OUTLINED_FUNCTION_10_6();

    swift_arrayInitWithTakeFrontToBack();
  }
}

char *sub_2314F19D8(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_2314F1A00(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_2314F1A20(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

void sub_2314F1A60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_32();
  if (v8 && (a4(0), OUTLINED_FUNCTION_8(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_10_6();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_10_6();

    swift_arrayInitWithTakeFrontToBack();
  }
}

uint64_t sub_2314F1B14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v1 = OUTLINED_FUNCTION_19(v0);
  MEMORY[0x28223BE20](v1);
  v3 = v13 - v2;
  v14[3] = &type metadata for NoParameters;
  v14[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v14, v3);
  v4 = sub_231585D34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
  sub_2314A2910(v3, &qword_27DD5B008, &unk_23158A5C0);
  if (EnumTagSinglePayload != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v6 = sub_231585FF4();
    __swift_project_value_buffer(v6, qword_280D72248);
    v7 = sub_231585FE4();
    v8 = sub_2315865E4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13[2] = v10;
      *v9 = 136315138;
      v13[1] = type metadata accessor for DomainToContactAffinityScoreByNameSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5F8, &qword_23158AAB8);
      sub_231586204();
      v11 = sub_2314A22E8();

      *(v9 + 4) = v11;
      _os_log_impl(&dword_231496000, v7, v8, "%s no entityName given", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_27();
      MEMORY[0x231931280](v9, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2314F1D48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25[-1] - v3;
  v5 = sub_231585D34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = &type metadata for SignalComputationContext;
  v27[4] = &protocol witness table for SignalComputationContext;
  v9 = swift_allocObject();
  v27[0] = v9;
  v10 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v10;
  v9[3] = *(a1 + 32);
  sub_2314B5008(a1, v26);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v27, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2314A2910(v4, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v16 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v11 = *(a1 + 40);
  (*(v6 + 32))(v8, v4, v5);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &unk_2846105E0;
  }

  v26[0] = *(a1 + 8);
  v13 = *(&v26[0] + 1);
  if (!*(&v26[0] + 1))
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v17 = sub_231585FF4();
    __swift_project_value_buffer(v17, qword_280D72248);
    v18 = sub_231585FE4();
    v19 = sub_2315865E4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25[0] = v21;
      *v20 = 136315138;
      v25[2] = type metadata accessor for DomainToContactAffinityScoreByNameSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5F8, &qword_23158AAB8);
      sub_231586204();
      v22 = sub_2314A22E8();

      *(v20 + 4) = v22;
      _os_log_impl(&dword_231496000, v18, v19, "%s no entityName given", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x231931280](v21, -1, -1);
      MEMORY[0x231931280](v20, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    goto LABEL_15;
  }

  v14 = *&v26[0];

  sub_2314A1D9C(v26, v25, &qword_27DD5B120, &qword_23158ACE0);

  MEMORY[0x28223BE20](v15);
  *(&v24 - 4) = v8;
  *(&v24 - 3) = v14;
  *(&v24 - 2) = v13;
  v16 = sub_2314DCD00(sub_2314F274C, (&v24 - 6), v12);

  (*(v6 + 8))(v8, v5);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v16;
}

uint64_t sub_2314F2174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v29 - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = a2;
  v34[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v34, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314A2910(v8, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = (*(a3 + 24))(a2, a3);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &unk_2846105E0;
  }

  (*(a3 + 32))(&v30, a2, a3);
  v16 = v31;
  if (!v31)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v22 = sub_231585FF4();
    __swift_project_value_buffer(v22, qword_280D72248);
    v23 = sub_231585FE4();
    v24 = sub_2315865E4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      v29[2] = type metadata accessor for DomainToContactAffinityScoreByNameSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B5F8, &qword_23158AAB8);
      sub_231586204();
      v27 = sub_2314A22E8();

      *(v25 + 4) = v27;
      _os_log_impl(&dword_231496000, v23, v24, "%s no entityName given", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x231931280](v26, -1, -1);
      MEMORY[0x231931280](v25, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    goto LABEL_15;
  }

  v17 = v32;
  v18 = v33;
  v19 = v30;

  sub_2314A0D38(v19, v16, v17, v18);
  MEMORY[0x28223BE20](v20);
  v29[-4] = v12;
  v29[-3] = v17;
  v29[-2] = v18;
  v21 = sub_2314DCD00(sub_2314F272C, &v29[-6], v15);

  (*(v10 + 8))(v12, v9);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v21;
}

uint64_t sub_2314F25C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainToContactAffinityScoreByNameSignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314F2624(uint64_t a1)
{
  v2 = type metadata accessor for DomainToContactAffinityScoreByNameSignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314F26A8(uint64_t a1)
{
  result = sub_231585D34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2314F2794()
{
  result = sub_231586964();
  qword_27DD5B680 = result;
  *algn_27DD5B688 = v1;
  return result;
}

uint64_t static DomainToContactAffinityScoreSignal.signalName.getter()
{
  if (qword_27DD5ADC0 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_27DD5ADC0);
  }

  v0 = qword_27DD5B680;

  return v0;
}

unint64_t DomainToContactAffinityScoreSignal.id.getter()
{
  type metadata accessor for DomainToContactAffinityScoreSignal(0);
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5ADC0 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_27DD5ADC0);
  }

  MEMORY[0x23192FF80](qword_27DD5B680, *algn_27DD5B688);
  return v1;
}

uint64_t type metadata accessor for DomainToContactAffinityScoreSignal(uint64_t a1)
{
  result = qword_27DD5B690;
  if (!qword_27DD5B690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DomainToContactAffinityScoreSignal.entityID.getter()
{
  v1 = *(v0 + *(type metadata accessor for DomainToContactAffinityScoreSignal(0) + 24));

  return v1;
}

uint64_t static DomainToContactAffinityScoreSignal.instances(createdFor:useCases:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = MEMORY[0x277D84F90];
  v17[1] = a1;
  v17[2] = a2;
  v17[3] = 0;
  v17[4] = 0;
  v17[5] = a3;

  v3 = sub_2314F36D4(v17);
  sub_2314C1D18(v17);
  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    sub_2314A2C74(v5, v16);
    sub_23149FD3C(v16, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B590, &qword_23158A9D8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
LABEL_11:
      sub_2314A2910(&v12, &qword_27DD5B598, &qword_23158A9E0);
      goto LABEL_12;
    }

    if (!*(&v13 + 1))
    {
      goto LABEL_11;
    }

    sub_23149FD3C(&v12, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2314F1698(0, *(v6 + 16) + 1, 1, v6);
      v6 = v9;
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_2314F1698(v7 > 1, v8 + 1, 1, v6);
      v6 = v10;
    }

    *(v6 + 16) = v8 + 1;
    sub_23149FD3C(v15, v6 + 40 * v8 + 32);
LABEL_12:
    v5 += 40;
    --v4;
  }

  while (v4);

  return v6;
}

uint64_t static DomainToContactAffinityScoreSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314F36D4(v3);
}

uint64_t static DomainToContactAffinityScoreSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F3B00(v3, v1, v2);
}

double sub_2314F2BB0@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = type metadata accessor for DomainToContactAffinityScoreSignal(0);
  a5[3] = v10;
  a5[4] = &protocol witness table for DomainToContactAffinityScoreSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  v12 = sub_231585D34();
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, a2, v12);
  *(boxed_opaque_existential_1 + *(v10 + 20)) = v9;
  v13 = (boxed_opaque_existential_1 + *(v10 + 24));
  *v13 = a3;
  v13[1] = a4;

  return result;
}

uint64_t static DomainToContactAffinityScoreSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611BA8);
  *a1 = result;
  return result;
}

uint64_t DomainToContactAffinityScoreSignal.value(completion:)(void (*a1)(unint64_t *), uint64_t a2)
{
  v3 = v2;
  v76 = a2;
  v77 = a1;
  v4 = type metadata accessor for DomainToContactAffinityScoreSignal(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  v78 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v71 - v8;
  sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v82 = v10;
  v83 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_0();
  v80 = (v11 - v12);
  MEMORY[0x28223BE20](v13);
  v81 = &v71 - v14;
  v15 = sub_231585AE4();
  OUTLINED_FUNCTION_4_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11_0();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v71 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_11_0();
  v74 = v26 - v27;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v71 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v71 - v32;
  v79 = v4;
  v34 = *(v4 + 20);
  v35 = *(v3 + v34);
  v36 = 1;
  v84 = &v71 - v32;
  if (v35 <= 0xD && ((1 << v35) & 0x2E5C) != 0)
  {
    sub_231585AD4();
    sub_231585AC4();
    v37 = *(v17 + 8);
    v37(v21, v15);
    sub_231585AA4();
    v37(v24, v15);
    v33 = v84;
    v36 = 0;
  }

  __swift_storeEnumTagSinglePayload(v33, v36, 1, v15);
  v38 = v81;
  v39 = *(v82 + 16);
  v40 = v83;
  v39(v81, v3, v83);
  v41 = *(v3 + v34);
  sub_2314A1D9C(v33, v31, &qword_27DD5B4D0, &qword_23158A5D0);
  v42 = DomainToContactAffinityScoreSignal.id.getter();
  v72 = v43;
  v73 = v42;
  v39(v80, v38, v40);
  LOBYTE(v86) = v41;
  v44 = DomainUseCase.intentTypes.getter();
  v45 = v75;
  if (v41 > 0xD)
  {
    goto LABEL_20;
  }

  if (((1 << v41) & 0xA95) != 0)
  {
    v46 = *MEMORY[0x277D5FFC0];
    v47 = sub_231585D74();
    OUTLINED_FUNCTION_8();
    (*(v48 + 104))(v45, v46, v47);
    v49 = v45;
    v50 = 0;
    v51 = v47;
    goto LABEL_9;
  }

  if (((1 << v41) & 0x3060) != 0)
  {
    v52 = *MEMORY[0x277D5FFB8];
    v53 = sub_231585D74();
    OUTLINED_FUNCTION_8();
    (*(v54 + 104))(v45, v52, v53);
    v49 = v45;
    v50 = 0;
    v51 = v53;
  }

  else
  {
LABEL_20:
    v51 = sub_231585D74();
    v49 = v45;
    v50 = 1;
  }

LABEL_9:
  __swift_storeEnumTagSinglePayload(v49, v50, 1, v51);
  if (v41 - 1 > 0xA)
  {
    v55 = 2;
  }

  else
  {
    v55 = byte_23158ABF2[(v41 - 1)];
  }

  v56 = v78;
  v57 = v74;
  sub_2314A1D9C(v31, v74, &qword_27DD5B4D0, &qword_23158A5D0);
  v58 = sub_2314A0DE8(v80, v44, v45, v55, v57, v73, v72, MEMORY[0x277D84F90], 0);
  v60 = v59;
  sub_2314A2910(v31, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v82 + 8))(v81, v83);
  v61 = sub_2314BB35C(v58, v60);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v62 = sub_231585FF4();
  __swift_project_value_buffer(v62, qword_280D72248);
  sub_2314F3F4C(v3, v56);

  v63 = sub_231585FE4();
  v64 = sub_2315865D4();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v65 = 136315394;
    v85 = *(v56 + *(v79 + 20));
    v86 = DomainUseCase.rawValue.getter();
    v87 = v66;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_27DD5ADC0 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_27DD5ADC0);
    }

    MEMORY[0x23192FF80](qword_27DD5B680, *algn_27DD5B688);
    sub_2314F3FB0(v56);
    v67 = sub_2314A22E8();

    *(v65 + 4) = v67;
    *(v65 + 12) = 2080;
    sub_2315860E4();
    v68 = sub_2314A22E8();

    *(v65 + 14) = v68;
    _os_log_impl(&dword_231496000, v63, v64, "%s value: %s", v65, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314F3FB0(v56);
  }

  v69 = v84;
  v86 = v61;
  LOBYTE(v87) = 3;
  v77(&v86);
  sub_2314A5EEC(v86, v87);
  return sub_2314A2910(v69, &qword_27DD5B4D0, &qword_23158A5D0);
}

uint64_t sub_2314F3440(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F3B00(v3, v1, v2);
}

uint64_t sub_2314F34A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v13[3] = &type metadata for NoParameters;
  v13[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v13, v2);
  v3 = sub_231585D34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
  sub_2314A2910(v2, &qword_27DD5B008, &unk_23158A5C0);
  if (EnumTagSinglePayload != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v5 = sub_231585FF4();
    __swift_project_value_buffer(v5, qword_280D72248);
    v6 = sub_231585FE4();
    v7 = sub_2315865E4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12[2] = v9;
      *v8 = 136315138;
      v12[1] = type metadata accessor for DomainToContactAffinityScoreSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6A0, &unk_23158ABE0);
      sub_231586204();
      v10 = sub_2314A22E8();

      *(v8 + 4) = v10;
      _os_log_impl(&dword_231496000, v6, v7, "%s no entityName given", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2314F36D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25[-1] - v3;
  v5 = sub_231585D34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = &type metadata for SignalComputationContext;
  v27[4] = &protocol witness table for SignalComputationContext;
  v9 = swift_allocObject();
  v27[0] = v9;
  v10 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v10;
  v9[3] = *(a1 + 32);
  sub_2314B5008(a1, v26);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v27, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2314A2910(v4, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v16 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v11 = *(a1 + 40);
  (*(v6 + 32))(v8, v4, v5);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &unk_284610540;
  }

  v26[0] = *(a1 + 8);
  v13 = *(&v26[0] + 1);
  if (!*(&v26[0] + 1))
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v17 = sub_231585FF4();
    __swift_project_value_buffer(v17, qword_280D72248);
    v18 = sub_231585FE4();
    v19 = sub_2315865E4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25[0] = v21;
      *v20 = 136315138;
      v25[2] = type metadata accessor for DomainToContactAffinityScoreSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6A0, &unk_23158ABE0);
      sub_231586204();
      v22 = sub_2314A22E8();

      *(v20 + 4) = v22;
      _os_log_impl(&dword_231496000, v18, v19, "%s no entityName given", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x231931280](v21, -1, -1);
      MEMORY[0x231931280](v20, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    goto LABEL_15;
  }

  v14 = *&v26[0];

  sub_2314A1D9C(v26, v25, &qword_27DD5B120, &qword_23158ACE0);

  MEMORY[0x28223BE20](v15);
  *(&v24 - 4) = v8;
  *(&v24 - 3) = v14;
  *(&v24 - 2) = v13;
  v16 = sub_2314DCD00(sub_2314F4054, (&v24 - 6), v12);

  (*(v6 + 8))(v8, v5);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v16;
}

uint64_t sub_2314F3B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v29 - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = a2;
  v34[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v34, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314A2910(v8, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = (*(a3 + 24))(a2, a3);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &unk_284610540;
  }

  (*(a3 + 32))(&v30, a2, a3);
  v16 = v31;
  if (!v31)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v22 = sub_231585FF4();
    __swift_project_value_buffer(v22, qword_280D72248);
    v23 = sub_231585FE4();
    v24 = sub_2315865E4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      v29[2] = type metadata accessor for DomainToContactAffinityScoreSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6A0, &unk_23158ABE0);
      sub_231586204();
      v27 = sub_2314A22E8();

      *(v25 + 4) = v27;
      _os_log_impl(&dword_231496000, v23, v24, "%s no entityName given", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x231931280](v26, -1, -1);
      MEMORY[0x231931280](v25, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    goto LABEL_15;
  }

  v17 = v32;
  v18 = v33;
  v19 = v30;

  sub_2314A0D38(v19, v16, v17, v18);
  MEMORY[0x28223BE20](v20);
  v29[-4] = v12;
  v29[-3] = v17;
  v29[-2] = v18;
  v21 = sub_2314DCD00(sub_2314F4034, &v29[-6], v15);

  (*(v10 + 8))(v12, v9);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v21;
}

uint64_t sub_2314F3F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainToContactAffinityScoreSignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314F3FB0(uint64_t a1)
{
  v2 = type metadata accessor for DomainToContactAffinityScoreSignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314F4080()
{
  result = sub_231586964();
  qword_27DD5B6A8 = result;
  unk_27DD5B6B0 = v1;
  return result;
}

uint64_t static DomainToContactFrequencyByIntentSignal.signalName.getter()
{
  if (qword_27DD5ADC8 != -1)
  {
    OUTLINED_FUNCTION_0_35(&qword_27DD5ADC8);
  }

  v0 = qword_27DD5B6A8;

  return v0;
}

uint64_t DomainToContactFrequencyByIntentSignal.id.getter()
{
  v3[8] = 0;
  *v3 = *(v0 + *(type metadata accessor for DomainToContactFrequencyByIntentSignal(0) + 32));
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](v1);

  OUTLINED_FUNCTION_7_10();
  if (qword_27DD5ADC8 != -1)
  {
    OUTLINED_FUNCTION_0_35(&qword_27DD5ADC8);
  }

  MEMORY[0x23192FF80](qword_27DD5B6A8, unk_27DD5B6B0);
  OUTLINED_FUNCTION_7_10();
  sub_231586A54();
  return *&v3[1];
}

uint64_t type metadata accessor for DomainToContactFrequencyByIntentSignal(uint64_t a1)
{
  result = qword_27DD5B6C0;
  if (!qword_27DD5B6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DomainToContactFrequencyByIntentSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F51EC(v3, v1, v2);
}

uint64_t sub_2314F4274@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v25 = a4;
  v33 = a2;
  v34 = a3;
  v31 = sub_231585D34();
  v5 = *(v31 - 8);
  v6 = MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v29 = &v25 - v8;
  v9 = type metadata accessor for DomainToContactFrequencyByIntentSignal(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  v40 = MEMORY[0x277D84F90];
  sub_23152D5B8(0, 8, 0);
  v12 = 0;
  v13 = v40;
  v14 = *(v5 + 16);
  v32 = v5 + 16;
  v26 = (v5 + 8);
  v27 = v14;
  v15 = v29;
  do
  {
    v36 = v13;
    v35 = byte_28460FCD0[v12 + 32];
    v16 = v31;
    v17 = v27;
    v27(v15, v33, v31);
    v18 = v9[5];
    v17(&v11[v18], v15, v16);
    v11[v9[8]] = v28;
    v19 = v34;
    *&v11[v9[6]] = v34;
    *v11 = v35;
    v17(v30, &v11[v18], v16);
    v13 = v36;
    v20 = v19;
    sub_231585A74();
    (*v26)(v15, v16);
    v40 = v13;
    v22 = *(v13 + 16);
    v21 = *(v13 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_23152D5B8(v21 > 1, v22 + 1, 1);
      v13 = v40;
    }

    ++v12;
    v38 = v9;
    v39 = &protocol witness table for DomainToContactFrequencyByIntentSignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
    sub_2314F55F8(v11, boxed_opaque_existential_1);
    *(v13 + 16) = v22 + 1;
    sub_23149FD3C(&v37, v13 + 40 * v22 + 32);
    result = sub_2314F565C(v11);
  }

  while (v12 != 8);
  *v25 = v13;
  return result;
}

uint64_t static DomainToContactFrequencyByIntentSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611BD0);
  *a1 = result;
  return result;
}

uint64_t DomainToContactFrequencyByIntentSignal.value(completion:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DomainToContactFrequencyByIntentSignal(0);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_0();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v85 - v11;
  v13 = sub_231585BA4();
  v92 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v91 = &v85 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6B8, &unk_23158AC00);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_11_0();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v99 = (&v85 - v24);
  v25 = sub_2314E76F4(*v3, byte_28460FCD0);
  if (v26)
  {
    v27 = v6;
    if (qword_280D70420 == -1)
    {
LABEL_3:
      v28 = sub_231585FF4();
      __swift_project_value_buffer(v28, qword_280D72248);
      sub_2314F55F8(v3, v9);
      v29 = sub_231585FE4();
      v30 = sub_2315865E4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        OUTLINED_FUNCTION_7_13(v32, 4.8149e-34);
        v105 = v9[*(v27 + 32)];
        v33 = DomainUseCase.rawValue.getter();
        MEMORY[0x23192FF80](v33);

        OUTLINED_FUNCTION_7_10();
        if (qword_27DD5ADC8 != -1)
        {
          OUTLINED_FUNCTION_0_35(&qword_27DD5ADC8);
        }

        MEMORY[0x23192FF80](qword_27DD5B6A8, unk_27DD5B6B0);
        OUTLINED_FUNCTION_7_10();
        v105 = *v9;
        sub_231586A54();
        sub_2314F565C(v9);
        v34 = OUTLINED_FUNCTION_6_11();

        *(v31 + 4) = v34;
        _os_log_impl(&dword_231496000, v29, v30, "Unsupported time bucket range received %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x231931280](v32, -1, -1);
        OUTLINED_FUNCTION_27();
      }

      else
      {

        sub_2314F565C(v9);
      }

      v106 = sub_2315860F4();
      LOBYTE(v107) = 1;
      (a1)(&v106);
      return sub_2314A5EEC(v106, v107);
    }

LABEL_47:
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
    goto LABEL_3;
  }

  v104 = v16;
  v98 = v25;
  v87 = v12;
  v88 = a2;
  v27 = sub_2315860F4();
  v86 = v6;
  LOBYTE(v106) = *(v3 + *(v6 + 32));
  DomainUseCase.intentTypes.getter();
  v35 = sub_231585A44();
  v103 = v22;
  v89 = a1;
  v37 = v35;
  v85 = 0;

  v38 = sub_2315860F4();
  v39 = 0;
  v93 = v37;
  v40 = v37 + 64;
  v41 = 1 << *(v37 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  a1 = v42 & *(v37 + 64);
  v43 = (v41 + 63) >> 6;
  v90 = v92 + 16;
  v101 = v3;
  v102 = (v92 + 32);
  v95 = v37 + 64;
  v96 = v92 + 8;
  v9 = &unk_23158AE80;
  v44 = v104;
  v94 = v43;
  v97 = v13;
  if (!a1)
  {
LABEL_14:
    while (1)
    {
      v46 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v46 >= v43)
      {
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
        __swift_storeEnumTagSinglePayload(v22, 1, 1, v73);
        a1 = 0;
        goto LABEL_19;
      }

      a1 = *(v40 + 8 * v46);
      ++v39;
      if (a1)
      {
        v100 = v38;
        v45 = v13;
        v39 = v46;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  while (1)
  {
    v100 = v38;
    v45 = v13;
    v46 = v39;
LABEL_18:
    v47 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v48 = v47 | (v46 << 6);
    v49 = (*(v93 + 48) + 16 * v48);
    v51 = *v49;
    v50 = v49[1];
    v52 = v92;
    v53 = v91;
    (*(v92 + 16))(v91, *(v93 + 56) + *(v92 + 72) * v48, v45);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    v55 = *(v54 + 48);
    v56 = v103;
    *v103 = v51;
    *(v56 + 1) = v50;
    v22 = v56;
    v13 = v45;
    (*(v52 + 32))(&v56[v55], v53, v45);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v54);

    v38 = v100;
    v3 = v101;
    v44 = v104;
LABEL_19:
    v57 = v22;
    v58 = v99;
    sub_2314F56B8(v57, v99);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    if (__swift_getEnumTagSinglePayload(v58, 1, v59) == 1)
    {
      break;
    }

    v27 = *v58;
    v9 = v58[1];
    (*v102)(v44, v58 + *(v59 + 48), v13);
    v60 = sub_231585B44();
    if ((v98 & 0x8000000000000000) != 0)
    {
      goto LABEL_43;
    }

    if (v98 >= *(v60 + 16))
    {
      goto LABEL_44;
    }

    v3 = *(v60 + 2 * v98 + 32);

    swift_isUniquelyReferenced_nonNull_native();
    v106 = v38;
    v61 = sub_23149C888(v27, v9);
    if (__OFADD__(*(v38 + 16), (v62 & 1) == 0))
    {
      goto LABEL_45;
    }

    v13 = v61;
    v44 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
    if (sub_231586A64())
    {
      v63 = sub_23149C888(v27, v9);
      v22 = v103;
      if ((v44 & 1) != (v64 & 1))
      {
        result = sub_231586C84();
        __break(1u);
        return result;
      }

      v13 = v63;
    }

    else
    {
      v22 = v103;
    }

    if (v44)
    {

      v38 = v106;
      v65 = OUTLINED_FUNCTION_2_14();
      v66(v65);
    }

    else
    {
      v38 = v106;
      *(v106 + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v67 = (*(v38 + 48) + 16 * v13);
      *v67 = v27;
      v67[1] = v9;
      v68 = OUTLINED_FUNCTION_2_14();
      v69(v68);
      v70 = *(v38 + 16);
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        goto LABEL_46;
      }

      *(v38 + 16) = v72;
    }

    v3 = v101;
    v43 = v94;
    v40 = v95;
    v9 = &unk_23158AE80;
    if (!a1)
    {
      goto LABEL_14;
    }
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v74 = sub_231585FF4();
  __swift_project_value_buffer(v74, qword_280D72248);
  v75 = v87;
  sub_2314F55F8(v3, v87);
  v76 = sub_231585FE4();
  v77 = sub_2315865D4();
  v78 = os_log_type_enabled(v76, v77);
  v79 = v89;
  if (v78)
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    OUTLINED_FUNCTION_7_13(v81, 4.8151e-34);
    v105 = v75[*(v86 + 32)];
    v82 = DomainUseCase.rawValue.getter();
    MEMORY[0x23192FF80](v82);

    OUTLINED_FUNCTION_7_10();
    if (qword_27DD5ADC8 != -1)
    {
      OUTLINED_FUNCTION_0_35(&qword_27DD5ADC8);
    }

    MEMORY[0x23192FF80](qword_27DD5B6A8, unk_27DD5B6B0);
    OUTLINED_FUNCTION_7_10();
    v105 = *v75;
    sub_231586A54();
    sub_2314F565C(v75);
    v83 = OUTLINED_FUNCTION_6_11();

    *(v80 + 4) = v83;
    *(v80 + 12) = 2080;

    sub_2315860E4();

    v84 = OUTLINED_FUNCTION_6_11();

    *(v80 + 14) = v84;
    _os_log_impl(&dword_231496000, v76, v77, "%s value: %s", v80, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231931280](v81, -1, -1);
    OUTLINED_FUNCTION_27();
  }

  else
  {

    sub_2314F565C(v75);
  }

  v106 = v38;
  LOBYTE(v107) = 1;

  v79(&v106);
  sub_2314A5EEC(v106, v107);
}

uint64_t sub_2314F518C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F51EC(v3, v1, v2);
}

uint64_t sub_2314F51EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v28 - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[3] = a2;
  v29[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v29, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314B5064(v8);
LABEL_15:
    v20 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = (*(a3 + 24))(a2, a3);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &unk_28460FF80;
  }

  v16 = (*(a3 + 48))(a2, a3);
  if (!v16)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v21 = sub_231585FF4();
    __swift_project_value_buffer(v21, qword_280D72248);
    v22 = sub_231585FE4();
    v23 = sub_2315865E4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28[2] = v25;
      *v24 = 136315138;
      v28[1] = type metadata accessor for DomainToContactFrequencyByIntentSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B548, &qword_23158A958);
      sub_231586204();
      v26 = sub_2314A22E8();

      *(v24 + 4) = v26;
      _os_log_impl(&dword_231496000, v22, v23, "%s no intent given", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x231931280](v25, -1, -1);
      MEMORY[0x231931280](v24, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    goto LABEL_15;
  }

  v17 = v16;
  v18 = MEMORY[0x28223BE20](v16);
  v28[-2] = v12;
  v28[-1] = v18;
  sub_231543A1C(sub_2314F5804, &v28[-4], v15);
  v20 = v19;

  (*(v10 + 8))(v12, v9);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v20;
}

uint64_t sub_2314F55F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainToContactFrequencyByIntentSignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314F565C(uint64_t a1)
{
  v2 = type metadata accessor for DomainToContactFrequencyByIntentSignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314F56B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6B8, &unk_23158AC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2314F5750(uint64_t a1)
{
  result = sub_231585D34();
  if (v2 <= 0x3F)
  {
    result = sub_2314EF33C();
    if (v3 <= 0x3F)
    {
      result = sub_231585A84();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2314F5834()
{
  result = sub_231586964();
  qword_27DD5B6D0 = result;
  *algn_27DD5B6D8 = v1;
  return result;
}

uint64_t static DomainToContactFrequencySignal.signalName.getter()
{
  if (qword_27DD5ADD0 != -1)
  {
    OUTLINED_FUNCTION_0_36(&qword_27DD5ADD0);
  }

  v0 = qword_27DD5B6D0;

  return v0;
}

uint64_t DomainToContactFrequencySignal.entityID.getter()
{
  v1 = *(v0 + *(type metadata accessor for DomainToContactFrequencySignal(0) + 24));

  return v1;
}

uint64_t type metadata accessor for DomainToContactFrequencySignal(uint64_t a1)
{
  result = qword_27DD5B6E0;
  if (!qword_27DD5B6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DomainToContactFrequencySignal.id.getter()
{
  v3[8] = 0;
  *v3 = *(v0 + *(type metadata accessor for DomainToContactFrequencySignal(0) + 20));
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](v1);

  OUTLINED_FUNCTION_7_10();
  if (qword_27DD5ADD0 != -1)
  {
    OUTLINED_FUNCTION_0_36(&qword_27DD5ADD0);
  }

  MEMORY[0x23192FF80](qword_27DD5B6D0, *algn_27DD5B6D8);
  OUTLINED_FUNCTION_7_10();
  sub_231586A54();
  return *&v3[1];
}

uint64_t static DomainToContactFrequencySignal.instances(createdFor:useCases:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = MEMORY[0x277D84F90];
  v17[1] = a1;
  v17[2] = a2;
  v17[3] = 0;
  v17[4] = 0;
  v17[5] = a3;

  v3 = sub_2314F6AE8(v17);
  sub_2314C1D18(v17);
  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    sub_2314A2C74(v5, v16);
    sub_23149FD3C(v16, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B590, &qword_23158A9D8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
LABEL_11:
      sub_2314A2910(&v12, &qword_27DD5B598, &qword_23158A9E0);
      goto LABEL_12;
    }

    if (!*(&v13 + 1))
    {
      goto LABEL_11;
    }

    sub_23149FD3C(&v12, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2314F1698(0, *(v6 + 16) + 1, 1, v6);
      v6 = v9;
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_2314F1698(v7 > 1, v8 + 1, 1, v6);
      v6 = v10;
    }

    *(v6 + 16) = v8 + 1;
    sub_23149FD3C(v15, v6 + 40 * v8 + 32);
LABEL_12:
    v5 += 40;
    --v4;
  }

  while (v4);

  return v6;
}

uint64_t static DomainToContactFrequencySignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314F6AE8(v3);
}

uint64_t static DomainToContactFrequencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F6F14(v3, v1, v2);
}

uint64_t sub_2314F5CA8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v20 = a5;
  v23 = a2;
  v24 = a3;
  v7 = type metadata accessor for DomainToContactFrequencySignal(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v28 = MEMORY[0x277D84F90];
  sub_23152D5B8(0, 8, 0);
  v10 = v28;
  v11 = 0;
  v21 = sub_231585D34();
  v12 = *(*(v21 - 8) + 16);
  do
  {
    v13 = byte_28460FCD0[v11 + 32];
    v12(v9, v23, v21);
    v9[v7[5]] = v22;
    v14 = &v9[v7[6]];
    *v14 = v24;
    v14[1] = a4;
    v9[v7[7]] = v13;
    v28 = v10;
    v16 = *(v10 + 16);
    v15 = *(v10 + 24);

    if (v16 >= v15 >> 1)
    {
      sub_23152D5B8(v15 > 1, v16 + 1, 1);
      v10 = v28;
    }

    ++v11;
    v26 = v7;
    v27 = &protocol witness table for DomainToContactFrequencySignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
    sub_2314F7360(v9, boxed_opaque_existential_1);
    *(v10 + 16) = v16 + 1;
    sub_23149FD3C(&v25, v10 + 40 * v16 + 32);
    result = sub_2314F73C4(v9);
  }

  while (v11 != 8);
  *v20 = v10;
  return result;
}

uint64_t static DomainToContactFrequencySignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611BF8);
  *a1 = result;
  return result;
}

uint64_t DomainToContactFrequencySignal.value(completion:)(void (*a1)(uint64_t *), uint64_t a2)
{
  v3 = v2;
  v102 = a2;
  v5 = type metadata accessor for DomainToContactFrequencySignal(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v97 = &v89 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  MEMORY[0x28223BE20](v12 - 8);
  v96 = &v89 - v13;
  sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v99 = v15;
  v100 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_0();
  v95 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v98 = &v89 - v19;
  v20 = sub_231585AE4();
  OUTLINED_FUNCTION_4_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_11_0();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v89 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  MEMORY[0x28223BE20](v30 - 8);
  OUTLINED_FUNCTION_11_0();
  v33 = v31 - v32;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v89 - v36;
  MEMORY[0x28223BE20](v35);
  v101 = &v89 - v38;
  v39 = sub_2314E76F4(*(v3 + *(v5 + 28)), byte_28460FCD0);
  if (v40)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v41 = sub_231585FF4();
    __swift_project_value_buffer(v41, qword_280D72248);
    sub_2314F7360(v3, v9);
    v42 = sub_231585FE4();
    v43 = sub_2315865E4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_11(v45, 4.8149e-34);
      v103 = *(v9 + v46);
      v47 = DomainUseCase.rawValue.getter();
      MEMORY[0x23192FF80](v47);

      OUTLINED_FUNCTION_7_10();
      if (qword_27DD5ADD0 != -1)
      {
        OUTLINED_FUNCTION_0_36(&qword_27DD5ADD0);
      }

      MEMORY[0x23192FF80](qword_27DD5B6D0, *algn_27DD5B6D8);
      OUTLINED_FUNCTION_7_10();
      v103 = *(v9 + *(v5 + 28));
      sub_231586A54();
      sub_2314F73C4(v9);
      v48 = sub_2314A22E8();

      *(v44 + 4) = v48;
      _os_log_impl(&dword_231496000, v42, v43, "Unsupported time bucket range received %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    else
    {

      sub_2314F73C4(v9);
    }

    v104 = sub_2315860F4();
    LOBYTE(v105) = 1;
    a1(&v104);
    return sub_2314A5EEC(v104, v105);
  }

  v91 = v39;
  v92 = v33;
  v93 = a1;
  v94 = v5;
  v49 = *(v5 + 20);
  v50 = *(v3 + v49);
  v51 = 1;
  if (v50 > 0xD)
  {
    v52 = v101;
  }

  else
  {
    v52 = v101;
    if (((1 << v50) & 0x2E5C) != 0)
    {
      sub_231585AD4();
      sub_231585AC4();
      v53 = *(v22 + 8);
      v53(v26, v20);
      sub_231585AA4();
      v53(v29, v20);
      v51 = 0;
    }
  }

  __swift_storeEnumTagSinglePayload(v52, v51, 1, v20);
  v54 = v98;
  v55 = *(v99 + 16);
  v56 = v100;
  v55(v98, v3, v100);
  v57 = *(v3 + v49);
  sub_2314A1D9C(v52, v37, &qword_27DD5B4D0, &qword_23158A5D0);
  v58 = DomainToContactFrequencySignal.id.getter();
  v90 = v59;
  v60 = v95;
  v55(v95, v54, v56);
  LOBYTE(v104) = v57;
  v61 = DomainUseCase.intentTypes.getter();
  v62 = v96;
  if (v57 > 0xD)
  {
    goto LABEL_30;
  }

  if (((1 << v57) & 0xA95) == 0)
  {
    if (((1 << v57) & 0x3060) != 0)
    {
      v63 = v58;
      v64 = MEMORY[0x277D5FFB8];
      goto LABEL_18;
    }

LABEL_30:
    v63 = v58;
    v71 = sub_231585D74();
    v69 = v62;
    v70 = 1;
    goto LABEL_19;
  }

  v63 = v58;
  v64 = MEMORY[0x277D5FFC0];
LABEL_18:
  v66 = *v64;
  v67 = sub_231585D74();
  OUTLINED_FUNCTION_8();
  (*(v68 + 104))(v62, v66, v67);
  v69 = v62;
  v70 = 0;
  v71 = v67;
LABEL_19:
  __swift_storeEnumTagSinglePayload(v69, v70, 1, v71);
  v72 = v92;
  if (v57 - 1 > 0xA)
  {
    v73 = 2;
  }

  else
  {
    v73 = byte_23158ACEA[(v57 - 1)];
  }

  sub_2314A1D9C(v37, v92, &qword_27DD5B4D0, &qword_23158A5D0);
  v74 = sub_2314A0DE8(v60, v61, v62, v73, v72, v63, v90, MEMORY[0x277D84F90], 0);
  sub_2314A2910(v37, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v99 + 8))(v98, v100);
  v75 = sub_23156D02C(v91, v74);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v76 = sub_231585FF4();
  __swift_project_value_buffer(v76, qword_280D72248);
  v77 = v97;
  sub_2314F7360(v3, v97);

  v78 = sub_231585FE4();
  v79 = sub_2315865D4();

  v80 = os_log_type_enabled(v78, v79);
  v81 = v94;
  if (v80)
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_11(v83, 4.8151e-34);
    v103 = *(v77 + v84);
    v85 = DomainUseCase.rawValue.getter();
    MEMORY[0x23192FF80](v85);

    OUTLINED_FUNCTION_7_10();
    if (qword_27DD5ADD0 != -1)
    {
      OUTLINED_FUNCTION_0_36(&qword_27DD5ADD0);
    }

    MEMORY[0x23192FF80](qword_27DD5B6D0, *algn_27DD5B6D8);
    OUTLINED_FUNCTION_7_10();
    v103 = *(v77 + *(v81 + 28));
    sub_231586A54();
    sub_2314F73C4(v77);
    v86 = sub_2314A22E8();

    *(v82 + 4) = v86;
    *(v82 + 12) = 2080;
    sub_2315860E4();
    v87 = sub_2314A22E8();

    *(v82 + 14) = v87;
    _os_log_impl(&dword_231496000, v78, v79, "%s value: %s", v82, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314F73C4(v77);
  }

  v88 = v101;
  v104 = v75;
  LOBYTE(v105) = 1;
  v93(&v104);
  sub_2314A5EEC(v104, v105);
  return sub_2314A2910(v88, &qword_27DD5B4D0, &qword_23158A5D0);
}

uint64_t sub_2314F6868(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F6F14(v3, v1, v2);
}

uint64_t sub_2314F68B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v13[3] = &type metadata for NoParameters;
  v13[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v13, v2);
  v3 = sub_231585D34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
  sub_2314A2910(v2, &qword_27DD5B008, &unk_23158A5C0);
  if (EnumTagSinglePayload != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v5 = sub_231585FF4();
    __swift_project_value_buffer(v5, qword_280D72248);
    v6 = sub_231585FE4();
    v7 = sub_2315865E4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12[2] = v9;
      *v8 = 136315138;
      v12[1] = type metadata accessor for DomainToContactFrequencySignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6F0, &qword_23158ACD8);
      sub_231586204();
      v10 = sub_2314A22E8();

      *(v8 + 4) = v10;
      _os_log_impl(&dword_231496000, v6, v7, "%s no entityName given", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2314F6AE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26[-1] - v3;
  v5 = sub_231585D34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = &type metadata for SignalComputationContext;
  v28[4] = &protocol witness table for SignalComputationContext;
  v9 = swift_allocObject();
  v28[0] = v9;
  v10 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v10;
  v9[3] = *(a1 + 32);
  sub_2314B5008(a1, v27);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v28, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2314A2910(v4, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v11 = *(a1 + 40);
  (*(v6 + 32))(v8, v4, v5);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &unk_2846104A0;
  }

  v27[0] = *(a1 + 8);
  v13 = *(&v27[0] + 1);
  if (!*(&v27[0] + 1))
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v18 = sub_231585FF4();
    __swift_project_value_buffer(v18, qword_280D72248);
    v19 = sub_231585FE4();
    v20 = sub_2315865E4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26[0] = v22;
      *v21 = 136315138;
      v26[2] = type metadata accessor for DomainToContactFrequencySignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6F0, &qword_23158ACD8);
      sub_231586204();
      v23 = sub_2314A22E8();

      *(v21 + 4) = v23;
      _os_log_impl(&dword_231496000, v19, v20, "%s no entityName given", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x231931280](v22, -1, -1);
      MEMORY[0x231931280](v21, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    goto LABEL_15;
  }

  v14 = *&v27[0];

  sub_2314A1D9C(v27, v26, &qword_27DD5B120, &qword_23158ACE0);

  MEMORY[0x28223BE20](v15);
  *(&v25 - 4) = v8;
  *(&v25 - 3) = v14;
  *(&v25 - 2) = v13;
  sub_231543A1C(sub_2314F74F0, (&v25 - 6), v12);
  v17 = v16;

  (*(v6 + 8))(v8, v5);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v17;
}

uint64_t sub_2314F6F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[3] = a2;
  v35[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v35, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314A2910(v8, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v22 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = (*(a3 + 24))(a2, a3);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &unk_2846104A0;
  }

  (*(a3 + 32))(&v31, a2, a3);
  v16 = v32;
  if (!v32)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v23 = sub_231585FF4();
    __swift_project_value_buffer(v23, qword_280D72248);
    v24 = sub_231585FE4();
    v25 = sub_2315865E4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v31 = v27;
      *v26 = 136315138;
      v30[2] = type metadata accessor for DomainToContactFrequencySignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6F0, &qword_23158ACD8);
      sub_231586204();
      v28 = sub_2314A22E8();

      *(v26 + 4) = v28;
      _os_log_impl(&dword_231496000, v24, v25, "%s no entityName given", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x231931280](v27, -1, -1);
      MEMORY[0x231931280](v26, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    goto LABEL_15;
  }

  v17 = v33;
  v18 = v34;
  v19 = v31;

  sub_2314A0D38(v19, v16, v17, v18);
  MEMORY[0x28223BE20](v20);
  v30[-4] = v12;
  v30[-3] = v17;
  v30[-2] = v18;
  sub_231543A1C(sub_2314F74D0, &v30[-6], v15);
  v22 = v21;

  (*(v10 + 8))(v12, v9);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v35);
  return v22;
}

uint64_t sub_2314F7360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainToContactFrequencySignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314F73C4(uint64_t a1)
{
  v2 = type metadata accessor for DomainToContactFrequencySignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314F7448(uint64_t a1)
{
  result = sub_231585D34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2314F751C()
{
  result = sub_231586964();
  qword_27DD5B6F8 = result;
  unk_27DD5B700 = v1;
  return result;
}

uint64_t static DomainToContactRecencyRankSignal.signalName.getter()
{
  if (qword_27DD5ADD8 != -1)
  {
    OUTLINED_FUNCTION_0_37(&qword_27DD5ADD8);
  }

  v0 = qword_27DD5B6F8;

  return v0;
}

uint64_t DomainToContactRecencyRankSignal.entityID.getter()
{
  v1 = *(v0 + *(type metadata accessor for DomainToContactRecencyRankSignal(0) + 24));

  return v1;
}

uint64_t type metadata accessor for DomainToContactRecencyRankSignal(uint64_t a1)
{
  result = qword_27DD5B708;
  if (!qword_27DD5B708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DomainToContactRecencyRankSignal.entityID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DomainToContactRecencyRankSignal(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t DomainToContactRecencyRankSignal.id.getter()
{
  type metadata accessor for DomainToContactRecencyRankSignal(0);
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5ADD8 != -1)
  {
    OUTLINED_FUNCTION_0_37(&qword_27DD5ADD8);
  }

  MEMORY[0x23192FF80](qword_27DD5B6F8, unk_27DD5B700);
  return v1;
}

uint64_t static DomainToContactRecencyRankSignal.instances(createdFor:useCases:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = MEMORY[0x277D84F90];
  v17[1] = a1;
  v17[2] = a2;
  v17[3] = 0;
  v17[4] = 0;
  v17[5] = a3;

  v3 = sub_2314F83D8(v17);
  sub_2314C1D18(v17);
  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    sub_2314A2C74(v5, v16);
    sub_23149FD3C(v16, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B590, &qword_23158A9D8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
LABEL_11:
      sub_2314A2910(&v12, &qword_27DD5B598, &qword_23158A9E0);
      goto LABEL_12;
    }

    if (!*(&v13 + 1))
    {
      goto LABEL_11;
    }

    sub_23149FD3C(&v12, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2314F1698(0, *(v6 + 16) + 1, 1, v6);
      v6 = v9;
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_2314F1698(v7 > 1, v8 + 1, 1, v6);
      v6 = v10;
    }

    *(v6 + 16) = v8 + 1;
    sub_23149FD3C(v15, v6 + 40 * v8 + 32);
LABEL_12:
    v5 += 40;
    --v4;
  }

  while (v4);

  return v6;
}

uint64_t static DomainToContactRecencyRankSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314F83D8(v3);
}

uint64_t static DomainToContactRecencyRankSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F8804(v3, v1, v2);
}

double sub_2314F79C8@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = type metadata accessor for DomainToContactRecencyRankSignal(0);
  a5[3] = v10;
  a5[4] = &protocol witness table for DomainToContactRecencyRankSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  v12 = sub_231585D34();
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, a2, v12);
  *(boxed_opaque_existential_1 + *(v10 + 20)) = v9;
  v13 = (boxed_opaque_existential_1 + *(v10 + 24));
  *v13 = a3;
  v13[1] = a4;

  return result;
}

uint64_t static DomainToContactRecencyRankSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611C20);
  *a1 = result;
  return result;
}

uint64_t DomainToContactRecencyRankSignal.value(completion:)(void (*a1)(unint64_t *), uint64_t a2)
{
  v3 = v2;
  v62 = a2;
  v63 = a1;
  v4 = type metadata accessor for DomainToContactRecencyRankSignal(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_12();
  v61 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = &v58 - v8;
  v9 = sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_12();
  v59 = v13;
  v14 = sub_231585AE4();
  OUTLINED_FUNCTION_4_1();
  v16 = v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v58 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v58 - v27;
  v64 = v4;
  v65 = &v58 - v27;
  v29 = *(v4 + 20);
  v30 = *(v3 + v29);
  v31 = 1;
  if (v30 <= 0xD && ((1 << v30) & 0x2E5C) != 0)
  {
    sub_231585AD4();
    sub_231585AC4();
    v32 = *(v16 + 8);
    v32(v20, v14);
    sub_231585AA4();
    v32(v22, v14);
    v28 = v65;
    v31 = 0;
  }

  __swift_storeEnumTagSinglePayload(v28, v31, 1, v14);
  v33 = v59;
  (*(v11 + 16))(v59, v3, v9);
  LOBYTE(v67) = *(v3 + v29);
  v34 = DomainUseCase.intentTypes.getter();
  v35 = *(v3 + v29);
  v36 = v61;
  if (v35 <= 0xD)
  {
    if (((1 << v35) & 0xA95) != 0)
    {
      v37 = MEMORY[0x277D5FFC0];
LABEL_9:
      v38 = *v37;
      v39 = sub_231585D74();
      OUTLINED_FUNCTION_8();
      v41 = v60;
      (*(v40 + 104))(v60, v38, v39);
      v42 = v41;
      v43 = 0;
      v44 = v39;
      goto LABEL_10;
    }

    if (((1 << v35) & 0x3060) != 0)
    {
      v37 = MEMORY[0x277D5FFB8];
      goto LABEL_9;
    }
  }

  v44 = sub_231585D74();
  v41 = v60;
  v42 = v60;
  v43 = 1;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v42, v43, 1, v44);
  if (*(v3 + v29) - 1 >= 0xB)
  {
    v45 = 2;
  }

  else
  {
    v45 = byte_23158AD82[(*(v3 + v29) - 1)];
  }

  sub_2314A1D9C(v28, v26, &qword_27DD5B4D0, &qword_23158A5D0);
  v46 = DomainToContactRecencyRankSignal.id.getter();
  v48 = sub_2314A0DE8(v33, v34, v41, v45, v26, v46, v47, MEMORY[0x277D84F90], 0);
  v49 = sub_23156D520(v48);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v50 = sub_231585FF4();
  __swift_project_value_buffer(v50, qword_280D72248);
  sub_2314F8C50(v3, v36);

  v51 = sub_231585FE4();
  v52 = sub_2315865D4();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v53 = 136315394;
    v66 = *(v36 + *(v64 + 20));
    v67 = DomainUseCase.rawValue.getter();
    v68 = v54;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_27DD5ADD8 != -1)
    {
      OUTLINED_FUNCTION_0_37(&qword_27DD5ADD8);
    }

    MEMORY[0x23192FF80](qword_27DD5B6F8, unk_27DD5B700);
    sub_2314F8CB4(v36);
    v55 = sub_2314A22E8();

    *(v53 + 4) = v55;
    *(v53 + 12) = 2080;
    sub_2315860E4();
    v56 = sub_2314A22E8();

    *(v53 + 14) = v56;
    _os_log_impl(&dword_231496000, v51, v52, "%s value: %s", v53, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314F8CB4(v36);
  }

  v67 = v49;
  LOBYTE(v68) = 1;
  v63(&v67);
  sub_2314A5EEC(v67, v68);
  return sub_2314A2910(v65, &qword_27DD5B4D0, &qword_23158A5D0);
}

uint64_t sub_2314F8158(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F8804(v3, v1, v2);
}

uint64_t sub_2314F81A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v13[3] = &type metadata for NoParameters;
  v13[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v13, v2);
  v3 = sub_231585D34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
  sub_2314A2910(v2, &qword_27DD5B008, &unk_23158A5C0);
  if (EnumTagSinglePayload != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v5 = sub_231585FF4();
    __swift_project_value_buffer(v5, qword_280D72248);
    v6 = sub_231585FE4();
    v7 = sub_2315865E4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12[2] = v9;
      *v8 = 136315138;
      v12[1] = type metadata accessor for DomainToContactRecencyRankSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B718, &unk_23158AD70);
      sub_231586204();
      v10 = sub_2314A22E8();

      *(v8 + 4) = v10;
      _os_log_impl(&dword_231496000, v6, v7, "%s no entityName given", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2314F83D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25[-1] - v3;
  v5 = sub_231585D34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = &type metadata for SignalComputationContext;
  v27[4] = &protocol witness table for SignalComputationContext;
  v9 = swift_allocObject();
  v27[0] = v9;
  v10 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v10;
  v9[3] = *(a1 + 32);
  sub_2314B5008(a1, v26);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v27, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2314A2910(v4, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v16 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v11 = *(a1 + 40);
  (*(v6 + 32))(v8, v4, v5);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &unk_2846104C8;
  }

  v26[0] = *(a1 + 8);
  v13 = *(&v26[0] + 1);
  if (!*(&v26[0] + 1))
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v17 = sub_231585FF4();
    __swift_project_value_buffer(v17, qword_280D72248);
    v18 = sub_231585FE4();
    v19 = sub_2315865E4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25[0] = v21;
      *v20 = 136315138;
      v25[2] = type metadata accessor for DomainToContactRecencyRankSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B718, &unk_23158AD70);
      sub_231586204();
      v22 = sub_2314A22E8();

      *(v20 + 4) = v22;
      _os_log_impl(&dword_231496000, v18, v19, "%s no entityName given", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x231931280](v21, -1, -1);
      MEMORY[0x231931280](v20, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    goto LABEL_15;
  }

  v14 = *&v26[0];

  sub_2314A1D9C(v26, v25, &qword_27DD5B120, &qword_23158ACE0);

  MEMORY[0x28223BE20](v15);
  *(&v24 - 4) = v8;
  *(&v24 - 3) = v14;
  *(&v24 - 2) = v13;
  v16 = sub_2314DCD00(sub_2314F8D58, (&v24 - 6), v12);

  (*(v6 + 8))(v8, v5);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v16;
}

uint64_t sub_2314F8804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v29 - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = a2;
  v34[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v34, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314A2910(v8, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = (*(a3 + 24))(a2, a3);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &unk_2846104C8;
  }

  (*(a3 + 32))(&v30, a2, a3);
  v16 = v31;
  if (!v31)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v22 = sub_231585FF4();
    __swift_project_value_buffer(v22, qword_280D72248);
    v23 = sub_231585FE4();
    v24 = sub_2315865E4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      v29[2] = type metadata accessor for DomainToContactRecencyRankSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B718, &unk_23158AD70);
      sub_231586204();
      v27 = sub_2314A22E8();

      *(v25 + 4) = v27;
      _os_log_impl(&dword_231496000, v23, v24, "%s no entityName given", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x231931280](v26, -1, -1);
      MEMORY[0x231931280](v25, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    goto LABEL_15;
  }

  v17 = v32;
  v18 = v33;
  v19 = v30;

  sub_2314A0D38(v19, v16, v17, v18);
  MEMORY[0x28223BE20](v20);
  v29[-4] = v12;
  v29[-3] = v17;
  v29[-2] = v18;
  v21 = sub_2314DCD00(sub_2314F8D38, &v29[-6], v15);

  (*(v10 + 8))(v12, v9);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v21;
}

uint64_t sub_2314F8C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainToContactRecencyRankSignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314F8CB4(uint64_t a1)
{
  v2 = type metadata accessor for DomainToContactRecencyRankSignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314F8D84()
{
  result = sub_231586964();
  qword_27DD5B720 = result;
  *algn_27DD5B728 = v1;
  return result;
}

uint64_t static DomainToContactRecencySignal.signalName.getter()
{
  if (qword_27DD5ADE0 != -1)
  {
    OUTLINED_FUNCTION_0_38(&qword_27DD5ADE0);
  }

  v0 = qword_27DD5B720;

  return v0;
}

uint64_t DomainToContactRecencySignal.entityID.getter()
{
  v1 = *(v0 + *(type metadata accessor for DomainToContactRecencySignal(0) + 28));

  return v1;
}

uint64_t type metadata accessor for DomainToContactRecencySignal(uint64_t a1)
{
  result = qword_27DD5B730;
  if (!qword_27DD5B730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t DomainToContactRecencySignal.id.getter()
{
  type metadata accessor for DomainToContactRecencySignal(0);
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5ADE0 != -1)
  {
    OUTLINED_FUNCTION_0_38(&qword_27DD5ADE0);
  }

  MEMORY[0x23192FF80](qword_27DD5B720, *algn_27DD5B728);
  return v1;
}

uint64_t static DomainToContactRecencySignal.instances(createdFor:useCases:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = MEMORY[0x277D84F90];
  v17[1] = a1;
  v17[2] = a2;
  v17[3] = 0;
  v17[4] = 0;
  v17[5] = a3;

  v3 = sub_2314F9FDC(v17);
  sub_2314C1D18(v17);
  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    sub_2314A2C74(v5, v16);
    sub_23149FD3C(v16, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B590, &qword_23158A9D8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
LABEL_11:
      sub_2314A2910(&v12, &qword_27DD5B598, &qword_23158A9E0);
      goto LABEL_12;
    }

    if (!*(&v13 + 1))
    {
      goto LABEL_11;
    }

    sub_23149FD3C(&v12, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2314F1698(0, *(v6 + 16) + 1, 1, v6);
      v6 = v9;
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_2314F1698(v7 > 1, v8 + 1, 1, v6);
      v6 = v10;
    }

    *(v6 + 16) = v8 + 1;
    sub_23149FD3C(v15, v6 + 40 * v8 + 32);
LABEL_12:
    v5 += 40;
    --v4;
  }

  while (v4);

  return v6;
}

uint64_t static DomainToContactRecencySignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314F9FDC(v3);
}

uint64_t static DomainToContactRecencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314FA408(v3, v1, v2);
}

double sub_2314F91A0@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = type metadata accessor for DomainToContactRecencySignal(0);
  a5[3] = v10;
  a5[4] = &protocol witness table for DomainToContactRecencySignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  v12 = sub_231585D34();
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, a2, v12);
  *(boxed_opaque_existential_1 + v10[5]) = v9;
  v13 = (boxed_opaque_existential_1 + v10[6]);
  *v13 = sub_2314E03E4;
  v13[1] = 0;
  v14 = (boxed_opaque_existential_1 + v10[7]);
  *v14 = a3;
  v14[1] = a4;

  return result;
}

uint64_t static DomainToContactRecencySignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611C48);
  *a1 = result;
  return result;
}

uint64_t DomainToContactRecencySignal.value(completion:)(void (*a1)(unint64_t *), uint64_t a2)
{
  v3 = v2;
  v75 = a2;
  v76 = a1;
  v4 = type metadata accessor for DomainToContactRecencySignal(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  v77 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v70 - v8;
  sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v81 = v10;
  v82 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_0();
  v79 = (v11 - v12);
  MEMORY[0x28223BE20](v13);
  v80 = &v70 - v14;
  v15 = sub_231585AE4();
  OUTLINED_FUNCTION_4_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11_0();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v70 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_11_0();
  v73 = v26 - v27;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v70 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v70 - v32;
  v78 = v4;
  v34 = *(v4 + 20);
  v35 = *(v3 + v34);
  v36 = 1;
  v83 = &v70 - v32;
  if (v35 <= 0xD && ((1 << v35) & 0x2E5C) != 0)
  {
    sub_231585AD4();
    sub_231585AC4();
    v37 = *(v17 + 8);
    v37(v21, v15);
    sub_231585AA4();
    v37(v24, v15);
    v33 = v83;
    v36 = 0;
  }

  __swift_storeEnumTagSinglePayload(v33, v36, 1, v15);
  v38 = v80;
  v39 = *(v81 + 16);
  v40 = v82;
  v39(v80, v3, v82);
  v41 = *(v3 + v34);
  sub_2314A1D9C(v33, v31, &qword_27DD5B4D0, &qword_23158A5D0);
  v42 = DomainToContactRecencySignal.id.getter();
  v71 = v43;
  v72 = v42;
  v39(v79, v38, v40);
  LOBYTE(v85) = v41;
  v44 = DomainUseCase.intentTypes.getter();
  v45 = v74;
  if (v41 > 0xD)
  {
    goto LABEL_20;
  }

  if (((1 << v41) & 0xA95) != 0)
  {
    v46 = *MEMORY[0x277D5FFC0];
    v47 = sub_231585D74();
    OUTLINED_FUNCTION_8();
    (*(v48 + 104))(v45, v46, v47);
    v49 = v45;
    v50 = 0;
    v51 = v47;
    goto LABEL_9;
  }

  if (((1 << v41) & 0x3060) != 0)
  {
    v52 = *MEMORY[0x277D5FFB8];
    v53 = sub_231585D74();
    OUTLINED_FUNCTION_8();
    (*(v54 + 104))(v45, v52, v53);
    v49 = v45;
    v50 = 0;
    v51 = v53;
  }

  else
  {
LABEL_20:
    v51 = sub_231585D74();
    v49 = v45;
    v50 = 1;
  }

LABEL_9:
  __swift_storeEnumTagSinglePayload(v49, v50, 1, v51);
  if (v41 - 1 > 0xA)
  {
    v55 = 2;
  }

  else
  {
    v55 = byte_23158AE0A[(v41 - 1)];
  }

  v56 = v77;
  v57 = v73;
  sub_2314A1D9C(v31, v73, &qword_27DD5B4D0, &qword_23158A5D0);
  v58 = sub_2314A0DE8(v79, v44, v45, v55, v57, v72, v71, MEMORY[0x277D84F90], 0);
  sub_2314A2910(v31, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v81 + 8))(v80, v82);
  sub_2314A4360(v58);
  v60 = v59;

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v61 = sub_231585FF4();
  __swift_project_value_buffer(v61, qword_280D72248);
  sub_2314FA854(v3, v56);

  v62 = sub_231585FE4();
  v63 = sub_2315865D4();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *v64 = 136315394;
    v84 = *(v56 + *(v78 + 20));
    v85 = DomainUseCase.rawValue.getter();
    v86 = v65;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_27DD5ADE0 != -1)
    {
      OUTLINED_FUNCTION_0_38(&qword_27DD5ADE0);
    }

    MEMORY[0x23192FF80](qword_27DD5B720, *algn_27DD5B728);
    v66 = v85;
    sub_2314FA8B8(v56);
    sub_2314A22E8();
    OUTLINED_FUNCTION_6_3();

    *(v64 + 4) = v66;
    *(v64 + 12) = 2080;
    sub_2315860E4();
    v67 = sub_2314A22E8();

    *(v64 + 14) = v67;
    _os_log_impl(&dword_231496000, v62, v63, "%s value: %s", v64, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314FA8B8(v56);
  }

  v68 = v83;
  v85 = v60;
  LOBYTE(v86) = 1;
  v76(&v85);
  sub_2314A5EEC(v85, v86);
  return sub_2314A2910(v68, &qword_27DD5B4D0, &qword_23158A5D0);
}

void DomainToContactRecencySignal.derive(from:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v2 + *(type metadata accessor for DomainToContactRecencySignal(0) + 24);
  v7 = *v6;
  v8 = *(v6 + 8);
  switch(v5)
  {
    case 1:
      swift_retain_n();
      sub_2314EA928(v4, v7, v8);
      OUTLINED_FUNCTION_6_3();

      *a2 = v2;
      goto LABEL_38;
    case 2:
      v10 = OUTLINED_FUNCTION_6_1(*&v4);
      if (!(v12 ^ v13 | v11))
      {
        goto LABEL_44;
      }

      if (v10 <= -9.22337204e18)
      {
        goto LABEL_45;
      }

      if (v10 >= 9.22337204e18)
      {
        goto LABEL_46;
      }

      v14 = v10;
      if ((v10 & 0x8000000000000000) == 0)
      {

        v7(v15);
        OUTLINED_FUNCTION_6_3();

        if (v8 < v14)
        {
          v14 = -1;
        }

        else
        {
          v14 = v8 - v14;
        }
      }

      *a2 = v14;
      goto LABEL_38;
    case 3:
      v39 = a2;
      v40 = *v6;
      v38 = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      v16 = sub_231586AC4();
      v17 = v16;
      v18 = v4 + 64;
      v19 = 1 << *(v4 + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      i = v20 & *(v4 + 64);
      v22 = (v19 + 63) >> 6;
      v42 = v16 + 64;
      swift_retain_n();
      v23 = 0;
      v41 = v4;
      if (i)
      {
        goto LABEL_19;
      }

      break;
    default:
      if ((v4 & 0x8000000000000000) == 0)
      {

        v7(v9);
        OUTLINED_FUNCTION_6_3();

        if (v8 < v4)
        {
          v4 = -1;
        }

        else
        {
          v4 = v8 - v4;
        }
      }

      *a2 = v4;
      goto LABEL_38;
  }

LABEL_20:
  v25 = v23;
  do
  {
    v23 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v23 >= v22)
    {

      LOBYTE(v5) = v38;
      a2 = v39;
      *v39 = v17;
LABEL_38:
      *(a2 + 8) = v5;
      return;
    }

    v26 = *(v18 + 8 * v23);
    ++v25;
  }

  while (!v26);
  v24 = __clz(__rbit64(v26));
  for (i = (v26 - 1) & v26; ; i &= i - 1)
  {
    v27 = v24 | (v23 << 6);
    v28 = OUTLINED_FUNCTION_6_1(*(*(v4 + 56) + 8 * v27));
    if (!(v12 ^ v13 | v11))
    {
      break;
    }

    if (v28 <= -9.22337204e18)
    {
      goto LABEL_41;
    }

    if (v28 >= 9.22337204e18)
    {
      goto LABEL_42;
    }

    v29 = (*(v4 + 48) + 16 * v27);
    v30 = *v29;
    v31 = v29[1];
    v32 = v28;

    if ((v32 & 0x8000000000000000) == 0)
    {
      v34 = v40(v33);
      if (v34 < v32)
      {
        v32 = -1;
      }

      else
      {
        v32 = v34 - v32;
      }
    }

    *(v42 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v35 = (v17[6] + 16 * v27);
    *v35 = v30;
    v35[1] = v31;
    *(v17[7] + 8 * v27) = v32;
    v36 = v17[2];
    v13 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v13)
    {
      goto LABEL_43;
    }

    v17[2] = v37;
    v4 = v41;
    if (!i)
    {
      goto LABEL_20;
    }

LABEL_19:
    v24 = __clz(__rbit64(i));
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}