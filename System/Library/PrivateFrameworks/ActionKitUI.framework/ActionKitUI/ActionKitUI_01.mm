void sub_23E3656E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_23E3AA9B0();

  [a4 populateWithIcon:a1 string:v6];
}

uint64_t sub_23E365788()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t type metadata accessor for SSHKeyConfigurationView(uint64_t a1)
{
  result = qword_27E33F2F0;
  if (!qword_27E33F2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E365838()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E365878()
{
  OUTLINED_FUNCTION_9_0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E34E4C0;

  return sub_23E35DA70(v2, v3);
}

uint64_t sub_23E365920()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E367898;

  return sub_23E364F10(v2, v3, v4);
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23E365A24(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_18(v6);
  *v7 = v8;
  v7[1] = sub_23E367898;

  return sub_23E364FF8(a1, v3, v4, v5);
}

uint64_t sub_23E365AE8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E365B20()
{
  OUTLINED_FUNCTION_9_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16(v1);

  return v4(v3);
}

uint64_t sub_23E365BB4()
{
  OUTLINED_FUNCTION_9_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16(v1);

  return v4(v3);
}

uint64_t sub_23E365C70(uint64_t a1)
{
  v2 = type metadata accessor for SSHKeyConfigurationView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E365CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F2E0, &unk_23E3B1E80);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23E365D88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F2E0, &unk_23E3B1E80);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23E365E14(uint64_t a1)
{
  sub_23E365EC8(319);
  if (v1 <= 0x3F)
  {
    sub_23E3496A8();
    if (v2 <= 0x3F)
    {
      sub_23E365F2C(319);
      if (v3 <= 0x3F)
      {
        sub_23E365F84();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23E365EC8(uint64_t a1)
{
  if (!qword_27E33F300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F280, "@3");
    v1 = sub_23E3AA7F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E33F300);
    }
  }
}

void sub_23E365F2C(uint64_t a1)
{
  if (!qword_27E33F310)
  {
    sub_23E3AA1A0();
    v1 = sub_23E3AA130();
    if (!v2)
    {
      atomic_store(v1, &qword_27E33F310);
    }
  }
}

void sub_23E365F84()
{
  if (!qword_27E33ED00)
  {
    v0 = sub_23E3AA7F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E33ED00);
    }
  }
}

uint64_t sub_23E36601C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SSHKeyConfigurationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E366084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SSHKeyConfigurationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E3660E8()
{
  v1 = type metadata accessor for SSHKeyConfigurationView(0);
  OUTLINED_FUNCTION_6_0(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_23E35F1C0(v3);
}

uint64_t sub_23E366154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23E3661A4()
{
  result = qword_27E33F388;
  if (!qword_27E33F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F388);
  }

  return result;
}

uint64_t sub_23E3661F8(void *a1)
{
  v3 = type metadata accessor for SSHKeyConfigurationView(0);
  OUTLINED_FUNCTION_6_0(v3);
  v5 = (v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_23E360234(a1, v5);
}

void sub_23E366318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_23E36635C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t objectdestroy_32Tm()
{
  v1 = type metadata accessor for SSHKeyConfigurationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F288, &qword_23E3B1DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23E3AA1A0();
    OUTLINED_FUNCTION_13();
    (*(v6 + 8))(v0 + v3 + v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23E3664F8(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for SSHKeyConfigurationView(0);
  OUTLINED_FUNCTION_6_0(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

void sub_23E366570(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23E3AA9B0();

  [a3 setString_];
}

uint64_t sub_23E3665DC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_23E36661C(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_23E3666A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_23E3666E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23E366734()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F330, &qword_23E3B1F08);
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F328, &qword_23E3B1F00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F370, &qword_23E3B1F30);
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F320, &qword_23E3B1EF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F348, &qword_23E3B1F18);
  sub_23E34A09C(&qword_27E33F350, &qword_27E33F320, &qword_23E3B1EF8, MEMORY[0x277CDE580]);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F358, &unk_23E3B1F20);
  v4 = sub_23E34A09C(&unk_27E33F360, &qword_27E33F358, &unk_23E3B1F20, MEMORY[0x277CDD7A8]);
  v12 = OUTLINED_FUNCTION_4_1(v4, v5, v6, v7, v8, v9, v10, v11, v3);
  OUTLINED_FUNCTION_4_1(v12, v13, v14, v15, v16, v17, v18, v19, v2);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F378, &qword_23E3B1F38);
  sub_23E3AA560();
  OUTLINED_FUNCTION_2_3();
  sub_23E34A09C(v21, &qword_27E33F378, &qword_23E3B1F38, v22);
  v23 = sub_23E366154(&qword_27E33E880, MEMORY[0x277CDE2A0], MEMORY[0x277CDE298]);
  v31 = OUTLINED_FUNCTION_4_1(v23, v24, v25, v26, v27, v28, v29, v30, v20);
  OUTLINED_FUNCTION_4_1(v31, v32, v33, v34, v35, v36, v37, v38, v1);
  v39 = sub_23E349C74();
  return OUTLINED_FUNCTION_4_1(v39, v40, v41, v42, v43, v44, v45, v46, v0);
}

unint64_t sub_23E3669E0()
{
  result = qword_27E33F478;
  if (!qword_27E33F478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F440, &qword_23E3B2138);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F438, &qword_23E3B2130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F430, &qword_23E3B2128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F428, &qword_23E3B2120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F420, &qword_23E3B2118);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F458, &qword_23E3B2148);
    sub_23E34A09C(&qword_27E33F460, &qword_27E33F420, &qword_23E3B2118, MEMORY[0x277CDE580]);
    sub_23E34A09C(&qword_27E33F468, &qword_27E33F458, &qword_23E3B2148, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    sub_23E349C74();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F478);
  }

  return result;
}

unint64_t sub_23E366C04()
{
  result = qword_27E33F480;
  if (!qword_27E33F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F480);
  }

  return result;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E366C9C()
{

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

unint64_t sub_23E366D60()
{
  result = qword_27E33F4C0;
  if (!qword_27E33F4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F4B8, &unk_23E3B2180);
    sub_23E34A09C(&unk_27E33E8D0, &qword_27E33F4D0, &qword_23E3B1490, MEMORY[0x277CDD7F8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E33E8B0, &qword_23E3B1480);
    sub_23E34A09C(&qword_27E33F3B0, &unk_27E33E8B0, &qword_23E3B1480, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F4C0);
  }

  return result;
}

uint64_t objectdestroy_62Tm()
{

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

void sub_23E366F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_23E366FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_23E366FEC()
{
  result = qword_27E33F4F8;
  if (!qword_27E33F4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F390, &unk_23E3B1F40);
    sub_23E367070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F4F8);
  }

  return result;
}

unint64_t sub_23E367070()
{
  result = qword_27E33F500;
  if (!qword_27E33F500)
  {
    sub_23E350638(255, &qword_27E33F4E0, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F500);
  }

  return result;
}

unint64_t sub_23E3670D8()
{
  result = qword_27E33F508;
  if (!qword_27E33F508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F4F0, &unk_23E3B21A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F390, &unk_23E3B1F40);
    sub_23E366FEC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F508);
  }

  return result;
}

unint64_t sub_23E3671AC()
{
  result = qword_27E33F540;
  if (!qword_27E33F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F540);
  }

  return result;
}

unint64_t sub_23E367200()
{
  result = qword_27E33F548;
  if (!qword_27E33F548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F538, &qword_23E3B21E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F548);
  }

  return result;
}

unint64_t sub_23E367290()
{
  result = qword_27E33F5C8;
  if (!qword_27E33F5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F5C0, &qword_23E3B2248);
    sub_23E367348();
    sub_23E34A09C(&qword_27E33F5F0, &qword_27E33F5F8, &qword_23E3B2260, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F5C8);
  }

  return result;
}

unint64_t sub_23E367348()
{
  result = qword_27E33F5D0;
  if (!qword_27E33F5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F5D8, &qword_23E3B2250);
    sub_23E3AA540();
    swift_getOpaqueTypeConformance2();
    sub_23E34A09C(&qword_27E33F5E0, &qword_27E33F5E8, &qword_23E3B2258, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F5D0);
  }

  return result;
}

uint64_t sub_23E367444@<X0>(uint64_t a1@<X8>)
{
  result = sub_23E3AA340();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23E3674D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23E367518(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_23E367558(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SSHKeyGenerationView.KeyFormat(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SSHKeyGenerationView.KeyFormat(uint64_t result, int a2, int a3)
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

uint64_t sub_23E36764C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F440, &qword_23E3B2138);
  sub_23E3669E0();
  v9 = sub_23E366C04();
  return OUTLINED_FUNCTION_4_1(v9, v1, v2, v3, v4, v5, v6, v7, v0);
}

unint64_t sub_23E3676BC()
{
  result = qword_27E33F6A0;
  if (!qword_27E33F6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F6A8, "z3");
    sub_23E34A09C(&qword_27E33F598, &qword_27E33F588, &qword_23E3B2228, MEMORY[0x277CDD938]);
    sub_23E34A09C(&qword_27E33F5A0, &qword_27E33F570, &qword_23E3B2210, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F6A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t WFAccountAccessResource.accountConfigurationView.getter()
{
  v1 = type metadata accessor for AccountManagementView(0);
  OUTLINED_FUNCTION_13();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 28);
  *&v5[v6] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F6B0, &unk_23E3B2460);
  swift_storeEnumTagMultiPayload();
  v7 = &v5[*(v1 + 32)];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = *(v1 + 36);
  v12[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F6B8, qword_23E3B24A0);
  sub_23E3AA7B0();
  *&v5[v8] = v13;
  *v5 = v0;
  [v0 accountClass];
  swift_getObjCClassMetadata();
  sub_23E350638(0, &qword_27E33F6C0, 0x277CE87F0);
  v9 = swift_dynamicCastMetatypeUnconditional();
  *(v5 + 1) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v5 + 2) = sub_23E36A9A4;
  *(v5 + 3) = v10;
  v5[32] = 0;
  sub_23E36AD74(&qword_27E33F6C8, type metadata accessor for AccountManagementView, &unk_23E3B25A0);
  return sub_23E3AA840();
}

uint64_t type metadata accessor for AccountManagementView(uint64_t a1)
{
  result = qword_27E33F6E0;
  if (!qword_27E33F6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E367AF0(uint64_t a1)
{
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 16) = a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_23E36B904;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E364C0C;
  aBlock[3] = &block_descriptor_38;
  v4 = _Block_copy(aBlock);

  v5 = [ObjCClassFromMetadata addAccountObserver_];
  _Block_release(v4);
  sub_23E3AABE0();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_23E36B90C(aBlock, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_23E367C30(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for AccountListViewModel();
    sub_23E36AD74(&qword_27E33F708, type metadata accessor for AccountListViewModel, &unk_23E3B2568);
    sub_23E3AA110();

    sub_23E3AA120();
  }

  return result;
}

uint64_t sub_23E367CE4()
{
  swift_beginAccess();
  sub_23E34A628(v0 + 24, &v3, &qword_27E33F8B8, &qword_23E3B2728);
  if (v4)
  {
    sub_23E36B8BC(&v3, v5);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    __swift_project_boxed_opaque_existential_0(v5, v6);
    [ObjCClassFromMetadata removeAccountObserver_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_23E34A698(&v3, &qword_27E33F8B8, &qword_23E3B2728);
  }

  sub_23E34A698(v0 + 24, &qword_27E33F8B8, &qword_23E3B2728);
  return v0;
}

uint64_t sub_23E367DD8()
{
  v0 = sub_23E367CE4();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_23E367E08()
{
  v0 = [swift_getObjCClassFromMetadata() accounts];
  sub_23E350638(0, &qword_27E33F6C0, 0x277CE87F0);
  v1 = sub_23E3AAA70();

  return v1;
}

uint64_t sub_23E367E74()
{
  v0 = [swift_getObjCClassFromMetadata() localizedServiceName];
  v1 = sub_23E3AA9D0();

  return v1;
}

uint64_t sub_23E367ED0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountListViewModel();
  result = sub_23E3AA110();
  *a2 = result;
  return result;
}

uint64_t sub_23E367F10(uint64_t a1)
{
  type metadata accessor for AccountListViewModel();
  swift_allocObject();
  return sub_23E367AF0(a1);
}

uint64_t sub_23E367F50@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_23E3AA560();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F740, &qword_23E3B25F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v27 = v1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F748, &qword_23E3B25F8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E33F750, &unk_23E3B2600);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F348, &qword_23E3B1F18);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F760, &qword_23E3B2610);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F768, &qword_23E3B2618);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F770, &qword_23E3B2620);
  v13 = sub_23E3AA1C0();
  v14 = sub_23E36AE50();
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = MEMORY[0x277CDD8F0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_23E349C74();
  v28 = v11;
  v29 = MEMORY[0x277D837D0];
  v30 = OpaqueTypeConformance2;
  v31 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  v28 = v10;
  v29 = v17;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F358, &unk_23E3B1F20);
  v20 = sub_23E34A09C(&unk_27E33F360, &qword_27E33F358, &unk_23E3B1F20, MEMORY[0x277CDD7A8]);
  v28 = v19;
  v29 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v28 = v24;
  v29 = v23;
  v30 = v18;
  v31 = v21;
  swift_getOpaqueTypeConformance2();
  sub_23E3AA1E0();
  sub_23E3AA550();
  sub_23E34A09C(&unk_27E33F7A8, &qword_27E33F740, &qword_23E3B25F0, MEMORY[0x277CDD978]);
  sub_23E36AD74(&qword_27E33E880, MEMORY[0x277CDE2A0], MEMORY[0x277CDE298]);
  sub_23E3AA600();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_23E368344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = sub_23E3AA380();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x28223BE20](v3);
  v69 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_23E3AA1C0();
  v58 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23E3AA8D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F770, &qword_23E3B2620);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F768, &qword_23E3B2618);
  v61 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v15 = &v57 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F760, &qword_23E3B2610);
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F750, &unk_23E3B2600);
  v67 = *(v17 - 8);
  v68 = v17;
  MEMORY[0x28223BE20](v17);
  v66 = &v57 - v18;
  v72 = a1;
  v75 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F7B8, &qword_23E3B2640);
  sub_23E34A09C(&qword_27E33F7C0, &qword_27E33F7B8, &qword_23E3B2640, MEMORY[0x277CE14C0]);
  sub_23E3AA5D0();
  KeyPath = swift_getKeyPath();
  v20 = &v13[*(v11 + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F798, &unk_23E3B2630) + 28);
  (*(v8 + 104))(v10, *MEMORY[0x277CDF0D0], v7);
  sub_23E3AA870();
  (*(v8 + 8))(v10, v7);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F7C8, &qword_23E3B2678);
  __swift_storeEnumTagSinglePayload(v20 + v21, 0, 1, v22);
  *v20 = KeyPath;
  sub_23E3AA1B0();
  v23 = sub_23E36AE50();
  v60 = v15;
  v59 = v11;
  v24 = MEMORY[0x277CDD8F0];
  v25 = v74;
  sub_23E3AA710();
  (*(v58 + 8))(v6, v25);
  sub_23E36AF64(v13);
  sub_23E3AAA00("%@ Accounts", 11);
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v26 = qword_27E33F950;
  v27 = sub_23E3AA9B0();
  v28 = sub_23E3AA9B0();

  v29 = [v26 localizedStringForKey:v27 value:v28 table:0];

  sub_23E3AA9D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F7D0, &unk_23E3B2680);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_23E3B1560;
  v31 = v72;
  type metadata accessor for AccountListViewModel();
  sub_23E36AD74(&qword_27E33F708, type metadata accessor for AccountListViewModel, &unk_23E3B2568);
  sub_23E3AA150();
  v32 = sub_23E367E74();
  v34 = v33;

  v35 = MEMORY[0x277D837D0];
  *(v30 + 56) = MEMORY[0x277D837D0];
  v36 = v35;
  *(v30 + 64) = sub_23E36AFC4();
  *(v30 + 32) = v32;
  *(v30 + 40) = v34;
  v37 = sub_23E3AA9C0();
  v39 = v38;

  v80 = v37;
  v81 = v39;
  v76 = v59;
  v77 = v74;
  v78 = v23;
  v79 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_23E349C74();
  v42 = v62;
  v43 = v64;
  v44 = v36;
  v45 = v60;
  sub_23E3AA680();

  (*(v61 + 8))(v45, v43);
  v47 = v69;
  v46 = v70;
  v48 = v71;
  (*(v70 + 104))(v69, *MEMORY[0x277CDDDC0], v71);
  v76 = v43;
  v77 = v44;
  v78 = OpaqueTypeConformance2;
  v79 = v41;
  v49 = swift_getOpaqueTypeConformance2();
  v51 = v65;
  v50 = v66;
  sub_23E3AA6B0();
  (*(v46 + 8))(v47, v48);
  v52 = (*(v63 + 8))(v42, v51);
  MEMORY[0x28223BE20](v52);
  *(&v57 - 2) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F348, &qword_23E3B1F18);
  v76 = v51;
  v77 = v49;
  swift_getOpaqueTypeConformance2();
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F358, &unk_23E3B1F20);
  v54 = sub_23E34A09C(&unk_27E33F360, &qword_27E33F358, &unk_23E3B1F20, MEMORY[0x277CDD7A8]);
  v76 = v53;
  v77 = v54;
  swift_getOpaqueTypeConformance2();
  v55 = v68;
  sub_23E3AA6F0();
  return (*(v67 + 8))(v50, v55);
}

