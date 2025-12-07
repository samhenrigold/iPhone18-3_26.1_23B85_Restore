Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppIntentRegistry.applicationExists(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_10();
  v26 = v2;
  v27 = v3;
  v25 = v4;
  v6 = v5;
  sub_275254FFC();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v8 = type metadata accessor for ToolKitMetadata(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = (v11 - v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8918, &unk_275255DB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  sub_27525500C();
  if (qword_2809B88F0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2809B88F0);
  }

  v16 = sub_27525513C();
  __swift_project_value_buffer(v16, qword_2809B8950);
  sub_27525512C();
  if (v1)
  {
    v17 = OUTLINED_FUNCTION_5();
    v18(v17);
  }

  else
  {
    sub_27524A748(v12);
    sub_27525535C();
    v19 = sub_275249F5C();
    v20 = OUTLINED_FUNCTION_5();
    v21(v20);
    *(v12 + *(v8 + 20)) = v19;
    sub_27524A294(v6, v25, v15);
    sub_275248FE0(v12);
    v23 = sub_2752553FC();
    __swift_getEnumTagSinglePayload(v15, 1, v23);
    sub_275249064(v15);
  }

  OUTLINED_FUNCTION_9();
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

void AppIntentRegistry.supports(typeIdentifier:bundleIdentifier:properties:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10();
  v33 = v5;
  v34 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_275254FFC();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v32 = type metadata accessor for ToolKitMetadata(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v35 = (v17 - v16);
  v18 = sub_2752553BC();
  OUTLINED_FUNCTION_3();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v24 = (v23 - v22);
  v25 = swift_allocObject();
  v25[2] = v9;
  v25[3] = v7;
  v25[4] = v13;
  v25[5] = v11;
  *v24 = v25;
  (*(v20 + 104))(v24, *MEMORY[0x277D72D28], v18);

  sub_27525500C();
  if (qword_2809B88F0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2809B88F0);
  }

  v26 = sub_27525513C();
  __swift_project_value_buffer(v26, qword_2809B8950);
  sub_27525512C();
  if (v3)
  {
    v27 = OUTLINED_FUNCTION_4();
    v28(v27);
  }

  else
  {
    sub_27524A748(v35);
    sub_27525535C();
    v29 = sub_275249F5C();
    v30 = OUTLINED_FUNCTION_4();
    v31(v30);
    *(v35 + *(v32 + 20)) = v29;
    sub_27524B5C8(v24, v34, v33);
    sub_275248FE0(v35);
  }

  (*(v20 + 8))(v24, v18);
  OUTLINED_FUNCTION_9();
}

void sub_275248820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v41 = v25;
  v42 = v26;
  v28 = v27;
  sub_275254FFC();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1();
  v30 = type metadata accessor for ToolKitMetadata(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1();
  v34 = (v33 - v32);
  a10 = MEMORY[0x277D84F90];
  sub_27525500C();
  if (qword_2809B88F0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2809B88F0);
  }

  v35 = sub_27525513C();
  __swift_project_value_buffer(v35, qword_2809B8950);
  sub_27525512C();
  if (v20)
  {
    v36 = OUTLINED_FUNCTION_8();
    v37(v36);
  }

  else
  {
    sub_27524A748(v34);
    sub_27525535C();
    v38 = sub_275249F5C();
    v39 = OUTLINED_FUNCTION_8();
    v40(v39);
    *(v34 + *(v30 + 20)) = v38;
    sub_27524CDEC(v41, &a10, v42, *(v24 + 16), v28);
    sub_275248FE0(v34);
  }

  OUTLINED_FUNCTION_9();
}

void AppIntentRegistry.supports<A, B>(intent:withFallbackIntentVersions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10();
  v51 = v5;
  v52 = v6;
  v48 = v4;
  v49 = v7;
  v9 = v8;
  v11 = v10;
  v50 = v12;
  v46 = 8 * v8;
  v47 = v13;
  if (v8 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    MEMORY[0x28223BE20](v4);
    v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; v9 != i; ++i)
    {
      *&v16[8 * i] = swift_getMetatypeMetadata();
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
  }

  v44 = MetatypeMetadata;
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  sub_275254FFC();
  v54 = &v43;
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1();
  v23 = type metadata accessor for ToolKitMetadata(0);
  v53 = &v43;
  v45 = v23;
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1();
  v27 = (v26 - v25);
  sub_27525500C();
  if (qword_2809B88F0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2809B88F0);
  }

  v28 = sub_27525513C();
  __swift_project_value_buffer(v28, qword_2809B8950);
  OUTLINED_FUNCTION_11();
  sub_27525512C();
  if (v3)
  {
    v29 = OUTLINED_FUNCTION_7();
    v30(v29);
  }

  else
  {
    sub_27524A748(v27);
    sub_27525535C();
    OUTLINED_FUNCTION_11();
    v31 = sub_275249F5C();
    v32 = OUTLINED_FUNCTION_7();
    v34 = v33(v32);
    *(v27 + *(v45 + 20)) = v31;
    MEMORY[0x28223BE20](v34);
    v37 = v50;
    if (v9)
    {
      v38 = (v44 + 4);
      v39 = (&v43 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
      v40 = v9;
      do
      {
        if (v9 == 1)
        {
          v41 = 0;
        }

        else
        {
          v41 = *v38;
        }

        v42 = *v11++;
        *(v21 + v41) = *v42;
        *v39++ = v21 + v41;
        v38 += 4;
        --v40;
      }

      while (v40);
    }

    sub_27524EB18(v48, &v43 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v49, v37, v51, v52, v35, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
    sub_275248FE0(v27);
  }

  OUTLINED_FUNCTION_9();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_275248FE0(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275249064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8918, &unk_275255DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2752490CC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_275249208(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_275249214(uint64_t a1)
{
  v3 = sub_275254FCC();
  result = dynamic_cast_existential_1_superclass_conditional(a1, a1, v3, MEMORY[0x277CEB038]);
  if (result)
  {
    *(v1 + 16) = result;
    *(v1 + 24) = v5;
  }

  return result;
}

uint64_t sub_275249294(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ValueTypeExtractionVisitor();
  OUTLINED_FUNCTION_0_0();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v6[3] = v2;
  v6[4] = sub_275249978();
  v6[0] = v3;

  sub_27525515C();
  __swift_destroy_boxed_opaque_existential_1(v6);
  v4 = *(v3 + 16);

  return v4;
}

uint64_t static Array<A>.acceptVisitor(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_27525515C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27525561C();
  swift_getWitnessTable();
  return sub_2752551DC();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t static Set<>.acceptVisitor(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27525515C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27525563C();
  swift_getWitnessTable();
  return sub_2752551FC();
}

uint64_t sub_275249574()
{
  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_2752495CC(uint64_t a1)
{
  v2 = v1;
  if (dynamic_cast_existential_1_conditional(a1, a1, MEMORY[0x277CEB128]))
  {
    v4 = sub_27525521C();
    v5 = *(v2 + 24);
    type metadata accessor for LNValueTypeWrapper();
    OUTLINED_FUNCTION_0_0();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    *(v2 + 16) = v6;
  }

  else
  {
    result = dynamic_cast_existential_1_conditional(a1, a1, MEMORY[0x277CEB120]);
    if (result)
    {
      v8[3] = type metadata accessor for ValueTypeExtractionVisitor();
      v8[4] = sub_275249978();
      v8[0] = v2;

      sub_27525520C();
      return __swift_destroy_boxed_opaque_existential_1(v8);
    }
  }

  return result;
}

void sub_2752496BC(char a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    if (a1)
    {
      v3 = 0;
    }

    else
    {
      v3 = 3;
    }

    v4 = [objc_allocWithZone(MEMORY[0x277D23760]) initWithMemberValueType:*(v2 + 16) capabilities:v3];
    v5 = *(v1 + 24);
    type metadata accessor for LNValueTypeWrapper();
    OUTLINED_FUNCTION_0_0();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    *(v1 + 16) = v6;
  }

  else
  {
    if (qword_2809B8910 != -1)
    {
      swift_once();
    }

    v7 = sub_27525526C();
    __swift_project_value_buffer(v7, qword_2809B8DB8);
    oslog = sub_27525524C();
    v8 = sub_27525565C();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_275247000, oslog, v8, "Expected previously extracted value type when processing array", v9, 2u);
      MEMORY[0x277C70310](v9, -1, -1);
    }
  }
}

uint64_t sub_27524984C()
{

  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_275249978()
{
  result = qword_2809B8920;
  if (!qword_2809B8920)
  {
    type metadata accessor for ValueTypeExtractionVisitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B8920);
  }

  return result;
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

uint64_t dynamic_cast_existential_1_superclass_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_275249A94()
{
  v1 = v0;
  v2 = sub_2752551BC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8928, &qword_275255FA8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_2752551AC();
  if (!v12 || (v13 = v12, v14 = [v12 valueType], v13, !v14))
  {
    sub_27525517C();
    v15 = sub_27525519C();
    if (__swift_getEnumTagSinglePayload(v11, 1, v15) == 1)
    {
      sub_275249EE0(v11);
    }

    else
    {
      v16 = sub_27525518C();
      v18 = sub_275249294(v16, v17);
      if (v18)
      {
        v14 = *(v18 + 16);

        (*(*(v15 - 8) + 8))(v11, v15);
        return v14;
      }

      (*(*(v15 - 8) + 8))(v11, v15);
    }

    if (qword_2809B8908 != -1)
    {
      swift_once();
    }

    v19 = sub_27525526C();
    __swift_project_value_buffer(v19, qword_2809B8DA0);
    v20 = *(v3 + 16);
    v20(v8, v1, v2);
    v20(v6, v1, v2);
    v21 = sub_27525524C();
    v22 = sub_27525567C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39 = v37;
      *v23 = 136315395;
      v24 = sub_27525516C();
      v26 = v25;
      v27 = *(v3 + 8);
      v27(v8, v2);
      v28 = sub_275253418(v24, v26, &v39);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2085;
      v38 = sub_2752551AC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8930, &unk_275255FB0);
      v29 = sub_27525557C();
      v31 = v30;
      v27(v6, v2);
      v32 = sub_275253418(v29, v31, &v39);

      *(v23 + 14) = v32;
      _os_log_impl(&dword_275247000, v21, v22, "NamedProperty '%s': %{sensitive}s is not extractable as a LNValueType", v23, 0x16u);
      v33 = v37;
      swift_arrayDestroy();
      MEMORY[0x277C70310](v33, -1, -1);
      MEMORY[0x277C70310](v23, -1, -1);
    }

    else
    {

      v34 = *(v3 + 8);
      v34(v6, v2);
      v34(v8, v2);
    }

    return 0;
  }

  return v14;
}

uint64_t sub_275249EE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8928, &qword_275255FA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275249F5C()
{
  if (qword_2809B88E0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_2809B8938);
  if (qword_2809B8940)
  {
    v0 = qword_2809B8940;
  }

  else
  {
    v2 = sub_27525534C();
    if (v1)
    {
      goto LABEL_7;
    }

    v0 = v2;

    qword_2809B8940 = v0;
  }

LABEL_7:
  os_unfair_lock_unlock(&dword_2809B8938);
  return v0;
}

uint64_t sub_27524A034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2752553EC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_27524A0F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2752553EC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ToolKitMetadata(uint64_t a1)
{
  result = qword_2809B8968;
  if (!qword_2809B8968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27524A210(uint64_t a1)
{
  result = sub_2752553EC();
  if (v2 <= 0x3F)
  {
    result = sub_27525535C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_27524A294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v45 = a1;
  v46 = a2;
  sub_275254F9C();
  OUTLINED_FUNCTION_3();
  v49 = v4;
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v47 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8980, &qword_275255FF0);
  OUTLINED_FUNCTION_3();
  v43 = v8;
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = (v38 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8988, &qword_275255FF8);
  OUTLINED_FUNCTION_3();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = (v38 - v15);
  sub_2752554FC();
  OUTLINED_FUNCTION_3();
  v40 = v18;
  v41 = v17;
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v38[2] = v38 - v21;
  MEMORY[0x28223BE20](v20);
  v42 = v38 - v22;
  sub_2752554EC();
  swift_getKeyPath();
  v23 = sub_2752553EC();
  v24 = swift_allocBox();
  (*(*(v23 - 8) + 16))(v25, v51, v23);
  *v16 = v24;
  v39 = *MEMORY[0x277D721C8];
  (*(v13 + 104))(v16);
  v38[1] = sub_27524AF60(&qword_2809B8990, MEMORY[0x277D73330], MEMORY[0x277D73328]);
  sub_27524B088(&qword_2809B8998, &qword_2809B8988, &qword_275255FF8);
  sub_27525536C();

  (*(v13 + 8))(v16, v11);
  v26 = v41;
  v27 = *(v40 + 8);
  v28 = OUTLINED_FUNCTION_1_0();
  v27(v28);
  swift_getKeyPath();
  v29 = swift_allocObject();
  v30 = v46;
  *(v29 + 16) = v45;
  *(v29 + 24) = v30;
  *v10 = v29;
  v32 = v43;
  v31 = v44;
  (*(v43 + 104))(v10, v39, v44);
  sub_27524B088(&qword_2809B89A0, &qword_2809B8980, &qword_275255FF0);

  v33 = v42;
  sub_27525536C();

  v34 = v10;
  v35 = v47;
  (*(v32 + 8))(v34, v31);
  v36 = OUTLINED_FUNCTION_1_0();
  v27(v36);
  type metadata accessor for ToolKitMetadata(0);
  sub_275254F8C();
  sub_27525533C();
  (*(v49 + 8))(v35, v50);
  return (v27)(v33, v26);
}

uint64_t sub_27524A748@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_275254FFC();
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = (v9 - v8);
  (*(v6 + 16))(v9 - v8, v2, v4);
  v11 = (*(v6 + 88))(v10, v4);
  if (v11 == *MEMORY[0x277CEAFE0])
  {
    (*(v6 + 96))(v10, v4);
    v12 = v10[1];
    *a1 = *v10;
    a1[1] = v12;
    v13 = MEMORY[0x277D730E0];
LABEL_5:
    v14 = *v13;
    v15 = sub_2752553EC();
    return (*(*(v15 - 8) + 104))(a1, v14, v15);
  }

  if (v11 == *MEMORY[0x277CEAFD8])
  {
    v13 = MEMORY[0x277D730D8];
    goto LABEL_5;
  }

  sub_2752556EC();
  MEMORY[0x277C6FD40](0xD00000000000002FLL, 0x8000000275256590);
  sub_27525571C();
  result = sub_27525575C();
  __break(1u);
  return result;
}

uint64_t sub_27524A958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

uint64_t sub_27524AA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v56 = a2;
  v5 = sub_27525538C();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v51 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (v51 - v16);
  MEMORY[0x28223BE20](v15);
  v18 = *(v7 + 16);
  v53 = (v51 - v19);
  v18();
  v55 = a1;
  (v18)(v17, a1, v5);
  v20 = OUTLINED_FUNCTION_1_0();
  v22 = v21(v20);
  v23 = v22;
  v24 = *MEMORY[0x277D72AB0];
  v54 = v3;
  if (v22 == v24)
  {
    v25 = OUTLINED_FUNCTION_1_0();
    v26(v25);
    v51[1] = *v17;
    v27 = swift_projectBox();
    v51[2] = v7 + 16;
    v52 = v18;
    (v18)(v14, v27, v5);
    sub_27524AA1C(v14, v11);
    sub_27524AF60(&qword_2809B8978, MEMORY[0x277D72B00], MEMORY[0x277D72B18]);
    v28 = sub_27525555C();
    v29 = *(v7 + 8);
    v29(v14, v5);
    if (v28)
    {
      v29(v11, v5);

      v30 = v55;
      v18 = v52;
      v31 = v53;
    }

    else
    {
      v36 = v53;
      v29(v53, v5);
      v37 = swift_allocBox();
      (*(v7 + 32))(v38, v11, v5);
      *v36 = v37;
      (*(v7 + 104))(v36, v23, v5);

      v30 = v55;
      v31 = v36;
      v18 = v52;
    }

    goto LABEL_12;
  }

  if (v22 == *MEMORY[0x277D72AE8])
  {
    v29 = *(v7 + 8);
    v31 = v53;
  }

  else
  {
    v39 = v7;
    v31 = v53;
    if (v22 == *MEMORY[0x277D72AB8])
    {
      v29 = *(v39 + 8);
      v40 = OUTLINED_FUNCTION_3_0();
      (v29)(v40);
      v41 = OUTLINED_FUNCTION_1_0();
      v42(v41);
      v43 = swift_projectBox();
      v44 = sub_2752553BC();
      v45 = swift_allocBox();
      (*(*(v44 - 8) + 16))(v46, v43, v44);
      *v31 = v45;
      (*(v39 + 104))(v31, *MEMORY[0x277D72AD0], v5);
      goto LABEL_10;
    }

    v29 = *(v39 + 8);
    if (v22 != *MEMORY[0x277D72AE0])
    {
      v50 = OUTLINED_FUNCTION_1_0();
      (v29)(v50);
      goto LABEL_11;
    }
  }

  v32 = OUTLINED_FUNCTION_3_0();
  (v29)(v32);
  v33 = OUTLINED_FUNCTION_1_0();
  v34(v33);
  v35 = swift_projectBox();
  (v18)(v31, v35, v5);
LABEL_10:

LABEL_11:
  v30 = v55;
LABEL_12:
  if (sub_27525537C())
  {
    v47 = OUTLINED_FUNCTION_3_0();
    (v29)(v47);
    return (v18)(v56, v30, v5);
  }

  else
  {
    sub_27524AA1C(v31, v56);
    v49 = OUTLINED_FUNCTION_3_0();
    return (v29)(v49);
  }
}

uint64_t sub_27524AF60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27524B050()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27524B088(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_27524B0DC()
{
  v0 = sub_2752550FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_27525514C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89A8, &qword_275256060);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_275255FC0;
  v9 = *(v1 + 104);
  v9(v3, *MEMORY[0x277CEB0F0], v0);
  sub_2752550BC();
  *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89B0, &qword_275256068);
  *(v8 + 64) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  sub_2752550CC();
  v10 = *(v5 + 8);
  v10(v7, v4);
  v9(v3, *MEMORY[0x277CEB0F8], v0);
  sub_2752550BC();
  v9(v3, *MEMORY[0x277CEB0E8], v0);
  v11 = sub_2752550DC();
  v12 = MEMORY[0x277CEB0E0];
  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  __swift_allocate_boxed_opaque_existential_1((v8 + 72));
  sub_2752550EC();
  (*(v1 + 8))(v3, v0);
  result = (v10)(v7, v4);
  qword_2809B8948 = v8;
  return result;
}

uint64_t sub_27524B378()
{
  v0 = sub_27525526C();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  v7 = sub_27525513C();
  __swift_allocate_value_buffer(v7, qword_2809B8950);
  __swift_project_value_buffer(v7, qword_2809B8950);
  if (qword_2809B8910 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_2809B8DB8);
  (*(v2 + 16))(v6, v8, v0);
  if (qword_2809B88E8 != -1)
  {
    swift_once();
  }

  sub_27525511C();
  return sub_27525510C();
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_27524B5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v239 = a2;
  v258 = a3;
  v263 = sub_27525538C();
  OUTLINED_FUNCTION_3();
  v265 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  v262 = &v221[-v13];
  OUTLINED_FUNCTION_8_0();
  v261 = sub_27525552C();
  OUTLINED_FUNCTION_3();
  v259 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v260 = v16;
  OUTLINED_FUNCTION_8_0();
  v233 = sub_2752553DC();
  OUTLINED_FUNCTION_3();
  v232 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v231 = v19;
  OUTLINED_FUNCTION_8_0();
  sub_275254F9C();
  OUTLINED_FUNCTION_3();
  v255 = v21;
  v256 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v253 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89E8, &qword_2752560B8);
  OUTLINED_FUNCTION_17(v23);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_20();
  v254 = v25;
  OUTLINED_FUNCTION_8_0();
  v240 = sub_27525539C();
  OUTLINED_FUNCTION_3();
  v238 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v28);
  v237 = &v221[-v29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89F0, &qword_2752560C0);
  OUTLINED_FUNCTION_3();
  v251 = v31;
  v252 = v30;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_20();
  v250 = v33;
  OUTLINED_FUNCTION_8_0();
  sub_2752554BC();
  OUTLINED_FUNCTION_3();
  v248 = v35;
  v249 = v34;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_0();
  v247 = v36;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89F8, &qword_2752560C8);
  OUTLINED_FUNCTION_3();
  v244 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_20();
  v243 = v39;
  OUTLINED_FUNCTION_8_0();
  v266 = sub_27525548C();
  OUTLINED_FUNCTION_3();
  v257 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v221[-v45];
  MEMORY[0x28223BE20](v44);
  v48 = &v221[-v47];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8918, &unk_275255DB0);
  OUTLINED_FUNCTION_17(v49);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v50);
  v52 = &v221[-v51];
  v53 = sub_2752553FC();
  OUTLINED_FUNCTION_3();
  v264 = v54;
  MEMORY[0x28223BE20](v55);
  v57 = &v221[-((v56 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = sub_2752553AC();
  v59 = v267;
  sub_27524A294(v58, v60, v52);
  if (v59)
  {
  }

  v224 = v46;
  v227 = a1;
  v226 = v4;
  v225 = v48;
  v228 = v57;

  if (__swift_getEnumTagSinglePayload(v52, 1, v53) == 1)
  {
    sub_27524E8D4(v52, &qword_2809B8918, &unk_275255DB0);
    v62 = MEMORY[0x277CEB078];
LABEL_5:
    v63 = *v62;
    sub_27525508C();
    OUTLINED_FUNCTION_2();
    return (*(v64 + 104))(v258, v63);
  }

  v65 = v264;
  v66 = v228;
  (*(v264 + 32))(v228, v52, v53);
  v67 = v242;
  sub_27525544C();
  swift_getKeyPath();
  v68 = swift_allocBox();
  v267 = 0;
  v69 = v68;
  (*(v65 + 16))(v70, v66, v53);
  v71 = v243;
  *v243 = v69;
  v222 = *MEMORY[0x277D721C8];
  v72 = v244;
  v73 = v245;
  (*(v244 + 104))(v71);
  v223 = sub_27524E92C(&qword_2809B8A00, MEMORY[0x277D73198], MEMORY[0x277D73190]);
  sub_27524B088(&qword_2809B8A08, &qword_2809B89F8, &qword_2752560C8);
  v74 = v246;
  sub_27525536C();

  (*(v72 + 8))(v71, v73);
  v75 = v257 + 8;
  v245 = *(v257 + 8);
  v245(v67, v266);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A10, &qword_275256130);
  v76 = sub_27525549C();
  OUTLINED_FUNCTION_3();
  v78 = v77;
  v79 = *(v77 + 80);
  v244 = v53;
  v80 = (v79 + 32) & ~v79;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_275256080;
  (*(v78 + 104))(v81 + v80, *MEMORY[0x277D732B8], v76);
  sub_27524E438(v81);
  v82 = v247;
  MEMORY[0x277C6FC30]();

  sub_27524E92C(&qword_2809B8A18, MEMORY[0x277D732E0], MEMORY[0x277D732D8]);
  v83 = v224;
  sub_27525536C();

  (*(v248 + 8))(v82, v249);
  v84 = v74;
  v85 = v266;
  v245(v84, v266);
  swift_getKeyPath();
  v86 = sub_2752553BC();
  v87 = swift_allocBox();
  (*(*(v86 - 8) + 16))(v88, v227, v86);
  v90 = v250;
  v89 = v251;
  *v250 = v87;
  v91 = v252;
  (*(v89 + 13))(v90, v222, v252);
  sub_27524B088(&qword_2809B8A20, &qword_2809B89F0, &qword_2752560C0);
  v92 = v225;
  sub_27525536C();
  v93 = v85;
  v94 = v245;

  (*(v89 + 1))(v90, v91);
  v95 = v83;
  v96 = v93;
  v94(v95, v93);
  type metadata accessor for ToolKitMetadata(0);
  v97 = v253;
  sub_275254F8C();
  v98 = v254;
  v99 = v267;
  sub_27525532C();
  if (v99)
  {
    (v255[1].isa)(v97, v256);
    v94(v92, v96);
LABEL_8:
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_21();
    return v100();
  }

  v101 = v264;
  (v255[1].isa)(v97, v256);
  v102 = v240;
  if (__swift_getEnumTagSinglePayload(v98, 1, v240) == 1)
  {
    v94(v92, v96);
    (*(v101 + 8))(v228, v244);
    sub_27524E8D4(v98, &qword_2809B89E8, &qword_2752560B8);
    v62 = MEMORY[0x277CEB080];
    goto LABEL_5;
  }

  v257 = v75;
  v267 = 0;
  v103 = v238;
  v104 = v98;
  v105 = v237;
  (*(v238 + 32))(v237, v104, v102);
  v106 = v234;
  (*(v103 + 16))(v234, v105, v102);
  v107 = (*(v103 + 88))(v106, v102);
  v108 = v258;
  v109 = v228;
  if (v107 != *MEMORY[0x277D72B68])
  {
    v137 = *(v103 + 8);
    v137(v105, v102);
    v138 = OUTLINED_FUNCTION_1_1();
    v139(v138);
    (*(v101 + 8))(v109, v244);
    v140 = *MEMORY[0x277CEB070];
    sub_27525508C();
    OUTLINED_FUNCTION_2();
    (*(v141 + 104))(v108, v140);
    return v137(v106, v102);
  }

  (*(v103 + 96))(v106, v102);
  v110 = (*(v232 + 32))(v231, v106, v233);
  v111 = MEMORY[0x277C6FB50](v110);
  v112 = v111;
  v256 = *(v111 + 16);
  if (v256)
  {
    v113 = 0;
    v114 = v259;
    v115 = v260;
    v255 = (v111 + ((v114[80] + 32) & ~v114[80]));
    v252 = v265 + 32;
    v253 = v259 + 8;
    v254 = (v259 + 16);
    v116 = MEMORY[0x277D84F98];
    v251 = v265 + 40;
    v117 = v261;
    v96 = v262;
    while (1)
    {
      if (v113 >= *(v112 + 16))
      {
        goto LABEL_58;
      }

      (*(v114 + 2))(v115, v255 + *(v114 + 9) * v113, v117);
      v118 = sub_27525550C();
      v117 = v119;
      sub_27525551C();
      swift_isUniquelyReferenced_nonNull_native();
      v268 = v116;
      v120 = sub_275253B18(v118, v117);
      if (__OFADD__(v116[2], (v121 & 1) == 0))
      {
        goto LABEL_59;
      }

      v122 = v120;
      v123 = v121;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A28, &qword_275256168);
      v115 = &v268;
      if (sub_27525574C())
      {
        v115 = v268;
        v124 = sub_275253B18(v118, v117);
        v126 = v265;
        if ((v123 & 1) != (v125 & 1))
        {
          result = sub_2752557AC();
          __break(1u);
          return result;
        }

        v122 = v124;
        if ((v123 & 1) == 0)
        {
LABEL_19:
          v116 = v268;
          v268[(v122 >> 6) + 8] |= 1 << v122;
          v127 = (v116[6] + 16 * v122);
          *v127 = v118;
          v127[1] = v117;
          v128 = v116[7] + *(v126 + 9) * v122;
          v96 = v262;
          (*(v126 + 4))(v128, v262, v263);
          v129 = OUTLINED_FUNCTION_16();
          v130(v129);
          v131 = v116[2];
          v132 = __OFADD__(v131, 1);
          v133 = v131 + 1;
          if (v132)
          {
            goto LABEL_60;
          }

          v116[2] = v133;
          goto LABEL_23;
        }
      }

      else
      {
        v126 = v265;
        if ((v123 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v116 = v268;
      v134 = v268[7] + *(v126 + 9) * v122;
      v96 = v262;
      (*(v126 + 5))(v134, v262, v263);
      v135 = OUTLINED_FUNCTION_16();
      v136(v135);
LABEL_23:
      v114 = v259;
      if (v256 == ++v113)
      {
        goto LABEL_27;
      }
    }
  }

  v116 = MEMORY[0x277D84F98];
  v126 = v265;
LABEL_27:

  v142 = v239;
  v143 = v239 + 64;
  v144 = 1 << *(v239 + 32);
  v145 = -1;
  if (v144 < 64)
  {
    v145 = ~(-1 << v144);
  }

  v146 = v145 & *(v239 + 64);
  v117 = ((v144 + 63) >> 6);
  v259 = v126 + 16;
  v256 = v126 + 8;

  v147 = 0;
  v148 = v267;
  v254 = v143;
  v255 = v117;
  if (v146)
  {
    while (1)
    {
      v267 = v148;
      v113 = v147;
LABEL_35:
      v149 = __clz(__rbit64(v146)) | (v113 << 6);
      v150 = (*(v142 + 48) + 16 * v149);
      v151 = *v150;
      v117 = v150[1];
      v152 = *(*(v142 + 56) + 8 * v149);
      v153 = v116[2];

      v96 = v152;
      if (!v153)
      {
        break;
      }

      sub_275253B18(v151, v117);
      if ((v154 & 1) == 0)
      {
        break;
      }

      v261 = v151;
      v262 = v117;
      sub_2752553AC();
      v117 = v155;
      v156 = v267;
      sub_27525564C();
      if (v156)
      {

        OUTLINED_FUNCTION_22();

        v184 = OUTLINED_FUNCTION_3_1();
        v185(v184);
        v186 = OUTLINED_FUNCTION_4_0();
        v187(v186);
        v188 = OUTLINED_FUNCTION_1_1();
        v189(v188);
        goto LABEL_8;
      }

      v267 = 0;

      if (!v116[2])
      {
        goto LABEL_61;
      }

      v260 = v96;
      v157 = sub_275253B18(v261, v262);
      v158 = v235;
      if ((v159 & 1) == 0)
      {
        goto LABEL_62;
      }

      v160 = *(v126 + 2);
      v161 = v263;
      v160(v235, v116[7] + *(v126 + 9) * v157, v263);
      v162 = v236;
      sub_27524AA1C(v158, v236);
      v96 = *(v126 + 1);
      (v96)(v158, v161);
      v163 = v241;
      if ((sub_27525537C() & 1) == 0)
      {
        v190 = v160;
        v265 = v96;

        if (qword_2809B8910 != -1)
        {
          OUTLINED_FUNCTION_5_0(&qword_2809B8910);
        }

        v191 = sub_27525526C();
        __swift_project_value_buffer(v191, qword_2809B8DB8);
        v192 = v229;
        v193 = v236;
        v194 = v263;
        v190(v229, v236, v263);
        v195 = v241;
        v190(v230, v241, v194);
        v196 = v262;

        v197 = sub_27525524C();
        v198 = sub_27525565C();

        v255 = v197;
        v199 = os_log_type_enabled(v197, v198);
        v200 = v261;
        if (v199)
        {
          v201 = swift_slowAlloc();
          LODWORD(v253) = v198;
          v202 = v201;
          v254 = swift_slowAlloc();
          v268 = v254;
          *v202 = 136315650;
          v203 = sub_275253418(v200, v196, &v268);

          *(v202 + 4) = v203;
          *(v202 + 12) = 2080;
          v204 = v235;
          v190(v235, v192, v194);
          sub_27525557C();
          v205 = v265;
          (v265)(v192, v194);
          v206 = OUTLINED_FUNCTION_18();

          *(v202 + 14) = v206;
          *(v202 + 22) = 2080;
          v207 = v230;
          v190(v204, v230, v194);
          sub_27525557C();
          v205(v207, v194);
          v208 = OUTLINED_FUNCTION_18();

          *(v202 + 24) = v208;
          v209 = v255;
          _os_log_impl(&dword_275247000, v255, v253, "Type mismatch for key '%s' %s != %s", v202, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_19();
          OUTLINED_FUNCTION_19();

          OUTLINED_FUNCTION_22();
          v205(v236, v194);
          v205(v241, v194);
        }

        else
        {

          OUTLINED_FUNCTION_22();
          v210 = v265;
          (v265)(v230, v194);
          v210(v192, v194);
          v210(v193, v194);
          v210(v195, v194);
        }

        v211 = OUTLINED_FUNCTION_3_1();
        v212(v211);
        v213 = OUTLINED_FUNCTION_4_0();
        v214(v213);
        v215 = OUTLINED_FUNCTION_1_1();
        v216(v215);
        OUTLINED_FUNCTION_9_0();
        goto LABEL_56;
      }

      v146 &= v146 - 1;

      (v96)(v162, v161);
      (v96)(v163, v161);
      v147 = v113;
      v148 = v267;
      v142 = v239;
      v126 = v265;
      v143 = v254;
      v117 = v255;
      if (!v146)
      {
        goto LABEL_31;
      }
    }

    v113 = v151;
    if (qword_2809B8910 != -1)
    {
      goto LABEL_63;
    }
  }

  else
  {
LABEL_31:
    while (1)
    {
      v113 = v147 + 1;
      if (__OFADD__(v147, 1))
      {
        break;
      }

      if (v113 >= v117)
      {

        v164 = OUTLINED_FUNCTION_3_1();
        v165(v164);
        v166 = OUTLINED_FUNCTION_4_0();
        v167(v166);
        v168 = OUTLINED_FUNCTION_1_1();
        v169(v168);
        OUTLINED_FUNCTION_9_0();
        OUTLINED_FUNCTION_21();
        v170();

        v62 = MEMORY[0x277CEB088];
        goto LABEL_5;
      }

      v146 = *(v143 + 8 * v113);
      ++v147;
      if (v146)
      {
        v267 = v148;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    OUTLINED_FUNCTION_5_0(&qword_2809B8910);
  }

  v171 = sub_27525526C();
  __swift_project_value_buffer(v171, qword_2809B8DB8);

  v172 = sub_27525524C();
  v173 = v117;
  v174 = sub_27525565C();

  if (os_log_type_enabled(v172, v174))
  {
    v175 = swift_slowAlloc();
    v268 = swift_slowAlloc();
    *v175 = 136315394;
    v176 = sub_275253418(v113, v173, &v268);

    *(v175 + 4) = v176;
    *(v175 + 12) = 2080;
    sub_27525553C();

    v177 = OUTLINED_FUNCTION_18();

    *(v175 + 14) = v177;
    _os_log_impl(&dword_275247000, v172, v174, "Missing entity property '%s' keys: %s", v175, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_19();
  }

  else
  {
  }

  OUTLINED_FUNCTION_22();
  v178 = OUTLINED_FUNCTION_3_1();
  v179(v178);
  v180 = OUTLINED_FUNCTION_4_0();
  v181(v180);
  v182 = OUTLINED_FUNCTION_1_1();
  v183(v182);
LABEL_56:
  OUTLINED_FUNCTION_21();
  v217();
  v218 = v258;
  v219 = *MEMORY[0x277CEB070];
  sub_27525508C();
  OUTLINED_FUNCTION_2();
  return (*(v220 + 104))(v218, v219);
}

uint64_t sub_27524CDEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v5;
  v139 = a4;
  v148 = a3;
  v11 = sub_27525508C();
  OUTLINED_FUNCTION_3();
  v140 = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_0();
  v135 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v125 - v19;
  v142 = sub_27525506C();
  OUTLINED_FUNCTION_3();
  v132 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v131 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89B8, &qword_2752560A8);
  v25 = OUTLINED_FUNCTION_17(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_0();
  v138 = v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v125 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89C0, &qword_2752560B0);
  OUTLINED_FUNCTION_17(v30);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_20();
  v137 = v32;
  OUTLINED_FUNCTION_8_0();
  v33 = sub_275254FEC();
  v34 = OUTLINED_FUNCTION_17(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_0();
  v136 = v35;
  OUTLINED_FUNCTION_8_0();
  sub_27525523C();
  OUTLINED_FUNCTION_3();
  v146 = v37;
  v147 = v36;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_0();
  v143 = v38;
  OUTLINED_FUNCTION_8_0();
  sub_2752553BC();
  OUTLINED_FUNCTION_3();
  v144 = v40;
  v145 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_0();
  v152 = v41;
  v42 = *(*a2 + 16);
  v43 = (*a2 + 32);
  while (v42)
  {
    v44 = *v43++;
    --v42;
    if (v44 == a1)
    {
      return (*(v140 + 104))(a5, *MEMORY[0x277CEB088], v11);
    }
  }

  v133 = a2;
  v130 = v20;
  v126 = a5;
  if (qword_2809B8910 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_2809B8910);
  }

  v46 = sub_27525526C();
  __swift_project_value_buffer(v46, qword_2809B8DB8);
  v47 = sub_27525524C();
  v48 = sub_27525565C();
  v49 = os_log_type_enabled(v47, v48);
  v128 = v11;
  v134 = v7;
  v127 = v16;
  v129 = v29;
  v141 = v6;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v149[0] = v51;
    *v50 = 136315138;
    v52 = sub_2752557DC();
    v54 = sub_275253418(v52, v53, v149);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_275247000, v47, v48, "checking entity '%s'", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_19();
  }

  v55 = v139;
  v56 = v133;
  sub_275253114();
  v57 = *(*v56 + 16);
  sub_2752531A0(v57);
  v58 = *v56;
  *(v58 + 16) = v57 + 1;
  *(v58 + 8 * v57 + 32) = a1;
  *v56 = v58;
  v59 = swift_allocObject();
  OUTLINED_FUNCTION_13();
  v59[2] = sub_27525503C();
  v59[3] = v60;
  v59[4] = sub_27525502C();
  v59[5] = v61;
  *v152 = v59;
  (*(v144 + 104))();
  v62 = sub_27525502C();
  v64 = v63;
  v65 = objc_allocWithZone(MEMORY[0x277D23800]);
  v66 = sub_27524E214(v62, v64, 0, 0xE000000000000000);
  v67 = [objc_allocWithZone(MEMORY[0x277D237F0]) initWithIdentifier_];

  v150 = sub_27524E354(0, &qword_2809B89C8, 0x277D237F0);
  v149[0] = v67;
  sub_27524E354(0, &qword_2809B89D0, 0x277D23828);
  OUTLINED_FUNCTION_13();
  v68 = sub_27525502C();
  v70 = sub_27524DC44(v68, v69);
  v71 = objc_allocWithZone(MEMORY[0x277D23958]);
  v72 = sub_27524E29C(v149, v70);
  OUTLINED_FUNCTION_13();
  sub_27525503C();
  v73 = sub_27525501C();
  __swift_storeEnumTagSinglePayload(v137, 1, 1, v73);
  sub_275254FDC();
  v74 = v143;
  sub_27525522C();
  v75 = v55;
  v76 = v147;
  v150 = v147;
  v151 = MEMORY[0x277CEB130];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v149);
  (*(v146 + 16))(boxed_opaque_existential_1, v74, v76);
  v139 = v72;
  v78 = sub_275254FBC();
  __swift_destroy_boxed_opaque_existential_1(v149);
  v79 = v129;
  v80 = v142;
  __swift_storeEnumTagSinglePayload(v129, 1, 1, v142);
  v149[0] = MEMORY[0x277D84F90];
  v81 = v130;
  if (v78)
  {

    v82 = sub_275254FAC();

    MEMORY[0x28223BE20](v83);
    *(&v125 - 8) = v84;
    *(&v125 - 7) = v75;
    *(&v125 - 6) = v134;
    *(&v125 - 5) = v56;
    *(&v125 - 4) = v149;
    *(&v125 - 3) = a1;
    *(&v125 - 2) = v79;
    v85 = v141;
    v86 = sub_27524DB60(MEMORY[0x277D84F98], sub_27524E404, (&v125 - 10), v82);
    v87 = v85;
    v80 = v142;
  }

  else
  {
    v86 = MEMORY[0x277D84F98];
    v87 = v141;
  }

  v88 = v138;
  sub_27524E394(v79, v138);
  if (__swift_getEnumTagSinglePayload(v88, 1, v80) != 1)
  {

    v89 = v132;
    v90 = v131;
    (*(v132 + 32))(v131, v88, v80);
    sub_27524E92C(&qword_2809B89D8, MEMORY[0x277CEB050], MEMORY[0x277CEB058]);
    swift_allocError();
    (*(v89 + 16))(v91, v90, v80);
    swift_willThrow();

    (*(v89 + 8))(v90, v80);
    goto LABEL_16;
  }

  sub_27524E8D4(v88, &qword_2809B89B8, &qword_2752560A8);
  sub_27524B5C8(v152, v86, v81);
  if (v87)
  {

LABEL_16:
    v92 = OUTLINED_FUNCTION_15();
    v93(v92);
    v94 = OUTLINED_FUNCTION_14();
    v95(v94);
LABEL_17:

    return sub_27524E8D4(v79, &qword_2809B89B8, &qword_2752560A8);
  }

  v96 = v140;
  v97 = *(v140 + 104);
  v98 = v135;
  LODWORD(v136) = *MEMORY[0x277CEB088];
  v99 = v128;
  v137 = v97;
  v138 = v140 + 104;
  v97(v135);
  v100 = sub_27525507C();
  v101 = *(v96 + 8);
  v148 = v96 + 8;
  v142 = v101;
  result = (v101)(v98, v99);
  if ((v100 & 1) == 0 || (v102 = v149[0], (v103 = *(v149[0] + 16)) == 0))
  {
LABEL_27:

    v120 = OUTLINED_FUNCTION_15();
    v121(v120);
    v122 = OUTLINED_FUNCTION_14();
    v123(v122);
    OUTLINED_FUNCTION_21();
    v124();
    goto LABEL_17;
  }

  v141 = 0;
  v104 = (v149[0] + 40);
  v132 = -v103;
  v105 = -1;
  while (1)
  {
    if (v132 + v105 == -1)
    {
      v79 = v129;
      goto LABEL_27;
    }

    if (++v105 >= *(v102 + 16))
    {
      break;
    }

    v106 = v127;
    v107 = v141;
    sub_27524CDEC(*(v104 - 1), v133, *(v104 - 1), *v104, v127);
    v141 = v107;
    if (v107)
    {

      v142(v130, v128);
      v79 = v129;
      goto LABEL_16;
    }

    v104 += 2;
    v108 = v135;
    v109 = v78;
    v110 = v102;
    v111 = v128;
    v137(v135, v136, v128);
    v112 = sub_27525507C();
    v113 = v142;
    v142(v108, v111);
    v114 = v111;
    v102 = v110;
    v78 = v109;
    result = v113(v106, v114);
    if ((v112 & 1) == 0)
    {

      v115 = v128;
      v142(v130, v128);
      v116 = OUTLINED_FUNCTION_15();
      v117(v116);
      v118 = OUTLINED_FUNCTION_14();
      v119(v118);
      v137(v126, *MEMORY[0x277CEB070], v115);

      return sub_27524E8D4(v129, &qword_2809B89B8, &qword_2752560A8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27524D9D8(uint64_t a1)
{
  v2 = sub_2752554BC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_27525546C();
}

uint64_t sub_27524DAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

uint64_t sub_27524DB60(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_2752551BC() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

id sub_27524DC44(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_27525556C();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

void sub_27524DCB8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v65 = a5;
  v66 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8928, &qword_275255FA8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v60 - v14;
  sub_27525517C();
  v16 = sub_27525519C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_27524E8D4(v15, &qword_2809B8928, &qword_275255FA8);
  }

  else
  {
    v17 = sub_27525518C();
    (*(*(v16 - 8) + 8))(v15, v16);
    v18 = dynamic_cast_existential_1_class_conditional(v17, v17, MEMORY[0x277CEB038]);
    if (v18)
    {
      v20 = v18;
      v21 = v19;
    }

    else
    {
      if (!dynamic_cast_existential_1_conditional(v17, v17, MEMORY[0x277CEB120]))
      {
        goto LABEL_21;
      }

      v63 = v28;
      v29 = a8;
      v30 = type metadata accessor for EntityTypeExtractionVisitor();
      swift_allocObject();
      v31 = sub_275249208(0, 0);
      v64 = v8;
      v32 = v31;
      v69 = v30;
      a8 = v29;
      v70 = sub_27524E92C(&qword_2809B89E0, type metadata accessor for EntityTypeExtractionVisitor, &unk_275255F5C);
      v67 = v32;

      sub_27525520C();
      __swift_destroy_boxed_opaque_existential_1(&v67);
      v20 = *(v32 + 16);
      v21 = *(v32 + 24);

      if (!v20)
      {
        goto LABEL_21;
      }
    }

    v22 = *(*a4 + 16);
    v23 = (*a4 + 32);
    while (v22)
    {
      v24 = *v23++;
      --v22;
      if (v24 == v20)
      {
        goto LABEL_21;
      }
    }

    v25 = (*v65 + 32);
    v26 = *(*v65 + 16) + 1;
    while (--v26)
    {
      v27 = *v25;
      v25 += 2;
      if (v27 == v20)
      {
        goto LABEL_21;
      }
    }

    if (qword_2809B8910 != -1)
    {
      swift_once();
    }

    v64 = a8;
    v33 = sub_27525526C();
    __swift_project_value_buffer(v33, qword_2809B8DB8);
    v34 = sub_27525524C();
    v35 = sub_27525565C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v61 = v36;
      v62 = swift_slowAlloc();
      v67 = v62;
      *v36 = 136315138;
      v37 = sub_2752557DC();
      v63 = v21;
      v39 = sub_275253418(v37, v38, &v67);
      v21 = v63;

      v40 = v61;
      *(v61 + 1) = v39;
      v41 = v40;
      _os_log_impl(&dword_275247000, v34, v35, "Adding entity '%s' to the list of sub-entities to check", v40, 0xCu);
      v42 = v62;
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x277C70310](v42, -1, -1);
      MEMORY[0x277C70310](v41, -1, -1);
    }

    v43 = v65;
    sub_27525312C();
    v44 = *(*v43 + 16);
    sub_2752531B8(v44);
    v45 = *v43;
    *(v45 + 16) = v44 + 1;
    v46 = v45 + 16 * v44;
    *(v46 + 32) = v20;
    *(v46 + 40) = v21;
  }

LABEL_21:
  v47 = sub_275249A94();
  if (v47)
  {
    v48 = v47;
    v49 = sub_27525516C();
    v51 = v50;
    v52 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = *a1;
    sub_2752545A8(v52, v49, v51, isUniquelyReferenced_nonNull_native);

    *a1 = v67;
  }

  else
  {
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_2752556EC();

    v67 = 0xD000000000000017;
    v68 = 0x80000002752565C0;
    v54 = sub_27525516C();
    MEMORY[0x277C6FD40](v54);

    MEMORY[0x277C6FD40](0x206E6F2027, 0xE500000000000000);
    v71 = v66;
    swift_getMetatypeMetadata();
    v55 = sub_27525557C();
    MEMORY[0x277C6FD40](v55);

    v56 = v67;
    v57 = v68;
    sub_27524E8D4(a7, &qword_2809B89B8, &qword_2752560A8);
    *a7 = v56;
    a7[1] = v57;
    v58 = *MEMORY[0x277CEB048];
    v59 = sub_27525506C();
    (*(*(v59 - 8) + 104))(a7, v58, v59);
    __swift_storeEnumTagSinglePayload(a7, 0, 1, v59);
  }
}

id sub_27524E214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_27525556C();

  v6 = sub_27525556C();

  v7 = [v4 initWithTypeIdentifier:v5 instanceIdentifier:v6];

  return v7;
}

id sub_27524E29C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = [v2 initWithValue:sub_27525577C() valueType:a2];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

uint64_t sub_27524E314()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27524E354(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_27524E394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89B8, &qword_2752560A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27524E438(uint64_t a1)
{
  v2 = sub_27525549C();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A30, &unk_275256170);
  result = sub_2752556CC();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_27524E92C(&qword_2809B8A38, MEMORY[0x277D732C0], MEMORY[0x277D732C8]);
    v14 = sub_27525554C();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      sub_27524E92C(&qword_2809B8A40, MEMORY[0x277D732C0], MEMORY[0x277D732D0]);
      v21 = sub_27525555C();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t dynamic_cast_existential_1_class_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!swift_isClassType())
  {
    return 0;
  }

  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  return 0;
}

uint64_t sub_27524E8D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_27524E92C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_18()
{

  return sub_275253418(v0, v1, (v2 - 72));
}

void OUTLINED_FUNCTION_19()
{

  JUMPOUT(0x277C70310);
}

uint64_t OUTLINED_FUNCTION_22()
{
}

void sub_27524EB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10();
  a19 = v22;
  a20 = v23;
  v117 = v24;
  v118 = v25;
  v27 = v26;
  v116 = v28;
  v30 = v29;
  v119 = v32;
  v120 = v31;
  v34 = v33;
  v121 = sub_2752550AC();
  OUTLINED_FUNCTION_3();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_8_1();
  v40 = v38 - v39;
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v100 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v100 - v45;
  sub_275250EF0(v34, v30, v27, v47, v48, v49, v50, v51, v100, v101, v102, *(&v102 + 1), v103, v104, v105, v106, v107, v108, v109, v110);
  v122 = v21;
  if (!v21)
  {
    v114 = v40;
    v115 = v20;
    v104 = v34;
    v105 = v30;
    v52 = *(v36 + 104);
    (v52)(v44, *MEMORY[0x277CEB0B0], v121);
    OUTLINED_FUNCTION_34();
    v53 = sub_27525509C();
    v54 = *(v36 + 8);
    v55 = OUTLINED_FUNCTION_36();
    v54(v55);
    if (v53 & 1) != 0 || (v111 = *MEMORY[0x277CEB0C0], v56 = v121, (v52)(v44), OUTLINED_FUNCTION_34(), v57 = sub_27525509C(), v58 = OUTLINED_FUNCTION_36(), v54(v58), (v57))
    {
      (*(v36 + 32))(v119, v46, v121);
    }

    else
    {
      v108 = v44;
      v109 = v52;
      v112 = v54;
      v113 = v36 + 8;
      v59 = v117;
      v100 = v36;
      v101 = v46;
      v110 = v36 + 104;
      if (v117)
      {
        if (qword_2809B8910 != -1)
        {
          OUTLINED_FUNCTION_5_0(&qword_2809B8910);
        }

        v60 = (v116 & 0xFFFFFFFFFFFFFFFELL);
        v61 = (v118 & 0xFFFFFFFFFFFFFFFELL);
        v107 = sub_27525526C();
        *&v62 = 136315138;
        v102 = v62;
        v63 = v59;
        v64 = v120;
        while (1)
        {
          v65 = *v60;
          v66 = *v61;
          v120 = v64;
          v67 = **v64;
          __swift_project_value_buffer(v107, qword_2809B8DB8);
          v68 = sub_27525524C();
          v69 = sub_27525565C();
          v70 = os_log_type_enabled(v68, v69);
          v118 = v63;
          if (v70)
          {
            v71 = OUTLINED_FUNCTION_31();
            v116 = v65;
            v72 = v71;
            v106 = swift_slowAlloc();
            a10 = v106;
            *v72 = v102;
            v123 = v67;
            swift_getMetatypeMetadata();
            v73 = sub_27525557C();
            v75 = v66;
            v76 = sub_275253418(v73, v74, &a10);

            *(v72 + 4) = v76;
            v66 = v75;
            _os_log_impl(&dword_275247000, v68, v69, "Checking fallback intent definition: %s", v72, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v106);
            OUTLINED_FUNCTION_19();
            v65 = v116;
            OUTLINED_FUNCTION_19();
          }

          v77 = v114;
          v78 = v108;
          v79 = v122;
          sub_275250EF0(v67, v65, v66, v80, v81, v82, v83, v84, v100, v101, v102, *(&v102 + 1), v103, v104, v105, v106, v107, v108, v109, v110);
          v122 = v79;
          if (v79)
          {
            v112(v101, v121);
            goto LABEL_5;
          }

          v85 = v67;
          v86 = v66;
          v56 = v121;
          (v109)(v78, v111, v121);
          OUTLINED_FUNCTION_38();
          v87 = sub_27525509C();
          v88 = OUTLINED_FUNCTION_36();
          v89 = v112;
          (v112)(v88);
          v89(v77, v56);
          if (v87)
          {
            break;
          }

          v64 = v120 + 1;
          ++v61;
          ++v60;
          v63 = v118 - 1;
          if (v118 == 1)
          {
            goto LABEL_15;
          }
        }

        v112(v101, v121);
        v99 = v119;
        *v119 = v85;
        v99[1] = v86;
        v109();
      }

      else
      {
LABEL_15:
        if (qword_2809B8910 != -1)
        {
          OUTLINED_FUNCTION_5_0(&qword_2809B8910);
        }

        v90 = sub_27525526C();
        __swift_project_value_buffer(v90, qword_2809B8DB8);
        v91 = sub_27525524C();
        v92 = sub_27525566C();
        if (os_log_type_enabled(v91, v92))
        {
          OUTLINED_FUNCTION_31();
          v93 = OUTLINED_FUNCTION_24();
          a10 = v93;
          *v56 = 136315138;
          v123 = v104;
          swift_getMetatypeMetadata();
          v94 = sub_27525557C();
          v96 = sub_275253418(v94, v95, &a10);

          *(v56 + 4) = v96;
          _os_log_impl(&dword_275247000, v91, v92, "Could not find compatible tool definition for: %s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v93);
          OUTLINED_FUNCTION_19();
          OUTLINED_FUNCTION_19_0();
        }

        v97 = v119;
        if (v117)
        {
          v98 = v121;
          v112(v101, v121);
          (v109)(v97, *MEMORY[0x277CEB0A8], v98);
        }

        else
        {
          (*(v100 + 32))(v119, v101, v121);
        }
      }
    }
  }

LABEL_5:
  OUTLINED_FUNCTION_9();
}

void sub_27524F0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10();
  v349 = v21;
  v351 = v20;
  v301 = v22;
  v302 = v23;
  v305 = v24;
  v26 = v25;
  v350 = v27;
  v29 = v28;
  v347 = v30;
  v331 = v31;
  v333 = sub_2752550AC();
  OUTLINED_FUNCTION_3();
  v332 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8_1();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_22_0();
  v40 = OUTLINED_FUNCTION_10_0(v39);
  v329 = type metadata accessor for ToolKitMetadata(v40);
  MEMORY[0x28223BE20](v329);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_0(v41);
  v346 = sub_27525538C();
  OUTLINED_FUNCTION_3();
  v339 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_11_0();
  v343 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_11_0();
  v345 = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_22_0();
  v344 = v53;
  OUTLINED_FUNCTION_8_0();
  v338 = sub_27525542C();
  OUTLINED_FUNCTION_3();
  v340 = v54;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_2_0();
  v337 = v56;
  OUTLINED_FUNCTION_8_0();
  v311 = sub_2752552BC();
  OUTLINED_FUNCTION_3();
  v310 = v57;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_10_0(v60);
  v328 = sub_275254F9C();
  OUTLINED_FUNCTION_3();
  v327 = v61;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15_0(v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A78, &qword_275256190);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10_0(v65);
  v313 = sub_2752552AC();
  OUTLINED_FUNCTION_3();
  v341 = v66;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15_0(v68);
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8980, &qword_275255FF0);
  OUTLINED_FUNCTION_3();
  v323 = v69;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_0(v71);
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89F8, &qword_2752560C8);
  OUTLINED_FUNCTION_3();
  v320 = v72;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_0(v74);
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8988, &qword_275255FF8);
  OUTLINED_FUNCTION_3();
  v315 = v75;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10_0(v77);
  v352 = sub_27525530C();
  OUTLINED_FUNCTION_3();
  v335 = v78;
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_15_0(v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8918, &unk_275255DB0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v84);
  v86 = v289 - v85;
  v87 = sub_2752553FC();
  OUTLINED_FUNCTION_3();
  v342 = v88;
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_2_0();
  v348 = v90;
  if (qword_2809B8910 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_2809B8910);
  }

  v91 = sub_27525526C();
  v92 = __swift_project_value_buffer(v91, qword_2809B8DB8);

  v330 = v92;
  v93 = sub_27525524C();
  v94 = sub_27525565C();

  v95 = os_log_type_enabled(v93, v94);
  v303 = v36;
  v336 = v29;
  if (v95)
  {
    v96 = swift_slowAlloc();
    v353 = swift_slowAlloc();
    *(v96 + 4) = OUTLINED_FUNCTION_44(4.8151e-34);
    *(v96 + 12) = 2080;
    v97 = v350;
    *(v96 + 14) = sub_275253418(v350, v26, &v353);
    _os_log_impl(&dword_275247000, v93, v94, "Checking intent definition for: %s, %s", v96, 0x16u);
    swift_arrayDestroy();
    v98 = v352;
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {

    v97 = v350;
    v98 = v352;
  }

  v99 = v351;
  v100 = v349;
  sub_27524A294(v97, v26, v86);
  if (v100)
  {
    goto LABEL_40;
  }

  v101 = v26;
  if (__swift_getEnumTagSinglePayload(v86, 1, v87) == 1)
  {
    sub_275254B18(v86, &qword_2809B8918, &unk_275255DB0);

    v103 = OUTLINED_FUNCTION_48(v102);
    v104 = sub_27525565C();

    if (os_log_type_enabled(v103, v104))
    {
      OUTLINED_FUNCTION_31();
      v105 = OUTLINED_FUNCTION_24();
      v353 = v105;
      LODWORD(v99->isa) = 136315138;
      *(&v99->isa + 4) = sub_275253418(v97, v101, &v353);
      OUTLINED_FUNCTION_21_0(&dword_275247000, v106, v107, "Could not find toolbox container for: %s");
      __swift_destroy_boxed_opaque_existential_1(v105);
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_19_0();
    }

    v108 = OUTLINED_FUNCTION_28();
    v109 = v332;
    v110 = *MEMORY[0x277CEB098];
LABEL_39:
    (*(v109 + 104))(v108, v110);
    goto LABEL_40;
  }

  v111 = *(v342 + 32);
  v295 = v87;
  v111(v348, v86, v87);
  v112 = v347;
  v113 = v336;
  v114 = sub_2752555EC();
  v349 = 0;
  v289[1] = v101;
  if (v114)
  {

    v291 = v112;
    v290 = v113;
  }

  else
  {
    v353 = v97;
    v354 = v101;

    MEMORY[0x277C6FD40](46, 0xE100000000000000);
    MEMORY[0x277C6FD40](v112, v113);
    v291 = v353;
    v290 = v354;
  }

  OUTLINED_FUNCTION_41();
  sub_2752552EC();
  swift_getKeyPath();
  v115 = sub_2752553EC();
  v116 = swift_allocBox();
  (*(*(v115 - 8) + 16))(v117, v99, v115);
  v118 = v314;
  *v314 = v116;
  v294 = *MEMORY[0x277D721C8];
  v119 = v315;
  v120 = v316;
  (*(v315 + 104))(v118);
  v293 = sub_275254B78(&qword_2809B8A80, MEMORY[0x277D724B8], MEMORY[0x277D724A0]);
  v292 = MEMORY[0x277D721D8];
  sub_275254A9C(&qword_2809B8998, &qword_2809B8988, &qword_275255FF8, MEMORY[0x277D721D8]);
  v121 = v317;
  sub_27525536C();

  (*(v119 + 8))(v118, v120);
  v122 = v335 + 8;
  v316 = *(v335 + 8);
  v316(v97, v98);
  swift_getKeyPath();
  v123 = v295;
  v124 = swift_allocBox();
  (*(v342 + 16))(v125, v348, v123);
  v126 = v318;
  *v318 = v124;
  OUTLINED_FUNCTION_41();
  v128 = v321;
  (*(v127 + 104))(v126, v294, v321);
  sub_275254A9C(&qword_2809B8A08, &qword_2809B89F8, &qword_2752560C8, v292);
  v129 = v319;
  sub_27525536C();

  (v97[1])(v126, v128);
  v130 = v316;
  v316(v121, v352);
  swift_getKeyPath();
  v131 = swift_allocObject();
  v132 = v290;
  *(v131 + 16) = v291;
  *(v131 + 24) = v132;
  v133 = v322;
  *v322 = v131;
  (*(v323 + 104))(v133, v294, v324);
  sub_275254A9C(&qword_2809B89A0, &qword_2809B8980, &qword_275255FF0, v292);
  v134 = v334;
  OUTLINED_FUNCTION_38();
  sub_27525536C();

  v135 = OUTLINED_FUNCTION_36();
  v136(v135);
  v137 = v352;
  v130(v129, v352);
  sub_275254F8C();
  OUTLINED_FUNCTION_40();
  v138 = v349;
  sub_27525531C();
  if (v138)
  {
    v139 = OUTLINED_FUNCTION_27();
    v140(v139);
    v130(v134, v137);
    v141 = OUTLINED_FUNCTION_3_2();
    v142(v141);
    goto LABEL_40;
  }

  v143 = OUTLINED_FUNCTION_27();
  v144(v143);
  v145 = v313;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v122, 1, v313);
  v147 = v295;
  if (EnumTagSinglePayload == 1)
  {
    sub_275254B18(v122, &qword_2809B8A78, &qword_275256190);
LABEL_35:

    v191 = OUTLINED_FUNCTION_48(v190);
    v192 = sub_27525565C();

    if (os_log_type_enabled(v191, v192))
    {
      OUTLINED_FUNCTION_31();
      v193 = OUTLINED_FUNCTION_24();
      v353 = v193;
      *(v147 + 4) = OUTLINED_FUNCTION_44(4.8149e-34);
      OUTLINED_FUNCTION_21_0(&dword_275247000, v194, v195, "Could not find intent definition for: %s");
      __swift_destroy_boxed_opaque_existential_1(v193);
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_19_0();

      v196 = OUTLINED_FUNCTION_13_0();
      v130(v196, v137);
      v197 = OUTLINED_FUNCTION_3_2();
    }

    else
    {

      v200 = OUTLINED_FUNCTION_13_0();
      v130(v200, v137);
      v197 = OUTLINED_FUNCTION_7_1();
      v198 = v147;
    }

    v199(v197, v198);
    v108 = OUTLINED_FUNCTION_28();
    v110 = *MEMORY[0x277CEB0A0];
    v109 = v332;
    goto LABEL_39;
  }

  v335 = v122;
  v148 = v341;
  v149 = v312;
  (*(v341 + 32))(v312, v122, v145);
  v150 = v308;
  v151 = v149;
  sub_27525529C();
  OUTLINED_FUNCTION_40();
  v153 = v309;
  isUniquelyReferenced_nonNull_native = v311;
  (*(v152 + 104))(v309);
  OUTLINED_FUNCTION_34();
  v155 = sub_275252094();
  v156 = *(v122 + 8);
  v156(v153, isUniquelyReferenced_nonNull_native);
  v156(v150, isUniquelyReferenced_nonNull_native);
  v157 = v336;
  if ((v155 & 1) == 0)
  {
    (*(v148 + 8))(v151, v313);
    v130 = v316;
    v137 = v352;
    v147 = v295;
    goto LABEL_35;
  }

  v158 = swift_allocObject();
  v319 = v158;
  *(v158 + 16) = MEMORY[0x277D84FA0];
  v322 = (v158 + 16);
  v159 = sub_27525528C();
  v336 = *(v159 + 16);
  if (!v336)
  {
    v160 = MEMORY[0x277D84F98];
    v189 = v352;
LABEL_42:

    v201 = v307;
    sub_275254544(v351, v307);
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_46(v202, v203, v204, v205, v206, v201, v207);
    v148 = *MEMORY[0x277CEB0C0];
    OUTLINED_FUNCTION_41();
    v209 = v304;
    v210 = v333;
    v344 = *(v208 + 104);
    v345 = v208 + 104;
    v344(v304, v148, v333);
    v211 = sub_27525509C();
    v347 = *(v153 + 1);
    (v347)(v209, v210);
    if (v211)
    {
      v343 = v153 + 8;
      v212 = v153;
      v213 = v322;
      swift_beginAccess();
      if (*(*v213 + 16))
      {
        sub_275248FE0(v307);

        v215 = OUTLINED_FUNCTION_48(v214);
        v216 = sub_27525565C();
        if (os_log_type_enabled(v215, v216))
        {
          OUTLINED_FUNCTION_31();
          v355 = OUTLINED_FUNCTION_24();
          *v160 = 136315138;

          sub_27525562C();

          v217 = OUTLINED_FUNCTION_30();

          *(v160 + 4) = v217;
          OUTLINED_FUNCTION_21_0(&dword_275247000, v218, v219, "Unsatisfied non-optional intent definition parameters %s after evaluating all intent representation parameters");
          __swift_destroy_boxed_opaque_existential_1(v355);
          OUTLINED_FUNCTION_19();
          OUTLINED_FUNCTION_19_0();
        }

        OUTLINED_FUNCTION_11_1();
        v347();
        v220 = OUTLINED_FUNCTION_0_1();
        v221(v220);
        v222 = OUTLINED_FUNCTION_13_0();
        v316(v222, v189);
        v236 = OUTLINED_FUNCTION_3_2();
        v237(v236);
        v238 = OUTLINED_FUNCTION_28();
        v344(v238, *MEMORY[0x277CEB090], v215);
      }

      else
      {
        OUTLINED_FUNCTION_41();
        OUTLINED_FUNCTION_35();
        v229 = v307;
        OUTLINED_FUNCTION_46(v230, v231, v232, v233, v234, v307, v235);
        v166 = 0;
        sub_275248FE0(v229);

        v239 = v304;
        v153 = v333;
        v344(v304, v148, v333);
        v240 = sub_27525509C();
        v241 = v347;
        (v347)(v239, v153);
        if (v240)
        {
          isUniquelyReferenced_nonNull_native = v303;
          if (v301)
          {
            v172 = v301;
            v180 = sub_27525564C();
LABEL_58:
            v349 = v166;
            v350 = v172;
            v251 = v298;
            MEMORY[0x277C6FA00](v180);
            OUTLINED_FUNCTION_40();
            sub_27524AA1C(v251, v252);
            v253 = *(v339 + 8);
            v253(v251, v346);
            if ((sub_27525537C() & 1) == 0)
            {
              v264 = v339 + 16;
              v263 = *(v339 + 16);
              v265 = v346;
              v263(v296, v299, v346);
              v266 = (v263)(v297, v300, v265);
              v267 = OUTLINED_FUNCTION_48(v266);
              v268 = sub_27525565C();
              v351 = v267;
              LODWORD(v340) = v268;
              if (os_log_type_enabled(v267, v268))
              {
                v269 = swift_slowAlloc();
                v338 = swift_slowAlloc();
                *v269 = 136315394;
                v270 = v298;
                v271 = v346;
                v339 = v264;
                v263(v298, v296, v346);
                sub_27525557C();
                v272 = OUTLINED_FUNCTION_42();
                (v253)(v272);
                v273 = OUTLINED_FUNCTION_30();

                *(v269 + 4) = v273;
                *(v269 + 12) = 2080;
                v263(v270, v297, v271);
                sub_27525557C();
                v274 = OUTLINED_FUNCTION_42();
                (v253)(v274);
                v275 = OUTLINED_FUNCTION_30();

                *(v269 + 14) = v275;
                v276 = v351;
                _os_log_impl(&dword_275247000, v351, v340, "Type mismatch for outputType %s != %s", v269, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_19();
                OUTLINED_FUNCTION_19();

                v253(v299, v271);
                v277 = v300;
                v278 = v271;
              }

              else
              {

                v253(v297, v346);
                v279 = OUTLINED_FUNCTION_26(&v327);
                (v253)(v279);
                v280 = OUTLINED_FUNCTION_26(&v330);
                (v253)(v280);
                v277 = OUTLINED_FUNCTION_26(&v331);
              }

              v253(v277, v278);
              OUTLINED_FUNCTION_11_1();
              v281 = v347;
              v347();
              v282 = OUTLINED_FUNCTION_26(&v337);
              (v281)(v282);
              v283 = OUTLINED_FUNCTION_0_1();
              v284(v283);
              v285 = OUTLINED_FUNCTION_13_0();
              v316(v285, v352);
              v286 = OUTLINED_FUNCTION_3_2();
              v287(v286);
              v288 = OUTLINED_FUNCTION_28();
              (v344)(v288);

              goto LABEL_40;
            }

            v253(v299, v346);
            v254 = OUTLINED_FUNCTION_26(&v331);
            (v253)(v254);
            v249 = v333;
            v157 = v306;
            v250 = v295;
            isUniquelyReferenced_nonNull_native = v303;
          }

          else
          {
LABEL_56:
            v249 = v153;
            v250 = v295;
          }

          v255 = v347;
          (v347)(isUniquelyReferenced_nonNull_native, v249);
          (v255)(v157, v249);
          v256 = OUTLINED_FUNCTION_0_1();
          v257(v256);
          v258 = OUTLINED_FUNCTION_2_1();
          v259(v258);
          v260 = OUTLINED_FUNCTION_7_1();
          v261(v260, v250);
          v262 = OUTLINED_FUNCTION_28();
          v344(v262, v148, v249);
        }

        else
        {
          v242 = v295;
          (v241)(v157, v153);
          v243 = OUTLINED_FUNCTION_0_1();
          v244(v243);
          v245 = OUTLINED_FUNCTION_2_1();
          v246(v245);
          v247 = OUTLINED_FUNCTION_7_1();
          v248(v247, v242);
          (*(v212 + 4))(v331, v303, v153);
        }
      }
    }

    else
    {

      sub_275248FE0(v307);
      v223 = OUTLINED_FUNCTION_0_1();
      v224(v223);
      v225 = OUTLINED_FUNCTION_2_1();
      v226(v225);
      v227 = OUTLINED_FUNCTION_3_2();
      v228(v227);
      (*(v153 + 4))(v331, v157, v210);
    }

LABEL_40:
    OUTLINED_FUNCTION_9();
    return;
  }

  v157 = 0;
  v329 = v159 + ((*(v340 + 80) + 32) & ~*(v340 + 80));
  v328 = v340 + 16;
  v327 = v340 + 8;
  v347 = (v339 + 16);
  v321 = v339 + 32;
  v320 = v339 + 40;
  v325 = (v339 + 88);
  LODWORD(v324) = *MEMORY[0x277D72AE8];
  v160 = MEMORY[0x277D84F98];
  v323 = v339 + 8;
  v349 = 0;
  v326 = v159;
  while (1)
  {
    if (v157 >= *(v159 + 16))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v161 = v340;
    v162 = v337;
    v163 = v338;
    (*(v340 + 16))(v337, v329 + *(v340 + 72) * v157, v338);
    v164 = sub_27525540C();
    v166 = v165;
    v167 = v344;
    MEMORY[0x277C6FBA0]();
    (*(v161 + 8))(v162, v163);
    v148 = *v347;
    (*v347)(v345, v167, v346);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v353 = v160;
    v168 = sub_275253B18(v164, v166);
    if (__OFADD__(*(v160 + 16), (v169 & 1) == 0))
    {
      goto LABEL_55;
    }

    v170 = v168;
    v171 = v169;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A28, &qword_275256168);
    v172 = &v353;
    if (sub_27525574C())
    {
      break;
    }

LABEL_26:
    v160 = v353;
    if (v171)
    {
      v175 = OUTLINED_FUNCTION_33();
      isUniquelyReferenced_nonNull_native = v346;
      (*(v176 + 40))(v175, v345, v346);
    }

    else
    {
      v353[(v170 >> 6) + 8] |= 1 << v170;
      v177 = (*(v160 + 48) + 16 * v170);
      *v177 = v164;
      v177[1] = v166;
      v178 = OUTLINED_FUNCTION_33();
      isUniquelyReferenced_nonNull_native = v346;
      v180 = (*(v179 + 32))(v178, v345, v346);
      v181 = *(v160 + 16);
      v182 = __OFADD__(v181, 1);
      v183 = v181 + 1;
      if (v182)
      {
        __break(1u);
        goto LABEL_58;
      }

      *(v160 + 16) = v183;
    }

    v184 = v343;
    v153 = v344;
    v185 = OUTLINED_FUNCTION_38();
    (v148)(v185);
    v186 = (*v325)(v184, isUniquelyReferenced_nonNull_native);
    v187 = v323;
    if (v186 != v324)
    {
      sub_275253C44(&v353, v164, v166);
    }

    v188 = *v187;
    (*v187)(v153, isUniquelyReferenced_nonNull_native);
    v189 = v352;
    v148 = v341;
    ++v157;
    v188(v343, isUniquelyReferenced_nonNull_native);
    v159 = v326;
    if (v336 == v157)
    {
      goto LABEL_42;
    }
  }

  v172 = v353;
  v173 = sub_275253B18(v164, v166);
  if ((v171 & 1) == (v174 & 1))
  {
    v170 = v173;
    goto LABEL_26;
  }

  sub_2752557AC();
  __break(1u);
}

