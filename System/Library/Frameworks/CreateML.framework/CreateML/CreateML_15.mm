void sub_237B24DE0()
{
  OUTLINED_FUNCTION_74();
  v40 = v2;
  v41 = v0;
  v4 = v3;
  v42[1] = *MEMORY[0x277D85DE8];
  v39 = sub_237C05C2C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v12 = OUTLINED_FUNCTION_20(v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_0();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v23);
  v25 = &v38 - v24;
  sub_237A6FAB8(v4, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_237A6FB28(v14);
    v26 = NSTemporaryDirectory();
    sub_237C086EC();

    sub_237C059AC();

    sub_237C05C1C();
    sub_237C05C0C();
    (*(v6 + 8))(v10, v39);
    sub_237C05A2C();

    v27 = [objc_opt_self() defaultManager];
    v28 = sub_237C059EC();
    v42[0] = 0;
    v29 = [v27 createDirectoryAtURL:v28 withIntermediateDirectories:0 attributes:0 error:v42];

    if (v29)
    {
      v30 = *(v17 + 8);
      v31 = v42[0];
      v30(v1, v15);
      (*(v17 + 32))(v40, v21, v15);
    }

    else
    {
      v34 = v42[0];
      sub_237C0593C();

      swift_willThrow();
      v35 = *(v17 + 8);
      v35(v21, v15);
      v35(v1, v15);
    }
  }

  else
  {
    v32 = *(v17 + 32);
    v32(v25, v14, v15);
    if (sub_237C059CC())
    {
      v33 = OUTLINED_FUNCTION_11_37();
      (v32)(v33);
    }

    else
    {
      OUTLINED_FUNCTION_10_38();
      sub_2379E8AF0();
      v36 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
      *v37 = 0xD000000000000037;
      v37[1] = v25;
      OUTLINED_FUNCTION_52(v36, v37);
      (*(v17 + 8))(v25, v15);
    }
  }

  OUTLINED_FUNCTION_73();
}

void sub_237B251D0()
{
  OUTLINED_FUNCTION_74();
  v46 = v0;
  v3 = v2;
  v61[1] = *MEMORY[0x277D85DE8];
  v4 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v60 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v49 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D288, &qword_237C134B0);
  v13 = OUTLINED_FUNCTION_20(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v14);
  v56 = &v45 - v15;
  v57 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  v53 = *MEMORY[0x277CBF9C0];
  v16 = v3 + 64;
  v17 = 1 << *(v3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v3 + 64);
  v47 = (v17 + 63) >> 6;
  v48 = v6 + 16;
  v59 = (v6 + 32);
  v50 = v6;
  v51 = v3;
  v55 = (v6 + 8);

  v20 = 0;
  v58 = v1;
  v52 = v3 + 64;
  v54 = v4;
  if (!v19)
  {
    do
    {
LABEL_5:
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
      }

      if (v21 >= v47)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D290, &qword_237C134B8);
        __swift_storeEnumTagSinglePayload(v1, 1, 1, v42);
        v19 = 0;
        goto LABEL_10;
      }

      v19 = *(v16 + 8 * v21);
      ++v20;
    }

    while (!v19);
    v20 = v21;
    goto LABEL_9;
  }

  while (1)
  {
    v21 = v20;
LABEL_9:
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v23 = v22 | (v21 << 6);
    v25 = v50;
    v24 = v51;
    v26 = v49;
    (*(v50 + 16))(v49, *(v51 + 48) + *(v50 + 72) * v23, v4);
    v27 = *(*(v24 + 56) + 8 * v23);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D290, &qword_237C134B8);
    v29 = *(v28 + 48);
    v30 = *(v25 + 32);
    v1 = v58;
    v30(v58, v26, v4);
    *(v1 + v29) = v27;
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v28);
    v31 = v27;
LABEL_10:
    v32 = v56;
    sub_237B25AC8(v1, v56);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D290, &qword_237C134B8);
    if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
    {

      goto LABEL_20;
    }

    v34 = *(v32 + *(v33 + 48));
    (*v59)(v60, v32, v4);
    v35 = [v34 colorSpace];
    if (!v35)
    {
      OUTLINED_FUNCTION_10_38();
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
      *v43 = 0xD00000000000001ELL;
      *(v43 + 8) = v32;
      *(v43 + 16) = 0u;
      *(v43 + 32) = 0u;
      *(v43 + 48) = 2;
      swift_willThrow();

      goto LABEL_19;
    }

    v36 = v35;
    v37 = sub_237C059EC();
    type metadata accessor for CIImageRepresentationOption(0);
    sub_237B25B38(&qword_27DE9A980, type metadata accessor for CIImageRepresentationOption, &unk_237C0B47C);
    sub_237C085AC();
    v38 = sub_237C0855C();

    v61[0] = 0;
    v39 = [v57 writePNGRepresentationOfImage:v34 toURL:v37 format:v53 colorSpace:v36 options:v38 error:v61];

    if (!v39)
    {
      break;
    }

    v40 = *v55;
    v41 = v61[0];
    v4 = v54;
    v40(v60, v54);

    v1 = v58;
    v16 = v52;
    if (!v19)
    {
      goto LABEL_5;
    }
  }

  v44 = v61[0];
  sub_237C0593C();

  swift_willThrow();

  v34 = v36;
  v4 = v54;
LABEL_19:

  (*v55)(v60, v4);
LABEL_20:
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B2572C(uint64_t a1)
{
  if (!a1)
  {
    return 0x43207265746E6543;
  }

  v1 = 0x694620656C616353;
  v2 = 0xD000000000000016;
  v3 = 0x6669636570736E55;
  if (a1 == 1)
  {
    v3 = 0x694620656C616353;
  }

  if (a1 != 257)
  {
    v2 = v3;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1 == 258)
  {
    return 0xD000000000000017;
  }

  else
  {
    return v1;
  }
}

uint64_t type metadata accessor for MLStyleTransfer.DataSource(uint64_t a1)
{
  result = qword_27DE9D268;
  if (!qword_27DE9D268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B25850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLStyleTransfer.DataSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B258B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_237B25908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_237B2596C(uint64_t a1)
{
  sub_237B25A44(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_237C05ADC();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout3();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_237B25A44(uint64_t a1)
{
  if (!qword_27DE9D278)
  {
    sub_237C05ADC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9D280, &qword_237C13488);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DE9D278);
    }
  }
}

uint64_t sub_237B25AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D288, &qword_237C134B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B25B38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_13_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t MLStyleTransfer.ModelParameters.init(algorithm:validation:maxIterations:textelDensity:styleStrength:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v11 = *a1;
  v12 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  *&a6[v12[6]] = 1;
  a6[v12[10]] = 0;
  *a6 = v11;
  result = sub_237B25CB8(a2, &a6[v12[5]]);
  *&a6[v12[7]] = a3;
  *&a6[v12[8]] = a4;
  *&a6[v12[9]] = a5;
  return result;
}

uint64_t type metadata accessor for MLStyleTransfer.ModelParameters(uint64_t a1)
{
  result = qword_27DE9D2A8;
  if (!qword_27DE9D2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B25CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B25D1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C940, &qword_237C136C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B680;
  OUTLINED_FUNCTION_9_40();
  *(v2 + 32) = v3;
  *(v2 + 40) = 0xE90000000000006DLL;
  v4 = 7237219;
  if (*v0)
  {
    v4 = 0x6574694C6E6E63;
  }

  v5 = 0xE300000000000000;
  if (*v0)
  {
    v5 = 0xE700000000000000;
  }

  *(v2 + 48) = v4;
  *(v2 + 56) = v5;
  strcpy((v2 + 64), "Textel Density");
  *(v2 + 79) = -18;
  type metadata accessor for MLStyleTransfer.ModelParameters(0);
  *(inited + 80) = sub_237C0924C();
  *(inited + 88) = v6;
  strcpy((inited + 96), "Style Strength");
  *(inited + 111) = -18;
  OUTLINED_FUNCTION_2_63();
  *(inited + 112) = sub_237C0924C();
  *(inited + 120) = v7;
  return sub_237C085AC();
}

uint64_t sub_237B25E7C(uint64_t result)
{
  if ((result - 1) > 9)
  {
    OUTLINED_FUNCTION_10_39();

    OUTLINED_FUNCTION_6_47();
    v1 = OUTLINED_FUNCTION_1_63();
    MEMORY[0x2383DC360](v1);

    MEMORY[0x2383DC360](8236, 0xE200000000000000);
    v2 = OUTLINED_FUNCTION_1_63();
    MEMORY[0x2383DC360](v2);

    MEMORY[0x2383DC360](11869, 0xE200000000000000);
    sub_2379E8AF0();
    v3 = swift_allocError();
    return OUTLINED_FUNCTION_4_54(v3, v4);
  }

  return result;
}

uint64_t sub_237B25F68(uint64_t result)
{
  if ((result - 64) > 0x3C0)
  {
    OUTLINED_FUNCTION_10_39();

    OUTLINED_FUNCTION_6_47();
    v1 = OUTLINED_FUNCTION_1_63();
    MEMORY[0x2383DC360](v1);

    MEMORY[0x2383DC360](8236, 0xE200000000000000);
    v2 = OUTLINED_FUNCTION_1_63();
    MEMORY[0x2383DC360](v2);

    MEMORY[0x2383DC360](11869, 0xE200000000000000);
    sub_2379E8AF0();
    v3 = swift_allocError();
    return OUTLINED_FUNCTION_4_54(v3, v4);
  }

  return result;
}

uint64_t MLStyleTransfer.ModelParameters.ModelAlgorithmType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6574694C6E6E63;
  }

  else
  {
    return 7237219;
  }
}

uint64_t MLStyleTransfer.ModelParameters.validation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLStyleTransfer.ModelParameters(0) + 20);

  return sub_237B265D4(v3, a1);
}

uint64_t MLStyleTransfer.ModelParameters.validation.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_5_50() + 20);

  return sub_237B26638(v0, v2);
}

uint64_t MLStyleTransfer.ModelParameters.maxIterations.setter()
{
  result = OUTLINED_FUNCTION_5_50();
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.textelDensity.setter()
{
  result = OUTLINED_FUNCTION_5_50();
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.styleStrength.setter()
{
  result = OUTLINED_FUNCTION_5_50();
  *(v1 + *(result + 36)) = v0;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.ModelAlgorithmType.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_237C0916C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_237B263AC@<X0>(uint64_t *a1@<X8>)
{
  result = MLStyleTransfer.ModelParameters.ModelAlgorithmType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.description.getter()
{
  OUTLINED_FUNCTION_9_40();
  v8 = v1;
  if (*v0)
  {
    v2 = 0xD00000000000004FLL;
  }

  else
  {
    v2 = 0xD000000000000046;
  }

  if (*v0)
  {
    v3 = "Style image not readable.";
  }

  else
  {
    v3 = "Style strength: ";
  }

  MEMORY[0x2383DC360](v2, v3 | 0x8000000000000000);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v8, 0xEB00000000203A6DLL);

  OUTLINED_FUNCTION_7_40();

  OUTLINED_FUNCTION_3_61();
  type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v4 = sub_237C0924C();
  MEMORY[0x2383DC360](v4);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v8, 0xEB00000000203A6DLL);

  OUTLINED_FUNCTION_7_40();

  OUTLINED_FUNCTION_3_61();
  OUTLINED_FUNCTION_2_63();
  v5 = sub_237C0924C();
  MEMORY[0x2383DC360](v5);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v8, 0xEB00000000203A6DLL);

  OUTLINED_FUNCTION_7_40();

  OUTLINED_FUNCTION_3_61();
  OUTLINED_FUNCTION_2_63();
  v6 = sub_237C0924C();
  MEMORY[0x2383DC360](v6);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v8, 0xEB00000000203A6DLL);

  return 0;
}

uint64_t sub_237B265D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B26638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t MLStyleTransfer.ModelParameters.ModelAlgorithmType.description.getter()
{
  if (*v0)
  {
    return 0xD00000000000004FLL;
  }

  else
  {
    return 0xD000000000000046;
  }
}

uint64_t MLStyleTransfer.ModelParameters.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  result = MLStyleTransfer.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

void MLStyleTransfer.ModelParameters.ModelAlgorithmType.playgroundDescription.getter(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000004FLL;
  }

  else
  {
    v2 = 0xD000000000000046;
  }

  if (*v1)
  {
    v3 = "Style image not readable.";
  }

  else
  {
    v3 = "Style strength: ";
  }

  a1[3] = MEMORY[0x277D837D0];
  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_237B26770()
{
  result = qword_27DE9D2A0;
  if (!qword_27DE9D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D2A0);
  }

  return result;
}

