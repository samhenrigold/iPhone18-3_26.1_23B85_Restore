uint64_t getEnumTagSinglePayload for CommonEventTrigger.EventTriggerAttribute.DefinedValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CommonEventTrigger.EventTriggerAttribute.DefinedValue(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2679C7A40);
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

uint64_t sub_2679C7A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF020, &qword_267A87178);
  OUTLINED_FUNCTION_11_0();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_2679C7B4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF020, &qword_267A87178);
  OUTLINED_FUNCTION_11_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
    v11 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

void sub_2679C7C00(uint64_t a1)
{
  sub_2676FC800(319, &qword_2801DF070, &qword_2801DF008, &qword_267A87180);
  if (v1 <= 0x3F)
  {
    sub_2676FC800(319, &qword_2801D5060, &qword_2801D5068, &qword_267A42620);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_19_5()
{

  return type metadata accessor for CommonEventTrigger.EventTriggerAttribute(0);
}

uint64_t sub_2679C7E08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF0D8, &qword_267A87438);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DC0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x8000000267A97810;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x8000000267A97810;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x507473694C6F7375;
  *(inited + 96) = 0xEF6E6F697469736FLL;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x507473694C6F7375;
  *(inited + 120) = 0xEF6E6F697469736FLL;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "usoQuantifier");
  *(inited + 150) = -4864;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "usoQuantifier");
  *(inited + 174) = -4864;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x8000000267A97830;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x8000000267A97830;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000012;
  *(inited + 240) = 0x8000000267A97850;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000012;
  *(inited + 264) = 0x8000000267A97850;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x41656D61536F7375;
  *(inited + 288) = 0xE900000000000073;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x41656D61536F7375;
  *(inited + 312) = 0xE900000000000073;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x8000000267A97870;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF0E0, &qword_267A87670);
  sub_267A41C04();
  type metadata accessor for CommonFindMy.DeviceAttribute(0);
  return sub_267A41914();
}

uint64_t static CommonFindMy.DeviceAttribute.definition.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2801D4B30 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF0B8, &qword_267A87378);
  __swift_project_value_buffer(v2, qword_2801DF088);
  OUTLINED_FUNCTION_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_2679C8168(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_allocate_value_buffer(v7, a4);
  __swift_project_value_buffer(v7, a4);
  return a5();
}

uint64_t sub_2679C81C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF0C8, &qword_267A87388);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x797469746E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF0D0, &qword_267A87430);
  sub_267A41C04();
  type metadata accessor for CommonFindMy.DeviceAttribute.NoVerb(0);
  return sub_267A41914();
}

uint64_t static CommonFindMy.DeviceAttribute.NoVerb.definition.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2801D4B38 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF0C0, &qword_267A87380);
  __swift_project_value_buffer(v2, qword_2801DF0A0);
  OUTLINED_FUNCTION_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_2679C84D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  sub_2676F8AF4(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t sub_2679C8744@<X0>(uint64_t *a1@<X8>)
{
  result = CommonFindMy.DeviceAttribute.NoVerb.userEntities.getter();
  *a1 = result;
  return result;
}

uint64_t Entity<A>.init(usoAssociatedApp:usoListPosition:usoQuantifier:usoReferenceType:usoSearchQualifier:usoSameAs:usoSpatialPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a7;
  v46 = a6;
  v47 = a5;
  v48 = a4;
  v49 = a3;
  v50 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E70, &qword_267A42190);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF0E8, &qword_267A87678);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v12);
  v43 = &v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E80, &qword_267A421A0);
  OUTLINED_FUNCTION_3(v14);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_3(v18);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_3(v22);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v23);
  v25 = &v41 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_3(v26);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v27);
  v29 = &v41 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4EA0, &qword_267A421C0);
  OUTLINED_FUNCTION_3(v30);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v31);
  v33 = &v41 - v32;
  if (qword_2801D4B30 != -1)
  {
    swift_once();
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF0B8, &qword_267A87378);
  __swift_project_value_buffer(v34, qword_2801DF088);
  sub_267A41934();
  type metadata accessor for CommonFindMy.DeviceAttribute(0);
  sub_267A419D4();
  swift_getKeyPath();
  sub_2676F8AF4(a1, v33, &qword_2801D4EA0, &qword_267A421C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF0F0, &qword_267A876A8);
  OUTLINED_FUNCTION_1_10();
  sub_2679C9340(v35, v36, &protocol conformance descriptor for CommonFindMy.DeviceAttribute);
  v42 = a1;
  sub_2679C9340(&qword_2801D4EB8, type metadata accessor for Common.App, &protocol conformance descriptor for Common.App);
  OUTLINED_FUNCTION_0_9();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v50, v29, &qword_2801D4E98, &qword_267A421B8);
  sub_2679C9340(&qword_2801D4EC0, type metadata accessor for Common.ListPosition, &protocol conformance descriptor for Common.ListPosition);
  OUTLINED_FUNCTION_0_9();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v49, v25, &qword_2801D4E90, &qword_267A421B0);
  sub_2679C9340(&qword_2801D4EC8, type metadata accessor for Common.Quantifier, &protocol conformance descriptor for Common.Quantifier);
  OUTLINED_FUNCTION_0_9();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v48, v21, &qword_2801D4E88, &qword_267A421A8);
  sub_2679C9340(&qword_2801D4ED0, type metadata accessor for Common.ReferenceType, &protocol conformance descriptor for Common.ReferenceType);
  OUTLINED_FUNCTION_0_9();
  sub_267A41A14();
  swift_getKeyPath();
  v37 = v47;
  sub_2676F8AF4(v47, v17, &qword_2801D4E80, &qword_267A421A0);
  sub_2679C9340(&qword_2801D4ED8, type metadata accessor for Common.SearchQualifier, &protocol conformance descriptor for Common.SearchQualifier);
  OUTLINED_FUNCTION_0_9();
  sub_267A41A14();
  swift_getKeyPath();
  v38 = v46;
  sub_2676F8AF4(v46, v43, &qword_2801DF0E8, &qword_267A87678);
  OUTLINED_FUNCTION_0_9();
  sub_267A41A14();
  swift_getKeyPath();
  v39 = v45;
  sub_2676F8AF4(v45, v44, &qword_2801D4E70, &qword_267A42190);
  sub_2679C9340(&qword_2801D4EE0, type metadata accessor for Common.SpatialPosition, &protocol conformance descriptor for Common.SpatialPosition);
  sub_267A41A14();
  sub_2676F8798(v39, &qword_2801D4E70, &qword_267A42190);
  sub_2676F8798(v38, &qword_2801DF0E8, &qword_267A87678);
  sub_2676F8798(v37, &qword_2801D4E80, &qword_267A421A0);
  sub_2676F8798(v48, &qword_2801D4E88, &qword_267A421A8);
  sub_2676F8798(v49, &qword_2801D4E90, &qword_267A421B0);
  sub_2676F8798(v50, &qword_2801D4E98, &qword_267A421B8);
  return sub_2676F8798(v42, &qword_2801D4EA0, &qword_267A421C0);
}

{
  v45 = a7;
  v46 = a6;
  v47 = a5;
  v48 = a4;
  v49 = a3;
  v50 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E70, &qword_267A42190);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1B8, &qword_267A87C08);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v12);
  v43 = &v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E80, &qword_267A421A0);
  OUTLINED_FUNCTION_3(v14);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_3(v18);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_3(v22);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v23);
  v25 = &v41 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_3(v26);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v27);
  v29 = &v41 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4EA0, &qword_267A421C0);
  OUTLINED_FUNCTION_3(v30);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v31);
  v33 = &v41 - v32;
  if (qword_2801D4B40 != -1)
  {
    swift_once();
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF188, &qword_267A87908);
  __swift_project_value_buffer(v34, qword_2801DF158);
  sub_267A41934();
  type metadata accessor for CommonMessage.MessageAttribute(0);
  sub_267A419D4();
  swift_getKeyPath();
  sub_2676F8AF4(a1, v33, &qword_2801D4EA0, &qword_267A421C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1C0, &qword_267A87C38);
  OUTLINED_FUNCTION_1_11();
  sub_2679CD9A0(v35, v36, &protocol conformance descriptor for CommonMessage.MessageAttribute);
  v42 = a1;
  sub_2679CD9A0(&qword_2801D4EB8, type metadata accessor for Common.App, &protocol conformance descriptor for Common.App);
  OUTLINED_FUNCTION_0_9();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v50, v29, &qword_2801D4E98, &qword_267A421B8);
  sub_2679CD9A0(&qword_2801D4EC0, type metadata accessor for Common.ListPosition, &protocol conformance descriptor for Common.ListPosition);
  OUTLINED_FUNCTION_0_9();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v49, v25, &qword_2801D4E90, &qword_267A421B0);
  sub_2679CD9A0(&qword_2801D4EC8, type metadata accessor for Common.Quantifier, &protocol conformance descriptor for Common.Quantifier);
  OUTLINED_FUNCTION_0_9();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v48, v21, &qword_2801D4E88, &qword_267A421A8);
  sub_2679CD9A0(&qword_2801D4ED0, type metadata accessor for Common.ReferenceType, &protocol conformance descriptor for Common.ReferenceType);
  OUTLINED_FUNCTION_0_9();
  sub_267A41A14();
  swift_getKeyPath();
  v37 = v47;
  sub_2676F8AF4(v47, v17, &qword_2801D4E80, &qword_267A421A0);
  sub_2679CD9A0(&qword_2801D4ED8, type metadata accessor for Common.SearchQualifier, &protocol conformance descriptor for Common.SearchQualifier);
  OUTLINED_FUNCTION_0_9();
  sub_267A41A14();
  swift_getKeyPath();
  v38 = v46;
  sub_2676F8AF4(v46, v43, &qword_2801DF1B8, &qword_267A87C08);
  OUTLINED_FUNCTION_0_9();
  sub_267A41A14();
  swift_getKeyPath();
  v39 = v45;
  sub_2676F8AF4(v45, v44, &qword_2801D4E70, &qword_267A42190);
  sub_2679CD9A0(&qword_2801D4EE0, type metadata accessor for Common.SpatialPosition, &protocol conformance descriptor for Common.SpatialPosition);
  sub_267A41A14();
  sub_2676F8798(v39, &qword_2801D4E70, &qword_267A42190);
  sub_2676F8798(v38, &qword_2801DF1B8, &qword_267A87C08);
  sub_2676F8798(v37, &qword_2801D4E80, &qword_267A421A0);
  sub_2676F8798(v48, &qword_2801D4E88, &qword_267A421A8);
  sub_2676F8798(v49, &qword_2801D4E90, &qword_267A421B0);
  sub_2676F8798(v50, &qword_2801D4E98, &qword_267A421B8);
  return sub_2676F8798(v42, &qword_2801D4EA0, &qword_267A421C0);
}

{
  v45 = a7;
  v46 = a6;
  v47 = a5;
  v48 = a4;
  v49 = a3;
  v50 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E70, &qword_267A42190);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF288, &qword_267A88198);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v12);
  v43 = &v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E80, &qword_267A421A0);
  OUTLINED_FUNCTION_3(v14);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E88, &qword_267A421A8);
  OUTLINED_FUNCTION_3(v18);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E90, &qword_267A421B0);
  OUTLINED_FUNCTION_3(v22);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v23);
  v25 = &v41 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  OUTLINED_FUNCTION_3(v26);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v27);
  v29 = &v41 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4EA0, &qword_267A421C0);
  OUTLINED_FUNCTION_3(v30);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v31);
  v33 = &v41 - v32;
  if (qword_2801D4B50 != -1)
  {
    swift_once();
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF258, &qword_267A87E98);
  __swift_project_value_buffer(v34, qword_2801DF228);
  sub_267A41934();
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(0);
  sub_267A419D4();
  swift_getKeyPath();
  sub_2676F8AF4(a1, v33, &qword_2801D4EA0, &qword_267A421C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF290, &qword_267A881C8);
  OUTLINED_FUNCTION_1_12();
  sub_2679D1FF8(v35, v36, &protocol conformance descriptor for CommonPayments.CurrencyAmountAttribute);
  v42 = a1;
  sub_2679D1FF8(&qword_2801D4EB8, type metadata accessor for Common.App, &protocol conformance descriptor for Common.App);
  OUTLINED_FUNCTION_0_9();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v50, v29, &qword_2801D4E98, &qword_267A421B8);
  sub_2679D1FF8(&qword_2801D4EC0, type metadata accessor for Common.ListPosition, &protocol conformance descriptor for Common.ListPosition);
  OUTLINED_FUNCTION_0_9();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v49, v25, &qword_2801D4E90, &qword_267A421B0);
  sub_2679D1FF8(&qword_2801D4EC8, type metadata accessor for Common.Quantifier, &protocol conformance descriptor for Common.Quantifier);
  OUTLINED_FUNCTION_0_9();
  sub_267A41A14();
  swift_getKeyPath();
  sub_2676F8AF4(v48, v21, &qword_2801D4E88, &qword_267A421A8);
  sub_2679D1FF8(&qword_2801D4ED0, type metadata accessor for Common.ReferenceType, &protocol conformance descriptor for Common.ReferenceType);
  OUTLINED_FUNCTION_0_9();
  sub_267A41A14();
  swift_getKeyPath();
  v37 = v47;
  sub_2676F8AF4(v47, v17, &qword_2801D4E80, &qword_267A421A0);
  sub_2679D1FF8(&qword_2801D4ED8, type metadata accessor for Common.SearchQualifier, &protocol conformance descriptor for Common.SearchQualifier);
  OUTLINED_FUNCTION_0_9();
  sub_267A41A14();
  swift_getKeyPath();
  v38 = v46;
  sub_2676F8AF4(v46, v43, &qword_2801DF288, &qword_267A88198);
  OUTLINED_FUNCTION_0_9();
  sub_267A41A14();
  swift_getKeyPath();
  v39 = v45;
  sub_2676F8AF4(v45, v44, &qword_2801D4E70, &qword_267A42190);
  sub_2679D1FF8(&qword_2801D4EE0, type metadata accessor for Common.SpatialPosition, &protocol conformance descriptor for Common.SpatialPosition);
  sub_267A41A14();
  sub_2676F8798(v39, &qword_2801D4E70, &qword_267A42190);
  sub_2676F8798(v38, &qword_2801DF288, &qword_267A88198);
  sub_2676F8798(v37, &qword_2801D4E80, &qword_267A421A0);
  sub_2676F8798(v48, &qword_2801D4E88, &qword_267A421A8);
  sub_2676F8798(v49, &qword_2801D4E90, &qword_267A421B0);
  sub_2676F8798(v50, &qword_2801D4E98, &qword_267A421B8);
  return sub_2676F8798(v42, &qword_2801D4EA0, &qword_267A421C0);
}