void sub_2752511A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10();
  a19 = v22;
  a20 = v23;
  v161 = v21;
  v174 = v20;
  v168 = v24;
  v169 = v25;
  v27 = v26;
  v157 = v28;
  v165 = sub_27525508C();
  OUTLINED_FUNCTION_3();
  v156 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_11_0();
  v164 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_22_0();
  v166 = v34;
  OUTLINED_FUNCTION_8_0();
  v160 = sub_2752550AC();
  OUTLINED_FUNCTION_3();
  v159 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_22_0();
  v163 = v38;
  OUTLINED_FUNCTION_8_0();
  v39 = sub_27525506C();
  OUTLINED_FUNCTION_3();
  v170 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_0();
  v167 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89B8, &qword_2752560A8);
  MEMORY[0x28223BE20](v43 - 8);
  OUTLINED_FUNCTION_8_1();
  v46 = v44 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = &v148 - v48;
  v171 = sub_27525573C();
  v50 = *(v171 - 8);
  v51 = v50;
  MEMORY[0x28223BE20](v171);
  OUTLINED_FUNCTION_2_0();
  v173 = v52;
  a10 = MEMORY[0x277D84F98];
  v181 = MEMORY[0x277D84F98];
  v172 = v27;
  v53 = dynamic_cast_existential_0_class_conditional(v27, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8AA8, &qword_275256238);
  v54 = *(v50 + 72);
  v55 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  if (v53)
  {
    v162 = v49;
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_275255FC0;
    v57 = v56 + v55;
    if (qword_2809B88F8 != -1)
    {
      swift_once();
    }

    v58 = v171;
    v59 = __swift_project_value_buffer(v171, qword_2809B8A48);
    v60 = *(v51 + 16);
    v60(v57, v59, v58);
    if (qword_2809B8900 != -1)
    {
      OUTLINED_FUNCTION_18_0(&qword_2809B8900);
    }

    v61 = __swift_project_value_buffer(v58, qword_2809B8A60);
    v60(v57 + v54, v61, v58);
    v175 = v56;
    v62 = OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(v62, v63);
    OUTLINED_FUNCTION_14_0();
    sub_275254A9C(v64, &qword_2809B8AB0, &qword_275256240, v65);
    v66 = v173;
    sub_27525568C();
    v49 = v162;
    v67 = v58;
  }

  else
  {
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_275256080;
    if (qword_2809B8900 != -1)
    {
LABEL_39:
      OUTLINED_FUNCTION_18_0(&qword_2809B8900);
    }

    v69 = v171;
    v70 = __swift_project_value_buffer(v171, qword_2809B8A60);
    (*(v51 + 16))(v68 + v55, v70, v69);
    v175 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8AB0, &qword_275256240);
    OUTLINED_FUNCTION_14_0();
    sub_275254A9C(v71, &qword_2809B8AB0, &qword_275256240, v72);
    v66 = v173;
    v67 = v69;
    sub_27525568C();
  }

  v73 = __swift_storeEnumTagSinglePayload(v49, 1, 1, v39);
  v180 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v73);
  v74 = v174;
  *(&v148 - 6) = v49;
  *(&v148 - 5) = v74;
  *(&v148 - 4) = &v180;
  *(&v148 - 3) = &v181;
  *(&v148 - 2) = &a10;
  sub_27525570C();
  sub_27524E394(v49, v46);
  if (__swift_getEnumTagSinglePayload(v46, 1, v39) == 1)
  {
    sub_275254B18(v46, &qword_2809B89B8, &qword_2752560A8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v76 = dynamic_cast_existential_1_conditional(AssociatedTypeWitness, AssociatedTypeWitness, MEMORY[0x277CEB100]);
    if (v76 && (v78 = sub_275249294(v76, v77)) != 0)
    {
      v154 = AssociatedTypeWitness;
      v170 = *(v78 + 16);

      v79 = sub_27525504C();
      v81 = v80;
      v82 = sub_27525505C();
      v83 = a10;
      v46 = v181;
      v84 = v79;
      v85 = v170;
      v86 = v161;
      sub_27524F0E4(v84, v81, v82, v87, a10, v181, v170, v88, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159);
      v55 = v86;
      if (v86)
      {
        (*(v51 + 8))(v173, v171);
      }

      else
      {
        v152 = v83;
        v153 = v46;

        v102 = *MEMORY[0x277CEB0C0];
        v103 = v159;
        v104 = *(v159 + 104);
        v39 = v158;
        v105 = v160;
        v150 = v159 + 104;
        v149 = v104;
        (v104)(v158, v102, v160);
        v106 = sub_27525509C();
        v107 = *(v103 + 8);
        v158 = v103 + 8;
        v151 = v107;
        v107(v39, v105);
        if (v106)
        {
          v172 = 0;
          v148 = v51;
          v179 = MEMORY[0x277D84F90];
          v108 = *(v180 + 16);
          v162 = (v156 + 104);
          LODWORD(v161) = *MEMORY[0x277CEB088];
          v167 = (v156 + 8);
          v168 = v180;
          v51 = v180 + 40;
          v169 = -v108;
          v109 = -1;
          v110 = v165;
          while (v169 + v109 != -1)
          {
            ++v109;
            v68 = v174;
            v111 = v172;
            if (v109 >= *(v168 + 16))
            {
              __break(1u);
              goto LABEL_39;
            }

            v112 = v166;
            sub_27524CDEC(*(v51 - 8), &v179, *(v51 - 8), *v51, v166);
            if (v111)
            {

              OUTLINED_FUNCTION_9_1();
              v132(v131);
              v133 = OUTLINED_FUNCTION_29();
              v134(v133);
              goto LABEL_16;
            }

            v172 = 0;
            v51 += 16;
            v39 = v164;
            (*v162)(v164, v161, v110);
            v113 = sub_27525507C();
            v46 = v49;
            v55 = v167;
            v114 = *v167;
            (*v167)(v39, v110);
            v114(v112, v110);
            v49 = v46;
            if ((v113 & 1) == 0)
            {

              OUTLINED_FUNCTION_11_1();
              OUTLINED_FUNCTION_9_1();
              v116(v115);
              v117 = OUTLINED_FUNCTION_29();
              v118(v117);
LABEL_24:
              (v149)(v157, *MEMORY[0x277CEB090], v109);
              OUTLINED_FUNCTION_32();
              goto LABEL_16;
            }
          }

          v120 = sub_275254FCC();
          v119 = v154;
          v121 = dynamic_cast_existential_1_superclass_conditional(v154, v154, v120, MEMORY[0x277CEB038]);
          v123 = v172;
          if (v121)
          {
            v124 = v121;
            v125 = v122;
            OUTLINED_FUNCTION_37();
          }

          else
          {
            dynamic_cast_existential_1_conditional(v119, v119, MEMORY[0x277CEB120]);
            OUTLINED_FUNCTION_37();
            if (!v136 || (v169 = v135, v137 = type metadata accessor for EntityTypeExtractionVisitor(), swift_allocObject(), v138 = sub_275249208(0, 0), v177 = v137, v178 = sub_275254B78(&qword_2809B89E0, type metadata accessor for EntityTypeExtractionVisitor, &unk_275255F5C), v175 = v138, , sub_27525520C(), __swift_destroy_boxed_opaque_existential_1(&v175), v124 = *(v138 + 16), v125 = *(v138 + 24), , !v124))
            {

              v139 = OUTLINED_FUNCTION_25();
              v140(v139);
              goto LABEL_26;
            }
          }

          v126 = v155;
          sub_27524CDEC(v124, &v179, v124, v125, v155);
          if (v123)
          {

            OUTLINED_FUNCTION_9_1();
            v128(v127);
            v129 = OUTLINED_FUNCTION_25();
            v130(v129);
            goto LABEL_16;
          }

          v172 = 0;

          v142 = v164;
          v141 = v165;
          (*v162)(v164, v161, v165);
          OUTLINED_FUNCTION_34();
          v143 = sub_27525507C();

          v109 = *v167;
          (*v167)(v142, v141);
          (v109)(v126, v141);
          v144 = OUTLINED_FUNCTION_25();
          v145(v144);
          if ((v143 & 1) == 0)
          {
            OUTLINED_FUNCTION_11_1();
            OUTLINED_FUNCTION_9_1();
            v147(v146);
            goto LABEL_24;
          }

          v119 = v163;
        }

        else
        {
          (*(v51 + 8))(v173, v171);

          v119 = v163;
          OUTLINED_FUNCTION_32();
        }

LABEL_26:
        (*(v159 + 32))(v157, v119, v160);
      }
    }

    else
    {
      v175 = 0;
      v176 = 0xE000000000000000;
      sub_2752556EC();

      v175 = 0x795474757074756FLL;
      v176 = 0xEB00000000206570;
      v179 = AssociatedTypeWitness;
      swift_getMetatypeMetadata();
      v95 = sub_27525557C();
      MEMORY[0x277C6FD40](v95);

      MEMORY[0x277C6FD40](0xD000000000000024, 0x80000002752565E0);
      v96 = v175;
      v97 = v176;
      OUTLINED_FUNCTION_12_0();
      v100 = sub_275254B78(v98, v99, MEMORY[0x277CEB058]);
      OUTLINED_FUNCTION_45(v100);
      *v101 = v96;
      v101[1] = v97;
      (*(v170 + 13))(v101, *MEMORY[0x277CEB048], v39);
      swift_willThrow();
      (*(v51 + 8))(v173, v67);
    }
  }

  else
  {
    v89 = v170;
    v90 = v167;
    (*(v170 + 4))(v167, v46, v39);
    OUTLINED_FUNCTION_12_0();
    v93 = sub_275254B78(v91, v92, MEMORY[0x277CEB058]);
    OUTLINED_FUNCTION_45(v93);
    (v89)[2](v94, v90, v39);
    swift_willThrow();
    (v89[1])(v90, v39);
    (*(v51 + 8))(v66, v67);
  }

LABEL_16:

  sub_275254B18(v49, &qword_2809B89B8, &qword_2752560A8);

  OUTLINED_FUNCTION_9();
}