uint64_t sub_237B267E0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_237B26874(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237B268F0(uint64_t a1)
{
  result = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s15ModelParametersV18ModelAlgorithmTypeOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x237B26A54);
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

uint64_t OUTLINED_FUNCTION_1_63()
{

  return sub_237C0924C();
}

uint64_t OUTLINED_FUNCTION_4_54(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_5_50()
{

  return type metadata accessor for MLStyleTransfer.ModelParameters(0);
}

uint64_t OUTLINED_FUNCTION_7_40()
{

  return sub_237C08EDC();
}

uint64_t OUTLINED_FUNCTION_10_39()
{

  return sub_237C08EDC();
}

id sub_237B26B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v10 = sub_237C059EC();
  if (a5)
  {
    type metadata accessor for ImageOption(0);
    sub_237B27B34(&qword_27DE9A970, type metadata accessor for ImageOption, &unk_237C0B438);
    v11 = sub_237C0855C();
  }

  else
  {
    v11 = 0;
  }

  v21[0] = 0;
  v12 = [swift_getObjCClassFromMetadata() featureValueWithImageAtURL:v10 pixelsWide:a2 pixelsHigh:a3 pixelFormatType:a4 options:v11 error:v21];

  v13 = v21[0];
  if (v12)
  {
    v14 = sub_237C05ADC();
    OUTLINED_FUNCTION_4();
    v16 = *(v15 + 8);
    v17 = v13;
    v16(a1, v14);
  }

  else
  {
    v18 = v21[0];
    sub_237C0593C();

    swift_willThrow();
    sub_237C05ADC();
    OUTLINED_FUNCTION_4();
    (*(v19 + 8))(a1);
  }

  return v12;
}

uint64_t sub_237B26D60(uint64_t a1)
{
  v3 = v1;
  v63 = a1;
  sub_237C05C2C();
  OUTLINED_FUNCTION_0();
  v61 = v5;
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v60 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v9 = OUTLINED_FUNCTION_20(v8);
  MEMORY[0x28223BE20](v9);
  v65 = &v53 - v10;
  v11 = sub_237C0825C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
  v19 = OUTLINED_FUNCTION_20(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  v23 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  v58 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v59 = &v53 - v29;
  MEMORY[0x28223BE20](v30);
  v64 = &v53 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v53 - v33;
  sub_237B265D4(v3, v22);
  OUTLINED_FUNCTION_16_1(v22);
  if (v35)
  {
    return sub_237B2796C(v22);
  }

  v56 = v3;
  v57 = v2;
  v37 = *(v25 + 32);
  v37(v34, v22, v23);
  sub_237C0821C();
  v38 = sub_237A5C0AC(v34, v17);
  (*(v13 + 8))(v17, v11);
  if (v38)
  {
    v54 = v25;
    v55 = v34;
    v39 = v65;
    sub_237A6FAB8(v63, v65);
    OUTLINED_FUNCTION_16_1(v39);
    if (v35)
    {
      v40 = NSTemporaryDirectory();
      sub_237C086EC();

      v41 = v58;
      sub_237C059AC();

      v42 = v60;
      sub_237C05C1C();
      sub_237C05C0C();
      (*(v61 + 8))(v42, v62);
      v43 = v59;
      sub_237C05A2C();

      v47 = v54;
      v44 = *(v54 + 8);
      v44(v41, v23);
      v46 = v64;
      sub_237C05A3C();
      v44(v43, v23);
      OUTLINED_FUNCTION_16_1(v39);
      if (!v35)
      {
        sub_2379D9054(v39, &qword_27DE9AA18, &qword_237C0B710);
      }
    }

    else
    {
      v46 = v64;
      v37(v64, v39, v23);
      v47 = v54;
    }

    v48 = v55;
    v49 = v57;
    v50 = sub_237B2726C(v55, 512, 2);
    if (!v49)
    {
      v51 = v50;
      sub_237B274DC(v50);
    }

    v52 = *(v47 + 8);
    v52(v46, v23);
    return (v52)(v48, v23);
  }

  else
  {
    sub_2379E8AF0();
    swift_allocError();
    *v45 = 0xD000000000000020;
    *(v45 + 8) = 0x8000000237C1C760;
    *(v45 + 16) = 0u;
    *(v45 + 32) = 0u;
    *(v45 + 48) = 0;
    swift_willThrow();
    return (*(v25 + 8))(v34, v23);
  }
}

id sub_237B2726C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_237C05ADC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_237B27AF0();
  (*(v8 + 16))(v10, a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D298, &unk_237C134C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v13 = *MEMORY[0x277CBFE80];
  *(inited + 64) = MEMORY[0x277D83E88];
  *(inited + 32) = v13;
  *(inited + 40) = a3;
  type metadata accessor for ImageOption(0);
  sub_237B27B34(&qword_27DE9A970, type metadata accessor for ImageOption, &unk_237C0B438);
  v14 = v13;
  v15 = sub_237C085AC();
  v16 = sub_237B26B78(v10, a2, a2, 1380401729, v15);
  if (!v3)
  {
    v17 = v16;
    v18 = [v16 imageBufferValue];
    if (v18)
    {
      v19 = v18;
      v11 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
    }

    else
    {
      sub_2379E8AF0();
      swift_allocError();
      *v21 = 0xD000000000000023;
      *(v21 + 8) = 0x8000000237C1C790;
      *(v21 + 16) = 0u;
      *(v21 + 32) = 0u;
      *(v21 + 48) = 0;
      swift_willThrow();
    }
  }

  return v11;
}

void sub_237B274DC(void *a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  v3 = [a1 colorSpace];
  if (v3)
  {
    v4 = v3;
    v11 = *MEMORY[0x277CBF9C0];
    v5 = sub_237C059EC();
    type metadata accessor for CIImageRepresentationOption(0);
    sub_237B27B34(&qword_27DE9A980, type metadata accessor for CIImageRepresentationOption, &unk_237C0B47C);
    sub_237C085AC();
    v6 = sub_237C0855C();

    v12[0] = 0;
    v7 = [v2 writePNGRepresentationOfImage:a1 toURL:v5 format:v11 colorSpace:v4 options:v6 error:v12];

    if (v7)
    {
      v8 = v12[0];
    }

    else
    {
      v10 = v12[0];
      sub_237C0593C();

      swift_willThrow();
    }
  }

  else
  {
    sub_2379E8AF0();
    swift_allocError();
    *v9 = 0xD00000000000001ELL;
    *(v9 + 8) = 0x8000000237C1C4B0;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 2;
    swift_willThrow();
  }
}

uint64_t static MLStyleTransfer.ModelParameters.ValidationData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
  v12 = OUTLINED_FUNCTION_20(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D2B8, &qword_237C136C8);
  v17 = OUTLINED_FUNCTION_20(v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  v21 = *(v20 + 56);
  sub_237B265D4(a1, &v26 - v18);
  sub_237B265D4(a2, &v19[v21]);
  OUTLINED_FUNCTION_17_0(v19);
  if (!v23)
  {
    sub_237B265D4(v19, v15);
    OUTLINED_FUNCTION_17_0(&v19[v21]);
    if (!v23)
    {
      (*(v6 + 32))(v10, &v19[v21], v4);
      v22 = sub_237C05A6C();
      v24 = *(v6 + 8);
      v24(v10, v4);
      v24(v15, v4);
      sub_237B2796C(v19);
      return v22 & 1;
    }

    (*(v6 + 8))(v15, v4);
LABEL_9:
    sub_2379D9054(v19, &qword_27DE9D2B8, &qword_237C136C8);
    v22 = 0;
    return v22 & 1;
  }

  OUTLINED_FUNCTION_17_0(&v19[v21]);
  if (!v23)
  {
    goto LABEL_9;
  }

  sub_237B2796C(v19);
  v22 = 1;
  return v22 & 1;
}

uint64_t type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(uint64_t a1)
{
  result = qword_27DE9D2C0;
  if (!qword_27DE9D2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B2796C(uint64_t a1)
{
  v2 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237B279E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_237C05ADC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237B27A3C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_237C05ADC();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_237B27A98(uint64_t a1)
{
  v1 = sub_237C05ADC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_237B27AF0()
{
  result = qword_27DE9AC50;
  if (!qword_27DE9AC50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9AC50);
  }

  return result;
}

uint64_t sub_237B27B34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_237B27B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLStyleTransfer.DataSource(0);
  OUTLINED_FUNCTION_20(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);
    v9 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v10 = *(a1 + *(a3 + 20));
      if (v10 >= 2)
      {
        return v10 - 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    v9 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_237B27C7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MLStyleTransfer.DataSource(0);
  result = OUTLINED_FUNCTION_20(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);
    v12 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 20)) = a2 + 1;
      return result;
    }

    v11 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    v12 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t _s20PersistentParametersVMa_4(uint64_t a1)
{
  result = qword_27DE9D2D0;
  if (!qword_27DE9D2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B27DA0(uint64_t a1)
{
  result = type metadata accessor for MLStyleTransfer.DataSource(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237B27E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v116[4] = *MEMORY[0x277D85DE8];
  v3 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v97[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v97[-v10];
  MEMORY[0x28223BE20](v12);
  v14 = &v97[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v97[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v97[-v19];
  sub_237C05A2C();
  v21 = v111;
  v22 = sub_237C05B1C();
  if (v21)
  {
    v24 = *(v5 + 8);
    v24(a1, v3);
    return (v24)(v20, v3);
  }

  v105 = v11;
  v106 = v14;
  v103 = v8;
  v104 = 0;
  v107 = v17;
  v26 = v3;
  v27 = *(v5 + 8);
  v28 = v22;
  v29 = v23;
  v27(v20, v26);
  v30 = objc_opt_self();
  v31 = sub_237C05B6C();
  *&v114 = 0;
  v32 = [v30 propertyListWithData:v31 options:0 format:0 error:&v114];

  v33 = v114;
  if (!v32)
  {
    v49 = v33;
    sub_237C0593C();

    swift_willThrow();
    sub_2379E86D4(v28, v29);
    return v27(a1, v26);
  }

  v108 = v28;
  v109 = v29;
  v111 = v27;
  sub_237C08DFC();
  swift_unknownObjectRelease();
  v34 = OUTLINED_FUNCTION_4_55();
  sub_2379FED88(v34, v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  if (OUTLINED_FUNCTION_0_67(v36, v37, v38, v36))
  {
    v39 = v112;
    sub_237AC9A74(v112, &v114, 0x687469726F676C61, 0xE90000000000006DLL);
    v43 = a1;
    if (v115)
    {
      if (OUTLINED_FUNCTION_0_67(v40, v41, v42, MEMORY[0x277D837D0]))
      {
        v101 = v26;
        v44 = v39;
        v45 = sub_237C0916C();

        if (v45)
        {
          v46 = v110;
          if (v45 != 1)
          {

            OUTLINED_FUNCTION_68_2();
            OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
            v48 = 0xD000000000000049;
LABEL_39:
            OUTLINED_FUNCTION_1_64(v47, v48);
            sub_2379E86D4(v108, v109);
            v51 = v43;
            v52 = v101;
            goto LABEL_40;
          }
        }

        else
        {
          v46 = v110;
        }

        v102 = _s20PersistentParametersVMa_4(0);
        *(v46 + v102[5]) = v45;
        sub_237AC9A74(v44, &v114, 0x645F6C6574786574, 0xEE00797469736E65);
        if (v115)
        {
          OUTLINED_FUNCTION_3_62();
          if (swift_dynamicCast())
          {
            v54 = v112;
          }

          else
          {
            v54 = 256;
          }
        }

        else
        {
          sub_237A286E0(&v114);
          v54 = 256;
        }

        *(v46 + v102[7]) = v54;
        sub_237AC9A74(v44, &v114, 0x74735F656C797473, 0xEE006874676E6572);
        if (v115)
        {
          if (OUTLINED_FUNCTION_0_67(v55, v56, v57, MEMORY[0x277D83B88]))
          {
            v58 = v112;
            goto LABEL_26;
          }
        }

        else
        {
          sub_237A286E0(&v114);
        }

        v58 = 5;
LABEL_26:
        *(v46 + v102[8]) = v58;
        sub_237AC9A74(v44, &v114, 0x656369766564, 0xE600000000000000);
        if (v115)
        {
          if (OUTLINED_FUNCTION_0_67(v59, v60, v61, MEMORY[0x277D837D0]))
          {
            v62 = sub_2379F5980(v112, v113);
            if (v62 != 2)
            {
              *(v46 + v102[9]) = v62 & 1;
              goto LABEL_32;
            }
          }
        }

        else
        {
          sub_237A286E0(&v114);
        }

        *(v46 + v102[9]) = 0;
LABEL_32:
        sub_237AC9A74(v44, &v114, 0x6D695F656C797473, 0xEB00000000656761);
        if (v115)
        {
          if (OUTLINED_FUNCTION_0_67(v63, v64, v65, MEMORY[0x277D837D0]))
          {
            v99 = objc_opt_self();
            v66 = [v99 defaultManager];
            v67 = sub_237C086BC();
            LODWORD(v100) = [v66 fileExistsAtPath_];

            if (v100)
            {
              sub_237C059BC();
            }

            else
            {
              v68 = v106;
              sub_237C059BC();

              sub_237C05A9C();
              sub_237C05A2C();

              v111(v68, v101);
            }

            v69 = v110;
            v70 = OUTLINED_FUNCTION_7_41();
            sub_237AC9A74(v44, v72, v70, v71);
            if (v115)
            {
              OUTLINED_FUNCTION_3_62();
              if (swift_dynamicCast())
              {
                v73 = [v99 defaultManager];
                v74 = sub_237C086BC();
                LODWORD(v100) = [v73 fileExistsAtPath_];

                if (v100)
                {
                  v75 = v105;
                  sub_237C059BC();
                }

                else
                {
                  v79 = v106;
                  sub_237C059BC();

                  sub_237C05A9C();
                  v75 = v105;
                  sub_237C05A2C();

                  v111(v79, v101);
                }

                v80 = OUTLINED_FUNCTION_7_41();
                sub_237AC9A74(v44, v82, v80, v81);
                if (v115)
                {
                  OUTLINED_FUNCTION_3_62();
                  result = swift_dynamicCast();
                  if (result)
                  {
                    v83 = v112;
                    if (v112 < 0)
                    {
                      __break(1u);
                      return result;
                    }

                    v84 = 0;
LABEL_58:
                    sub_237AC9A74(v44, &v114, 0x69746164696C6176, 0xEA00000000006E6FLL);

                    v100 = v83;
                    v98 = v84;
                    if (v115)
                    {
                      OUTLINED_FUNCTION_3_62();
                      v85 = swift_dynamicCast();
                      v44 = v101;
                      if (v85)
                      {
                        v86 = [v99 defaultManager];
                        v87 = sub_237C086BC();
                        LODWORD(v99) = [v86 fileExistsAtPath_];

                        if (v99)
                        {
                          sub_237C059BC();
                          sub_2379E86D4(v108, v109);

                          v111(v43, v44);
                          v75 = v105;
                        }

                        else
                        {
                          v90 = v106;
                          sub_237C059BC();

                          sub_237C05A9C();
                          sub_237C05A2C();
                          sub_2379E86D4(v108, v109);

                          v91 = v111;
                          v111(v43, v44);
                          v75 = v105;
                          v91(v90, v44);
                        }

                        __swift_destroy_boxed_opaque_existential_1(v116);
                        v92 = v102[6];
                        v89 = *(v5 + 32);
                        v89(v69 + v92, v103, v44);
                        __swift_storeEnumTagSinglePayload(v69 + v92, 0, 1, v44);
                        goto LABEL_67;
                      }

                      sub_2379E86D4(v108, v109);
                      v111(v43, v44);
                      __swift_destroy_boxed_opaque_existential_1(v116);
                    }

                    else
                    {
                      sub_2379E86D4(v108, v109);
                      v88 = OUTLINED_FUNCTION_11_38();
                      (v111)(v88);
                      __swift_destroy_boxed_opaque_existential_1(v116);
                      sub_237A286E0(&v114);
                    }

                    __swift_storeEnumTagSinglePayload(v69 + v102[6], 1, 1, v44);
                    v89 = *(v5 + 32);
LABEL_67:
                    v93 = v107;
                    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);
                    v95 = *(v94 + 48);
                    v96 = v69 + *(v94 + 64);
                    v89(v69, v93, v44);
                    result = (v89)(v69 + v95, v75, v44);
                    *v96 = v100;
                    *(v96 + 8) = v98;
                    return result;
                  }
                }

                else
                {
                  sub_237A286E0(&v114);
                }

                v83 = 0;
                v84 = 1;
                goto LABEL_58;
              }
            }

            else
            {

              sub_237A286E0(&v114);
            }

            OUTLINED_FUNCTION_68_2();
            OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
            *v76 = 0xD00000000000003FLL;
            *(v76 + 8) = v44;
            *(v76 + 16) = 0u;
            *(v76 + 32) = 0u;
            *(v76 + 48) = 0;
            swift_willThrow();
            sub_2379E86D4(v108, v109);
            v77 = OUTLINED_FUNCTION_11_38();
            v78 = v111;
            (v111)(v77);
            v78(v107, v44);
            return __swift_destroy_boxed_opaque_existential_1(v116);
          }
        }

        else
        {

          sub_237A286E0(&v114);
        }

        OUTLINED_FUNCTION_68_2();
        OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        v48 = 0xD000000000000039;
        goto LABEL_39;
      }
    }

    else
    {

      sub_237A286E0(&v114);
    }

    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    OUTLINED_FUNCTION_1_64(v53, 0xD000000000000044);
    sub_2379E86D4(v108, v109);
    v51 = a1;
    v52 = v26;
  }

  else
  {
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    OUTLINED_FUNCTION_1_64(v50, 0xD000000000000037);
    sub_2379E86D4(v108, v109);
    v51 = a1;
    v52 = v26;
  }

LABEL_40:
  v111(v51, v52);
  return __swift_destroy_boxed_opaque_existential_1(v116);
}

uint64_t sub_237B28A88(uint64_t a1)
{
  v2 = v1;
  v118 = a1;
  v124 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  v113 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v117 = v7;
  MEMORY[0x28223BE20](v9);
  v114 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = &v104 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v104 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v104 - v17;
  v116 = &v104 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v104 - v20;
  v22 = type metadata accessor for MLStyleTransfer.DataSource(0);
  v23 = OUTLINED_FUNCTION_20(v22);
  MEMORY[0x28223BE20](v23);
  v25 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_237C085AC();
  v112 = v2;
  sub_237B29430(v2, v25, type metadata accessor for MLStyleTransfer.DataSource);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);
  v27 = *(v26 + 48);
  v28 = &v25[*(v26 + 64)];
  v104 = *v28;
  LODWORD(v115) = v28[8];
  v29 = *(v8 + 32);
  v29(v21, v25, v6);
  v109 = v6;
  v106 = v8 + 32;
  v105 = v29;
  v29(v18, &v25[v27], v6);
  v111 = v21;
  v121 = sub_237C05A9C();
  v122 = v30;
  v31 = sub_237C05A9C();
  OUTLINED_FUNCTION_5_51(v31, v32);
  v33 = sub_2379F3408();
  OUTLINED_FUNCTION_6_48();
  OUTLINED_FUNCTION_18_27();
  v35 = v34;
  sub_237C08D9C();

  sub_237C059BC();

  v36 = sub_237C05A9C();
  v38 = v37;
  v39 = *(v117 + 8);
  v117 += 8;
  v39(v15, v6);
  v123 = v35;
  v121 = v36;
  v122 = v38;
  v40 = OUTLINED_FUNCTION_4_55();
  sub_2379DAD24(v40, v41);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_8_36();
  sub_237B40B6C(v120, v42 & 0xFFFFFFFFFFFFLL | 0x6D69000000000000, 0xEB00000000656761);
  v43 = v119;
  v121 = sub_237C05A9C();
  v122 = v44;
  v45 = sub_237C05A9C();
  OUTLINED_FUNCTION_5_51(v45, v46);
  OUTLINED_FUNCTION_6_48();
  v107 = v33;
  OUTLINED_FUNCTION_18_27();
  sub_237C08D9C();

  sub_237C059BC();
  v47 = v109;

  v48 = sub_237C05A9C();
  v50 = v49;
  v110 = v15;
  v39(v15, v47);
  v51 = v35;
  v123 = v35;
  v121 = v48;
  v122 = v50;
  v52 = OUTLINED_FUNCTION_4_55();
  sub_2379DAD24(v52, v53);
  swift_isUniquelyReferenced_nonNull_native();
  v119 = v43;
  sub_237B40B6C(v120, 0xD000000000000011, 0x8000000237C1C8A0);
  v54 = v119;
  v55 = v115;
  v115 = v39;
  if (v55 != 1)
  {
    v123 = MEMORY[0x277D83E88];
    v121 = v104;
    v56 = OUTLINED_FUNCTION_4_55();
    sub_2379DAD24(v56, v57);
    swift_isUniquelyReferenced_nonNull_native();
    v119 = v54;
    sub_237B40B6C(v120, 0xD000000000000011, 0x8000000237C1C900);
    v54 = v119;
  }

  v39(v116, v47);
  v39(v111, v47);
  v58 = _s20PersistentParametersVMa_4(0);
  v59 = v112;
  v60 = *(v112 + v58[5]) == 0;
  v61 = 7237219;
  if (*(v112 + v58[5]))
  {
    v61 = 0x6574694C6E6E63;
  }

  v62 = 0xE700000000000000;
  v63 = v51;
  v123 = v51;
  if (v60)
  {
    v62 = 0xE300000000000000;
  }

  v121 = v61;
  v122 = v62;
  v64 = OUTLINED_FUNCTION_4_55();
  sub_2379DAD24(v64, v65);
  swift_isUniquelyReferenced_nonNull_native();
  v119 = v54;
  sub_237B40B6C(v120, 0x687469726F676C61, 0xE90000000000006DLL);
  v66 = v119;
  v67 = *(v59 + v58[7]);
  v68 = MEMORY[0x277D83B88];
  v123 = MEMORY[0x277D83B88];
  v121 = v67;
  v69 = OUTLINED_FUNCTION_4_55();
  sub_2379DAD24(v69, v70);
  swift_isUniquelyReferenced_nonNull_native();
  v119 = v66;
  sub_237B40B6C(v120, 0x645F6C6574786574, 0xEE00797469736E65);
  v71 = *(v59 + v58[8]);
  v123 = v68;
  v121 = v71;
  v72 = OUTLINED_FUNCTION_4_55();
  sub_2379DAD24(v72, v73);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_8_36();
  sub_237B40B6C(v120, v74 & 0xFFFFFFFFFFFFLL | 0x7473000000000000, 0xEE006874676E6572);
  v75 = v119;
  v76 = 1869903201;
  if (*(v59 + v58[9]))
  {
    v76 = 7696483;
  }

  v77 = 0xE400000000000000;
  if (*(v59 + v58[9]))
  {
    v77 = 0xE300000000000000;
  }

  v123 = v63;
  v121 = v76;
  v122 = v77;
  v78 = OUTLINED_FUNCTION_4_55();
  sub_2379DAD24(v78, v79);
  swift_isUniquelyReferenced_nonNull_native();
  v119 = v75;
  sub_237B40B6C(v120, 0x656369766564, 0xE600000000000000);
  v80 = v119;
  v81 = v113;
  sub_237B29430(v59 + v58[6], v113, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  if (__swift_getEnumTagSinglePayload(v81, 1, v47) == 1)
  {
    sub_237B2796C(v81);
  }

  else
  {
    v82 = v108;
    v105(v108, v81, v47);
    v121 = sub_237C05A9C();
    v122 = v83;
    v84 = sub_237C05A9C();
    OUTLINED_FUNCTION_5_51(v84, v85);
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_18_27();
    sub_237C08D9C();

    v86 = v110;
    sub_237C059BC();

    v87 = sub_237C05A9C();
    v89 = v88;
    v90 = v86;
    v91 = v115;
    v115(v90, v47);
    v123 = MEMORY[0x277D837D0];
    v121 = v87;
    v122 = v89;
    v92 = OUTLINED_FUNCTION_4_55();
    sub_2379DAD24(v92, v93);
    swift_isUniquelyReferenced_nonNull_native();
    v119 = v80;
    sub_237B40B6C(v120, 0x69746164696C6176, 0xEA00000000006E6FLL);
    v91(v82, v47);
  }

  v94 = v114;
  v95 = objc_opt_self();
  v96 = sub_237C0855C();

  v121 = 0;
  v97 = [v95 dataWithPropertyList:v96 format:200 options:0 error:&v121];

  v98 = v121;
  if (v97)
  {
    v99 = sub_237C05B7C();
    v101 = v100;

    sub_237C05A2C();
    sub_237C05B9C();
    v115(v94, v47);
    return sub_2379E86D4(v99, v101);
  }

  else
  {
    v103 = v98;
    sub_237C0593C();

    return swift_willThrow();
  }
}

uint64_t sub_237B29430(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_67(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_64@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_5_51(uint64_t result, uint64_t a2)
{
  *(v2 - 160) = result;
  *(v2 - 152) = a2;
  *(v2 - 176) = 0;
  *(v2 - 168) = 0xE000000000000000;
  return result;
}

uint64_t sub_237B2955C(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D300, &qword_237C137F8);
  v8 = sub_237B2E920();
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_237B2E984(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

uint64_t sub_237B29600(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
LABEL_7:
      v6[0] = v4;
      v6[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      result = sub_237B0FB44(v6);
      if (!v2 && !result)
      {
        __break(1u);
      }

      return result;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      result = sub_237B0FB44((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if (v2 || result)
      {
        return result;
      }

      __break(1u);
      goto LABEL_7;
    }
  }

  result = sub_237C08ECC();
  if (!v2)
  {
    return v6[2];
  }

  return result;
}

uint64_t sub_237B2969C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_13:
    type metadata accessor for CMLFeatureValue();
    sub_237C08ECC();

    if (!v3)
    {
      return v10[2];
    }

    return v4;
  }

  v8 = sub_237B11A18(*(a3 + 16), (a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v6 = v3;
  if (v3)
  {
LABEL_8:

    return v4;
  }

  v4 = v8;
  if (v8)
  {
LABEL_11:
    type metadata accessor for CMLFeatureValue();
    swift_allocObject();
    v4 = sub_237A2E764(v4, 1);

    return v4;
  }

  __break(1u);
LABEL_7:
  v10[0] = a1;
  v10[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  result = sub_237B11A18(*(a3 + 16), v10);
  if (v4)
  {
    goto LABEL_8;
  }

  v4 = result;
  if (result)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B297D0(uint64_t a1, uint64_t a2)
{
  v4[3] = MEMORY[0x277D837D0];
  v4[4] = &off_284AC56F0;
  v4[0] = a1;
  v4[1] = a2;
  __swift_project_boxed_opaque_existential_1(v4, MEMORY[0x277D837D0]);
  type metadata accessor for CMLFeatureValue();

  v2 = sub_237A2E7CC();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t sub_237B29888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_237B297D0(a1, a2);
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_237B10560(*(v5 + 16), a3);
    if (v6)
    {

      type metadata accessor for CMLColumn();
      OUTLINED_FUNCTION_103();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;

      *(v3 + 16) = v7;
      return v3;
    }
  }

  __break(1u);

  swift_unexpectedError();
  type metadata accessor for _UntypedColumn();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t (*sub_237B29968())(uint64_t a1)
{
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t sub_237B299C8(uint64_t a1)
{
  v3 = v2;
  OUTLINED_FUNCTION_32_12();
  v5 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  v6 = _s20PersistentParametersVMa_4(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  result = MEMORY[0x2383DDB70](0);
  if (result)
  {
    v8 = result;
    v9 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args;
    type metadata accessor for CMLParameters();
    OUTLINED_FUNCTION_103();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v1 + v9) = v10;
    v11 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters;
    OUTLINED_FUNCTION_8_37();
    sub_237B2EA58(a1, v1 + v11);
    v12 = *(v1 + 16);
    v13 = *(v1 + 24);

    v14 = sub_237ADFBE4(v12, v13);
    if (v3)
    {

      sub_237B2EAD0(a1, type metadata accessor for MLTrainingSessionParameters);

      sub_237B2EAD0(v1 + v11, type metadata accessor for MLTrainingSessionParameters);
      sub_2379D9054(v1 + v5, &qword_27DE9D258, &unk_237C137D0);

      _s23TrainingSessionDelegateCMa(0);
      swift_deallocPartialClassInstance();
    }

    else
    {
      v15 = v14;

      type metadata accessor for CMLModel();
      OUTLINED_FUNCTION_103();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      OUTLINED_FUNCTION_16_24();
      sub_237B2EAD0(a1, v17);
      *(v1 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model) = v16;
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237B29B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D258, &unk_237C137D0);
  OUTLINED_FUNCTION_20(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_67_4();
  OUTLINED_FUNCTION_32_12();
  v13 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  v14 = _s20PersistentParametersVMa_4(0);
  __swift_storeEnumTagSinglePayload(v3 + v13, 1, 1, v14);
  result = MEMORY[0x2383DDB70](0);
  if (result)
  {
    v16 = result;
    v17 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args;
    type metadata accessor for CMLParameters();
    OUTLINED_FUNCTION_103();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v3 + v17) = v18;
    OUTLINED_FUNCTION_7_42();
    sub_237B2EA58(a1, v4);
    OUTLINED_FUNCTION_26_18();
    sub_237B2EA58(a2, v10);
    *(v4 + v14[5]) = *v10;
    *(v4 + v14[7]) = 4 * (*&v10[v6[8]] / 4);
    *(v4 + v14[8]) = *&v10[v6[9]];
    OUTLINED_FUNCTION_2_64();
    sub_237B2EA58(&v10[v19], v4 + v20);
    LOBYTE(v16) = v10[v6[10]];
    OUTLINED_FUNCTION_1_65();
    sub_237B2EAD0(v10, v21);
    *(v4 + v14[9]) = v16;
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v14);
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_237B2E858(v4, v3 + v13);
    swift_endAccess();
    v25 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters;
    OUTLINED_FUNCTION_8_37();
    sub_237B2EA58(a3, v3 + v25);
    v26 = *(v3 + 16);
    v27 = *(v3 + 24);

    v28 = sub_237ADFBE4(v26, v27);
    if (v36)
    {

      sub_237B2EAD0(a3, type metadata accessor for MLTrainingSessionParameters);
      OUTLINED_FUNCTION_1_65();
      sub_237B2EAD0(a2, v29);
      OUTLINED_FUNCTION_3_63();
      sub_237B2EAD0(a1, v30);

      sub_237B2EAD0(v3 + v25, type metadata accessor for MLTrainingSessionParameters);
      sub_2379D9054(v3 + v13, &qword_27DE9D258, &unk_237C137D0);

      _s23TrainingSessionDelegateCMa(0);
      swift_deallocPartialClassInstance();
    }

    else
    {
      v31 = v28;

      type metadata accessor for CMLModel();
      OUTLINED_FUNCTION_103();
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      OUTLINED_FUNCTION_16_24();
      sub_237B2EAD0(a3, v33);
      OUTLINED_FUNCTION_1_65();
      sub_237B2EAD0(a2, v34);
      OUTLINED_FUNCTION_3_63();
      sub_237B2EAD0(a1, v35);
      *(v3 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model) = v32;
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237B29EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v23;
  a20 = v24;
  v306 = v21;
  v25 = v20;
  v322[1] = *MEMORY[0x277D85DE8];
  v26 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
  v27 = OUTLINED_FUNCTION_20(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_22();
  v293 = v28;
  v29 = OUTLINED_FUNCTION_41_0();
  v30 = type metadata accessor for MLStyleTransfer.DataSource(v29);
  v31 = OUTLINED_FUNCTION_20(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_58();
  v303 = v35;
  v36 = OUTLINED_FUNCTION_41_0();
  v309 = type metadata accessor for MLStyleTransfer.ModelParameters(v36);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v44 = OUTLINED_FUNCTION_20(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_138();
  v310 = v46;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_138();
  v311 = v48;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_58();
  v315 = v50;
  v51 = OUTLINED_FUNCTION_41_0();
  v283 = type metadata accessor for MLTrainingSessionParameters(v51);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_2_0();
  v55 = v54 - v53;
  v56 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v319 = v57;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_138();
  v314 = v62;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_138();
  v317 = v69;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_138();
  v312 = v71;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v72);
  v74 = &v272[-v73];
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_138();
  v316 = v76;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_58();
  v318 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D258, &unk_237C137D0);
  v80 = OUTLINED_FUNCTION_20(v79);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v81);
  v83 = &v272[-v82];
  v84 = _s20PersistentParametersVMa_4(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_67_4();
  v86 = [objc_opt_self() defaultManager];
  v87 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_31_11(v25 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters);
  v287 = v87;
  sub_237B23430(v25 + v87, v83);
  v308 = v84;
  OUTLINED_FUNCTION_73_1(v83, 1, v84);
  if (v94)
  {
    sub_2379D9054(v83, &qword_27DE9D258, &unk_237C137D0);
    OUTLINED_FUNCTION_60_7();
    v88 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v89 = 0xD000000000000061;
    v89[1] = v74;
    OUTLINED_FUNCTION_52(v88, v89);

LABEL_22:
    OUTLINED_FUNCTION_73();
    return;
  }

  v313 = v86;
  OUTLINED_FUNCTION_5_52();
  sub_237B2E9FC(v83, v22);
  v90 = v25 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters;
  OUTLINED_FUNCTION_8_37();
  sub_237B2EA58(v90, v55);
  v91 = v315;
  sub_2379E8770(v55, v315);
  v92 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_73_1(v92, v93, v56);
  v307 = v74;
  v300 = v22;
  v281 = v25;
  if (v94)
  {
    v95 = NSTemporaryDirectory();
    sub_237C086EC();

    sub_237C059AC();

    v96 = OUTLINED_FUNCTION_21_19();
    v98 = v56;
    OUTLINED_FUNCTION_73_1(v96, v97, v56);
    if (!v94)
    {
      sub_2379D9054(v91, &qword_27DE9AA18, &qword_237C0B710);
    }
  }

  else
  {
    v98 = v56;
    (*(v319 + 32))(v318, v91, v56);
  }

  sub_237C05A1C();
  sub_237C05A9C();
  v99 = sub_237C086BC();

  v100 = v313;
  v101 = [v313 fileExistsAtPath_];

  if ((v101 & 1) == 0)
  {
    v102 = sub_237C059EC();
    v320 = 0;
    v103 = [v100 createDirectoryAtURL:v102 withIntermediateDirectories:0 attributes:0 error:&v320];

    if (!v103)
    {
      v148 = v320;
      sub_237C0593C();

      swift_willThrow();
      v149 = *(v319 + 8);
      v150 = OUTLINED_FUNCTION_23_2();
      v149(v150);
      (v149)(v318, v98);
LABEL_19:
      OUTLINED_FUNCTION_0_68();
      v147 = v300;
      goto LABEL_21;
    }

    v104 = v320;
  }

  v278 = v90;
  v105 = v312;
  sub_237C05A2C();
  v106 = v307;
  OUTLINED_FUNCTION_33_16();
  sub_237C05A3C();
  v107 = (v319 + 8);
  v108 = v98;
  v315 = *(v319 + 8);
  v315(v105, v98);
  sub_237C05A1C();
  sub_237C05A9C();
  v109 = sub_237C086BC();

  v110 = [v100 fileExistsAtPath_];

  v111 = v300;
  v112 = v314;
  if ((v110 & 1) == 0)
  {
    v113 = sub_237C059EC();
    v320 = 0;
    v114 = v313;
    v115 = [v313 createDirectoryAtURL:v113 withIntermediateDirectories:0 attributes:0 error:&v320];

    if (!v115)
    {
      v170 = v106;
      v171 = v320;
      sub_237C0593C();

      swift_willThrow();
      v172 = OUTLINED_FUNCTION_23_2();
      v173 = v315;
      (v315)(v172);
      v173(v170, v98);
      v173(v316, v98);
      v173(v318, v98);
      OUTLINED_FUNCTION_0_68();
      v147 = v111;
      goto LABEL_21;
    }

    v116 = v320;
    v108 = v98;
  }

  v282 = v107;
  v117 = v308;
  v276 = v308[5];
  v118 = *(v111 + v276);
  v119 = v309;
  OUTLINED_FUNCTION_2_64();
  v120 = v305;
  v277 = v122;
  sub_237B2EA58(v122, v305 + v121);
  v123 = v112;
  v124 = *(v111 + v117[7]);
  *(v120 + v119[6]) = 1;
  *v120 = v118;
  OUTLINED_FUNCTION_31_16();
  *(v120 + v125) = v126;
  *(v120 + v119[8]) = v124;
  v127 = v119[9];
  v275 = v128;
  *(v120 + v127) = v128;
  v273 = *(v111 + v117[9]);
  *(v120 + v129) = v273;
  OUTLINED_FUNCTION_1_65();
  sub_237B2EAD0(v120, v130);
  v274 = v124;
  v305 = (4 * (v124 / 4));
  v131 = (v319 + 16);
  v132 = *(v319 + 16);
  v133 = v311;
  v134 = v307;
  v132(v311, v307, v108);
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v135, v136, v137, v108);
  v138 = v111;
  v139 = v310;
  v280 = v131;
  v279 = v132;
  v132(v310, v317, v108);
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v140, v141, v142, v108);
  v143 = v304;
  v144 = v306;
  MLStyleTransfer.DataSource.processImages(textelDensity:styleImageDestination:contentImagesDestination:)();
  v306 = v144;
  if (v144)
  {

    sub_2379D9054(v139, &qword_27DE9AA18, &qword_237C0B710);
    sub_2379D9054(v133, &qword_27DE9AA18, &qword_237C0B710);
    v145 = v315;
    v315(v317, v108);
    v145(v134, v108);
    v145(v316, v108);
    v145(v318, v108);
    OUTLINED_FUNCTION_0_68();
    v147 = v138;
LABEL_21:
    sub_237B2EAD0(v147, v146);
    goto LABEL_22;
  }

  v152 = (v319 + 32);
  v151 = *(v319 + 32);
  v151(v302, v143, v108);
  v153 = v301;
  v151(v301, v314, v108);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);
  v319 = *(v154 + 48);
  v155 = v303;
  v156 = v303 + *(v154 + 64);
  OUTLINED_FUNCTION_54_4();
  v123();
  v157 = v153;
  v158 = v154;
  (v123)(v155 + v319, v157, v108);
  *v156 = 0;
  *(v156 + 8) = 0;
  OUTLINED_FUNCTION_7_42();
  v159 = v299;
  sub_237B2EA58(v155, v299);
  v160 = *(v154 + 48);
  v161 = v298;
  v151(v298, v159, v108);
  v151(v297, v159 + v160, v108);
  v162 = v306;
  sub_237B22410(&v320);
  if (v162)
  {

    v163 = OUTLINED_FUNCTION_49_6();
    v164 = v161;
    v165 = v315;
    (v315)(v163);
    v165(v164, v108);
    OUTLINED_FUNCTION_3_63();
    sub_237B2EAD0(v303, v166);
    v167 = OUTLINED_FUNCTION_37_12(&a11);
    (v165)(v167);
    v168 = OUTLINED_FUNCTION_37_12(&a12);
    (v165)(v168);
    sub_2379D9054(v310, &qword_27DE9AA18, &qword_237C0B710);
    sub_2379D9054(v311, &qword_27DE9AA18, &qword_237C0B710);
    v165(v317, v108);
    v169 = OUTLINED_FUNCTION_37_12(&a17);
    (v165)(v169);
    v165(v316, v108);
    v165(v318, v108);
    goto LABEL_19;
  }

  v174 = v152;
  v306 = 0;
  v175 = OUTLINED_FUNCTION_49_6();
  v176 = v315;
  (v315)(v175);
  OUTLINED_FUNCTION_3_63();
  sub_237B2EAD0(v303, v177);
  v178 = OUTLINED_FUNCTION_37_12(&a11);
  v176(v178);
  v179 = OUTLINED_FUNCTION_37_12(&a12);
  v176(v179);
  sub_2379D9054(v310, &qword_27DE9AA18, &qword_237C0B710);
  sub_2379D9054(v311, &qword_27DE9AA18, &qword_237C0B710);
  v314 = v320;
  LODWORD(v311) = v321;
  v180 = v290;
  v151(v290, v161, v108);
  v319 = v174;
  v305 = v151;
  v151(v296, v180, v108);
  v181 = *(v158 + 48);
  v182 = v300;
  v183 = v294;
  v310 = (v294 + *(v158 + 64));
  OUTLINED_FUNCTION_54_4();
  v174();
  (v174)(v183 + v181, v317, v108);
  OUTLINED_FUNCTION_7_42();
  v184 = v292;
  sub_237B2EA58(v182, v292);
  v185 = *(v158 + 48);
  v186 = v184 + *(v158 + 64);
  v187 = *v186;
  v188 = *(v186 + 8);
  (v176)(v184 + v185, v108);
  (v176)(v184, v108);
  v190 = v309;
  v189 = v310;
  *v310 = v187;
  *(v189 + 8) = v188;
  v191 = v276;
  LOBYTE(v176) = *(v182 + v276);
  OUTLINED_FUNCTION_15_32();
  v192 = v295;
  v310 = v193;
  v194 = v277;
  sub_237B2EA58(v277, v193 + v295);
  *&v192[v190[6]] = 1;
  v195 = v190[10];
  *v192 = v176;
  *&v192[v190[7]] = 500;
  *&v192[v190[8]] = v274;
  *&v192[v190[9]] = v275;
  v192[v195] = v273;
  LOBYTE(v181) = *(v182 + v191);
  v196 = v190[5];
  v197 = v291;
  sub_237B2EA58(v194, &v291[v196]);
  *v197 = v181;
  OUTLINED_FUNCTION_29_13();
  v198 = &v197[v196];
  v199 = v293;
  sub_237B2E9FC(v198, v293);
  LODWORD(v187) = __swift_getEnumTagSinglePayload(v199, 1, v108);
  OUTLINED_FUNCTION_4_56();
  sub_237B2EAD0(v199, v200);
  if (v187 == 1)
  {
    v201 = v108;
    v202 = v295;
  }

  else
  {
    OUTLINED_FUNCTION_49_0();
    sub_237C05A2C();
    v203 = v194;
    v204 = v284;
    OUTLINED_FUNCTION_33_16();
    sub_237C05A3C();
    v205 = OUTLINED_FUNCTION_49_6();
    (v315)(v205);
    v206 = v300;
    v207 = *(v300 + v191);
    v208 = v190[5];
    OUTLINED_FUNCTION_2_64();
    v209 = v286;
    sub_237B2EA58(v203, &v286[v208]);
    *v209 = v207;
    v210 = v285;
    v279(v285, v204, v108);
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v211, v212, v213, v108);
    v214 = &v209[v208];
    v215 = v306;
    sub_237B26D60(v210);
    v306 = v215;
    if (v215)
    {

      sub_2379DBC9C(v314, v311);
      sub_2379D9054(v210, &qword_27DE9AA18, &qword_237C0B710);
      v216 = v204;
      v217 = v315;
      v315(v216, v108);
      OUTLINED_FUNCTION_3_63();
      v218 = OUTLINED_FUNCTION_30_6();
      sub_237B2EAD0(v218, v219);
      v220 = OUTLINED_FUNCTION_37_12(v322);
      v217(v220);
      (v217)(v317, v108);
      v221 = OUTLINED_FUNCTION_37_12(&a17);
      v217(v221);
      (v217)(v316, v108);
      (v217)(v318, v108);
      OUTLINED_FUNCTION_0_68();
      sub_237B2EAD0(v206, v222);
      OUTLINED_FUNCTION_4_56();
      sub_237B2EAD0(&v209[v208], v223);
      OUTLINED_FUNCTION_1_65();
      v147 = v295;
      goto LABEL_21;
    }

    sub_2379D9054(v210, &qword_27DE9AA18, &qword_237C0B710);
    OUTLINED_FUNCTION_28_15();
    sub_237B2EAD0(&v209[v208], v224);
    v225 = v108;
    v202 = v295;
    v226 = v310;
    sub_237B2EAD0(v310 + v295, v214);
    v305(v226 + v202, v204, v225);
    OUTLINED_FUNCTION_80_0();
    v201 = v225;
    __swift_storeEnumTagSinglePayload(v227, v228, v229, v225);
  }

  v230 = v314;
  OUTLINED_FUNCTION_7_42();
  v231 = v294;
  v232 = v288;
  sub_237B2EA58(v294, v288);
  OUTLINED_FUNCTION_26_18();
  v233 = v289;
  sub_237B2EA58(v202, v289);
  v234 = v308;
  *(v232 + v308[5]) = *v233;
  v235 = v309;
  *(v232 + v234[7]) = 4 * (*&v233[*(v309 + 32)] / 4);
  *(v232 + v234[8]) = *&v233[*(v235 + 36)];
  OUTLINED_FUNCTION_2_64();
  sub_237B2EA58(&v233[v236], v232 + v237);
  LOBYTE(v235) = v233[*(v235 + 40)];
  OUTLINED_FUNCTION_1_65();
  sub_237B2EAD0(v233, v238);
  *(v232 + v234[9]) = v235;
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v239, v240, v241, v234);
  v242 = v281;
  v243 = v287;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_237B2E858(v232, v242 + v243);
  swift_endAccess();
  v320 = v230;
  v244 = v311;
  v321 = v311;
  v245 = v202;
  v246 = v202;
  v247 = v296;
  v248 = v306;
  v249 = sub_237B202E8(v245, v296, &v320);
  if (v248)
  {

    OUTLINED_FUNCTION_3_63();
    sub_237B2EAD0(v231, v250);
    v251 = v315;
    v315(v247, v201);
    v251(v317, v201);
    v252 = OUTLINED_FUNCTION_38_1();
    v251(v252, v201);
    v251(v316, v201);
    v251(v318, v201);
    OUTLINED_FUNCTION_0_68();
    sub_237B2EAD0(v300, v253);
    sub_2379DBC9C(v230, v244);
    OUTLINED_FUNCTION_1_65();
    sub_237B2EAD0(v246, v254);
    goto LABEL_22;
  }

  v255 = v249;
  v319 = v201;

  v256 = sub_237B2969C(1937010799, 0xE400000000000000, v255);
  v257 = sub_237B0DDC8(*(v256 + 16));
  v258 = v315;
  v259 = v257;
  if (v257)
  {

    type metadata accessor for CMLDictionary();
    *(swift_initStackObject() + 16) = v259;
    sub_237B18AFC(*(v278 + *(v283 + 20)), 0, 4, v260, v261, v262, v263, v264);
    type metadata accessor for CMLFeatureValue();

    v266 = sub_237A2E858(v265);
    sub_237A2F598(47, v266);

    v271 = *(v281 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model);

    sub_237A31864(0, v255);

    OUTLINED_FUNCTION_76_4();

    OUTLINED_FUNCTION_3_63();
    sub_237B2EAD0(v231, v267);
    OUTLINED_FUNCTION_71_4();
    v258();
    (v258)(v317, v271);
    v268 = OUTLINED_FUNCTION_38_1();
    (v258)(v268, v271);
    (v258)(v316, v271);
    (v258)(v318, v271);
    OUTLINED_FUNCTION_0_68();
    sub_237B2EAD0(v300, v269);
    OUTLINED_FUNCTION_1_65();
    sub_237B2EAD0(v246, v270);
    goto LABEL_22;
  }

  __break(1u);
}

void sub_237B2B5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v25;
  a20 = v26;
  v184 = v21;
  v27 = v20;
  v190 = v28;
  v29 = type metadata accessor for MLStyleTransfer.DataSource(0);
  v30 = OUTLINED_FUNCTION_20(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  OUTLINED_FUNCTION_20(v32);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33);
  v192 = &v169 - v34;
  v35 = OUTLINED_FUNCTION_41_0();
  v189 = type metadata accessor for MLCheckpoint(v35);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_0_22();
  a10 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v38);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v39);
  v183 = &v169 - v40;
  v41 = OUTLINED_FUNCTION_41_0();
  v42 = type metadata accessor for MLTrainingSessionParameters(v41);
  v43 = OUTLINED_FUNCTION_20(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_0_22();
  v186 = v44;
  OUTLINED_FUNCTION_41_0();
  v191 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v187 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_138();
  v188 = v50;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v54);
  v55 = OUTLINED_FUNCTION_46_7();
  v56 = type metadata accessor for MLStyleTransfer.ModelParameters(v55);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v58);
  v60 = &v169 - v59;
  v61 = _s20PersistentParametersVMa_4(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v63);
  v65 = &v169 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D258, &unk_237C137D0);
  v67 = OUTLINED_FUNCTION_20(v66);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_14_0();
  v182 = v68;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_46_2();
  v70 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
  v71 = OUTLINED_FUNCTION_20(v70);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_67_4();
  v72 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_31_11(v27 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters);
  v185 = v27;
  v181 = v72;
  sub_237B23430(v27 + v72, v22);
  v73 = OUTLINED_FUNCTION_6_17();
  if (__swift_getEnumTagSinglePayload(v73, v74, v61))
  {
    v75 = a10;
    sub_2379D9054(v22, &qword_27DE9D258, &unk_237C137D0);
    v77 = v191;
    v76 = v192;
  }

  else
  {
    v78 = v186;
    v171 = v23;
    OUTLINED_FUNCTION_27_12();
    sub_237B2EA58(v22, v65);
    sub_2379D9054(v22, &qword_27DE9D258, &unk_237C137D0);
    v79 = v65[*(v61 + 20)];
    v80 = *(v56 + 20);
    OUTLINED_FUNCTION_2_64();
    sub_237B2EA58(&v65[v81], &v60[v80]);
    *v60 = v79;
    OUTLINED_FUNCTION_0_68();
    sub_237B2EAD0(v65, v82);
    OUTLINED_FUNCTION_29_13();
    v75 = a10;
    sub_237B2E9FC(&v60[v80], v24);
    v77 = v191;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v191);
    OUTLINED_FUNCTION_4_56();
    sub_237B2EAD0(v24, v84);
    v76 = v192;
    if (EnumTagSinglePayload != 1)
    {
      OUTLINED_FUNCTION_8_37();
      sub_237B2EA58(v185 + v85, v78);
      v86 = v183;
      sub_2379E8770(v78, v183);
      v87 = OUTLINED_FUNCTION_6_17();
      OUTLINED_FUNCTION_73_1(v87, v88, v77);
      if (v89)
      {
        sub_2379D9054(v86, &qword_27DE9AA18, &qword_237C0B710);
      }

      else
      {
        v186 = v56;
        v90 = v187;
        v187[4](v171, v86, v77);
        v91 = v178;
        v92 = v61;
        sub_237C05A1C();
        OUTLINED_FUNCTION_49_0();
        v93 = v179;
        sub_237C05A2C();
        v94 = v90[1];
        v94(v91, v77);
        v95 = v180;
        OUTLINED_FUNCTION_33_16();
        sub_237C05A3C();
        v94(v93, v77);
        v96 = sub_237B29968();
        v98 = v97;
        v99 = __swift_getEnumTagSinglePayload(v97, 1, v92);
        v170 = v92;
        if (!v99)
        {
          v100 = *(v92 + 24);
          OUTLINED_FUNCTION_4_56();
          sub_237B2EAD0(v98 + v100, v101);
          v90[2](v98 + v100, v95, v77);
          OUTLINED_FUNCTION_80_0();
          __swift_storeEnumTagSinglePayload(v102, v103, v104, v77);
        }

        (v96)(&v193, 0);
        v56 = v186;
        v76 = v192;
        v94(v95, v77);
        v105 = OUTLINED_FUNCTION_37_12(&a9);
        (v94)(v105);
        v75 = a10;
        v61 = v170;
      }
    }
  }

  sub_237A9A92C(v190, v76);
  v106 = v189;
  OUTLINED_FUNCTION_73_1(v76, 1, v189);
  if (v89)
  {
    sub_2379D9054(v76, &qword_27DE9B8E8, &qword_237C0EBF0);
    OUTLINED_FUNCTION_60_7();
    v107 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v108 = 0xD00000000000001DLL;
    v108[1] = v106;
    OUTLINED_FUNCTION_52(v107, v108);
  }

  else
  {
    sub_237B2E9FC(v76, v75);
    v109 = *(v75 + *(v106 + 20));
    v110 = 0xEB0000000064657ALL;
    v111 = v61;
    v186 = v56;
    switch(v109)
    {
      case 1:
      case 3:
        v110 = 0xEA0000000000676ELL;
        goto LABEL_17;
      case 2:

        v112 = v188;
        goto LABEL_18;
      case 4:
        v110 = 0xEB00000000676E69;
        OUTLINED_FUNCTION_60_0();
        goto LABEL_17;
      default:
LABEL_17:
        OUTLINED_FUNCTION_57_0();
        v113 = sub_237C0929C();

        v112 = v188;
        if ((v113 & 1) == 0)
        {
          OUTLINED_FUNCTION_60_7();
          OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
          OUTLINED_FUNCTION_48_11();
          *v120 = v119 + 24;
          v120[1] = v110;
          OUTLINED_FUNCTION_52(v121, v120);
          goto LABEL_21;
        }

LABEL_18:
        v114 = v187;
        v187[2](v112, v75, v77);
        v115 = sub_237C0598C();
        v116 = v184;
        v118 = sub_237B29600(v115, v117);
        if (v116)
        {
          (v114[1])(v112, v77);

LABEL_21:
          OUTLINED_FUNCTION_30_17();
          v123 = v75;
          goto LABEL_30;
        }

        v124 = v118;
        v125 = v77;
        v126 = v114[1];
        v126(v112, v125);

        type metadata accessor for CMLModel();
        OUTLINED_FUNCTION_103();
        v127 = swift_allocObject();
        *(v127 + 16) = v124;
        v128 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model;
        v129 = v185;
        *(v185 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model) = v127;

        v130 = v129 + v181;
        v131 = v182;
        sub_237B23430(v130, v182);
        OUTLINED_FUNCTION_73_1(v131, 1, v111);
        if (v89)
        {
          sub_2379D9054(v131, &qword_27DE9D258, &unk_237C137D0);
          OUTLINED_FUNCTION_60_7();
          OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
          OUTLINED_FUNCTION_48_11();
          *v133 = v132 + 81;
          v133[1] = v131;
          OUTLINED_FUNCTION_52(v134, v133);
        }

        else
        {
          v189 = v128;
          v190 = v126;
          v192 = (v114 + 1);
          OUTLINED_FUNCTION_5_52();
          v135 = v114;
          v136 = v177;
          sub_237B2E9FC(v131, v177);
          OUTLINED_FUNCTION_7_42();
          v137 = v176;
          sub_237B2EA58(v136, v176);
          v138 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710) + 48);
          v139 = v135[4];
          v140 = v175;
          v139(v175, v137, v125);
          v141 = v137 + v138;
          v142 = v174;
          v139(v174, v141, v125);
          sub_237B22410(&v193);
          v143 = v190;
          v190(v142, v125);
          v144 = v194;
          v145 = v140;
          v146 = v193;
          v139(v173, v145, v125);
          v193 = v146;
          v194 = v144;
          OUTLINED_FUNCTION_40_12();
          MLDataTable.subscript.getter();
          v147 = v195;
          if (v196)
          {
            sub_2379DBC9C(v195, 1);
            OUTLINED_FUNCTION_60_7();
            OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
            OUTLINED_FUNCTION_48_11();
            *v149 = v148 | 0xC;
            v149[1] = v139;
            OUTLINED_FUNCTION_52(v150, v149);
            sub_2379DBC9C(v146, v144);
            v143(v173, v125);
            OUTLINED_FUNCTION_0_68();
            v152 = v177;
          }

          else
          {
            v187 = v146;
            LODWORD(v188) = v144;
            v153 = v195[2];

            sub_2379DBC9C(v147, 0);
            v154 = sub_237C05A9C();
            v156 = v155;
            type metadata accessor for _UntypedColumn();
            OUTLINED_FUNCTION_103();
            swift_allocObject();
            v157 = sub_237B29888(v154, v156, 1);
            v158 = v186;
            v189 = v157;
            v159 = *(v157 + 16);
            v160 = v177;
            v161 = *(v177 + v111[5]);
            OUTLINED_FUNCTION_2_64();
            v163 = v172;
            sub_237B2EA58(v160 + v162, &v172[v164]);
            v165 = *(v160 + v111[7]);
            v166 = *(v160 + v111[8]);
            *&v163[v158[6]] = 1;
            v167 = v158[10];
            *v163 = v161;
            *&v163[v158[7]] = 500;
            *&v163[v158[8]] = v165;
            *&v163[v158[9]] = v166;
            LOBYTE(v158) = *(v160 + v111[9]);
            v163[v167] = v158;

            OUTLINED_FUNCTION_1_65();
            sub_237B2EAD0(v163, v168);
            sub_237B2C288(v159, v153, v158);

            sub_2379DBC9C(v187, v188);

            v190(v173, v191);
            OUTLINED_FUNCTION_0_68();
            v152 = v160;
          }

          sub_237B2EAD0(v152, v151);
        }

        OUTLINED_FUNCTION_30_17();
        v123 = a10;
LABEL_30:
        sub_237B2EAD0(v123, v122);
        break;
    }
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B2C288(uint64_t a1, uint64_t a2, char a3)
{
  v6 = OUTLINED_FUNCTION_87();
  result = MEMORY[0x2383DDB70](v6);
  if (result)
  {
    v8 = result;
    type metadata accessor for CMLParameters();
    inited = swift_initStackObject();
    *(inited + 16) = v8;
    OUTLINED_FUNCTION_74_4();
    sub_237A31004(v10, v11);
    if (v4)
    {
LABEL_13:
      swift_setDeallocating();
      return tc_v1_release();
    }

    OUTLINED_FUNCTION_74_4();
    sub_237A31004(v12, v13);
    result = MEMORY[0x2383DDA80](0);
    if (result)
    {
      OUTLINED_FUNCTION_87();
      type metadata accessor for CMLDictionary();
      *(swift_initStackObject() + 16) = v3;
      if (a3)
      {
        v19 = 7696483;
        v20 = 0xE300000000000000;
      }

      else
      {
        v19 = 1869903201;
        v20 = 0xE400000000000000;
      }

      sub_237B18AFC(v19, v20, 3, v14, v15, v16, v17, v18);
      type metadata accessor for CMLFeatureValue();

      sub_237A2E858(v21);
      OUTLINED_FUNCTION_74_4();
      sub_237A2F598(v22, v23);

      sub_237A31864(3, inited);

      swift_setDeallocating();
      tc_v1_release();
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237B2C414(unsigned __int8 *a1)
{
  v2 = *a1;
  result = 0;
  switch(v2)
  {
    case 1:
      return result;
    case 2:
      v4 = v1 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters;
      result = *(v4 + *(type metadata accessor for MLTrainingSessionParameters(0) + 28));
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void sub_237B2C49C()
{
  OUTLINED_FUNCTION_87();
  v2 = sub_237C0825C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_67_4();
  v6 = sub_237A2ECA0();
  if (v0)
  {
    return;
  }

  v7 = v6;
  v34 = v4;
  v35 = v2;
  v36 = MEMORY[0x277D84F90];
  sub_237AC8E54();
  v8 = 0;
  v9 = v36;
  do
  {
    v10 = *(v7 + v8);
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v10 <= -1.0)
    {
      goto LABEL_20;
    }

    if (v10 >= 256.0)
    {
      goto LABEL_21;
    }

    v37 = v9;
    v11 = *(v9 + 16);
    if (v11 >= *(v9 + 24) >> 1)
    {
      sub_237AC8E54();
      v9 = v37;
    }

    *(v9 + 16) = v11 + 1;
    *(v9 + v11 + 32) = v10;
    v8 += 8;
  }

  while (v8 != 6291456);
  v12 = sub_237B2955C(v9);
  v14 = v13;
  v15 = sub_237C05B6C();
  v16 = CGDataProviderCreateWithCFData(v15);

  if (!v16)
  {
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    v27 = OUTLINED_FUNCTION_22_9(v26, 41);
    OUTLINED_FUNCTION_45_9(v27, v28, v29);
LABEL_16:
    v24 = v12;
    v25 = v14;
    goto LABEL_17;
  }

  v17 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  if (!v17)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = v17;
  v19 = CGImageCreate(0x200uLL, 0x200uLL, 8uLL, 0x18uLL, 0x600uLL, v17, 0, v16, 0, 0, kCGRenderingIntentDefault);

  if (!v19)
  {
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    v31 = OUTLINED_FUNCTION_22_9(v30, 41);
    OUTLINED_FUNCTION_45_9(v31, v32, v33);

    goto LABEL_16;
  }

  v20 = v19;
  v21 = sub_237C059EC();
  sub_237C081CC();
  sub_237C0819C();
  (*(v34 + 8))(v1, v35);
  v22 = sub_237C086BC();

  v23 = CGImageDestinationCreateWithURL(v21, v22, 1uLL, 0);

  if (v23)
  {
    CGImageDestinationAddImage(v23, v20, 0);
    CGImageDestinationFinalize(v23);

    v24 = v12;
    v25 = v14;
LABEL_17:
    sub_2379E86D4(v24, v25);
    return;
  }

LABEL_23:
  __break(1u);
}

void sub_237B2C7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v26 = v20;
  OUTLINED_FUNCTION_87();
  v150 = sub_237C05C2C();
  OUTLINED_FUNCTION_0();
  v149 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v30);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v151 = v144 - v32;
  v33 = OUTLINED_FUNCTION_41_0();
  v34 = type metadata accessor for MLTrainingSessionParameters(v33);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_0_22();
  v147 = v36;
  OUTLINED_FUNCTION_41_0();
  v37 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v42);
  inited = v144 - v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_46_2();
  v158 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_0_22();
  v159 = v47;
  v48 = OUTLINED_FUNCTION_41_0();
  v164 = _s20PersistentParametersVMa_4(v48);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D258, &unk_237C137D0);
  OUTLINED_FUNCTION_20(v51);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v52);
  v54 = v144 - v53;
  v55 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
  v56 = OUTLINED_FUNCTION_20(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_58();
  v161 = v60;
  v61 = *(v20 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters + *(v34 + 20));
  if (__OFADD__(v20, v61))
  {
    __break(1u);
    goto LABEL_35;
  }

  v163 = v61 + v20;
  v62 = *(v34 + 28);
  v146 = v20 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters;
  v63 = *(v20 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters + v62);
  if (__OFSUB__(v63, v20))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v162 = *(v20 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters + v62);
  if (v61 >= v63 - v20)
  {
    v64 = (v63 - v20);
  }

  else
  {
    v64 = v61;
  }

  if ((v64 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  v145 = inited;
  v154 = v39;
  v153 = v22;
  v160 = v37;
  v65 = 0;
  v66 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args;
  while (v64 != v65)
  {
    if (__OFADD__(v65, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    v67 = *(v20 + v66);

    sub_237A31864(1, v67);
    if (v25)
    {
      goto LABEL_13;
    }

    v65 = (v65 + 1);
  }

  v68 = *(v20 + v66);

  sub_237A31864(2, v68);
  if (v25)
  {
LABEL_13:

    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF50, &unk_237C137E0);
  sub_237A84BFC();
  v69 = sub_237C085AC();
  v70 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_31_11(v26 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters);
  sub_237B23430(v26 + v70, v54);
  v71 = OUTLINED_FUNCTION_21_19();
  v72 = v164;
  if (__swift_getEnumTagSinglePayload(v71, v73, v164))
  {
    sub_2379D9054(v54, &qword_27DE9D258, &unk_237C137D0);
    goto LABEL_21;
  }

  v144[1] = v69;
  OUTLINED_FUNCTION_27_12();
  v74 = v156;
  sub_237B2EA58(v54, v156);
  sub_2379D9054(v54, &qword_27DE9D258, &unk_237C137D0);
  v75 = *(v74 + v72[5]);
  v76 = v159;
  v77 = *(v158 + 20);
  OUTLINED_FUNCTION_2_64();
  v164 = v78;
  sub_237B2EA58(v74 + v79, &v76[v77]);
  *v76 = v75;
  OUTLINED_FUNCTION_0_68();
  sub_237B2EAD0(v74, v80);
  v81 = v155;
  sub_237B2E9FC(&v76[v77], v155);
  v82 = v161;
  sub_237B2E9FC(v81, v161);
  v83 = v157;
  sub_237B2EA58(v82, v157);
  v84 = v160;
  OUTLINED_FUNCTION_73_1(v83, 1, v160);
  if (v85)
  {
    OUTLINED_FUNCTION_28_15();
    sub_237B2EAD0(v82, v86);
    v87 = v83;
    v88 = v84;
    goto LABEL_20;
  }

  v95 = (v154 + 32);
  v164 = *(v154 + 32);
  (v164)(v153, v83, v84);

  v65 = sub_237B2D48C();
  v159 = v95;

  v59 = sub_237B0E488(v65[2]);
LABEL_27:
  v96 = v59;
  v158 = v65;
  if (!v59)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  type metadata accessor for CMLColumn();
  inited = swift_initStackObject();
  *(inited + 2) = v96;
  if (sub_237A2F128() != 1)
  {
    OUTLINED_FUNCTION_30_6();

    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    v99 = OUTLINED_FUNCTION_22_9(v98, 28);
    OUTLINED_FUNCTION_45_9(v99, v100, v101);
    swift_setDeallocating();
    tc_v1_release();

    v102 = OUTLINED_FUNCTION_47_12();
    v103(v102, v160);
LABEL_32:
    OUTLINED_FUNCTION_4_56();
    sub_237B2EAD0(v161, v104);
    goto LABEL_14;
  }

  v157 = v96;
  v97 = sub_237A2F1A8(0);
  if (v25)
  {
    swift_setDeallocating();
    OUTLINED_FUNCTION_56_7();
LABEL_40:

    v108 = OUTLINED_FUNCTION_47_12();
    v109(v108, v160);
    OUTLINED_FUNCTION_4_56();
    sub_237B2EAD0(v161, v110);
    OUTLINED_FUNCTION_30_6();

LABEL_14:
    OUTLINED_FUNCTION_73();
    return;
  }

  v59 = sub_237B0DE28(*(v97 + 16));
  v25 = 0;
LABEL_37:
  v105 = v59;
  if (v59)
  {

    type metadata accessor for CMLMultiArray();
    v106 = swift_initStackObject();
    *(v106 + 16) = v105;
    v107 = sub_237A2EC48();
    if (!v25)
    {
      v111 = v107;
      v156 = inited;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B318, &qword_237C12D60);
      v112 = swift_allocObject();
      v113 = _swift_stdlib_malloc_size(v112);
      *(v112 + 16) = 3;
      *(v112 + 24) = 2 * ((v113 - 32) / 8);
      v114 = *(v111 + 16);
      *(v112 + 32) = *v111;
      *(v112 + 48) = v114;
      v165[0] = MEMORY[0x277D84F90];
      sub_237AC8A34(0, 3, 0);
      v115 = v112;
      v116 = 32;
      v117 = v165[0];
      do
      {
        v118 = *(v115 + v116);
        if (v118 < 0)
        {
          __break(1u);
          goto LABEL_54;
        }

        v165[0] = v117;
        v120 = *(v117 + 16);
        v119 = *(v117 + 24);
        v121 = v120 + 1;
        if (v120 >= v119 >> 1)
        {
          v144[0] = v115;
          v155 = v120 + 1;
          sub_237AC8A34(v119 > 1, v120 + 1, 1);
          v121 = v155;
          v115 = v144[0];
          v117 = v165[0];
        }

        *(v117 + 16) = v121;
        *(v117 + 8 * v120 + 32) = v118;
        v116 += 8;
      }

      while (v116 != 56);

      v122 = sub_237A01F48(&unk_284AC0518, v117);

      if ((v122 & 1) == 0)
      {
        OUTLINED_FUNCTION_30_6();

        OUTLINED_FUNCTION_68_2();
        OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        v132 = OUTLINED_FUNCTION_22_9(v131, 28);
        OUTLINED_FUNCTION_45_9(v132, v133, v134);
        OUTLINED_FUNCTION_38_1();
        swift_setDeallocating();
        OUTLINED_FUNCTION_56_7();

        (*(v154 + 8))(v153, v160);
        goto LABEL_32;
      }

      v155 = v106;
      OUTLINED_FUNCTION_8_37();
      v123 = v147;
      sub_237B2EA58(v146, v147);
      v124 = v151;
      sub_2379E8770(v123, v151);
      v125 = OUTLINED_FUNCTION_6_17();
      v126 = v160;
      OUTLINED_FUNCTION_73_1(v125, v127, v160);
      if (v85)
      {
        v128 = NSTemporaryDirectory();
        sub_237C086EC();

        sub_237C059AC();

        v129 = OUTLINED_FUNCTION_6_17();
        OUTLINED_FUNCTION_73_1(v129, v130, v126);
        if (!v85)
        {
          sub_2379D9054(v151, &qword_27DE9AA18, &qword_237C0B710);
        }
      }

      else
      {
        (v164)(v145, v124, v126);
      }

      sub_237C05C1C();
      sub_237C05C0C();
      v135 = OUTLINED_FUNCTION_47_12();
      v136(v135, v150);
      v137 = v148;
      sub_237C05A2C();

      v138 = v152;
      OUTLINED_FUNCTION_33_16();
      sub_237C05A3C();
      v139 = *(v154 + 8);
      v139(v137, v126);
      sub_237B2C49C();
      v165[3] = v126;
      v165[4] = sub_237B2E8C8();
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v165);
      (*(v154 + 16))(boxed_opaque_existential_0, v138, v126);
      sub_237B19FFC(v165, 6);
      OUTLINED_FUNCTION_38_1();
      swift_setDeallocating();
      OUTLINED_FUNCTION_56_7();

      v141 = OUTLINED_FUNCTION_52_10(&a13);
      (v139)(v141);
      v142 = OUTLINED_FUNCTION_52_10(&v166);
      (v139)(v142);
      v143 = OUTLINED_FUNCTION_52_10(&a14);
      (v139)(v143);
      OUTLINED_FUNCTION_4_56();
      v87 = v161;
LABEL_20:
      sub_237B2EAD0(v87, v88);
LABEL_21:

      sub_237B2258C();
      v90 = v89;

      if ((v90 & 1) == 0)
      {
        v91 = OUTLINED_FUNCTION_69_5();
        sub_237B19FFC(v91, 1);
      }

      sub_237B226D0();
      v93 = v92;

      if ((v93 & 1) == 0)
      {
        v94 = OUTLINED_FUNCTION_69_5();
        sub_237B19FFC(v94, 2);
      }

      goto LABEL_14;
    }

    swift_setDeallocating();
    OUTLINED_FUNCTION_56_7();

    goto LABEL_40;
  }

LABEL_55:
  __break(1u);
}

uint64_t *sub_237B2D48C()
{
  v2 = OUTLINED_FUNCTION_87();
  result = MEMORY[0x2383DDB70](v2);
  if (result)
  {
    v4 = result;
    type metadata accessor for CMLParameters();
    inited = swift_initStackObject();
    *(inited + 16) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B288, &qword_237C137F0);
    v6 = sub_237C05ADC();
    OUTLINED_FUNCTION_0();
    v8 = v7;
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_237C0B660;
    (*(v8 + 16))(v10 + v9, v0, v6);
    sub_237B22168(v10, &v20);
    if (v1)
    {
      swift_setDeallocating();
      tc_v1_release();
      swift_setDeallocating();
      v11 = v10;
      sub_237B9097C();
      return v11;
    }

    swift_setDeallocating();
    sub_237B9097C();
    OUTLINED_FUNCTION_40_12();
    v11 = &v20;
    MLDataTable.subscript.getter();
    if (v19)
    {
      sub_2379DBC9C(v18, 1);
      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
      v13 = OUTLINED_FUNCTION_22_9(v12, 33);
      OUTLINED_FUNCTION_45_9(v13, v14, v15);
      OUTLINED_FUNCTION_59_6();
    }

    else
    {

      sub_2379DBC9C(v18, 0);
      OUTLINED_FUNCTION_74_4();
      sub_237A31004(v16, v17);
      if (!v18)
      {
        v11 = sub_237A31864(10, inited);

        OUTLINED_FUNCTION_59_6();
        tc_v1_release();
        return v11;
      }

      OUTLINED_FUNCTION_59_6();
    }

    tc_v1_release();
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B2D6E8()
{
  v2 = *(v0 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args);

  sub_237A31864(4, v2);

  if (!v1)
  {
  }

  return 1;
}

uint64_t sub_237B2D764(uint64_t a1, _BYTE *a2)
{
  switch(*a2)
  {
    case 2:

      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_60_0();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_57_0();
  v3 = sub_237C0929C();

  if (v3)
  {
LABEL_5:
    v4 = MEMORY[0x2383DDB70](0);
    if (!v4)
    {
      __break(1u);
      JUMPOUT(0x237B2D950);
    }

    v5 = v4;
    type metadata accessor for CMLParameters();
    inited = swift_initStackObject();
    *(inited + 16) = v5;
    type metadata accessor for CMLFeatureValue();
    sub_237C05A9C();
    v7 = sub_237A2E7CC();
    if (v2)
    {
      swift_setDeallocating();
      tc_v1_release();
    }

    else
    {
      sub_237A2F598(7, v7);

      sub_237A31864(6, inited);

      swift_setDeallocating();
      tc_v1_release();

      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_237B2D964(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D258, &unk_237C137D0);
  OUTLINED_FUNCTION_20(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v7 = _s20PersistentParametersVMa_4(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_31_11(v1 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters);
  sub_237B23430(v1 + v12, v6);
  OUTLINED_FUNCTION_73_1(v6, 1, v7);
  if (v13)
  {
    sub_2379D9054(v6, &qword_27DE9D258, &unk_237C137D0);
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    OUTLINED_FUNCTION_22_9(v14, 48);
    *(v15 + 48) = 2;
    return swift_willThrow();
  }

  else
  {
    OUTLINED_FUNCTION_5_52();
    sub_237B2E9FC(v6, v11);
    sub_237B28A88(a1);
    OUTLINED_FUNCTION_0_68();
    return sub_237B2EAD0(v11, v16);
  }
}

void sub_237B2DD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v22;
  a20 = v23;
  v132 = v20;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_0();
  v134 = v30;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_138();
  v133 = v32;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v33);
  v35 = &v132 - v34;
  MEMORY[0x28223BE20](v36);
  v37 = OUTLINED_FUNCTION_46_7();
  v38 = _s20PersistentParametersVMa_4(v37);
  v139 = v38[5];
  v39 = v27[v139];
  OUTLINED_FUNCTION_6_49();
  v137 = v40;
  sub_237B2EA58(&v27[v40], &v21[v41]);
  OUTLINED_FUNCTION_23_27();
  *v21 = v39;
  *&v21[v28[7]] = 500;
  v42 = v28[8];
  v145 = v44;
  v146 = v43;
  *&v21[v42] = v43;
  *&v21[v28[9]] = v44;
  v136 = v27[v38[9]];
  v21[v45] = v136;
  LODWORD(v135) = *v21;
  OUTLINED_FUNCTION_25_23();
  sub_237B2EAD0(v21, v46);
  v47 = v38[6];
  v141 = v38[5];
  v142 = v47;
  v48 = *(v25 + v141);
  sub_237B2EA58(v25 + v47, &v35[v28[5]]);
  OUTLINED_FUNCTION_18_28();
  *v35 = v48;
  *&v35[v28[7]] = 500;
  v49 = v28[8];
  v138 = v50;
  *&v35[v49] = v50;
  v51 = v28[9];
  v143 = v52;
  v144 = v25;
  *&v35[v51] = v52;
  v140 = *(v25 + v38[9]);
  v35[v53] = v140;
  v54 = *v35;
  sub_237B2EAD0(v35, v39);
  v55 = sub_2379F732C(v135, v54);
  v56 = v27[v139];
  v57 = v28[5];
  if ((v55 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_32();
    v104 = v133;
    sub_237B2EA58(&v27[v137], &v133[v105]);
    OUTLINED_FUNCTION_18_28();
    *v104 = v56;
    OUTLINED_FUNCTION_20_25();
    v106 = v145;
    *&v104[v107] = v146;
    *&v104[v28[9]] = v106;
    v104[v108] = v136;
    v109 = *v104;
    OUTLINED_FUNCTION_25_23();
    sub_237B2EAD0(v104, v110);
    if (v109)
    {
      v111 = 0xD00000000000004FLL;
    }

    else
    {
      v111 = 0xD000000000000046;
    }

    if (v109)
    {
      v112 = "Style image not readable.";
    }

    else
    {
      v112 = "Style strength: ";
    }

    v145 = v112 | 0x8000000000000000;
    v146 = v111;
    v113 = *(v144 + v141);
    v114 = v134;
    sub_237B2EA58(v144 + v142, &v134[v28[5]]);
    *&v114[v28[6]] = 1;
    *v114 = v113;
    OUTLINED_FUNCTION_31_16();
    *&v114[v115] = v116;
    *&v114[v28[8]] = v138;
    *&v114[v28[9]] = v143;
    v114[v117] = v140;
    v118 = *v114;
    sub_237B2EAD0(v114, v56);
    v119 = v118 == 0;
    if (v118)
    {
      v100 = 0xD00000000000004FLL;
    }

    else
    {
      v100 = 0xD000000000000046;
    }

    if (v119)
    {
      v120 = "Style strength: ";
    }

    else
    {
      v120 = "Style image not readable.";
    }

    v102 = v120 | 0x8000000000000000;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v103 = xmmword_237C0E010;
    v121 = v145;
    *(v103 + 16) = v146;
    *(v103 + 24) = v121;
    goto LABEL_19;
  }

  v58 = v137;
  v135 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData;
  sub_237B2EA58(&v27[v137], &v21[v57]);
  OUTLINED_FUNCTION_23_27();
  *v21 = v56;
  OUTLINED_FUNCTION_31_16();
  *&v21[v59] = v60;
  v61 = v145;
  *&v21[v28[8]] = v146;
  *&v21[v28[9]] = v61;
  v62 = v136;
  v21[v63] = v136;
  sub_237B2EAD0(v21, type metadata accessor for MLStyleTransfer.ModelParameters);
  v64 = *(v144 + v141);
  v65 = OUTLINED_FUNCTION_72_5();
  sub_237B2EA58(v65, v66);
  OUTLINED_FUNCTION_18_28();
  *v35 = v64;
  OUTLINED_FUNCTION_20_25();
  v67 = v138;
  *&v35[v68] = v138;
  OUTLINED_FUNCTION_51_6(v69);
  sub_237B2EAD0(v35, type metadata accessor for MLStyleTransfer.ModelParameters);
  v70 = v27[v139];
  v71 = v28[5];
  v134 = v27;
  sub_237B2EA58(&v27[v58], &v21[v71]);
  OUTLINED_FUNCTION_23_27();
  *v21 = v70;
  OUTLINED_FUNCTION_31_16();
  *&v21[v72] = v73;
  v74 = v145;
  v75 = v146;
  *&v21[v28[8]] = v146;
  *&v21[v28[9]] = v74;
  v21[v76] = v62;
  sub_237B2EAD0(v21, type metadata accessor for MLStyleTransfer.ModelParameters);
  if (v75 != v67)
  {
    a10 = v146;
    sub_237A20C10();
    OUTLINED_FUNCTION_23_2();
    v122 = sub_237C08DEC();
    v124 = v123;
    OUTLINED_FUNCTION_34_15();
    OUTLINED_FUNCTION_2_64();
    v125 = OUTLINED_FUNCTION_72_5();
    sub_237B2EA58(v125, v126);
    OUTLINED_FUNCTION_18_28();
    *v35 = &a10;
    OUTLINED_FUNCTION_20_25();
    v127 = v138;
    *&v35[v128] = v138;
    OUTLINED_FUNCTION_51_6(v129);
    OUTLINED_FUNCTION_1_65();
    sub_237B2EAD0(v35, v130);
    v147 = v127;
    OUTLINED_FUNCTION_23_2();
    v100 = sub_237C08DEC();
    v102 = v131;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v103 = xmmword_237C13740;
    *(v103 + 16) = v122;
    *(v103 + 24) = v124;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_34_15();
  OUTLINED_FUNCTION_2_64();
  v77 = OUTLINED_FUNCTION_72_5();
  sub_237B2EA58(v77, v78);
  OUTLINED_FUNCTION_18_28();
  *v35 = type metadata accessor for MLStyleTransfer.ModelParameters;
  OUTLINED_FUNCTION_20_25();
  *&v35[v79] = v146;
  v80 = v143;
  *&v35[v28[9]] = v143;
  v35[v81] = v140;
  OUTLINED_FUNCTION_1_65();
  sub_237B2EAD0(v35, v82);
  if (v145 != v80)
  {
    v83 = v134[v139];
    OUTLINED_FUNCTION_6_49();
    sub_237B2EA58(v84 + v58, &v21[v85]);
    OUTLINED_FUNCTION_23_27();
    *v21 = v83;
    OUTLINED_FUNCTION_31_16();
    *&v21[v86] = v87;
    v88 = v145;
    v89 = v146;
    *&v21[v28[8]] = v146;
    *&v21[v28[9]] = v88;
    v21[v90] = v62;
    sub_237B2EAD0(v21, type metadata accessor for MLStyleTransfer.ModelParameters);
    a10 = v88;
    sub_237A20C10();
    v91 = sub_237C08DEC();
    v93 = v92;
    OUTLINED_FUNCTION_34_15();
    v94 = OUTLINED_FUNCTION_72_5();
    sub_237B2EA58(v94, v95);
    OUTLINED_FUNCTION_18_28();
    *v35 = &a10;
    OUTLINED_FUNCTION_20_25();
    *&v35[v96] = v89;
    v97 = v28[9];
    v98 = v143;
    *&v35[v97] = v143;
    v35[v99] = v140;
    sub_237B2EAD0(v35, type metadata accessor for MLStyleTransfer.ModelParameters);
    v147 = v98;
    v100 = sub_237C08DEC();
    v102 = v101;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v103 = xmmword_237C13750;
    *(v103 + 16) = v91;
    *(v103 + 24) = v93;
LABEL_19:
    *(v103 + 32) = v100;
    *(v103 + 40) = v102;
    *(v103 + 48) = 3;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B2E3DC()
{

  OUTLINED_FUNCTION_16_24();
  sub_237B2EAD0(v0 + v1, v2);
  sub_2379D9054(v0 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters, &qword_27DE9D258, &unk_237C137D0);

  return v0;
}

uint64_t sub_237B2E450()
{
  sub_237B2E3DC();

  return swift_deallocClassInstance();
}

uint64_t _s23TrainingSessionDelegateCMa(uint64_t a1)
{
  result = qword_27DE9D2E8;
  if (!qword_27DE9D2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B2E4FC(uint64_t a1)
{
  type metadata accessor for MLTrainingSessionParameters(319);
  if (v1 <= 0x3F)
  {
    sub_237B2E5E4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_237B2E5E4(uint64_t a1)
{
  if (!qword_27DE9D2F8)
  {
    _s20PersistentParametersVMa_4(255);
    v1 = sub_237C08D2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DE9D2F8);
    }
  }
}

uint64_t sub_237B2E760()
{
  sub_237B2D6E8();
  v1 = *(v0 + 8);

  return v1(1, 1);
}

uint64_t sub_237B2E858(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D258, &unk_237C137D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_237B2E8C8()
{
  result = qword_27DE9BFF8;
  if (!qword_27DE9BFF8)
  {
    sub_237C05ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BFF8);
  }

  return result;
}

unint64_t sub_237B2E920()
{
  result = qword_27DE9D308;
  if (!qword_27DE9D308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9D300, &qword_237C137F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D308);
  }

  return result;
}

uint64_t sub_237B2E984@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_237C05AEC();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x2383D96A0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x2383D96C0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_237B2E9FC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_237B2EA58(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_237B2EAD0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_45_9(double a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 48) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_56_7()
{

  return tc_v1_release();
}

uint64_t OUTLINED_FUNCTION_59_6()
{
  sub_2379DBC9C(v1, v0);

  return swift_setDeallocating();
}

unint64_t OUTLINED_FUNCTION_60_7()
{

  return sub_2379E8AF0();
}

uint64_t OUTLINED_FUNCTION_69_5()
{
  *(v3 - 128) = v1;
  *(v3 - 120) = v2;
  *(v3 - 152) = v0;
  return v3 - 152;
}

void OUTLINED_FUNCTION_76_4()
{
  v3 = *(v1 - 216);

  sub_2379DBC9C(v3, v0);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLTextClassifier.prediction(from:)(Swift::String from)
{
  v2 = *v1;
  v3 = sub_237C086BC();
  v4 = [v2 predictedLabelForString_];

  if (v4)
  {
    v5 = sub_237C086EC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t MLTextClassifier.predictions(from:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for MLTextClassifier(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_0_69(v7, v8, v9, v10, v11, v12, v13, v14, v28);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_237B2F18C(v2, v16 + v15);
  v17 = *(a1 + 16);
  if (v17)
  {
    OUTLINED_FUNCTION_3_64(MEMORY[0x277D84F90]);
    sub_237AC8A74();
    v18 = v29;
    v19 = a1 + 40;
    while (1)
    {

      v20 = sub_237B2F1F0();
      if (v3)
      {
        break;
      }

      v22 = v20;
      v23 = v21;
      v24 = v16;

      v25 = *(v29 + 16);
      if (v25 >= *(v29 + 24) >> 1)
      {
        sub_237AC8A74();
      }

      *(v29 + 16) = v25 + 1;
      v26 = v29 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      v19 += 16;
      --v17;
      v16 = v24;
      v3 = 0;
      if (!v17)
      {

        return v18;
      }
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v18;
}

uint64_t sub_237B2F124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLTextClassifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B2F18C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLTextClassifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B2F1F0()
{
  OUTLINED_FUNCTION_4_57();
  v0._countAndFlagsBits = OUTLINED_FUNCTION_1_66();
  return MLTextClassifier.prediction(from:)(v0)._countAndFlagsBits;
}

void *sub_237B2F260(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(v3 + 16);
  v5 = sub_237C08CCC();
  v6 = v5;
  v7 = *(v5 + 16);
  if (v4 < v7)
  {
    sub_2379E8AF0();
    swift_allocError();
    *v8 = 0xD000000000000037;
    *(v8 + 8) = 0x8000000237C1CA90;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0;
    swift_willThrow();

    return v6;
  }

  if (v7 == v4)
  {
    return v6;
  }

  v9 = 0;
  v10 = 1 << *(v5 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = 0.0;
  if (v12)
  {
    while (1)
    {
      v15 = v9;
LABEL_12:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v14 = v14 + *(*(v5 + 56) + ((v15 << 9) | (8 * v16)));
      if (!v12)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v5 + 64 + 8 * v15);
    ++v9;
    if (v12)
    {
      v9 = v15;
      goto LABEL_12;
    }
  }

  v17 = (1.0 - v14) / (v4 - *(v5 + 16));
  v18 = 1 << *(v3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v3 + 56);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  if (v20)
  {
    while (2)
    {
      v23 = v22;
LABEL_21:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v25 = (*(v3 + 48) + ((v23 << 10) | (16 * v24)));
      v27 = *v25;
      v26 = v25[1];
      v28 = v6[2];

      if (v28)
      {

        sub_237ACAC78(v27, v26);
        v30 = v29;

        if (v30)
        {

          goto LABEL_24;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      v40 = sub_237ACAC78(v27, v26);
      v41 = v31;
      if (__OFADD__(v6[2], (v31 & 1) == 0))
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D310, &qword_237C13800);
      if (sub_237C090AC())
      {
        v32 = sub_237ACAC78(v27, v26);
        if ((v41 & 1) != (v33 & 1))
        {
          goto LABEL_40;
        }

        v34 = v32;
        if ((v41 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v34 = v40;
        if ((v41 & 1) == 0)
        {
LABEL_30:
          v6[(v34 >> 6) + 8] |= 1 << v34;
          v35 = (v6[6] + 16 * v34);
          *v35 = v27;
          v35[1] = v26;
          *(v6[7] + 8 * v34) = v17;
          v36 = v6[2];
          v37 = __OFADD__(v36, 1);
          v38 = v36 + 1;
          if (v37)
          {
            goto LABEL_39;
          }

          v6[2] = v38;
          goto LABEL_24;
        }
      }

      *(v6[7] + 8 * v34) = v17;
LABEL_24:
      v22 = v23;
      if (!v20)
      {
        break;
      }

      continue;
    }
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      return v6;
    }

    v20 = *(v3 + 56 + 8 * v23);
    ++v22;
    if (v20)
    {
      goto LABEL_21;
    }
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

uint64_t MLTextClassifier.predictionsWithConfidence(from:)(uint64_t a1)
{
  v4 = type metadata accessor for MLTextClassifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_0_69(v6, v7, v8, v9, v10, v11, v12, v13, v23);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_237B2F18C(v2, v15 + v14);
  v16 = *(a1 + 16);
  if (v16)
  {
    OUTLINED_FUNCTION_3_64(MEMORY[0x277D84F90]);
    sub_237AC8EF4();
    v17 = v24;
    for (i = a1 + 40; ; i += 16)
    {

      v19 = sub_237B2FCF8();
      if (v1)
      {
        break;
      }

      v20 = v19;

      v21 = *(v24 + 16);
      if (v21 >= *(v24 + 24) >> 1)
      {
        sub_237AC8EF4();
      }

      *(v24 + 16) = v21 + 1;
      *(v24 + 8 * v21 + 32) = v20;
      if (!--v16)
      {

        return v17;
      }
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v17;
}

uint64_t sub_237B2F81C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t *)@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  sub_2379DBCF4(*a1, v9);
  sub_2379DFC10(v8, v9);
  a2();

  if (!v4)
  {
    MEMORY[0x28223BE20](result);
    v11 = sub_237BBDC94(a3);
    v13 = v12;

    *a4 = v11;
    *(a4 + 8) = v13 & 1;
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = v0;
  v2 = type metadata accessor for MLTextClassifier(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v0 + ((v3 + 16) & ~v3));

  v5 = v4 + v2[7];
  type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v6 = sub_237C05ADC();
    if (!__swift_getEnumTagSinglePayload(v5, 4, v6))
    {
      (*(*(v6 - 8) + 8))(v5, v6);
    }
  }

  v7 = type metadata accessor for MLTextClassifier.ModelParameters(0);

  v8 = (v5 + *(v7 + 24));
  if (v8[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v9 = (v4 + v2[8]);
  type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      v13 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v28 = *(v13 + 20);
      v14 = sub_237C05DBC();
      v15 = *(*(v14 - 8) + 8);
      v15(v9 + v28, v14);
      v15(v9 + *(v13 + 24), v14);
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = &qword_27DE9AA00;
        v12 = &qword_237C0B6F0;
      }

      else
      {
        v11 = &qword_27DE9A9C8;
        v12 = &qword_237C0B6A0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
      OUTLINED_FUNCTION_4();
      (*(v16 + 8))(v9);
      break;
  }

  v17 = (v4 + v2[9]);
  v18 = swift_getEnumCaseMultiPayload();
  switch(v18)
  {
    case 2:

      break;
    case 1:
      v21 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v22 = *(v21 + 20);
      v23 = sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      v25 = *(v24 + 8);
      v25(v17 + v22, v23);
      v25(v17 + *(v21 + 24), v23);
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = &qword_27DE9AA00;
        v20 = &qword_237C0B6F0;
      }

      else
      {
        v19 = &qword_27DE9A9C8;
        v20 = &qword_237C0B6A0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
      OUTLINED_FUNCTION_4();
      (*(v26 + 8))(v17);
      break;
  }

  return MEMORY[0x2821FE8E8](v1);
}

void *sub_237B2FCF8()
{
  OUTLINED_FUNCTION_4_57();
  v0 = OUTLINED_FUNCTION_1_66();
  return sub_237B2F260(v0, v1);
}

uint64_t sub_237B2FD50@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_237B05DEC(*a1);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_69(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237B2F124(v9, &a9 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
}

uint64_t OUTLINED_FUNCTION_4_57()
{

  return type metadata accessor for MLTextClassifier(0);
}

uint64_t sub_237B2FE34(char *a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v38 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  v6 = OUTLINED_FUNCTION_20(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_138();
  v36 = v21;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v35 - v23;
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v13);
  v28 = *(v3 + 24);
  type metadata accessor for MLFewShotSoundClassifier(0);
  v39 = a3;
  v40 = v28;
  v41 = vrev64_s32(*(v3 + 28));
  v42 = v12;
  _s18TemporalClassifierVMa(0);
  sub_237A24C78();
  sub_237C061AC();
  v29 = *(v15 + 16);
  v29(v24, v19, v13);
  sub_237A7FA40(v12, v9);
  result = __swift_getEnumTagSinglePayload(v9, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v31 = *(v15 + 8);
    v31(v19, v13);
    v32 = v36;
    v33 = OUTLINED_FUNCTION_1_15();
    v34(v33);
    sub_2379F6DD8(v12, &qword_27DE9B410, &qword_237C0CCC8);
    v29(v37, v24, v13);
    sub_237C0689C();
    v31(v32, v13);
    return (v31)(v24, v13);
  }

  return result;
}

uint64_t sub_237B300F8@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>, float a7@<S2>)
{
  v225 = a3;
  v232 = a1;
  v224[5] = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  v12 = OUTLINED_FUNCTION_20(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0(v224 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  v15 = OUTLINED_FUNCTION_20(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77_0(v224 - v16);
  v234 = sub_237C0610C();
  OUTLINED_FUNCTION_0();
  v240 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0(v224 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D318, &qword_237C13808);
  v21 = OUTLINED_FUNCTION_20(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_77_0(v224 - v22);
  v23 = sub_237C0683C();
  v233 = *(v23 - 8);
  v238 = (v23 - 8);
  v244 = v233;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_138();
  v242 = v30;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_138();
  v243 = v32;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_138();
  v247 = v34;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_138();
  v249 = v36;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v37);
  v39 = v224 - v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_138();
  v245 = v41;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_138();
  v241 = v43;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v45);
  v248 = v224 - v46;
  MEMORY[0x28223BE20](v47);
  v49 = v224 - v48;
  v50 = _s18TemporalClassifierV6OutputVMa(0);
  v51 = v50 - 8;
  v230 = v50 - 8;
  MEMORY[0x28223BE20](v50);
  v53 = v224 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
  v239 = a2;
  sub_237C0608C();
  _s18TemporalClassifierVMa(0);
  sub_237A24C78();
  v228 = v53;
  sub_237C063CC();
  v55 = *(v244 + 8);
  v56 = OUTLINED_FUNCTION_16_16();
  v55(v56);
  v57 = &v53[*(v51 + 36)];
  v58 = v55;
  *&v229 = v54;
  sub_237C0606C();
  v59 = *MEMORY[0x277D2CD58];
  v60 = sub_237C0618C();
  v61 = v231;
  (*(*(v60 - 8) + 104))(v231, v59, v60);
  __swift_storeEnumTagSinglePayload(v61, 0, 1, v60);
  v224[4] = v49;
  sub_237C061DC();
  sub_2379F6DD8(v61, &qword_27DE9D318, &qword_237C13808);
  v62 = OUTLINED_FUNCTION_16_16();
  v58(v62);
  sub_237C0606C();
  v224[3] = v57;
  sub_237C0689C();
  sub_237C066AC();
  sub_237C0673C();
  v63 = OUTLINED_FUNCTION_29_11();
  v58(v63);
  sub_237C0661C();
  sub_237C066DC();
  v64 = OUTLINED_FUNCTION_87_0();
  v58(v64);
  sub_237C066AC();
  v65 = OUTLINED_FUNCTION_55_1();
  v58(v65);
  sub_237C0670C();
  v66 = OUTLINED_FUNCTION_87_0();
  v58(v66);
  sub_237C066DC();
  v246 = v39;
  v67 = OUTLINED_FUNCTION_29_11();
  v58(v67);
  v68 = OUTLINED_FUNCTION_1_15();
  v58(v68);
  v69 = OUTLINED_FUNCTION_13_29();
  v58(v69);
  v70 = OUTLINED_FUNCTION_12_35();
  v58(v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B320, &qword_237C0CBC8);
  v71 = *(v233 + 72);
  v72 = v244;
  v73 = (*(v244 + 80) + 32) & ~*(v244 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_237C0BC00;
  v233 = v73;
  v75 = v74 + v73;
  sub_237C0608C();
  v76 = v72 + 16;
  v77 = *(v72 + 16);
  v78 = v228;
  v77(v75 + v71, v228, v23);
  v79 = v230;
  v77(v75 + 2 * v71, (v78 + *(v230 + 28)), v23);
  v227 = v71;
  v80 = *(v79 + 32);
  v224[1] = 3 * v71;
  v238 = v77;
  v77(v75 + 3 * v71, (v78 + v80), v23);
  v81 = sub_237C068AC();

  v239 = v81;
  if (!*(v81 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v230 = v239 + v233;
  OUTLINED_FUNCTION_18_29();
  v244 = v76;
  v83();
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v84 = swift_allocObject();
  v229 = xmmword_237C0B670;
  *(v84 + 16) = xmmword_237C0B670;
  OUTLINED_FUNCTION_15_33();
  sub_237C0679C();
  v85 = sub_237C0612C();
  v86 = v240 + 8;
  v87 = *(v240 + 8);
  v88 = v234;
  v87(v78, v234);
  *(v84 + 32) = v85;
  *(v84 + 40) = -1;
  sub_237C0611C();
  v89 = v245;
  sub_237C0681C();
  v240 = v86;
  v232 = v87;
  v90 = (v87)(v78, v88);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_17_14();
  *(v91 - 16) = v89;
  sub_237C0619C();
  OUTLINED_FUNCTION_17_24(&v251);
  v92 = MEMORY[0x277D83A90];
  v93 = MEMORY[0x277D2CF38];
  sub_237C066CC();
  sub_237C0669C();
  v94 = OUTLINED_FUNCTION_16_16();
  v58(v94);
  v252 = v92;
  v253 = v93;
  *&v250 = a5;
  sub_237C065DC();
  v95 = sub_237C0616C();
  v96 = OUTLINED_FUNCTION_1_67();
  OUTLINED_FUNCTION_20_26(v96, v97, v98, v95);
  sub_237C0680C();
  v99 = (1.0 - a6) * a5;
  v252 = v92;
  v253 = MEMORY[0x277D2CF38];
  *&v250 = v99;
  sub_237C065DC();
  v100 = OUTLINED_FUNCTION_1_67();
  v233 = v95;
  v103 = OUTLINED_FUNCTION_20_26(v100, v101, v102, v95);
  OUTLINED_FUNCTION_21_25(v103);
  OUTLINED_FUNCTION_15_33();
  sub_237C066DC();
  OUTLINED_FUNCTION_24_25();
  sub_237C062FC();
  v104 = OUTLINED_FUNCTION_1_15();
  v58(v104);
  v105 = v242;
  sub_237C066BC();
  v106 = OUTLINED_FUNCTION_87_0();
  v58(v106);
  v107 = v235;
  sub_237C066DC();
  sub_237C062FC();
  v108 = OUTLINED_FUNCTION_12_35();
  v58(v108);
  sub_237C066DC();
  v109 = OUTLINED_FUNCTION_1_15();
  v58(v109);
  sub_237C0676C();
  v110 = OUTLINED_FUNCTION_87_0();
  v58(v110);
  v111 = OUTLINED_FUNCTION_55_1();
  v58(v111);
  v112 = OUTLINED_FUNCTION_29_11();
  v58(v112);
  v113 = OUTLINED_FUNCTION_16_16();
  v58(v113);
  v114 = OUTLINED_FUNCTION_13_29();
  v58(v114);
  (v58)(v246, v23);
  (v58)(v241, v23);
  result = (v58)(v245, v23);
  if (*(v239 + 16) < 2uLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_18_29();
  v115();
  v116 = OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_3_65(v116);
  v118 = *(v117 - 256);
  sub_237C0679C();
  v119 = sub_237C0612C();
  OUTLINED_FUNCTION_2_65();
  v121 = *(v120 - 256);
  v121();
  *(v105 + 32) = v119;
  *(v105 + 40) = -1;
  OUTLINED_FUNCTION_27_13();
  sub_237C0611C();
  v122 = v246;
  sub_237C0681C();
  v123 = (v121)(v118, v107);
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_17_14();
  *(v124 - 16) = v122;
  sub_237C0619C();
  OUTLINED_FUNCTION_17_24(&v251);
  v125 = MEMORY[0x277D83A90];
  v126 = MEMORY[0x277D2CF38];
  sub_237C066CC();
  sub_237C0669C();
  v127 = OUTLINED_FUNCTION_29_11();
  v58(v127);
  v252 = v125;
  v253 = v126;
  *&v250 = a5;
  sub_237C065DC();
  v128 = OUTLINED_FUNCTION_1_67();
  v129 = v233;
  OUTLINED_FUNCTION_20_26(v128, v130, v131, v233);
  sub_237C0680C();
  v252 = v125;
  v253 = MEMORY[0x277D2CF38];
  *&v250 = v99;
  sub_237C065DC();
  v132 = OUTLINED_FUNCTION_1_67();
  v135 = OUTLINED_FUNCTION_20_26(v132, v133, v134, v129);
  v136 = v242;
  OUTLINED_FUNCTION_21_25(v135);
  OUTLINED_FUNCTION_24_25();
  sub_237C066DC();
  OUTLINED_FUNCTION_15_33();
  sub_237C062FC();
  v137 = OUTLINED_FUNCTION_87_0();
  v58(v137);
  v138 = v236;
  sub_237C066BC();
  v139 = OUTLINED_FUNCTION_1_15();
  v58(v139);
  sub_237C066DC();
  sub_237C062FC();
  v140 = OUTLINED_FUNCTION_13_29();
  v58(v140);
  sub_237C066DC();
  v141 = OUTLINED_FUNCTION_87_0();
  v58(v141);
  sub_237C0676C();
  v142 = OUTLINED_FUNCTION_1_15();
  v58(v142);
  v143 = OUTLINED_FUNCTION_55_1();
  v58(v143);
  v144 = OUTLINED_FUNCTION_12_35();
  v58(v144);
  v145 = OUTLINED_FUNCTION_29_11();
  v58(v145);
  v146 = OUTLINED_FUNCTION_16_16();
  v58(v146);
  (v58)(v249, v23);
  (v58)(v245, v23);
  result = (v58)(v246, v23);
  if (*(v239 + 16) < 3uLL)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_18_29();
  v147();
  v148 = OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_3_65(v148);
  v150 = *(v149 - 256);
  sub_237C0679C();
  v151 = sub_237C0612C();
  OUTLINED_FUNCTION_2_65();
  v153 = *(v152 - 256);
  v153();
  *(v138 + 32) = v151;
  *(v138 + 40) = -1;
  OUTLINED_FUNCTION_27_13();
  sub_237C0611C();
  v154 = v249;
  sub_237C0681C();
  v155 = (v153)(v150, v136);
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_17_14();
  *(v156 - 16) = v154;
  sub_237C0619C();
  OUTLINED_FUNCTION_17_24(&v252);
  v157 = v242;
  v158 = MEMORY[0x277D83A90];
  v159 = MEMORY[0x277D2CF38];
  sub_237C066CC();
  sub_237C0669C();
  v160 = OUTLINED_FUNCTION_12_35();
  v58(v160);
  v252 = v158;
  v253 = v159;
  *&v250 = a5;
  v161 = sub_237C065DC();
  v162 = OUTLINED_FUNCTION_1_67();
  v163 = v233;
  OUTLINED_FUNCTION_20_26(v162, v164, v165, v233);
  sub_237C0680C();
  v252 = v158;
  v253 = MEMORY[0x277D2CF38];
  *&v250 = v99;
  sub_237C065DC();
  v166 = OUTLINED_FUNCTION_1_67();
  OUTLINED_FUNCTION_20_26(v166, v167, v168, v163);
  OUTLINED_FUNCTION_15_33();
  OUTLINED_FUNCTION_21_25(v169);
  sub_237C066DC();
  OUTLINED_FUNCTION_24_25();
  sub_237C062FC();
  v170 = OUTLINED_FUNCTION_16_16();
  v58(v170);
  sub_237C066BC();
  v171 = OUTLINED_FUNCTION_87_0();
  v58(v171);
  v172 = v226;
  sub_237C066DC();
  sub_237C062FC();
  v173 = OUTLINED_FUNCTION_55_1();
  v58(v173);
  sub_237C066DC();
  v174 = OUTLINED_FUNCTION_16_16();
  v58(v174);
  sub_237C0676C();
  v175 = OUTLINED_FUNCTION_87_0();
  v58(v175);
  v176 = OUTLINED_FUNCTION_29_11();
  v58(v176);
  v177 = OUTLINED_FUNCTION_1_15();
  v58(v177);
  v178 = OUTLINED_FUNCTION_12_35();
  v58(v178);
  v179 = OUTLINED_FUNCTION_13_29();
  v58(v179);
  (v58)(v247, v23);
  (v58)(v246, v23);
  result = (v58)(v249, v23);
  if (*(v239 + 16) >= 4uLL)
  {
    OUTLINED_FUNCTION_26_19();
    v180();

    v181 = OUTLINED_FUNCTION_14_28();
    OUTLINED_FUNCTION_3_65(v181);
    OUTLINED_FUNCTION_15_33();
    sub_237C0679C();
    v182 = sub_237C0612C();
    OUTLINED_FUNCTION_2_65();
    v184 = *(v183 - 256);
    v184();
    *(v172 + 32) = v182;
    *(v172 + 40) = -1;
    sub_237C0611C();
    v185 = v247;
    sub_237C0681C();
    v186 = (v184)(v161, v157);
    MEMORY[0x28223BE20](v186);
    OUTLINED_FUNCTION_17_14();
    *(v187 - 16) = v185;
    sub_237C0619C();
    *&v250 = a7;
    v188 = MEMORY[0x277D83A90];
    v189 = MEMORY[0x277D2CF38];
    sub_237C066CC();
    sub_237C0669C();
    v190 = OUTLINED_FUNCTION_16_16();
    v58(v190);
    v252 = v188;
    v253 = v189;
    *&v250 = a5;
    sub_237C065DC();
    OUTLINED_FUNCTION_64();
    v191 = v233;
    OUTLINED_FUNCTION_20_26(v192, v193, v194, v233);
    sub_237C0680C();
    v252 = MEMORY[0x277D83A90];
    v253 = v189;
    *&v250 = v99;
    sub_237C065DC();
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_20_26(v195, v196, v197, v191);
    sub_237C0680C();
    sub_237C066DC();
    OUTLINED_FUNCTION_15_33();
    sub_237C062FC();
    v198 = OUTLINED_FUNCTION_12_35();
    v58(v198);
    OUTLINED_FUNCTION_27_13();
    sub_237C066BC();
    v199 = OUTLINED_FUNCTION_1_15();
    v58(v199);
    OUTLINED_FUNCTION_24_25();
    sub_237C066DC();
    sub_237C062FC();
    v200 = OUTLINED_FUNCTION_87_0();
    v58(v200);
    sub_237C066DC();
    v201 = OUTLINED_FUNCTION_12_35();
    v58(v201);
    sub_237C0676C();
    v202 = OUTLINED_FUNCTION_1_15();
    v58(v202);
    v203 = OUTLINED_FUNCTION_29_11();
    v58(v203);
    v204 = OUTLINED_FUNCTION_13_29();
    v58(v204);
    v205 = OUTLINED_FUNCTION_16_16();
    v58(v205);
    v206 = OUTLINED_FUNCTION_55_1();
    v58(v206);
    v207 = OUTLINED_FUNCTION_29_11();
    v58(v207);
    v208 = OUTLINED_FUNCTION_13_29();
    v58(v208);
    v209 = OUTLINED_FUNCTION_1_15();
    v58(v209);
    v252 = MEMORY[0x277D839F8];
    v253 = MEMORY[0x277D2CF30];
    v250 = 0x3FD0000000000000;
    sub_237C065DC();
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_20_26(v210, v211, v212, v233);
    sub_237C0680C();
    sub_237C066BC();
    sub_237C066BC();
    v213 = OUTLINED_FUNCTION_16_16();
    v58(v213);
    OUTLINED_FUNCTION_27_13();
    sub_237C066BC();
    v214 = OUTLINED_FUNCTION_55_1();
    v58(v214);
    sub_237C066AC();
    v215 = OUTLINED_FUNCTION_29_11();
    v58(v215);
    sub_237C066BC();
    v216 = OUTLINED_FUNCTION_1_15();
    v58(v216);
    v217 = OUTLINED_FUNCTION_13_29();
    v58(v217);
    v218 = OUTLINED_FUNCTION_16_16();
    v58(v218);
    v219 = OUTLINED_FUNCTION_12_35();
    v58(v219);
    v220 = OUTLINED_FUNCTION_87_0();
    v58(v220);
    (v58)(v237, v23);
    (v58)(v248, v23);
    v221 = OUTLINED_FUNCTION_29_11();
    v58(v221);
    v222 = v224[6];
    OUTLINED_FUNCTION_26_19();
    v223();
    sub_237B31948(v228);
    __swift_storeEnumTagSinglePayload(v222, 0, 1, v23);
    return sub_237B319A4(v222, v225);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_237B317F8()
{
  v0 = sub_237C0683C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v9 - v5;
  sub_237C067FC();
  sub_237C0673C();
  v7 = *(v1 + 8);
  v7(v3, v0);
  sub_237C0630C();
  return (v7)(v6, v0);
}

uint64_t sub_237B31948(uint64_t a1)
{
  v2 = _s18TemporalClassifierV6OutputVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237B319A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 OUTLINED_FUNCTION_3_65(__n128 *a1)
{
  result = *(v1 - 384);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_28()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_25(uint64_t a1)
{

  return sub_237C0680C();
}

void sub_237B31B30()
{
  v0 = NSTemporaryDirectory();
  v1 = sub_237C086EC();
  v3 = v2;

  qword_27DEACE98 = v1;
  unk_27DEACEA0 = v3;
}

uint64_t sub_237B31B80@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v6 = sub_237C0714C();
  if (v6 != sub_237C0714C())
  {
    sub_237C0714C();
    OUTLINED_FUNCTION_1_68();
    OUTLINED_FUNCTION_0_70();
    sub_237C0714C();
    result = OUTLINED_FUNCTION_1_68();
    v2 = 0xEF736E6F69746172;
    v11 = 0x657469202E78614DLL;
    goto LABEL_16;
  }

  v6 = sub_237C070EC();
  if (v6 != sub_237C070EC())
  {
    sub_237C070EC();
    OUTLINED_FUNCTION_1_68();
    OUTLINED_FUNCTION_0_70();
    sub_237C070EC();
    result = OUTLINED_FUNCTION_1_68();
    v2 = 0xEA00000000006874;
    v11 = 0x706564202E78614DLL;
    goto LABEL_16;
  }

  sub_237C0718C();
  OUTLINED_FUNCTION_3_66();
  sub_237C0718C();
  if (v3 != v7)
  {
    OUTLINED_FUNCTION_2_66();
    sub_237C0718C();
    sub_237C08A6C();
    OUTLINED_FUNCTION_0_70();
    sub_237C0718C();
    result = sub_237C08A6C();
    v11 = 0xD000000000000013;
    goto LABEL_16;
  }

  sub_237C0716C();
  OUTLINED_FUNCTION_3_66();
  sub_237C0716C();
  if (v3 != v8)
  {
    v11 = 0xD000000000000011;
    OUTLINED_FUNCTION_2_66();
    sub_237C0716C();
    sub_237C08A6C();
    OUTLINED_FUNCTION_0_70();
    sub_237C0716C();
LABEL_13:
    result = sub_237C08A6C();
    goto LABEL_16;
  }

  v6 = sub_237C070AC();
  if (v6 != sub_237C070AC())
  {
    sub_237C070AC();
    OUTLINED_FUNCTION_1_68();
    OUTLINED_FUNCTION_0_70();
    sub_237C070AC();
    result = OUTLINED_FUNCTION_1_68();
    v2 = 0xEB00000000646565;
    v11 = 0x73206D6F646E6152;
    goto LABEL_16;
  }

  sub_237C0710C();
  OUTLINED_FUNCTION_3_66();
  sub_237C0710C();
  if (v3 != v9)
  {
    sub_237C0710C();
    sub_237C08A6C();
    OUTLINED_FUNCTION_0_70();
    sub_237C0710C();
    result = sub_237C08A6C();
    v2 = 0xEE00656C706D6173;
    v11 = 0x2062757320776F52;
    goto LABEL_16;
  }

  sub_237C0712C();
  OUTLINED_FUNCTION_3_66();
  sub_237C0712C();
  if (v3 != v10)
  {
    v11 = 0xD000000000000011;
    OUTLINED_FUNCTION_2_66();
    sub_237C0712C();
    sub_237C08A6C();
    OUTLINED_FUNCTION_0_70();
    sub_237C0712C();
    goto LABEL_13;
  }

  v11 = 0;
  v2 = 0;
  a1 = 0;
  v6 = 0;
  result = 0;
  v13 = 0;
LABEL_16:
  *a2 = v11;
  a2[1] = v2;
  a2[2] = a1;
  a2[3] = v6;
  a2[4] = result;
  a2[5] = v13;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_68()
{

  return sub_237C0924C();
}

uint64_t MLImageClassifier.ModelParameters.ClassifierType.hashValue.getter()
{
  sub_237C093CC();
  MEMORY[0x2383DCF70](0);
  return sub_237C0940C();
}

unint64_t sub_237B31F64()
{
  result = qword_27DE9D320;
  if (!qword_27DE9D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D320);
  }

  return result;
}

_BYTE *_s14ClassifierTypeOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x237B32074);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237B320AC(uint64_t a1@<X0>, void *a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, unint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9@<X1>)
{
  v239 = a7;
  LODWORD(v220) = a3;
  if (a3)
  {
    v11 = 1;
    v12 = OUTLINED_FUNCTION_117_0();
    sub_2379DBCF4(v12, v13);
    v14 = MEMORY[0x2383DDAC0](0);
    if (!v14)
    {
      goto LABEL_88;
    }

    v15 = v14;
    v16 = a6;
    type metadata accessor for CMLSequence();
    v17 = swift_allocObject();
    v18 = v17;
    *(v17 + 16) = v15;
    *(v17 + 24) = 1;
  }

  else
  {
    v16 = a6;
    v19 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v19, v20);
    v17 = sub_237B6C208(&v237);
    v18 = v237;
  }

  v229.n128_u64[0] = a4;
  v229.n128_u64[1] = a5;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_71();
  v22 = sub_237AC1AB8(sub_2379F345C, v21, v18);

  if ((v22 & 1) == 0)
  {
    sub_2379DBC9C(a2, v220 & 1);
    OUTLINED_FUNCTION_7_36();
    v28 = a4;
    v29 = a5;
LABEL_31:
    MEMORY[0x2383DC360](v28, v29);
    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v94 = swift_allocError();
    *v95 = v229;
    OUTLINED_FUNCTION_23_3(v94, v95);
    swift_willThrow();
    return;
  }

  v23 = v239;
  if (v220)
  {
    v11 = 1;
    sub_2379DBC9C(a2, 1);
    v24 = MEMORY[0x2383DDAC0](0);
    if (!v24)
    {
LABEL_91:
      __break(1u);
LABEL_92:
      sub_2379DBC9C(v11, 1);
      goto LABEL_93;
    }

    v25 = v24;
    type metadata accessor for CMLSequence();
    v26 = swift_allocObject();
    v27 = v26;
    *(v26 + 16) = v25;
    *(v26 + 24) = 1;
  }

  else
  {
    sub_237B6C208(&v237);
    v30 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v30, v31);
    v27 = v237;
  }

  v229.n128_u64[0] = v16;
  v229.n128_u64[1] = v23;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_71();
  v33 = sub_237AC1AB8(sub_2379F57B8, v32, v27);
  v213 = v9;

  if ((v33 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_36();
    v28 = v16;
    v29 = v23;
    goto LABEL_31;
  }

  v206 = v16;
  v237 = a2;
  OUTLINED_FUNCTION_18_30();
  v35 = v34 & 1;
  v238 = v34 & 1;
  v235 = v36;
  v236 = v34 & 1;
  sub_2379DBCF4(v36, v34 & 1);
  MLDataTable.subscript.getter();
  v231 = v233;
  v232 = v234;
  MLUntypedColumn.dropDuplicates()(&v229, v37);
  sub_2379DBC9C(v231, v232);
  v235 = v229.n128_u64[0];
  v236 = v229.n128_u8[8];
  Array<A>.init(_:)(&v235);
  v39 = v38;
  v40 = *(v38 + 16);
  v201 = v38;
  if (!v40)
  {
    v219 = MEMORY[0x277D84F90];
    v80 = a2;
    goto LABEL_33;
  }

  v211 = v35;
  v231 = MEMORY[0x277D84F90];
  sub_237AC8A94();
  v41 = v231;
  v42 = (v39 + 48);
  v208 = v40;
  v43 = v40;
  do
  {
    v218 = v41;
    v44 = *(v42 - 2);
    v45 = *(v42 - 1);
    v46 = *v42;
    OUTLINED_FUNCTION_18_30();
    v226 = v46;
    if (v47)
    {
      swift_willThrow();
      v48 = OUTLINED_FUNCTION_12_35();
      sub_2379E9288(v48, v49, v46);
    }

    else
    {
      swift_retain_n();
      v50 = OUTLINED_FUNCTION_12_35();
      sub_2379E9288(v50, v51, v46);
      OUTLINED_FUNCTION_12_36();
      v52 = sub_237B6ACC0();
      if (!v213)
      {
        v82 = v52;

        type metadata accessor for _UntypedColumn();
        v83 = swift_allocObject();
        v84 = v46;
        v85 = v83;
        *(v83 + 16) = v82;
        v229.n128_u64[0] = v44;
        v229.n128_u64[1] = v45;
        v230 = v84;
        v60 = sub_237A60280(4, v83, &v229);
        sub_2379DBC9C(v85, 0);
        v64 = 0;
        goto LABEL_22;
      }
    }

    OUTLINED_FUNCTION_25_20();

    OUTLINED_FUNCTION_6_50();
    v53 = OUTLINED_FUNCTION_12_36();
    MEMORY[0x2383DC360](v53);
    MEMORY[0x2383DC360](34, 0xE100000000000000);
    v54 = v229;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v55 = swift_allocError();
    *v56 = v54;
    OUTLINED_FUNCTION_19_26(v55, v56);
    v229.n128_u64[0] = v57;
    v58 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v59 = sub_237C0925C();
    if (v59)
    {
      v60 = v59;
      v61 = OUTLINED_FUNCTION_35_6();
      sub_2379DBC9C(v61, v62);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      v60 = swift_allocError();
      *v63 = v55;
    }

    v64 = 1;
    v65 = OUTLINED_FUNCTION_35_6();
    sub_2379DBC9C(v65, v66);
LABEL_22:
    v235 = a2;
    OUTLINED_FUNCTION_18_30();
    v236 = v67 & 1;
    v229.n128_u64[0] = v60;
    v229.n128_u8[8] = v64;
    MLDataTable.subscript.getter(&v229, &v233);
    sub_2379DBC9C(v229.n128_u64[0], v229.n128_i8[8]);
    v68 = v233;
    v69 = v234;
    if (v234)
    {
      swift_willThrow();
      v213 = 0;
      OUTLINED_FUNCTION_25_20();

      OUTLINED_FUNCTION_6_50();
      MEMORY[0x2383DC360](v206, v239);
      MEMORY[0x2383DC360](34, 0xE100000000000000);
      v70 = v229;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v71 = swift_allocError();
      *v72 = v70;
      OUTLINED_FUNCTION_19_26(v71, v72);
      sub_2379DBC9C(v68, v69);
      v73 = OUTLINED_FUNCTION_12_35();
      sub_2379E8CE8(v73, v74, v226);
      v75 = OUTLINED_FUNCTION_117_0();
      sub_2379DBC9C(v75, v76);
      v77 = 0uLL;
      v78 = 6;
    }

    else
    {
      swift_retain_n();
      v86 = sub_237B6ACC0();
      v213 = 0;
      sub_2379DBC9C(v68, 0);

      type metadata accessor for _UntypedColumn();
      v87 = swift_allocObject();
      v87[2] = v86;
      sub_2379DBCF4(v87, 0);
      sub_237A607E0(0, &v229);
      v88 = OUTLINED_FUNCTION_12_35();
      sub_2379E8CE8(v88, v89, v226);
      v90 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v90, v91);
      v92 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v92, v93);
      v77 = v229;
      v78 = v230;
    }

    v41 = v218;
    v231 = v218;
    v79 = v218[2];
    v80 = a2;
    if (v79 >= v218[3] >> 1)
    {
      v225 = v77;
      sub_237AC8A94();
      v77 = v225;
      v80 = a2;
      v41 = v231;
    }

    v42 += 24;
    v41[2] = v79 + 1;
    v81 = &v41[3 * v79];
    v81[2] = v77;
    v81[3].n128_u8[0] = v78;
    --v43;
  }

  while (v43);
  v219 = v41;
  v23 = v239;
  v35 = v211;
  v40 = v208;
LABEL_33:

  v97 = sub_237B6AA54(v96, 0, v40);
  v98 = sub_237AC7AC4(MEMORY[0x277D84F90], v40);
  v229.n128_u64[0] = v80;
  v229.n128_u8[8] = v35;
  OUTLINED_FUNCTION_11_39();
  v233 = v235;
  v234 = v236;
  Array<A>.init(_:)(&v233);
  v11 = 0;
  v209 = *(v99 + 16);
  v207 = v99;
  v100 = v99 + 48;
  v212 = v97;
  while (v209 != v11)
  {
    if (v11 >= *(v207 + 16))
    {
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      v198 = OUTLINED_FUNCTION_117_0();
      sub_2379DBC9C(v198, v199);
      goto LABEL_90;
    }

    if (!*(v97 + 16))
    {
      goto LABEL_83;
    }

    v101 = OUTLINED_FUNCTION_6_41();
    sub_2379E9288(v101, v102, v103);
    v104 = OUTLINED_FUNCTION_6_41();
    v107 = sub_237ACB180(v104, v105, v106);
    if ((v108 & 1) == 0)
    {
      goto LABEL_84;
    }

    v109 = *(*(v97 + 56) + 8 * v107);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v109 & 0x8000000000000000) != 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      sub_237B05F1C(v98, v110, v111, v112);
      v98 = v122;
      if ((v109 & 0x8000000000000000) != 0)
      {
        goto LABEL_85;
      }
    }

    if (v109 >= *(v98 + 16))
    {
      goto LABEL_86;
    }

    v222 = v11;
    v113 = v98 + 32;
    v114 = *(v98 + 32 + 8 * v109);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v98 + 32 + 8 * v109) = v114;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_237BC0EB4(0, *(v114 + 16) + 1, 1, v114);
      v114 = v123;
      *(v113 + 8 * v109) = v123;
    }

    v117 = *(v114 + 16);
    v116 = *(v114 + 24);
    if (v117 >= v116 >> 1)
    {
      sub_237BC0EB4(v116 > 1, v117 + 1, 1, v114);
      *(v113 + 8 * v109) = v124;
    }

    v118 = OUTLINED_FUNCTION_6_41();
    sub_2379E8CE8(v118, v119, v120);
    v121 = *(v113 + 8 * v109);
    *(v121 + 16) = v117 + 1;
    *(v121 + 8 * v117 + 32) = v222;
    v100 += 24;
    v11 = v222 + 1;
    v23 = v239;
    v97 = v212;
  }

  OUTLINED_FUNCTION_24_22();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B680;
  *(inited + 32) = v100;
  *(inited + 40) = 0xE700000000000000;
  v229.n128_u64[0] = v98;
  MEMORY[0x28223BE20](inited);
  OUTLINED_FUNCTION_11_33();
  *(v126 - 16) = &v229;

  v127 = sub_237BBDC94(sub_237B339A8);
  v129 = v128;

  *(inited + 48) = v127;
  *(inited + 56) = v129 & 1;
  *(inited + 64) = v206;
  *(inited + 72) = v23;
  v131 = v23;
  v229.n128_u64[0] = v219;
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_11_33();
  *(v132 - 16) = &v229;

  v133 = sub_237BBDC94(sub_237A7B748);
  v135 = v134;

  *(inited + 80) = v133;
  *(inited + 88) = v135 & 1;
  *(inited + 96) = a4;
  *(inited + 104) = a5;
  v229.n128_u64[0] = v201;
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_11_33();
  *(v137 - 16) = &v229;

  v138 = sub_237BBDC94(sub_237A7B8A0);
  v140 = v139;

  *(inited + 112) = v138;
  *(inited + 120) = v140 & 1;
  v141 = sub_237C085AC();
  sub_237B6CB9C(v141, &v229);
  if (v213)
  {
    sub_2379DBC9C(v237, v238);

    return;
  }

  v142 = v229.n128_u64[0];
  v143 = v229.n128_u8[8];
  sub_237B064E0(a1, v229.n128_u64[0], v229.n128_u8[8], v206, v131, &v229, a9);
  LODWORD(v209) = v143;
  v223 = v229.n128_u64[0];
  LODWORD(v239) = v229.n128_u8[8];
  v229.n128_u64[0] = a2;
  OUTLINED_FUNCTION_18_30();
  v229.n128_u8[8] = v144 & 1;
  OUTLINED_FUNCTION_11_39();
  v145 = v235;
  v146 = v236;
  v214 = v142;
  if (v236)
  {
    v147 = -1;
  }

  else
  {

    v147 = sub_237A2F128();
    v148 = OUTLINED_FUNCTION_4_26();
    sub_2379DBC9C(v148, v149);
  }

  sub_2379DBC9C(v145, v146);
  v150 = sub_237AC7A20(0, v147);
  v229.n128_u64[0] = v223;
  v229.n128_u8[8] = v239;
  OUTLINED_FUNCTION_24_22();
  MLDataTable.subscript.getter();
  v11 = v235;
  if (v236 == 1)
  {
    goto LABEL_92;
  }

  v151 = sub_237A2F128();
  v152 = OUTLINED_FUNCTION_4_26();
  sub_2379DBC9C(v152, v153);
  v154 = OUTLINED_FUNCTION_4_26();
  sub_2379DBC9C(v154, v155);
  if (v151 < 0)
  {
LABEL_93:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    return;
  }

  if (!v151)
  {
    goto LABEL_75;
  }

  v156 = 0;
  while (2)
  {
    v235 = v223;
    v236 = v239;
    MLDataTable.subscript.getter();
    if (v234)
    {
      goto LABEL_89;
    }

    v157 = v151;
    v158 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v158, v159);
    sub_237A607E0(v156, &v229);
    v160 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v160, v161);
    v162 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v162, v163);
    if (v230 != 3)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    a2 = (v156 + 1);
    v220 = v229.n128_i64[1];
    v11 = v229.n128_u64[0];

    for (i = 0; i != sub_237A2E9F4(); ++i)
    {
      v165 = sub_237A2E9C8(i);
      sub_237AFC548(v165, &v229);
      v166 = v229.n128_u64[0];
      v167 = v230;
      if (i >= sub_237A2E9F4())
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      if (v167)
      {
        goto LABEL_87;
      }

      sub_2379DF794(v239, &v235);
      if (v236)
      {
        v168 = OUTLINED_FUNCTION_117_0();
        sub_2379DBC9C(v168, v169);
        goto LABEL_67;
      }

      v170 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v170, v171);
      sub_237A607E0(v156, &v229);
      v172 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v172, v173);
      v174 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v174, v175);
      v176 = v229.n128_u64[0];
      if (v230)
      {
        sub_2379E8CE8(v229.n128_u64[0], v229.n128_u64[1], v230);
LABEL_67:
        v176 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_68;
        }

        goto LABEL_72;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_68:
        if ((v166 & 0x8000000000000000) != 0)
        {
          goto LABEL_80;
        }

        goto LABEL_69;
      }

LABEL_72:
      sub_237B05F04(v150, v177, v178, v179);
      v150 = v180;
      if ((v166 & 0x8000000000000000) != 0)
      {
        goto LABEL_80;
      }

LABEL_69:
      if (v166 >= *(v150 + 16))
      {
        goto LABEL_81;
      }

      *(v150 + 8 * v166 + 32) = v176;
    }

    sub_2379E8CE8(v11, v220, 3);

    ++v156;
    v151 = v157;
    if (a2 != v157)
    {
      continue;
    }

    break;
  }

LABEL_75:

  v229.n128_u64[0] = v150;
  MEMORY[0x28223BE20](v181);
  OUTLINED_FUNCTION_0_71();
  v182 = sub_237BBDC94(sub_2379F5698);
  v184 = v183;

  sub_237B6C670(v185, v186, v187, v188, v189, v190, v191, v192, v200, v201, a8, a1, a9, v206, v207, v209, v212, v214, a5, a4, v219, v220, a2, v223, v98, v225.n128_i64[1], v227, v228);
  v229.n128_u64[0] = v182;
  v229.n128_u8[8] = v184 & 1;
  sub_237B6C9CC();
  sub_2379DBC9C(v229.n128_u64[0], v229.n128_i8[8]);
  v193 = v237;
  v194 = v238;
  if (v238)
  {
    v195 = v237;
  }

  else
  {
    v196 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v196, v197);
    sub_237B6C588();
  }

  sub_2379DBC9C(v224, v239);
  sub_2379DBC9C(v215, v210);
  sub_2379DBC9C(v193, v194);
  *v203 = v193;
  *(v203 + 8) = v194;
}

void MLDataTable.stratifiedSplit<A>(proportions:on:generator:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *(v7 + 8);
  v9 = *v7;
  v10 = v8;
  sub_237B04410(a1, a4, &v9, a2, a3, a5, a6, a7);
}

uint64_t MLDataTable.stratifiedSplit(proportions:on:seed:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *v5;
  v11 = *(v5 + 8);
  sub_237B03618(a4, __src);
  sub_237B064E0(a1, v10, v11, a2, a3, a5, __src);
  memcpy(v13, __src, sizeof(v13));
  return sub_237B07C38(v13);
}

void *MLDataTable.randomSplit(by:seed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  if (*(v3 + 8))
  {
    v7 = v6;
    v9 = v6;
    sub_237B333C4(v6, 0, 1);
    *a1 = v6;
    *(a1 + 8) = 1;
    *a2 = v6;
    *(a2 + 8) = 1;

    return v6;
  }

  else
  {

    v10 = sub_237A30660(a3);
    v12 = v11;
    v13 = OUTLINED_FUNCTION_4_26();
    sub_2379DBC9C(v13, v14);
    type metadata accessor for _DataTable();
    swift_allocObject();
    v15 = sub_237B6C578(v10);
    swift_allocObject();
    result = sub_237B6C578(v12);
    *a1 = v15;
    *(a1 + 8) = 0;
    *a2 = result;
    *(a2 + 8) = 0;
  }

  return result;
}

void sub_237B333C4(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void MLDataTable.randomSplitBySequence(proportion:by:on:seed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, double a8)
{
  v16 = *v8;
  v17 = *(v8 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA50, &qword_237C0B7E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B670;
  *(inited + 32) = a8;
  *(inited + 40) = 1.0 - a8;
  sub_237B03618(a7, __src);
  sub_237B320AC(inited, v16, v17, a3, a4, a5, a6, &v67, __src);
  v19 = a1;
  v20 = a2;
  swift_setDeallocating();
  memcpy(__dst, __src, 0x78uLL);
  sub_237B07C38(__dst);
  v21 = v67;
  v22 = v68;
  OUTLINED_FUNCTION_5_53();
  v23 = v61;
  if (v62)
  {
    *&v59 = v61;
    v24 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (sub_237C0925C())
    {
      v25 = OUTLINED_FUNCTION_35_6();
      sub_2379DBC9C(v25, v26);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      swift_allocError();
      *v27 = v61;
    }

    v28 = OUTLINED_FUNCTION_35_6();
    sub_2379DBC9C(v28, v29);
  }

  else
  {
    type metadata accessor for _UntypedColumn();
    v59 = 0uLL;
    v60 = 0;
    sub_237A60280(4, v61, &v59);
    sub_2379E8CE8(v59, *(&v59 + 1), v60);
    sub_2379DBC9C(v23, 0);
  }

  OUTLINED_FUNCTION_4_58(v30, v31, v32, v33, v34, v35, v36, v37, v55, a2, v59, *(&v59 + 1));
  sub_2379DBC9C(v61, v62);
  v38 = v63;
  v39 = v64;
  OUTLINED_FUNCTION_5_53();
  v40 = v61;
  if (v62)
  {
    *&v59 = v61;
    v41 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (sub_237C0925C())
    {
      sub_2379DBC9C(v40, 1);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      swift_allocError();
      *v42 = v40;
    }

    sub_2379DBC9C(v40, 1);
  }

  else
  {
    type metadata accessor for _UntypedColumn();
    v59 = xmmword_237C138C0;
    v60 = 0;
    sub_237A60280(4, v40, &v59);
    sub_2379E8CE8(v59, *(&v59 + 1), v60);
    sub_2379DBC9C(v40, 0);
  }

  OUTLINED_FUNCTION_4_58(v43, v44, v45, v46, v47, v48, v49, v50, v56, v58, v59, *(&v59 + 1));
  sub_2379DBC9C(v61, v62);
  v51 = v63;
  v52 = v64;
  *&v59 = v38;
  BYTE8(v59) = v39;
  sub_2379DBCF4(v38, v39);
  MLDataTable.size.getter();
  v53 = sub_237A018D0();
  sub_2379DBC9C(v38, v39);
  *&v59 = v51;
  BYTE8(v59) = v52;
  sub_2379DBCF4(v51, v52);
  MLDataTable.size.getter();
  v54 = sub_237A018D0();
  sub_2379DBC9C(v21, v22);
  sub_2379DBC9C(v51, v52);
  if (v53 >= v54)
  {
    *v19 = v51;
    *(v19 + 8) = v52;
    *v20 = v38;
    *(v20 + 8) = v39;
  }

  else
  {
    *v19 = v38;
    *(v19 + 8) = v39;
    *v20 = v51;
    *(v20 + 8) = v52;
  }
}

uint64_t MLDataTable.stratifiedSplitBySequence(proportions:by:on:seed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *v7;
  v15 = *(v7 + 8);
  sub_237B03618(a6, __src);
  sub_237B320AC(a1, v14, v15, a2, a3, a4, a5, a7, __src);
  memcpy(__dst, __src, sizeof(__dst));
  return sub_237B07C38(__dst);
}

void MLDataTable.stratifiedSplitBySequence<A>(proportions:by:on:generator:)(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v10 = *(v9 + 8);
  v11 = *v9;
  v12 = v10;
  sub_237B04B7C(a1, a6, &v11, a2, a3, a4, a5, a7, a9, a8);
}

void *OUTLINED_FUNCTION_4_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  va_arg(va1, void);
  v18 = va_arg(va1, void);
  v16 = v13;
  LOBYTE(v18) = v12;

  return MLDataTable.subscript.getter(va, va1);
}

void OUTLINED_FUNCTION_5_53()
{

  MLDataTable.subscript.getter();
}

void OUTLINED_FUNCTION_11_39()
{

  MLDataTable.subscript.getter();
}

uint64_t sub_237B33A98(uint64_t a1, const void *a2)
{
  v72 = a1;
  v4 = sub_237C07F1C();
  v5 = OUTLINED_FUNCTION_0_26(v4, &__dst[40]);
  v57 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v8 - v7);
  v9 = sub_237C05ADC();
  v10 = OUTLINED_FUNCTION_0_26(v9, &v76);
  v64 = v11;
  MEMORY[0x28223BE20](v10);
  v56 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v60 = &v55 - v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_21_3(&v55 - v16);
  v17 = sub_237C07FEC();
  v18 = OUTLINED_FUNCTION_0_26(v17, &v77);
  v59 = v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v21 - v20);
  v22 = sub_237C0625C();
  v23 = OUTLINED_FUNCTION_0_26(v22, &v79);
  v70 = v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v26 - v25);
  v27 = sub_237C060DC();
  v28 = OUTLINED_FUNCTION_0_26(v27, &v78);
  v30 = v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v55 - v35;
  v37 = sub_237C0610C();
  MEMORY[0x28223BE20](v37 - 8);
  OUTLINED_FUNCTION_2_0();
  memcpy(__dst, a2, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D328, &qword_237C138D8);
  v38 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D330, &qword_237C138E0) - 8);
  v39 = (*(*v38 + 80) + 32) & ~*(*v38 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_237C0B660;
  v41 = (v40 + v39);
  v67 = v38[14];
  *v41 = 0x7365736F70;
  v41[1] = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_237C0B680;
  v43 = v2 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess();
  *(v42 + 32) = *(v43 + *(_s13GraphCNNModelVMa(0) + 40));
  *(v42 + 40) = vextq_s8(*(v2 + 24), *(v2 + 24), 8uLL);
  sub_237C0611C();
  v44 = sub_237C0616C();
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v44);
  (*(v30 + 104))(v33, *MEMORY[0x277D2CCC8], v68);
  v45 = v69;
  sub_237C067BC();
  sub_237C0683C();
  sub_237C085AC();
  v73[0] = v2;

  sub_237C0624C();
  sub_237B3506C();
  v46 = v72;
  v47 = v75;
  sub_237C0646C();
  if (v47)
  {

    (*(v70 + 8))(v45, v71);
  }

  else
  {
    v49 = v59;
    v50 = v63;

    (*(v70 + 8))(v45, v71);

    (*(v64 + 16))(v62, v46, v65);
    v51 = v61;
    sub_237C07FDC();
    sub_237C07F2C();
    sub_237C07D8C();
    sub_237B34948(v50);
    v52 = v56;
    sub_237C07F3C();
    v53 = v58;
    v54 = v57;
    (*(v64 + 8))(v52, v65);
    memcpy(v73, __dst, sizeof(v73));
    sub_237B34E3C(v51, v73);
    (*(v54 + 8))(v50, v53);
    return (*(v49 + 8))(v51, v66);
  }
}

uint64_t sub_237B3421C(uint64_t a1, uint64_t a2)
{
  v4 = sub_237C0610C();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D358, &qword_237C13A00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v48 - v10);
  v12 = sub_237C0683C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v14);
  v56 = &v48 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  MEMORY[0x28223BE20](v19);
  v22 = &v48 - v21;
  if (*(a1 + 16) == 1)
  {
    v52 = v20;
    sub_237B3BA90(a1, v11);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D360, &unk_237C13A08);
    if (__swift_getEnumTagSinglePayload(v11, 1, v23) == 1)
    {
      sub_237B351D8(v11);
    }

    else
    {

      v24 = *(v13 + 32);
      v24(v18, v11 + *(v23 + 48), v12);
      v24(v22, v18, v12);
      v25 = v8;
      sub_237C0679C();
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
      v26 = swift_allocObject();
      v50 = xmmword_237C0B680;
      *(v26 + 16) = xmmword_237C0B680;
      v27 = a2 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
      swift_beginAccess();
      v48 = _s13GraphCNNModelVMa(0);
      v49 = v27;
      *(v26 + 32) = *(v27 + *(v48 + 40));
      *(v26 + 40) = vextq_s8(*(a2 + 24), *(a2 + 24), 8uLL);
      v28 = v53;
      sub_237C0611C();
      v29 = sub_237C060EC();
      v30 = sub_237C060EC();
      v31 = sub_237AC6FE0(v29, v30);

      v32 = v55;
      v33 = *(v54 + 8);
      v33(v28, v55);
      v33(v25, v32);
      if (v31)
      {
        v34 = v52;
        sub_237C0664C();
        v35 = v56;
        sub_237AEEE60();
        v36 = *(v13 + 8);
        v36(v34, v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D328, &qword_237C138D8);
        v37 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D330, &qword_237C138E0) - 8);
        v38 = (*(*v37 + 80) + 32) & ~*(*v37 + 80);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_237C0B660;
        v40 = (v39 + v38);
        v41 = v37[14];
        *v40 = 0xD000000000000010;
        v40[1] = 0x8000000237C1CC10;
        (*(v13 + 16))(v39 + v38 + v41, v35, v12);
        v42 = sub_237C085AC();
        v36(v35, v12);
        v36(v22, v12);
        return v42;
      }

      v57 = 0;
      v58 = 0xE000000000000000;
      sub_237C08EDC();

      v57 = 0xD00000000000001ALL;
      v58 = 0x8000000237C1CC50;
      v44 = swift_allocObject();
      *(v44 + 16) = v50;
      *(v44 + 32) = *(v49 + *(v48 + 40));
      *(v44 + 40) = vextq_s8(*(a2 + 24), *(a2 + 24), 8uLL);
      v45 = MEMORY[0x2383DC4F0]();
      v47 = v46;

      MEMORY[0x2383DC360](v45, v47);

      MEMORY[0x2383DC360](46, 0xE100000000000000);
    }
  }

  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_237B34878@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237B3421C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_237B348A8(uint64_t a1, uint64_t a2)
{
  sub_237B3506C();

  return sub_237C0642C();
}

uint64_t sub_237B348F4(uint64_t a1, uint64_t a2)
{
  sub_237B3506C();

  return sub_237C0643C();
}

uint64_t sub_237B34948(uint64_t a1)
{
  v25 = sub_237C0818C();
  v22 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v26 = sub_237C0817C();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_237C075DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  sub_237C07DEC();
  sub_237C07E2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  sub_237C07B9C();
  *(swift_allocObject() + 16) = xmmword_237C0B670;
  sub_237C0756C();
  (*(v9 + 104))(v11, *MEMORY[0x277D25130], v8);
  v12 = v22;
  sub_237C07B3C();
  sub_237C075CC();
  v13 = v25;
  v24 = "shape does not match.";
  sub_237C07B3C();
  sub_237C07ECC();
  sub_237C07E3C();
  v14 = (*(v12 + 88))(v5, v13);
  if (v14 == *MEMORY[0x277D253D8])
  {
    v15 = v14;
    (*(v12 + 96))(v5, v13);
    v16 = v23;
    v17 = v26;
    (*(v23 + 32))(v7, v5, v26);

    sub_237B66D5C(v18, 0xD000000000000010, 0x8000000237C1CC10, 0xD000000000000012, v24 | 0x8000000000000000, 0x6C6562616CLL, 0xE500000000000000);

    v19 = v27;
    (*(v16 + 16))(v27, v7, v17);
    (*(v12 + 104))(v19, v15, v13);
    sub_237C07E4C();
    return (*(v16 + 8))(v7, v17);
  }

  else
  {
    (*(v12 + 8))(v5, v13);
    result = sub_237C090DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_237B34E3C(uint64_t a1, uint64_t *a2)
{
  v14[2] = a1;
  v3 = sub_237C07FBC();
  v15 = *(v3 - 8);
  v16 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a2[1];
  v7 = a2[5];
  v14[1] = a2[4];
  v8 = a2[8];
  sub_237C07FAC();
  if (v6)
  {

    sub_237C07F7C();

    sub_237C07F4C();

    sub_237C07F9C();
    if (v7)
    {

      sub_237C07F8C();
    }

    if (v8)
    {

      sub_237C07F6C();
    }
  }

  else
  {
    v9 = NSFullUserName();
    sub_237C086EC();

    sub_237C07F7C();
  }

  sub_237BAC418();
  v10 = sub_237C07F5C();
  v12 = v11;
  swift_isUniquelyReferenced_nonNull_native();
  v18 = *v12;
  sub_237B40C78();
  *v12 = v18;
  v10(v17, 0);
  sub_237C07FCC();
  return (*(v15 + 8))(v5, v16);
}

unint64_t sub_237B3506C()
{
  result = qword_27DE9D338;
  if (!qword_27DE9D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D338);
  }

  return result;
}

unint64_t sub_237B350D4()
{
  result = qword_27DE9D340;
  if (!qword_27DE9D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D340);
  }

  return result;
}

unint64_t sub_237B3512C()
{
  result = qword_27DE9D348;
  if (!qword_27DE9D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D348);
  }

  return result;
}

unint64_t sub_237B35184()
{
  result = qword_27DE9D350;
  if (!qword_27DE9D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D350);
  }

  return result;
}

uint64_t sub_237B351D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D358, &qword_237C13A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id MLDecisionTreeClassifier.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLDecisionTreeClassifier(0) + 20));

  return v1;
}

uint64_t type metadata accessor for MLDecisionTreeClassifier(uint64_t a1)
{
  result = qword_27DE9D390;
  if (!qword_27DE9D390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLDecisionTreeClassifier.model.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLDecisionTreeClassifier(v2) + 20);

  *(v1 + v3) = v0;
}

void (*MLDecisionTreeClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLDecisionTreeClassifier(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_2379F7824;
}

uint64_t MLDecisionTreeClassifier.targetColumn.getter()
{
  type metadata accessor for MLDecisionTreeClassifier(0);

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLDecisionTreeClassifier.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MLDecisionTreeClassifier(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*MLDecisionTreeClassifier.targetColumn.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLDecisionTreeClassifier(v0);
  return nullsub_1;
}

uint64_t MLDecisionTreeClassifier.featureColumns.getter()
{
  type metadata accessor for MLDecisionTreeClassifier(0);
}

uint64_t MLDecisionTreeClassifier.featureColumns.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLDecisionTreeClassifier(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

void (*MLDecisionTreeClassifier.featureColumns.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLDecisionTreeClassifier(v0);
  return nullsub_1;
}

uint64_t MLDecisionTreeClassifier.modelParameters.getter()
{
  v2 = OUTLINED_FUNCTION_146();
  v3 = v1 + *(type metadata accessor for MLDecisionTreeClassifier(v2) + 32);

  return sub_237B35548(v3, v0);
}

uint64_t MLDecisionTreeClassifier.trainingMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLDecisionTreeClassifier(v0);
  return OUTLINED_FUNCTION_22_23(*(v1 + 36));
}

uint64_t MLDecisionTreeClassifier.validationMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLDecisionTreeClassifier(v0);
  return OUTLINED_FUNCTION_22_23(*(v1 + 40));
}

uint64_t sub_237B355FC()
{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, qword_27DE9D368);
  v1 = __swift_project_value_buffer(v0, qword_27DE9D368);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLDecisionTreeClassifier._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A6B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_project_value_buffer(v2, qword_27DE9D368);
  OUTLINED_FUNCTION_3_67();
  return sub_237B39F4C(v3, a1);
}

void MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  v211 = v20;
  v218 = v21;
  v212 = v22;
  v219 = v23;
  v209 = v24;
  v221 = v25;
  v27 = v26;
  v28 = type metadata accessor for AnyClassificationMetrics(0);
  v29 = OUTLINED_FUNCTION_20(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_58();
  v32 = OUTLINED_FUNCTION_21_3(v31);
  v33 = type metadata accessor for MLClassifierMetrics(v32);
  v34 = OUTLINED_FUNCTION_20(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_58();
  v37 = OUTLINED_FUNCTION_21_3(v36);
  v38 = type metadata accessor for AnyTreeClassifierModel(v37);
  v39 = OUTLINED_FUNCTION_1(v38);
  v195 = v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_134();
  v197 = v41;
  v196 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_58();
  v198 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v45);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v46);
  v202 = &v187 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_20(v48);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_21_3(&v187 - v50);
  v203 = sub_237C0602C();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_58();
  v55 = OUTLINED_FUNCTION_21_3(v54);
  v56 = type metadata accessor for AnyTreeClassifier(v55);
  v57 = OUTLINED_FUNCTION_20(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v59 - v58);
  v217 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v214 = v60;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_58();
  v66 = OUTLINED_FUNCTION_21_3(v65);
  v210 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(v66);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_2_0();
  v225 = v69 - v68;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v75);
  v77 = &v187 - v76;
  v216 = sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v215 = v78;
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v80);
  v82 = &v187 - v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v85 = v84;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v86);
  v88 = &v187 - v87;
  v89 = type metadata accessor for MLDecisionTreeClassifier(0);
  v90 = (v27 + *(v89 + 36));
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v88);
  sub_2379E5C70(v88);
  (*(v85 + 8))(v88, v83);
  v91 = v27;
  v92 = v218;
  *v90 = 0;
  v93 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v213 = v90;
  swift_storeEnumTagMultiPayload();
  v194 = v89;
  v94 = *(v89 + 40);
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v95 = swift_allocError();
  *v96 = 0xD0000000000000C0;
  v96[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v95, v96);
  *(v91 + v94) = v97;
  v192 = v93;
  swift_storeEnumTagMultiPayload();
  sub_237B35548(v92, v224);
  sub_237C071CC();
  sub_237C0715C();
  sub_237C070DC();
  sub_237C070FC();
  sub_237C0719C();
  sub_237C0717C();
  sub_237C070BC();
  sub_237B36C58(v224);
  sub_2379E9068(v92 + 8, &v222, &qword_27DE9A998, &unk_237C0C100);
  if (v223)
  {
    v98 = *(v220 + 48);
    sub_2379DAD24(&v222, v224);
    v99 = v225;
    swift_dynamicCast();
    v100 = v221;
    v101 = v211;
    sub_237A07530(v77, &v77[v98], v221);
    if (v101)
    {

      sub_237B36C58(v92);
      (*(v214 + 8))(v100, v217);
      OUTLINED_FUNCTION_15_34();
      v102(v82, v216);
      OUTLINED_FUNCTION_5_54();
      sub_237B3A36C();
      sub_237B3A36C();
      sub_237B3A36C();
    }

    else
    {
      v211 = v94;
      OUTLINED_FUNCTION_5_54();
      sub_237B3A36C();
      v103 = v219;
      sub_237B19700(v77, v209, v219, v212);
      v210 = v104;

      v187 = v77;
      OUTLINED_FUNCTION_48_9();
      sub_2379E9068(v105, v106, v107, v108);
      v109 = *(v220 + 48);
      v110 = v217;
      if (__swift_getEnumTagSinglePayload(v225 + v109, 1, v217) == 1)
      {
        sub_2379D9054(v225 + v109, &qword_27DE9A9A0, &qword_237C0BF60);
        v111 = *(v214 + 8);
        v112 = (v214 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v113 = OUTLINED_FUNCTION_140_0();
        v111(v113);
      }

      else
      {
        OUTLINED_FUNCTION_38_12();
        v99 = v199;
        (*(v126 + 32))(v199, v225 + v109, v110);
        v212 = *(v77 + 1);
        v212(v225, v110);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_237C0B660;
        *(inited + 32) = v209;
        *(inited + 40) = v103;

        sub_2379F2DA4();
        v206 = (v77 + 8);
        swift_setDeallocating();
        sub_237B9082C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
        v140 = swift_allocObject();
        *(v140 + 16) = xmmword_237C0B670;
        v141 = MEMORY[0x277D83B88];
        *(v140 + 32) = MEMORY[0x277D837D0];
        *(v140 + 40) = v141;
        sub_2379F30EC();
        v112 = v206 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v110 = v217;
        v111 = v212;
        v212(v99, v217);
      }

      v114 = v187;
      OUTLINED_FUNCTION_48_9();
      sub_2379E9068(v115, v116, v117, v118);
      sub_237C05DFC();
      v119 = OUTLINED_FUNCTION_140_0();
      v111(v119);
      v120 = v200;
      sub_2379E9068(v114, v200, &qword_27DE9ADC0, &unk_237C0BF40);
      OUTLINED_FUNCTION_48_9();
      sub_237AE7128(v121, v122, v123, v124);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v99, 1, v110);
      v212 = v111;
      v206 = v112;
      if (EnumTagSinglePayload == 1)
      {
        (v111)(v120, v110);
        sub_2379D9054(v99, &qword_27DE9A9A0, &qword_237C0BF60);
        v114 = v204;
        __swift_storeEnumTagSinglePayload(v204, 1, 1, v203);
      }

      else
      {
        OUTLINED_FUNCTION_38_12();
        sub_237C05DFC();
        v128 = OUTLINED_FUNCTION_140_0();
        v111(v128);
        __swift_storeEnumTagSinglePayload(v114, 0, 1, v203);
        (v111)(v120, v110);
      }

      v129 = v211;
      v211 = *(v220 + 48);
      v130 = v201;
      (*(v215 + 16))(v201, v82, v216);
      v131 = v219;

      v132 = v210;

      v133 = sub_237AB7E28(v207, v114, v209, v131, v132, v130, v205);
      OUTLINED_FUNCTION_46_10(v133, &qword_27DE9A9A0, &qword_237C0BF60);
      OUTLINED_FUNCTION_71();
      v134 = v205;
      sub_237AB87DC(v135, v136, v137, v138, v139);
      if ((sub_237A37A64() & 1) == 0)
      {
        OUTLINED_FUNCTION_31_17();
        OUTLINED_FUNCTION_48_9();
        sub_2379E9068(v142, v143, v144, v145);
        v146 = *(v220 + 48);
        v147 = sub_237C05D3C();
        OUTLINED_FUNCTION_14_29();
        v148();
        sub_237A37AEC(3, 0xD000000000000015, 0x8000000237C17C00, v147);
        sub_2379D9054(v134 + v146, &qword_27DE9A9A0, &qword_237C0BF60);
        sub_237A37AEC(3, 0xD000000000000010, 0x8000000237C1AE80, *(v205[3] + 16));
      }

      v149 = v194;
      v150 = (v91 + v194[6]);
      v151 = v219;
      *v150 = v209;
      v150[1] = v151;
      v211 = v149[8];
      sub_237B35548(v218, v91 + v211);
      *(v91 + v149[7]) = v210;
      OUTLINED_FUNCTION_2_67();
      v152 = v198;
      v153 = v197;
      sub_237B39F4C(v198, v197);
      v154 = (*(v195 + 80) + 16) & ~*(v195 + 80);
      swift_allocObject();
      OUTLINED_FUNCTION_21_26();
      sub_237B3A3C0(v153, v155 + v154);
      sub_2379DD56C();
      v157 = v156;

      *(v91 + v149[5]) = v157;
      OUTLINED_FUNCTION_2_67();
      sub_237B39F4C(v152, v91);
      v158 = v193;
      OUTLINED_FUNCTION_11();
      sub_237A5DEEC(v159, v160);
      v209 = v157;
      v162 = *v91;
      v161 = v91[1];
      OUTLINED_FUNCTION_38_12();
      OUTLINED_FUNCTION_13_11();
      sub_237C05DFC();
      v208 = v162;
      v163 = v187;
      v207 = v161;
      sub_237C05DFC();
      v164 = v191;
      sub_237B0CBBC();
      v165 = v217;
      v212(v158, v217);
      OUTLINED_FUNCTION_6_51();
      OUTLINED_FUNCTION_48_9();
      sub_237B3A3C0(v166, v167);
      swift_storeEnumTagMultiPayload();
      sub_2379DC1F8(v164, v213);
      v168 = v190;
      sub_2379E9068(v163, v190, &qword_27DE9ADC0, &unk_237C0BF40);
      v169 = *(v220 + 48);
      if (__swift_getEnumTagSinglePayload(v168 + v169, 1, v165) == 1)
      {
        sub_237B36C58(v218);
        OUTLINED_FUNCTION_52_11();
        v171 = *(v170 - 256);
        v171();
        OUTLINED_FUNCTION_1_69();
        sub_237B3A36C();
        sub_2379D9054(v163, &qword_27DE9ADC0, &unk_237C0BF40);
        v172 = OUTLINED_FUNCTION_8_38();
        v173(v172);
        OUTLINED_FUNCTION_0_72();
        OUTLINED_FUNCTION_60_8();
        sub_2379D9054(v168 + v169, &qword_27DE9A9A0, &qword_237C0BF60);
        (v171)(v168, v165);
      }

      else
      {
        (*(v214 + 32))(v189, v168 + v169, v165);
        OUTLINED_FUNCTION_52_11();
        (*(v174 - 256))();
        OUTLINED_FUNCTION_38_12();
        OUTLINED_FUNCTION_11();
        sub_237A5DEEC(v175, v176);
        v177 = v207;
        sub_237C05DFC();
        sub_237C05DFC();
        OUTLINED_FUNCTION_38_12();
        sub_237B0CBBC();
        OUTLINED_FUNCTION_52_11();
        v179 = *(v178 - 256);
        v179();
        OUTLINED_FUNCTION_49_7();
        (v179)(v221, v165);
        v180 = OUTLINED_FUNCTION_140_0();
        (v179)(v180);
        OUTLINED_FUNCTION_1_69();
        sub_237B3A36C();
        v181 = OUTLINED_FUNCTION_31_17();
        sub_2379D9054(v181, v182, v183);
        v184 = OUTLINED_FUNCTION_8_38();
        v185(v184);
        OUTLINED_FUNCTION_6_51();
        v186 = v188;
        sub_237B3A3C0(v177, v188);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_72();
        OUTLINED_FUNCTION_60_8();
        sub_2379DC1F8(v186, v91 + v129);
      }
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237B36CB0()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for AnyTreeClassifierModel(v0);
  OUTLINED_FUNCTION_20(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_55_0(v3);

  return sub_237AE3610(v5);
}

uint64_t MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_237C05DBC();
  v11 = OUTLINED_FUNCTION_20(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = (v13 - v12);
  LOBYTE(v13) = *(a1 + 8);
  v19 = *a1;
  LOBYTE(v20) = v13;
  sub_237A70ED4(&v19, v14);
  sub_237B35548(a5, &v19);
  MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(v14, a2, a3, a4, &v19, v15, v16, v17, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  return sub_237B36C58(a5);
}

void MLDecisionTreeClassifier.init(checkpoint:)()
{
  OUTLINED_FUNCTION_74();
  v85 = v0;
  v94 = v1;
  v3 = v2;
  v75 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v6);
  sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v91 = v7;
  v92 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_0();
  v82 = v9;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_138();
  v90 = v11;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_58();
  v83 = v13;
  v89 = type metadata accessor for AnyTreeClassifier(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v72 - v18;
  v20 = type metadata accessor for AnyTreeClassifierModel(0);
  v21 = OUTLINED_FUNCTION_1(v20);
  v79 = v22;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_134();
  v81 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_58();
  v78 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_58();
  v84 = v27;
  v77 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_58();
  v80 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v33 = v32;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34);
  v36 = &v72 - v35;
  v37 = type metadata accessor for MLDecisionTreeClassifier(0);
  v38 = (v3 + *(v37 + 36));
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v36);
  sub_2379E5C70(v36);
  (*(v33 + 8))(v36, v31);
  *v38 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  v88 = v38;
  swift_storeEnumTagMultiPayload();
  v72 = v37;
  v39 = *(v37 + 40);
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v40 = swift_allocError();
  *v41 = 0xD0000000000000C0;
  v41[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v40, v41);
  *(v3 + v39) = v42;
  swift_storeEnumTagMultiPayload();
  v43 = *(v94 + *(type metadata accessor for MLCheckpoint(0) + 20));
  v87 = v39;
  switch(v43)
  {
    case 2:

      goto LABEL_4;
    default:
      v44 = sub_237C0929C();

      if (v44)
      {
LABEL_4:
        v86 = v16;
        v76 = v3;
        sub_237AE1948(MEMORY[0x277D84FA0]);
        v46 = v45;
        v47 = v83;
        sub_237C071CC();
        *v19 = 0;
        *(v19 + 1) = 0xE000000000000000;
        v48 = MEMORY[0x277D84F90];
        *(v19 + 2) = MEMORY[0x277D84F90];
        v49 = v85;
        sub_237AE1458(v46);
        v51 = v50;

        v93[0] = v51;

        sub_237AE69B4(v93);
        if (v49)
        {

          __break(1u);
          JUMPOUT(0x237B37830);
        }

        v52 = v92;
        *(v19 + 3) = v93[0];
        v19[32] = 0;
        *(v19 + 5) = v48;
        *(v19 + 6) = 0xD000000000000013;
        *(v19 + 7) = 0x8000000237C17BE0;
        v53 = v91;
        v85 = *(v52 + 16);
        v85(v90, v47, v91);
        sub_237C06D7C();
        v54 = *(v52 + 8);
        v92 = v52 + 8;
        v54(v47, v53);
        sub_237AE6A00();
        v55 = v84;
        sub_237C0743C();
        OUTLINED_FUNCTION_0_72();
        sub_237B3A36C();
        v58 = v76;
        v59 = v80;
        sub_237B3A3C0(v55, v80);
        OUTLINED_FUNCTION_2_67();
        v60 = v78;
        sub_237B39F4C(v59, v78);
        v61 = (*(v79 + 80) + 16) & ~*(v79 + 80);
        v62 = swift_allocObject();
        sub_237B3A3C0(v60, v62 + v61);
        sub_2379DD56C();
        v64 = v63;

        v65 = v72;
        *(v58 + v72[5]) = v64;
        OUTLINED_FUNCTION_2_67();
        sub_237B39F4C(v59, v58);
        v66 = v74;
        *v74 = 0;
        *(v66 + 8) = 0;
        *(v66 + 16) = 256;
        v67 = v75;
        swift_storeEnumTagMultiPayload();
        v68 = v58 + v65[8];
        *(v68 + 24) = 0u;
        *v68 = 6;
        *(v68 + 40) = xmmword_237C0BF30;
        *(v68 + 56) = 42;
        *(v68 + 8) = 0u;
        v69 = v73;
        sub_237B39F4C(v66, v73);
        v93[3] = v67;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v93);
        sub_237B3A3C0(v69, boxed_opaque_existential_0);
        OUTLINED_FUNCTION_5_54();
        sub_237B3A36C();
        sub_2379DAE54(v93, v68 + 8);
        v71 = (v58 + v65[6]);
        *v71 = 0;
        v71[1] = 0xE000000000000000;
        OUTLINED_FUNCTION_12_37();
        sub_237B3A36C();
        OUTLINED_FUNCTION_1_69();
        sub_237B3A36C();
        *(v58 + v65[7]) = MEMORY[0x277D84F90];
      }

      else
      {
        OUTLINED_FUNCTION_50();
        v56 = swift_allocError();
        *v57 = 0xD00000000000004ELL;
        v57[1] = 0x8000000237C1CC70;
        OUTLINED_FUNCTION_23_3(v56, v57);
        swift_willThrow();
        OUTLINED_FUNCTION_12_37();
        sub_237B3A36C();
        sub_237B3A36C();
        sub_237B3A36C();
      }

      OUTLINED_FUNCTION_73();
      return;
  }
}

void static MLDecisionTreeClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v2 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = (v7 - v6);
  v9 = *(v1 + 8);
  v11 = *v1;
  v12 = v9;
  sub_2379DBCF4(v11, v9);
  sub_237A70ED4(&v11, v8);
  static MLDecisionTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  (*(v4 + 8))(v8, v2);
  if (!v0)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D380, &qword_237C13A38);
    OUTLINED_FUNCTION_91(v10);
    sub_237BEC88C();
  }

  OUTLINED_FUNCTION_73();
}

void static MLDecisionTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v1 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = (v6 - v5);
  v8 = *(v0 + 8);
  v9 = *v0;
  v10 = v8;
  sub_2379DBCF4(v9, v8);
  sub_237A70ED4(&v9, v7);
  static MLDecisionTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  (*(v3 + 8))(v7, v1);
  OUTLINED_FUNCTION_73();
}

{
  OUTLINED_FUNCTION_74();
  v39 = v1;
  v40 = v2;
  v4 = v3;
  v37 = v5;
  v38 = v6;
  v8 = v7;
  v9 = type metadata accessor for MLTrainingSessionParameters(0);
  v10 = OUTLINED_FUNCTION_20(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_0();
  v35 = v11;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_58();
  v36 = v13;
  v14 = sub_237C071DC();
  v15 = OUTLINED_FUNCTION_20(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_0();
  v41 = v19;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_138();
  v22 = v21;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v33 - v24;
  v26 = v4;
  sub_2379E9068(v4 + 8, &v45, &qword_27DE9A998, &unk_237C0C100);
  if (v46)
  {
    v27 = *(v17 + 48);
    sub_2379DAD24(&v45, &v42);
    swift_dynamicCast();
    sub_237A07530(v25, &v25[v27], v8);
    OUTLINED_FUNCTION_5_54();
    sub_237B3A36C();
    if (!v0)
    {
      v34 = v22;
      sub_2379E9068(v25, v22, &qword_27DE9ADC0, &unk_237C0BF40);
      v47 = *(v17 + 48);
      sub_2379E9068(v25, v41, &qword_27DE9ADC0, &unk_237C0BF40);
      v33 = *(v17 + 48);
      sub_237B35548(v26, &v42);

      v28 = v38;

      sub_237C071CC();
      sub_237C0715C();
      sub_237C070DC();
      sub_237C070FC();
      sub_237C0719C();
      sub_237C0717C();
      sub_237C070BC();
      sub_237B36C58(&v42);
      OUTLINED_FUNCTION_3_67();
      sub_237B39F4C(v40, v36);
      v29 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
      OUTLINED_FUNCTION_91(v29);
      sub_237A6A6F8();
      OUTLINED_FUNCTION_46();
      sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      (*(v30 + 8))(v41);
      sub_2379D9054(v34 + v47, &qword_27DE9A9A0, &qword_237C0BF60);
      v43 = v29;
      v44 = &off_284AC2A08;
      *&v42 = v28;
      OUTLINED_FUNCTION_3_67();
      v31 = v35;
      sub_237B39F4C(v40, v35);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D388, &qword_237C13A40);
      OUTLINED_FUNCTION_91(v32);

      sub_2379E42F0(&v42, v31, 3);
      sub_2379D9054(v25, &qword_27DE9ADC0, &unk_237C0BF40);
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

void static MLDecisionTreeClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D380, &qword_237C13A38);
  OUTLINED_FUNCTION_91(v1);

  sub_237BEC88C();
}

void static MLDecisionTreeClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  static MLDecisionTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (!v6)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D380, &qword_237C13A38);
    OUTLINED_FUNCTION_91(v7);
    sub_237BEC88C();
  }
}

void static MLDecisionTreeClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLTrainingSessionParameters(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-1] - v8;
  OUTLINED_FUNCTION_3_67();
  sub_237B39F4C(a1, v9);
  v10 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
  OUTLINED_FUNCTION_91(v10);
  v11 = sub_237A6A5D0(v9);
  if (!v1)
  {
    v14[3] = v10;
    v14[4] = &off_284AC2A08;
    v14[0] = v11;
    OUTLINED_FUNCTION_3_67();
    sub_237B39F4C(a1, v6);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D388, &qword_237C13A40);
    OUTLINED_FUNCTION_91(v12);
    sub_2379E42F0(v14, v6, 3);
  }
}

uint64_t sub_237B380D4(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D3A0, &qword_237C13B10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v23[-v11 - 8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = &v23[-v15 - 8];
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    a4(v12);
    return sub_2379D9054(v12, &qword_27DE9D3A0, &qword_237C13B10);
  }

  else
  {
    sub_2379E8624(a3 + qword_27DEACD88, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
    swift_dynamicCast();
    v19 = v22;
    v20 = sub_237C08A3C();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v19;
    v21[5] = a4;
    v21[6] = a5;

    sub_237BBAEC8(0, 0, v16, &unk_237C13B20, v21);
  }
}

uint64_t sub_237B382C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D3A0, &qword_237C13B10);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B3837C);
}