uint64_t sub_23E368C98@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F7E8, &qword_23E3B2698);
  v3 = *(v35 - 8);
  v4 = MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F7F0, &qword_23E3B26A0);
  v32 = *(v8 - 8);
  v9 = v32;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v38 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F7F8, &qword_23E3B26A8);
  sub_23E36B1FC();
  v31 = v14;
  sub_23E3AA8B0();
  v37 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F838, &qword_23E3B26C8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F840, &qword_23E3B26D0);
  v16 = sub_23E3AA500();
  v17 = sub_23E34A09C(&qword_27E33F848, &qword_27E33F840, &qword_23E3B26D0, MEMORY[0x277CDF028]);
  v18 = sub_23E36AD74(&qword_27E33F850, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v39 = v15;
  v40 = v16;
  v41 = v17;
  v42 = v18;
  swift_getOpaqueTypeConformance2();
  v29 = v7;
  sub_23E3AA8B0();
  v19 = *(v9 + 16);
  v30 = v12;
  v19(v12, v14, v8);
  v20 = *(v3 + 16);
  v21 = v34;
  v22 = v7;
  v23 = v35;
  v20(v34, v22, v35);
  v24 = v36;
  v19(v36, v12, v8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F858, &qword_23E3B26D8);
  v20(&v24[*(v25 + 48)], v21, v23);
  v26 = *(v3 + 8);
  v26(v29, v23);
  v27 = *(v32 + 8);
  v27(v31, v8);
  v26(v21, v23);
  return (v27)(v30, v8);
}

uint64_t sub_23E369070@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = type metadata accessor for AccountManagementView(0);
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = v4;
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F810, &qword_23E3B26B0);
  MEMORY[0x28223BE20](v47);
  v6 = &v41 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F890, &unk_23E3B26F8);
  MEMORY[0x28223BE20](v45);
  v8 = &v41 - v7;
  type metadata accessor for AccountListViewModel();
  sub_23E36AD74(&qword_27E33F708, type metadata accessor for AccountListViewModel, &unk_23E3B2568);
  sub_23E3AA150();
  v9 = sub_23E367E08();

  v10 = sub_23E36B580(v9);

  if (v10)
  {
    sub_23E3AA150();
    v11 = sub_23E367E08();

    v48[0] = v11;
    KeyPath = swift_getKeyPath();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F898, &qword_23E3B2720);
    v14 = sub_23E34A09C(&qword_27E33F8A0, &qword_27E33F898, &qword_23E3B2720, MEMORY[0x277D83980]);
    v15 = sub_23E36B5A4();
    sub_23E3AA880(v48, KeyPath, sub_23E36A30C, 0, v13, MEMORY[0x277CE0BD8], v14, v15, MEMORY[0x277CE0BC8]);
    v16 = v44;
    sub_23E36B028(v2, v44);
    v17 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v18 = swift_allocObject();
    sub_23E36B0A4(v16, v18 + v17);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_23E36B788;
    *(v19 + 24) = v18;
    v20 = &v6[*(v47 + 36)];
    *v20 = sub_23E36B830;
    v20[1] = v19;
    sub_23E34A628(v6, v8, &qword_27E33F810, &qword_23E3B26B0);
    swift_storeEnumTagMultiPayload();
    sub_23E36B288();
    sub_23E3AA480();
    return sub_23E34A698(v6, &qword_27E33F810, &qword_23E3B26B0);
  }

  else
  {
    v22 = v8;
    sub_23E3AAA00("No accounts", 11);
    if (qword_27E33E560 != -1)
    {
      swift_once();
    }

    v23 = qword_27E33F950;
    v24 = sub_23E3AA9B0();
    v25 = sub_23E3AA9B0();

    v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

    v27 = sub_23E3AA9D0();
    v29 = v28;

    v48[0] = v27;
    v48[1] = v29;
    sub_23E349C74();
    v30 = sub_23E3AA5F0();
    v32 = v31;
    LOBYTE(v29) = v33;
    sub_23E3AA770();
    v34 = sub_23E3AA5E0();
    v36 = v35;
    v38 = v37;
    v40 = v39;

    sub_23E35BC20(v30, v32, v29 & 1);

    *v22 = v34;
    *(v22 + 1) = v36;
    v22[16] = v38 & 1;
    *(v22 + 3) = v40;
    swift_storeEnumTagMultiPayload();
    sub_23E36B288();
    return sub_23E3AA480();
  }
}

uint64_t sub_23E3695BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = sub_23E3AA500();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccountManagementView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F840, &qword_23E3B26D0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  sub_23E36B028(a1, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_23E36B0A4(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F860, &qword_23E3B26E0);
  sub_23E36B420();
  sub_23E3AA800();
  sub_23E3AA4F0();
  sub_23E34A09C(&qword_27E33F848, &qword_27E33F840, &qword_23E3B26D0, MEMORY[0x277CDF028]);
  sub_23E36AD74(&qword_27E33F850, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  sub_23E3AA630();
  (*(v4 + 8))(v6, v3);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_23E3698C8()
{
  v1 = v0;
  v17 = sub_23E3AA370();
  v2 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23E3AA250();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F718, &qword_23E3B2558);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for AccountManagementView(0);
  sub_23E36A744(v8);
  MEMORY[0x23EF084E0](v6);
  sub_23E3AA240();
  sub_23E3AA860();
  sub_23E34A698(v8, &qword_27E33F718, &qword_23E3B2558);
  v10 = v0 + *(v9 + 32);
  v11 = *v10;
  if (v10[8] != 1)
  {

    sub_23E3AAB50();
    v13 = sub_23E3AA590();
    sub_23E3AA0E0();

    sub_23E3AA360();
    swift_getAtKeyPath();
    sub_23E36B098(v11, 0);
    result = (*(v2 + 8))(v4, v17);
    v11 = aBlock[0];
    if (!aBlock[0])
    {
      return result;
    }

    goto LABEL_5;
  }

  result = swift_unknownObjectRetain();
  if (v11)
  {
LABEL_5:
    v14 = *v1;
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23E36A6C8;
    aBlock[3] = &block_descriptor_6;
    v15 = _Block_copy(aBlock);
    [v14 makeAvailableWithUserInterface:v11 completionHandler:v15];
    _Block_release(v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_23E369BBC@<X0>(uint64_t a1@<X8>)
{
  sub_23E3AAA00("Add Account", 11);
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v2 = qword_27E33F950;
  v3 = sub_23E3AA9B0();
  v4 = sub_23E3AA9B0();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = sub_23E3AA9D0();
  v8 = v7;

  __src[0] = v6;
  __src[1] = v8;
  sub_23E349C74();
  v9 = sub_23E3AA5F0();
  v11 = v10;
  LOBYTE(v8) = v12;
  v14 = v13;
  sub_23E3AA8F0();
  sub_23E3AA270();
  memcpy(&v16[7], __src, 0x70uLL);
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = 0;
  return memcpy((a1 + 33), v16, 0x77uLL);
}

uint64_t sub_23E369D60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F7E0, &qword_23E3B2690);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23E34A628(a1, &v5 - v3, &qword_27E33F7E0, &qword_23E3B2690);
  return sub_23E3AA310();
}

uint64_t sub_23E369E08(uint64_t a1)
{
  v2 = sub_23E3AA4E0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F358, &unk_23E3B1F20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_23E3AA4D0();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33E8B0, &qword_23E3B1480);
  sub_23E34A09C(&qword_27E33F3B0, &unk_27E33E8B0, &qword_23E3B1480, MEMORY[0x277CDF028]);
  sub_23E3AA170();
  v7 = sub_23E34A09C(&unk_27E33F360, &qword_27E33F358, &unk_23E3B1F20, MEMORY[0x277CDD7A8]);
  MEMORY[0x23EF081A0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23E369FF4(uint64_t a1)
{
  v2 = type metadata accessor for AccountManagementView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23E3AAA00("Done", 4);
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v5 = qword_27E33F950;
  v6 = sub_23E3AA9B0();
  v7 = sub_23E3AA9B0();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = sub_23E3AA9D0();
  v11 = v10;

  v15[0] = v9;
  v15[1] = v11;
  sub_23E36B028(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_23E36B0A4(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_23E349C74();
  return sub_23E3AA810();
}

uint64_t sub_23E36A1E0()
{
  v0 = sub_23E3AA250();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F718, &qword_23E3B2558);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - v2;
  type metadata accessor for AccountManagementView(0);
  sub_23E36A744(v3);
  MEMORY[0x23EF084E0](v1);
  sub_23E3AA240();
  sub_23E3AA860();
  return sub_23E34A698(v3, &qword_27E33F718, &qword_23E3B2558);
}

uint64_t sub_23E36A30C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  sub_23E36B858(*a1);
  sub_23E349C74();
  result = sub_23E3AA5F0();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

void *sub_23E36A378(uint64_t a1, uint64_t a2)
{
  v3 = sub_23E3A9EC0();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccountListViewModel();
  sub_23E36AD74(&qword_27E33F708, type metadata accessor for AccountListViewModel, &unk_23E3B2568);
  sub_23E3AA150();
  v6 = sub_23E367E08();

  sub_23E3A9ED0();
  sub_23E36AD74(&qword_27E33F8B0, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
  v7 = sub_23E3AAB10();
  if (v7)
  {
    v8 = v7;
    v27 = MEMORY[0x277D84F90];
    sub_23E3AAC30();
    result = sub_23E3AAB00();
    if (v8 < 0)
    {
      goto LABEL_22;
    }

    v21 = a2;
    v24 = v6 + 32;
    v25 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v10 = sub_23E3AAB30();
      v12 = *v11;
      result = v10(v26, 0);
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EF08890](v12, v6);
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        if (v12 >= *(v25 + 16))
        {
          goto LABEL_21;
        }

        v13 = *(v24 + 8 * v12);
      }

      sub_23E3AAC10();
      sub_23E3AAC40();
      sub_23E3AAC50();
      sub_23E3AAC20();
      sub_23E3AAB20();
      if (!--v8)
      {
        (*(v22 + 8))(v5, v23);

        v14 = v27;
        goto LABEL_12;
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_12:
  v15 = sub_23E36B580(v14);
  if (v15)
  {
    v16 = v15;
    result = swift_getObjCClassFromMetadata();
    if (v16 < 1)
    {
      goto LABEL_23;
    }

    v17 = result;
    for (i = 0; i != v16; ++i)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x23EF08890](i, v14);
      }

      else
      {
        v19 = *(v14 + 8 * i + 32);
      }

      v20 = v19;
      [v17 deleteAccount_];
    }
  }
}

void sub_23E36A6C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_23E36A744@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23E3AA370();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F6B0, &unk_23E3B2460);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_23E34A628(v2, &v13 - v9, &qword_27E33F6B0, &unk_23E3B2460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23E36B168(v10, a1);
  }

  sub_23E3AAB50();
  v12 = sub_23E3AA590();
  sub_23E3AA0E0();

  sub_23E3AA360();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_23E36A938@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E3AA280();
  *a1 = result;
  return result;
}