uint64_t sub_275251FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

uint64_t sub_275252094()
{
  sub_2752552BC();
  sub_275254B78(&qword_2809B8A90, MEMORY[0x277D723F8], MEMORY[0x277D72410]);
  sub_27525560C();
  sub_27525560C();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_27525578C();
  }

  return v1 & 1;
}

uint64_t sub_275252174@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, NSObject *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = v8;
  v96 = a7;
  v100 = a6;
  v104 = a4;
  v105 = a5;
  v113 = a3;
  v101 = a2;
  v95 = a8;
  v111 = sub_27525538C();
  v13 = MEMORY[0x28223BE20](v111 - 8);
  v93 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v94 = &v92 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v102 = &v92 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v112 = &v92 - v20;
  MEMORY[0x28223BE20](v19);
  v114 = &v92 - v22;
  v23 = a1 + 64;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a1 + 64);
  v27 = (v24 + 63) >> 6;
  v28 = v21 + 16;
  v99 = v21;
  v110 = v21 + 8;
  v107 = a1;

  v29 = 0;
  v103 = v28;
  v98 = a1 + 64;
  v97 = v27;
  if (v26)
  {
    while (1)
    {
      v117 = v11;
LABEL_9:
      v31 = __clz(__rbit64(v26)) | (v29 << 6);
      v32 = (*(v107 + 48) + 16 * v31);
      v10 = *v32;
      v9 = v32[1];
      v33 = *(*(v107 + 56) + 8 * v31);
      v34 = *(v113 + 16);

      v115 = v33;
      if (!v34)
      {
        break;
      }

      sub_275253B18(v10, v9);
      if ((v35 & 1) == 0)
      {
        break;
      }

      v36 = v117;
      sub_27525564C();
      if (v36)
      {
      }

      v37 = v113;
      if (!*(v113 + 16))
      {
        goto LABEL_41;
      }

      v38 = sub_275253B18(v10, v9);
      if ((v39 & 1) == 0)
      {
        goto LABEL_42;
      }

      v106 = v10;
      v108 = v9;
      v117 = 0;
      v40 = v99;
      v41 = *(v99 + 16);
      v42 = v102;
      v43 = v111;
      v41(v102, *(v37 + 56) + *(v99 + 72) * v38, v111);
      sub_27524AA1C(v42, v112);
      v109 = *(v40 + 8);
      v109(v42, v43);
      v44 = v114;
      if ((sub_27525537C() & 1) == 0)
      {
        if (qword_2809B8910 != -1)
        {
          swift_once();
        }

        v59 = sub_27525526C();
        __swift_project_value_buffer(v59, qword_2809B8DB8);
        v60 = v111;
        v61 = v112;
        v62 = v41;
        v41(v94, v112, v111);
        v63 = v93;
        v64 = v114;
        v41(v93, v114, v60);
        v65 = v108;

        v66 = sub_27525524C();
        v67 = sub_27525565C();

        LODWORD(v113) = v67;
        v68 = os_log_type_enabled(v66, v67);
        v69 = v106;
        if (v68)
        {
          v70 = swift_slowAlloc();
          v104 = v66;
          v71 = v70;
          v105 = swift_slowAlloc();
          v116[0] = v105;
          *v71 = 136315650;
          v72 = sub_275253418(v69, v65, v116);

          *(v71 + 4) = v72;
          *(v71 + 12) = 2080;
          v73 = v102;
          v74 = v94;
          v62(v102, v94, v60);
          v75 = sub_27525557C();
          v77 = v76;
          v109(v74, v60);
          v78 = sub_275253418(v75, v77, v116);

          *(v71 + 14) = v78;
          *(v71 + 22) = 2080;
          v79 = v93;
          v62(v73, v93, v60);
          v80 = sub_27525557C();
          v82 = v81;
          v83 = v79;
          v84 = v109;
          v109(v83, v60);
          v85 = sub_275253418(v80, v82, v116);

          *(v71 + 24) = v85;
          v86 = v104;
          _os_log_impl(&dword_275247000, v104, v113, "Type mismatch for key '%s' %s != %s", v71, 0x20u);
          v87 = v105;
          swift_arrayDestroy();
          MEMORY[0x277C70310](v87, -1, -1);
          MEMORY[0x277C70310](v71, -1, -1);

          v84(v112, v60);
          v84(v114, v60);
        }

        else
        {

          v88 = v109;
          v109(v63, v60);
          v88(v94, v60);
          v88(v61, v60);
          v88(v64, v60);
        }

        v48 = MEMORY[0x277CEB090];
        goto LABEL_39;
      }

      v10 = v117;
      v45 = v115;
      if (v101)
      {
      }

      else
      {
        swift_beginAccess();
        sub_27525472C(v106, v108);
        swift_endAccess();

        v44 = v114;
      }

      v27 = v97;
      v26 &= v26 - 1;
      v46 = v111;
      v47 = v109;
      v9 = v110;
      v109(v112, v111);
      v47(v44, v46);
      v11 = v10;
      v23 = v98;
      if (!v26)
      {
        goto LABEL_5;
      }
    }

    if (qword_2809B8910 != -1)
    {
      goto LABEL_43;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v27)
      {

        v48 = MEMORY[0x277CEB0C0];
        goto LABEL_39;
      }

      v26 = *(v23 + 8 * v30);
      ++v29;
      if (v26)
      {
        v117 = v11;
        v29 = v30;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  v49 = sub_27525526C();
  __swift_project_value_buffer(v49, qword_2809B8DB8);

  v50 = sub_27525524C();
  v51 = sub_27525565C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v116[0] = v53;
    *v52 = 136315394;
    if (v101)
    {
      v54 = 0;
    }

    else
    {
      v54 = 762212206;
    }

    if (v101)
    {
      v55 = 0xE000000000000000;
    }

    else
    {
      v55 = 0xE400000000000000;
    }

    v56 = sub_275253418(v54, v55, v116);

    *(v52 + 4) = v56;
    *(v52 + 12) = 2080;
    v57 = sub_275253418(v10, v9, v116);

    *(v52 + 14) = v57;
    _os_log_impl(&dword_275247000, v50, v51, "Missing %soptional intent parameter '%s'", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C70310](v53, -1, -1);
    MEMORY[0x277C70310](v52, -1, -1);
  }

  else
  {
  }

  v48 = MEMORY[0x277CEB090];
LABEL_39:
  v89 = v95;
  v90 = *v48;
  v91 = sub_2752550AC();
  return (*(*(v91 - 8) + 104))(v89, v90, v91);
}