uint64_t sub_237B3837C()
{
  OUTLINED_FUNCTION_9();

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_237B3841C;

  return sub_237B386F0();
}

uint64_t sub_237B3841C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237B38518()
{
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_37_0();
  sub_237AE7128(v1, v2, &qword_27DE9D3A0, &qword_237C13B10);
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);
  v5 = OUTLINED_FUNCTION_13_11();
  sub_237AE7128(v5, v6, &qword_27DE9D3A0, &qword_237C13B10);
  v4(v3);
  sub_2379D9054(v3, &qword_27DE9D3A0, &qword_237C13B10);

  OUTLINED_FUNCTION_8();

  return v7();
}

uint64_t sub_237B38608()
{
  *v0[7] = v0[10];
  swift_storeEnumTagMultiPayload();
  v1 = v0[8];
  v2 = v0[3];
  sub_237AE7128(v0[7], v1, &qword_27DE9D3A0, &qword_237C13B10);
  v2(v1);
  sub_2379D9054(v1, &qword_27DE9D3A0, &qword_237C13B10);

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_237B386F0()
{
  OUTLINED_FUNCTION_9();
  v0[30] = v1;
  v0[31] = v2;
  v3 = type metadata accessor for AnyClassificationMetrics(0);
  v0[32] = v3;
  OUTLINED_FUNCTION_20(v3);
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC88, &unk_237C11AF0);
  OUTLINED_FUNCTION_20(v4);
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v5 = type metadata accessor for MLClassifierMetrics(0);
  OUTLINED_FUNCTION_20(v5);
  v0[37] = OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v0[38] = v6;
  OUTLINED_FUNCTION_1(v6);
  v0[39] = v7;
  v0[40] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC78, &qword_237C0EBD0);
  OUTLINED_FUNCTION_20(v8);
  v0[41] = OUTLINED_FUNCTION_19();
  v9 = type metadata accessor for MLDecisionTreeClassifier(0);
  v0[42] = v9;
  OUTLINED_FUNCTION_20(v9);
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v10);
  v0[45] = OUTLINED_FUNCTION_19();
  v11 = sub_237C071DC();
  v0[46] = v11;
  OUTLINED_FUNCTION_1(v11);
  v0[47] = v12;
  v0[48] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v13);
  v0[49] = OUTLINED_FUNCTION_19();
  v14 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v0[50] = v14;
  OUTLINED_FUNCTION_20(v14);
  v0[51] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_237B38968()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v3 = *(v0 + 248);
  v4 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v3 + v4, v1, &qword_27DE9AE18, &qword_237C0DEE0);
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(v0 + 400);
  v6 = *(v0 + 408);
  v8 = *(v0 + 384);
  v9 = *(v0 + 368);
  v10 = *(v0 + 376);
  v11 = *(v0 + 360);
  v12 = *(v0 + 328);
  v13 = *(v0 + 248);
  sub_237B3A3C0(*(v0 + 392), v6);
  (*(v10 + 16))(v8, v6 + v7[8], v9);
  sub_2379E9068(v6 + v7[5], v11, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_237BA48F8(v8, v11, v0 + 16);
  v14 = (v6 + v7[6]);
  v15 = v14[1];
  v32 = *v14;
  *(v0 + 416) = v15;
  v16 = *(v6 + v7[7]);
  *(v0 + 424) = v16;
  v17 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v13 + v17, v12, &qword_27DE9BC78, &qword_237C0EBD0);
  v18 = type metadata accessor for AnyTreeClassifierModel(0);
  result = __swift_getEnumTagSinglePayload(v12, 1, v18);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v20 = *(v0 + 336);
  v19 = *(v0 + 344);
  v22 = *(v0 + 312);
  v21 = *(v0 + 320);
  v23 = *(v0 + 304);
  sub_237B35548(v0 + 16, v0 + 80);
  v24 = v20[9];
  *(v0 + 464) = v24;
  v25 = (v19 + v24);

  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v21);
  sub_2379E5C70(v21);
  (*(v22 + 8))(v21, v23);
  *v25 = 0;
  *(v0 + 432) = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v26 = v20[10];
  *(v0 + 468) = v26;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v27 = swift_allocError();
  *v28 = 0xD0000000000000C0;
  v28[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v27, v28);
  *(v19 + v26) = v29;
  swift_storeEnumTagMultiPayload();
  *(v19 + v20[7]) = v16;
  v30 = (v19 + v20[6]);
  *v30 = v32;
  v30[1] = v15;
  v31 = swift_task_alloc();
  *(v0 + 440) = v31;
  *v31 = v0;
  v31[1] = sub_237B38CA8;

  return sub_237B919A4();
}