uint64_t sub_2679C9310@<X0>(uint64_t *a1@<X8>)
{
  result = CommonFindMy.DeviceAttribute.NoVerb.userEntities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2679C9340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CommonFindMy.DeviceAttribute.usoAssociatedApp.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);

  return sub_267A41984();
}

uint64_t CommonFindMy.DeviceAttribute.$usoAssociatedApp.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);

  return sub_267A419A4();
}

uint64_t CommonFindMy.DeviceAttribute.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonFindMy.DeviceAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A423A0);
}

uint64_t sub_2679C96C4(void (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  a1(0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return a4(v7);
}

uint64_t CommonFindMy.DeviceAttribute.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonFindMy.DeviceAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonFindMy.DeviceAttribute.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonFindMy.DeviceAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A8F170);
}

uint64_t sub_2679C9934()
{
  OUTLINED_FUNCTION_20_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonFindMy.DeviceAttribute.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonFindMy.DeviceAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonFindMy.DeviceAttribute.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonFindMy.DeviceAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A423D0);
}

uint64_t sub_2679C9B84()
{
  OUTLINED_FUNCTION_20_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonFindMy.DeviceAttribute.$usoReferenceType.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonFindMy.DeviceAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonFindMy.DeviceAttribute.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonFindMy.DeviceAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A8F1A0);
}

uint64_t sub_2679C9DD4()
{
  OUTLINED_FUNCTION_20_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonFindMy.DeviceAttribute.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonFindMy.DeviceAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonFindMy.DeviceAttribute.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonFindMy.DeviceAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF110, &qword_267A877F8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &qword_267A87800);
}

uint64_t sub_2679CA024()
{
  OUTLINED_FUNCTION_20_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF110, &qword_267A877F8);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonFindMy.DeviceAttribute.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF118, &unk_267A87808);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonFindMy.DeviceAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF110, &qword_267A877F8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonFindMy.DeviceAttribute.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonFindMy.DeviceAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A8F1D0);
}

uint64_t sub_2679CA274()
{
  OUTLINED_FUNCTION_20_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonFindMy.DeviceAttribute.$usoSpatialPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonFindMy.DeviceAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonFindMy.DeviceAttribute.NoVerb.entity.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF110, &qword_267A877F8);

  return sub_267A41984();
}

uint64_t sub_2679CA458(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3(v10);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v11);
  sub_2676F8AF4(a1, &v14 - v12, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_267A41994();
  return sub_2676F8798(a1, a2, a3);
}

uint64_t CommonFindMy.DeviceAttribute.NoVerb.$entity.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF110, &qword_267A877F8);

  return sub_267A419A4();
}

uint64_t sub_2679CA5D4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_0();
  v10 = v9;
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v11);
  (*(v10 + 16))(&v14 - v12, a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_267A419B4();
  return (*(v10 + 8))(a1, v8);
}

uint64_t CommonFindMy.DeviceAttribute.NoVerb.userEntities.getter()
{
  type metadata accessor for CommonFindMy.DeviceAttribute.NoVerb(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  sub_267A41984();
  return v1;
}

uint64_t CommonFindMy.DeviceAttribute.NoVerb.userEntities.setter(uint64_t a1)
{
  type metadata accessor for CommonFindMy.DeviceAttribute.NoVerb(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  return sub_267A41994();
}

uint64_t sub_2679CA824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

uint64_t CommonFindMy.DeviceAttribute.NoVerb.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonFindMy.DeviceAttribute.NoVerb(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t (*CommonFindMy.DeviceAttribute.NoVerb.entity.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF110, &qword_267A877F8);
  v2[4] = sub_267A41974();
  return sub_2676FC854;
}

uint64_t CommonFindMy.DeviceAttribute.NoVerb.$entity.modify()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_5_0(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF118, &unk_267A87808);
  OUTLINED_FUNCTION_3_0(v2);
  v0[2] = v3;
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15(v5);
  v7 = __swift_coroFrameAllocStub(v6);
  v8 = OUTLINED_FUNCTION_17(v7);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF110, &qword_267A877F8);
  sub_267A419A4();
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonFindMy.DeviceAttribute.NoVerb.userEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonFindMy.DeviceAttribute.NoVerb(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonFindMy.DeviceAttribute.NoVerb.$userEntities.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonFindMy.DeviceAttribute.NoVerb(v11) + 20);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonFindMy.DeviceAttribute.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  v2[4] = sub_267A41974();
  return sub_2676FC854;
}

uint64_t CommonFindMy.DeviceAttribute.$usoAssociatedApp.modify()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_5_0(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_3_0(v2);
  v0[2] = v3;
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15(v5);
  v7 = __swift_coroFrameAllocStub(v6);
  v8 = OUTLINED_FUNCTION_17(v7);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  sub_267A419A4();
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonFindMy.DeviceAttribute.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonFindMy.DeviceAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonFindMy.DeviceAttribute.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonFindMy.DeviceAttribute(v11) + 20);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonFindMy.DeviceAttribute.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonFindMy.DeviceAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FA8FC;
}

uint64_t CommonFindMy.DeviceAttribute.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonFindMy.DeviceAttribute(v11) + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonFindMy.DeviceAttribute.usoReferenceType.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonFindMy.DeviceAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonFindMy.DeviceAttribute.$usoReferenceType.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonFindMy.DeviceAttribute(v11) + 28);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonFindMy.DeviceAttribute.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonFindMy.DeviceAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonFindMy.DeviceAttribute.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonFindMy.DeviceAttribute(v11) + 32);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonFindMy.DeviceAttribute.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonFindMy.DeviceAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF110, &qword_267A877F8);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonFindMy.DeviceAttribute.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF118, &unk_267A87808);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonFindMy.DeviceAttribute(v11) + 36);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF110, &qword_267A877F8);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonFindMy.DeviceAttribute.usoSpatialPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonFindMy.DeviceAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonFindMy.DeviceAttribute.$usoSpatialPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonFindMy.DeviceAttribute(v11) + 40);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t sub_2679CB694(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for CommonFindMy(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2679CBA94);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2679CBAE0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_11_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
    OUTLINED_FUNCTION_11_0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
      OUTLINED_FUNCTION_11_0();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
        OUTLINED_FUNCTION_11_0();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
          OUTLINED_FUNCTION_11_0();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF110, &qword_267A877F8);
            OUTLINED_FUNCTION_11_0();
            if (*(v20 + 84) == a2)
            {
              v8 = v19;
              v12 = a3[9];
            }

            else
            {
              v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
              v12 = a3[10];
            }
          }
        }
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2679CBD20()
{
  OUTLINED_FUNCTION_6_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_11_0();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
    OUTLINED_FUNCTION_11_0();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
      OUTLINED_FUNCTION_11_0();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
        OUTLINED_FUNCTION_11_0();
        if (*(v14 + 84) == v3)
        {
          v6 = v13;
          v10 = v2[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
          OUTLINED_FUNCTION_11_0();
          if (*(v16 + 84) == v3)
          {
            v6 = v15;
            v10 = v2[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF110, &qword_267A877F8);
            OUTLINED_FUNCTION_11_0();
            if (*(v18 + 84) == v3)
            {
              v6 = v17;
              v10 = v2[9];
            }

            else
            {
              v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
              v10 = v2[10];
            }
          }
        }
      }
    }

    v7 = v1 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

void sub_2679CBF48(uint64_t a1)
{
  sub_2676FC800(319, &qword_2801D5018, &qword_2801D4F30, &unk_267A8F140);
  if (v1 <= 0x3F)
  {
    sub_2676FC800(319, &qword_2801D5020, &qword_2801D4F28, &unk_267A423A0);
    if (v2 <= 0x3F)
    {
      sub_2676FC800(319, &qword_2801D5028, &qword_2801D4F20, &unk_267A8F170);
      if (v3 <= 0x3F)
      {
        sub_2676FC800(319, &qword_2801D5030, &qword_2801D4F18, &unk_267A423D0);
        if (v4 <= 0x3F)
        {
          sub_2676FC800(319, &qword_2801D5038, &qword_2801D4F10, &unk_267A8F1A0);
          if (v5 <= 0x3F)
          {
            sub_2676FC800(319, &qword_2801DF140, &qword_2801DF108, &qword_267A87800);
            if (v6 <= 0x3F)
            {
              sub_2676FC800(319, &qword_2801D5048, &qword_2801D4F08, &unk_267A8F1D0);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2679CC100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF110, &qword_267A877F8);
  OUTLINED_FUNCTION_11_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2679CC1C4()
{
  OUTLINED_FUNCTION_6_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF110, &qword_267A877F8);
  OUTLINED_FUNCTION_11_0();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
    v7 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

void sub_2679CC270(uint64_t a1)
{
  sub_2676FC800(319, &qword_2801DF140, &qword_2801DF108, &qword_267A87800);
  if (v1 <= 0x3F)
  {
    sub_2676FC800(319, &qword_2801D5060, &qword_2801D5068, &qword_267A42620);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return type metadata accessor for CommonFindMy.DeviceAttribute(0);
}

uint64_t sub_2679CC460()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1A8, &qword_267A879C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DC0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x8000000267A97810;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x8000000267A97810;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x507473694C6F7375;
  *(inited + 96) = 0xEF6E6F697469736FLL;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x507473694C6F7375;
  *(inited + 120) = 0xEF6E6F697469736FLL;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "usoQuantifier");
  *(inited + 150) = -4864;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "usoQuantifier");
  *(inited + 174) = -4864;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x8000000267A97830;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x8000000267A97830;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000012;
  *(inited + 240) = 0x8000000267A97850;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000012;
  *(inited + 264) = 0x8000000267A97850;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x41656D61536F7375;
  *(inited + 288) = 0xE900000000000073;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x41656D61536F7375;
  *(inited + 312) = 0xE900000000000073;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x8000000267A97870;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1B0, &qword_267A87C00);
  sub_267A41C04();
  type metadata accessor for CommonMessage.MessageAttribute(0);
  return sub_267A41924();
}

uint64_t static CommonMessage.MessageAttribute.definition.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2801D4B40 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF188, &qword_267A87908);
  __swift_project_value_buffer(v2, qword_2801DF158);
  OUTLINED_FUNCTION_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_2679CC7C8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_allocate_value_buffer(v7, a4);
  __swift_project_value_buffer(v7, a4);
  return a5();
}

uint64_t sub_2679CC824()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF198, &qword_267A87918);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x797469746E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1A0, &qword_267A879C0);
  sub_267A41C04();
  type metadata accessor for CommonMessage.MessageAttribute.NoVerb(0);
  return sub_267A41914();
}

uint64_t static CommonMessage.MessageAttribute.NoVerb.definition.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2801D4B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF190, &qword_267A87910);
  __swift_project_value_buffer(v2, qword_2801DF170);
  OUTLINED_FUNCTION_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_2679CCB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  sub_2676F8AF4(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t sub_2679CCDA4@<X0>(uint64_t *a1@<X8>)
{
  result = CommonMessage.MessageAttribute.NoVerb.userEntities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2679CD970@<X0>(uint64_t *a1@<X8>)
{
  result = CommonMessage.MessageAttribute.NoVerb.userEntities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2679CD9A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CommonMessage.MessageAttribute.usoAssociatedApp.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);

  return sub_267A41984();
}

uint64_t CommonMessage.MessageAttribute.$usoAssociatedApp.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);

  return sub_267A419A4();
}

uint64_t CommonMessage.MessageAttribute.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonMessage.MessageAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A423A0);
}

uint64_t sub_2679CDD24(void (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  a1(0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return a4(v7);
}

uint64_t CommonMessage.MessageAttribute.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonMessage.MessageAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonMessage.MessageAttribute.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonMessage.MessageAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A8F170);
}

uint64_t sub_2679CDF94()
{
  OUTLINED_FUNCTION_20_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonMessage.MessageAttribute.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonMessage.MessageAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonMessage.MessageAttribute.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonMessage.MessageAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A423D0);
}

uint64_t sub_2679CE1E4()
{
  OUTLINED_FUNCTION_20_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonMessage.MessageAttribute.$usoReferenceType.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonMessage.MessageAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonMessage.MessageAttribute.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonMessage.MessageAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A8F1A0);
}

uint64_t sub_2679CE434()
{
  OUTLINED_FUNCTION_20_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonMessage.MessageAttribute.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonMessage.MessageAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonMessage.MessageAttribute.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonMessage.MessageAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1E0, &qword_267A87D88);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &qword_267A87D90);
}

uint64_t sub_2679CE684()
{
  OUTLINED_FUNCTION_20_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1E0, &qword_267A87D88);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonMessage.MessageAttribute.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1E8, &unk_267A87D98);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonMessage.MessageAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1E0, &qword_267A87D88);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonMessage.MessageAttribute.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonMessage.MessageAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A8F1D0);
}