uint64_t sub_275252AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  if (dynamic_cast_existential_1_conditional(a3, a3, MEMORY[0x277CEB118]))
  {
    v12 = sub_2752555CC();
    v14 = v13;
    if (sub_2752555EC())
    {
      v15 = sub_275252FC8(1uLL, v12, v14);
      v12 = MEMORY[0x277C6FD10](v15);
      v14 = v16;
    }

    v17 = sub_2752551CC();
    v19 = sub_275249294(v17, v18);
    if (!v19)
    {
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      sub_2752556EC();
      MEMORY[0x277C6FD40](0xD000000000000014, 0x8000000275256610);
      v52[5] = sub_2752551CC();
      v52[6] = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8AC0, &qword_275256248);
      v30 = sub_27525557C();
      MEMORY[0x277C6FD40](v30);

      MEMORY[0x277C6FD40](0xD000000000000029, 0x8000000275256630);
      MEMORY[0x277C6FD40](v12, v14);

      sub_275254B18(a5, &qword_2809B89B8, &qword_2752560A8);
      *a5 = 0;
      a5[1] = 0xE000000000000000;
      v31 = *MEMORY[0x277CEB048];
      v32 = sub_27525506C();
      (*(*(v32 - 8) + 104))(a5, v31, v32);
      __swift_storeEnumTagSinglePayload(a5, 0, 1, v32);
      return 0;
    }

    v20 = v19;
    v21 = sub_2752551CC();
    v22 = dynamic_cast_existential_1_class_conditional(v21, v21, MEMORY[0x277CEB038]);
    if (v22)
    {
      v24 = v22;
      v25 = v23;
    }

    else if (!dynamic_cast_existential_1_conditional(v21, v21, MEMORY[0x277CEB120]) || (v45 = type metadata accessor for EntityTypeExtractionVisitor(), swift_allocObject(), v46 = sub_275249208(0, 0), v52[3] = v45, v52[4] = sub_275254B78(&qword_2809B89E0, type metadata accessor for EntityTypeExtractionVisitor, &unk_275255F5C), v52[0] = v46, , sub_27525520C(), __swift_destroy_boxed_opaque_existential_1(v52), v24 = *(v46 + 16), v25 = *(v46 + 24), , !v24))
    {
LABEL_19:
      v47 = *(v20 + 24);
      v48 = *(v20 + 16);
      if (v47 != 1)
      {
        a8 = a9;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52[0] = *a8;
      sub_2752545A8(v48, v12, v14, isUniquelyReferenced_nonNull_native);
      *a8 = v52[0];

      return 1;
    }

    v26 = (*a7 + 32);
    v27 = *(*a7 + 16) + 1;
    while (--v27)
    {
      v28 = *v26;
      v26 += 2;
      if (v28 == v24)
      {
        goto LABEL_19;
      }
    }

    if (qword_2809B8910 != -1)
    {
      swift_once();
    }

    v34 = sub_27525526C();
    __swift_project_value_buffer(v34, qword_2809B8DB8);
    v35 = sub_27525524C();
    v36 = sub_27525565C();
    if (os_log_type_enabled(v35, v36))
    {
      v51 = v25;
      v37 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52[0] = v50;
      *v37 = 136315138;
      v38 = sub_2752557DC();
      v40 = sub_275253418(v38, v39, v52);

      *(v37 + 4) = v40;
      _os_log_impl(&dword_275247000, v35, v36, "Adding entity '%s' to the list of parameter entities to check", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x277C70310](v50, -1, -1);
      v41 = v37;
      v25 = v51;
      MEMORY[0x277C70310](v41, -1, -1);
    }

    sub_275253144(sub_275253318);
    v42 = *(*a7 + 16);
    sub_2752531D0(v42, sub_275253318);
    v43 = *a7;
    *(v43 + 16) = v42 + 1;
    v44 = v43 + 16 * v42;
    *(v44 + 32) = v24;
    *(v44 + 40) = v25;
    goto LABEL_19;
  }

  return 1;
}