uint64_t sub_237B38CA8()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_20_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v5 + 448) = v0;

  if (!v0)
  {
    *(v5 + 456) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_237B38DB8()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 336);
  v4 = *(v0 + 288);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v7 = *(v0 + 240);
  *(v2 + *(v3 + 20)) = *(v0 + 456);
  OUTLINED_FUNCTION_21_26();
  sub_237B3A3C0(v8, v2);
  v9 = (v2 + *(v3 + 32));
  v11 = *(v0 + 112);
  v10 = *(v0 + 128);
  v12 = *(v0 + 96);
  *v9 = *(v0 + 80);
  v9[1] = v12;
  v9[2] = v11;
  v9[3] = v10;
  sub_237B3A3C0(v2, v1);
  sub_237B3A3C0(v1, v7);
  v13 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v6 + v13, v4, &qword_27DE9BC88, &unk_237C11AF0);
  result = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v0 + 336);
    v17 = *(v0 + 288);
    v16 = *(v0 + 296);
    v18 = *(v0 + 280);
    v20 = *(v0 + 248);
    v19 = *(v0 + 256);
    v21 = *(v0 + 240);
    sub_237B36C58(v0 + 16);
    OUTLINED_FUNCTION_6_51();
    sub_237B3A3C0(v17, v16);
    OUTLINED_FUNCTION_37_0();
    swift_storeEnumTagMultiPayload();
    sub_2379DC1F8(v16, v21 + *(v15 + 36));
    v22 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379E9068(v20 + v22, v18, &qword_27DE9BC88, &unk_237C11AF0);

    if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
    {
      v23 = *(v0 + 280);
      OUTLINED_FUNCTION_13_30();
      sub_237B3A36C();
      sub_2379D9054(v23, &qword_27DE9BC88, &unk_237C11AF0);
    }

    else
    {
      v24 = *(v0 + 336);
      v25 = *(v0 + 272);
      v26 = *(v0 + 264);
      v27 = *(v0 + 240);
      sub_237B3A3C0(*(v0 + 280), v25);
      sub_237B3A3C0(v25, v26);
      v28 = *(v24 + 40);
      sub_237B3A36C();
      sub_237B3A3C0(v26, v27 + v28);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_13_30();
      sub_237B3A36C();
    }

    OUTLINED_FUNCTION_8();

    return v29();
  }

  return result;
}