uint64_t sub_2679CE8D4()
{
  OUTLINED_FUNCTION_20_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonMessage.MessageAttribute.$usoSpatialPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonMessage.MessageAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonMessage.MessageAttribute.NoVerb.entity.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1E0, &qword_267A87D88);

  return sub_267A41984();
}

uint64_t sub_2679CEAB8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3(v10);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v11);
  sub_2676F8AF4(a1, &v14 - v12, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_267A41994();
  return sub_2676F8798(a1, a2, a3);
}

uint64_t CommonMessage.MessageAttribute.NoVerb.$entity.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1E0, &qword_267A87D88);

  return sub_267A419A4();
}

uint64_t sub_2679CEC34(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_0();
  v10 = v9;
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v11);
  (*(v10 + 16))(&v14 - v12, a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_267A419B4();
  return (*(v10 + 8))(a1, v8);
}

uint64_t CommonMessage.MessageAttribute.NoVerb.userEntities.getter()
{
  type metadata accessor for CommonMessage.MessageAttribute.NoVerb(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  sub_267A41984();
  return v1;
}

uint64_t CommonMessage.MessageAttribute.NoVerb.userEntities.setter(uint64_t a1)
{
  type metadata accessor for CommonMessage.MessageAttribute.NoVerb(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  return sub_267A41994();
}

uint64_t sub_2679CEE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

uint64_t CommonMessage.MessageAttribute.NoVerb.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonMessage.MessageAttribute.NoVerb(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t (*CommonMessage.MessageAttribute.NoVerb.entity.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1E0, &qword_267A87D88);
  v2[4] = sub_267A41974();
  return sub_2676FC854;
}

uint64_t CommonMessage.MessageAttribute.NoVerb.$entity.modify()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_5_0(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1E8, &unk_267A87D98);
  OUTLINED_FUNCTION_3_0(v2);
  v0[2] = v3;
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15(v5);
  v7 = __swift_coroFrameAllocStub(v6);
  v8 = OUTLINED_FUNCTION_17(v7);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1E0, &qword_267A87D88);
  sub_267A419A4();
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonMessage.MessageAttribute.NoVerb.userEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonMessage.MessageAttribute.NoVerb(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonMessage.MessageAttribute.NoVerb.$userEntities.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonMessage.MessageAttribute.NoVerb(v11) + 20);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonMessage.MessageAttribute.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  v2[4] = sub_267A41974();
  return sub_2676FC854;
}

uint64_t CommonMessage.MessageAttribute.$usoAssociatedApp.modify()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_5_0(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_3_0(v2);
  v0[2] = v3;
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15(v5);
  v7 = __swift_coroFrameAllocStub(v6);
  v8 = OUTLINED_FUNCTION_17(v7);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  sub_267A419A4();
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonMessage.MessageAttribute.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonMessage.MessageAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonMessage.MessageAttribute.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonMessage.MessageAttribute(v11) + 20);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonMessage.MessageAttribute.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonMessage.MessageAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FA8FC;
}

uint64_t CommonMessage.MessageAttribute.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonMessage.MessageAttribute(v11) + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonMessage.MessageAttribute.usoReferenceType.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonMessage.MessageAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonMessage.MessageAttribute.$usoReferenceType.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonMessage.MessageAttribute(v11) + 28);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonMessage.MessageAttribute.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonMessage.MessageAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonMessage.MessageAttribute.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonMessage.MessageAttribute(v11) + 32);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonMessage.MessageAttribute.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonMessage.MessageAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1E0, &qword_267A87D88);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonMessage.MessageAttribute.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1E8, &unk_267A87D98);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonMessage.MessageAttribute(v11) + 36);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1E0, &qword_267A87D88);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonMessage.MessageAttribute.usoSpatialPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonMessage.MessageAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonMessage.MessageAttribute.$usoSpatialPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonMessage.MessageAttribute(v11) + 40);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t sub_2679CFCF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for CommonMessage(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2679D00F4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2679D0140(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_11_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
    OUTLINED_FUNCTION_11_0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
      OUTLINED_FUNCTION_11_0();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
        OUTLINED_FUNCTION_11_0();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
          OUTLINED_FUNCTION_11_0();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1E0, &qword_267A87D88);
            OUTLINED_FUNCTION_11_0();
            if (*(v20 + 84) == a2)
            {
              v8 = v19;
              v12 = a3[9];
            }

            else
            {
              v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
              v12 = a3[10];
            }
          }
        }
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2679D0380()
{
  OUTLINED_FUNCTION_6_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_11_0();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
    OUTLINED_FUNCTION_11_0();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
      OUTLINED_FUNCTION_11_0();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
        OUTLINED_FUNCTION_11_0();
        if (*(v14 + 84) == v3)
        {
          v6 = v13;
          v10 = v2[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
          OUTLINED_FUNCTION_11_0();
          if (*(v16 + 84) == v3)
          {
            v6 = v15;
            v10 = v2[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1E0, &qword_267A87D88);
            OUTLINED_FUNCTION_11_0();
            if (*(v18 + 84) == v3)
            {
              v6 = v17;
              v10 = v2[9];
            }

            else
            {
              v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
              v10 = v2[10];
            }
          }
        }
      }
    }

    v7 = v1 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

void sub_2679D05A8(uint64_t a1)
{
  sub_2676FC800(319, &qword_2801D5018, &qword_2801D4F30, &unk_267A8F140);
  if (v1 <= 0x3F)
  {
    sub_2676FC800(319, &qword_2801D5020, &qword_2801D4F28, &unk_267A423A0);
    if (v2 <= 0x3F)
    {
      sub_2676FC800(319, &qword_2801D5028, &qword_2801D4F20, &unk_267A8F170);
      if (v3 <= 0x3F)
      {
        sub_2676FC800(319, &qword_2801D5030, &qword_2801D4F18, &unk_267A423D0);
        if (v4 <= 0x3F)
        {
          sub_2676FC800(319, &qword_2801D5038, &qword_2801D4F10, &unk_267A8F1A0);
          if (v5 <= 0x3F)
          {
            sub_2676FC800(319, &qword_2801DF210, &qword_2801DF1D8, &qword_267A87D90);
            if (v6 <= 0x3F)
            {
              sub_2676FC800(319, &qword_2801D5048, &qword_2801D4F08, &unk_267A8F1D0);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2679D0760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1E0, &qword_267A87D88);
  OUTLINED_FUNCTION_11_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2679D0824()
{
  OUTLINED_FUNCTION_6_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF1E0, &qword_267A87D88);
  OUTLINED_FUNCTION_11_0();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
    v7 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

void sub_2679D08D0(uint64_t a1)
{
  sub_2676FC800(319, &qword_2801DF210, &qword_2801DF1D8, &qword_267A87D90);
  if (v1 <= 0x3F)
  {
    sub_2676FC800(319, &qword_2801D5060, &qword_2801D5068, &qword_267A42620);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_20_4()
{

  return type metadata accessor for CommonMessage.MessageAttribute(0);
}

uint64_t sub_2679D0AC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF278, &qword_267A87F58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A42DC0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x8000000267A97810;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x8000000267A97810;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x507473694C6F7375;
  *(inited + 96) = 0xEF6E6F697469736FLL;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x507473694C6F7375;
  *(inited + 120) = 0xEF6E6F697469736FLL;
  *(inited + 128) = swift_getKeyPath();
  strcpy((inited + 136), "usoQuantifier");
  *(inited + 150) = -4864;
  *(inited + 152) = swift_getKeyPath();
  strcpy((inited + 160), "usoQuantifier");
  *(inited + 174) = -4864;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000010;
  *(inited + 192) = 0x8000000267A97830;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000010;
  *(inited + 216) = 0x8000000267A97830;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000012;
  *(inited + 240) = 0x8000000267A97850;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000012;
  *(inited + 264) = 0x8000000267A97850;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0x41656D61536F7375;
  *(inited + 288) = 0xE900000000000073;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x41656D61536F7375;
  *(inited + 312) = 0xE900000000000073;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0xD000000000000012;
  *(inited + 336) = 0x8000000267A97870;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF280, &qword_267A88190);
  sub_267A41C04();
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(0);
  return sub_267A41914();
}

uint64_t static CommonPayments.CurrencyAmountAttribute.definition.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2801D4B50 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF258, &qword_267A87E98);
  __swift_project_value_buffer(v2, qword_2801DF228);
  OUTLINED_FUNCTION_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_2679D0E20(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_allocate_value_buffer(v7, a4);
  __swift_project_value_buffer(v7, a4);
  return a5();
}

uint64_t sub_2679D0E7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF268, &qword_267A87EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x797469746E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF270, &qword_267A87F50);
  sub_267A41C04();
  type metadata accessor for CommonPayments.CurrencyAmountAttribute.NoVerb(0);
  return sub_267A41914();
}

uint64_t static CommonPayments.CurrencyAmountAttribute.NoVerb.definition.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2801D4B58 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF260, &qword_267A87EA0);
  __swift_project_value_buffer(v2, qword_2801DF240);
  OUTLINED_FUNCTION_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_2679D1190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  sub_2676F8AF4(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t sub_2679D13FC@<X0>(uint64_t *a1@<X8>)
{
  result = CommonPayments.CurrencyAmountAttribute.NoVerb.userEntities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2679D1FC8@<X0>(uint64_t *a1@<X8>)
{
  result = CommonPayments.CurrencyAmountAttribute.NoVerb.userEntities.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2679D1FF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CommonPayments.CurrencyAmountAttribute.usoAssociatedApp.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);

  return sub_267A41984();
}

uint64_t CommonPayments.CurrencyAmountAttribute.$usoAssociatedApp.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);

  return sub_267A419A4();
}

uint64_t CommonPayments.CurrencyAmountAttribute.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A423A0);
}

uint64_t sub_2679D237C(void (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  a1(0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return a4(v7);
}

uint64_t CommonPayments.CurrencyAmountAttribute.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonPayments.CurrencyAmountAttribute.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A8F170);
}

uint64_t sub_2679D25EC()
{
  OUTLINED_FUNCTION_20_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonPayments.CurrencyAmountAttribute.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonPayments.CurrencyAmountAttribute.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A423D0);
}

uint64_t sub_2679D283C()
{
  OUTLINED_FUNCTION_20_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonPayments.CurrencyAmountAttribute.$usoReferenceType.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonPayments.CurrencyAmountAttribute.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A8F1A0);
}

uint64_t sub_2679D2A8C()
{
  OUTLINED_FUNCTION_20_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonPayments.CurrencyAmountAttribute.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonPayments.CurrencyAmountAttribute.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF2B0, &qword_267A88318);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &qword_267A88320);
}

uint64_t sub_2679D2CDC()
{
  OUTLINED_FUNCTION_20_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF2B0, &qword_267A88318);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonPayments.CurrencyAmountAttribute.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF2B8, &unk_267A88328);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF2B0, &qword_267A88318);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonPayments.CurrencyAmountAttribute.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A8F1D0);
}

uint64_t sub_2679D2F2C()
{
  OUTLINED_FUNCTION_20_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonPayments.CurrencyAmountAttribute.$usoSpatialPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonPayments.CurrencyAmountAttribute.NoVerb.entity.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF2B0, &qword_267A88318);

  return sub_267A41984();
}

uint64_t sub_2679D3110(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3(v10);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v11);
  sub_2676F8AF4(a1, &v14 - v12, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_267A41994();
  return sub_2676F8798(a1, a2, a3);
}

uint64_t CommonPayments.CurrencyAmountAttribute.NoVerb.$entity.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF2B0, &qword_267A88318);

  return sub_267A419A4();
}

uint64_t sub_2679D328C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_0();
  v10 = v9;
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v11);
  (*(v10 + 16))(&v14 - v12, a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_267A419B4();
  return (*(v10 + 8))(a1, v8);
}

uint64_t CommonPayments.CurrencyAmountAttribute.NoVerb.userEntities.getter()
{
  type metadata accessor for CommonPayments.CurrencyAmountAttribute.NoVerb(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  sub_267A41984();
  return v1;
}

uint64_t CommonPayments.CurrencyAmountAttribute.NoVerb.userEntities.setter(uint64_t a1)
{
  type metadata accessor for CommonPayments.CurrencyAmountAttribute.NoVerb(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  return sub_267A41994();
}

uint64_t sub_2679D34DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

uint64_t CommonPayments.CurrencyAmountAttribute.NoVerb.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute.NoVerb(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t (*CommonPayments.CurrencyAmountAttribute.NoVerb.entity.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF2B0, &qword_267A88318);
  v2[4] = sub_267A41974();
  return sub_2676FC854;
}

uint64_t CommonPayments.CurrencyAmountAttribute.NoVerb.$entity.modify()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_5_0(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF2B8, &unk_267A88328);
  OUTLINED_FUNCTION_3_0(v2);
  v0[2] = v3;
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15(v5);
  v7 = __swift_coroFrameAllocStub(v6);
  v8 = OUTLINED_FUNCTION_17(v7);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF2B0, &qword_267A88318);
  sub_267A419A4();
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonPayments.CurrencyAmountAttribute.NoVerb.userEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute.NoVerb(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonPayments.CurrencyAmountAttribute.NoVerb.$userEntities.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonPayments.CurrencyAmountAttribute.NoVerb(v11) + 20);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonPayments.CurrencyAmountAttribute.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  v2[4] = sub_267A41974();
  return sub_2676FC854;
}

