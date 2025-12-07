uint64_t sub_23FF9BD40(uint64_t a1)
{
  v2 = sub_23FF9C54C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF9BD7C(uint64_t a1)
{
  v2 = sub_23FF9C450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9BDB8(uint64_t a1)
{
  v2 = sub_23FF9C450();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetPostPrimaryButtonAction.encode(to:)(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3670, &qword_23FFE0910);
  v30 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v29 = &v25 - v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3678, &qword_23FFE0918);
  v33 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v32 = &v25 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3680, &qword_23FFE0920);
  v27 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v25 - v4;
  v26 = type metadata accessor for ConfirmationSheetOsloSheetConfiguration(0);
  MEMORY[0x28223BE20](v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConfirmationSheetPostPrimaryButtonAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3688, &qword_23FFE0928);
  v11 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v13 = &v25 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9C3FC();
  sub_23FFD9ACC();
  sub_23FF99F18(v35, v10, type metadata accessor for ConfirmationSheetPostPrimaryButtonAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = v10[3];
      v44 = v10[2];
      v45 = v15;
      v46 = v10[4];
      v16 = v10[1];
      v42 = *v10;
      v43 = v16;
      LOBYTE(v37) = 1;
      sub_23FF9C4A4();
      v17 = v32;
      v18 = v36;
      sub_23FFD988C();
      v39 = v44;
      v40 = v45;
      v41 = v46;
      v37 = v42;
      v38 = v43;
      sub_23FF9C4F8();
      v19 = v34;
      sub_23FFD991C();
      (*(v33 + 8))(v17, v19);
      (*(v11 + 8))(v13, v18);
      return sub_23FF9A924(&v42);
    }

    else
    {
      LOBYTE(v42) = 2;
      sub_23FF9C450();
      v23 = v29;
      v24 = v36;
      sub_23FFD988C();
      (*(v30 + 8))(v23, v31);
      return (*(v11 + 8))(v13, v24);
    }
  }

  else
  {
    sub_23FF9CDAC(v10, v7, type metadata accessor for ConfirmationSheetOsloSheetConfiguration);
    LOBYTE(v42) = 0;
    sub_23FF9C54C();
    v21 = v36;
    sub_23FFD988C();
    sub_23FF97C7C(&qword_27E3A36B8, type metadata accessor for ConfirmationSheetOsloSheetConfiguration, protocol conformance descriptor for ConfirmationSheetOsloSheetConfiguration);
    v22 = v28;
    sub_23FFD991C();
    (*(v27 + 8))(v5, v22);
    sub_23FF99F80(v7, type metadata accessor for ConfirmationSheetOsloSheetConfiguration);
    return (*(v11 + 8))(v13, v21);
  }
}

unint64_t sub_23FF9C3FC()
{
  result = qword_27E3A3690;
  if (!qword_27E3A3690)
  {
    result = swift_getWitnessTable(byte_23FFE1B34, &type metadata for ConfirmationSheetPostPrimaryButtonAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3690);
  }

  return result;
}

unint64_t sub_23FF9C450()
{
  result = qword_27E3A3698;
  if (!qword_27E3A3698)
  {
    result = swift_getWitnessTable(aE_3, &type metadata for ConfirmationSheetPostPrimaryButtonAction.ParentScreentimePinCodeCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3698);
  }

  return result;
}

unint64_t sub_23FF9C4A4()
{
  result = qword_27E3A36A0;
  if (!qword_27E3A36A0)
  {
    result = swift_getWitnessTable(byte_23FFE1A94, &type metadata for ConfirmationSheetPostPrimaryButtonAction.LocalAuthenticationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A36A0);
  }

  return result;
}

unint64_t sub_23FF9C4F8()
{
  result = qword_27E3A36A8;
  if (!qword_27E3A36A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSheetLAConfiguration, &type metadata for ConfirmationSheetLAConfiguration, v0, v1);
    atomic_store(result, &qword_27E3A36A8);
  }

  return result;
}

unint64_t sub_23FF9C54C()
{
  result = qword_27E3A36B0;
  if (!qword_27E3A36B0)
  {
    result = swift_getWitnessTable(byte_23FFE1A44, &type metadata for ConfirmationSheetPostPrimaryButtonAction.OsloAuthenticationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A36B0);
  }

  return result;
}

uint64_t ConfirmationSheetPostPrimaryButtonAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A36C0, &qword_23FFE0930);
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v54 = &v42 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A36C8, &qword_23FFE0938);
  v48 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v53 = &v42 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A36D0, &qword_23FFE0940);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v52 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A36D8, &qword_23FFE0948);
  v55 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v9 = type metadata accessor for ConfirmationSheetPostPrimaryButtonAction(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v42 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v18 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_23FF9C3FC();
  v19 = v56;
  sub_23FFD9AAC();
  if (!v19)
  {
    v43 = v15;
    v42 = v12;
    v21 = v52;
    v20 = v53;
    v22 = v54;
    v44 = v17;
    v56 = v9;
    v23 = sub_23FFD986C();
    v24 = (2 * *(v23 + 16)) | 1;
    v62 = v23;
    v63 = v23 + 32;
    v64 = 0;
    v65 = v24;
    v25 = sub_23FF7522C();
    v26 = v6;
    if (v25 != 3 && v64 == v65 >> 1)
    {
      if (v25)
      {
        if (v25 != 1)
        {
          LOBYTE(v57) = 2;
          sub_23FF9C450();
          sub_23FFD979C();
          v35 = v51;
          v36 = v55;
          (*(v49 + 8))(v22, v50);
          (*(v36 + 8))(v8, v6);
          swift_unknownObjectRelease();
          v37 = v44;
          swift_storeEnumTagMultiPayload();
LABEL_12:
          sub_23FF9CDAC(v37, v35, type metadata accessor for ConfirmationSheetPostPrimaryButtonAction);
          return __swift_destroy_boxed_opaque_existential_1(v66);
        }

        LOBYTE(v57) = 1;
        sub_23FF9C4A4();
        sub_23FFD979C();
        v27 = v55;
        sub_23FF9CE14();
        v28 = v45;
        sub_23FFD983C();
        (*(v48 + 8))(v20, v28);
        (*(v27 + 8))(v8, v6);
        swift_unknownObjectRelease();
        v38 = v60;
        v39 = v42;
        v42[2] = v59;
        v39[3] = v38;
        v39[4] = v61;
        v40 = v58;
        *v39 = v57;
        v39[1] = v40;
        swift_storeEnumTagMultiPayload();
        v41 = v39;
      }

      else
      {
        LOBYTE(v57) = 0;
        sub_23FF9C54C();
        sub_23FFD979C();
        type metadata accessor for ConfirmationSheetOsloSheetConfiguration(0);
        sub_23FF97C7C(&qword_27E3A36E8, type metadata accessor for ConfirmationSheetOsloSheetConfiguration, protocol conformance descriptor for ConfirmationSheetOsloSheetConfiguration);
        v33 = v43;
        v34 = v47;
        sub_23FFD983C();
        (*(v46 + 8))(v21, v34);
        (*(v55 + 8))(v8, v26);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v41 = v33;
      }

      v37 = v44;
      sub_23FF9CDAC(v41, v44, type metadata accessor for ConfirmationSheetPostPrimaryButtonAction);
      v35 = v51;
      goto LABEL_12;
    }

    v29 = sub_23FFD970C();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
    *v31 = v56;
    sub_23FFD97AC();
    sub_23FFD96FC();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
    swift_willThrow();
    (*(v55 + 8))(v8, v6);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t sub_23FF9CDAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23FF9CE14()
{
  result = qword_27E3A36E0;
  if (!qword_27E3A36E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSheetLAConfiguration, &type metadata for ConfirmationSheetLAConfiguration, v0, v1);
    atomic_store(result, &qword_27E3A36E0);
  }

  return result;
}

unint64_t sub_23FF9CE6C()
{
  result = qword_27E3A36F0;
  if (!qword_27E3A36F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSheetButtonStyle, &type metadata for ConfirmationSheetButtonStyle, v0, v1);
    atomic_store(result, &qword_27E3A36F0);
  }

  return result;
}

void sub_23FF9CF18(uint64_t a1)
{
  v1 = MEMORY[0x277D837D0];
  sub_23FF9D0DC(319, &qword_27E3A3708, &type metadata for ConfirmationSheetSymbol);
  if (v2 <= 0x3F)
  {
    sub_23FF9D0DC(319, &qword_27E3A2478, v1);
    if (v3 <= 0x3F)
    {
      sub_23FF9D0DC(319, &qword_27E3A3710, &type metadata for ConfirmationSheetMoreInformationLink);
      if (v4 <= 0x3F)
      {
        sub_23FF9D078(319);
        if (v5 <= 0x3F)
        {
          sub_23FF9D0DC(319, &qword_27E3A3720, &type metadata for ConfirmationSheetMiniProductPageConfiguration);
          if (v6 <= 0x3F)
          {
            sub_23FF9D35C(319, &qword_27E3A3728, type metadata accessor for ConfirmationSheetPostPrimaryButtonAction);
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

void sub_23FF9D078(uint64_t a1)
{
  if (!qword_27E3A3718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A3500, &qword_23FFE0850);
    v1 = sub_23FFD95CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E3A3718);
    }
  }
}

void sub_23FF9D0DC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23FFD95CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
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

uint64_t sub_23FF9D154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23FF9D19C(uint64_t result, int a2, int a3)
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

uint64_t sub_23FF9D1EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_23FF9D234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23FF9D2BC(uint64_t a1)
{
  sub_23FF9D35C(319, &qword_27E3A2480, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23FF9D35C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23FFD95CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_23FF9D3CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_23FF9D414(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23FF9D498(uint64_t a1)
{
  result = type metadata accessor for ConfirmationSheetOsloSheetConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationSheetLAConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfirmationSheetLAConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationSheetContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfirmationSheetContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23FF9D874()
{
  result = qword_27E3A3750;
  if (!qword_27E3A3750)
  {
    result = swift_getWitnessTable(byte_23FFE1144, &type metadata for ConfirmationSheetContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3750);
  }

  return result;
}

unint64_t sub_23FF9D8CC()
{
  result = qword_27E3A3758;
  if (!qword_27E3A3758)
  {
    result = swift_getWitnessTable(aB_1, &type metadata for ConfirmationSheetBulletPoint.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3758);
  }

  return result;
}

unint64_t sub_23FF9D924()
{
  result = qword_27E3A3760;
  if (!qword_27E3A3760)
  {
    result = swift_getWitnessTable(byte_23FFE12B4, &type metadata for ConfirmationSheetSymbol.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3760);
  }

  return result;
}

unint64_t sub_23FF9D97C()
{
  result = qword_27E3A3768;
  if (!qword_27E3A3768)
  {
    result = swift_getWitnessTable(asc_23FFE136C, &type metadata for ConfirmationSheetMoreInformationLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3768);
  }

  return result;
}

unint64_t sub_23FF9D9D4()
{
  result = qword_27E3A3770;
  if (!qword_27E3A3770)
  {
    result = swift_getWitnessTable(byte_23FFE1424, &type metadata for ConfirmationSheetMiniProductPageConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3770);
  }

  return result;
}

unint64_t sub_23FF9DA2C()
{
  result = qword_27E3A3778;
  if (!qword_27E3A3778)
  {
    result = swift_getWitnessTable(byte_23FFE14DC, &type metadata for ConfirmationSheetOsloSheetConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3778);
  }

  return result;
}

unint64_t sub_23FF9DA84()
{
  result = qword_27E3A3780;
  if (!qword_27E3A3780)
  {
    result = swift_getWitnessTable(a5_0, &type metadata for ConfirmationSheetLAConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3780);
  }

  return result;
}

unint64_t sub_23FF9DADC()
{
  result = qword_27E3A3788;
  if (!qword_27E3A3788)
  {
    result = swift_getWitnessTable(aB_2, &type metadata for ConfirmationSheetButtonStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3788);
  }

  return result;
}

unint64_t sub_23FF9DB34()
{
  result = qword_27E3A3790;
  if (!qword_27E3A3790)
  {
    result = swift_getWitnessTable(asc_23FFE17A4, &type metadata for ConfirmationSheetButton.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3790);
  }

  return result;
}

unint64_t sub_23FF9DB8C()
{
  result = qword_27E3A3798;
  if (!qword_27E3A3798)
  {
    result = swift_getWitnessTable(byte_23FFE18AC, &type metadata for ConfirmationSheetPostPrimaryButtonAction.LocalAuthenticationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3798);
  }

  return result;
}

unint64_t sub_23FF9DBE4()
{
  result = qword_27E3A37A0;
  if (!qword_27E3A37A0)
  {
    result = swift_getWitnessTable(aE_4, &type metadata for ConfirmationSheetPostPrimaryButtonAction.OsloAuthenticationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A37A0);
  }

  return result;
}

unint64_t sub_23FF9DC3C()
{
  result = qword_27E3A37A8;
  if (!qword_27E3A37A8)
  {
    result = swift_getWitnessTable(byte_23FFE1A1C, &type metadata for ConfirmationSheetPostPrimaryButtonAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A37A8);
  }

  return result;
}

unint64_t sub_23FF9DC94()
{
  result = qword_27E3A37B0;
  if (!qword_27E3A37B0)
  {
    result = swift_getWitnessTable(aBh_0, &type metadata for ConfirmationSheetPostPrimaryButtonAction.OsloAuthenticationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A37B0);
  }

  return result;
}

unint64_t sub_23FF9DCEC()
{
  result = qword_27E3A37B8;
  if (!qword_27E3A37B8)
  {
    result = swift_getWitnessTable(aB_3, &type metadata for ConfirmationSheetPostPrimaryButtonAction.OsloAuthenticationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A37B8);
  }

  return result;
}

unint64_t sub_23FF9DD44()
{
  result = qword_27E3A37C0;
  if (!qword_27E3A37C0)
  {
    result = swift_getWitnessTable(byte_23FFE181C, &type metadata for ConfirmationSheetPostPrimaryButtonAction.LocalAuthenticationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A37C0);
  }

  return result;
}

unint64_t sub_23FF9DD9C()
{
  result = qword_27E3A37C8;
  if (!qword_27E3A37C8)
  {
    result = swift_getWitnessTable(byte_23FFE1844, &type metadata for ConfirmationSheetPostPrimaryButtonAction.LocalAuthenticationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A37C8);
  }

  return result;
}

unint64_t sub_23FF9DDF4()
{
  result = qword_27E3A37D0;
  if (!qword_27E3A37D0)
  {
    result = swift_getWitnessTable(aB_4, &type metadata for ConfirmationSheetPostPrimaryButtonAction.ParentScreentimePinCodeCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A37D0);
  }

  return result;
}

unint64_t sub_23FF9DE4C()
{
  result = qword_27E3A37D8;
  if (!qword_27E3A37D8)
  {
    result = swift_getWitnessTable(byte_23FFE17F4, &type metadata for ConfirmationSheetPostPrimaryButtonAction.ParentScreentimePinCodeCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A37D8);
  }

  return result;
}

unint64_t sub_23FF9DEA4()
{
  result = qword_27E3A37E0;
  if (!qword_27E3A37E0)
  {
    result = swift_getWitnessTable(byte_23FFE198C, &type metadata for ConfirmationSheetPostPrimaryButtonAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A37E0);
  }

  return result;
}

unint64_t sub_23FF9DEFC()
{
  result = qword_27E3A37E8;
  if (!qword_27E3A37E8)
  {
    result = swift_getWitnessTable(asc_23FFE19B4, &type metadata for ConfirmationSheetPostPrimaryButtonAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A37E8);
  }

  return result;
}

unint64_t sub_23FF9DF54()
{
  result = qword_27E3A37F0;
  if (!qword_27E3A37F0)
  {
    result = swift_getWitnessTable(byte_23FFE1714, &type metadata for ConfirmationSheetButton.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A37F0);
  }

  return result;
}

unint64_t sub_23FF9DFAC()
{
  result = qword_27E3A37F8;
  if (!qword_27E3A37F8)
  {
    result = swift_getWitnessTable(byte_23FFE173C, &type metadata for ConfirmationSheetButton.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A37F8);
  }

  return result;
}

unint64_t sub_23FF9E004()
{
  result = qword_27E3A3800;
  if (!qword_27E3A3800)
  {
    result = swift_getWitnessTable(byte_23FFE160C, &type metadata for ConfirmationSheetButtonStyle.BlueCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3800);
  }

  return result;
}

unint64_t sub_23FF9E05C()
{
  result = qword_27E3A3808;
  if (!qword_27E3A3808)
  {
    result = swift_getWitnessTable(byte_23FFE1634, &type metadata for ConfirmationSheetButtonStyle.BlueCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3808);
  }

  return result;
}

unint64_t sub_23FF9E0B4()
{
  result = qword_27E3A3810;
  if (!qword_27E3A3810)
  {
    result = swift_getWitnessTable(byte_23FFE15BC, &type metadata for ConfirmationSheetButtonStyle.WhiteCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3810);
  }

  return result;
}

unint64_t sub_23FF9E10C()
{
  result = qword_27E3A3818;
  if (!qword_27E3A3818)
  {
    result = swift_getWitnessTable(byte_23FFE15E4, &type metadata for ConfirmationSheetButtonStyle.WhiteCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3818);
  }

  return result;
}

unint64_t sub_23FF9E164()
{
  result = qword_27E3A3820;
  if (!qword_27E3A3820)
  {
    result = swift_getWitnessTable(aE_5, &type metadata for ConfirmationSheetButtonStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3820);
  }

  return result;
}

unint64_t sub_23FF9E1BC()
{
  result = qword_27E3A3828;
  if (!qword_27E3A3828)
  {
    result = swift_getWitnessTable(aU_7, &type metadata for ConfirmationSheetButtonStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3828);
  }

  return result;
}

unint64_t sub_23FF9E214()
{
  result = qword_27E3A3830;
  if (!qword_27E3A3830)
  {
    result = swift_getWitnessTable(byte_23FFE1504, &type metadata for ConfirmationSheetLAConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3830);
  }

  return result;
}

unint64_t sub_23FF9E26C()
{
  result = qword_27E3A3838;
  if (!qword_27E3A3838)
  {
    result = swift_getWitnessTable(byte_23FFE152C, &type metadata for ConfirmationSheetLAConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3838);
  }

  return result;
}

unint64_t sub_23FF9E2C4()
{
  result = qword_27E3A3840;
  if (!qword_27E3A3840)
  {
    result = swift_getWitnessTable(aU_8, &type metadata for ConfirmationSheetOsloSheetConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3840);
  }

  return result;
}

unint64_t sub_23FF9E31C()
{
  result = qword_27E3A3848;
  if (!qword_27E3A3848)
  {
    result = swift_getWitnessTable(aE_6, &type metadata for ConfirmationSheetOsloSheetConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3848);
  }

  return result;
}

unint64_t sub_23FF9E374()
{
  result = qword_27E3A3850;
  if (!qword_27E3A3850)
  {
    result = swift_getWitnessTable(asc_23FFE1394, &type metadata for ConfirmationSheetMiniProductPageConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3850);
  }

  return result;
}

unint64_t sub_23FF9E3CC()
{
  result = qword_27E3A3858;
  if (!qword_27E3A3858)
  {
    result = swift_getWitnessTable(byte_23FFE13BC, &type metadata for ConfirmationSheetMiniProductPageConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3858);
  }

  return result;
}

unint64_t sub_23FF9E424()
{
  result = qword_27E3A3860;
  if (!qword_27E3A3860)
  {
    result = swift_getWitnessTable(aSB, &type metadata for ConfirmationSheetMoreInformationLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3860);
  }

  return result;
}

unint64_t sub_23FF9E47C()
{
  result = qword_27E3A3868;
  if (!qword_27E3A3868)
  {
    result = swift_getWitnessTable(aB_5, &type metadata for ConfirmationSheetMoreInformationLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3868);
  }

  return result;
}

unint64_t sub_23FF9E4D4()
{
  result = qword_27E3A3870;
  if (!qword_27E3A3870)
  {
    result = swift_getWitnessTable(asc_23FFE1224, &type metadata for ConfirmationSheetSymbol.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3870);
  }

  return result;
}

unint64_t sub_23FF9E52C()
{
  result = qword_27E3A3878;
  if (!qword_27E3A3878)
  {
    result = swift_getWitnessTable(byte_23FFE124C, &type metadata for ConfirmationSheetSymbol.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3878);
  }

  return result;
}

unint64_t sub_23FF9E584()
{
  result = qword_27E3A3880;
  if (!qword_27E3A3880)
  {
    result = swift_getWitnessTable(a5_1, &type metadata for ConfirmationSheetBulletPoint.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3880);
  }

  return result;
}

unint64_t sub_23FF9E5DC()
{
  result = qword_27E3A3888;
  if (!qword_27E3A3888)
  {
    result = swift_getWitnessTable(aE_7, &type metadata for ConfirmationSheetBulletPoint.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3888);
  }

  return result;
}

unint64_t sub_23FF9E634()
{
  result = qword_27E3A3890;
  if (!qword_27E3A3890)
  {
    result = swift_getWitnessTable(byte_23FFE10B4, &type metadata for ConfirmationSheetContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3890);
  }

  return result;
}

unint64_t sub_23FF9E68C()
{
  result = qword_27E3A3898;
  if (!qword_27E3A3898)
  {
    result = swift_getWitnessTable(byte_23FFE10DC, &type metadata for ConfirmationSheetContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3898);
  }

  return result;
}

uint64_t sub_23FF9E6E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEB640 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEB660 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F5074656C6C7562 && a2 == 0xEC00000073746E69 || (sub_23FFD996C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000023FFEB680 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x427972616D697270 && a2 == 0xED00006E6F747475 || (sub_23FFD996C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEB6A0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023FFEB6C0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_23FF9EA18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852793705 && a2 == 0xE400000000000000;
  if (v3 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t sub_23FF9EB2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973726576 && a2 == 0xE900000000000044 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x707041726F467369 && a2 == 0xED000065726F7453)
  {

    return 3;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t sub_23FF9ECA4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000023FFEB700 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023FFEB720 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69737365636F7270 && a2 == 0xEE0074786554676ELL || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C52556E6F6369 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_23FFD996C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23FF9EE24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A696C61636F6CLL && a2 == 0xEF6E6F7361655264;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5444496863756F74 && a2 == 0xEC000000656C7469 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5244496863756F74 && a2 == 0xED00006E6F736165 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65646F6373736170 && a2 == 0xED0000656C746954 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65646F6373736170 && a2 == 0xEE006E6F73616552)
  {

    return 4;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_23FF9EFF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000023FFEB740 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEB760 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023FFEB780 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_23FFD996C();

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

uint64_t sub_23FF9F148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSheetContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FF9F1B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSheetContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ConfirmationSheetRequest.run()()
{
  *(v1 + 32) = v0;
  type metadata accessor for LaunchAngelXPCRequest(0);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF9F2A8, 0, 0);
}

uint64_t sub_23FF9F2A8()
{
  sub_23FF9F148(v0[4], v0[5]);
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_23FF9F368;
  v2 = v0[5];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v2);
}

uint64_t sub_23FF9F368()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_23FF9F508;
  }

  else
  {
    v2 = sub_23FF9F47C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FF9F47C()
{
  sub_23FF797E0(*(v0 + 40));
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 != 2)
  {
    sub_23FF7983C(*(v0 + 16), v2);
    LOBYTE(v1) = 0;
  }

  v3 = *(v0 + 8);

  return v3(v1 & 1);
}

uint64_t sub_23FF9F508()
{
  sub_23FF797E0(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t type metadata accessor for ConfirmationSheetRequest(uint64_t a1)
{
  result = qword_27E3A38A0;
  if (!qword_27E3A38A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23FF9F5F0(uint64_t a1)
{
  result = type metadata accessor for ConfirmationSheetContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static AppLibrary.getSearchTerritory(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x2822009F8](sub_23FF9F67C, 0, 0);
}

uint64_t sub_23FF9F67C()
{
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 24) = *(v0 + 104);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 1;
  v1 = qword_27E3A2160;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_23FF9F7A4;

  return sub_23FF56B2C(v0 + 72, v0 + 16, sub_23FFBF434, 0);
}

uint64_t sub_23FF9F7A4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_23FF9F934;
  }

  else
  {
    v2 = sub_23FF9F8B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FF9F8B8()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  if (v3 != 7)
  {
    sub_23FF795B0(v1, v2, v3);
    v1 = 0;
    v2 = 0;
  }

  v4 = *(v0 + 8);

  return v4(v1, v2);
}

uint64_t sub_23FF9F934()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2(0, 0);
}

uint64_t static AppLibrary.setSearchTerritory(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_23FFD946C();
  v4[13] = sub_23FFD945C();
  v6 = sub_23FFD942C();
  v4[14] = v6;
  v4[15] = v5;

  return MEMORY[0x2822009F8](sub_23FF9FA44, v6, v5);
}

uint64_t sub_23FF9FA44()
{
  *(v0 + 16) = *(v0 + 72);
  v1 = *(v0 + 96);
  *(v0 + 24) = *(v0 + 80);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = v1;
  *(v0 + 64) = 5;
  v2 = qword_27E3A2160;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_23FF9FB78;

  return sub_23FF56EC0(v0 + 16, sub_23FF9FD90, 0);
}

uint64_t sub_23FF9FB78()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_23FFA106C;
  }

  else
  {
    v5 = sub_23FF9FCC0;
    v3 = 0;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23FF9FCC0()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_23FF9FD30, v1, v2);
}

uint64_t sub_23FF9FD30()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23FF9FD90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_11;
  v9 = _Block_copy(v10);

  [a1 setPrivateDataRequest:v8 reply:v9];
  _Block_release(v9);
}

uint64_t static AppLibrary.associatedApps(developerID:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x2822009F8](sub_23FF9FE8C, 0, 0);
}

uint64_t sub_23FF9FE8C()
{
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 24) = *(v0 + 104);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0x1000000000000000;
  *(v0 + 64) = 0;
  v1 = qword_27E3A2160;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_23FF9FFB4;

  return sub_23FF56B2C(v0 + 72, v0 + 16, sub_23FFBF434, 0);
}

uint64_t sub_23FF9FFB4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_23FFA015C;
  }

  else
  {
    v2 = sub_23FFA00C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FFA00C8()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 88);

  if (v3 != 2)
  {
    sub_23FF795B0(v2, v1, v3);
    v2 = MEMORY[0x277D84F90];
  }

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_23FFA015C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);
  v3 = MEMORY[0x277D84F90];

  return v2(v3);
}