uint64_t sub_237B390EC()
{
  sub_237B36C58(v0 + 80);
  OUTLINED_FUNCTION_1_69();
  sub_237B3A36C();

  sub_237B3A36C();
  sub_237B3A36C();

  sub_237B36C58(v0 + 16);
  OUTLINED_FUNCTION_13_30();
  sub_237B3A36C();

  OUTLINED_FUNCTION_8();

  return v1();
}

void MLDecisionTreeClassifier.predictions(from:)()
{
  sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v2 = OUTLINED_FUNCTION_47_3();
  type metadata accessor for MLDecisionTreeClassifier(v2);
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  if (!v0)
  {
    OUTLINED_FUNCTION_11();
    sub_237A5DEEC(v3, v4);
    sub_237C05DFC();
    v5 = OUTLINED_FUNCTION_13_11();
    v6(v5);
  }
}

uint64_t MLDecisionTreeClassifier.predictions(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v6 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v10 = sub_237C0602C();
  v11 = OUTLINED_FUNCTION_20(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v12 = *(a1 + 8);
  v14 = *a1;
  v15 = v12;
  sub_2379DBCF4(v14, v12);
  sub_237A70ED4(&v14, v3);
  MLDecisionTreeClassifier.predictions(from:)();
  if (v2)
  {
    return (*(v8 + 8))(v3, v6);
  }

  (*(v8 + 8))(v3, v6);
  return sub_237A72900(v4, 1, v1);
}

uint64_t MLDecisionTreeClassifier.evaluation(on:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_146();
  v5 = type metadata accessor for AnyClassificationMetrics(v4);
  v6 = OUTLINED_FUNCTION_20(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v7 = OUTLINED_FUNCTION_47_3();
  v8 = type metadata accessor for MLDecisionTreeClassifier(v7);
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v10 = (v1 + *(v8 + 24));
  v11 = v10[1];
  *(inited + 32) = *v10;
  *(inited + 40) = v11;

  sub_2379F2DA4();
  swift_setDeallocating();
  sub_237B9082C();
  sub_237A5EF84(a1, v2);
  OUTLINED_FUNCTION_6_51();
  v13 = OUTLINED_FUNCTION_13_11();
  sub_237B3A3C0(v13, v14);
  type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload();
}

{
  v2 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = (v7 - v6);
  v9 = *(a1 + 8);
  v11 = *a1;
  v12 = v9;
  sub_2379DBCF4(v11, v9);
  sub_237A70ED4(&v11, v8);
  MLDecisionTreeClassifier.evaluation(on:)(v8);
  return (*(v4 + 8))(v8, v2);
}

void MLDecisionTreeClassifier.write(to:metadata:)()
{
  OUTLINED_FUNCTION_74();
  v44 = v0;
  v3 = v2;
  v4 = type metadata accessor for AnyTreeClassifierModel(0);
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v20 = v3;
  v23 = v22 - v21;
  memcpy(v43, v20, 0x48uLL);
  sub_2379F25FC();
  if (!v1)
  {
    v35 = v11;
    v36 = v18;
    OUTLINED_FUNCTION_2_67();
    sub_237B39F4C(v44, v8);
    v24 = *(&v43[0] + 1);
    if (*(&v43[0] + 1))
    {
      v25 = *&v43[0];
      v26 = *(&v43[1] + 1);
      v27 = *&v43[1];
      v28 = v43[2];
      v29 = *(&v43[3] + 1);
      v30 = *&v43[3];
      v31 = *&v43[4];
    }

    else
    {
      v32 = v23;
      v33 = NSFullUserName();
      v25 = sub_237C086EC();
      v24 = v34;

      v23 = v32;
      v31 = 0;
      v26 = 0x8000000237C17C90;
      v27 = 0xD000000000000033;
      v28 = 0uLL;
      v29 = 0xE100000000000000;
      v30 = 49;
    }

    v38[0] = v25;
    v38[1] = v24;
    v38[2] = v27;
    v38[3] = v26;
    v39 = v28;
    v40 = v30;
    v41 = v29;
    v42 = v31;
    sub_2379E9068(v43, &v37, &qword_27DE9ADE0, &unk_237C0BF90);
    sub_2379FB398(v38);
    OUTLINED_FUNCTION_1_69();
    sub_237B3A36C();
    sub_2379FC064(v38);
    sub_237C07E5C();
    (*(v35 + 8))(v15, v9);
    (*(v36 + 8))(v23, v16);
  }

  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLDecisionTreeClassifier.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v22[1] = v4;
  v23 = v2;
  v6 = v5;
  v7 = sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = v22 - v13;
  v15 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  memcpy(v24, v6, sizeof(v24));
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  (*(v9 + 104))(v3, *MEMORY[0x277CC91D8], v7);

  sub_237C05ABC();
  MLDecisionTreeClassifier.write(to:metadata:)();
  (*(v17 + 8))(v21, v15);
  OUTLINED_FUNCTION_73();
}

unint64_t MLDecisionTreeClassifier.debugDescription.getter()
{
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v3 = type metadata accessor for MLDecisionTreeClassifier(0);
  v4 = MLDecisionTreeClassifier.ModelParameters.description.getter();
  v6 = v5;
  v7 = MLClassifierMetrics.description.getter();
  v9 = v8;
  sub_237B39F4C(v0 + *(v3 + 40), v1);
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  sub_237B3A36C();
  v10 = MLClassifierMetrics.description.getter();
  v12 = v11;
  MEMORY[0x2383DC360](v4, v6);

  MEMORY[0x2383DC360](v7, v9);
  MEMORY[0x2383DC360](0xD00000000000001ELL, 0x8000000237C16EE0);

  if (v3 <= 1)
  {
    MEMORY[0x2383DC360](v10, v12);
    MEMORY[0x2383DC360](0xD000000000000020, 0x8000000237C16F00);
  }

  return 0xD000000000000023;
}

id MLDecisionTreeClassifier.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  v3 = MLDecisionTreeClassifier.debugDescription.getter();
  result = sub_2379E3E14(v3, v4);
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_237B39E90()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for AnyTreeClassifierModel(v0);
  OUTLINED_FUNCTION_20(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_55_0(v3);

  return sub_237AE42C4(v5);
}

uint64_t sub_237B39F4C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return a2;
}

id sub_237B39FA4@<X0>(void *a1@<X8>)
{
  result = MLDecisionTreeClassifier.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237B39FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_87();
  v7 = type metadata accessor for AnyTreeClassifierModel(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = type metadata accessor for MLClassifierMetrics(0);
    v9 = v3 + *(a3 + 36);
    goto LABEL_8;
  }

  v10 = *(v3 + *(a3 + 20));
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t sub_237B3A0C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_87();
  result = type metadata accessor for AnyTreeClassifierModel(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v10 = type metadata accessor for MLClassifierMetrics(0);
    v11 = v4 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_237B3A190(uint64_t a1)
{
  type metadata accessor for AnyTreeClassifierModel(319);
  if (v1 <= 0x3F)
  {
    sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
    if (v2 <= 0x3F)
    {
      sub_2379FC328();
      if (v3 <= 0x3F)
      {
        type metadata accessor for MLClassifierMetrics(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_237B3A264()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237B3A2AC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_19_0(v8);
  *v9 = v10;
  v9[1] = sub_2379D6854;

  return sub_237B382C0(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_237B3A36C()
{
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_237B3A3C0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_22_23@<X0>(uint64_t a1@<X8>)
{

  return sub_237B39F4C(v2 + a1, v1);
}

uint64_t OUTLINED_FUNCTION_46_10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 344) + *(v3 - 320);

  return sub_2379D9054(v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_49_7()
{
  v2 = *(v0 - 264);

  return sub_237B36C58(v2);
}

uint64_t OUTLINED_FUNCTION_50_8()
{
}

uint64_t OUTLINED_FUNCTION_60_8()
{

  return sub_237B3A36C();
}

void *sub_237B3A5FC(uint64_t a1)
{
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v107 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v99 = &v86[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v92 = &v86[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B118, &qword_237C0CA18);
  MEMORY[0x28223BE20](v5 - 8);
  v101 = &v86[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v102 = &v86[-v8];
  MEMORY[0x28223BE20](v9);
  v91 = &v86[-v10];
  MEMORY[0x28223BE20](v11);
  v94 = &v86[-v12];
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D420, &qword_237C13B80);
  MEMORY[0x28223BE20](v106);
  v100 = &v86[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v90 = &v86[-v15];
  MEMORY[0x28223BE20](v16);
  v87 = &v86[-v17];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v108 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v104 = &v86[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A0, &qword_237C0E2D0);
  v98 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v97 = &v86[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D418, &qword_237C13B78);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &v86[-v23];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D428, &qword_237C13B88);
  MEMORY[0x28223BE20](v89);
  v26 = &v86[-v25];
  v27 = MEMORY[0x277CE1900];
  v88 = sub_237B42128(&qword_27DE9D430, &qword_27DE9B0A0, &qword_237C0E2D0, MEMORY[0x277CE1900]);
  v28 = sub_237C0887C();
  v96 = sub_237B42128(&qword_27DE9D438, &qword_27DE9ACA0, &unk_237C0E0E0, v27);
  v29 = v95;
  v30 = sub_237C0887C();
  if (v30 >= v28)
  {
    v31 = v28;
  }

  else
  {
    v31 = v30;
  }

  v112 = MEMORY[0x277D84F90];
  sub_237AC8DF4();
  v109 = v112;
  sub_2379E9068(a1, v24, &qword_27DE9D418, &qword_237C13B78);
  (*(v98 + 32))(v97, v24, v19);
  v32 = v29;
  sub_237C0885C();
  v33 = &v24[*(v22 + 60)];
  v34 = v26;
  (*(v108 + 32))(v104, v33, v29);
  v35 = &v26[*(v89 + 52)];
  sub_237C0885C();
  if (v31 < 0)
  {
    __break(1u);
LABEL_33:
    result = sub_237B42220(v29, &qword_27DE9B118);
  }

  else
  {
    v103 = v19;
    v104 = v35;
    if (!v31)
    {
LABEL_18:
      v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D440, &qword_237C13B90) + 36);
      v59 = sub_237B42128(&qword_27DE9BD08, &qword_27DE9B0A0, &qword_237C0E2D0, MEMORY[0x277CE1908]);
      v101 = (v107 + 32);
      v60 = &qword_27DE9B118;
      v61 = v94;
      v62 = v87;
      v93 = v34;
      v108 = v58;
      v102 = v59;
      while (1)
      {
        sub_237C08B5C();
        if (*(v34 + v58) == v110)
        {
          break;
        }

        v63 = sub_237C08B9C();
        sub_2379E9068(v64, v61, v60, &qword_237C0CA18);
        v63(&v110, 0);
        sub_237C08B6C();
        v65 = v60;
        v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D448, &unk_237C13C80) + 36);
        sub_237B42128(&qword_27DE9BD68, &qword_27DE9ACA0, &unk_237C0E0E0, MEMORY[0x277CE1908]);
        sub_237C08B5C();
        if (*&v35[v66] == v110)
        {
          sub_237B42220(v61, &qword_27DE9B118);
          v34 = v93;
          break;
        }

        v67 = sub_237C08B9C();
        v68 = v61;
        v71 = *v69;
        v70 = v69[1];

        v67(&v110, 0);
        sub_237C08B6C();
        v72 = v106;
        v73 = v90;
        v74 = &v90[*(v106 + 48)];
        sub_237AE7128(v68, v90, v65, &qword_237C0CA18);
        *v74 = v71;
        v74[1] = v70;
        v75 = v91;
        sub_237AE7128(v73, v62, &qword_27DE9D420, &qword_237C13B80);
        v76 = (v62 + *(v72 + 48));
        v78 = *v76;
        v77 = v76[1];
        sub_2379E9068(v62, v75, v65, &qword_237C0CA18);
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
        result = __swift_getEnumTagSinglePayload(v75, 1, v79);
        if (result == 1)
        {
          goto LABEL_36;
        }

        v60 = v65;
        if (v77)
        {
          v80 = v78;
        }

        else
        {
          v80 = 0;
        }

        v81 = 0xE000000000000000;
        if (v77)
        {
          v81 = v77;
        }

        v110 = v80;
        v111 = v81;

        v82 = v92;
        sub_237C06C6C();
        sub_237B42220(v62, &qword_27DE9D420);
        v58 = v108;
        v83 = v109;
        v112 = v109;
        v84 = *(v109 + 16);
        if (v84 >= *(v109 + 24) >> 1)
        {
          sub_237AC8DF4();
          v82 = v92;
          v83 = v112;
        }

        *(v83 + 16) = v84 + 1;
        v85 = (*(v107 + 80) + 32) & ~*(v107 + 80);
        v109 = v83;
        (*(v107 + 32))(v83 + v85 + *(v107 + 72) * v84, v82, v105);
        v34 = v93;
        v61 = v94;
        v35 = v104;
      }

      *(v34 + *(v89 + 56)) = 1;
      sub_237B42220(v34, &qword_27DE9D428);
      return v109;
    }

    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D440, &qword_237C13B90) + 36);
    v97 = (v107 + 32);
    v37 = sub_237B42128(&qword_27DE9BD08, &qword_27DE9B0A0, &qword_237C0E2D0, MEMORY[0x277CE1908]);
    v29 = v102;
    v98 = v36;
    v96 = v37;
    while (1)
    {
      v108 = v31;
      result = sub_237C08B5C();
      if (*(v34 + v36) == v110)
      {
        break;
      }

      v39 = sub_237C08B9C();
      sub_2379E9068(v40, v29, &qword_27DE9B118, &qword_237C0CA18);
      v39(&v110, 0);
      sub_237C08B6C();
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D448, &unk_237C13C80) + 36);
      sub_237B42128(&qword_27DE9BD68, &qword_27DE9ACA0, &unk_237C0E0E0, MEMORY[0x277CE1908]);
      sub_237C08B5C();
      if (*&v35[v41] == v110)
      {
        goto LABEL_33;
      }

      v42 = sub_237C08B9C();
      v43 = v32;
      v45 = *v44;
      v46 = v44[1];

      v42(&v110, 0);
      sub_237C08B6C();
      v47 = &v100[*(v106 + 48)];
      v48 = v29;
      v49 = v100;
      sub_237AE7128(v48, v100, &qword_27DE9B118, &qword_237C0CA18);
      *v47 = v45;
      v47[1] = v46;
      v50 = v101;
      sub_2379E9068(v49, v101, &qword_27DE9B118, &qword_237C0CA18);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
      result = __swift_getEnumTagSinglePayload(v50, 1, v51);
      if (result == 1)
      {
        goto LABEL_35;
      }

      if (v46)
      {
        v52 = v45;
      }

      else
      {
        v52 = 0;
      }

      v53 = 0xE000000000000000;
      if (v46)
      {
        v53 = v46;
      }

      v110 = v52;
      v111 = v53;

      v54 = v99;
      sub_237C06C6C();
      sub_237B42220(v49, &qword_27DE9D420);
      v55 = v109;
      v112 = v109;
      v56 = *(v109 + 16);
      if (v56 >= *(v109 + 24) >> 1)
      {
        sub_237AC8DF4();
        v55 = v112;
      }

      *(v55 + 16) = v56 + 1;
      v57 = (*(v107 + 80) + 32) & ~*(v107 + 80);
      v109 = v55;
      (*(v107 + 32))(v55 + v57 + *(v107 + 72) * v56, v54, v105);
      v31 = v108 - 1;
      v29 = v102;
      v32 = v43;
      v35 = v104;
      v36 = v98;
      if (v108 == 1)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_237B3B28C(uint64_t a1)
{
  result = sub_237AFFB08(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_237B42614(result, v3, 0, a1);
  }
}

uint64_t sub_237B3B2F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D470, &unk_237C13BB0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_23();
  result = sub_237B024B4(a1);
  if (v10)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v9)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_33_17();
  if (v11)
  {
    OUTLINED_FUNCTION_32_13();

    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21_27();
    *a2 = sub_237AFFC40(v16, v17, v18, v19, v20);
    a2[1] = v21;
    v22 = *(v6 + 48);
    sub_237C0806C();
    OUTLINED_FUNCTION_4();
    (*(v23 + 32))(a2 + v22, v2 + v3);
    OUTLINED_FUNCTION_32_13();
    return __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  }
}

uint64_t sub_237B3B424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_237C07B9C();
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
  }

  OUTLINED_FUNCTION_32_13();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

double sub_237B3B4C8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2379FED88(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_237B3B520(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_0_73();
  sub_237B42128(a3, a1, a2, v6);
  OUTLINED_FUNCTION_62_2();
  sub_237C08B2C();
  OUTLINED_FUNCTION_62_2();
  sub_237C08B5C();
  OUTLINED_FUNCTION_9_41();
  if (v7)
  {
    return 1;
  }

  OUTLINED_FUNCTION_47_13();
  v8 = sub_237C08B9C();
  v10 = *v9;

  v19 = OUTLINED_FUNCTION_24_26(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22);
  v8(v19);
  return v10;
}

uint64_t sub_237B3B5FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_32_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_0_73();
  OUTLINED_FUNCTION_52_12(v5, v6, v7, v8);
  OUTLINED_FUNCTION_147();
  sub_237C08B2C();
  OUTLINED_FUNCTION_147();
  sub_237C08B5C();
  OUTLINED_FUNCTION_9_41();
  if (!v10)
  {
    v11 = OUTLINED_FUNCTION_16_25(v9);
    v13 = OUTLINED_FUNCTION_85_1(v11, v12);
    v14 = sub_2379E9068(v13, a1, &qword_27DE9B0F8, &qword_237C0CA08);
    v22 = OUTLINED_FUNCTION_24_26(v14, v15, v16, v17, v18, v19, v20, v21, v25, v26);
    v1(v22);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F8, &qword_237C0CA08);
  return OUTLINED_FUNCTION_15_35(v23);
}

uint64_t sub_237B3B6F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_32_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_0_73();
  OUTLINED_FUNCTION_52_12(v5, v6, v7, v8);
  OUTLINED_FUNCTION_147();
  sub_237C08B2C();
  OUTLINED_FUNCTION_147();
  sub_237C08B5C();
  OUTLINED_FUNCTION_9_41();
  if (!v10)
  {
    v11 = OUTLINED_FUNCTION_16_25(v9);
    v13 = OUTLINED_FUNCTION_85_1(v11, v12);
    v14 = sub_2379E9068(v13, a1, &qword_27DE9B108, &qword_237C0CA10);
    v22 = OUTLINED_FUNCTION_24_26(v14, v15, v16, v17, v18, v19, v20, v21, v25, v26);
    v1(v22);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B108, &qword_237C0CA10);
  return OUTLINED_FUNCTION_15_35(v23);
}

uint64_t sub_237B3B7F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_32_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_0_73();
  OUTLINED_FUNCTION_52_12(v5, v6, v7, v8);
  OUTLINED_FUNCTION_147();
  sub_237C08B2C();
  OUTLINED_FUNCTION_147();
  sub_237C08B5C();
  OUTLINED_FUNCTION_9_41();
  if (!v10)
  {
    v11 = OUTLINED_FUNCTION_16_25(v9);
    v13 = OUTLINED_FUNCTION_85_1(v11, v12);
    v14 = sub_2379E9068(v13, a1, &qword_27DE9B118, &qword_237C0CA18);
    v22 = OUTLINED_FUNCTION_24_26(v14, v15, v16, v17, v18, v19, v20, v21, v25, v26);
    v1(v22);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B118, &qword_237C0CA18);
  return OUTLINED_FUNCTION_15_35(v23);
}

uint64_t sub_237B3B8F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_32_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_0_73();
  OUTLINED_FUNCTION_52_12(v5, v6, v7, v8);
  OUTLINED_FUNCTION_147();
  sub_237C08B2C();
  OUTLINED_FUNCTION_147();
  sub_237C08B5C();
  OUTLINED_FUNCTION_9_41();
  if (!v10)
  {
    v11 = OUTLINED_FUNCTION_16_25(v9);
    v13 = OUTLINED_FUNCTION_85_1(v11, v12);
    v14 = sub_2379E9068(v13, a1, &qword_27DE9B120, &qword_237C0CA20);
    v22 = OUTLINED_FUNCTION_24_26(v14, v15, v16, v17, v18, v19, v20, v21, v25, v26);
    v1(v22);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B120, &qword_237C0CA20);
  return OUTLINED_FUNCTION_15_35(v23);
}