uint64_t CommonPayments.CurrencyAmountAttribute.$usoAssociatedApp.modify()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_5_0(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_3_0(v2);
  v0[2] = v3;
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15(v5);
  v7 = __swift_coroFrameAllocStub(v6);
  v8 = OUTLINED_FUNCTION_17(v7);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  sub_267A419A4();
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonPayments.CurrencyAmountAttribute.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonPayments.CurrencyAmountAttribute.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonPayments.CurrencyAmountAttribute(v11) + 20);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonPayments.CurrencyAmountAttribute.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FA8FC;
}

uint64_t CommonPayments.CurrencyAmountAttribute.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonPayments.CurrencyAmountAttribute(v11) + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonPayments.CurrencyAmountAttribute.usoReferenceType.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonPayments.CurrencyAmountAttribute.$usoReferenceType.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonPayments.CurrencyAmountAttribute(v11) + 28);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonPayments.CurrencyAmountAttribute.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonPayments.CurrencyAmountAttribute.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonPayments.CurrencyAmountAttribute(v11) + 32);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonPayments.CurrencyAmountAttribute.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF2B0, &qword_267A88318);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonPayments.CurrencyAmountAttribute.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF2B8, &unk_267A88328);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonPayments.CurrencyAmountAttribute(v11) + 36);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF2B0, &qword_267A88318);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonPayments.CurrencyAmountAttribute.usoSpatialPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonPayments.CurrencyAmountAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonPayments.CurrencyAmountAttribute.$usoSpatialPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonPayments.CurrencyAmountAttribute(v11) + 40);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t sub_2679D434C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for CommonPayments(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2679D474CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2679D4798(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_11_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
    OUTLINED_FUNCTION_11_0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
      OUTLINED_FUNCTION_11_0();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
        OUTLINED_FUNCTION_11_0();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
          OUTLINED_FUNCTION_11_0();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF2B0, &qword_267A88318);
            OUTLINED_FUNCTION_11_0();
            if (*(v20 + 84) == a2)
            {
              v8 = v19;
              v12 = a3[9];
            }

            else
            {
              v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
              v12 = a3[10];
            }
          }
        }
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2679D49D8()
{
  OUTLINED_FUNCTION_6_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_11_0();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
    OUTLINED_FUNCTION_11_0();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
      OUTLINED_FUNCTION_11_0();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
        OUTLINED_FUNCTION_11_0();
        if (*(v14 + 84) == v3)
        {
          v6 = v13;
          v10 = v2[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
          OUTLINED_FUNCTION_11_0();
          if (*(v16 + 84) == v3)
          {
            v6 = v15;
            v10 = v2[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF2B0, &qword_267A88318);
            OUTLINED_FUNCTION_11_0();
            if (*(v18 + 84) == v3)
            {
              v6 = v17;
              v10 = v2[9];
            }

            else
            {
              v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
              v10 = v2[10];
            }
          }
        }
      }
    }

    v7 = v1 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

void sub_2679D4C00(uint64_t a1)
{
  sub_2676FC800(319, &qword_2801D5018, &qword_2801D4F30, &unk_267A8F140);
  if (v1 <= 0x3F)
  {
    sub_2676FC800(319, &qword_2801D5020, &qword_2801D4F28, &unk_267A423A0);
    if (v2 <= 0x3F)
    {
      sub_2676FC800(319, &qword_2801D5028, &qword_2801D4F20, &unk_267A8F170);
      if (v3 <= 0x3F)
      {
        sub_2676FC800(319, &qword_2801D5030, &qword_2801D4F18, &unk_267A423D0);
        if (v4 <= 0x3F)
        {
          sub_2676FC800(319, &qword_2801D5038, &qword_2801D4F10, &unk_267A8F1A0);
          if (v5 <= 0x3F)
          {
            sub_2676FC800(319, &qword_2801DF2E0, &qword_2801DF2A8, &qword_267A88320);
            if (v6 <= 0x3F)
            {
              sub_2676FC800(319, &qword_2801D5048, &qword_2801D4F08, &unk_267A8F1D0);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2679D4DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF2B0, &qword_267A88318);
  OUTLINED_FUNCTION_11_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_2679D4E7C()
{
  OUTLINED_FUNCTION_6_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF2B0, &qword_267A88318);
  OUTLINED_FUNCTION_11_0();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
    v7 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

void sub_2679D4F28(uint64_t a1)
{
  sub_2676FC800(319, &qword_2801DF2E0, &qword_2801DF2A8, &qword_267A88320);
  if (v1 <= 0x3F)
  {
    sub_2676FC800(319, &qword_2801D5060, &qword_2801D5068, &qword_267A42620);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_20_5()
{

  return type metadata accessor for CommonPayments.CurrencyAmountAttribute(0);
}

uint64_t sub_2679D5118()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF408, &qword_267A88B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF410, &qword_267A88E18);
  sub_267A41C04();
  type metadata accessor for CommonStock.StockAttribute(0);
  return sub_267A41914();
}

uint64_t static CommonStock.StockAttribute.definition.getter()
{
  if (qword_2801D4B60 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF388, &qword_267A88430);
  __swift_project_value_buffer(v0, qword_2801DF2F8);
  OUTLINED_FUNCTION_0();
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679D54BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF3F8, &qword_267A88900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF400, &qword_267A88B88);
  sub_267A41C04();
  type metadata accessor for CommonStock.StockChangeState(0);
  return sub_267A41914();
}

uint64_t static CommonStock.StockChangeState.definition.getter()
{
  if (qword_2801D4B68 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF390, &qword_267A88438);
  __swift_project_value_buffer(v0, qword_2801DF310);
  OUTLINED_FUNCTION_0();
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679D585C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF3E8, &qword_267A88670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF3F0, &qword_267A888F8);
  sub_267A41C04();
  type metadata accessor for CommonStock.StockType(0);
  return sub_267A41914();
}

uint64_t static CommonStock.StockType.definition.getter()
{
  if (qword_2801D4B70 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF398, &qword_267A88440);
  __swift_project_value_buffer(v0, qword_2801DF328);
  OUTLINED_FUNCTION_0();
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679D5C00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF3D8, &qword_267A885C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x797469746E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF3E0, &qword_267A88668);
  sub_267A41C04();
  type metadata accessor for CommonStock.StockAttribute.NoVerb(0);
  return sub_267A41914();
}

uint64_t static CommonStock.StockAttribute.NoVerb.definition.getter()
{
  if (qword_2801D4B78 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF3A0, &qword_267A88448);
  __swift_project_value_buffer(v0, qword_2801DF340);
  OUTLINED_FUNCTION_0();
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679D5E18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF3C8, &qword_267A88510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x797469746E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF3D0, &qword_267A885B8);
  sub_267A41C04();
  type metadata accessor for CommonStock.StockChangeState.NoVerb(0);
  return sub_267A41914();
}

uint64_t static CommonStock.StockChangeState.NoVerb.definition.getter()
{
  if (qword_2801D4B80 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF3A8, &qword_267A88450);
  __swift_project_value_buffer(v0, qword_2801DF358);
  OUTLINED_FUNCTION_0();
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679D6030(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_allocate_value_buffer(v7, a4);
  __swift_project_value_buffer(v7, a4);
  return a5();
}

uint64_t sub_2679D608C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF3B8, &qword_267A88460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E30;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x797469746E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "userEntities");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 104) = swift_getKeyPath();
  strcpy((inited + 112), "userEntities");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF3C0, &qword_267A88508);
  sub_267A41C04();
  type metadata accessor for CommonStock.StockType.NoVerb(0);
  return sub_267A41914();
}

uint64_t static CommonStock.StockType.NoVerb.definition.getter()
{
  if (qword_2801D4B88 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF3B0, &qword_267A88458);
  __swift_project_value_buffer(v0, qword_2801DF370);
  OUTLINED_FUNCTION_0();
  v1 = OUTLINED_FUNCTION_1_2();

  return v2(v1);
}

uint64_t sub_2679D6454()
{
  OUTLINED_FUNCTION_134();
  result = CommonStock.StockAttribute.definedValue.getter();
  *v0 = v2;
  return result;
}

uint64_t sub_2679D654C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  sub_2676F8AF4(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t sub_2679D676C()
{
  OUTLINED_FUNCTION_134();
  result = CommonStock.StockChangeState.definedValue.getter();
  *v0 = v2;
  return result;
}

uint64_t sub_2679D69E0()
{
  OUTLINED_FUNCTION_134();
  result = CommonStock.StockType.definedValue.getter();
  *v0 = v2;
  return result;
}

uint64_t sub_2679D6CA0()
{
  OUTLINED_FUNCTION_239();
  result = CommonStock.StockAttribute.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679D6D40()
{
  OUTLINED_FUNCTION_239();
  result = CommonStock.StockChangeState.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679D6DE0()
{
  OUTLINED_FUNCTION_239();
  result = CommonStock.StockType.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679D87C0()
{
  OUTLINED_FUNCTION_239();
  result = CommonStock.StockAttribute.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679D89FC()
{
  OUTLINED_FUNCTION_239();
  result = CommonStock.StockChangeState.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_2679D8C38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2679D8C80()
{
  OUTLINED_FUNCTION_239();
  result = CommonStock.StockType.NoVerb.userEntities.getter();
  *v0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_3()
{
  v4 = *(v2 - 144);
  v5 = *(v2 - 152);

  return sub_2676F8AF4(v4, v5, v1, v0);
}

uint64_t OUTLINED_FUNCTION_49_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 - 136);
  v7 = *(v4 - 160);

  return sub_2676F8AF4(v6, v7, a3, a4);
}

uint64_t OUTLINED_FUNCTION_63_1()
{

  return sub_2676F8798(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_64_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v5 - 128);

  return sub_2676F8AF4(v7, v4, a3, a4);
}

uint64_t CommonStock.StockAttribute.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF470, &qword_267A89310);

  return sub_267A41984();
}

uint64_t CommonStock.StockAttribute.$definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF470, &qword_267A89310);

  return sub_267A419A4();
}

uint64_t sub_2679D922C()
{
  v3 = OUTLINED_FUNCTION_2_4();
  v4(v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
  return v0(v5);
}

uint64_t sub_2679D9358()
{
  v1 = OUTLINED_FUNCTION_9_4();
  v2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t sub_2679D9480()
{
  v1 = OUTLINED_FUNCTION_9_4();
  v2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t sub_2679D95A8()
{
  v1 = OUTLINED_FUNCTION_9_4();
  v2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t sub_2679D96D0()
{
  v1 = OUTLINED_FUNCTION_9_4();
  v2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonStock.StockAttribute.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_60_1();
  type metadata accessor for CommonStock.StockAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF480, &qword_267A89328);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  return OUTLINED_FUNCTION_76_1();
}

uint64_t sub_2679D98A8()
{
  v3 = OUTLINED_FUNCTION_2_4();
  v4(v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
  return v0(v5);
}

uint64_t CommonStock.StockAttribute.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF488, &unk_267A89338);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonStock.StockAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF480, &qword_267A89328);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t sub_2679D9AA0()
{
  v1 = OUTLINED_FUNCTION_9_4();
  v2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonStock.StockChangeState.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF490, &qword_267A89348);

  return sub_267A41984();
}

uint64_t CommonStock.StockChangeState.$definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF490, &qword_267A89348);

  return sub_267A419A4();
}

uint64_t sub_2679D9CE0()
{
  OUTLINED_FUNCTION_48_1();
  v1 = OUTLINED_FUNCTION_45_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_6(v5, v10);
  v0(0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_24_4(v6);
  v7 = OUTLINED_FUNCTION_32_2();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t sub_2679D9E28()
{
  OUTLINED_FUNCTION_44_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  v3 = OUTLINED_FUNCTION_0_10(v2, v8);
  v4(v3);
  v0(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_21_2();
  v5 = OUTLINED_FUNCTION_8_6();
  return v6(v5);
}

uint64_t sub_2679D9F4C()
{
  OUTLINED_FUNCTION_48_1();
  v1 = OUTLINED_FUNCTION_45_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_6(v5, v10);
  v0(0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_24_4(v6);
  v7 = OUTLINED_FUNCTION_32_2();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t sub_2679DA084()
{
  OUTLINED_FUNCTION_44_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  v3 = OUTLINED_FUNCTION_0_10(v2, v8);
  v4(v3);
  v0(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_21_2();
  v5 = OUTLINED_FUNCTION_8_6();
  return v6(v5);
}

uint64_t sub_2679DA1A8()
{
  OUTLINED_FUNCTION_48_1();
  v1 = OUTLINED_FUNCTION_45_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_6(v5, v10);
  v0(0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_24_4(v6);
  v7 = OUTLINED_FUNCTION_32_2();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t sub_2679DA2E0()
{
  OUTLINED_FUNCTION_44_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  v3 = OUTLINED_FUNCTION_0_10(v2, v8);
  v4(v3);
  v0(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_21_2();
  v5 = OUTLINED_FUNCTION_8_6();
  return v6(v5);
}

uint64_t sub_2679DA404()
{
  OUTLINED_FUNCTION_48_1();
  v1 = OUTLINED_FUNCTION_45_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_6(v5, v10);
  v0(0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_24_4(v6);
  v7 = OUTLINED_FUNCTION_32_2();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t sub_2679DA53C()
{
  OUTLINED_FUNCTION_44_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  v3 = OUTLINED_FUNCTION_0_10(v2, v8);
  v4(v3);
  v0(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_21_2();
  v5 = OUTLINED_FUNCTION_8_6();
  return v6(v5);
}

uint64_t sub_2679DA660()
{
  OUTLINED_FUNCTION_48_1();
  v1 = OUTLINED_FUNCTION_45_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_6(v5, v10);
  v0(0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_24_4(v6);
  v7 = OUTLINED_FUNCTION_32_2();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t sub_2679DA798()
{
  OUTLINED_FUNCTION_44_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  v3 = OUTLINED_FUNCTION_0_10(v2, v8);
  v4(v3);
  v0(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_21_2();
  v5 = OUTLINED_FUNCTION_8_6();
  return v6(v5);
}

uint64_t CommonStock.StockChangeState.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_60_1();
  type metadata accessor for CommonStock.StockChangeState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBF10, &unk_267A7A240);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  return OUTLINED_FUNCTION_76_1();
}

uint64_t CommonStock.StockChangeState.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBF18, &qword_267A7A250);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonStock.StockChangeState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBF10, &unk_267A7A240);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t sub_2679DAB0C()
{
  OUTLINED_FUNCTION_48_1();
  v1 = OUTLINED_FUNCTION_45_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_6(v5, v10);
  v0(0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_24_4(v6);
  v7 = OUTLINED_FUNCTION_32_2();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t sub_2679DAC44()
{
  OUTLINED_FUNCTION_44_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  v3 = OUTLINED_FUNCTION_0_10(v2, v8);
  v4(v3);
  v0(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_21_2();
  v5 = OUTLINED_FUNCTION_8_6();
  return v6(v5);
}

uint64_t CommonStock.StockType.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF4A0, &qword_267A89370);

  return sub_267A41984();
}

uint64_t CommonStock.StockType.$definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF4A0, &qword_267A89370);

  return sub_267A419A4();
}

uint64_t CommonStock.StockType.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_60_1();
  type metadata accessor for CommonStock.StockType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBE10, &unk_267A89380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  return OUTLINED_FUNCTION_76_1();
}

uint64_t CommonStock.StockType.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBE18, &qword_267A89390);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonStock.StockType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBE10, &unk_267A89380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonStock.StockAttribute.NoVerb.entity.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF480, &qword_267A89328);

  return sub_267A41984();
}

uint64_t CommonStock.StockAttribute.NoVerb.$entity.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF480, &qword_267A89328);

  return sub_267A419A4();
}

uint64_t CommonStock.StockAttribute.NoVerb.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonStock.StockAttribute.NoVerb(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonStock.StockChangeState.NoVerb.entity.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBF10, &unk_267A7A240);

  return sub_267A41984();
}

uint64_t sub_2679DB90C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = OUTLINED_FUNCTION_2857(a1, a2, a3);
  OUTLINED_FUNCTION_3(v10);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v11);
  sub_2676F8AF4(a1, &v14 - v12, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_267A41994();
  return sub_2678A9230(a1, a2, a3);
}

uint64_t CommonStock.StockChangeState.NoVerb.$entity.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBF10, &unk_267A7A240);

  return sub_267A419A4();
}