unint64_t sub_275252FC8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_2752555AC();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_2752555FC();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2752530BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_27525573C();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  return sub_27525572C();
}

uint64_t sub_275253144(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_2752531D0(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

char *sub_275253218(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8AD8, &qword_275256260);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_275253318(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8AC8, &qword_275256250);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_275253418(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2752534DC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_275254A0C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2752534DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2752535DC(a5, a6);
    *a1 = v9;
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
    result = sub_2752556FC();
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

uint64_t sub_2752535DC(uint64_t a1, unint64_t a2)
{
  v3 = sub_275253628(a1, a2);
  sub_275253740(&unk_2883FE488);
  return v3;
}

uint64_t sub_275253628(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2752555DC())
  {
    result = sub_275253824(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2752556DC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2752556FC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_275253740(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_275253894(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_275253824(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A98, &qword_275256230);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_275253894(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A98, &qword_275256230);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_275253AA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275253AE0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_275253B18(uint64_t a1, uint64_t a2)
{
  sub_2752557BC();
  sub_27525559C();
  v4 = sub_2752557CC();

  return sub_275253B90(a1, a2, v4);
}

unint64_t sub_275253B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_27525578C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

BOOL sub_275253C44(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_2752557BC();
  sub_27525559C();
  v8 = sub_2752557CC();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_27525578C() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_275253FEC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_275253D90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A88, &qword_275256228);
  result = sub_2752556BC();
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
      sub_275254154(0, (v28 + 63) >> 6, v3 + 56);
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
    sub_2752557BC();
    sub_27525559C();
    result = sub_2752557CC();
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

unint64_t sub_275253FEC(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_275253D90(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_275254310(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_2752557BC();
      sub_27525559C();
      result = sub_2752557CC();
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
        if (v18 || (sub_27525578C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2752541B8();
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
    result = sub_27525579C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_275254154(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_275256180;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_2752541B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A88, &qword_275256228);
  v2 = *v0;
  v3 = sub_2752556AC();
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

uint64_t sub_275254310(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A88, &qword_275256228);
  result = sub_2752556BC();
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
        sub_2752557BC();

        sub_27525559C();
        result = sub_2752557CC();
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

uint64_t sub_275254544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2752545A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_275253B18(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8AD0, &qword_275256258);
  if ((sub_27525574C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_275253B18(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_2752557AC();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = a1;
  }

  else
  {
    sub_2752546E4(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_2752546E4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_27525472C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_2752557BC();
  sub_27525559C();
  v6 = sub_2752557CC();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_27525578C() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2752541B8();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_275254854(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_275254854(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_27525569C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_2752557BC();

        sub_27525559C();
        v10 = sub_2752557CC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_275254A0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275254A9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_275254B18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_275254B78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_18_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_19_0()
{

  JUMPOUT(0x277C70310);
}

void OUTLINED_FUNCTION_21_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_30()
{

  return sub_275253418(v0, v1, (v2 - 72));
}

uint64_t OUTLINED_FUNCTION_31()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_44(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 160);

  return sub_275253418(v5, v2, (v3 - 112));
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_46@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, NSObject *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(v7 - 384);

  return sub_275252174(a1, a2, a3, a4, a5, a6, v9, a7);
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1)
{

  return sub_27525524C();
}

uint64_t sub_275254F14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_27525526C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_27525525C();
}