uint64_t sub_237B3B9D0()
{
  v0 = OUTLINED_FUNCTION_147();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_0_73();
  sub_237B42128(v2, &qword_27DE9B090, &unk_237C14050, v3);
  OUTLINED_FUNCTION_62_2();
  sub_237C08B2C();
  OUTLINED_FUNCTION_62_2();
  sub_237C08B5C();
  OUTLINED_FUNCTION_9_41();
  if (v4)
  {
    return 1;
  }

  OUTLINED_FUNCTION_47_13();
  v5 = sub_237C08B9C();
  v7 = *v6;
  v8 = *v6;
  v16 = OUTLINED_FUNCTION_24_26(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19);
  v5(v16);
  return v7;
}

uint64_t sub_237B3BA90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D360, &unk_237C13A08);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_23();
  result = sub_237B024B4(a1);
  if (v10)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v9)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_33_17();
  if (v11)
  {
    OUTLINED_FUNCTION_32_13();

    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21_27();
    *a2 = sub_237AFFC58(v16, v17, v18, v19, v20);
    a2[1] = v21;
    v22 = *(v6 + 48);
    sub_237C0683C();
    OUTLINED_FUNCTION_4();
    (*(v23 + 32))(a2 + v22, v2 + v3);
    OUTLINED_FUNCTION_32_13();
    return __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  }
}