uint64_t sub_23E36A9E4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F6D0, "p>");
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23E36AA8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F6D0, "p>");
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23E36AB18(uint64_t a1)
{
  sub_23E350638(319, &qword_27E33F6F0, 0x277CE87F8);
  if (v1 <= 0x3F)
  {
    sub_23E36AC90();
    if (v2 <= 0x3F)
    {
      sub_23E36ACE0(319);
      if (v3 <= 0x3F)
      {
        sub_23E36ADBC(319, &qword_27E33F710, &qword_27E33F718, &qword_23E3B2558, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_23E36ADBC(319, &qword_27E33F720, &qword_27E33F728, &qword_23E3B2560, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_23E36ADBC(319, &unk_27E33F730, &qword_27E33F6B8, qword_23E3B24A0, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_23E36AC90()
{
  result = qword_27E33F6F8;
  if (!qword_27E33F6F8)
  {
    sub_23E350638(255, &qword_27E33F6C0, 0x277CE87F0);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27E33F6F8);
  }

  return result;
}

void sub_23E36ACE0(uint64_t a1)
{
  if (!qword_27E33F700)
  {
    type metadata accessor for AccountListViewModel();
    sub_23E36AD74(&qword_27E33F708, type metadata accessor for AccountListViewModel, &unk_23E3B2568);
    v1 = sub_23E3AA160();
    if (!v2)
    {
      atomic_store(v1, &qword_27E33F700);
    }
  }
}

uint64_t sub_23E36AD74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23E36ADBC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_23E36AE50()
{
  result = qword_27E33F778;
  if (!qword_27E33F778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F770, &qword_23E3B2620);
    sub_23E34A09C(&qword_27E33F780, &qword_27E33F788, &qword_23E3B2628, MEMORY[0x277CDE5A0]);
    sub_23E34A09C(&qword_27E33F790, &unk_27E33F798, &unk_23E3B2630, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F778);
  }

  return result;
}

uint64_t sub_23E36AF64(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F770, &qword_23E3B2620);
  OUTLINED_FUNCTION_13();
  (*(v2 + 8))(a1);
  return a1;
}

unint64_t sub_23E36AFC4()
{
  result = qword_27E33F7D8;
  if (!qword_27E33F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F7D8);
  }

  return result;
}

uint64_t sub_23E36B028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountManagementView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E36B098(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_23E36B0A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountManagementView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E36B108()
{
  type metadata accessor for AccountManagementView(0);

  return sub_23E36A1E0();
}

uint64_t sub_23E36B168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F718, &qword_23E3B2558);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E36B1FC()
{
  result = qword_27E33F800;
  if (!qword_27E33F800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F7F8, &qword_23E3B26A8);
    sub_23E36B288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F800);
  }

  return result;
}

unint64_t sub_23E36B288()
{
  result = qword_27E33F808;
  if (!qword_27E33F808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F810, &qword_23E3B26B0);
    sub_23E36B340();
    sub_23E34A09C(&qword_27E33F828, &qword_27E33F830, &qword_23E3B26C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F808);
  }

  return result;
}

unint64_t sub_23E36B340()
{
  result = qword_27E33F818;
  if (!qword_27E33F818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F820, &qword_23E3B26B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F818);
  }

  return result;
}

unint64_t sub_23E36B420()
{
  result = qword_27E33F868;
  if (!qword_27E33F868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F860, &qword_23E3B26E0);
    sub_23E36B4AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F868);
  }

  return result;
}

unint64_t sub_23E36B4AC()
{
  result = qword_27E33F870;
  if (!qword_27E33F870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F878, &qword_23E3B26E8);
    sub_23E34A09C(&qword_27E33F880, &qword_27E33F888, &qword_23E3B26F0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F870);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E36B580(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

unint64_t sub_23E36B5A4()
{
  result = qword_27E33F8A8;
  if (!qword_27E33F8A8)
  {
    sub_23E350638(255, &qword_27E33F6C0, 0x277CE87F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F8A8);
  }

  return result;
}

uint64_t objectdestroy_19Tm()
{
  v1 = type metadata accessor for AccountManagementView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  sub_23E36B090(*(v5 + 16), *(v5 + 24));
  v6 = v0 + v3 + v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F6B0, &unk_23E3B2460);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F718, &qword_23E3B2558) + 32);
    sub_23E3AA250();
    OUTLINED_FUNCTION_13();
    (*(v9 + 8))(v6 + v8);
  }

  sub_23E36B098(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void *sub_23E36B788(uint64_t a1)
{
  v3 = *(type metadata accessor for AccountManagementView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23E36A378(a1, v4);
}

uint64_t sub_23E36B7F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E36B858(void *a1)
{
  v1 = [a1 localizedName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23E3AA9D0();

  return v3;
}

_OWORD *sub_23E36B8BC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23E36B8CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E36B90C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F8B8, &qword_23E3B2728);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E36B97C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F740, &qword_23E3B25F0);
  sub_23E3AA560();
  sub_23E34A09C(&unk_27E33F7A8, &qword_27E33F740, &qword_23E3B25F0, MEMORY[0x277CDD978]);
  sub_23E36AD74(&qword_27E33E880, MEMORY[0x277CDE2A0], MEMORY[0x277CDE298]);
  return swift_getOpaqueTypeConformance2();
}

void sub_23E36BA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_23E3AA9B0();
    if (a3)
    {
LABEL_3:
      v7 = sub_23E3A9E30();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_23E36BAFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a2;
  v32 = a3;
  v10 = sub_23E3AA920();
  OUTLINED_FUNCTION_0();
  v35 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E3AA950();
  OUTLINED_FUNCTION_0();
  v33 = v16;
  v34 = v15;
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v5[OBJC_IVAR___WFAskLLMActionUIKitUserInterface_completionHandler];
  v20 = *&v5[OBJC_IVAR___WFAskLLMActionUIKitUserInterface_completionHandler];
  v21 = *(v19 + 1);
  *v19 = a4;
  *(v19 + 1) = a5;

  sub_23E34A688(v20, v21);
  sub_23E350638(0, &qword_27E33F160, 0x277D85C78);
  v22 = sub_23E3AAB60();
  v23 = swift_allocObject();
  v23[2] = v6;
  v23[3] = a1;
  v23[4] = a4;
  v23[5] = a5;
  v24 = v32;
  v23[6] = v31;
  v23[7] = v24;
  aBlock[4] = sub_23E36CFE8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_0_2();
  aBlock[2] = v25;
  aBlock[3] = &block_descriptor_19_0;
  v26 = _Block_copy(aBlock);
  v27 = a1;

  v28 = v6;

  sub_23E3AA940();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E35C7F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F170, &unk_23E3B1610);
  sub_23E35054C();
  sub_23E3AABF0();
  MEMORY[0x23EF08800](0, v18, v14, v26);
  _Block_release(v26);

  (*(v35 + 8))(v14, v10);
  return (*(v33 + 8))(v18, v34);
}

void sub_23E36BDC4(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a4;
  v9 = sub_23E3AA100();
  v65 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F938, &unk_23E3B2940);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v63 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a2)
    {
      v65 = a2;
      sub_23E3716A0(a2, a3, v66);

      v17 = v65;

      return;
    }
  }

  v64 = v9;
  v18 = [a1 attribution];

  sub_23E3A9D50();
  v19 = objc_allocWithZone(type metadata accessor for WFAskLLMActionViewController(0));
  v20 = sub_23E370758(v18, v14);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  aBlock[4] = sub_23E36D030;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E36C650;
  aBlock[3] = &block_descriptor_25;
  v22 = _Block_copy(aBlock);
  v23 = v20;
  v24 = a1;

  [v23 setDismissalHandler_];
  _Block_release(v22);

  *&v23[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_delegate + 8] = &off_28509F870;
  swift_unknownObjectWeakAssign();
  sub_23E3716A0(a2, a3, v66);
  swift_unknownObjectWeakAssign();
  v25 = [v24 delegate];
  if (v25)
  {
    v26 = [v25 viewControllerForPresentingActionUserInterface_];
    swift_unknownObjectRelease();
    if (v26)
    {
      v27 = v23;
      [v26 addChildViewController_];
      v28 = [v26 view];
      if (v28)
      {
        v29 = v28;
        v30 = [v27 view];
        if (v30)
        {
          v31 = v30;
          [v29 addSubview_];

          [v27 didMoveToParentViewController_];
          v32 = [v27 view];

          if (v32)
          {
            [v32 setTranslatesAutoresizingMaskIntoConstraints_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F940, qword_23E3B1D30);
            v33 = swift_allocObject();
            *(v33 + 16) = xmmword_23E3B2730;
            v34 = [v27 view];

            if (v34)
            {
              v35 = [v34 leadingAnchor];

              v36 = [v26 view];
              if (v36)
              {
                v37 = v36;
                v38 = [v36 leadingAnchor];

                v39 = [v35 constraintEqualToAnchor_];
                *(v33 + 32) = v39;
                v40 = [v27 view];

                if (v40)
                {
                  v41 = [v40 trailingAnchor];

                  v42 = [v26 view];
                  if (v42)
                  {
                    v43 = v42;
                    v44 = [v42 trailingAnchor];

                    v45 = [v41 constraintEqualToAnchor_];
                    *(v33 + 40) = v45;
                    v46 = [v27 view];

                    if (v46)
                    {
                      v47 = [v46 topAnchor];

                      v48 = [v26 view];
                      if (v48)
                      {
                        v49 = v48;
                        v50 = [v48 topAnchor];

                        v51 = [v47 constraintEqualToAnchor_];
                        *(v33 + 48) = v51;
                        v52 = [v27 view];

                        if (v52)
                        {
                          v53 = [v52 bottomAnchor];

                          v54 = [v26 view];
                          if (v54)
                          {
                            v55 = v54;
                            v56 = objc_opt_self();
                            v57 = [v55 bottomAnchor];

                            v58 = [v53 constraintEqualToAnchor_];
                            *(v33 + 56) = v58;
                            sub_23E350638(0, &qword_27E33F948, 0x277CCAAD0);
                            v59 = sub_23E3AAA60();

                            [v56 activateConstraints_];

                            return;
                          }

                          goto LABEL_36;
                        }

LABEL_35:
                        __break(1u);
LABEL_36:
                        __break(1u);
                        return;
                      }

LABEL_34:
                      __break(1u);
                      goto LABEL_35;
                    }

LABEL_33:
                    __break(1u);
                    goto LABEL_34;
                  }

LABEL_32:
                  __break(1u);
                  goto LABEL_33;
                }

LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_28;
    }
  }

  sub_23E3AA0D0();
  v60 = sub_23E3AA0F0();
  v61 = sub_23E3AAB40();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_23E342000, v60, v61, "WFAskLLMActionUIKitUserInterface: Cannot get delegate from action user interface, not presenting running UI", v62, 2u);
    MEMORY[0x23EF096F0](v62, -1, -1);
  }

  else
  {
  }

  (*(v65 + 1))(v11, v64);
}

void sub_23E36C5A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5[4] = nullsub_1;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_23E364C0C;
  v5[3] = &block_descriptor_28;
  v4 = _Block_copy(v5);
  [a3 cancelPresentationWithCompletionHandler_];
  _Block_release(v4);
}

uint64_t sub_23E36C650(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_23E3AA9D0();
  v5 = v4;

  v2(v3, v5);
}

void sub_23E36C78C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    v7[2] = v2;
    v7[3] = a1;
    v7[4] = a2;
    OUTLINED_FUNCTION_1_3();
    v11[1] = 1107296256;
    OUTLINED_FUNCTION_0_2();
    v11[2] = v8;
    v11[3] = &block_descriptor_37;
    v9 = _Block_copy(v11);
    v10 = v2;

    [v6 dismissEmbeddedPlatterWithCompletion:v9 interruptible:0];
    _Block_release(v9);
  }
}