uint64_t static AppLibrary.synchronousAssociatedApps(developerID:)(uint64_t a1, uint64_t a2)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0x1000000000000000;
  v13 = 0;
  v2 = qword_27E3A2160;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_23FF7839C(&v8, sub_23FFBF448, 0, &v6);
  v3 = v6;
  v4 = v7;

  result = v3;
  if (v4 != 2)
  {
    sub_23FF795B0(v3, *(&v3 + 1), v4);
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_23FFA02E0()
{
  *(v0 + 16) = 3;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0x2000000000000000;
  *(v0 + 64) = 1;
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_23FFA0408;

  return sub_23FF56B2C(v0 + 72, v0 + 16, sub_23FFBF434, 0);
}

uint64_t sub_23FFA0408()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_23FFA0664;
  }

  else
  {
    v2 = sub_23FFA051C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FFA051C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 88);
  if (v2 == 9)
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 72);

    return v3(v4);
  }

  else
  {
    v6 = *(v0 + 80);
    type metadata accessor for MarketplaceKitError(0);
    sub_23FFA0F40(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v1, v6, v2);
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_23FFA0664(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

Swift::Void __swiftcall AppLibrary.beginIndeterminantProgress(itemID:versionID:version:shortVersion:account:)(Swift::UInt64 itemID, Swift::UInt64 versionID, Swift::String version, Swift::String shortVersion, Swift::String_optional account)
{
  object = account.value._object;
  countAndFlagsBits = account.value._countAndFlagsBits;
  v7 = shortVersion._object;
  v21 = shortVersion._countAndFlagsBits;
  v8 = version._object;
  *(&v20 + 1) = version._countAndFlagsBits;
  *&v20 = versionID;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A28E0, &qword_23FFDBA60);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v23 = v5;
  v13 = AppLibrary.app(forAppleItemID:)(itemID);
  swift_getKeyPath();
  *&v29[0] = v13;
  sub_23FFA0F40(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
  sub_23FFD8FEC();

  if (!*(v13 + 96))
  {
    v14 = objc_allocWithZone(type metadata accessor for InstallationNSProgress());

    v15 = sub_23FF6D284(itemID);
    v25 = v20;
    *&v26 = v8;
    *(&v26 + 1) = v21;
    *&v27 = v7;
    *(&v27 + 1) = countAndFlagsBits;
    *&v28 = object;
    *(&v28 + 1) = v15;
    v29[0] = v20;
    v29[1] = v26;
    v29[2] = v27;
    v29[3] = v28;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v19 - 2) = v13;
    *(&v19 - 1) = v29;
    v24 = v13;
    sub_23FFD8FDC();
    sub_23FFA0F88(&v25);

    v17 = type metadata accessor for MarketplaceKitError(0);
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
    v18 = swift_getKeyPath();
    MEMORY[0x28223BE20](v18);
    *(&v19 - 2) = v13;
    *(&v19 - 1) = v12;
    v24 = v13;
    sub_23FFD8FDC();

    sub_23FFA0FDC(v12);
    AppLibrary.updateInstallState(forUpdated:)(v13);
  }
}

uint64_t AppLibrary.resetAppToAvailable(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A28E0, &qword_23FFDBA60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7[-v3];
  memset(v13, 0, sizeof(v13));
  swift_getKeyPath();
  v10 = a1;
  v11 = v13;
  v12 = a1;
  sub_23FFA0F40(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
  sub_23FFD8FDC();

  v5 = type metadata accessor for MarketplaceKitError(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  swift_getKeyPath();
  v8 = a1;
  v9 = v4;
  v12 = a1;
  sub_23FFD8FDC();

  sub_23FFA0FDC(v4);
  return AppLibrary.updateInstallState(forUpdated:)(a1);
}

uint64_t RepairRequest.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RepairRequest.init(bundleID:isBackground:reason:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t AppLibrary.handleRepairRequest(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  *(v1 + 56) = *(a1 + 16);
  *(v1 + 32) = *(a1 + 24);

  return MEMORY[0x2822009F8](sub_23FFA0C98, 0, 0);
}

uint64_t sub_23FFA0C98()
{
  v3 = *(v2 + 32);
  if (v3 >> 31)
  {
    __break(1u);
  }

  else
  {
    v0 = *(v2 + 56);
    v1 = *(v2 + 24);
    if (qword_27E3A2160 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_23FFA0DC0;
  v5 = *(v2 + 16);

  return sub_23FF581E4(sub_23FF581E4, v5, v1, v0 ^ 1u | (v3 << 32), 1, sub_23FF93148, 0);
}

uint64_t sub_23FFA0DC0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_23FFA0EDC;
  }

  else
  {

    v2 = sub_23FF88D50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FFA0EDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23FFA0F40(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23FFA0FDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A28E0, &qword_23FFDBA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void __swiftcall CodableAuditToken.init(auditToken:)(AppDistribution::CodableAuditToken *__return_ptr retstr, audit_token_t *auditToken)
{
  *retstr->field23FFF3D6C.val = auditToken;
  *&retstr->field23FFF3D6C.val[2] = v2;
  *&retstr->field23FFF3D6C.val[4] = v3;
  *&retstr->field23FFF3D6C.val[6] = v4;
}

uint64_t CodableAuditToken.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v16[5] = *MEMORY[0x277D85DE8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFD9A9C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_23FF71690();
    sub_23FFD997C();
    v5 = v14;
    v6 = v15;
    v10 = 0u;
    v11 = 0u;
    v7 = sub_23FFD8F8C();
    [v7 getBytes:&v10 length:32];
    sub_23FF62F84(v5, v6);

    v12 = v10;
    v13 = v11;
    __swift_destroy_boxed_opaque_existential_1(v16);
    v8 = v13;
    *a2 = v12;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CodableAuditToken.encode(to:)(void *a1)
{
  v10[5] = *MEMORY[0x277D85DE8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFD9ABC();
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v3 = sub_23FFA17BC(v7, 0x20uLL);
  v5 = v4;
  v8 = v3;
  v9 = v4;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_23FF70D64();
  sub_23FFD998C();
  sub_23FF62F84(v3, v5);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static FairPlayPassbookProvisioning.getProvisioningInfo(auditToken:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return MEMORY[0x2822009F8](sub_23FFA1328, 0, 0);
}

uint64_t sub_23FFA1328()
{
  *(v0 + 16) = *(v0 + 96);
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  *(v0 + 32) = *(v0 + 112);
  *(v0 + 48) = v1;
  *(v0 + 56) = v2 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(v0 + 64) = 0;
  sub_23FF71730(v1, v2);
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_23FFA1454;

  return sub_23FF56B2C(v0 + 72, v0 + 16, sub_23FFBF434, 0);
}

uint64_t sub_23FFA1454()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_23FFA16A0;
  }

  else
  {
    v2 = sub_23FFA1568;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FFA1568()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  if (v3 == 4)
  {
    sub_23FF62F84(*(v0 + 128), *(v0 + 136));
    v6 = *(v0 + 8);

    return v6(v2, v1);
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF8F750();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v2, v1, v3);
    sub_23FF62F84(v5, v4);
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_23FFA16A0()
{
  sub_23FF62F84(v0[16], v0[17]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_23FFA1704(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_23FFA17BC(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_23FFA1704(a1, &a1[a2]);
  }

  sub_23FFD8F0C();
  swift_allocObject();
  sub_23FFD8ECC();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_23FFD8F7C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
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

AppDistribution::AppDistributorResult __swiftcall AppDistributorResult.init(distributorID:requestingBundleID:)(Swift::String distributorID, Swift::String requestingBundleID)
{
  *v2 = distributorID;
  v2[1] = requestingBundleID;
  result.field23FFF3DA4 = requestingBundleID;
  result.field23FFF3D98 = distributorID;
  return result;
}

uint64_t sub_23FFA18E8()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x7562697274736964;
  }
}

uint64_t sub_23FFA1934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7562697274736964 && a2 == 0xED00004449726F74;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023FFEB7E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FFA1A20(uint64_t a1)
{
  v2 = sub_23FFA1C2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA1A5C(uint64_t a1)
{
  v2 = sub_23FFA1C2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppDistributorResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A38B0, &qword_23FFE20B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA1C2C();
  sub_23FFD9ACC();
  v12 = 0;
  v8 = v10[3];
  sub_23FFD98EC();
  if (!v8)
  {
    v11 = 1;
    sub_23FFD98EC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23FFA1C2C()
{
  result = qword_27E3A38B8;
  if (!qword_27E3A38B8)
  {
    result = swift_getWitnessTable(byte_23FFE2290, &type metadata for AppDistributorResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A38B8);
  }

  return result;
}

uint64_t AppDistributorResult.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A38C0, &qword_23FFE20B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA1C2C();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_23FFD980C();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_23FFD980C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FFA1ED0()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 environment];

  v3 = sub_23FFD930C();
  if (*(v3 + 16) && (v4 = sub_23FF88F80(0xD00000000000001BLL, 0x800000023FFEB7A0), (v5 & 1) != 0))
  {
    v6 = (*(v3 + 56) + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *(v0 + 56) = v7;

  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_23FFA2098;

  return sub_23FF58854(v0 + 16, v8, v7, sub_23FFA2250, 0);
}

uint64_t sub_23FFA2098()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_23FFA2238;
  }

  else
  {
    v2 = sub_23FFA21C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FFA21C8()
{
  v6 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v5[0] = *(v0 + 16);
  v5[1] = v2;
  AppDistributor.init(result:)(v5, v1);
  v3 = *(v0 + 8);

  return v3();
}

void AppDistributor.init(result:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = *a1;
    v6 = a1[2];
    v5 = a1[3];
    if (*a1 == 0xD000000000000012 && v3 == 0x800000023FFEAB80)
    {
      v8 = 0xD000000000000012;
      goto LABEL_10;
    }

    if (sub_23FFD996C())
    {
      v8 = v4;
LABEL_10:
      sub_23FF97188(v8, v3, v6, v5);
      v4 = 0;
      v3 = 0;
      goto LABEL_11;
    }

    if (v4 == 0xD000000000000014 && v3 == 0x800000023FFEB7C0)
    {
      v9 = 0xD000000000000014;
LABEL_17:
      sub_23FF97188(v9, v3, v6, v5);
      v4 = 0;
      v3 = 1;
      goto LABEL_11;
    }

    if (sub_23FFD996C())
    {
      v9 = v4;
      goto LABEL_17;
    }

    if (v4 == v6 && v3 == v5)
    {
      v10 = v4;
      v11 = v3;
      v12 = v4;
      v13 = v3;
    }

    else
    {
      if ((sub_23FFD996C() & 1) == 0)
      {

        sub_23FF97188(v4, v3, v6, v5);
        goto LABEL_11;
      }

      v10 = v4;
      v11 = v3;
      v12 = v6;
      v13 = v5;
    }

    sub_23FF97188(v10, v11, v12, v13);
    v4 = 0;
    v3 = 2;
  }

  else
  {
    v4 = 0;
    v3 = 3;
  }

LABEL_11:
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_23FFA241C()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23FF6E6E4;
  v2 = *(v0 + 24);

  return sub_23FF58C40(v2, sub_23FFA2514, 0);
}

uint64_t get_enum_tag_for_layout_string_15AppDistribution0A11DistributorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23FFA2550(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23FFA25A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_23FFA2624()
{
  result = qword_27E3A38C8;
  if (!qword_27E3A38C8)
  {
    result = swift_getWitnessTable(aAB, &type metadata for AppDistributorResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A38C8);
  }

  return result;
}

unint64_t sub_23FFA267C()
{
  result = qword_27E3A38D0;
  if (!qword_27E3A38D0)
  {
    result = swift_getWitnessTable(aRB_0, &type metadata for AppDistributorResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A38D0);
  }

  return result;
}

unint64_t sub_23FFA26D4()
{
  result = qword_27E3A38D8;
  if (!qword_27E3A38D8)
  {
    result = swift_getWitnessTable(aB_6, &type metadata for AppDistributorResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A38D8);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t TransactionReporting.TokenType.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void *sub_23FFA27A8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

double sub_23FFA27B4@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t static TransactionReporting.token(for:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;

  return MEMORY[0x2822009F8](sub_23FFA2830, 0, 0);
}

uint64_t sub_23FFA2830()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_23FFA2934;
  v2 = v0[4];
  v3 = v0[5];

  return sub_23FF59054((v0 + 2), v2, v3, 0, 0, sub_23FFA2AAC, 0);
}

uint64_t sub_23FFA2934()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_23FFA2A88;
  }

  else
  {
    v2 = sub_23FFA2A6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

AppDistribution::SKTransactionReportTokenRequest __swiftcall SKTransactionReportTokenRequest.init(tokenType:bundleIDOverride:)(Swift::String tokenType, Swift::String_optional bundleIDOverride)
{
  v2->value = tokenType;
  v2[1] = bundleIDOverride;
  result.field23FFF3E6C = bundleIDOverride;
  result.field23FFF3E60 = tokenType;
  return result;
}

void sub_23FFA2AAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_13;
  v9 = _Block_copy(v10);

  [a1 tokenForTokenType:v8 reply:v9];
  _Block_release(v9);
}

uint64_t SKTransactionReportTokenRequest.tokenType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SKTransactionReportTokenRequest.bundleIDOverride.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_23FFA2BE8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7079546E656B6F74;
  }
}

uint64_t sub_23FFA2C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7079546E656B6F74 && a2 == 0xE900000000000065;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEB800 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FFA2D18(uint64_t a1)
{
  v2 = sub_23FFA2F24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA2D54(uint64_t a1)
{
  v2 = sub_23FFA2F24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SKTransactionReportTokenRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A38E0, &qword_23FFE22E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA2F24();
  sub_23FFD9ACC();
  v12 = 0;
  v8 = v10[3];
  sub_23FFD98EC();
  if (!v8)
  {
    v11 = 1;
    sub_23FFD989C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23FFA2F24()
{
  result = qword_27E3A38E8;
  if (!qword_27E3A38E8)
  {
    result = swift_getWitnessTable(byte_23FFE267C, &type metadata for SKTransactionReportTokenRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A38E8);
  }

  return result;
}

uint64_t SKTransactionReportTokenRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A38F0, &qword_23FFE22F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA2F24();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_23FFD980C();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_23FFD97BC();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FFA31BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FFA3240(uint64_t a1)
{
  v2 = sub_23FFA33F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA327C(uint64_t a1)
{
  v2 = sub_23FFA33F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SKTransactionReportTokenResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A38F8, &qword_23FFE22F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA33F4();
  sub_23FFD9ACC();
  sub_23FFD98EC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_23FFA33F4()
{
  result = qword_27E3A3900;
  if (!qword_27E3A3900)
  {
    result = swift_getWitnessTable(byte_23FFE262C, &type metadata for SKTransactionReportTokenResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3900);
  }

  return result;
}

uint64_t SKTransactionReportTokenResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3908, &qword_23FFE2300);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA33F4();
  sub_23FFD9AAC();
  if (!v2)
  {
    v9 = sub_23FFD980C();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FFA35D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A38F8, &qword_23FFE22F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA33F4();
  sub_23FFD9ACC();
  sub_23FFD98EC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_23FFA3774()
{
  result = qword_27E3A3910;
  if (!qword_27E3A3910)
  {
    result = swift_getWitnessTable(aBt, &type metadata for SKTransactionReportTokenRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3910);
  }

  return result;
}

unint64_t sub_23FFA37CC()
{
  result = qword_27E3A3918;
  if (!qword_27E3A3918)
  {
    result = swift_getWitnessTable(byte_23FFE2604, &type metadata for SKTransactionReportTokenResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3918);
  }

  return result;
}

unint64_t sub_23FFA3824()
{
  result = qword_27E3A3920;
  if (!qword_27E3A3920)
  {
    result = swift_getWitnessTable(asc_23FFE2574, &type metadata for SKTransactionReportTokenResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3920);
  }

  return result;
}

unint64_t sub_23FFA387C()
{
  result = qword_27E3A3928;
  if (!qword_27E3A3928)
  {
    result = swift_getWitnessTable(asc_23FFE259C, &type metadata for SKTransactionReportTokenResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3928);
  }

  return result;
}

unint64_t sub_23FFA38D4()
{
  result = qword_27E3A3930;
  if (!qword_27E3A3930)
  {
    result = swift_getWitnessTable(byte_23FFE24BC, &type metadata for SKTransactionReportTokenRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3930);
  }

  return result;
}

unint64_t sub_23FFA392C()
{
  result = qword_27E3A3938;
  if (!qword_27E3A3938)
  {
    result = swift_getWitnessTable(byte_23FFE24E4, &type metadata for SKTransactionReportTokenRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3938);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t UpdateMetadata.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UpdateMetadata.bundleVersion.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UpdateMetadata.itemID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t UpdateMetadata.shortVersionString.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall UpdateMetadata.init(bundleID:bundleVersion:itemID:shortVersionString:)(AppDistribution::UpdateMetadata *__return_ptr retstr, Swift::String bundleID, Swift::String bundleVersion, Swift::String itemID, Swift::String shortVersionString)
{
  retstr->field23FFF3EE8 = bundleID;
  retstr->field23FFF3EF4 = bundleVersion;
  retstr->field23FFF3F00 = itemID;
  retstr->field23FFF3F0C = shortVersionString;
}

unint64_t sub_23FFA3A7C()
{
  v1 = 0x4449656C646E7562;
  v2 = 0x44496D657469;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x6556656C646E7562;
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

uint64_t sub_23FFA3B04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FFA4338(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FFA3B2C(uint64_t a1)
{
  v2 = sub_23FFA3D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA3B68(uint64_t a1)
{
  v2 = sub_23FFA3D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpdateMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3940, &qword_23FFE26D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA3D98();
  sub_23FFD9ACC();
  v16 = 0;
  v10 = v12[7];
  sub_23FFD98EC();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_23FFD98EC();
  v14 = 2;
  sub_23FFD98EC();
  v13 = 3;
  sub_23FFD98EC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23FFA3D98()
{
  result = qword_27E3A3948;
  if (!qword_27E3A3948)
  {
    result = swift_getWitnessTable(aB_7, &type metadata for UpdateMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3948);
  }

  return result;
}

uint64_t UpdateMetadata.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3950, &qword_23FFE26D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA3D98();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_23FFD980C();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_23FFD980C();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_23FFD980C();
  v25 = v13;
  v33 = 3;
  v14 = sub_23FFD980C();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_23FFA40E0(&v28, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  return sub_23FFA4118(v32);
}

uint64_t sub_23FFA4178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_23FFA41C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23FFA4234()
{
  result = qword_27E3A3958;
  if (!qword_27E3A3958)
  {
    result = swift_getWitnessTable(byte_23FFE2824, &type metadata for UpdateMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3958);
  }

  return result;
}

unint64_t sub_23FFA428C()
{
  result = qword_27E3A3960;
  if (!qword_27E3A3960)
  {
    result = swift_getWitnessTable(asc_23FFE2794, &type metadata for UpdateMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3960);
  }

  return result;
}

unint64_t sub_23FFA42E4()
{
  result = qword_27E3A3968;
  if (!qword_27E3A3968)
  {
    result = swift_getWitnessTable(byte_23FFE27BC, &type metadata for UpdateMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3968);
  }

  return result;
}

uint64_t sub_23FFA4338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6556656C646E7562 && a2 == 0xED00006E6F697372 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D657469 && a2 == 0xE600000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023FFEB820 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t DeveloperApprovalSheetContext.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeveloperApprovalSheetContext.body.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.firstBulletTitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.firstBulletBody.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.secondBulletTitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.secondBulletBody.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.thirdBulletTitle.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.thirdBulletBody.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.allowButtonText.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.ignoreButtonText.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.developerID.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.developerName.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.supportURL.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.passcodeTitle.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.passcodeReason.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.touchIDTitle.getter()
{
  v1 = *(v0 + 240);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.touchIDReason.getter()
{
  v1 = *(v0 + 256);

  return v1;
}

void __swiftcall DeveloperApprovalSheetContext.init(title:body:firstBulletTitle:firstBulletBody:secondBulletTitle:secondBulletBody:thirdBulletTitle:thirdBulletBody:allowButtonText:ignoreButtonText:developerID:developerName:supportURL:passcodeTitle:passcodeReason:touchIDTitle:touchIDReason:)(AppDistribution::DeveloperApprovalSheetContext *__return_ptr retstr, Swift::String title, Swift::String body, Swift::String firstBulletTitle, Swift::String firstBulletBody, Swift::String secondBulletTitle, Swift::String secondBulletBody, Swift::String thirdBulletTitle, Swift::String thirdBulletBody, Swift::String allowButtonText, Swift::String ignoreButtonText, Swift::String developerID, Swift::String developerName, Swift::String_optional supportURL, Swift::String passcodeTitle, Swift::String passcodeReason, Swift::String touchIDTitle, Swift::String touchIDReason)
{
  retstr->field23FFF3F68 = title;
  retstr->field23FFF3F74 = body;
  retstr->field23FFF3F80 = firstBulletTitle;
  retstr->field23FFF3F8C = firstBulletBody;
  retstr->field23FFF3F98 = secondBulletTitle;
  retstr->field23FFF3FA4 = secondBulletBody;
  retstr->field23FFF3FB0 = thirdBulletTitle;
  retstr->field23FFF3FBC = thirdBulletBody;
  retstr->field23FFF3FC8 = allowButtonText;
  retstr->field23FFF3FD4 = ignoreButtonText;
  retstr->field23FFF3FE0 = developerID;
  retstr->field23FFF3FEC = developerName;
  retstr->field23FFF3FF8 = supportURL;
  retstr->field23FFF4004 = passcodeTitle;
  retstr->field23FFF4010 = passcodeReason;
  retstr->field23FFF401C = touchIDTitle;
  retstr->field23FFF4028 = touchIDReason;
}

uint64_t sub_23FFA4824(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 2036625250;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      v3 = 0x427473726966;
      goto LABEL_11;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      v3 = 0x426472696874;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6C75000000000000;
      break;
    case 8:
      result = 0x747542776F6C6C61;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
    case 11:
      result = 0x65706F6C65766564;
      break;
    case 12:
      result = 0x5574726F70707573;
      break;
    case 13:
    case 14:
      result = 0x65646F6373736170;
      break;
    case 15:
      result = 0x5444496863756F74;
      break;
    case 16:
      result = 0x5244496863756F74;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23FFA4A10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FFA5F80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FFA4A44(uint64_t a1)
{
  v2 = sub_23FFA4FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA4A80(uint64_t a1)
{
  v2 = sub_23FFA4FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeveloperApprovalSheetContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3970, &qword_23FFE28A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v29 - v5;
  v7 = v1[2];
  v29[30] = v1[3];
  v29[31] = v7;
  v8 = v1[4];
  v29[28] = v1[5];
  v29[29] = v8;
  v9 = v1[6];
  v29[26] = v1[7];
  v29[27] = v9;
  v10 = v1[9];
  v29[24] = v1[8];
  v29[25] = v10;
  v11 = v1[11];
  v29[22] = v1[10];
  v29[23] = v11;
  v12 = v1[13];
  v29[20] = v1[12];
  v29[21] = v12;
  v13 = v1[15];
  v29[18] = v1[14];
  v29[19] = v13;
  v14 = v1[17];
  v29[16] = v1[16];
  v29[17] = v14;
  v15 = v1[19];
  v29[14] = v1[18];
  v29[15] = v15;
  v16 = v1[21];
  v29[12] = v1[20];
  v29[13] = v16;
  v17 = v1[23];
  v29[10] = v1[22];
  v29[11] = v17;
  v18 = v1[25];
  v29[8] = v1[24];
  v29[9] = v18;
  v19 = v1[27];
  v29[6] = v1[26];
  v29[7] = v19;
  v20 = v1[29];
  v29[4] = v1[28];
  v29[5] = v20;
  v21 = v1[31];
  v29[2] = v1[30];
  v29[3] = v21;
  v22 = v1[33];
  v29[1] = v1[32];
  v23 = a1[3];
  v24 = a1;
  v26 = v25;
  __swift_project_boxed_opaque_existential_1(v24, v23);
  sub_23FFA4FC0();
  sub_23FFD9ACC();
  v31 = 0;
  v27 = v30;
  sub_23FFD98EC();
  if (!v27)
  {
    v30 = v22;
    v31 = 1;
    sub_23FFD98EC();
    v31 = 2;
    sub_23FFD98EC();
    v31 = 3;
    sub_23FFD98EC();
    v31 = 4;
    sub_23FFD98EC();
    v31 = 5;
    sub_23FFD98EC();
    v31 = 6;
    sub_23FFD98EC();
    v31 = 7;
    sub_23FFD98EC();
    v31 = 8;
    sub_23FFD98EC();
    v31 = 9;
    sub_23FFD98EC();
    v31 = 10;
    sub_23FFD98EC();
    v31 = 11;
    sub_23FFD98EC();
    v31 = 12;
    sub_23FFD989C();
    v31 = 13;
    sub_23FFD98EC();
    v31 = 14;
    sub_23FFD98EC();
    v31 = 15;
    sub_23FFD98EC();
    v31 = 16;
    sub_23FFD98EC();
  }

  return (*(v4 + 8))(v6, v26);
}

unint64_t sub_23FFA4FC0()
{
  result = qword_27E3A3978;
  if (!qword_27E3A3978)
  {
    result = swift_getWitnessTable(aU_9, &type metadata for DeveloperApprovalSheetContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3978);
  }

  return result;
}

uint64_t DeveloperApprovalSheetContext.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3980, &qword_23FFE28A8);
  v5 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v7 = &v41 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA4FC0();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v73 = a2;
  v74 = a1;
  v8 = v5;
  LOBYTE(v77[0]) = 0;
  v9 = sub_23FFD980C();
  v72 = v10;
  LOBYTE(v77[0]) = 1;
  v11 = sub_23FFD980C();
  v69 = v12;
  v71 = v11;
  LOBYTE(v77[0]) = 2;
  v68 = 0;
  v70 = sub_23FFD980C();
  v67 = v13;
  LOBYTE(v77[0]) = 3;
  v57 = sub_23FFD980C();
  v66 = v14;
  LOBYTE(v77[0]) = 4;
  v56 = sub_23FFD980C();
  v65 = v15;
  LOBYTE(v77[0]) = 5;
  v55 = sub_23FFD980C();
  v64 = v16;
  LOBYTE(v77[0]) = 6;
  v54 = sub_23FFD980C();
  v63 = v17;
  LOBYTE(v77[0]) = 7;
  v53 = sub_23FFD980C();
  v62 = v18;
  LOBYTE(v77[0]) = 8;
  v52 = sub_23FFD980C();
  v61 = v19;
  LOBYTE(v77[0]) = 9;
  v20 = sub_23FFD980C();
  v60 = v21;
  v22 = v20;
  LOBYTE(v77[0]) = 10;
  v23 = sub_23FFD980C();
  v59 = v24;
  v25 = v23;
  LOBYTE(v77[0]) = 11;
  v26 = sub_23FFD980C();
  v58 = v27;
  v28 = v26;
  LOBYTE(v77[0]) = 12;
  v50 = sub_23FFD97BC();
  v51 = v29;
  LOBYTE(v77[0]) = 13;
  v48 = sub_23FFD980C();
  v49 = v30;
  v68 = 0;
  LOBYTE(v77[0]) = 14;
  v45 = sub_23FFD980C();
  v47 = v31;
  LOBYTE(v77[0]) = 15;
  v44 = sub_23FFD980C();
  v46 = v32;
  v78 = 16;
  v33 = sub_23FFD980C();
  v43 = v34;
  v35 = v33;
  (*(v8 + 8))(v7, v75);
  v36 = v71;
  v76[0] = v9;
  v76[1] = v72;
  v37 = v69;
  v76[2] = v71;
  v76[3] = v69;
  v76[4] = v70;
  v76[5] = v67;
  v76[6] = v57;
  v76[7] = v66;
  v76[8] = v56;
  v76[9] = v65;
  v76[10] = v55;
  v76[11] = v64;
  v76[12] = v54;
  v76[13] = v63;
  v76[14] = v53;
  v76[15] = v62;
  v76[16] = v52;
  v76[17] = v61;
  v41 = v25;
  v42 = v22;
  v76[18] = v22;
  v76[19] = v60;
  v76[20] = v25;
  v76[21] = v59;
  v76[22] = v28;
  v76[23] = v58;
  v38 = v51;
  v76[24] = v50;
  v76[25] = v51;
  v39 = v49;
  v76[26] = v48;
  v76[27] = v49;
  v76[28] = v45;
  v76[29] = v47;
  v76[30] = v44;
  v76[31] = v46;
  v76[32] = v35;
  v76[33] = v43;
  memcpy(v73, v76, 0x110uLL);
  sub_23FFA5BAC(v76, v77);
  __swift_destroy_boxed_opaque_existential_1(v74);
  v77[0] = v9;
  v77[1] = v72;
  v77[2] = v36;
  v77[3] = v37;
  v77[4] = v70;
  v77[5] = v67;
  v77[6] = v57;
  v77[7] = v66;
  v77[8] = v56;
  v77[9] = v65;
  v77[10] = v55;
  v77[11] = v64;
  v77[12] = v54;
  v77[13] = v63;
  v77[14] = v53;
  v77[15] = v62;
  v77[16] = v52;
  v77[17] = v61;
  v77[18] = v42;
  v77[19] = v60;
  v77[20] = v41;
  v77[21] = v59;
  v77[22] = v28;
  v77[23] = v58;
  v77[24] = v50;
  v77[25] = v38;
  v77[26] = v48;
  v77[27] = v39;
  v77[28] = v45;
  v77[29] = v47;
  v77[30] = v44;
  v77[31] = v46;
  v77[32] = v35;
  v77[33] = v43;
  return sub_23FFA5BE4(v77);
}

uint64_t sub_23FFA5C4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_23FFA5C94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeveloperApprovalSheetContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeveloperApprovalSheetContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23FFA5E7C()
{
  result = qword_27E3A3988;
  if (!qword_27E3A3988)
  {
    result = swift_getWitnessTable(byte_23FFE2AAC, &type metadata for DeveloperApprovalSheetContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3988);
  }

  return result;
}

unint64_t sub_23FFA5ED4()
{
  result = qword_27E3A3990;
  if (!qword_27E3A3990)
  {
    result = swift_getWitnessTable(byte_23FFE2A1C, &type metadata for DeveloperApprovalSheetContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3990);
  }

  return result;
}

unint64_t sub_23FFA5F2C()
{
  result = qword_27E3A3998;
  if (!qword_27E3A3998)
  {
    result = swift_getWitnessTable(byte_23FFE2A44, &type metadata for DeveloperApprovalSheetContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3998);
  }

  return result;
}

uint64_t sub_23FFA5F80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEB840 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C75427473726966 && a2 == 0xEF79646F4274656CLL || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023FFEB860 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEB880 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEB8A0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C75426472696874 && a2 == 0xEF79646F4274656CLL || (sub_23FFD996C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x747542776F6C6C61 && a2 == 0xEF747865546E6F74 || (sub_23FFD996C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEB8C0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xEB00000000444972 || (sub_23FFD996C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72 || (sub_23FFD996C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x5574726F70707573 && a2 == 0xEA00000000004C52 || (sub_23FFD996C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x65646F6373736170 && a2 == 0xED0000656C746954 || (sub_23FFD996C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x65646F6373736170 && a2 == 0xEE006E6F73616552 || (sub_23FFD996C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x5444496863756F74 && a2 == 0xEC000000656C7469 || (sub_23FFD996C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x5244496863756F74 && a2 == 0xED00006E6F736165)
  {

    return 16;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t OAuthAuthorizationContext.logKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OAuthAuthorizationContext.requestURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OAuthAuthorizationContext(0) + 20);
  v4 = sub_23FFD8F6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for OAuthAuthorizationContext(uint64_t a1)
{
  result = qword_27E3A39B8;
  if (!qword_27E3A39B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OAuthAuthorizationContext.init(logKey:requestURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for OAuthAuthorizationContext(0) + 20);
  v7 = sub_23FFD8F6C();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_23FFA6674()
{
  if (*v0)
  {
    return 0x5574736575716572;
  }

  else
  {
    return 0x79654B676F6CLL;
  }
}

uint64_t sub_23FFA66B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5574736575716572 && a2 == 0xEA00000000004C52)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FFA6790(uint64_t a1)
{
  v2 = sub_23FFA69AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA67CC(uint64_t a1)
{
  v2 = sub_23FFA69AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OAuthAuthorizationContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A39A0, &qword_23FFE2B30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA69AC();
  sub_23FFD9ACC();
  v8[15] = 0;
  sub_23FFD98EC();
  if (!v1)
  {
    type metadata accessor for OAuthAuthorizationContext(0);
    v8[14] = 1;
    sub_23FFD8F6C();
    sub_23FF82E4C(&qword_27E3A2438, MEMORY[0x277CC9268]);
    sub_23FFD991C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23FFA69AC()
{
  result = qword_27E3A39A8;
  if (!qword_27E3A39A8)
  {
    result = swift_getWitnessTable(byte_23FFE2C80, &type metadata for OAuthAuthorizationContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A39A8);
  }

  return result;
}

uint64_t OAuthAuthorizationContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_23FFD8F6C();
  v16 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A39B0, &qword_23FFE2B38);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for OAuthAuthorizationContext(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA69AC();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_23FFD980C();
  v10[1] = v13;
  v21 = 1;
  sub_23FF82E4C(&qword_27E3A2458, MEMORY[0x277CC9280]);
  sub_23FFD983C();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_23FFA6D10(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23FFA6D74(v10);
}

uint64_t sub_23FFA6D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuthAuthorizationContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FFA6D74(uint64_t a1)
{
  v2 = type metadata accessor for OAuthAuthorizationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23FFA6E3C()
{
  result = qword_27E3A39C8;
  if (!qword_27E3A39C8)
  {
    result = swift_getWitnessTable(aQtB, &type metadata for OAuthAuthorizationContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A39C8);
  }

  return result;
}

unint64_t sub_23FFA6E94()
{
  result = qword_27E3A39D0;
  if (!qword_27E3A39D0)
  {
    result = swift_getWitnessTable(aKB, &type metadata for OAuthAuthorizationContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A39D0);
  }

  return result;
}

unint64_t sub_23FFA6EEC()
{
  result = qword_27E3A39D8;
  if (!qword_27E3A39D8)
  {
    result = swift_getWitnessTable(byte_23FFE2BF0, &type metadata for OAuthAuthorizationContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A39D8);
  }

  return result;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.installType.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.appName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_23FFA6FE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.metricsFieldData.getter()
{
  v1 = v0 + *(type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0) + 32);
  v2 = *v1;
  sub_23FFA7094(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_23FFA7094(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23FF71730(result, a2);
  }

  return result;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.init(showBiometrics:installType:metricsFieldData:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  v13 = *(v12 + 28);
  v14 = sub_23FFD8F6C();
  result = (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0xE000000000000000;
  v16 = (a6 + *(v12 + 32));
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.init(showBiometrics:installType:appName:iconURL:metricsFieldData:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  v13 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  result = sub_23FF6832C(a6, a9 + *(v13 + 28));
  v15 = (a9 + *(v13 + 32));
  *v15 = a7;
  v15[1] = a8;
  return result;
}

uint64_t sub_23FFA71D4()
{
  v1 = *v0;
  v2 = 0x6D6F6942776F6873;
  v3 = 0x656D614E707061;
  v4 = 0x4C52556E6F6369;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x546C6C6174736E69;
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

uint64_t sub_23FFA7288@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FFAFA04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FFA72B0(uint64_t a1)
{
  v2 = sub_23FFAD708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA72EC(uint64_t a1)
{
  v2 = sub_23FFAD708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A39E0, &qword_23FFE2CD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFAD708();
  sub_23FFD9ACC();
  LOBYTE(v14) = 0;
  sub_23FFD98FC();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_23FFD98EC();
    LOBYTE(v14) = 2;
    sub_23FFD98EC();
    v9 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
    LOBYTE(v14) = 3;
    sub_23FFD8F6C();
    sub_23FFAD75C(&qword_27E3A2438, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_23FFD98CC();
    v10 = (v3 + *(v9 + 32));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 4;
    sub_23FFA7094(v14, v11);
    sub_23FF70D64();
    sub_23FFD98CC();
    sub_23FF6EC6C(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A39F0, &qword_23FFE2CE0);
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v18 - v8;
  v10 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_23FFAD708();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v14 = v19;
  LOBYTE(v22) = 0;
  *v12 = sub_23FFD981C() & 1;
  LOBYTE(v22) = 1;
  *(v12 + 1) = sub_23FFD980C();
  *(v12 + 2) = v15;
  LOBYTE(v22) = 2;
  *(v12 + 3) = sub_23FFD980C();
  *(v12 + 4) = v16;
  sub_23FFD8F6C();
  LOBYTE(v22) = 3;
  sub_23FFAD75C(&qword_27E3A2458, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_23FFD97EC();
  sub_23FF6832C(v6, &v12[*(v10 + 28)]);
  v23 = 4;
  sub_23FF71690();
  sub_23FFD97EC();
  (*(v7 + 8))(v9, v20);
  *&v12[*(v10 + 32)] = v22;
  sub_23FFADBC0(v12, v14, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_23FFADC28(v12, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
}

uint64_t InstallSheetContext.Source.WebInstallContext.appName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t InstallSheetContext.Source.WebInstallContext.iconURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InstallSheetContext.Source.WebInstallContext(0) + 36);

  return sub_23FFA6FE0(v3, a1);
}

uint64_t InstallSheetContext.Source.WebInstallContext.init(domain:developerName:developerID:appName:isUpdate:iconURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  v11 = a9 + *(type metadata accessor for InstallSheetContext.Source.WebInstallContext(0) + 36);

  return sub_23FF6832C(a11, v11);
}

uint64_t sub_23FFA7B04()
{
  v1 = *v0;
  v2 = 0x6E69616D6F64;
  v3 = 0x656D614E707061;
  v4 = 0x6574616470557369;
  if (v1 != 4)
  {
    v4 = 0x4C52556E6F6369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65706F6C65766564;
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

uint64_t sub_23FFA7BD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FFAFBC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FFA7BF8(uint64_t a1)
{
  v2 = sub_23FFADB6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA7C34(uint64_t a1)
{
  v2 = sub_23FFADB6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InstallSheetContext.Source.WebInstallContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A39F8, &qword_23FFE2CE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFADB6C();
  sub_23FFD9ACC();
  v8[15] = 0;
  sub_23FFD98EC();
  if (!v1)
  {
    v8[14] = 1;
    sub_23FFD98EC();
    v8[13] = 2;
    sub_23FFD98EC();
    v8[12] = 3;
    sub_23FFD98EC();
    v8[11] = 4;
    sub_23FFD98FC();
    type metadata accessor for InstallSheetContext.Source.WebInstallContext(0);
    v8[10] = 5;
    sub_23FFD8F6C();
    sub_23FFAD75C(&qword_27E3A2438, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_23FFD98CC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t InstallSheetContext.Source.WebInstallContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A08, &qword_23FFE2CF0);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for InstallSheetContext.Source.WebInstallContext(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFADB6C();
  v26 = v9;
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v6;
  v13 = v24;
  v14 = v25;
  v32 = 0;
  *v12 = sub_23FFD980C();
  *(v12 + 1) = v15;
  v31 = 1;
  *(v12 + 2) = sub_23FFD980C();
  *(v12 + 3) = v16;
  v30 = 2;
  *(v12 + 4) = sub_23FFD980C();
  *(v12 + 5) = v17;
  v29 = 3;
  *(v12 + 6) = sub_23FFD980C();
  *(v12 + 7) = v18;
  v28 = 4;
  v12[64] = sub_23FFD981C() & 1;
  sub_23FFD8F6C();
  v27 = 5;
  sub_23FFAD75C(&qword_27E3A2458, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v19 = v22;
  sub_23FFD97EC();
  (*(v13 + 8))(v26, v14);
  sub_23FF6832C(v19, &v12[*(v10 + 36)]);
  sub_23FFADBC0(v12, v23, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23FFADC28(v12, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
}

uint64_t InstallSheetContext.Source.DistributorContext.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InstallSheetContext.Source.DistributorContext.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InstallSheetContext.Source.DistributorContext.appName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_23FFA844C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 28);

  return sub_23FFA6FE0(v4, a2);
}

uint64_t InstallSheetContext.Source.DistributorContext.init(name:id:appName:iconURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v9 = a8 + *(type metadata accessor for InstallSheetContext.Source.DistributorContext(0) + 28);

  return sub_23FF6832C(a7, v9);
}

uint64_t sub_23FFA84F0()
{
  v1 = 1701667182;
  v2 = 0x656D614E707061;
  if (*v0 != 2)
  {
    v2 = 0x4C52556E6F6369;
  }

  if (*v0)
  {
    v1 = 25705;
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

uint64_t sub_23FFA8558@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FFAFDCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FFA8580(uint64_t a1)
{
  v2 = sub_23FFAE01C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA85BC(uint64_t a1)
{
  v2 = sub_23FFAE01C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InstallSheetContext.Source.DistributorContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A10, &qword_23FFE2CF8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFAE01C();
  sub_23FFD9ACC();
  v8[15] = 0;
  sub_23FFD98EC();
  if (!v1)
  {
    v8[14] = 1;
    sub_23FFD98EC();
    v8[13] = 2;
    sub_23FFD98EC();
    type metadata accessor for InstallSheetContext.Source.DistributorContext(0);
    v8[12] = 3;
    sub_23FFD8F6C();
    sub_23FFAD75C(&qword_27E3A2438, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_23FFD98CC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t InstallSheetContext.Source.DistributorContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A20, &qword_23FFE2D00);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = type metadata accessor for InstallSheetContext.Source.DistributorContext(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFAE01C();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v13 = v6;
  v15 = v23;
  v14 = v24;
  v28 = 0;
  *v12 = sub_23FFD980C();
  v12[1] = v16;
  v27 = 1;
  v12[2] = sub_23FFD980C();
  v12[3] = v17;
  v26 = 2;
  v20[1] = 0;
  v12[4] = sub_23FFD980C();
  v12[5] = v18;
  sub_23FFD8F6C();
  v25 = 3;
  sub_23FFAD75C(&qword_27E3A2458, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_23FFD97EC();
  (*(v15 + 8))(v9, v14);
  sub_23FF6832C(v13, v12 + *(v21 + 28));
  sub_23FFADBC0(v12, v22, type metadata accessor for InstallSheetContext.Source.DistributorContext);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23FFADC28(v12, type metadata accessor for InstallSheetContext.Source.DistributorContext);
}

uint64_t InstallSheetContext.Source.isAppStore.getter()
{
  v1 = type metadata accessor for InstallSheetContext.Source(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23FFADBC0(v0, v3, type metadata accessor for InstallSheetContext.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = 1;
  v6 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext;
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_9:
      sub_23FFADC28(v3, v6);
      return v5;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v5 = 0;
      v6 = type metadata accessor for InstallSheetContext.Source.DistributorContext;
      goto LABEL_9;
    }

LABEL_8:
    v5 = 0;
    v6 = type metadata accessor for InstallSheetContext.Source;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v5 = 0;
    v6 = type metadata accessor for InstallSheetContext.Source.WebInstallContext;
    goto LABEL_9;
  }

  return v5;
}

uint64_t InstallSheetContext.Source.isWebInstall.getter()
{
  v1 = v0;
  v2 = type metadata accessor for InstallSheetContext.Source(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InstallSheetContext.Source;
  sub_23FFADBC0(v1, v4, type metadata accessor for InstallSheetContext.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v7 = 1;
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      v7 = 1;
      v8 = type metadata accessor for InstallSheetContext.Source.WebInstallContext;
    }

    else
    {
      v7 = 0;
      v8 = type metadata accessor for InstallSheetContext.Source;
    }

    v5 = v8;
  }

  sub_23FFADC28(v4, v5);
  return v7;
}

uint64_t sub_23FFA8E68(uint64_t a1)
{
  v2 = sub_23FFAE2F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA8EA4(uint64_t a1)
{
  v2 = sub_23FFAE2F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFA8EE0(uint64_t a1)
{
  v2 = sub_23FFAE29C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA8F1C(uint64_t a1)
{
  v2 = sub_23FFAE29C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23FFA8F58()
{
  v1 = *v0;
  v2 = 0x65726F7453707061;
  v3 = 0xD000000000000016;
  v4 = 6448503;
  if (v1 != 4)
  {
    v4 = 0x4368746957626577;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0x7562697274736964;
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

uint64_t sub_23FFA902C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FFAFF28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FFA9054(uint64_t a1)
{
  v2 = sub_23FFAE090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA9090(uint64_t a1)
{
  v2 = sub_23FFAE090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFA90CC()
{
  if (*v0)
  {
    return 25705;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_23FFA90F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FFA91C8(uint64_t a1)
{
  v2 = sub_23FFAE248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA9204(uint64_t a1)
{
  v2 = sub_23FFAE248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFA9240(uint64_t a1)
{
  v2 = sub_23FFAE1F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA927C(uint64_t a1)
{
  v2 = sub_23FFAE1F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFA92B8()
{
  if (*v0)
  {
    return 0x65706F6C65766564;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_23FFA92FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FFA93DC(uint64_t a1)
{
  v2 = sub_23FFAE138();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA9418(uint64_t a1)
{
  v2 = sub_23FFAE138();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFA9454(uint64_t a1)
{
  v2 = sub_23FFAE0E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA9490(uint64_t a1)
{
  v2 = sub_23FFAE0E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InstallSheetContext.Source.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A28, &qword_23FFE2D08);
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x28223BE20](v2);
  v66 = &v48 - v3;
  v62 = type metadata accessor for InstallSheetContext.Source.WebInstallContext(0);
  MEMORY[0x28223BE20](v62);
  v64 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A30, &qword_23FFE2D10);
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v63 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A38, &qword_23FFE2D18);
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x28223BE20](v6);
  v59 = &v48 - v7;
  v54 = type metadata accessor for InstallSheetContext.Source.DistributorContext(0);
  MEMORY[0x28223BE20](v54);
  v58 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A40, &qword_23FFE2D20);
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  v55 = &v48 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A48, &qword_23FFE2D28);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v48 - v11;
  v49 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  MEMORY[0x28223BE20](v49);
  v50 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A50, &qword_23FFE2D30);
  v48 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for InstallSheetContext.Source(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A58, &qword_23FFE2D38);
  v70 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFAE090();
  v71 = v21;
  sub_23FFD9ACC();
  sub_23FFADBC0(v73, v18, type metadata accessor for InstallSheetContext.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v34 = v50;
      sub_23FFAE18C(v18, v50, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
      v75[0] = 1;
      sub_23FFAE29C();
      v35 = v51;
      v36 = v71;
      sub_23FFD988C();
      sub_23FFAD75C(&qword_27E3A3AA0, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext, protocol conformance descriptor for InstallSheetContext.Source.AppStoreSheetContext);
      v37 = v53;
      sub_23FFD991C();
      (*(v52 + 8))(v35, v37);
      sub_23FFADC28(v34, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
      return (*(v70 + 8))(v36, v19);
    }

    v23 = v72;
    v24 = v19;
    if (EnumCaseMultiPayload == 1)
    {
      v78 = 2;
      sub_23FFAE248();
      v25 = v55;
      v26 = v71;
      sub_23FFD988C();
      v77 = 0;
      v27 = v57;
      sub_23FFD98EC();

      if (!v23)
      {
        v76 = 1;
        sub_23FFD98EC();
      }

      (*(v56 + 8))(v25, v27);
      v46 = *(v70 + 8);
      v47 = v26;
    }

    else
    {
      v42 = v58;
      sub_23FFAE18C(v18, v58, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v79 = 3;
      sub_23FFAE1F4();
      v43 = v59;
      v44 = v71;
      sub_23FFD988C();
      sub_23FFAD75C(&qword_27E3A3A88, type metadata accessor for InstallSheetContext.Source.DistributorContext, protocol conformance descriptor for InstallSheetContext.Source.DistributorContext);
      v45 = v61;
      sub_23FFD991C();
      (*(v60 + 8))(v43, v45);
      sub_23FFADC28(v42, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v46 = *(v70 + 8);
      v47 = v44;
    }

    return v46(v47, v24);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v82 = 4;
    sub_23FFAE138();
    v38 = v63;
    v24 = v19;
    v39 = v71;
    sub_23FFD988C();
    v81 = 0;
    v40 = v67;
    v41 = v72;
    sub_23FFD98EC();

    if (!v41)
    {
      v80 = 1;
      sub_23FFD98EC();
    }

    (*(v65 + 8))(v38, v40);
    v46 = *(v70 + 8);
    v47 = v39;
    return v46(v47, v24);
  }

  v28 = v19;
  v29 = v71;
  if (EnumCaseMultiPayload == 4)
  {
    v30 = v64;
    sub_23FFAE18C(v18, v64, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
    v83 = 5;
    sub_23FFAE0E4();
    v31 = v66;
    sub_23FFD988C();
    sub_23FFAD75C(&qword_27E3A3A70, type metadata accessor for InstallSheetContext.Source.WebInstallContext, protocol conformance descriptor for InstallSheetContext.Source.WebInstallContext);
    v32 = v69;
    sub_23FFD991C();
    (*(v68 + 8))(v31, v32);
    sub_23FFADC28(v30, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
  }

  else
  {
    v74 = 0;
    sub_23FFAE2F0();
    sub_23FFD988C();
    (*(v48 + 8))(v15, v13);
  }

  return (*(v70 + 8))(v29, v28);
}

uint64_t InstallSheetContext.Source.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3AB0, &qword_23FFE2D40);
  v4 = *(v3 - 8);
  v94 = v3;
  v95 = v4;
  MEMORY[0x28223BE20](v3);
  v104 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3AB8, &qword_23FFE2D48);
  v92 = *(v6 - 8);
  v93 = v6;
  MEMORY[0x28223BE20](v6);
  v103 = &v77 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3AC0, &qword_23FFE2D50);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v102 = &v77 - v8;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3AC8, &qword_23FFE2D58);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v101 = &v77 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3AD0, &qword_23FFE2D60);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v96 = &v77 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3AD8, &qword_23FFE2D68);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v99 = &v77 - v11;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3AE0, &unk_23FFE2D70);
  v105 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v13 = &v77 - v12;
  v98 = type metadata accessor for InstallSheetContext.Source(0);
  v14 = MEMORY[0x28223BE20](v98);
  v85 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v77 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v77 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v77 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v77 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v77 - v28;
  v30 = a1[3];
  v107 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_23FFAE090();
  v31 = v106;
  sub_23FFD9AAC();
  if (!v31)
  {
    v80 = v27;
    v32 = v99;
    v81 = v21;
    v78 = v24;
    v79 = v18;
    v106 = 0;
    v33 = v101;
    v34 = v102;
    v36 = v103;
    v35 = v104;
    v82 = v29;
    v37 = v100;
    v38 = sub_23FFD986C();
    v39 = (2 * *(v38 + 16)) | 1;
    v108 = v38;
    v109 = v38 + 32;
    v110 = 0;
    v111 = v39;
    v40 = sub_23FF7523C();
    if (v40 == 6 || v110 != v111 >> 1)
    {
      v47 = sub_23FFD970C();
      swift_allocError();
      v49 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
      *v49 = v98;
      sub_23FFD97AC();
      sub_23FFD96FC();
      (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
      swift_willThrow();
      goto LABEL_10;
    }

    if (v40 <= 2u)
    {
      if (!v40)
      {
        v112 = 0;
        sub_23FFAE2F0();
        v54 = v106;
        sub_23FFD979C();
        v41 = v97;
        if (!v54)
        {
          (*(v83 + 8))(v32, v84);
          (*(v105 + 8))(v13, v37);
          swift_unknownObjectRelease();
          v46 = v82;
          swift_storeEnumTagMultiPayload();
          goto LABEL_29;
        }

        goto LABEL_10;
      }

      v41 = v97;
      v42 = v106;
      if (v40 == 1)
      {
        v112 = 1;
        sub_23FFAE29C();
        v43 = v96;
        sub_23FFD979C();
        if (!v42)
        {
          type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
          sub_23FFAD75C(&qword_27E3A3AF8, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext, protocol conformance descriptor for InstallSheetContext.Source.AppStoreSheetContext);
          v44 = v80;
          v45 = v87;
          sub_23FFD983C();
          (*(v86 + 8))(v43, v45);
          (*(v105 + 8))(v13, v37);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v46 = v82;
          sub_23FFAE18C(v44, v82, type metadata accessor for InstallSheetContext.Source);
LABEL_29:
          sub_23FFAE18C(v46, v41, type metadata accessor for InstallSheetContext.Source);
          return __swift_destroy_boxed_opaque_existential_1(v107);
        }

        goto LABEL_10;
      }

      v112 = 2;
      sub_23FFAE248();
      sub_23FFD979C();
      if (v42)
      {
LABEL_10:
        (*(v105 + 8))(v13, v37);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v107);
      }

      v112 = 0;
      v61 = v89;
      v62 = sub_23FFD980C();
      v69 = v68;
      v106 = v62;
      v112 = 1;
      v104 = sub_23FFD980C();
      v70 = v61;
      v71 = (v105 + 8);
      v76 = v75;
      (*(v88 + 8))(v33, v70);
      (*v71)(v13, v37);
      swift_unknownObjectRelease();
      v74 = v78;
      *v78 = v106;
      v74[1] = v69;
      v74[2] = v104;
      v74[3] = v76;
      goto LABEL_27;
    }

    if (v40 == 3)
    {
      v112 = 3;
      sub_23FFAE1F4();
      v55 = v106;
      sub_23FFD979C();
      if (v55)
      {
        goto LABEL_10;
      }

      type metadata accessor for InstallSheetContext.Source.DistributorContext(0);
      sub_23FFAD75C(&qword_27E3A3AF0, type metadata accessor for InstallSheetContext.Source.DistributorContext, protocol conformance descriptor for InstallSheetContext.Source.DistributorContext);
      v56 = v81;
      v57 = v91;
      sub_23FFD983C();
      v58 = v105;
      (*(v90 + 8))(v34, v57);
      (*(v58 + 8))(v13, v37);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v40 == 4)
      {
        v112 = 4;
        sub_23FFAE138();
        v51 = v106;
        sub_23FFD979C();
        if (v51)
        {
          goto LABEL_10;
        }

        v112 = 0;
        v52 = v93;
        v53 = sub_23FFD980C();
        v64 = v63;
        v65 = v13;
        v106 = v53;
        v112 = 1;
        v104 = sub_23FFD980C();
        v66 = (v105 + 8);
        v73 = v72;
        (*(v92 + 8))(v36, v52);
        (*v66)(v65, v37);
        swift_unknownObjectRelease();
        v74 = v79;
        *v79 = v106;
        v74[1] = v64;
        v74[2] = v104;
        v74[3] = v73;
LABEL_27:
        swift_storeEnumTagMultiPayload();
        v67 = v74;
        goto LABEL_28;
      }

      v112 = 5;
      sub_23FFAE0E4();
      v59 = v106;
      sub_23FFD979C();
      if (v59)
      {
        goto LABEL_10;
      }

      type metadata accessor for InstallSheetContext.Source.WebInstallContext(0);
      sub_23FFAD75C(&qword_27E3A3AE8, type metadata accessor for InstallSheetContext.Source.WebInstallContext, protocol conformance descriptor for InstallSheetContext.Source.WebInstallContext);
      v56 = v85;
      v60 = v94;
      sub_23FFD983C();
      (*(v95 + 8))(v35, v60);
      (*(v105 + 8))(v13, v37);
      swift_unknownObjectRelease();
    }

    swift_storeEnumTagMultiPayload();
    v67 = v56;
LABEL_28:
    v46 = v82;
    sub_23FFAE18C(v67, v82, type metadata accessor for InstallSheetContext.Source);
    v41 = v97;
    goto LABEL_29;
  }

  return __swift_destroy_boxed_opaque_existential_1(v107);
}

uint64_t sub_23FFAAEA8(uint64_t a1)
{
  v2 = sub_23FFAE3EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFAAEE4(uint64_t a1)
{
  v2 = sub_23FFAE3EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFAAF20()
{
  if (*v0)
  {
    return 0x6C7074656B72616DLL;
  }

  else
  {
    return 7368801;
  }
}

uint64_t sub_23FFAAF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v5 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C7074656B72616DLL && a2 == 0xEB00000000656361)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FFAB03C(uint64_t a1)
{
  v2 = sub_23FFAE344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFAB078(uint64_t a1)
{
  v2 = sub_23FFAE344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFAB0B4(uint64_t a1)
{
  v2 = sub_23FFAE398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFAB0F0(uint64_t a1)
{
  v2 = sub_23FFAE398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InstallSheetContext.InstallType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3B00, &qword_23FFE2D80);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3B08, &qword_23FFE2D88);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3B10, &qword_23FFE2D90);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFAE344();
  sub_23FFD9ACC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_23FFAE398();
    v14 = v18;
    sub_23FFD988C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_23FFAE3EC();
    sub_23FFD988C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t InstallSheetContext.InstallType.hashValue.getter()
{
  v1 = *v0;
  sub_23FFD9A2C();
  MEMORY[0x245CB41F0](v1);
  return sub_23FFD9A7C();
}

uint64_t InstallSheetContext.InstallType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3B30, &qword_23FFE2D98);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3B38, &qword_23FFE2DA0);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3B40, &qword_23FFE2DA8);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFAE344();
  v12 = v31;
  sub_23FFD9AAC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_23FFD986C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_23FF75230();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_23FFD970C();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
      *v22 = &type metadata for InstallSheetContext.InstallType;
      sub_23FFD97AC();
      sub_23FFD96FC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_23FFAE398();
        sub_23FFD979C();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_23FFAE3EC();
        sub_23FFD979C();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t InstallSheetContext.versionID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InstallSheetContext.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InstallSheetContext(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t InstallSheetContext.authenticationContextData.getter()
{
  v1 = v0 + *(type metadata accessor for InstallSheetContext(0) + 36);
  v2 = *v1;
  sub_23FFA7094(*v1, *(v1 + 8));
  return v2;
}

uint64_t InstallSheetContext.learnMoreURL.getter()
{
  v1 = *(v0 + *(type metadata accessor for InstallSheetContext(0) + 40));

  return v1;
}

uint64_t InstallSheetContext.init(itemID:versionID:source:type:logKey:learnMoreURL:authenticationContextData:showBiometricsForAppStoreInstall:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = *a6;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a7;
  a9[5] = a8;
  v17 = type metadata accessor for InstallSheetContext(0);
  result = sub_23FFAE18C(a5, a9 + v17[7], type metadata accessor for InstallSheetContext.Source);
  *(a9 + v17[8]) = v16;
  v19 = (a9 + v17[10]);
  *v19 = a10;
  v19[1] = a11;
  v20 = (a9 + v17[9]);
  *v20 = a12;
  v20[1] = a13;
  *(a9 + v17[11]) = a14;
  return result;
}

unint64_t sub_23FFABB4C()
{
  v1 = *v0;
  v2 = 0x44496D657469;
  v3 = 0x726F4D6E7261656CLL;
  if (v1 != 6)
  {
    v3 = 0xD000000000000020;
  }

  v4 = 1701869940;
  if (v1 != 4)
  {
    v4 = 0xD000000000000019;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x79654B676F6CLL;
  if (v1 != 2)
  {
    v5 = 0x656372756F73;
  }

  if (*v0)
  {
    v2 = 0x496E6F6973726576;
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

uint64_t sub_23FFABC4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FFB013C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FFABC74(uint64_t a1)
{
  v2 = sub_23FFAE460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFABCB0(uint64_t a1)
{
  v2 = sub_23FFAE460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InstallSheetContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3B48, &qword_23FFE2DB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFAE460();
  sub_23FFD9ACC();
  LOBYTE(v14) = 0;
  sub_23FFD98EC();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_23FFD989C();
    LOBYTE(v14) = 2;
    sub_23FFD98EC();
    v9 = type metadata accessor for InstallSheetContext(0);
    LOBYTE(v14) = 3;
    type metadata accessor for InstallSheetContext.Source(0);
    sub_23FFAD75C(&qword_27E3A3B58, type metadata accessor for InstallSheetContext.Source, protocol conformance descriptor for InstallSheetContext.Source);
    sub_23FFD991C();
    LOBYTE(v14) = *(v3 + *(v9 + 32));
    v16 = 4;
    sub_23FFAE4B4();
    sub_23FFD991C();
    v10 = (v3 + *(v9 + 36));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v16 = 5;
    sub_23FFA7094(v14, v11);
    sub_23FF70D64();
    sub_23FFD98CC();
    sub_23FF6EC6C(v14, v15);
    LOBYTE(v14) = 6;
    sub_23FFD98EC();
    LOBYTE(v14) = 7;
    sub_23FFD98FC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t InstallSheetContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = type metadata accessor for InstallSheetContext.Source(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3B68, &qword_23FFE2DB8);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = &v27 - v7;
  v9 = type metadata accessor for InstallSheetContext(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_23FFAE460();
  v30 = v8;
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v13 = v29;
  LOBYTE(v33) = 0;
  *v11 = sub_23FFD980C();
  v11[1] = v15;
  LOBYTE(v33) = 1;
  v11[2] = sub_23FFD97BC();
  v11[3] = v16;
  LOBYTE(v33) = 2;
  v17 = sub_23FFD980C();
  v27 = 0;
  v11[4] = v17;
  v11[5] = v18;
  LOBYTE(v33) = 3;
  sub_23FFAD75C(&qword_27E3A3B70, type metadata accessor for InstallSheetContext.Source, protocol conformance descriptor for InstallSheetContext.Source);
  v19 = v27;
  sub_23FFD983C();
  v27 = v19;
  if (v19)
  {
    (*(v13 + 8))(v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    sub_23FFAE18C(v6, v11 + v9[7], type metadata accessor for InstallSheetContext.Source);
    v34 = 4;
    sub_23FFAE508();
    v20 = v30;
    v21 = v31;
    v22 = v27;
    sub_23FFD983C();
    if (v22)
    {
      (*(v13 + 8))(v20, v21);
      __swift_destroy_boxed_opaque_existential_1(v32);

      return sub_23FFADC28(v11 + v9[7], type metadata accessor for InstallSheetContext.Source);
    }

    else
    {
      *(v11 + v9[8]) = v33;
      v34 = 5;
      sub_23FF71690();
      sub_23FFD97EC();
      *(v11 + v9[9]) = v33;
      LOBYTE(v33) = 6;
      v23 = sub_23FFD980C();
      v24 = (v11 + v9[10]);
      *v24 = v23;
      v24[1] = v25;
      LOBYTE(v33) = 7;
      v26 = sub_23FFD981C();
      (*(v13 + 8))(v20, v21);
      *(v11 + v9[11]) = v26 & 1;
      sub_23FFADBC0(v11, v28, type metadata accessor for InstallSheetContext);
      __swift_destroy_boxed_opaque_existential_1(v32);
      return sub_23FFADC28(v11, type metadata accessor for InstallSheetContext);
    }
  }
}

uint64_t sub_23FFAC5DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_23FFD8EDC();
    if (v10)
    {
      v11 = sub_23FFD8EFC();
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
      result = sub_23FFD8EEC();
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
  v10 = sub_23FFD8EDC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_23FFD8EFC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_23FFD8EEC();
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

uint64_t sub_23FFAC80C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_23FFAC99C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_23FF62F84(a3, a4);
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
  sub_23FFAC5DC(v13, a3, a4, &v12);
  v10 = v4;
  sub_23FF62F84(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_23FFAC99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_23FFD8EDC();
  v11 = result;
  if (result)
  {
    result = sub_23FFD8EFC();
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

  sub_23FFD8EEC();
  sub_23FFAC5DC(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_23FFACA54(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_23FF71730(a3, a4);
          return sub_23FFAC80C(v13, a2, a3, a4) & 1;
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

BOOL _s15AppDistribution19InstallSheetContextV6SourceO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v3 = type metadata accessor for InstallSheetContext.Source.WebInstallContext(0);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InstallSheetContext.Source.DistributorContext(0);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for InstallSheetContext.Source(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v57 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v57 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v57 - v21);
  MEMORY[0x28223BE20](v20);
  v24 = (&v57 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3D40, &qword_23FFE3FF8);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = (&v57 + *(v26 + 56) - v27);
  v29 = a1;
  v30 = &v57 - v27;
  sub_23FFADBC0(v29, &v57 - v27, type metadata accessor for InstallSheetContext.Source);
  sub_23FFADBC0(v60, v28, type metadata accessor for InstallSheetContext.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_23FFADBC0(v30, v16, type metadata accessor for InstallSheetContext.Source);
      v47 = *v16;
      v46 = v16[1];
      v49 = v16[2];
      v48 = v16[3];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v51 = v28[2];
        v50 = v28[3];
        if (v47 == *v28 && v46 == v28[1])
        {
        }

        else
        {
          v53 = sub_23FFD996C();

          if ((v53 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        if (v49 == v51 && v48 == v50)
        {
          goto LABEL_43;
        }

LABEL_44:
        v55 = sub_23FFD996C();

        if (v55)
        {
          goto LABEL_45;
        }

        goto LABEL_47;
      }

      goto LABEL_28;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_45;
      }

      goto LABEL_32;
    }

    sub_23FFADBC0(v30, v13, type metadata accessor for InstallSheetContext.Source);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v40 = v59;
      sub_23FFAE18C(v28, v59, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
      v41 = _s15AppDistribution19InstallSheetContextV6SourceO03WebcE0V2eeoiySbAG_AGtFZ_0(v13, v40);
      v42 = type metadata accessor for InstallSheetContext.Source.WebInstallContext;
      sub_23FFADC28(v40, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
      v43 = v13;
LABEL_35:
      sub_23FFADC28(v43, v42);
      sub_23FFADC28(v30, type metadata accessor for InstallSheetContext.Source);
      return v41;
    }

    v44 = type metadata accessor for InstallSheetContext.Source.WebInstallContext;
    v45 = v13;
LABEL_31:
    sub_23FFADC28(v45, v44);
    goto LABEL_32;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_23FFADBC0(v30, v24, type metadata accessor for InstallSheetContext.Source);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_23FFAE18C(v28, v9, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
      v41 = _s15AppDistribution19InstallSheetContextV6SourceO0a5StoredE0V2eeoiySbAG_AGtFZ_0(v24, v9);
      v42 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext;
      sub_23FFADC28(v9, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
      v43 = v24;
      goto LABEL_35;
    }

    v44 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext;
    v45 = v24;
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_23FFADBC0(v30, v19, type metadata accessor for InstallSheetContext.Source);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v54 = v58;
      sub_23FFAE18C(v28, v58, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v41 = _s15AppDistribution19InstallSheetContextV6SourceO011DistributorE0V2eeoiySbAG_AGtFZ_0(v19, v54);
      v42 = type metadata accessor for InstallSheetContext.Source.DistributorContext;
      sub_23FFADC28(v54, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v43 = v19;
      goto LABEL_35;
    }

    v44 = type metadata accessor for InstallSheetContext.Source.DistributorContext;
    v45 = v19;
    goto LABEL_31;
  }

  sub_23FFADBC0(v30, v22, type metadata accessor for InstallSheetContext.Source);
  v33 = *v22;
  v32 = v22[1];
  v35 = v22[2];
  v34 = v22[3];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = v28[2];
    v36 = v28[3];
    if (v33 == *v28 && v32 == v28[1])
    {

LABEL_41:
      if (v35 == v37 && v34 == v36)
      {
LABEL_43:

LABEL_45:
        sub_23FFADC28(v30, type metadata accessor for InstallSheetContext.Source);
        return 1;
      }

      goto LABEL_44;
    }

    v39 = sub_23FFD996C();

    if (v39)
    {
      goto LABEL_41;
    }

LABEL_23:

LABEL_47:
    sub_23FFADC28(v30, type metadata accessor for InstallSheetContext.Source);
    return 0;
  }

LABEL_28:

LABEL_32:
  sub_23FF64248(v30, &qword_27E3A3D40, &qword_23FFE3FF8);
  return 0;
}

BOOL _s15AppDistribution19InstallSheetContextV6SourceO0a5StoredE0V2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_23FFD8F6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3D48, &unk_23FFE4000);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  if (*a1 != *a2 || (a1[1] != a2[1] || a1[2] != a2[2]) && (sub_23FFD996C() & 1) == 0 || (a1[3] != a2[3] || a1[4] != a2[4]) && (sub_23FFD996C() & 1) == 0)
  {
    return 0;
  }

  v29 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  v14 = *(v29 + 28);
  v15 = *(v11 + 48);
  sub_23FFA6FE0(a1 + v14, v13);
  sub_23FFA6FE0(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_23FF64248(v13, &qword_27E3A2418, &qword_23FFDADC0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  sub_23FFA6FE0(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_13:
    sub_23FF64248(v13, &qword_27E3A3D48, &unk_23FFE4000);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_23FFAD75C(&qword_27E3A3D50, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v17 = sub_23FFD932C();
  v18 = *(v5 + 8);
  v18(v7, v4);
  v18(v10, v4);
  sub_23FF64248(v13, &qword_27E3A2418, &qword_23FFDADC0);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v19 = *(v29 + 32);
  v20 = a1 + v19;
  v22 = *(a1 + v19);
  v21 = *(v20 + 1);
  v23 = (a2 + v19);
  v25 = *v23;
  v24 = v23[1];
  if (v21 >> 60 == 15)
  {
    if (v24 >> 60 == 15)
    {
      sub_23FFA7094(v22, *(v20 + 1));
      sub_23FFA7094(v25, v24);
      sub_23FF6EC6C(v22, v21);
      return 1;
    }

    goto LABEL_19;
  }

  if (v24 >> 60 == 15)
  {
LABEL_19:
    sub_23FFA7094(v22, *(v20 + 1));
    sub_23FFA7094(v25, v24);
    sub_23FF6EC6C(v22, v21);
    sub_23FF6EC6C(v25, v24);
    return 0;
  }

  sub_23FFA7094(v22, *(v20 + 1));
  sub_23FFA7094(v25, v24);
  v27 = sub_23FFACA54(v22, v21, v25, v24);
  sub_23FF6EC6C(v25, v24);
  sub_23FF6EC6C(v22, v21);
  return v27;
}

unint64_t sub_23FFAD708()
{
  result = qword_27E3A39E8;
  if (!qword_27E3A39E8)
  {
    result = swift_getWitnessTable(byte_23FFE3FA4, &type metadata for InstallSheetContext.Source.AppStoreSheetContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A39E8);
  }

  return result;
}

uint64_t sub_23FFAD75C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

BOOL _s15AppDistribution19InstallSheetContextV6SourceO03WebcE0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23FFD8F6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3D48, &unk_23FFE4000);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  if (*a1 != *a2 && (sub_23FFD996C() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_23FFD996C() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_23FFD996C() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_23FFD996C() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v14 = *(type metadata accessor for InstallSheetContext.Source.WebInstallContext(0) + 36);
  v15 = *(v11 + 48);
  sub_23FFA6FE0(a1 + v14, v13);
  sub_23FFA6FE0(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_23FFA6FE0(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_23FFAD75C(&qword_27E3A3D50, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v18 = sub_23FFD932C();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_23FF64248(v13, &qword_27E3A2418, &qword_23FFDADC0);
      return (v18 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_18:
    sub_23FF64248(v13, &qword_27E3A3D48, &unk_23FFE4000);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_18;
  }

  sub_23FF64248(v13, &qword_27E3A2418, &qword_23FFDADC0);
  return 1;
}

unint64_t sub_23FFADB6C()
{
  result = qword_27E3A3A00;
  if (!qword_27E3A3A00)
  {
    result = swift_getWitnessTable(byte_23FFE3F54, &type metadata for InstallSheetContext.Source.WebInstallContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3A00);
  }

  return result;
}

uint64_t sub_23FFADBC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23FFADC28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s15AppDistribution19InstallSheetContextV6SourceO011DistributorE0V2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_23FFD8F6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3D48, &unk_23FFE4000);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  if (*a1 != *a2 && (sub_23FFD996C() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_23FFD996C() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_23FFD996C() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for InstallSheetContext.Source.DistributorContext(0) + 28);
  v15 = *(v11 + 48);
  sub_23FFA6FE0(a1 + v14, v13);
  sub_23FFA6FE0(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_23FFA6FE0(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_23FFAD75C(&qword_27E3A3D50, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v18 = sub_23FFD932C();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_23FF64248(v13, &qword_27E3A2418, &qword_23FFDADC0);
      return (v18 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_14:
    sub_23FF64248(v13, &qword_27E3A3D48, &unk_23FFE4000);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  sub_23FF64248(v13, &qword_27E3A2418, &qword_23FFDADC0);
  return 1;
}

unint64_t sub_23FFAE01C()
{
  result = qword_27E3A3A18;
  if (!qword_27E3A3A18)
  {
    result = swift_getWitnessTable(aWB, &type metadata for InstallSheetContext.Source.DistributorContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3A18);
  }

  return result;
}

unint64_t sub_23FFAE090()
{
  result = qword_27E3A3A60;
  if (!qword_27E3A3A60)
  {
    result = swift_getWitnessTable(aUwBp, &type metadata for InstallSheetContext.Source.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3A60);
  }

  return result;
}

unint64_t sub_23FFAE0E4()
{
  result = qword_27E3A3A68;
  if (!qword_27E3A3A68)
  {
    result = swift_getWitnessTable(byte_23FFE3E64, &type metadata for InstallSheetContext.Source.WebWithContextCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3A68);
  }

  return result;
}

unint64_t sub_23FFAE138()
{
  result = qword_27E3A3A78;
  if (!qword_27E3A3A78)
  {
    result = swift_getWitnessTable(byte_23FFE3E14, &type metadata for InstallSheetContext.Source.WebCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3A78);
  }

  return result;
}

uint64_t sub_23FFAE18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23FFAE1F4()
{
  result = qword_27E3A3A80;
  if (!qword_27E3A3A80)
  {
    result = swift_getWitnessTable("ex%BУ", &type metadata for InstallSheetContext.Source.DistributorWithContextCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3A80);
  }

  return result;
}

unint64_t sub_23FFAE248()
{
  result = qword_27E3A3A90;
  if (!qword_27E3A3A90)
  {
    result = swift_getWitnessTable(byte_23FFE3D74, &type metadata for InstallSheetContext.Source.DistributorCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3A90);
  }

  return result;
}

unint64_t sub_23FFAE29C()
{
  result = qword_27E3A3A98;
  if (!qword_27E3A3A98)
  {
    result = swift_getWitnessTable(byte_23FFE3D24, &type metadata for InstallSheetContext.Source.AppStoreWithContextCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3A98);
  }

  return result;
}

unint64_t sub_23FFAE2F0()
{
  result = qword_27E3A3AA8;
  if (!qword_27E3A3AA8)
  {
    result = swift_getWitnessTable(aUyBt, &type metadata for InstallSheetContext.Source.AppStoreCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3AA8);
  }

  return result;
}

unint64_t sub_23FFAE344()
{
  result = qword_27E3A3B18;
  if (!qword_27E3A3B18)
  {
    result = swift_getWitnessTable(byte_23FFE3C84, &type metadata for InstallSheetContext.InstallType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3B18);
  }

  return result;
}

unint64_t sub_23FFAE398()
{
  result = qword_27E3A3B20;
  if (!qword_27E3A3B20)
  {
    result = swift_getWitnessTable(byte_23FFE3C34, &type metadata for InstallSheetContext.InstallType.MarketplaceCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3B20);
  }

  return result;
}

unint64_t sub_23FFAE3EC()
{
  result = qword_27E3A3B28;
  if (!qword_27E3A3B28)
  {
    result = swift_getWitnessTable("Ez%Bؤ", &type metadata for InstallSheetContext.InstallType.AppCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3B28);
  }

  return result;
}

unint64_t sub_23FFAE460()
{
  result = qword_27E3A3B50;
  if (!qword_27E3A3B50)
  {
    result = swift_getWitnessTable(byte_23FFE3B94, &type metadata for InstallSheetContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3B50);
  }

  return result;
}

unint64_t sub_23FFAE4B4()
{
  result = qword_27E3A3B60;
  if (!qword_27E3A3B60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InstallSheetContext.InstallType, &type metadata for InstallSheetContext.InstallType, v0, v1);
    atomic_store(result, &qword_27E3A3B60);
  }

  return result;
}

unint64_t sub_23FFAE508()
{
  result = qword_27E3A3B78;
  if (!qword_27E3A3B78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InstallSheetContext.InstallType, &type metadata for InstallSheetContext.InstallType, v0, v1);
    atomic_store(result, &qword_27E3A3B78);
  }

  return result;
}

unint64_t sub_23FFAE560()
{
  result = qword_27E3A3B80;
  if (!qword_27E3A3B80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InstallSheetContext.InstallType, &type metadata for InstallSheetContext.InstallType, v0, v1);
    atomic_store(result, &qword_27E3A3B80);
  }

  return result;
}

void sub_23FFAE5DC(uint64_t a1)
{
  sub_23FF9D0DC(319, &qword_27E3A2478, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for InstallSheetContext.Source(319);
    if (v2 <= 0x3F)
    {
      sub_23FF9D0DC(319, &qword_27E3A3B98, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23FFAE6BC(uint64_t a1)
{
  sub_23FFAE7E0(319, &qword_27E3A3BB0, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
  if (v1 <= 0x3F)
  {
    sub_23FF7EE70(319, &qword_27E3A3BB8, "name id ");
    if (v2 <= 0x3F)
    {
      sub_23FFAE7E0(319, &qword_27E3A3BC0, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      if (v3 <= 0x3F)
      {
        sub_23FF7EE70(319, &qword_27E3A3BC8, "domain developerName ");
        if (v4 <= 0x3F)
        {
          sub_23FFAE7E0(319, &qword_27E3A3BD0, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23FFAE7E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23FFAE854(uint64_t a1)
{
  sub_23FF59878(319);
  if (v1 <= 0x3F)
  {
    sub_23FF9D0DC(319, &qword_27E3A3B98, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23FFAE930(uint64_t a1)
{
  sub_23FF59878(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23FFAE9E8(uint64_t a1)
{
  sub_23FF59878(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for SetPrivateDataRequest.Request.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SetPrivateDataRequest.Request.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23FFAECA0()
{
  result = qword_27E3A3C08;
  if (!qword_27E3A3C08)
  {
    result = swift_getWitnessTable(aMB, &type metadata for InstallSheetContext.Source.AppStoreSheetContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C08);
  }

  return result;
}

unint64_t sub_23FFAECF8()
{
  result = qword_27E3A3C10;
  if (!qword_27E3A3C10)
  {
    result = swift_getWitnessTable(byte_23FFE3404, &type metadata for InstallSheetContext.Source.WebInstallContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C10);
  }

  return result;
}

unint64_t sub_23FFAED50()
{
  result = qword_27E3A3C18;
  if (!qword_27E3A3C18)
  {
    result = swift_getWitnessTable(aLBd, &type metadata for InstallSheetContext.Source.DistributorContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C18);
  }

  return result;
}

unint64_t sub_23FFAEDA8()
{
  result = qword_27E3A3C20;
  if (!qword_27E3A3C20)
  {
    result = swift_getWitnessTable(aUkBh, &type metadata for InstallSheetContext.Source.WebWithContextCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C20);
  }

  return result;
}

unint64_t sub_23FFAEE00()
{
  result = qword_27E3A3C28;
  if (!qword_27E3A3C28)
  {
    result = swift_getWitnessTable(byte_23FFE362C, &type metadata for InstallSheetContext.Source.WebCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C28);
  }

  return result;
}

unint64_t sub_23FFAEE58()
{
  result = qword_27E3A3C30;
  if (!qword_27E3A3C30)
  {
    result = swift_getWitnessTable(byte_23FFE36E4, &type metadata for InstallSheetContext.Source.DistributorWithContextCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C30);
  }

  return result;
}

unint64_t sub_23FFAEEB0()
{
  result = qword_27E3A3C38;
  if (!qword_27E3A3C38)
  {
    result = swift_getWitnessTable("-i%Bԩ", &type metadata for InstallSheetContext.Source.DistributorCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C38);
  }

  return result;
}

unint64_t sub_23FFAEF08()
{
  result = qword_27E3A3C40;
  if (!qword_27E3A3C40)
  {
    result = swift_getWitnessTable(aUhB, &type metadata for InstallSheetContext.Source.AppStoreWithContextCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C40);
  }

  return result;
}

unint64_t sub_23FFAEF60()
{
  result = qword_27E3A3C48;
  if (!qword_27E3A3C48)
  {
    result = swift_getWitnessTable(aMgB, &type metadata for InstallSheetContext.Source.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C48);
  }

  return result;
}

unint64_t sub_23FFAEFB8()
{
  result = qword_27E3A3C50;
  if (!qword_27E3A3C50)
  {
    result = swift_getWitnessTable(byte_23FFE3AB4, &type metadata for InstallSheetContext.InstallType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C50);
  }

  return result;
}

unint64_t sub_23FFAF010()
{
  result = qword_27E3A3C58;
  if (!qword_27E3A3C58)
  {
    result = swift_getWitnessTable(aEB_0, &type metadata for InstallSheetContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C58);
  }

  return result;
}

unint64_t sub_23FFAF068()
{
  result = qword_27E3A3C60;
  if (!qword_27E3A3C60)
  {
    result = swift_getWitnessTable(byte_23FFE3ADC, &type metadata for InstallSheetContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C60);
  }

  return result;
}

unint64_t sub_23FFAF0C0()
{
  result = qword_27E3A3C68;
  if (!qword_27E3A3C68)
  {
    result = swift_getWitnessTable(byte_23FFE3B04, &type metadata for InstallSheetContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C68);
  }

  return result;
}

unint64_t sub_23FFAF118()
{
  result = qword_27E3A3C70;
  if (!qword_27E3A3C70)
  {
    result = swift_getWitnessTable(byte_23FFE39D4, &type metadata for InstallSheetContext.InstallType.AppCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C70);
  }

  return result;
}

unint64_t sub_23FFAF170()
{
  result = qword_27E3A3C78;
  if (!qword_27E3A3C78)
  {
    result = swift_getWitnessTable(byte_23FFE39FC, &type metadata for InstallSheetContext.InstallType.AppCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C78);
  }

  return result;
}

unint64_t sub_23FFAF1C8()
{
  result = qword_27E3A3C80;
  if (!qword_27E3A3C80)
  {
    result = swift_getWitnessTable(byte_23FFE3984, &type metadata for InstallSheetContext.InstallType.MarketplaceCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C80);
  }

  return result;
}

unint64_t sub_23FFAF220()
{
  result = qword_27E3A3C88;
  if (!qword_27E3A3C88)
  {
    result = swift_getWitnessTable(aRB4, &type metadata for InstallSheetContext.InstallType.MarketplaceCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C88);
  }

  return result;
}

unint64_t sub_23FFAF278()
{
  result = qword_27E3A3C90;
  if (!qword_27E3A3C90)
  {
    result = swift_getWitnessTable(aUBt, &type metadata for InstallSheetContext.InstallType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C90);
  }

  return result;
}

unint64_t sub_23FFAF2D0()
{
  result = qword_27E3A3C98;
  if (!qword_27E3A3C98)
  {
    result = swift_getWitnessTable(byte_23FFE3A4C, &type metadata for InstallSheetContext.InstallType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3C98);
  }

  return result;
}

unint64_t sub_23FFAF328()
{
  result = qword_27E3A3CA0;
  if (!qword_27E3A3CA0)
  {
    result = swift_getWitnessTable(aWB_0, &type metadata for InstallSheetContext.Source.AppStoreCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3CA0);
  }

  return result;
}

unint64_t sub_23FFAF380()
{
  result = qword_27E3A3CA8;
  if (!qword_27E3A3CA8)
  {
    result = swift_getWitnessTable(a5sB, &type metadata for InstallSheetContext.Source.AppStoreCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3CA8);
  }

  return result;
}

unint64_t sub_23FFAF3D8()
{
  result = qword_27E3A3CB0;
  if (!qword_27E3A3CB0)
  {
    result = swift_getWitnessTable(byte_23FFE37C4, &type metadata for InstallSheetContext.Source.AppStoreWithContextCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3CB0);
  }

  return result;
}

unint64_t sub_23FFAF430()
{
  result = qword_27E3A3CB8;
  if (!qword_27E3A3CB8)
  {
    result = swift_getWitnessTable(byte_23FFE37EC, &type metadata for InstallSheetContext.Source.AppStoreWithContextCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3CB8);
  }

  return result;
}

unint64_t sub_23FFAF488()
{
  result = qword_27E3A3CC0;
  if (!qword_27E3A3CC0)
  {
    result = swift_getWitnessTable(byte_23FFE370C, &type metadata for InstallSheetContext.Source.DistributorCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3CC0);
  }

  return result;
}

unint64_t sub_23FFAF4E0()
{
  result = qword_27E3A3CC8;
  if (!qword_27E3A3CC8)
  {
    result = swift_getWitnessTable(byte_23FFE3734, &type metadata for InstallSheetContext.Source.DistributorCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3CC8);
  }

  return result;
}

unint64_t sub_23FFAF538()
{
  result = qword_27E3A3CD0;
  if (!qword_27E3A3CD0)
  {
    result = swift_getWitnessTable(aMyB, &type metadata for InstallSheetContext.Source.DistributorWithContextCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3CD0);
  }

  return result;
}

unint64_t sub_23FFAF590()
{
  result = qword_27E3A3CD8;
  if (!qword_27E3A3CD8)
  {
    result = swift_getWitnessTable(aUB_1, &type metadata for InstallSheetContext.Source.DistributorWithContextCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3CD8);
  }

  return result;
}

unint64_t sub_23FFAF5E8()
{
  result = qword_27E3A3CE0;
  if (!qword_27E3A3CE0)
  {
    result = swift_getWitnessTable(byte_23FFE359C, &type metadata for InstallSheetContext.Source.WebCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3CE0);
  }

  return result;
}

unint64_t sub_23FFAF640()
{
  result = qword_27E3A3CE8;
  if (!qword_27E3A3CE8)
  {
    result = swift_getWitnessTable(byte_23FFE35C4, &type metadata for InstallSheetContext.Source.WebCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3CE8);
  }

  return result;
}

unint64_t sub_23FFAF698()
{
  result = qword_27E3A3CF0;
  if (!qword_27E3A3CF0)
  {
    result = swift_getWitnessTable(byte_23FFE34E4, &type metadata for InstallSheetContext.Source.WebWithContextCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3CF0);
  }

  return result;
}

unint64_t sub_23FFAF6F0()
{
  result = qword_27E3A3CF8;
  if (!qword_27E3A3CF8)
  {
    result = swift_getWitnessTable(byte_23FFE350C, &type metadata for InstallSheetContext.Source.WebWithContextCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3CF8);
  }

  return result;
}

unint64_t sub_23FFAF748()
{
  result = qword_27E3A3D00;
  if (!qword_27E3A3D00)
  {
    result = swift_getWitnessTable(byte_23FFE38CC, &type metadata for InstallSheetContext.Source.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3D00);
  }

  return result;
}

unint64_t sub_23FFAF7A0()
{
  result = qword_27E3A3D08;
  if (!qword_27E3A3D08)
  {
    result = swift_getWitnessTable(byte_23FFE38F4, &type metadata for InstallSheetContext.Source.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3D08);
  }

  return result;
}

unint64_t sub_23FFAF7F8()
{
  result = qword_27E3A3D10;
  if (!qword_27E3A3D10)
  {
    result = swift_getWitnessTable("u{%Bԭ", &type metadata for InstallSheetContext.Source.DistributorContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3D10);
  }

  return result;
}

unint64_t sub_23FFAF850()
{
  result = qword_27E3A3D18;
  if (!qword_27E3A3D18)
  {
    result = swift_getWitnessTable(byte_23FFE3454, &type metadata for InstallSheetContext.Source.DistributorContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3D18);
  }

  return result;
}

unint64_t sub_23FFAF8A8()
{
  result = qword_27E3A3D20;
  if (!qword_27E3A3D20)
  {
    result = swift_getWitnessTable(aB_8, &type metadata for InstallSheetContext.Source.WebInstallContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3D20);
  }

  return result;
}

unint64_t sub_23FFAF900()
{
  result = qword_27E3A3D28;
  if (!qword_27E3A3D28)
  {
    result = swift_getWitnessTable(aXB, &type metadata for InstallSheetContext.Source.WebInstallContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3D28);
  }

  return result;
}

unint64_t sub_23FFAF958()
{
  result = qword_27E3A3D30;
  if (!qword_27E3A3D30)
  {
    result = swift_getWitnessTable(byte_23FFE32BC, &type metadata for InstallSheetContext.Source.AppStoreSheetContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3D30);
  }

  return result;
}

unint64_t sub_23FFAF9B0()
{
  result = qword_27E3A3D38;
  if (!qword_27E3A3D38)
  {
    result = swift_getWitnessTable(byte_23FFE32E4, &type metadata for InstallSheetContext.Source.AppStoreSheetContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3D38);
  }

  return result;
}

uint64_t sub_23FFAFA04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F6942776F6873 && a2 == 0xEE00736369727465;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x546C6C6174736E69 && a2 == 0xEB00000000657079 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C52556E6F6369 && a2 == 0xE700000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEBA10 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_23FFAFBC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xEB00000000444972 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574616470557369 && a2 == 0xE800000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C52556E6F6369 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t sub_23FFAFDCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C52556E6F6369 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t sub_23FFAFF28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F7453707061 && a2 == 0xE800000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEBA30 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xEB00000000726F74 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000023FFEBA50 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 6448503 && a2 == 0xE300000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4368746957626577 && a2 == 0xEE00747865746E6FLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t sub_23FFB013C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973726576 && a2 == 0xE900000000000044 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x800000023FFEBA70 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEC0000004C525565 || (sub_23FFD996C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000020 && 0x800000023FFEBA90 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_23FFD996C();

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

unint64_t MarketplaceKitError.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E3A2210, &qword_23FFE4010);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - v4;
  v6 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23FF6EBC0(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6E776F6E6B6E55;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v15 = *v8;
      v16 = v8[1];
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_23FFD96DC();
      MEMORY[0x245CB3B50](0xD00000000000003DLL, 0x800000023FFEBEA0);
      MEMORY[0x245CB3B50](v15, v16);

      MEMORY[0x245CB3B50](0xD000000000000021, 0x800000023FFEBEE0);
      goto LABEL_8;
    case 2:
      (*(v3 + 32))(v5, v8, v2);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_23FFD96DC();
      MEMORY[0x245CB3B50](0xD00000000000002ALL, 0x800000023FFEBD80);
      v17 = objc_opt_self();
      v18 = sub_23FFD8E2C();
      v19 = [v17 stringFromMeasurement:v18 countStyle:0];

      v20 = sub_23FFD935C();
      v22 = v21;

      MEMORY[0x245CB3B50](v20, v22);

      MEMORY[0x245CB3B50](0xD00000000000001ELL, 0x800000023FFEBDB0);
      v23 = v25;
      (*(v3 + 8))(v5, v2);
      result = v23;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000031;
      break;
    case 5:
    case 11:
      result = 0xD00000000000002BLL;
      break;
    case 6:
      result = 0xD00000000000004CLL;
      break;
    case 7:
      result = 0xD00000000000004ALL;
      break;
    case 8:
    case 13:
      result = 0xD00000000000003ELL;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD00000000000002ALL;
      break;
    case 12:
      result = 0xD000000000000043;
      break;
    case 14:
      result = 0xD000000000000024;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    case 16:
    case 20:
      result = 0xD000000000000026;
      break;
    case 17:
      result = 0xD00000000000001ELL;
      break;
    case 18:
      result = 0xD000000000000019;
      break;
    case 19:
      result = 0xD00000000000001BLL;
      break;
    case 21:
      result = 0xD000000000000025;
      break;
    case 22:
      result = 0xD000000000000028;
      break;
    default:
      v11 = *v8;
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_23FFD96DC();
      MEMORY[0x245CB3B50](0xD00000000000004ALL, 0x800000023FFEBF50);
      v24[1] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3D58, &unk_23FFE4018);
      sub_23FFB09F0();
      v12 = sub_23FFD931C();
      v14 = v13;

      MEMORY[0x245CB3B50](v12, v14);

LABEL_8:
      result = v25;
      break;
  }

  return result;
}

uint64_t type metadata accessor for MarketplaceKitError(uint64_t a1)
{
  result = qword_27E3A3FB8;
  if (!qword_27E3A3FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23FFB09F0()
{
  result = qword_27E3A3D60;
  if (!qword_27E3A3D60)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A3D58, &unk_23FFE4018);
    v4[0] = sub_23FF64310(&qword_27E3A3348, &qword_27E3A27F0, &qword_23FFDB210, MEMORY[0x277D83958]);
    result = swift_getWitnessTable(MEMORY[0x277D840C8], v3, v4);
    atomic_store(result, &qword_27E3A3D60);
  }

  return result;
}

unint64_t sub_23FFB0AA0(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
    case 20:
      v3 = 13;
      goto LABEL_15;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6E49746F4E707061;
      break;
    case 10:
      result = 0x4D64696C61766E69;
      break;
    case 11:
      result = 0x456B726F7774656ELL;
      break;
    case 12:
      result = 0xD000000000000028;
      break;
    case 13:
      result = 0xD00000000000002ELL;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0x656C6C65636E6163;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0x6B6F54687475616FLL;
      break;
    case 18:
      result = 0x4C64696C61766E69;
      break;
    case 19:
      result = 0x5564696C61766E69;
      break;
    case 21:
      v3 = 9;
LABEL_15:
      result = v3 | 0xD000000000000012;
      break;
    case 22:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23FFB0D68(uint64_t a1)
{
  v2 = sub_23FFB30EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB0DA4(uint64_t a1)
{
  v2 = sub_23FFB30EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB0DE0(uint64_t a1)
{
  v2 = sub_23FFB34DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB0E1C(uint64_t a1)
{
  v2 = sub_23FFB34DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB0E58(uint64_t a1)
{
  v2 = sub_23FFB32E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB0E94(uint64_t a1)
{
  v2 = sub_23FFB32E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB0ED8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FFB6FEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FFB0F0C(uint64_t a1)
{
  v2 = sub_23FFB3044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB0F48(uint64_t a1)
{
  v2 = sub_23FFB3044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB0F84(uint64_t a1)
{
  v2 = sub_23FFB3338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB0FC0(uint64_t a1)
{
  v2 = sub_23FFB3338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB0FFC(uint64_t a1)
{
  v2 = sub_23FFB362C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB1038(uint64_t a1)
{
  v2 = sub_23FFB362C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB1074(uint64_t a1)
{
  v2 = sub_23FFB3680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB10B0(uint64_t a1)
{
  v2 = sub_23FFB3680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB10EC(uint64_t a1)
{
  v2 = sub_23FFB3584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB1128(uint64_t a1)
{
  v2 = sub_23FFB3584();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB1164(uint64_t a1)
{
  v2 = sub_23FFB338C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB11A0(uint64_t a1)
{
  v2 = sub_23FFB338C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB11DC(uint64_t a1)
{
  v2 = sub_23FFB33E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB1218(uint64_t a1)
{
  v2 = sub_23FFB33E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB1254(uint64_t a1)
{
  v2 = sub_23FFB31E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB1290(uint64_t a1)
{
  v2 = sub_23FFB31E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB12CC(uint64_t a1)
{
  v2 = sub_23FFB3488();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB1308(uint64_t a1)
{
  v2 = sub_23FFB3488();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB1344(uint64_t a1)
{
  v2 = sub_23FFB3194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB1380(uint64_t a1)
{
  v2 = sub_23FFB3194();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB13BC(uint64_t a1)
{
  v2 = sub_23FFB36D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB13F8(uint64_t a1)
{
  v2 = sub_23FFB36D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB1434(uint64_t a1)
{
  v2 = sub_23FFB3290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB1470(uint64_t a1)
{
  v2 = sub_23FFB3290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB14AC(uint64_t a1)
{
  v2 = sub_23FFB3098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB14E8(uint64_t a1)
{
  v2 = sub_23FFB3098();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB1524(uint64_t a1)
{
  v2 = sub_23FFB377C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB1560(uint64_t a1)
{
  v2 = sub_23FFB377C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB159C(uint64_t a1)
{
  v2 = sub_23FFB3140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB15D8(uint64_t a1)
{
  v2 = sub_23FFB3140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB1614(uint64_t a1)
{
  v2 = sub_23FFB3434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB1650(uint64_t a1)
{
  v2 = sub_23FFB3434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB168C(uint64_t a1)
{
  v2 = sub_23FFB3530();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB16C8(uint64_t a1)
{
  v2 = sub_23FFB3530();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB1704(uint64_t a1)
{
  v2 = sub_23FFB323C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB1740(uint64_t a1)
{
  v2 = sub_23FFB323C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB177C(uint64_t a1)
{
  v2 = sub_23FFB35D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB17B8(uint64_t a1)
{
  v2 = sub_23FFB35D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB17F4(uint64_t a1)
{
  v2 = sub_23FFB37D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB1830(uint64_t a1)
{
  v2 = sub_23FFB37D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFB186C(uint64_t a1)
{
  v2 = sub_23FFB3728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFB18A8(uint64_t a1)
{
  v2 = sub_23FFB3728();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketplaceKitError.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3D68, &qword_23FFE4028);
  v147 = *(v2 - 8);
  v148 = v2;
  MEMORY[0x28223BE20](v2);
  v146 = &v79 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3D70, &qword_23FFE4030);
  v144 = *(v4 - 8);
  v145 = v4;
  MEMORY[0x28223BE20](v4);
  v143 = &v79 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3D78, &qword_23FFE4038);
  v141 = *(v6 - 8);
  v142 = v6;
  MEMORY[0x28223BE20](v6);
  v140 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3D80, &qword_23FFE4040);
  v138 = *(v8 - 8);
  v139 = v8;
  MEMORY[0x28223BE20](v8);
  v137 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3D88, &qword_23FFE4048);
  v135 = *(v10 - 8);
  v136 = v10;
  MEMORY[0x28223BE20](v10);
  v134 = &v79 - v11;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3D90, &qword_23FFE4050);
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v131 = &v79 - v12;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3D98, &qword_23FFE4058);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v79 - v13;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3DA0, &qword_23FFE4060);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v79 - v14;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3DA8, &qword_23FFE4068);
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v79 - v15;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3DB0, &qword_23FFE4070);
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = &v79 - v16;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3DB8, &qword_23FFE4078);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v79 - v17;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3DC0, &qword_23FFE4080);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v79 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3DC8, &qword_23FFE4088);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v79 - v19;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3DD0, &qword_23FFE4090);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v79 - v20;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3DD8, &qword_23FFE4098);
  v100 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v99 = &v79 - v21;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3DE0, &qword_23FFE40A0);
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v102 = &v79 - v22;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E3A2210, &qword_23FFE4010);
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v98 = &v79 - v23;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3DE8, &qword_23FFE40A8);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v79 - v24;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3DF0, &qword_23FFE40B0);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v79 - v25;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3DF8, &qword_23FFE40B8);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = &v79 - v26;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3E00, &qword_23FFE40C0);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v86 = &v79 - v27;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3E08, &qword_23FFE40C8);
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v29 = &v79 - v28;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3E10, &qword_23FFE40D0);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v81 = &v79 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3E18, &qword_23FFE40D8);
  v80 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v79 - v32;
  v34 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v34);
  v36 = (&v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3E20, &qword_23FFE40E0);
  v38 = *(v37 - 8);
  v150 = v37;
  v151 = v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v79 - v39;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFB3044();
  v149 = v40;
  sub_23FFD9ACC();
  sub_23FF6EBC0(v152, v36);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      LOBYTE(v153) = 3;
      sub_23FFB36D4();
      v66 = v86;
      v68 = v149;
      v67 = v150;
      sub_23FFD988C();
      v69 = v89;
      sub_23FFD98EC();

      (*(v88 + 8))(v66, v69);
      return (*(v151 + 8))(v68, v67);
    case 2u:
      v57 = v101;
      v58 = v98;
      v59 = v103;
      (*(v101 + 32))(v98, v36, v103);
      LOBYTE(v153) = 7;
      sub_23FFB3584();
      v60 = v102;
      v62 = v149;
      v61 = v150;
      sub_23FFD988C();
      sub_23FF64310(&qword_27E3A3EB0, qword_27E3A2210, &qword_23FFE4010, MEMORY[0x277CC87D8]);
      v63 = v107;
      sub_23FFD991C();
      (*(v105 + 8))(v60, v63);
      (*(v57 + 8))(v58, v59);
      return (*(v151 + 8))(v62, v61);
    case 3u:
      LOBYTE(v153) = 0;
      sub_23FFB37D0();
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      (*(v80 + 8))(v33, v31);
      goto LABEL_29;
    case 4u:
      LOBYTE(v153) = 2;
      sub_23FFB3728();
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      v50 = *(v82 + 8);
      v51 = v29;
      v52 = &v116;
      goto LABEL_24;
    case 5u:
      LOBYTE(v153) = 4;
      sub_23FFB3680();
      v74 = v87;
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      v50 = *(v90 + 8);
      v51 = v74;
      v52 = &v123;
      goto LABEL_24;
    case 6u:
      LOBYTE(v153) = 5;
      sub_23FFB362C();
      v76 = v92;
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      v50 = *(v93 + 8);
      v51 = v76;
      v52 = &v126;
      goto LABEL_24;
    case 7u:
      LOBYTE(v153) = 6;
      sub_23FFB35D8();
      v65 = v95;
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      v50 = *(v96 + 8);
      v51 = v65;
      v52 = &v129;
      goto LABEL_24;
    case 8u:
      LOBYTE(v153) = 8;
      sub_23FFB3530();
      v78 = v99;
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      v50 = *(v100 + 8);
      v51 = v78;
      v52 = &v136;
      goto LABEL_24;
    case 9u:
      LOBYTE(v153) = 9;
      sub_23FFB34DC();
      v56 = v106;
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      v50 = *(v108 + 8);
      v51 = v56;
      v52 = &v141;
      goto LABEL_24;
    case 0xAu:
      LOBYTE(v153) = 10;
      sub_23FFB3488();
      v77 = v110;
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      v50 = *(v111 + 8);
      v51 = v77;
      v52 = &v144;
      goto LABEL_24;
    case 0xBu:
      LOBYTE(v153) = 11;
      sub_23FFB3434();
      v54 = v113;
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      v50 = *(v114 + 8);
      v51 = v54;
      v52 = &v147;
      goto LABEL_24;
    case 0xCu:
      LOBYTE(v153) = 12;
      sub_23FFB33E0();
      v55 = v116;
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      v50 = *(v117 + 8);
      v51 = v55;
      v52 = &v150;
      goto LABEL_24;
    case 0xDu:
      LOBYTE(v153) = 13;
      sub_23FFB338C();
      v75 = v119;
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      v50 = *(v120 + 8);
      v51 = v75;
      v52 = &v152;
      goto LABEL_24;
    case 0xEu:
      LOBYTE(v153) = 14;
      sub_23FFB3338();
      v53 = v122;
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      v50 = *(v123 + 8);
      v51 = v53;
      v52 = &v153;
      goto LABEL_24;
    case 0xFu:
      LOBYTE(v153) = 15;
      sub_23FFB32E4();
      v64 = v125;
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      v50 = *(v126 + 8);
      v51 = v64;
      v52 = &v154;
      goto LABEL_24;
    case 0x10u:
      LOBYTE(v153) = 16;
      sub_23FFB3290();
      v47 = v128;
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      v50 = *(v129 + 8);
      v51 = v47;
      v52 = &v155;
LABEL_24:
      v72 = *(v52 - 32);
      goto LABEL_28;
    case 0x11u:
      LOBYTE(v153) = 17;
      sub_23FFB323C();
      v70 = v131;
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      (*(v132 + 8))(v70, v133);
      goto LABEL_29;
    case 0x12u:
      LOBYTE(v153) = 18;
      sub_23FFB31E8();
      v71 = v134;
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      v73 = v135;
      v72 = v136;
      goto LABEL_27;
    case 0x13u:
      LOBYTE(v153) = 19;
      sub_23FFB3194();
      v71 = v137;
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      v73 = v138;
      v72 = v139;
      goto LABEL_27;
    case 0x14u:
      LOBYTE(v153) = 20;
      sub_23FFB3140();
      v71 = v140;
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      v73 = v141;
      v72 = v142;
      goto LABEL_27;
    case 0x15u:
      LOBYTE(v153) = 21;
      sub_23FFB30EC();
      v71 = v143;
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      v73 = v144;
      v72 = v145;
      goto LABEL_27;
    case 0x16u:
      LOBYTE(v153) = 22;
      sub_23FFB3098();
      v71 = v146;
      v49 = v149;
      v48 = v150;
      sub_23FFD988C();
      v73 = v147;
      v72 = v148;
LABEL_27:
      v50 = *(v73 + 8);
      v51 = v71;
LABEL_28:
      v50(v51, v72);
LABEL_29:
      result = (*(v151 + 8))(v49, v48);
      break;
    default:
      v41 = *v36;
      LOBYTE(v153) = 1;
      sub_23FFB377C();
      v42 = v81;
      v43 = v149;
      v44 = v150;
      sub_23FFD988C();
      v153 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27F0, &qword_23FFDB210);
      sub_23FF668B0(&qword_27E3A27F8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
      v45 = v85;
      sub_23FFD991C();
      (*(v83 + 8))(v42, v45);
      (*(v151 + 8))(v43, v44);

      break;
  }

  return result;
}

unint64_t sub_23FFB3044()
{
  result = qword_27E3A3E28;
  if (!qword_27E3A3E28)
  {
    result = swift_getWitnessTable("]_%Bȋ", &type metadata for MarketplaceKitError.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3E28);
  }

  return result;
}

unint64_t sub_23FFB3098()
{
  result = qword_27E3A3E30;
  if (!qword_27E3A3E30)
  {
    result = swift_getWitnessTable(byte_23FFE567C, &type metadata for MarketplaceKitError.MissingAgeRatingExceptionRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3E30);
  }

  return result;
}

unint64_t sub_23FFB30EC()
{
  result = qword_27E3A3E38;
  if (!qword_27E3A3E38)
  {
    result = swift_getWitnessTable(byte_23FFE562C, &type metadata for MarketplaceKitError.AgeRatingExceptionNotNeededCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3E38);
  }

  return result;
}

unint64_t sub_23FFB3140()
{
  result = qword_27E3A3E40;
  if (!qword_27E3A3E40)
  {
    result = swift_getWitnessTable(aMB_0, &type metadata for MarketplaceKitError.MissingInstallVerificationTokenCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3E40);
  }

  return result;
}

unint64_t sub_23FFB3194()
{
  result = qword_27E3A3E48;
  if (!qword_27E3A3E48)
  {
    result = swift_getWitnessTable(byte_23FFE558C, &type metadata for MarketplaceKitError.InvalidURLCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3E48);
  }

  return result;
}

unint64_t sub_23FFB31E8()
{
  result = qword_27E3A3E50;
  if (!qword_27E3A3E50)
  {
    result = swift_getWitnessTable(byte_23FFE553C, &type metadata for MarketplaceKitError.InvalidLicenseCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3E50);
  }

  return result;
}

unint64_t sub_23FFB323C()
{
  result = qword_27E3A3E58;
  if (!qword_27E3A3E58)
  {
    result = swift_getWitnessTable(aAB0, &type metadata for MarketplaceKitError.OauthTokenErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3E58);
  }

  return result;
}

unint64_t sub_23FFB3290()
{
  result = qword_27E3A3E60;
  if (!qword_27E3A3E60)
  {
    result = swift_getWitnessTable(byte_23FFE549C, &type metadata for MarketplaceKitError.MismatchedInstallTypeCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3E60);
  }

  return result;
}

unint64_t sub_23FFB32E4()
{
  result = qword_27E3A3E68;
  if (!qword_27E3A3E68)
  {
    result = swift_getWitnessTable(byte_23FFE544C, &type metadata for MarketplaceKitError.CancelledCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3E68);
  }

  return result;
}

unint64_t sub_23FFB3338()
{
  result = qword_27E3A3E70;
  if (!qword_27E3A3E70)
  {
    result = swift_getWitnessTable(aBB, &type metadata for MarketplaceKitError.FeatureUnavailableCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3E70);
  }

  return result;
}

unint64_t sub_23FFB338C()
{
  result = qword_27E3A3E78;
  if (!qword_27E3A3E78)
  {
    result = swift_getWitnessTable(aBB_0, &type metadata for MarketplaceKitError.InvalidAlternativeDistributionPackageSignatureCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3E78);
  }

  return result;
}

unint64_t sub_23FFB33E0()
{
  result = qword_27E3A3E80;
  if (!qword_27E3A3E80)
  {
    result = swift_getWitnessTable(byte_23FFE535C, &type metadata for MarketplaceKitError.InvalidAlternativeDistributionPackageURLCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3E80);
  }

  return result;
}

unint64_t sub_23FFB3434()
{
  result = qword_27E3A3E88;
  if (!qword_27E3A3E88)
  {
    result = swift_getWitnessTable(byte_23FFE530C, &type metadata for MarketplaceKitError.NetworkErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3E88);
  }

  return result;
}

unint64_t sub_23FFB3488()
{
  result = qword_27E3A3E90;
  if (!qword_27E3A3E90)
  {
    result = swift_getWitnessTable(aMcBd, &type metadata for MarketplaceKitError.InvalidManifestCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3E90);
  }

  return result;
}

unint64_t sub_23FFB34DC()
{
  result = qword_27E3A3E98;
  if (!qword_27E3A3E98)
  {
    result = swift_getWitnessTable(byte_23FFE526C, &type metadata for MarketplaceKitError.AppNotInstalledCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3E98);
  }

  return result;
}

unint64_t sub_23FFB3530()
{
  result = qword_27E3A3EA0;
  if (!qword_27E3A3EA0)
  {
    result = swift_getWitnessTable(aDB, &type metadata for MarketplaceKitError.NoSupportedVariantCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3EA0);
  }

  return result;
}

unint64_t sub_23FFB3584()
{
  result = qword_27E3A3EA8;
  if (!qword_27E3A3EA8)
  {
    result = swift_getWitnessTable(aDB_0, &type metadata for MarketplaceKitError.InsufficientStorageSpaceCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3EA8);
  }

  return result;
}

unint64_t sub_23FFB35D8()
{
  result = qword_27E3A3EB8;
  if (!qword_27E3A3EB8)
  {
    result = swift_getWitnessTable(byte_23FFE517C, &type metadata for MarketplaceKitError.RatingRestrictedCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3EB8);
  }

  return result;
}

unint64_t sub_23FFB362C()
{
  result = qword_27E3A3EC0;
  if (!qword_27E3A3EC0)
  {
    result = swift_getWitnessTable(byte_23FFE512C, &type metadata for MarketplaceKitError.InstallationOfMarketplaceDeniedCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3EC0);
  }

  return result;
}

unint64_t sub_23FFB3680()
{
  result = qword_27E3A3EC8;
  if (!qword_27E3A3EC8)
  {
    result = swift_getWitnessTable(aMeBl, &type metadata for MarketplaceKitError.InstallationRestrictedCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3EC8);
  }

  return result;
}

unint64_t sub_23FFB36D4()
{
  result = qword_27E3A3ED0;
  if (!qword_27E3A3ED0)
  {
    result = swift_getWitnessTable(byte_23FFE508C, &type metadata for MarketplaceKitError.MinimumPlatformVersionNotSatisfiedCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3ED0);
  }

  return result;
}

unint64_t sub_23FFB3728()
{
  result = qword_27E3A3ED8;
  if (!qword_27E3A3ED8)
  {
    result = swift_getWitnessTable(byte_23FFE503C, &type metadata for MarketplaceKitError.UnsupportedPlatformCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3ED8);
  }

  return result;
}

unint64_t sub_23FFB377C()
{
  result = qword_27E3A3EE0;
  if (!qword_27E3A3EE0)
  {
    result = swift_getWitnessTable(aFB, &type metadata for MarketplaceKitError.MissingCapabilitiesCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3EE0);
  }

  return result;
}

unint64_t sub_23FFB37D0()
{
  result = qword_27E3A3EE8;
  if (!qword_27E3A3EE8)
  {
    result = swift_getWitnessTable(byte_23FFE4F9C, &type metadata for MarketplaceKitError.UnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3EE8);
  }

  return result;
}

uint64_t MarketplaceKitError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v191 = a2;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3EF0, &qword_23FFE40E8);
  v186 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v185 = &v115 - v3;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3EF8, &qword_23FFE40F0);
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v184 = &v115 - v4;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F00, &qword_23FFE40F8);
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v183 = &v115 - v5;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F08, &qword_23FFE4100);
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v182 = &v115 - v6;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F10, &qword_23FFE4108);
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v181 = &v115 - v7;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F18, &qword_23FFE4110);
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v180 = &v115 - v8;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F20, &qword_23FFE4118);
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v179 = &v115 - v9;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F28, &qword_23FFE4120);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v178 = &v115 - v10;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F30, &qword_23FFE4128);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v177 = &v115 - v11;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F38, &qword_23FFE4130);
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v176 = &v115 - v12;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F40, &qword_23FFE4138);
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v175 = &v115 - v13;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F48, &qword_23FFE4140);
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v174 = &v115 - v14;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F50, &qword_23FFE4148);
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v173 = &v115 - v15;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F58, &qword_23FFE4150);
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v172 = &v115 - v16;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F60, &qword_23FFE4158);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v171 = &v115 - v17;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F68, &qword_23FFE4160);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v189 = &v115 - v18;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F70, &qword_23FFE4168);
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v170 = &v115 - v19;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F78, &qword_23FFE4170);
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v169 = &v115 - v20;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F80, &qword_23FFE4178);
  v127 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v168 = &v115 - v21;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F88, &qword_23FFE4180);
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v167 = &v115 - v22;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F90, &qword_23FFE4188);
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v165 = &v115 - v23;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3F98, &qword_23FFE4190);
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v166 = &v115 - v24;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3FA0, &qword_23FFE4198);
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v164 = &v115 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3FA8, &unk_23FFE41A0);
  v187 = *(v26 - 8);
  v188 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v115 - v27;
  v29 = type metadata accessor for MarketplaceKitError(0);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = (&v115 - v34);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v115 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v115 - v39;
  v41 = a1[3];
  v192 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_23FFB3044();
  v42 = v193;
  sub_23FFD9AAC();
  if (v42)
  {
    return __swift_destroy_boxed_opaque_existential_1(v192);
  }

  v115 = v35;
  v116 = v38;
  v117 = v32;
  v43 = v189;
  v119 = 0;
  v44 = v190;
  v193 = v29;
  v118 = v40;
  v45 = v191;
  v46 = v188;
  v47 = sub_23FFD986C();
  v48 = (2 * *(v47 + 16)) | 1;
  v194 = v47;
  v195 = v47 + 32;
  v196 = 0;
  v197 = v48;
  v49 = sub_23FF7028C();
  if (v196 != v197 >> 1)
  {
LABEL_6:
    v54 = sub_23FFD970C();
    swift_allocError();
    v56 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
    *v56 = v193;
    sub_23FFD97AC();
    sub_23FFD96FC();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D84160], v54);
    swift_willThrow();
LABEL_7:
    (*(v187 + 8))(v28, v46);
LABEL_8:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v192);
  }

  v50 = v186;
  switch(v49)
  {
    case 0:
      LOBYTE(v198) = 0;
      sub_23FFB37D0();
      v51 = v164;
      v52 = v119;
      sub_23FFD979C();
      if (v52)
      {
        goto LABEL_7;
      }

      (*(v120 + 8))(v51, v121);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 1:
      LOBYTE(v198) = 1;
      sub_23FFB377C();
      v82 = v166;
      v83 = v119;
      sub_23FFD979C();
      if (v83)
      {
        goto LABEL_7;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27F0, &qword_23FFDB210);
      sub_23FF668B0(&qword_2814FD770, MEMORY[0x277D83808], MEMORY[0x277D83978]);
      v84 = v125;
      sub_23FFD983C();
      v85 = v187;
      (*(v124 + 8))(v82, v84);
      (*(v85 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v114 = v116;
      *v116 = v198;
      goto LABEL_58;
    case 2:
      LOBYTE(v198) = 2;
      sub_23FFB3728();
      v70 = v165;
      v71 = v119;
      sub_23FFD979C();
      if (v71)
      {
        goto LABEL_7;
      }

      (*(v122 + 8))(v70, v123);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 3:
      LOBYTE(v198) = 3;
      sub_23FFB36D4();
      v74 = v167;
      v75 = v119;
      sub_23FFD979C();
      if (v75)
      {
        goto LABEL_7;
      }

      v76 = v128;
      v109 = sub_23FFD980C();
      v111 = v110;
      (*(v126 + 8))(v74, v76);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v112 = v115;
      *v115 = v109;
      v112[1] = v111;
      swift_storeEnumTagMultiPayload();
      v113 = v112;
      goto LABEL_59;
    case 4:
      LOBYTE(v198) = 4;
      sub_23FFB3680();
      v64 = v168;
      v65 = v119;
      sub_23FFD979C();
      if (v65)
      {
        goto LABEL_7;
      }

      (*(v127 + 8))(v64, v129);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 5:
      LOBYTE(v198) = 5;
      sub_23FFB362C();
      v90 = v169;
      v91 = v119;
      sub_23FFD979C();
      if (v91)
      {
        goto LABEL_7;
      }

      (*(v130 + 8))(v90, v131);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 6:
      LOBYTE(v198) = 6;
      sub_23FFB35D8();
      v96 = v170;
      v97 = v119;
      sub_23FFD979C();
      if (v97)
      {
        goto LABEL_7;
      }

      (*(v132 + 8))(v96, v133);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 7:
      LOBYTE(v198) = 7;
      sub_23FFB3584();
      v77 = v43;
      v78 = v119;
      sub_23FFD979C();
      if (v78)
      {
        goto LABEL_7;
      }

      v119 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E3A2210, &qword_23FFE4010);
      sub_23FF64310(&qword_27E3A3FB0, qword_27E3A2210, &qword_23FFE4010, MEMORY[0x277CC87F8]);
      v79 = v137;
      v80 = v119;
      sub_23FFD983C();
      v81 = v187;
      if (v80)
      {
        (*(v136 + 8))(v77, v79);
        (*(v81 + 8))(v28, v46);
        goto LABEL_8;
      }

      (*(v136 + 8))(v77, v79);
      (*(v81 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v114 = v117;
LABEL_58:
      swift_storeEnumTagMultiPayload();
      v113 = v114;
LABEL_59:
      v53 = v118;
      sub_23FF51974(v113, v118);
LABEL_56:
      v108 = v192;
      sub_23FF51974(v53, v45);
      result = __swift_destroy_boxed_opaque_existential_1(v108);
      break;
    case 8:
      LOBYTE(v198) = 8;
      sub_23FFB3530();
      v102 = v171;
      v103 = v119;
      sub_23FFD979C();
      if (v103)
      {
        goto LABEL_7;
      }

      (*(v134 + 8))(v102, v135);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 9:
      LOBYTE(v198) = 9;
      sub_23FFB34DC();
      v68 = v172;
      v69 = v119;
      sub_23FFD979C();
      if (v69)
      {
        goto LABEL_7;
      }

      (*(v138 + 8))(v68, v139);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 10:
      LOBYTE(v198) = 10;
      sub_23FFB3488();
      v100 = v173;
      v101 = v119;
      sub_23FFD979C();
      if (v101)
      {
        goto LABEL_7;
      }

      (*(v140 + 8))(v100, v141);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 11:
      LOBYTE(v198) = 11;
      sub_23FFB3434();
      v62 = v174;
      v63 = v119;
      sub_23FFD979C();
      if (v63)
      {
        goto LABEL_7;
      }

      (*(v142 + 8))(v62, v143);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 12:
      LOBYTE(v198) = 12;
      sub_23FFB33E0();
      v66 = v175;
      v67 = v119;
      sub_23FFD979C();
      if (v67)
      {
        goto LABEL_7;
      }

      (*(v144 + 8))(v66, v145);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 13:
      LOBYTE(v198) = 13;
      sub_23FFB338C();
      v94 = v176;
      v95 = v119;
      sub_23FFD979C();
      if (v95)
      {
        goto LABEL_7;
      }

      (*(v146 + 8))(v94, v147);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 14:
      LOBYTE(v198) = 14;
      sub_23FFB3338();
      v60 = v177;
      v61 = v119;
      sub_23FFD979C();
      if (v61)
      {
        goto LABEL_7;
      }

      (*(v148 + 8))(v60, v149);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 15:
      LOBYTE(v198) = 15;
      sub_23FFB32E4();
      v72 = v178;
      v73 = v119;
      sub_23FFD979C();
      if (v73)
      {
        goto LABEL_7;
      }

      (*(v150 + 8))(v72, v151);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 16:
      LOBYTE(v198) = 16;
      sub_23FFB3290();
      v58 = v179;
      v59 = v119;
      sub_23FFD979C();
      if (v59)
      {
        goto LABEL_7;
      }

      (*(v152 + 8))(v58, v153);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 17:
      LOBYTE(v198) = 17;
      sub_23FFB323C();
      v86 = v180;
      v87 = v119;
      sub_23FFD979C();
      if (v87)
      {
        goto LABEL_7;
      }

      (*(v154 + 8))(v86, v155);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 18:
      LOBYTE(v198) = 18;
      sub_23FFB31E8();
      v98 = v181;
      v99 = v119;
      sub_23FFD979C();
      if (v99)
      {
        goto LABEL_7;
      }

      (*(v156 + 8))(v98, v157);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 19:
      LOBYTE(v198) = 19;
      sub_23FFB3194();
      v106 = v182;
      v107 = v119;
      sub_23FFD979C();
      if (v107)
      {
        goto LABEL_7;
      }

      (*(v158 + 8))(v106, v159);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 20:
      LOBYTE(v198) = 20;
      sub_23FFB3140();
      v88 = v183;
      v89 = v119;
      sub_23FFD979C();
      if (v89)
      {
        goto LABEL_7;
      }

      (*(v160 + 8))(v88, v161);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 21:
      LOBYTE(v198) = 21;
      sub_23FFB30EC();
      v92 = v184;
      v93 = v119;
      sub_23FFD979C();
      if (v93)
      {
        goto LABEL_7;
      }

      (*(v162 + 8))(v92, v163);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 22:
      LOBYTE(v198) = 22;
      sub_23FFB3098();
      v104 = v185;
      v105 = v119;
      sub_23FFD979C();
      if (v105)
      {
        goto LABEL_7;
      }

      (*(v50 + 8))(v104, v44);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
LABEL_55:
      swift_storeEnumTagMultiPayload();
      goto LABEL_56;
    default:
      goto LABEL_6;
  }

  return result;
}