uint64_t sub_237B3BBC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_237C0602C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_237C05C9C();
  if (v7)
  {
    return 0;
  }

  v9 = v6;
  result = sub_237C05D8C();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 >= *(result + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v3 + 16))(v5, result + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v2);

  v10 = sub_237C05FFC();
  (*(v3 + 8))(v5, v2);
  return v10 == MEMORY[0x277D837D0];
}

void sub_237B3BD1C()
{
  OUTLINED_FUNCTION_74();
  v2 = v0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D418, &qword_237C13B78);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  v5 = &v41 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v46 = v7;
  v47 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v9;
  sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v49 = v11;
  v50 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A0, &qword_237C0E2D0);
  OUTLINED_FUNCTION_0();
  v43 = v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  type metadata accessor for MLSoundClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  v53 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v28 = (v27 - v26);
  OUTLINED_FUNCTION_2_68();
  sub_237B4216C(v2, v22, v29);
  OUTLINED_FUNCTION_107();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v42 = v5;
    v31 = v1;
    v32 = *v22;
    v33 = *(v22 + 8);
    v41 = *(v22 + 32);
    v51 = v32;
    v52 = v33;
    sub_237A70ED4(&v51, v28);
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      OUTLINED_FUNCTION_6_52();
      sub_237B421C8(v22, v35);
      goto LABEL_10;
    }

    v42 = v5;
    v31 = v1;
    v41 = *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770) + 64));
    (*(v24 + 32))(v28, v22, v53);
  }

  sub_237C05DFC();

  v34 = v18;
  sub_237B4B1D8();
  if (v31)
  {

    (*(v49 + 8))(v14, v50);
  }

  else
  {
    (*(v49 + 8))(v14, v50);
    v36 = v44;
    sub_237C05DEC();

    v37 = v42;
    v38 = v43;
    (*(v43 + 16))(v42, v34, v48);
    v39 = v46;
    v40 = v47;
    (*(v46 + 16))(v37 + *(v45 + 52), v36, v47);
    sub_237B3A5FC(v37);
    v50 = v34;
    sub_237B42220(v37, &qword_27DE9D418);
    (*(v39 + 8))(v36, v40);
    (*(v38 + 8))(v50, v48);
  }

  (*(v24 + 8))(v28, v53);