void sub_23E36C874(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  aBlock[4] = sub_23E36D0E4;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E364C0C;
  aBlock[3] = &block_descriptor_43;
  v7 = _Block_copy(aBlock);
  v8 = a1;

  v9.receiver = v8;
  v9.super_class = type metadata accessor for AskLLMActionUIKitUserInterface();
  objc_msgSendSuper2(&v9, sel_cancelPresentationWithCompletionHandler_, v7);
  _Block_release(v7);
}

uint64_t sub_23E36C96C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = (a1 + OBJC_IVAR___WFAskLLMActionUIKitUserInterface_completionHandler);
  v4 = *(a1 + OBJC_IVAR___WFAskLLMActionUIKitUserInterface_completionHandler);
  if (v4)
  {
    v5 = v3[1];
    v6 = objc_opt_self();

    v7 = [v6 userCancelledError];
    v4(0, 0, v7);
    sub_23E34A688(v4, v5);

    v8 = *v3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  v10 = sub_23E34A688(v8, v9);
  return a2(v10);
}

void sub_23E36CAC0(uint64_t a1, unint64_t a2)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = &v2[OBJC_IVAR___WFAskLLMActionUIKitUserInterface_completionHandler];
    v7 = *&v2[OBJC_IVAR___WFAskLLMActionUIKitUserInterface_completionHandler];
    if (v7)
    {
      v8 = v6[1];

      v7(a1, a2, 0);
      sub_23E34A688(v7, v8);
      v9 = *v6;
    }

    else
    {
      v9 = 0;
    }

    v16 = v6[1];
    *v6 = 0;
    v6[1] = 0;

    sub_23E34A688(v9, v16);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = swift_allocObject();
      v12[2] = v2;
      v12[3] = a1;
      v12[4] = a2;
      OUTLINED_FUNCTION_1_3();
      v17[1] = 1107296256;
      OUTLINED_FUNCTION_0_2();
      v17[2] = v13;
      v17[3] = &block_descriptor_7;
      v14 = _Block_copy(v17);
      v15 = v2;

      [v11 dismissEmbeddedPlatterWithCompletion:v14 interruptible:0];
      _Block_release(v14);
    }
  }
}

void sub_23E36CC38(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  aBlock[4] = sub_23E36CF8C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E364C0C;
  aBlock[3] = &block_descriptor_13;
  v7 = _Block_copy(aBlock);
  v8 = a1;

  v9.receiver = v8;
  v9.super_class = type metadata accessor for AskLLMActionUIKitUserInterface();
  objc_msgSendSuper2(&v9, sel_cancelPresentationWithCompletionHandler_, v7);
  _Block_release(v7);
}

uint64_t sub_23E36CD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR___WFAskLLMActionUIKitUserInterface_completionHandler);
  v4 = *(a1 + OBJC_IVAR___WFAskLLMActionUIKitUserInterface_completionHandler);
  if (v4)
  {
    v7 = v3[1];

    v4(a2, a3, 0);
    sub_23E34A688(v4, v7);
    v8 = *v3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v3[1];
  *v3 = 0;
  v3[1] = 0;

  return sub_23E34A688(v8, v9);
}

id sub_23E36CDCC(void *a1, void *a2)
{
  v5 = &v2[OBJC_IVAR___WFAskLLMActionUIKitUserInterface_completionHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = v2;
  v8.super_class = type metadata accessor for AskLLMActionUIKitUserInterface();
  v6 = objc_msgSendSuper2(&v8, sel_initWithUserInterfaceType_attribution_, a1, a2);

  if (v6)
  {
  }

  return v6;
}

id sub_23E36CEA8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AskLLMActionUIKitUserInterface();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E36CF98()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23E36CFF8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E36D038()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroyTm_0(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_23E3AAA00(result, a2);
    }

    __break(1u);
  }

  v3 = HIDWORD(result);
  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    v3 = result >> 16;
    if (result >> 16 <= 0x10)
    {
      if (result <= 0x7F)
      {
        v4 = result + 1;
LABEL_9:
        v5 = __clz(v4);
        a2 = 4 - (v5 >> 3);
        v11 = (v4 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (v5 >> 3))));
        result = &v11;
        return sub_23E3AAA00(result, a2);
      }

LABEL_13:
      v6 = (result & 0x3F) << 8;
      v7 = (result >> 6) + v6 + 33217;
      v8 = (v6 | (result >> 6) & 0x3F) << 8;
      v9 = (result >> 18) + ((v8 | (result >> 12) & 0x3F) << 8) - 2122219023;
      v10 = (result >> 12) + v8 + 8487393;
      if (v3)
      {
        v4 = v9;
      }

      else
      {
        v4 = v10;
      }

      if (result < 0x800)
      {
        v4 = v7;
      }

      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v1 = qword_27E33F950;

  return v1;
}

id sub_23E36D2A4()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27E33F950 = result;
  return result;
}

void sub_23E36D330(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_23E3A9E30();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id sub_23E36D3A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_23E3AA920();
  OUTLINED_FUNCTION_0();
  v28 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E3AA950();
  OUTLINED_FUNCTION_0();
  v26 = v11;
  v27 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v15 = result;
    v16 = sub_23E3AA9D0();
    sub_23E34E5A0(v16, v17, v15, &selRef_setOAuthConsumerKey_);
    v18 = sub_23E3AA9D0();
    sub_23E34E5A0(v18, v19, v15, &selRef_setOAuthConsumerSecret_);
    sub_23E350638(0, &qword_27E33F160, 0x277D85C78);
    v20 = sub_23E3AAB60();
    v21 = swift_allocObject();
    v21[2] = v2;
    v21[3] = v15;
    v21[4] = a1;
    v21[5] = a2;
    aBlock[4] = sub_23E36F5E8;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23E364C0C;
    aBlock[3] = &block_descriptor_8;
    v22 = _Block_copy(aBlock);
    v23 = v2;
    v24 = v15;

    sub_23E3AA940();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23E36F64C(&qword_27E33EAD0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F170, &unk_23E3B1610);
    sub_23E34A09C(&qword_27E33EAE0, &unk_27E33F170, &unk_23E3B1610, MEMORY[0x277D83970]);
    sub_23E3AABF0();
    MEMORY[0x23EF08800](0, v13, v9, v22);
    _Block_release(v22);

    (*(v28 + 8))(v9, v5);
    return (*(v26 + 8))(v13, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23E36D704(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20[1] = a1;
  v7 = type metadata accessor for TumblrWebView.LoadingState(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - v11;
  v13 = type metadata accessor for TumblrWebView(0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v15 = a2;
  v15[1] = 0x726C626D75746677;
  v15[2] = 0xE800000000000000;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F9B8, "lG");
  __swift_storeEnumTagSinglePayload(v12, 1, 2, v16);
  sub_23E36FB1C(v12, v10, type metadata accessor for TumblrWebView.LoadingState);
  v17 = a2;
  sub_23E3AA7B0();
  sub_23E36F694(v12, type metadata accessor for TumblrWebView.LoadingState);
  v18 = (v15 + *(v13 + 28));
  *v18 = a3;
  v18[1] = a4;
  sub_23E36F64C(&qword_27E33F9C0, type metadata accessor for TumblrWebView, &unk_23E3B27D4);

  sub_23E3AAB90();
  return sub_23E36F694(v15, type metadata accessor for TumblrWebView);
}

id sub_23E36D9A4(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for WFTumblrAccessResourceUserInterface();
  v5 = objc_msgSendSuper2(&v7, sel_initWithUserInterfaceType_attribution_, a1, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_23E36DA5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFTumblrAccessResourceUserInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_23E36DAB4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TumblrWebView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  sub_23E3AAA00("Log in to Tumblr", 16);
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v10 = qword_27E33F950;
  v11 = sub_23E3AA9B0();
  v12 = sub_23E3AA9B0();

  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v22 = sub_23E3AA9D0();
  v15 = v14;

  sub_23E36FB1C(v1, v9, type metadata accessor for TumblrWebView);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_23E36FB80(v9, v17 + v16);
  sub_23E36FB1C(v1, v7, type metadata accessor for TumblrWebView);
  v18 = swift_allocObject();
  sub_23E36FB80(v7, v18 + v16);
  v23 = 0;
  result = sub_23E3AA7B0();
  v20 = v24;
  v21 = v25;
  *a1 = v22;
  *(a1 + 8) = v15;
  *(a1 + 16) = 257;
  *(a1 + 24) = sub_23E36FBE4;
  *(a1 + 32) = v17;
  *(a1 + 40) = sub_23E36FD78;
  *(a1 + 48) = v18;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v20;
  *(a1 + 80) = v21;
  return result;
}

uint64_t sub_23E36DD34@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v48 = type metadata accessor for WebView(0);
  MEMORY[0x28223BE20](v48);
  v40 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_23E3A9E90();
  v39 = *(v41 - 8);
  v2 = MEMORY[0x28223BE20](v41);
  v37 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v38 = &v37 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EED0, &unk_23E3B19D8);
  MEMORY[0x28223BE20](v45);
  v46 = &v37 - v5;
  v6 = type metadata accessor for TumblrWebView(0);
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F4D0, &qword_23E3B1490);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EEE0, &qword_23E3B19E8);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33FA20, &qword_23E3B19F0);
  v15 = MEMORY[0x28223BE20](v44);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = type metadata accessor for TumblrWebView.LoadingState(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F9C8, "pG");
  sub_23E3AA7C0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F9B8, "lG");
  if (__swift_getEnumTagSinglePayload(v22, 2, v23))
  {
    sub_23E3AA180();
    sub_23E3AA8E0();
    sub_23E3AA270();
    (*(v9 + 32))(v14, v11, v8);
    memcpy(&v14[*(v12 + 36)], __src, 0x70uLL);
    v24 = v43;
    sub_23E36FB1C(v49, v43, type metadata accessor for TumblrWebView);
    v25 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v26 = swift_allocObject();
    sub_23E36FB80(v24, v26 + v25);
    sub_23E35449C(v14, v17, &unk_27E33EEE0, &qword_23E3B19E8);
    v27 = &v17[*(v44 + 36)];
    *v27 = sub_23E36FE5C;
    v27[1] = v26;
    v27[2] = 0;
    v27[3] = 0;
    sub_23E35449C(v17, v19, &unk_27E33FA20, &qword_23E3B19F0);
    sub_23E3544EC(v19, v46, &unk_27E33FA20, &qword_23E3B19F0);
    swift_storeEnumTagMultiPayload();
    sub_23E35727C();
    sub_23E36F64C(&qword_27E33FA40, type metadata accessor for WebView, &unk_23E3B1A4C);
    sub_23E3AA480();
    return sub_23E34A698(v19, &unk_27E33FA20, &qword_23E3B19F0);
  }

  else
  {
    v29 = v39;
    v30 = v38;
    v31 = v41;
    (*(v39 + 32))(v38, v22, v41);
    (*(v29 + 16))(v37, v30, v31);
    v32 = v40;
    sub_23E3A9D90();
    v33 = v43;
    sub_23E36FB1C(v49, v43, type metadata accessor for TumblrWebView);
    v34 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v35 = swift_allocObject();
    sub_23E36FB80(v33, v35 + v34);
    v36 = (v32 + *(v48 + 20));
    *v36 = &unk_23E3B2830;
    v36[1] = v35;
    sub_23E36FB1C(v32, v46, type metadata accessor for WebView);
    swift_storeEnumTagMultiPayload();
    sub_23E35727C();
    sub_23E36F64C(&qword_27E33FA40, type metadata accessor for WebView, &unk_23E3B1A4C);
    sub_23E3AA480();
    sub_23E36F694(v32, type metadata accessor for WebView);
    return (*(v29 + 8))(v30, v31);
  }
}

uint64_t sub_23E36E504(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB38, &qword_23E3B16C0);
  v2[4] = swift_task_alloc();
  v3 = sub_23E3A9DB0();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_23E3A9E90();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_23E3AAAC0();
  v2[11] = sub_23E3AAAB0();
  v6 = sub_23E3AAA80();

  return MEMORY[0x2822009F8](sub_23E36E68C, v6, v5);
}

uint64_t sub_23E36E68C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[2];

  v7 = [v6 request];
  sub_23E3A9D80();

  sub_23E3A9DA0();
  (*(v4 + 8))(v2, v3);
  if (__swift_getEnumTagSinglePayload(v5, 1, v1) == 1)
  {
    sub_23E34A698(v0[4], &qword_27E33EB38, &qword_23E3B16C0);
LABEL_10:
    v13 = 1;
    goto LABEL_13;
  }

  v8 = v0[3];
  (*(v0[9] + 32))(v0[10], v0[4], v0[8]);
  v9 = sub_23E3A9E70();
  if (!v10)
  {
LABEL_9:
    (*(v0[9] + 8))(v0[10], v0[8]);
    goto LABEL_10;
  }

  if (v9 == *(v8 + 8) && v10 == *(v8 + 16))
  {
  }

  else
  {
    v12 = sub_23E3AACA0();

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v15 = v0[9];
  v14 = v0[10];
  v16 = v0[8];
  v17 = *v0[3];
  v18 = sub_23E3A9E50();
  [v17 handleOpenURL_];

  (*(v15 + 8))(v14, v16);
  v13 = 0;
LABEL_13:

  v19 = v0[1];

  return v19(v13);
}