uint64_t sub_2679DBA98(uint64_t (*a1)(void))
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  sub_267A41984();
  return v2;
}

uint64_t sub_2679DBB2C(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  return sub_267A41994();
}

uint64_t CommonStock.StockChangeState.NoVerb.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonStock.StockChangeState.NoVerb(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonStock.StockType.NoVerb.entity.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBE10, &unk_267A89380);

  return sub_267A41984();
}

uint64_t CommonStock.StockType.NoVerb.$entity.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBE10, &unk_267A89380);

  return sub_267A419A4();
}

uint64_t sub_2679DBE18(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = OUTLINED_FUNCTION_2857(a1, a2, a3);
  OUTLINED_FUNCTION_4_0();
  v10 = v9;
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v11);
  (*(v10 + 16))(&v16 - v12, a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_267A419B4();
  v13 = OUTLINED_FUNCTION_45_1();
  return v14(v13);
}

uint64_t sub_2679DBFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

uint64_t CommonStock.StockType.NoVerb.$userEntities.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonStock.StockType.NoVerb(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

SiriMailOntology::CommonStock::StockAttribute::DefinedValue_optional __swiftcall CommonStock.StockAttribute.DefinedValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_267A41C64();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

void sub_2679DC4F8(void *a1@<X8>)
{
  CommonStock.StockAttribute.DefinedValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t (*CommonStock.StockAttribute.NoVerb.entity.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF480, &qword_267A89328);
  *(v0 + 32) = OUTLINED_FUNCTION_110_0(v3);
  return sub_2676FC854;
}

uint64_t CommonStock.StockAttribute.NoVerb.$entity.modify()
{
  v1 = OUTLINED_FUNCTION_34_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF488, &unk_267A89338);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_26_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF480, &qword_267A89328);
  OUTLINED_FUNCTION_109_0(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockAttribute.NoVerb.userEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockAttribute.NoVerb(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockAttribute.NoVerb.$userEntities.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v12 = type metadata accessor for CommonStock.StockAttribute.NoVerb(v11);
  OUTLINED_FUNCTION_33_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_13(v13);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockAttribute.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF470, &qword_267A89310);
  *(v0 + 32) = OUTLINED_FUNCTION_110_0(v3);
  return sub_2676FC854;
}

uint64_t CommonStock.StockAttribute.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_34_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF478, &unk_267A89318);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_26_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF470, &qword_267A89310);
  OUTLINED_FUNCTION_109_0(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockAttribute.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockAttribute.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v12 = type metadata accessor for CommonStock.StockAttribute(v11);
  OUTLINED_FUNCTION_33_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_13(v13);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockAttribute.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockAttribute.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonStock.StockAttribute(v11) + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockAttribute.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockAttribute.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonStock.StockAttribute(v11) + 28);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockAttribute.usoReferenceType.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockAttribute.$usoReferenceType.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonStock.StockAttribute(v11) + 32);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockAttribute.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockAttribute.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonStock.StockAttribute(v11) + 36);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockAttribute.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF480, &qword_267A89328);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockAttribute.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF488, &unk_267A89338);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonStock.StockAttribute(v11) + 40);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF480, &qword_267A89328);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockAttribute.usoSpatialPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockAttribute(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockAttribute.$usoSpatialPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonStock.StockAttribute(v11) + 44);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

SiriMailOntology::CommonStock::StockChangeState::DefinedValue_optional __swiftcall CommonStock.StockChangeState.DefinedValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_267A41C44();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_2679DD398(void *a1@<X8>)
{
  CommonStock.StockChangeState.DefinedValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t (*CommonStock.StockChangeState.NoVerb.entity.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBF10, &unk_267A7A240);
  *(v0 + 32) = OUTLINED_FUNCTION_110_0(v3);
  return sub_2676FC854;
}

uint64_t CommonStock.StockChangeState.NoVerb.$entity.modify()
{
  v1 = OUTLINED_FUNCTION_34_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBF18, &qword_267A7A250);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_26_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBF10, &unk_267A7A240);
  OUTLINED_FUNCTION_109_0(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockChangeState.NoVerb.userEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockChangeState.NoVerb(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockChangeState.NoVerb.$userEntities.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v12 = type metadata accessor for CommonStock.StockChangeState.NoVerb(v11);
  OUTLINED_FUNCTION_33_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_13(v13);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockChangeState.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF490, &qword_267A89348);
  *(v0 + 32) = OUTLINED_FUNCTION_110_0(v3);
  return sub_2676FA8FC;
}

uint64_t CommonStock.StockChangeState.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_34_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF498, &unk_267A89350);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_26_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF490, &qword_267A89348);
  OUTLINED_FUNCTION_109_0(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockChangeState.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockChangeState(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockChangeState.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v12 = type metadata accessor for CommonStock.StockChangeState(v11);
  OUTLINED_FUNCTION_33_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_13(v13);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockChangeState.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockChangeState(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockChangeState.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonStock.StockChangeState(v11) + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockChangeState.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockChangeState(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockChangeState.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonStock.StockChangeState(v11) + 28);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockChangeState.usoReferenceType.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockChangeState(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockChangeState.$usoReferenceType.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonStock.StockChangeState(v11) + 32);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockChangeState.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockChangeState(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockChangeState.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonStock.StockChangeState(v11) + 36);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockChangeState.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockChangeState(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBF10, &unk_267A7A240);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockChangeState.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBF18, &qword_267A7A250);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonStock.StockChangeState(v11) + 40);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBF10, &unk_267A7A240);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockChangeState.usoSpatialPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockChangeState(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockChangeState.$usoSpatialPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonStock.StockChangeState(v11) + 44);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

SiriMailOntology::CommonStock::StockType::DefinedValue_optional __swiftcall CommonStock.StockType.DefinedValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_267A41C44();

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

  *v2 = v5;
  return result;
}

void sub_2679DE1F4(void *a1@<X8>)
{
  CommonStock.StockType.DefinedValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t (*CommonStock.StockType.NoVerb.entity.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBE10, &unk_267A89380);
  *(v0 + 32) = OUTLINED_FUNCTION_110_0(v3);
  return sub_2676FC854;
}

uint64_t CommonStock.StockType.NoVerb.$entity.modify()
{
  v1 = OUTLINED_FUNCTION_34_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBE18, &qword_267A89390);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_26_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBE10, &unk_267A89380);
  OUTLINED_FUNCTION_109_0(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockType.NoVerb.userEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockType.NoVerb(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockType.NoVerb.$userEntities.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v12 = type metadata accessor for CommonStock.StockType.NoVerb(v11);
  OUTLINED_FUNCTION_33_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_13(v13);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockType.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF4A0, &qword_267A89370);
  *(v0 + 32) = OUTLINED_FUNCTION_110_0(v3);
  return sub_2676FC854;
}

uint64_t CommonStock.StockType.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_34_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF4A8, &qword_267A89378);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_26_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF4A0, &qword_267A89370);
  OUTLINED_FUNCTION_109_0(v11);
  return OUTLINED_FUNCTION_18();
}

void sub_2679DE5F8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v14 = v3[5];
  v6 = v3[3];
  v5 = v3[4];
  v7 = v3[1];
  v8 = v3[2];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    sub_267A419B4();
    v9 = *(v8 + 8);
    v9(v5, v7);
    v10 = v14;
    v11 = OUTLINED_FUNCTION_24_11();
    (v9)(v11);
  }

  else
  {
    sub_267A419B4();
    v10 = v14;
    v12 = OUTLINED_FUNCTION_24_11();
    v13(v12);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t (*CommonStock.StockType.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockType(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockType.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  v12 = type metadata accessor for CommonStock.StockType(v11);
  OUTLINED_FUNCTION_33_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_13(v13);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockType.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockType(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockType.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonStock.StockType(v11) + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockType.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockType(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockType.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonStock.StockType(v11) + 28);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockType.usoReferenceType.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockType(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockType.$usoReferenceType.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonStock.StockType(v11) + 32);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockType.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockType(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockType.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonStock.StockType(v11) + 36);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockType.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockType(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBE10, &unk_267A89380);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockType.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBE18, &qword_267A89390);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonStock.StockType(v11) + 40);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DBE10, &unk_267A89380);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonStock.StockType.usoSpatialPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  type metadata accessor for CommonStock.StockType(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v4);
  return sub_2676FC854;
}

uint64_t CommonStock.StockType.$usoSpatialPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_7_0(v10);
  *(v0 + 56) = *(type metadata accessor for CommonStock.StockType(v11) + 44);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_13(v12);
  return OUTLINED_FUNCTION_18();
}

void sub_2679DF098(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v14 = v3[5];
  v6 = v3[3];
  v5 = v3[4];
  v7 = v3[1];
  v8 = v3[2];
  if (a2)
  {
    v4(v3[3], v5, v7);
    sub_267A419B4();
    v9 = *(v8 + 8);
    v9(v5, v7);
    v10 = v14;
    v11 = OUTLINED_FUNCTION_24_11();
    (v9)(v11);
  }

  else
  {
    sub_267A419B4();
    v10 = v14;
    v12 = OUTLINED_FUNCTION_24_11();
    v13(v12);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

unint64_t sub_2679DF1C8()
{
  result = qword_2801DF4B0;
  if (!qword_2801DF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801DF4B0);
  }

  return result;
}

uint64_t sub_2679DF2AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2679DF2F8()
{
  result = qword_2801DF4C8;
  if (!qword_2801DF4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801DF4C8);
  }

  return result;
}

unint64_t sub_2679DF350()
{
  result = qword_2801DF4D0;
  if (!qword_2801DF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801DF4D0);
  }

  return result;
}

unint64_t sub_2679DF438()
{
  result = qword_2801DF4E8;
  if (!qword_2801DF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801DF4E8);
  }

  return result;
}

unint64_t sub_2679DF490()
{
  result = qword_2801DF4F0;
  if (!qword_2801DF4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801DF4F0);
  }

  return result;
}