LABEL_10:
  OUTLINED_FUNCTION_73();
}

void sub_237B3C1CC()
{
  OUTLINED_FUNCTION_74();
  v1 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v10 = v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  OUTLINED_FUNCTION_0();
  v13 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = v49 - v15;
  MLSoundClassifier.DataSource.labeledSounds()();
  if (!v0)
  {
    v18 = v17;
    v49[1] = 0;
    v51 = v17 + 64;
    OUTLINED_FUNCTION_5_33();
    v21 = v20 & v19;
    v50 = (v22 + 63) >> 6;
    v60 = (v3 + 8);
    v61 = v3 + 16;
    v59 = v13 + 32;

    v58 = 0;
    v66 = v13;
    v67 = v11;
    v24 = v21;
    v52 = v16;
    v53 = v3;
    v25 = MEMORY[0x277D84F90];
    v54 = v23;
    v62 = v10;
    v63 = v7;
    do
    {
      while (1)
      {
        if (!v24)
        {
          v27 = v58;
          while (1)
          {
            v28 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v28 >= v50)
            {
              goto LABEL_28;
            }

            v24 = *(v51 + 8 * v28);
            ++v27;
            if (v24)
            {
              v57 = v25;
              v26 = v28;
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

        v57 = v25;
        v26 = v58;
LABEL_10:
        v56 = v24;
        v58 = v26;
        v29 = __clz(__rbit64(v24)) | (v26 << 6);
        v30 = *(*(v18 + 56) + 8 * v29);
        v31 = *(v30 + 16);
        if (v31)
        {
          v32 = (*(v18 + 48) + 16 * v29);
          v33 = v32[1];
          v65 = *v32;
          v71 = MEMORY[0x277D84F90];
          v68 = v33;

          sub_237AC8E34(0, v31, 0);
          v34 = v71;
          v35 = *(v3 + 80);
          v55 = v30;
          v36 = v30 + ((v35 + 32) & ~v35);
          v64 = *(v3 + 72);
          v37 = *(v3 + 16);
          v38 = v52;
          do
          {
            v39 = v62;
            v37(v62, v36, v1);
            v37(v63, v39, v1);
            v69 = v65;
            v70 = v68;

            sub_237C06C6C();
            (*v60)(v39, v1);
            v41 = *(v71 + 16);
            v40 = *(v71 + 24);
            if (v41 >= v40 >> 1)
            {
              v42 = OUTLINED_FUNCTION_106(v40);
              sub_237AC8E34(v42, v41 + 1, 1);
            }

            *(v71 + 16) = v41 + 1;
            (*(v66 + 32))(v71 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v41, v38, v67);
            v36 += v64;
            --v31;
          }

          while (v31);

          v3 = v53;
        }

        else
        {
          v34 = MEMORY[0x277D84F90];
        }

        v43 = *(v34 + 16);
        v25 = v57;
        v44 = *(v57 + 16);
        if (__OFADD__(v44, v43))
        {
          goto LABEL_31;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v44 + v43 > *(v25 + 24) >> 1)
        {
          OUTLINED_FUNCTION_40_13();
          sub_237BC122C();
          v25 = v45;
        }

        v24 = (v56 - 1) & v56;
        if (!*(v34 + 16))
        {
          break;
        }

        if ((*(v25 + 24) >> 1) - *(v25 + 16) < v43)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        v18 = v54;
        if (v43)
        {
          v46 = *(v25 + 16);
          v47 = __OFADD__(v46, v43);
          v48 = v46 + v43;
          if (v47)
          {
            goto LABEL_33;
          }

          *(v25 + 16) = v48;
        }
      }

      v18 = v54;
    }

    while (!v43);
    __break(1u);
LABEL_28:
  }

  OUTLINED_FUNCTION_73();
}