void sub_23E36E878(id *a1)
{
  v2 = type metadata accessor for TumblrWebView(0);
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = type metadata accessor for TumblrWebView.LoadingState(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F9C8, "pG");
  sub_23E3AA7C0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F9B8, "lG");
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 2, v13);
  sub_23E36F694(v12, type metadata accessor for TumblrWebView.LoadingState);
  if (EnumTagSinglePayload == 1)
  {
    __swift_storeEnumTagSinglePayload(v10, 2, 2, v13);
    sub_23E36FB1C(v10, v7, type metadata accessor for TumblrWebView.LoadingState);
    sub_23E3AA7D0();
    sub_23E36F694(v10, type metadata accessor for TumblrWebView.LoadingState);
    v21 = *a1;
    v15 = sub_23E3AA9B0();
    sub_23E36FB1C(a1, &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TumblrWebView);
    v16 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v17 = swift_allocObject();
    sub_23E36FB80(&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    v27 = sub_23E36FED8;
    v28 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_23E36F318;
    v26 = &block_descriptor_33_0;
    v18 = _Block_copy(&aBlock);

    sub_23E36FB1C(a1, &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TumblrWebView);
    v19 = swift_allocObject();
    sub_23E36FB80(&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v16);
    v27 = sub_23E36FF38;
    v28 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_23E36F4CC;
    v26 = &block_descriptor_39_0;
    v20 = _Block_copy(&aBlock);

    [v21 authenticate:v15 urlBlock:v18 callback:v20];
    _Block_release(v20);
    _Block_release(v18);
  }
}

uint64_t sub_23E36EC24(void *a1, uint64_t a2)
{
  v31 = a2;
  v38 = a1;
  v2 = sub_23E3AA920();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v34 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_23E3AA950();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TumblrWebView(0);
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB38, &qword_23E3B16C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_23E3A9E90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  sub_23E3544EC(v38, v9, &qword_27E33EB38, &qword_23E3B16C0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return sub_23E34A698(v9, &qword_27E33EB38, &qword_23E3B16C0);
  }

  v28 = *(v11 + 32);
  v29 = v15;
  v28(v15, v9);
  sub_23E350638(0, &qword_27E33F160, 0x277D85C78);
  v38 = sub_23E3AAB60();
  v17 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E36FB1C(v31, v18, type metadata accessor for TumblrWebView);
  (*(v11 + 16))(v17, v15, v10);
  v19 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v20 = (v6 + *(v11 + 80) + v19) & ~*(v11 + 80);
  v21 = swift_allocObject();
  sub_23E36FB80(v18, v21 + v19);
  (v28)(v21 + v20, v17, v10);
  aBlock[4] = sub_23E37022C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E364C0C;
  aBlock[3] = &block_descriptor_45;
  v22 = _Block_copy(aBlock);

  v23 = v32;
  sub_23E3AA940();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E36F64C(&qword_27E33EAD0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F170, &unk_23E3B1610);
  sub_23E34A09C(&qword_27E33EAE0, &unk_27E33F170, &unk_23E3B1610, MEMORY[0x277D83970]);
  v24 = v34;
  v25 = v37;
  sub_23E3AABF0();
  v26 = v38;
  MEMORY[0x23EF08800](0, v23, v24, v22);
  _Block_release(v22);

  (*(v36 + 8))(v24, v25);
  (*(v33 + 8))(v23, v35);
  return (*(v11 + 8))(v29, v10);
}

uint64_t sub_23E36F1B8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TumblrWebView.LoadingState(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = sub_23E3A9E90();
  (*(*(v9 - 8) + 16))(v8, a2, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F9B8, "lG");
  __swift_storeEnumTagSinglePayload(v8, 0, 2, v10);
  type metadata accessor for TumblrWebView(0);
  sub_23E36FB1C(v8, v6, type metadata accessor for TumblrWebView.LoadingState);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F9C8, "pG");
  sub_23E3AA7D0();
  return sub_23E36F694(v8, type metadata accessor for TumblrWebView.LoadingState);
}

uint64_t sub_23E36F318(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB38, &qword_23E3B16C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_23E3A9E60();
    v8 = sub_23E3A9E90();
    v9 = 0;
  }

  else
  {
    v8 = sub_23E3A9E90();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v9, 1, v8);

  v7(v6);

  return sub_23E34A698(v6, &qword_27E33EB38, &qword_23E3B16C0);
}

uint64_t sub_23E36F40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 && a4)
  {
    v12 = objc_opt_self();
    sub_23E36FFC8(a1, a2, v12);
    sub_23E370020(a3, a4, v12);
    v13 = *(a6 + *(type metadata accessor for TumblrWebView(0) + 28));
    return v13(1, 0);
  }

  else
  {
    v15 = *(a6 + *(type metadata accessor for TumblrWebView(0) + 28));
    return v15(0, a5);
  }
}

uint64_t sub_23E36F4CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_23E3AA9D0();
    v9 = v8;
    if (v5)
    {
LABEL_3:
      v10 = sub_23E3AA9D0();
      v5 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:

  v12 = a4;
  v6(v7, v9, v10, v5, a4);
}

uint64_t sub_23E36F5A0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E36F64C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23E36F694(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23E36F6EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E36F738(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F9C8, "pG");
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23E36F7E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F9C8, "pG");
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23E36F86C(uint64_t a1)
{
  sub_23E350638(319, &qword_27E33F9E8, 0x277CE87E8);
  if (v1 <= 0x3F)
  {
    sub_23E36F920(319);
    if (v2 <= 0x3F)
    {
      sub_23E3496A8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23E36F920(uint64_t a1)
{
  if (!qword_27E33F9F0)
  {
    type metadata accessor for TumblrWebView.LoadingState(255);
    v1 = sub_23E3AA7F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E33F9F0);
    }
  }
}

uint64_t sub_23E36F98C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F9B8, "lG");
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23E36F9F4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F9B8, "lG");

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_23E36FA60(uint64_t a1)
{
  sub_23E36FAB8();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_23E36FAB8()
{
  if (!qword_27E33FA10)
  {
    v0 = sub_23E3A9E90();
    if (!v1)
    {
      atomic_store(v0, &qword_27E33FA10);
    }
  }
}

uint64_t sub_23E36FB1C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23E36FB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TumblrWebView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E36FBE4@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_3_2();
  return sub_23E36DD34(a1);
}

uint64_t objectdestroy_16Tm_0()
{
  type metadata accessor for TumblrWebView(0);
  OUTLINED_FUNCTION_2_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);

  v7 = v1 + v4 + *(v0 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F9B8, "lG");
  if (!__swift_getEnumTagSinglePayload(v7, 2, v8))
  {
    sub_23E3A9E90();
    OUTLINED_FUNCTION_13();
    (*(v9 + 8))(v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F9C8, "pG");

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_23E36FD90(uint64_t a1)
{
  OUTLINED_FUNCTION_1_4();
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E357180;

  return sub_23E36E504(a1, v1 + v5);
}

uint64_t sub_23E36FE74(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_3_2();

  return a1(v1 + v2);
}

uint64_t sub_23E36FED8(void *a1)
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_3_2();

  return sub_23E36EC24(a1, v1 + v3);
}

uint64_t sub_23E36FF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_3_2();

  return sub_23E36F40C(a1, a2, a3, a4, a5, v5 + v11);
}

void sub_23E36FFC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23E3AA9B0();
  [a3 setTumblrOAuthToken_];
}

void sub_23E370020(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23E3AA9B0();
  [a3 setTumblrOAuthTokenSecret_];
}

uint64_t sub_23E370078()
{
  type metadata accessor for TumblrWebView(0);
  OUTLINED_FUNCTION_2_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_23E3A9E90();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v10 = *(v8 + 80);
  v17 = *(v11 + 64);

  v12 = v1 + v4 + *(v0 + 24);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F9B8, "lG");
  if (!__swift_getEnumTagSinglePayload(v12, 2, v13))
  {
    (*(v9 + 8))(v12, v7);
  }

  v14 = v3 | v10;
  v15 = (v4 + v6 + v10) & ~v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F9C8, "pG");

  (*(v9 + 8))(v1 + v15, v7);

  return MEMORY[0x2821FE8E8](v1, v15 + v17, v14 | 7);
}

uint64_t sub_23E37022C()
{
  v1 = *(type metadata accessor for TumblrWebView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_23E3A9E90() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_23E36F1B8(v0 + v2, v5);
}

id sub_23E37038C()
{
  v1 = v0;
  v2 = sub_23E3A9D60();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33FA98, &qword_23E3B2938);
  MEMORY[0x28223BE20](v9);
  v11 = &v32[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F938, &unk_23E3B2940);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v32[-v16];
  v18 = OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView;
  v19 = *(v1 + OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView);
  if (!v19)
  {
    v21 = OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_model;
    (*(v4 + 104))(&v32[-v16], *MEMORY[0x277CFC140], v2);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v2);
    v22 = *(v9 + 48);
    sub_23E3724F0(v1 + v21, v11);
    sub_23E3724F0(v17, &v11[v22]);
    OUTLINED_FUNCTION_2_4(v11);
    if (v23)
    {
      sub_23E3591BC(v17, &qword_27E33F938, &unk_23E3B2940);
      OUTLINED_FUNCTION_2_4(&v11[v22]);
      if (v23)
      {
        OUTLINED_FUNCTION_8_1();
        sub_23E3591BC(v11, &qword_27E33F938, &unk_23E3B2940);
LABEL_15:
        v27 = objc_allocWithZone(sub_23E3AA040());
        v28 = sub_23E3A9FF0();
        v29 = *(v1 + v18);
        *(v1 + v18) = v28;
        v20 = v28;

        v19 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      sub_23E3724F0(v11, v15);
      OUTLINED_FUNCTION_2_4(&v11[v22]);
      if (!v23)
      {
        (*(v4 + 32))(v8, &v11[v22], v2);
        OUTLINED_FUNCTION_5_0();
        sub_23E3725E0(v24, v25, MEMORY[0x277CFC158]);
        v33 = sub_23E3AA9A0();
        v26 = *(v4 + 8);
        v26(v8, v2);
        sub_23E3591BC(v17, &qword_27E33F938, &unk_23E3B2940);
        v26(v15, v2);
        sub_23E3591BC(v11, &qword_27E33F938, &unk_23E3B2940);
        if (v33)
        {
          OUTLINED_FUNCTION_8_1();
        }

        goto LABEL_15;
      }

      sub_23E3591BC(v17, &qword_27E33F938, &unk_23E3B2940);
      (*(v4 + 8))(v15, v2);
    }

    sub_23E3591BC(v11, &qword_27E33FA98, &qword_23E3B2938);
    goto LABEL_15;
  }

  v20 = *(v1 + OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView);
LABEL_16:
  v30 = v19;
  return v20;
}

id sub_23E370758(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView] = 0;
  v5 = &v2[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_completionHandler];
  *v5 = 0;
  v5[1] = 0;
  v2[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_isDismissing] = 0;
  v6 = &v2[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_viewDidLoadHandler];
  *v6 = 0;
  v6[1] = 0;
  *&v2[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_attribution] = a1;
  sub_23E3724F0(a2, &v2[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_model]);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for WFAskLLMActionViewController(0);
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  sub_23E3591BC(a2, &qword_27E33F938, &unk_23E3B2940);
  return v7;
}

id sub_23E370840()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for WFAskLLMActionViewController(0);
  result = objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_viewDidLoadHandler];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_viewDidLoadHandler + 8];

    v2(v4);
    return sub_23E34A688(v2, v3);
  }

  return result;
}