unint64_t sub_2679DF578()
{
  result = qword_2801DF508;
  if (!qword_2801DF508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801DF508);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CommonStock(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2679E00BCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2679E0164(uint64_t a1)
{
  sub_2676FC800(319, &qword_2801DF520, &qword_2801DF528, &qword_267A897F0);
  if (v1 <= 0x3F)
  {
    sub_2676FC800(319, &qword_2801D5018, &qword_2801D4F30, &unk_267A8F140);
    if (v2 <= 0x3F)
    {
      sub_2676FC800(319, &qword_2801D5020, &qword_2801D4F28, &unk_267A423A0);
      if (v3 <= 0x3F)
      {
        sub_2676FC800(319, &qword_2801D5028, &qword_2801D4F20, &unk_267A8F170);
        if (v4 <= 0x3F)
        {
          sub_2676FC800(319, &qword_2801D5030, &qword_2801D4F18, &unk_267A423D0);
          if (v5 <= 0x3F)
          {
            sub_2676FC800(319, &qword_2801D5038, &qword_2801D4F10, &unk_267A8F1A0);
            if (v6 <= 0x3F)
            {
              sub_2676FC800(319, &qword_2801DF530, &qword_2801DF468, &qword_267A89330);
              if (v7 <= 0x3F)
              {
                sub_2676FC800(319, &qword_2801D5048, &qword_2801D4F08, &unk_267A8F1D0);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CommonStock.StockAttribute.DefinedValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CommonStock.StockAttribute.DefinedValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
        JUMPOUT(0x2679E048CLL);
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

void sub_2679E05A0(uint64_t a1)
{
  sub_2676FC800(319, &qword_2801DF558, &qword_2801DF560, &qword_267A89878);
  if (v1 <= 0x3F)
  {
    sub_2676FC800(319, &qword_2801D5018, &qword_2801D4F30, &unk_267A8F140);
    if (v2 <= 0x3F)
    {
      sub_2676FC800(319, &qword_2801D5020, &qword_2801D4F28, &unk_267A423A0);
      if (v3 <= 0x3F)
      {
        sub_2676FC800(319, &qword_2801D5028, &qword_2801D4F20, &unk_267A8F170);
        if (v4 <= 0x3F)
        {
          sub_2676FC800(319, &qword_2801D5030, &qword_2801D4F18, &unk_267A423D0);
          if (v5 <= 0x3F)
          {
            sub_2676FC800(319, &qword_2801D5038, &qword_2801D4F10, &unk_267A8F1A0);
            if (v6 <= 0x3F)
            {
              sub_2676FC800(319, &qword_2801DEA18, &qword_2801DB118, &unk_267A89360);
              if (v7 <= 0x3F)
              {
                sub_2676FC800(319, &qword_2801D5048, &qword_2801D4F08, &unk_267A8F1D0);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CommonStock.StockChangeState.DefinedValue(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2679E0840);
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

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  OUTLINED_FUNCTION_78_1(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_11_0();
  if (*(v13 + 84) == v7)
  {
    v14 = v12;
    v15 = v8;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
    OUTLINED_FUNCTION_11_0();
    if (*(v17 + 84) == v7)
    {
      v14 = v16;
      v18 = v9[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
      OUTLINED_FUNCTION_11_0();
      if (*(v20 + 84) == v7)
      {
        v14 = v19;
        v18 = v9[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
        OUTLINED_FUNCTION_11_0();
        if (*(v22 + 84) == v7)
        {
          v14 = v21;
          v18 = v9[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
          OUTLINED_FUNCTION_11_0();
          if (*(v24 + 84) == v7)
          {
            v14 = v23;
            v18 = v9[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
            OUTLINED_FUNCTION_11_0();
            if (*(v26 + 84) == v7)
            {
              v14 = v25;
              v18 = v9[9];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
              OUTLINED_FUNCTION_11_0();
              if (*(v28 + 84) == v7)
              {
                v14 = v27;
                v18 = v9[10];
              }

              else
              {
                v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
                v18 = v9[11];
              }
            }
          }
        }
      }
    }

    v15 = v8 + v18;
  }

  return __swift_getEnumTagSinglePayload(v15, v7, v14);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  OUTLINED_FUNCTION_66_1(a1, a2, a3, a4, a5, a6);
  OUTLINED_FUNCTION_11_0();
  if (*(v15 + 84) == v11)
  {
    v16 = v14;
    v17 = v9;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
    OUTLINED_FUNCTION_11_0();
    if (*(v19 + 84) == v11)
    {
      v16 = v18;
      v20 = v10[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
      OUTLINED_FUNCTION_11_0();
      if (*(v22 + 84) == v11)
      {
        v16 = v21;
        v20 = v10[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
        OUTLINED_FUNCTION_11_0();
        if (*(v24 + 84) == v11)
        {
          v16 = v23;
          v20 = v10[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
          OUTLINED_FUNCTION_11_0();
          if (*(v26 + 84) == v11)
          {
            v16 = v25;
            v20 = v10[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
            OUTLINED_FUNCTION_11_0();
            if (*(v28 + 84) == v11)
            {
              v16 = v27;
              v20 = v10[9];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
              OUTLINED_FUNCTION_11_0();
              if (*(v30 + 84) == v11)
              {
                v16 = v29;
                v20 = v10[10];
              }

              else
              {
                v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
                v20 = v10[11];
              }
            }
          }
        }
      }
    }

    v17 = v9 + v20;
  }

  return __swift_storeEnumTagSinglePayload(v17, v8, v8, v16);
}

void sub_2679E0E20(uint64_t a1)
{
  sub_2676FC800(319, &qword_2801DF588, &qword_2801DF590, &qword_267A898A0);
  if (v1 <= 0x3F)
  {
    sub_2676FC800(319, &qword_2801D5018, &qword_2801D4F30, &unk_267A8F140);
    if (v2 <= 0x3F)
    {
      sub_2676FC800(319, &qword_2801D5020, &qword_2801D4F28, &unk_267A423A0);
      if (v3 <= 0x3F)
      {
        sub_2676FC800(319, &qword_2801D5028, &qword_2801D4F20, &unk_267A8F170);
        if (v4 <= 0x3F)
        {
          sub_2676FC800(319, &qword_2801D5030, &qword_2801D4F18, &unk_267A423D0);
          if (v5 <= 0x3F)
          {
            sub_2676FC800(319, &qword_2801D5038, &qword_2801D4F10, &unk_267A8F1A0);
            if (v6 <= 0x3F)
            {
              sub_2676FC800(319, &qword_2801DE988, &qword_2801DB360, &unk_267A7A100);
              if (v7 <= 0x3F)
              {
                sub_2676FC800(319, &qword_2801D5048, &qword_2801D4F08, &unk_267A8F1D0);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CommonStock.StockType.DefinedValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CommonStock.StockType.DefinedValue(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2679E1148);
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

uint64_t __swift_get_extra_inhabitant_index_137Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_78_1(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_11_0();
  if (*(v9 + 84) == v5)
  {
    v10 = v8;
    v11 = v6;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
    v11 = v6 + *(v7 + 20);
  }

  return __swift_getEnumTagSinglePayload(v11, v5, v10);
}

uint64_t __swift_store_extra_inhabitant_index_138Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  OUTLINED_FUNCTION_66_1(a1, a2, a3, a4, a5, a6);
  OUTLINED_FUNCTION_11_0();
  if (*(v11 + 84) == v9)
  {
    v12 = v10;
    v13 = v7;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
    v13 = v7 + *(v8 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v13, v6, v6, v12);
}

uint64_t OUTLINED_FUNCTION_60_1()
{

  return sub_2676F8AF4(v0, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_66_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_76_1()
{

  return sub_2678A9230(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_78_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
}

uint64_t sub_2679E1720()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5C0, &qword_267A898B0);
  __swift_allocate_value_buffer(v0, qword_2801DF5A8);
  __swift_project_value_buffer(v0, qword_2801DF5A8);
  return sub_2679E1778();
}

uint64_t sub_2679E1778()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5C8, &qword_267A898B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267A41E20;
  *(inited + 32) = swift_getKeyPath();
  strcpy((inited + 40), "definedValue");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 56) = swift_getKeyPath();
  strcpy((inited + 64), "definedValue");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000267A97810;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0xD000000000000010;
  *(inited + 120) = 0x8000000267A97810;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x507473694C6F7375;
  *(inited + 144) = 0xEF6E6F697469736FLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x507473694C6F7375;
  *(inited + 168) = 0xEF6E6F697469736FLL;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "usoQuantifier");
  *(inited + 198) = -4864;
  *(inited + 200) = swift_getKeyPath();
  strcpy((inited + 208), "usoQuantifier");
  *(inited + 222) = -4864;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x8000000267A97830;
  *(inited + 248) = swift_getKeyPath();
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x8000000267A97830;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x8000000267A97850;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0xD000000000000012;
  *(inited + 312) = 0x8000000267A97850;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x41656D61536F7375;
  *(inited + 336) = 0xE900000000000073;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x41656D61536F7375;
  *(inited + 360) = 0xE900000000000073;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x8000000267A97870;
  *(inited + 392) = swift_getKeyPath();
  *(inited + 400) = 0xD000000000000012;
  *(inited + 408) = 0x8000000267A97870;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5D0, &qword_267A89B40);
  sub_267A41C04();
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  return sub_267A41914();
}

uint64_t static CommonUserEntity.UserEntityAttribute.definition.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2801D4B90 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5C0, &qword_267A898B0);
  v3 = __swift_project_value_buffer(v2, qword_2801DF5A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_2679E1B78@<X0>(_BYTE *a1@<X8>)
{
  result = CommonUserEntity.UserEntityAttribute.definedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_2679E1C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  sub_2676F8AF4(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t sub_2679E27C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2679E28B4()
{
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_10_11();
  v5 = v5 && v0 == v1;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_9_12(v2, v3, v4);
  }

  return v6 & 1;
}

uint64_t sub_2679E2938(unsigned __int8 a1, uint64_t a2)
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_10_11();
  v7 = v7 && v2 == v3;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E2AE4()
{
  OUTLINED_FUNCTION_36_6();
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_70_2(0xD000000000000012, v0, 18);
  }

  return v2 & 1;
}

uint64_t sub_2679E2B5C()
{
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_10_11();
  v5 = v5 && v0 == v1;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_9_12(v2, v3, v4);
  }

  return v6 & 1;
}

uint64_t sub_2679E2BD8()
{
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_10_11();
  v5 = v5 && v0 == v1;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_9_12(v2, v3, v4);
  }

  return v6 & 1;
}

uint64_t sub_2679E2C74(char a1)
{
  v2 = "reUnit_DegreesCelsius";
  switch(a1)
  {
    case 1:
      v2 = "common_Time_Sunrise";
      break;
    case 2:
      v2 = "common_Time_Sunset";
      break;
    case 3:
      v2 = "common_Time_CurrentTime";
      break;
    case 4:
      v2 = "common_Time_Midnight";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E2DE0(char a1)
{
  v2 = "operator_removeFromValue";
  switch(a1)
  {
    case 1:
      v2 = "common_Date_DayBeforeYesterday";
      break;
    case 2:
      v2 = "common_Date_DayAfterTomorrow";
      break;
    case 3:
      v2 = "common_Date_Today";
      break;
    case 4:
      v2 = "common_Date_Tomorrow";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E2F4C()
{
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_10_11();
  v5 = v5 && v0 == v1;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_9_12(v2, v3, v4);
  }

  return v6 & 1;
}

uint64_t sub_2679E2FC8(char a1)
{
  v2 = "common_DateTimeRange_Forenoon";
  switch(a1)
  {
    case 1:
      v2 = "angeQualifier_HalfOf";
      break;
    case 2:
      v2 = "angeQualifier_AllOf";
      break;
    case 3:
      v2 = "angeQualifier_EarlierPartOf";
      break;
    case 4:
      v2 = "angeQualifier_EndOf";
      break;
    case 5:
      v2 = "angeQualifier_LaterPartOf";
      break;
    case 6:
      v2 = "angeQualifier_MiddleOf";
      break;
    case 7:
      v2 = "angeQualifier_RestOf";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E31A4(char a1)
{
  v2 = "tionMode_Together";
  switch(a1)
  {
    case 1:
      v2 = "unicationReceived";
      break;
    case 2:
      v2 = "tionTrigger_EmailSent";
      break;
    case 3:
      v2 = "tionTrigger_FaceTimeSent";
      break;
    case 4:
      v2 = "tionTrigger_TextMessageReceived";
      break;
    case 5:
      v2 = "tionTrigger_TextMessageSent";
      break;
    case 6:
      v2 = "tionTrigger_CallSent";
      break;
    case 7:
      v2 = "tionTrigger_CallReceived";
      break;
    case 8:
      v2 = "tionTrigger_EmailReceived";
      break;
    case 9:
      v2 = "tionTrigger_CommunicationSent";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E33D0(char a1)
{
  v2 = "common_MeasurementUnit_Yard";
  switch(a1)
  {
    case 1:
      v2 = "ntUnitType_SpeedUnit";
      break;
    case 2:
      v2 = "ntUnitType_EnergyUnit";
      break;
    case 3:
      v2 = "ntUnitType_DistanceUnit";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E350C(char a1, char a2)
{
  v2 = "common_Quantifier_More";
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = "DateTime_EveryDay";
    }

    else
    {
      v3 = "DateTime_Weekdays";
    }
  }

  else
  {
    v3 = "common_Quantifier_More";
  }

  v4 = v3 | 0x8000000000000000;
  if (a2)
  {
    v2 = "DateTime_EveryDay";
    if (a2 != 1)
    {
      v2 = "DateTime_Weekdays";
    }
  }

  if (v4 == (v2 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_70_2(0xD000000000000021, v4, 33);
  }

  return v5 & 1;
}

uint64_t sub_2679E35C8(unsigned __int8 a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "tionMode_Collaborate";
    }

    else
    {
      v2 = "tionMode_SharePlay";
    }
  }

  else
  {
    v2 = "common_AttachmentType_Result";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_10_11();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E368C(unsigned __int8 a1, uint64_t a2)
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_10_11();
  v7 = v7 && v2 == v3;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E3830()
{
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_10_11();
  v5 = v5 && v0 == v1;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_9_12(v2, v3, v4);
  }

  return v6 & 1;
}

uint64_t sub_2679E38B4(unsigned __int8 a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "reUnit_DegreesFahrenheit";
    }

    else
    {
      v2 = "common_TemperatureUnit_Degrees";
    }
  }

  else
  {
    v2 = "common_SpatialPosition_Bottom";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_10_11();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E3980(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_11_12();
  v7 = v7 && v2 == v3;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E3B7C(unsigned __int8 a1)
{
  v2 = "Type_IndefiniteReference";
  switch(a1)
  {
    case 1u:
      v2 = "common_SearchQualifier_Exactly";
      break;
    case 2u:
      v2 = "common_SearchQualifier_NewToMe";
      break;
    case 3u:
      v2 = "lifier_Personalized";
      break;
    case 4u:
      v2 = "common_SearchQualifier_New";
      break;
    case 5u:
      v2 = "common_SearchQualifier_Another";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_10_11();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E3CEC()
{
  OUTLINED_FUNCTION_54_2();
  if (v8)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3 | 0x8000000000000000;
  OUTLINED_FUNCTION_10_11();
  v8 = v8 && v4 == v0;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_9_12(v5, v6, v7);
  }

  return v9 & 1;
}

uint64_t sub_2679E3D90()
{
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_10_11();
  v5 = v5 && v0 == v1;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_9_12(v2, v3, v4);
  }

  return v6 & 1;
}

uint64_t sub_2679E3E14()
{
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_10_11();
  v5 = v5 && v0 == v1;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_9_12(v2, v3, v4);
  }

  return v6 & 1;
}

uint64_t sub_2679E3E94(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_11_12();
  v7 = v7 && v2 == v3;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E4034(unsigned __int8 a1)
{
  v2 = "common_ActivationValue_On";
  switch(a1)
  {
    case 1u:
      v2 = "common_AdjustmentType_Move";
      break;
    case 2u:
      v2 = "common_AdjustmentType_Scroll";
      break;
    case 3u:
      v2 = "common_AdjustmentType_Resize";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_10_11();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E415C(char a1)
{
  v2 = "common_UserEntity_Everywhere";
  switch(a1)
  {
    case 1:
      v2 = "common_ZoomDirection_ZoomOut";
      break;
    case 2:
      v2 = "tion_ZoomToFitWidth";
      break;
    case 3:
      v2 = "common_ZoomDirection_ZoomToFit";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E42A0(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_11_12();
  v7 = v7 && v2 == v3;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E44BC(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_11_12();
  v7 = v7 && v2 == v3;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E463C()
{
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_10_11();
  v5 = v5 && v0 == v1;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_9_12(v2, v3, v4);
  }

  return v6 & 1;
}

uint64_t sub_2679E46BC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_11_12();
  v10 = v10 && v5 == v6;
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_9_12(v7, v8, v9);
  }

  return v11 & 1;
}

uint64_t sub_2679E4888(unsigned __int8 a1)
{
  v2 = "common_MessageMode_Audio";
  switch(a1)
  {
    case 1u:
      v2 = "common_MessageState_Sent";
      break;
    case 2u:
      v2 = "common_MessageState_Unread";
      break;
    case 3u:
      v2 = "common_MessageState_Unsent";
      break;
    case 4u:
      v2 = "common_MessageState_Received";
      break;
    case 5u:
      v2 = "common_MessageState_Read";
      break;
    case 6u:
      v2 = "common_MessageState_Unsaved";
      break;
    case 7u:
      v2 = "common_MessageState_Saved";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_10_11();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E4A78(char a1)
{
  v2 = "common_Meridiem_PM";
  switch(a1)
  {
    case 1:
      v2 = "common_MessageMode_Text";
      break;
    case 2:
      v2 = "common_MessageMode_Video";
      break;
    case 3:
      v2 = "common_MessageMode_Email";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E4BAC(unsigned __int8 a1)
{
  v2 = "common_CurrencyAmount_AmountDue";
  switch(a1)
  {
    case 1u:
      v2 = "common_ListPosition_TwentyThird";
      break;
    case 2u:
      v2 = "operator_addToValue";
      break;
    case 3u:
      v2 = "operator_greaterThan";
      break;
    case 4u:
      v2 = "operator_decreasing";
      break;
    case 5u:
      v2 = "operator_greaterThanOrEquals";
      break;
    case 6u:
      v2 = "operator_lessThan";
      break;
    case 7u:
      v2 = "operator_lessThanOrEquals";
      break;
    case 8u:
      v2 = "operator_increasing";
      break;
    case 9u:
      v2 = "operator_notEquals";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_10_11();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E4DC4(char a1)
{
  v2 = "common_TimeUnit_Year";
  switch(a1)
  {
    case 1:
      v2 = "common_UserEntity_Nowhere";
      break;
    case 2:
      v2 = "common_UserEntity_Anywhere";
      break;
    case 3:
      v2 = "common_UserEntity_There";
      break;
    case 4:
      v2 = "common_UserEntity_Here";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E4F30()
{
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_10_11();
  v5 = v5 && v0 == v1;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_9_12(v2, v3, v4);
  }

  return v6 & 1;
}

uint64_t sub_2679E4FB0(char a1)
{
  v2 = "common_Person_User";
  switch(a1)
  {
    case 1:
      v2 = "common_Quantifier_All";
      break;
    case 2:
      v2 = "common_Quantifier_Any";
      break;
    case 3:
      v2 = "common_Quantifier_Multiple";
      break;
    case 4:
      v2 = "common_Quantifier_None";
      break;
    case 5:
      v2 = "common_Quantifier_Remainder";
      break;
    case 6:
      v2 = "common_Quantifier_Single";
      break;
    case 7:
      v2 = "common_Quantifier_Less";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E5180()
{
  OUTLINED_FUNCTION_36_6();
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_70_2(0xD00000000000001ELL, v0, 30);
  }

  return v2 & 1;
}

uint64_t sub_2679E51F4(char a1)
{
  v2 = "ntactAttribute_Contact";
  switch(a1)
  {
    case 1:
      v2 = "ttribute_ConditionEnterVehicle";
      break;
    case 2:
      v2 = "ttribute_ConditionDeparture";
      break;
    case 3:
      v2 = "ttribute_ConditionDepartVehicle";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E5338(char a1, char a2)
{
  v2 = "commonStock_StockType_Stock";
  if (a1)
  {
    v3 = "_UserEntityAttribute_Old";
  }

  else
  {
    v3 = "commonStock_StockType_Stock";
  }

  if (a2)
  {
    v2 = "_UserEntityAttribute_Old";
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_267A41C54();
  }

  return v4 & 1;
}

uint64_t sub_2679E53EC(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_11_12();
  v7 = v7 && v2 == v3;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E5584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  v7 = a3();
  if (v4 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_9_12(v4, v8, v7);
  }

  return v10 & 1;
}

uint64_t sub_2679E5618()
{
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_10_11();
  v5 = v5 && v0 == v1;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_9_12(v2, v3, v4);
  }

  return v6 & 1;
}

uint64_t sub_2679E5698(char a1)
{
  v2 = "kAttribute_Low52w";
  switch(a1)
  {
    case 1:
      v2 = "kChangeState_GoUpOrDown";
      break;
    case 2:
      v2 = "kChangeState_Unchanged";
      break;
    case 3:
      v2 = "kChangeState_GoUp";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_11_12();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_12(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_2679E5844(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_55_2(a1);
  a2(v5, a1);
  return sub_267A41C84();
}

uint64_t sub_2679E5898(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_55_2(a1);
  OUTLINED_FUNCTION_5_14(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_267A41C24();
  return sub_267A41C84();
}

uint64_t sub_2679E5958(uint64_t a1)
{
  OUTLINED_FUNCTION_55_2(a1);
  sub_2679E7170(v2);
  return sub_267A41C84();
}

uint64_t sub_2679E59B4(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_55_2(a1);
  OUTLINED_FUNCTION_5_14(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_267A41C24();
  return sub_267A41C84();
}

uint64_t sub_2679E59FC(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_55_2(a1);
  v9 = OUTLINED_FUNCTION_5_14(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  OUTLINED_FUNCTION_69_2(v9);
  return sub_267A41C84();
}

uint64_t sub_2679E5AA4(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_55_2(a1);
  v9 = OUTLINED_FUNCTION_5_14(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  OUTLINED_FUNCTION_74_1(v9);
  return sub_267A41C84();
}

uint64_t sub_2679E5AE4(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_55_2(a1);
  v9 = OUTLINED_FUNCTION_5_14(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  OUTLINED_FUNCTION_74_1(v9);
  return sub_267A41C84();
}

uint64_t sub_2679E5B30(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_55_2(a1);
  OUTLINED_FUNCTION_5_14(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_267A41C24();
  return sub_267A41C84();
}

uint64_t sub_2679E5CAC(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_55_2(a1);
  v9 = OUTLINED_FUNCTION_5_14(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  OUTLINED_FUNCTION_69_2(v9);
  return sub_267A41C84();
}

uint64_t sub_2679E5E38(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_55_2(a1);
  OUTLINED_FUNCTION_5_14(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_267A41C24();
  return sub_267A41C84();
}

uint64_t sub_2679E5EF4()
{
  OUTLINED_FUNCTION_31_11();
  sub_267A41C24();
}

uint64_t sub_2679E5F50(uint64_t a1)
{
  OUTLINED_FUNCTION_41_4();
  switch(v1)
  {
    case 2:
    case 4:
      OUTLINED_FUNCTION_73_2();
      break;
    case 5:
      OUTLINED_FUNCTION_72_2();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E604C()
{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_69_2(v0);
}

uint64_t sub_2679E60B4()
{
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_60_2();
  sub_267A41C24();
}

uint64_t sub_2679E6124()
{
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_60_2();
  sub_267A41C24();
}

uint64_t sub_2679E61E4(uint64_t a1)
{
  OUTLINED_FUNCTION_15_6();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_29_10();
      break;
    case 3:
      OUTLINED_FUNCTION_52_3();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E62CC(uint64_t a1)
{
  OUTLINED_FUNCTION_15_6();
  switch(v1)
  {
    case 3:
      OUTLINED_FUNCTION_53_2();
      break;
    case 4:
      OUTLINED_FUNCTION_52_3();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E639C()
{
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_26_12();
  sub_267A41C24();
}

uint64_t sub_2679E63F4(uint64_t a1)
{
  OUTLINED_FUNCTION_15_6();
  switch(v1)
  {
    case 5:
      OUTLINED_FUNCTION_53_2();
      break;
    case 6:
      OUTLINED_FUNCTION_40_4();
      break;
    case 7:
      OUTLINED_FUNCTION_29_10();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E6500(uint64_t a1)
{
  OUTLINED_FUNCTION_15_6();
  switch(v1)
  {
    case 4:
      OUTLINED_FUNCTION_53_2();
      break;
    case 7:
      OUTLINED_FUNCTION_40_4();
      break;
    case 8:
      OUTLINED_FUNCTION_67_1();
      break;
    case 9:
      OUTLINED_FUNCTION_52_3();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E6638(uint64_t a1)
{
  OUTLINED_FUNCTION_15_6();
  switch(v1)
  {
    case 2:
      OUTLINED_FUNCTION_29_10();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E66EC(uint64_t a1, char a2)
{
  sub_267A41C24();
}

uint64_t sub_2679E6764(uint64_t a1, unsigned __int8 a2)
{
  sub_267A41C24();
}

uint64_t sub_2679E67E4(uint64_t a1)
{
  OUTLINED_FUNCTION_41_4();
  switch(v1)
  {
    case 2:
      OUTLINED_FUNCTION_73_2();
      break;
    case 5:
      OUTLINED_FUNCTION_72_2();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E68D8()
{
  OUTLINED_FUNCTION_31_11();
  sub_267A41C24();
}

uint64_t sub_2679E6934(uint64_t a1, unsigned __int8 a2)
{
  sub_267A41C24();
}

uint64_t sub_2679E69B8(uint64_t a1)
{
  OUTLINED_FUNCTION_15_6();
  switch(v1)
  {
    case 3:
      OUTLINED_FUNCTION_52_3();
      break;
    case 4:
      OUTLINED_FUNCTION_40_4();
      break;
    case 7:
      OUTLINED_FUNCTION_67_1();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E6ADC(uint64_t a1)
{
  OUTLINED_FUNCTION_41_4();
  sub_267A41C24();
}

uint64_t sub_2679E6BB0()
{
  OUTLINED_FUNCTION_31_11();
  sub_267A41C24();
}

uint64_t sub_2679E6C24()
{
  OUTLINED_FUNCTION_31_11();
  sub_267A41C24();
}

uint64_t sub_2679E6C80()
{
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_26_12();
  sub_267A41C24();
}

uint64_t sub_2679E6CDC(uint64_t a1)
{
  OUTLINED_FUNCTION_15_6();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_29_10();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E6DD8(uint64_t a1)
{
  OUTLINED_FUNCTION_41_4();
  switch(v1)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_73_2();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E6E80()
{
  OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_15_6();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_53_2();
      break;
    case 3:
      OUTLINED_FUNCTION_62_1();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E6F2C()
{
  OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_15_6();
  switch(v0)
  {
    case 1:
    case 4:
      OUTLINED_FUNCTION_62_1();
      break;
    case 2:
      OUTLINED_FUNCTION_53_2();
      break;
    case 5:
      OUTLINED_FUNCTION_67_1();
      break;
    case 6:
    case 8:
      OUTLINED_FUNCTION_40_4();
      break;
    case 9:
      OUTLINED_FUNCTION_29_10();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E704C()
{
  OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_15_6();
  switch(v0)
  {
    case 1:
    case 4:
      OUTLINED_FUNCTION_62_1();
      break;
    case 2:
    case 5:
      OUTLINED_FUNCTION_40_4();
      break;
    case 3:
      OUTLINED_FUNCTION_29_10();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E7114()
{
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_60_2();
  sub_267A41C24();
}

uint64_t sub_2679E7170(uint64_t a1)
{
  OUTLINED_FUNCTION_15_6();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_53_2();
      break;
    case 5:
      OUTLINED_FUNCTION_40_4();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E7288(uint64_t a1)
{
  OUTLINED_FUNCTION_41_4();
  switch(v1)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_73_2();
      break;
    case 6:
      OUTLINED_FUNCTION_72_2();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E73B4(uint64_t a1)
{
  OUTLINED_FUNCTION_41_4();
  sub_267A41C24();
}

uint64_t sub_2679E7464(uint64_t a1)
{
  OUTLINED_FUNCTION_41_4();
  switch(v1)
  {
    case 2:
      OUTLINED_FUNCTION_72_2();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E75B4(uint64_t a1)
{
  OUTLINED_FUNCTION_15_6();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_52_3();
      break;
    case 2:
      OUTLINED_FUNCTION_40_4();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E7684()
{
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_26_12();
  sub_267A41C24();
}

uint64_t sub_2679E76E0(uint64_t a1)
{
  OUTLINED_FUNCTION_15_6();
  switch(v1)
  {
    case 2:
      OUTLINED_FUNCTION_52_3();
      break;
    case 4:
      OUTLINED_FUNCTION_67_1();
      break;
    case 5:
      OUTLINED_FUNCTION_29_10();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E77E0()
{
  OUTLINED_FUNCTION_71_2();
  sub_267A41C24();
}

uint64_t sub_2679E7838(uint64_t a1)
{
  OUTLINED_FUNCTION_15_6();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_29_10();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E78F4(uint64_t a1, char a2)
{
  sub_267A41C24();
}

uint64_t sub_2679E7980(uint64_t a1)
{
  OUTLINED_FUNCTION_15_6();
  sub_267A41C24();
}

uint64_t sub_2679E7A78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  sub_267A41C24();
}

uint64_t sub_2679E7ADC()
{
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_26_12();
  sub_267A41C24();
}

uint64_t sub_2679E7B38(uint64_t a1)
{
  OUTLINED_FUNCTION_15_6();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_67_1();
      break;
    case 3:
      OUTLINED_FUNCTION_29_10();
      break;
    default:
      break;
  }

  sub_267A41C24();
}

uint64_t sub_2679E7C08(uint64_t a1)
{
  OUTLINED_FUNCTION_50_3(a1);
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_12_7(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E7C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_267A41C74();
  a3(v6, a2);
  return sub_267A41C84();
}

uint64_t sub_2679E7D00()
{
  v0 = sub_267A41C74();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();
  return sub_267A41C84();
}

uint64_t sub_2679E7D4C(uint64_t a1, char a2)
{
  sub_267A41C74();
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E7DD4(uint64_t a1)
{
  OUTLINED_FUNCTION_50_3(a1);
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_12_7(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E7E4C(uint64_t a1)
{
  OUTLINED_FUNCTION_50_3(a1);
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_12_7(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E7EC8()
{
  v0 = sub_267A41C74();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();
  return sub_267A41C84();
}

uint64_t sub_2679E7FA8(uint64_t a1)
{
  OUTLINED_FUNCTION_50_3(a1);
  sub_2679E7170(v2);
  return sub_267A41C84();
}

uint64_t sub_2679E7FE4(uint64_t a1)
{
  OUTLINED_FUNCTION_50_3(a1);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_12_7(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E80D8(uint64_t a1)
{
  OUTLINED_FUNCTION_50_3(a1);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_12_7(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E813C(uint64_t a1)
{
  OUTLINED_FUNCTION_50_3(a1);
  OUTLINED_FUNCTION_30_11();
  if (v8)
  {
    v9 = 0xD00000000000001ALL;
  }

  else
  {
    v9 = 0xD000000000000019;
  }

  OUTLINED_FUNCTION_12_7(v1, v9, v2, v3, v4, v5, v6, v7, v11, v12);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E81B8(uint64_t a1)
{
  OUTLINED_FUNCTION_50_3(a1);
  OUTLINED_FUNCTION_30_11();
  if (v8)
  {
    v9 = 0xD00000000000001CLL;
  }

  else
  {
    v9 = 0xD00000000000001DLL;
  }

  OUTLINED_FUNCTION_12_7(v1, v9, v2, v3, v4, v5, v6, v7, v11, v12);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E824C(uint64_t a1, char a2)
{
  v3 = sub_267A41C74();
  if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xD00000000000001ELL;
    }

    else
    {
      v10 = 0xD000000000000025;
    }
  }

  else
  {
    v10 = 0xD000000000000028;
  }

  OUTLINED_FUNCTION_12_7(v3, v10, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E82E0(uint64_t a1)
{
  OUTLINED_FUNCTION_50_3(a1);
  OUTLINED_FUNCTION_30_11();
  if (v8)
  {
    v9 = 0xD00000000000001FLL;
  }

  else
  {
    v9 = 0xD00000000000001ELL;
  }

  OUTLINED_FUNCTION_12_7(v1, v9, v2, v3, v4, v5, v6, v7, v11, v12);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E835C(uint64_t a1, char a2)
{
  v3 = sub_267A41C74();
  if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xD000000000000022;
    }

    else
    {
      v10 = 0xD000000000000021;
    }
  }

  else
  {
    v10 = 0xD000000000000024;
  }

  OUTLINED_FUNCTION_12_7(v3, v10, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E83EC(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_50_3(a1);
  OUTLINED_FUNCTION_12_7(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E84B4(uint64_t a1)
{
  OUTLINED_FUNCTION_50_3(a1);
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_12_7(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E8548()
{
  v0 = sub_267A41C74();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();
  return sub_267A41C84();
}

uint64_t sub_2679E85AC()
{
  v0 = sub_267A41C74();
  v8 = OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  OUTLINED_FUNCTION_69_2(v8);
  return sub_267A41C84();
}

uint64_t sub_2679E85F0()
{
  v0 = sub_267A41C74();
  v8 = OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  OUTLINED_FUNCTION_74_1(v8);
  return sub_267A41C84();
}

uint64_t sub_2679E8634(uint64_t a1)
{
  OUTLINED_FUNCTION_50_3(a1);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_12_7(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E8698()
{
  v0 = sub_267A41C74();
  OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_267A41C24();
  return sub_267A41C84();
}

uint64_t sub_2679E86E4()
{
  v0 = sub_267A41C74();
  v8 = OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  OUTLINED_FUNCTION_69_2(v8);
  return sub_267A41C84();
}

uint64_t sub_2679E8728(uint64_t a1)
{
  OUTLINED_FUNCTION_50_3(a1);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_12_7(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E8788()
{
  v0 = sub_267A41C74();
  v8 = OUTLINED_FUNCTION_5_14(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11);
  OUTLINED_FUNCTION_74_1(v8);
  return sub_267A41C84();
}

uint64_t sub_2679E87CC(uint64_t a1)
{
  OUTLINED_FUNCTION_50_3(a1);
  OUTLINED_FUNCTION_71_2();
  v9 = OUTLINED_FUNCTION_12_7(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  OUTLINED_FUNCTION_69_2(v9);

  return sub_267A41C84();
}

uint64_t sub_2679E883C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_267A41C74();
  a3(v4);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t sub_2679E88C0(uint64_t a1)
{
  OUTLINED_FUNCTION_50_3(a1);
  OUTLINED_FUNCTION_30_11();
  if (v8)
  {
    v9 = 0xD00000000000001BLL;
  }

  else
  {
    v9 = 0xD00000000000001ALL;
  }

  OUTLINED_FUNCTION_12_7(v1, v9, v2, v3, v4, v5, v6, v7, v11, v12);
  sub_267A41C24();

  return sub_267A41C84();
}

uint64_t CommonUserEntity.UserEntityAttribute.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F0, &qword_267A89CA0);

  return sub_267A41984();
}

uint64_t CommonUserEntity.UserEntityAttribute.$definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F0, &qword_267A89CA0);

  return sub_267A419A4();
}

uint64_t CommonUserEntity.UserEntityAttribute.$definedValue.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F8, &unk_267A89CA8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F0, &qword_267A89CA0);
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t type metadata accessor for CommonUserEntity.UserEntityAttribute(uint64_t a1)
{
  result = qword_2801DF628;
  if (!qword_2801DF628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CommonUserEntity.UserEntityAttribute.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A8F140);
}

uint64_t sub_2679E8C3C()
{
  OUTLINED_FUNCTION_20_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoAssociatedApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonUserEntity.UserEntityAttribute.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A423A0);
}

uint64_t sub_2679E8E8C()
{
  OUTLINED_FUNCTION_20_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonUserEntity.UserEntityAttribute.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A8F170);
}

uint64_t sub_2679E90DC()
{
  OUTLINED_FUNCTION_20_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonUserEntity.UserEntityAttribute.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A423D0);
}

uint64_t sub_2679E932C()
{
  OUTLINED_FUNCTION_20_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoReferenceType.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonUserEntity.UserEntityAttribute.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A8F1A0);
}

uint64_t sub_2679E957C()
{
  OUTLINED_FUNCTION_20_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonUserEntity.UserEntityAttribute.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF600, &qword_267A89CB8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &qword_267A89CC0);
}

uint64_t sub_2679E97CC()
{
  OUTLINED_FUNCTION_20_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF600, &qword_267A89CB8);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF608, &unk_267A89CC8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF600, &qword_267A89CB8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

uint64_t CommonUserEntity.UserEntityAttribute.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3(v0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0(v2, v6);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v3 = OUTLINED_FUNCTION_10_0();
  return sub_2676F8798(v3, v4, &unk_267A8F1D0);
}

uint64_t sub_2679E9A1C()
{
  OUTLINED_FUNCTION_20_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_33();
  return v0();
}

uint64_t sub_2679E9AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoSpatialPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_1(v1, v7);
  v3(v2);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v4 = OUTLINED_FUNCTION_6_0();
  return v5(v4);
}

SiriMailOntology::CommonUserEntity::UserEntityAttribute::DefinedValue_optional __swiftcall CommonUserEntity.UserEntityAttribute.DefinedValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_267A41C44();

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

  *v2 = v5;
  return result;
}

unint64_t sub_2679E9D24@<X0>(void *a1@<X8>)
{
  result = CommonUserEntity.UserEntityAttribute.DefinedValue.rawValue.getter();
  *a1 = 0xD000000000000028;
  a1[1] = v3;
  return result;
}

uint64_t (*CommonUserEntity.UserEntityAttribute.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F0, &qword_267A89CA0);
  *(v0 + 32) = sub_267A41974();
  return sub_2676FA8FC;
}

uint64_t CommonUserEntity.UserEntityAttribute.$definedValue.modify()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_5_0(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F8, &unk_267A89CA8);
  OUTLINED_FUNCTION_3_0(v2);
  v0[2] = v3;
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15(v5);
  v7 = __swift_coroFrameAllocStub(v6);
  v8 = OUTLINED_FUNCTION_17(v7);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F0, &qword_267A89CA0);
  sub_267A419A4();
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonUserEntity.UserEntityAttribute.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v3);
  return sub_2676FC854;
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v0 + 56) = *(OUTLINED_FUNCTION_22_2(v10) + 20);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_13(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonUserEntity.UserEntityAttribute.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v3);
  return sub_2676FC854;
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v0 + 56) = *(OUTLINED_FUNCTION_22_2(v10) + 24);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_13(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonUserEntity.UserEntityAttribute.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v3);
  return sub_2676FC854;
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v0 + 56) = *(OUTLINED_FUNCTION_22_2(v10) + 28);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_13(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonUserEntity.UserEntityAttribute.usoReferenceType.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v3);
  return sub_2676FC854;
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoReferenceType.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v0 + 56) = *(OUTLINED_FUNCTION_22_2(v10) + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_13(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonUserEntity.UserEntityAttribute.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v3);
  return sub_2676FC854;
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v0 + 56) = *(OUTLINED_FUNCTION_22_2(v10) + 36);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_13(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonUserEntity.UserEntityAttribute.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF600, &qword_267A89CB8);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v3);
  return sub_2676FC854;
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF608, &unk_267A89CC8);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v0 + 56) = *(OUTLINED_FUNCTION_22_2(v10) + 40);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF600, &qword_267A89CB8);
  OUTLINED_FUNCTION_13(v11);
  return OUTLINED_FUNCTION_18();
}

uint64_t (*CommonUserEntity.UserEntityAttribute.usoSpatialPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_16();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_2(v2);
  type metadata accessor for CommonUserEntity.UserEntityAttribute(0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  *(v0 + 32) = OUTLINED_FUNCTION_14(v3);
  return sub_2676FC854;
}

uint64_t CommonUserEntity.UserEntityAttribute.$usoSpatialPosition.modify()
{
  v1 = OUTLINED_FUNCTION_22();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_3_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_17(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v0 + 56) = *(OUTLINED_FUNCTION_22_2(v10) + 44);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_13(v11);
  return OUTLINED_FUNCTION_18();
}

unint64_t sub_2679EA834()
{
  result = qword_2801DF610;
  if (!qword_2801DF610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801DF610);
  }

  return result;
}

unint64_t sub_2679EA88C()
{
  result = qword_2801DF618;
  if (!qword_2801DF618)
  {
    type metadata accessor for CommonUserEntity.UserEntityAttribute(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801DF618);
  }

  return result;
}

unint64_t sub_2679EA8E8()
{
  result = qword_2801DF620;
  if (!qword_2801DF620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801DF620);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CommonUserEntity(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2679EAC9CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2679EACE8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF5F0, &qword_267A89CA0);
  OUTLINED_FUNCTION_11_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
    OUTLINED_FUNCTION_11_0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
      OUTLINED_FUNCTION_11_0();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
        OUTLINED_FUNCTION_11_0();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
          OUTLINED_FUNCTION_11_0();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
            OUTLINED_FUNCTION_11_0();
            if (*(v20 + 84) == a2)
            {
              v8 = v19;
              v12 = a3[9];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DF600, &qword_267A89CB8);
              OUTLINED_FUNCTION_11_0();
              if (*(v22 + 84) == a2)
              {
                v8 = v21;
                v12 = a3[10];
              }

              else
              {
                v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
                v12 = a3[11];
              }
            }
          }
        }
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}