uint64_t sub_23E3708FC(char a1)
{
  v2 = v1;
  v4 = sub_23E3AA920();
  OUTLINED_FUNCTION_0();
  v75 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v74 = v8 - v7;
  sub_23E3AA950();
  OUTLINED_FUNCTION_0();
  v72 = v10;
  v73 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v71 = v12 - v11;
  v70 = sub_23E3AA050();
  OUTLINED_FUNCTION_0();
  v68 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v69 = (v16 - v15);
  v17 = sub_23E3A9D60();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33FA98, &qword_23E3B2938);
  v25 = v24 - 8;
  MEMORY[0x28223BE20](v24);
  v27 = &v66[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F938, &unk_23E3B2940);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v66[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  v33 = &v66[-v32];
  v34 = type metadata accessor for WFAskLLMActionViewController(0);
  v77.receiver = v2;
  v77.super_class = v34;
  objc_msgSendSuper2(&v77, sel_viewDidAppear_, a1 & 1);
  v35 = OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_model;
  (*(v19 + 104))(v33, *MEMORY[0x277CFC140], v17);
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v17);
  v36 = *(v25 + 56);
  sub_23E3724F0(&v2[v35], v27);
  sub_23E3724F0(v33, &v27[v36]);
  OUTLINED_FUNCTION_2_4(v27);
  if (v37)
  {
    sub_23E3591BC(v33, &qword_27E33F938, &unk_23E3B2940);
    OUTLINED_FUNCTION_2_4(&v27[v36]);
    if (v37)
    {
      sub_23E3591BC(v27, &qword_27E33F938, &unk_23E3B2940);
LABEL_14:
      v48 = sub_23E37038C();
      sub_23E3AAA00("Ask ChatGPT…", 14);
      if (qword_27E33E560 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_27E33E560);
      }

      v49 = OUTLINED_FUNCTION_11_0();
      v50 = OUTLINED_FUNCTION_11_0();

      v52 = OUTLINED_FUNCTION_10_0(v51, sel_localizedStringForKey_value_table_);

      sub_23E3AA9D0();
      sub_23E3A9FC0();

      v53 = *&v2[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView];
      v54 = objc_opt_self();
      v44 = v53;
      v55 = [v54 labelColor];
      v56 = v68;
      v57 = v69;
      *v69 = v55;
      (*(v56 + 104))(v57, *MEMORY[0x277D7D678], v70);
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  sub_23E3724F0(v27, v31);
  OUTLINED_FUNCTION_2_4(&v27[v36]);
  if (v37)
  {
    sub_23E3591BC(v33, &qword_27E33F938, &unk_23E3B2940);
    (*(v19 + 8))(v31, v17);
LABEL_9:
    sub_23E3591BC(v27, &qword_27E33FA98, &qword_23E3B2938);
    goto LABEL_10;
  }

  (*(v19 + 32))(v23, &v27[v36], v17);
  OUTLINED_FUNCTION_5_0();
  sub_23E3725E0(v45, v46, MEMORY[0x277CFC158]);
  v67 = sub_23E3AA9A0();
  v47 = *(v19 + 8);
  v47(v23, v17);
  sub_23E3591BC(v33, &qword_27E33F938, &unk_23E3B2940);
  v47(v31, v17);
  sub_23E3591BC(v27, &qword_27E33F938, &unk_23E3B2940);
  if (v67)
  {
    goto LABEL_14;
  }

LABEL_10:
  v38 = sub_23E37038C();
  sub_23E3AAA00("Ask…", 6);
  if (qword_27E33E560 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_27E33E560);
  }

  v39 = OUTLINED_FUNCTION_11_0();
  v40 = OUTLINED_FUNCTION_11_0();

  v42 = OUTLINED_FUNCTION_10_0(v41, sel_localizedStringForKey_value_table_);

  sub_23E3AA9D0();
  sub_23E3A9FC0();

  v43 = *&v2[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView];
  (*(v68 + 104))(v69, *MEMORY[0x277D7D670], v70);
  v44 = v43;
LABEL_17:
  sub_23E3A9FD0();

  sub_23E350638(0, &qword_27E33F160, 0x277D85C78);
  v58 = sub_23E3AAB60();
  OUTLINED_FUNCTION_0_0();
  v59 = swift_allocObject();
  *(v59 + 16) = v2;
  aBlock[4] = sub_23E3725D8;
  aBlock[5] = v59;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_0_2();
  aBlock[2] = v60;
  aBlock[3] = &block_descriptor_36;
  v61 = _Block_copy(aBlock);
  v62 = v2;

  v63 = v71;
  sub_23E3AA940();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E3725E0(&qword_27E33EAD0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F170, &unk_23E3B1610);
  sub_23E35054C();
  v64 = v74;
  sub_23E3AABF0();
  MEMORY[0x23EF08800](0, v63, v64, v61);
  _Block_release(v61);

  (*(v75 + 8))(v64, v4);
  return (*(v72 + 8))(v63, v73);
}

void sub_23E371120(char *a1)
{
  v2 = sub_23E37038C();
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  v3 = OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView;
  v4 = *&a1[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView];
  sub_23E3725E0(&qword_27E33FAA8, type metadata accessor for WFAskLLMActionViewController, &unk_23E3B28EC);
  v5 = a1;
  v6 = v4;
  sub_23E3AA020();

  v7 = [v5 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  [v7 addSubview_];

  [v5 platterContentSize];
  v10 = v9;
  v11 = [MEMORY[0x277D75418] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F940, qword_23E3B1D30);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_23E3B2850;
  v14 = [*&a1[v3] centerXAnchor];
  v15 = [v5 view];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  v17 = [v15 centerXAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v13 + 32) = v18;
  v19 = [*&a1[v3] leadingAnchor];
  v20 = [v5 view];
  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintGreaterThanOrEqualToAnchor:v22 constant:8.0];
  *(v13 + 40) = v23;
  v24 = [*&a1[v3] trailingAnchor];
  v25 = [v5 view];
  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = v25;
  v27 = [v25 trailingAnchor];

  v28 = [v24 constraintLessThanOrEqualToAnchor:v27 constant:-8.0];
  *(v13 + 48) = v28;
  v29 = [*&a1[v3] bottomAnchor];
  v30 = [v5 view];
  if (!v30)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = [v29 constraintLessThanOrEqualToAnchor_];
  *(v13 + 56) = v33;
  v34 = [*&a1[v3] widthAnchor];
  v35 = [v34 constraintEqualToConstant_];

  *(v13 + 64) = v35;
  v36 = [v5 view];
  if (!v36)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v37 = v36;
  if ((v12 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v38 = 12.0;
  }

  else
  {
    v38 = 0.0;
  }

  v39 = objc_opt_self();
  v40 = [v37 keyboardLayoutGuide];

  v41 = [v40 topAnchor];
  v42 = [*&a1[v3] bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:v38];

  *(v13 + 72) = v43;
  sub_23E350638(0, &qword_27E33F948, 0x277CCAAD0);
  v44 = sub_23E3AAA60();

  [v39 activateConstraints_];

  v45 = *&a1[v3];
  v46 = sub_23E3A9FA0();

  [v46 becomeFirstResponder];
  v47 = *&a1[v3];
  sub_23E3AA030();
}

void sub_23E3716A0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = &v4[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_completionHandler];
  v9 = *&v4[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_completionHandler];
  v10 = *&v4[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_completionHandler + 8];
  *v8 = a2;
  *(v8 + 1) = a3;

  sub_23E34A688(v9, v10);
  if (a1)
  {
    v11 = a1;
    v12 = sub_23E37038C();
    sub_23E3AA030();

    v13 = OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView;
    v14 = *&v4[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView];
    sub_23E3AA010();

    v15 = *&v4[v13];
    sub_23E3A9FB0();

    v16 = *&v4[v13];
    sub_23E3AA000();

    v17 = *&v4[v13];
    sub_23E3A9FE0();

    if ([v4 isViewLoaded])
    {
      v18 = [objc_allocWithZone(WFAskLLMResponseViewController) init];
      v19 = swift_allocObject();
      *(v19 + 16) = v4;
      *(v19 + 24) = v18;
      v33 = sub_23E3724C8;
      v34 = v19;
      v29 = MEMORY[0x277D85DD0];
      v30 = 1107296256;
      OUTLINED_FUNCTION_0_2();
      v31 = v20;
      v32 = &block_descriptor_9;
      v21 = _Block_copy(&v29);
      v22 = v4;
      v23 = v18;

      [v23 updateContent:v11 withCompletionHandler:{v21, v29, v30}];

      _Block_release(v21);
    }

    else
    {
      v24 = swift_allocObject();
      *(v24 + 2) = v4;
      *(v24 + 3) = v11;
      *(v24 + 4) = a2;
      *(v24 + 5) = a3;
      v25 = &v4[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_viewDidLoadHandler];
      v26 = *&v4[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_viewDidLoadHandler];
      v27 = *&v4[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_viewDidLoadHandler + 8];
      *v25 = sub_23E37245C;
      v25[1] = v24;

      v28 = v4;

      sub_23E34A688(v26, v27);
    }
  }
}

void sub_23E3718F4(void (*a1)(), uint64_t a2, char a3)
{
  v3[OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_isDismissing] = 1;
  v7 = objc_opt_self();
  OUTLINED_FUNCTION_0_0();
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v17 = sub_23E3725D0;
  v18 = v8;
  OUTLINED_FUNCTION_7_1();
  v14 = 1107296256;
  v15 = sub_23E364C0C;
  v16 = &block_descriptor_27;
  v9 = _Block_copy(aBlock);
  v10 = v3;

  [v7 animateWithDuration:v9 animations:0.2];
  _Block_release(v9);
  v17 = a1;
  v18 = a2;
  OUTLINED_FUNCTION_7_1();
  v14 = 1107296256;
  v15 = sub_23E364C0C;
  v16 = &block_descriptor_30;
  v11 = _Block_copy(aBlock);

  v12.receiver = v10;
  v12.super_class = type metadata accessor for WFAskLLMActionViewController(0);
  objc_msgSendSuper2(&v12, sel_dismissEmbeddedPlatterWithCompletion_interruptible_, v11, a3 & 1);
  _Block_release(v11);
}

void sub_23E371A78()
{
  v0 = sub_23E37038C();
  [v0 setAlpha_];
}

double sub_23E371B60()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for WFAskLLMActionViewController(0);
  objc_msgSendSuper2(&v13, sel_platterContentSize);
  v2 = v1;
  v3 = sub_23E37038C();
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v14.origin.x = v5;
  v14.origin.y = v7;
  v14.size.width = v9;
  v14.size.height = v11;
  CGRectGetMaxY(v14);
  [v0 platterOffsetFromPresentationEdge];
  return v2;
}

void sub_23E371CB4()
{
  *(v0 + OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_completionHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_isDismissing) = 0;
  v2 = (v0 + OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController_viewDidLoadHandler);
  *v2 = 0;
  v2[1] = 0;
  sub_23E3AAC60();
  __break(1u);
}

id sub_23E371DD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFAskLLMActionViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WFAskLLMActionViewController(uint64_t a1)
{
  result = qword_27E33FA80;
  if (!qword_27E33FA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23E371F00(uint64_t a1)
{
  sub_23E371FBC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23E371FBC(uint64_t a1)
{
  if (!qword_27E33FA90)
  {
    sub_23E3A9D60();
    v1 = sub_23E3AABB0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E33FA90);
    }
  }
}

uint64_t sub_23E372014()
{
  v1 = v0;
  v2 = sub_23E3AAAF0();
  v3 = sub_23E37038C();
  v4 = sub_23E3A9FA0();

  [v4 setKeyboardAppearance_];
  result = [v1 view];
  if (result)
  {
    v6 = result;
    v7 = [result keyboardLayoutGuide];

    [v7 useLightEffectsBackgroundBelowView_];
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23E3720D8()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 keyboardLayoutGuide];

    [v3 removeLightEffectsView];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23E372160()
{
  v1 = v0;
  v2 = sub_23E37038C();
  v3 = sub_23E3A9FA0();

  v5 = sub_23E3723A4(v3);
  v6 = v4;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (v6)
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    sub_23E36CAC0(v10, v7);
  }

  else
  {
  }

  v11 = *(v1 + OBJC_IVAR____TtC11ActionKitUI28WFAskLLMActionViewController____lazy_storage___promptView);
  sub_23E3AAA00("Follow up…", 12);
  if (qword_27E33E560 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_27E33E560);
  }

  v12 = qword_27E33F950;
  v13 = sub_23E3AA9B0();
  v14 = sub_23E3AA9B0();

  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  sub_23E3AA9D0();
  sub_23E3A9FC0();

  sub_23E3AA000();
  sub_23E3A9FE0();
  return sub_23E3AA010();
}

void sub_23E3722F0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v1 = sub_23E3A9FA0();
    v2 = sub_23E3723A4(v1);
    if (v3)
    {
      sub_23E36CAC0(v2, v3);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_23E3723A4(void *a1)
{
  v2 = [a1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23E3AA9D0();

  return v3;
}

uint64_t sub_23E372414()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23E372488()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E3724F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F938, &unk_23E3B2940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E372560()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_23E37259C()
{
  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_23E3725E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_10_0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_23E3AA9B0();
}

uint64_t sub_23E3727E0()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, sel_layer);
  objc_opt_self();
  return swift_dynamicCastObjCClassUnconditional();
}

id sub_23E372850(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_23E3728DC(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_23E372970()
{
  v0 = type metadata accessor for WFShazamMediaActionView.ListeningView();
  v4.receiver = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4.super_class = v0;
  v1 = v4.receiver;
  v2 = objc_msgSendSuper2(&v4, sel_layer);
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() startActiveListeningAnimation];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  return v1;
}

id WFShazamMediaActionView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *WFShazamMediaActionView.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___WFShazamMediaActionView_listeningView;
  *&v0[v2] = sub_23E372970();
  v3 = OBJC_IVAR___WFShazamMediaActionView_label;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_23E3AAA00("Listening", 9);
  if (qword_27E33E560 != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v5 = qword_27E33F950;
  v6 = sub_23E3AA9B0();
  v7 = sub_23E3AA9B0();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = sub_23E3AA9D0();
  v11 = v10;

  sub_23E373374(v9, v11, v4);
  v12 = [objc_opt_self() boldSystemFontOfSize_];
  [v4 setFont_];

  v13 = [objc_opt_self() labelColor];
  [v4 setTextColor_];

  [v4 setTextAlignment_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v3] = v4;
  v44.receiver = v0;
  v44.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v44, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = OBJC_IVAR___WFShazamMediaActionView_listeningView;
  v16 = *&v14[OBJC_IVAR___WFShazamMediaActionView_listeningView];
  v17 = v14;
  [v17 addSubview_];
  v18 = OBJC_IVAR___WFShazamMediaActionView_label;
  [v17 addSubview_];
  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F940, qword_23E3B1D30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23E3B2950;
  v21 = [*&v14[v15] widthAnchor];
  v22 = [v21 constraintEqualToConstant_];

  *(v20 + 32) = v22;
  v23 = [*&v14[v15] heightAnchor];
  v24 = [v23 constraintEqualToConstant_];

  *(v20 + 40) = v24;
  v25 = [*&v14[v15] centerXAnchor];
  v26 = [v17 centerXAnchor];

  v27 = [v25 constraintEqualToAnchor_];
  *(v20 + 48) = v27;
  v28 = [*&v14[v15] centerYAnchor];
  v29 = [v17 centerYAnchor];

  v30 = [v28 constraintEqualToAnchor_];
  *(v20 + 56) = v30;
  v31 = [*&v17[v18] leadingAnchor];
  v32 = [v17 layoutMarginsGuide];

  v33 = [v32 leadingAnchor];
  v34 = [v31 constraintEqualToAnchor_];

  *(v20 + 64) = v34;
  v35 = [*&v17[v18] trailingAnchor];
  v36 = [v17 layoutMarginsGuide];

  v37 = [v36 trailingAnchor];
  v38 = [v35 constraintEqualToAnchor_];

  *(v20 + 72) = v38;
  v39 = [*&v17[v18] centerYAnchor];
  v40 = [v17 centerYAnchor];

  v41 = [v39 constraintEqualToAnchor:v40 constant:72.0];
  *(v20 + 80) = v41;
  sub_23E350638(0, &qword_27E33F948, 0x277CCAAD0);
  v42 = sub_23E3AAA60();

  [v19 activateConstraints_];

  return v17;
}

void sub_23E373030()
{
  v1 = OBJC_IVAR___WFShazamMediaActionView_listeningView;
  *(v0 + v1) = sub_23E372970();
  v2 = OBJC_IVAR___WFShazamMediaActionView_label;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_23E3AAA00("Listening", 9);
  if (qword_27E33E560 != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v4 = qword_27E33F950;
  v5 = sub_23E3AA9B0();
  v6 = sub_23E3AA9B0();

  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  v8 = sub_23E3AA9D0();
  v10 = v9;

  sub_23E373374(v8, v10, v3);
  v11 = [objc_opt_self() boldSystemFontOfSize_];
  [v3 setFont_];

  v12 = [objc_opt_self() labelColor];
  [v3 setTextColor_];

  [v3 setTextAlignment_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  sub_23E3AAC60();
  __break(1u);
}

id WFShazamMediaActionView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_23E3732F0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23E373374(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23E3AA9B0();

  [a3 setText_];
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27E3432B8 == -1)
  {
    if (qword_27E3432C0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27E3432C0)
    {
      return _availability_version_check();
    }
  }

  if (qword_27E3432B0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27E3432A4 > a3)
      {
        return 1;
      }

      if (dword_27E3432A4 >= a3)
      {
        return dword_27E3432A8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27E3432C0;
  if (qword_27E3432C0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E3432C0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x23EF08F60](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27E3432A4, &dword_27E3432A8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

id WFLocalizedString(void *a1)
{
  v1 = a1;
  v2 = WFCurrentBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

id WFCurrentBundle()
{
  if (WFCurrentBundle_onceToken != -1)
  {
    dispatch_once(&WFCurrentBundle_onceToken, &__block_literal_global);
  }

  v1 = WFCurrentBundle_bundle;

  return v1;
}

void __WFCurrentBundle_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v4, 0, sizeof(v4));
  if (dladdr(WFCurrentBundle, &v4) && v4.dli_fname)
  {
    v0 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v4.dli_fname isDirectory:0 relativeToURL:0];
    v1 = _CFBundleCopyBundleURLForExecutableURL();
    v2 = [MEMORY[0x277CCA8D8] bundleWithURL:v1];
    v3 = WFCurrentBundle_bundle;
    WFCurrentBundle_bundle = v2;
  }

  else
  {
    v0 = getWFGeneralLogObject();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "WFCurrentBundle_block_invoke";
      _os_log_impl(&dword_23E342000, v0, OS_LOG_TYPE_ERROR, "%s WFLocalizedString failed to locate current bundle", buf, 0xCu);
    }
  }
}

id WFLocalizedStringWithKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = WFCurrentBundle();
  v6 = [v5 localizedStringForKey:v4 value:v3 table:0];

  return v6;
}

void sub_23E378650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v30 + 40));
  _Unwind_Resume(a1);
}

void sub_23E37ADB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__414(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E37D880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_23E382768(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23E3883E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWKWebViewClass_block_invoke(uint64_t a1)
{
  WebKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKWebView");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWKWebViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKWebViewClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFShowWebPageActionUIKitUserInterface.m" lineNumber:18 description:{@"Unable to find class %s", "WKWebView"}];

    __break(1u);
  }
}

void __getWKWebViewConfigurationClass_block_invoke(uint64_t a1)
{
  WebKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKWebViewConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWKWebViewConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKWebViewConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFShowWebPageActionUIKitUserInterface.m" lineNumber:19 description:{@"Unable to find class %s", "WKWebViewConfiguration"}];

    __break(1u);
  }
}

void WebKitLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!WebKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __WebKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278C368F8;
    v5 = 0;
    WebKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WebKitLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WebKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFShowWebPageActionUIKitUserInterface.m" lineNumber:17 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __WebKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  WebKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E388B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSFSafariViewControllerConfigurationClass_block_invoke(uint64_t a1)
{
  SafariServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SFSafariViewControllerConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFSafariViewControllerConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSFSafariViewControllerConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFShowWebPageActionUIKitUserInterface.m" lineNumber:23 description:{@"Unable to find class %s", "SFSafariViewControllerConfiguration"}];

    __break(1u);
  }
}

void __getSFSafariViewControllerClass_block_invoke(uint64_t a1)
{
  SafariServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SFSafariViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFSafariViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSFSafariViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFShowWebPageActionUIKitUserInterface.m" lineNumber:22 description:{@"Unable to find class %s", "SFSafariViewController"}];

    __break(1u);
  }
}

void SafariServicesLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SafariServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278C368E0;
    v5 = 0;
    SafariServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SafariServicesLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFShowWebPageActionUIKitUserInterface.m" lineNumber:21 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SafariServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E38BEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVMetadataObjectTypeUPCECodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeUPCECode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeUPCECodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AVFoundationLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AVFoundationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C36A50;
    v6 = 0;
    AVFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFScanMachineReadableCodeActionUIKitUserInterface.m" lineNumber:17 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getAVMetadataObjectTypeCode39CodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeCode39Code");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeCode39CodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeCode39Mod43CodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeCode39Mod43Code");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeCode39Mod43CodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeEAN13CodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeEAN13Code");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeEAN13CodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeEAN8CodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeEAN8Code");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeEAN8CodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeCode93CodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeCode93Code");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeCode93CodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeCode128CodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeCode128Code");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeCode128CodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypePDF417CodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypePDF417Code");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypePDF417CodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeQRCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeQRCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeQRCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeAztecCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeAztecCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeAztecCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeInterleaved2of5CodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeInterleaved2of5Code");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeInterleaved2of5CodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeITF14CodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeITF14Code");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeITF14CodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVMetadataObjectTypeDataMatrixCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary();
  result = dlsym(v2, "AVMetadataObjectTypeDataMatrixCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeDataMatrixCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AVFoundationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E38CF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVCaptureSessionClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_2446();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCaptureSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCaptureSessionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFTakePhotoImmediateModeManager.m" lineNumber:15 description:{@"Unable to find class %s", "AVCaptureSession"}];

    __break(1u);
  }
}

void *__getAVCaptureSessionPresetPhotoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_2446();
  result = dlsym(v2, "AVCaptureSessionPresetPhoto");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureSessionPresetPhotoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AVFoundationLibrary_2446()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary_2451)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AVFoundationLibraryCore_block_invoke_2452;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C36A68;
    v6 = 0;
    AVFoundationLibraryCore_frameworkLibrary_2451 = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary_2451;
  if (!AVFoundationLibraryCore_frameworkLibrary_2451)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFTakePhotoImmediateModeManager.m" lineNumber:13 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void __getAVCaptureDeviceInputClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_2446();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCaptureDeviceInput");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureDeviceInputClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCaptureDeviceInputClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFTakePhotoImmediateModeManager.m" lineNumber:16 description:{@"Unable to find class %s", "AVCaptureDeviceInput"}];

    __break(1u);
  }
}

uint64_t __AVFoundationLibraryCore_block_invoke_2452(uint64_t a1)
{
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary_2451 = result;
  return result;
}

void sub_23E38D95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVCaptureDeviceTypeBuiltInDualCameraSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_2446();
  result = dlsym(v2, "AVCaptureDeviceTypeBuiltInDualCamera");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceTypeBuiltInDualCameraSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_2446();
  result = dlsym(v2, "AVCaptureDeviceTypeBuiltInWideAngleCamera");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureDeviceTypeBuiltInWideAngleCameraSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAVCaptureDeviceDiscoverySessionClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_2446();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCaptureDeviceDiscoverySession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureDeviceDiscoverySessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCaptureDeviceDiscoverySessionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFTakePhotoImmediateModeManager.m" lineNumber:14 description:{@"Unable to find class %s", "AVCaptureDeviceDiscoverySession"}];

    __break(1u);
  }
}

void *__getAVMediaTypeVideoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_2446();
  result = dlsym(v2, "AVMediaTypeVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMediaTypeVideoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getAVFoundationErrorDomain()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAVFoundationErrorDomainSymbolLoc_ptr;
  v9 = getAVFoundationErrorDomainSymbolLoc_ptr;
  if (!getAVFoundationErrorDomainSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_2446();
    v7[3] = dlsym(v1, "AVFoundationErrorDomain");
    getAVFoundationErrorDomainSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSErrorDomain getAVFoundationErrorDomain(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFTakePhotoImmediateModeManager.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E38DC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVFoundationErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_2446();
  result = dlsym(v2, "AVFoundationErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVFoundationErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E38DE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVCapturePhotoSettingsClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_2446();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCapturePhotoSettings");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCapturePhotoSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCapturePhotoSettingsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFTakePhotoImmediateModeManager.m" lineNumber:18 description:{@"Unable to find class %s", "AVCapturePhotoSettings"}];

    __break(1u);
  }
}

void sub_23E38E09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVCapturePhotoOutputClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_2446();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCapturePhotoOutput");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCapturePhotoOutputClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCapturePhotoOutputClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFTakePhotoImmediateModeManager.m" lineNumber:17 description:{@"Unable to find class %s", "AVCapturePhotoOutput"}];

    __break(1u);
  }
}

void sub_23E38FB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getQLPreviewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __QuickLookLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C36AC8;
    v8 = 0;
    QuickLookLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *QuickLookLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFMarkupActionUIKitUserInterface.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("QLPreviewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getQLPreviewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFMarkupActionUIKitUserInterface.m" lineNumber:19 description:{@"Unable to find class %s", "QLPreviewController"}];

LABEL_10:
    __break(1u);
  }

  getQLPreviewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __QuickLookLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  QuickLookLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E3910F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  _Block_object_dispose(&a30, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2913(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __WFExtensionItemsForActivityItemValues_block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 userInfo];
  if (v3)
  {
    v4 = [v7 userInfo];
    v5 = [v4 mutableCopy];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  if (*(a1 + 32))
  {
    v6 = MEMORY[0x277CBEC38];
  }

  else
  {
    v6 = MEMORY[0x277CBEC28];
  }

  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D54798]];
  [v7 setUserInfo:v5];
}

void sub_23E391D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40, char a41)
{
  objc_destroyWeak(&a40);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

id getSLComposeViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSLComposeViewControllerClass_softClass;
  v7 = getSLComposeViewControllerClass_softClass;
  if (!getSLComposeViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSLComposeViewControllerClass_block_invoke;
    v3[3] = &unk_278C37610;
    v3[4] = &v4;
    __getSLComposeViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E392054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFExtensionCommunicationError(void *a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = WFLocalizedStringWithKey(@"App Communication Failure (iOS)", @"App Communication Failure");
  v3 = WFLocalizedStringWithKey(@"Unable to communicate with selected app. (iOS)", @"Unable to communicate with selected app.");
  v4 = *MEMORY[0x277CCA450];
  v9[0] = *MEMORY[0x277CCA470];
  v9[1] = v4;
  v10[0] = v2;
  v10[1] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v6 = [v5 mutableCopy];

  if (v1)
  {
    [v6 setObject:v1 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WFShareActionUIKitUserInterfaceErrorDomain" code:1 userInfo:v6];

  return v7;
}

void __WFConfiguredViewControllerForShareExtension_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 0, 0);
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] userCancelledError];
    (*(v2 + 16))(v2, 0, v5);
  }
}

uint64_t __WFConfiguredViewControllerForActionExtension_block_invoke(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __WFConfiguredViewControllerForActionExtension_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA9B8] userCancelledError];
    v7 = v6;
    if (v4)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = [v6 domain];
      v10 = [v7 code];
      v13 = *MEMORY[0x277CCA7E8];
      v14[0] = v4;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v12 = [v8 errorWithDomain:v9 code:v10 userInfo:v11];
    }

    else
    {
      v12 = v6;
    }

    (*(v5 + 16))(v5, 0, v12);
  }
}

void __WFConfiguredViewControllerForActionExtension_block_invoke_3(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = *(a1 + 32);
    v3 = WFExtensionCommunicationError(0);
    (*(v2 + 16))(v2, 0, v3);
  }
}

void __WFConfiguredViewControllerForActionExtension_block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v16 = v7;
  if (a2 && v7)
  {
    v8 = [*(a1 + 32) infoDictionary];
    v9 = [v8 objectForKeyedSubscript:@"NSExtension"];

    v10 = [v9 objectForKeyedSubscript:@"NSExtensionActionWantsFullScreenPresentation"];
    if ([v10 BOOLValue])
    {
      v11 = 0;
    }

    else
    {
      v13 = [v9 objectForKeyedSubscript:@"NSExtensionAttributes"];
      v14 = [v13 objectForKeyedSubscript:@"NSExtensionActionWantsFullScreenPresentation"];
      if ([v14 BOOLValue])
      {
        v11 = 0;
      }

      else
      {
        v11 = 2;
      }
    }

    [v16 setModalPresentationStyle:v11];
    v15 = [v16 view];
    [v15 setTintAdjustmentMode:1];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v12 = *(a1 + 40);
    v9 = WFExtensionCommunicationError(a4);
    (*(v12 + 16))(v12, 0, v9);
  }
}

Class __getSLComposeViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!SocialLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __SocialLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C36D00;
    v8 = 0;
    SocialLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SocialLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SocialLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFShareActionUIKitUserInterface.m" lineNumber:23 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SLComposeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSLComposeViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFShareActionUIKitUserInterface.m" lineNumber:24 description:{@"Unable to find class %s", "SLComposeViewController"}];

LABEL_10:
    __break(1u);
  }

  getSLComposeViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SocialLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SocialLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E396E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMediaPickerControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MediaPlayerLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C36F20;
    v8 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFSelectMusicActionUIKitUserInterface.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MPMediaPickerController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaPickerControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFSelectMusicActionUIKitUserInterface.m" lineNumber:17 description:{@"Unable to find class %s", "MPMediaPickerController"}];

LABEL_10:
    __break(1u);
  }

  getMPMediaPickerControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E39B8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);
  objc_destroyWeak(&a32);
  _Unwind_Resume(a1);
}

id getSLComposeViewControllerClass_4537()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSLComposeViewControllerClass_softClass_4547;
  v7 = getSLComposeViewControllerClass_softClass_4547;
  if (!getSLComposeViewControllerClass_softClass_4547)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSLComposeViewControllerClass_block_invoke_4548;
    v3[3] = &unk_278C37610;
    v3[4] = &v4;
    __getSLComposeViewControllerClass_block_invoke_4548(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23E39D628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E39D744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getSLComposeViewControllerClass_block_invoke_4548(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!SocialLibraryCore_frameworkLibrary_4549)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __SocialLibraryCore_block_invoke_4550;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C37200;
    v8 = 0;
    SocialLibraryCore_frameworkLibrary_4549 = _sl_dlopen();
  }

  if (!SocialLibraryCore_frameworkLibrary_4549)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SocialLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFShareExtensionActionUIKitUserInterface.m" lineNumber:24 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SLComposeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSLComposeViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFShareExtensionActionUIKitUserInterface.m" lineNumber:25 description:{@"Unable to find class %s", "SLComposeViewController"}];

LABEL_10:
    __break(1u);
  }

  getSLComposeViewControllerClass_softClass_4547 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SocialLibraryCore_block_invoke_4550(uint64_t a1)
{
  result = _sl_dlopen();
  SocialLibraryCore_frameworkLibrary_4549 = result;
  return result;
}

void sub_23E39DDE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23E39E9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSBFWallpaperOptionsClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!SpringBoardFoundationLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardFoundationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C37360;
    v8 = 0;
    SpringBoardFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SpringBoardFoundationLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SpringBoardFoundationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:21 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SBFWallpaperOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSBFWallpaperOptionsClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:22 description:{@"Unable to find class %s", "SBFWallpaperOptions"}];

LABEL_10:
    __break(1u);
  }

  getSBFWallpaperOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSBSUIWallpaperPreviewViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!SpringBoardUIServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardUIServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C37378;
    v8 = 0;
    SpringBoardUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SpringBoardUIServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SpringBoardUIServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:23 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SBSUIWallpaperPreviewViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSBSUIWallpaperPreviewViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:24 description:{@"Unable to find class %s", "SBSUIWallpaperPreviewViewController"}];

LABEL_10:
    __break(1u);
  }

  getSBSUIWallpaperPreviewViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardUIServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SpringBoardUIServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __SpringBoardFoundationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SpringBoardFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

void __getPRSServiceClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRSService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRSServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:31 description:{@"Unable to find class %s", "PRSService"}];

    __break(1u);
  }
}

void sub_23E39F518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPRSPosterUpdateSessionInfoClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRSPosterUpdateSessionInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSPosterUpdateSessionInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRSPosterUpdateSessionInfoClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:32 description:{@"Unable to find class %s", "PRSPosterUpdateSessionInfo"}];

    __break(1u);
  }
}

void __getPRUISModalEntryPointEditingClass_block_invoke(uint64_t a1)
{
  PosterBoardUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRUISModalEntryPointEditing");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISModalEntryPointEditingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRUISModalEntryPointEditingClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:27 description:{@"Unable to find class %s", "PRUISModalEntryPointEditing"}];

    __break(1u);
  }
}

void __getPRUISModalRemoteViewControllerClass_block_invoke(uint64_t a1)
{
  PosterBoardUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRUISModalRemoteViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISModalRemoteViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPRUISModalRemoteViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:28 description:{@"Unable to find class %s", "PRUISModalRemoteViewController"}];

    __break(1u);
  }
}

void PosterBoardUILibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!PosterBoardUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __PosterBoardUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278C37348;
    v5 = 0;
    PosterBoardUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PosterBoardUILibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PosterBoardUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:26 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PosterBoardUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PosterBoardUILibraryCore_frameworkLibrary = result;
  return result;
}

void PosterBoardServicesLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __PosterBoardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278C37330;
    v5 = 0;
    PosterBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PosterBoardServicesLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:30 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PosterBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PosterBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23E3A21A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getWKWebViewClass_block_invoke_5068(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!WebKitLibraryCore_frameworkLibrary_5071)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __WebKitLibraryCore_block_invoke_5072;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C37478;
    v8 = 0;
    WebKitLibraryCore_frameworkLibrary_5071 = _sl_dlopen();
  }

  if (!WebKitLibraryCore_frameworkLibrary_5071)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WebKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFContentItemViewController.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("WKWebView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWKWebViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFContentItemViewController.m" lineNumber:17 description:{@"Unable to find class %s", "WKWebView"}];

LABEL_10:
    __break(1u);
  }

  getWKWebViewClass_softClass_5067 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __WebKitLibraryCore_block_invoke_5072(uint64_t a1)
{
  result = _sl_dlopen();
  WebKitLibraryCore_frameworkLibrary_5071 = result;
  return result;
}

void *__getAVCaptureSessionInterruptionReasonKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_5485();
  result = dlsym(v2, "AVCaptureSessionInterruptionReasonKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureSessionInterruptionReasonKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AVFoundationLibrary_5485()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary_5494)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AVFoundationLibraryCore_block_invoke_5495;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C37580;
    v6 = 0;
    AVFoundationLibraryCore_frameworkLibrary_5494 = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary_5494;
  if (!AVFoundationLibraryCore_frameworkLibrary_5494)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"CDZQRScanningViewController.m" lineNumber:25 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AVFoundationLibraryCore_block_invoke_5495(uint64_t a1)
{
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary_5494 = result;
  return result;
}

void sub_23E3A4458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVCaptureSessionErrorKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_5485();
  result = dlsym(v2, "AVCaptureSessionErrorKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureSessionErrorKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E3A52B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getAVCaptureSessionClass_block_invoke_5506(uint64_t a1)
{
  AVFoundationLibrary_5485();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCaptureSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureSessionClass_softClass_5505 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCaptureSessionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CDZQRScanningViewController.m" lineNumber:26 description:{@"Unable to find class %s", "AVCaptureSession"}];

    __break(1u);
  }
}

void sub_23E3A5B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVCaptureVideoPreviewLayerClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_5485();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCaptureVideoPreviewLayer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureVideoPreviewLayerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCaptureVideoPreviewLayerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CDZQRScanningViewController.m" lineNumber:30 description:{@"Unable to find class %s", "AVCaptureVideoPreviewLayer"}];

    __break(1u);
  }
}

void *__getAVLayerVideoGravityResizeAspectFillSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_5485();
  result = dlsym(v2, "AVLayerVideoGravityResizeAspectFill");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVLayerVideoGravityResizeAspectFillSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAVCaptureDeviceClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_5485();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCaptureDevice");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCaptureDeviceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CDZQRScanningViewController.m" lineNumber:27 description:{@"Unable to find class %s", "AVCaptureDevice"}];

    __break(1u);
  }
}

void *__getAVMediaTypeVideoSymbolLoc_block_invoke_5513(uint64_t a1)
{
  v2 = AVFoundationLibrary_5485();
  result = dlsym(v2, "AVMediaTypeVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMediaTypeVideoSymbolLoc_ptr_5512 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAVCaptureDeviceInputClass_block_invoke_5517(uint64_t a1)
{
  AVFoundationLibrary_5485();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCaptureDeviceInput");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureDeviceInputClass_softClass_5516 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCaptureDeviceInputClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CDZQRScanningViewController.m" lineNumber:28 description:{@"Unable to find class %s", "AVCaptureDeviceInput"}];

    __break(1u);
  }
}

void __getAVCaptureMetadataOutputClass_block_invoke(uint64_t a1)
{
  AVFoundationLibrary_5485();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVCaptureMetadataOutput");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVCaptureMetadataOutputClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVCaptureMetadataOutputClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CDZQRScanningViewController.m" lineNumber:29 description:{@"Unable to find class %s", "AVCaptureMetadataOutput"}];

    __break(1u);
  }
}

void sub_23E3A63F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVMetadataObjectTypeQRCodeSymbolLoc_block_invoke_5526(uint64_t a1)
{
  v2 = AVFoundationLibrary_5485();
  result = dlsym(v2, "AVMetadataObjectTypeQRCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataObjectTypeQRCodeSymbolLoc_ptr_5525 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getAVCaptureSessionRuntimeErrorNotification()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAVCaptureSessionRuntimeErrorNotificationSymbolLoc_ptr;
  v9 = getAVCaptureSessionRuntimeErrorNotificationSymbolLoc_ptr;
  if (!getAVCaptureSessionRuntimeErrorNotificationSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_5485();
    v7[3] = dlsym(v1, "AVCaptureSessionRuntimeErrorNotification");
    getAVCaptureSessionRuntimeErrorNotificationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSNotificationName getAVCaptureSessionRuntimeErrorNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"CDZQRScanningViewController.m" lineNumber:32 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E3A67A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getAVCaptureSessionWasInterruptedNotification()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAVCaptureSessionWasInterruptedNotificationSymbolLoc_ptr;
  v9 = getAVCaptureSessionWasInterruptedNotificationSymbolLoc_ptr;
  if (!getAVCaptureSessionWasInterruptedNotificationSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_5485();
    v7[3] = dlsym(v1, "AVCaptureSessionWasInterruptedNotification");
    getAVCaptureSessionWasInterruptedNotificationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSNotificationName getAVCaptureSessionWasInterruptedNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"CDZQRScanningViewController.m" lineNumber:33 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E3A690C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getAVCaptureSessionInterruptionEndedNotification()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAVCaptureSessionInterruptionEndedNotificationSymbolLoc_ptr;
  v9 = getAVCaptureSessionInterruptionEndedNotificationSymbolLoc_ptr;
  if (!getAVCaptureSessionInterruptionEndedNotificationSymbolLoc_ptr)
  {
    v1 = AVFoundationLibrary_5485();
    v7[3] = dlsym(v1, "AVCaptureSessionInterruptionEndedNotification");
    getAVCaptureSessionInterruptionEndedNotificationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSNotificationName getAVCaptureSessionInterruptionEndedNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"CDZQRScanningViewController.m" lineNumber:34 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_23E3A6A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVCaptureSessionInterruptionEndedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_5485();
  result = dlsym(v2, "AVCaptureSessionInterruptionEndedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureSessionInterruptionEndedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVCaptureSessionWasInterruptedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_5485();
  result = dlsym(v2, "AVCaptureSessionWasInterruptedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureSessionWasInterruptedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVCaptureSessionRuntimeErrorNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AVFoundationLibrary_5485();
  result = dlsym(v2, "AVCaptureSessionRuntimeErrorNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVCaptureSessionRuntimeErrorNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_23E3A78A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNContactPickerViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __ContactsUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278C37630;
    v8 = 0;
    ContactsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContactsUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFSelectContactsActionUIKitUserInterface.m" lineNumber:22 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CNContactPickerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNContactPickerViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFSelectContactsActionUIKitUserInterface.m" lineNumber:23 description:{@"Unable to find class %s", "CNContactPickerViewController"}];

LABEL_10:
    __break(1u);
  }

  getCNContactPickerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ContactsUILibraryCore_frameworkLibrary = result;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}