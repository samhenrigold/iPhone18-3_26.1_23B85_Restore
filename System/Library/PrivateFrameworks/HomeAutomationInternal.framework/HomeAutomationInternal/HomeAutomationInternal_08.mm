uint64_t sub_2529BA254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v40[1] = a2;
  v41 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v40 - v5;
  v7 = sub_252E32BA4();
  v40[0] = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v40 - v11;
  v13 = sub_252E32E04();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[2] = a1;
  sub_252E36584();
  __swift_project_boxed_opaque_existential_1(&v43, v45);
  sub_252E364C4();
  v17 = sub_252E37B74();

  __swift_destroy_boxed_opaque_existential_1(&v43);
  if (v17 == 2)
  {
    v42 = 0;
    sub_2529BBF08();
    sub_252E365A4();
    if (v44)
    {
      v24 = sub_252E37B74();

      if (!v24)
      {
        v25 = 0;
        goto LABEL_33;
      }

      if (v24 == 1)
      {
        v25 = 1;
LABEL_33:
        v29 = v41;
        *v41 = v25;
        v30 = type metadata accessor for TriggerEventType(0);
LABEL_34:
        swift_storeEnumTagMultiPayload();
        v38 = *(*(v30 - 8) + 56);
        v39 = v29;
        return v38(v39, 0, 1, v30);
      }
    }

    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v27 = sub_252E36AD4();
    __swift_project_value_buffer(v27, qword_27F544EE0);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E6F080);
    sub_252E365B4();
    sub_252E37AE4();
    v19 = v43;
    v20 = v44;
    v21 = 98;
    goto LABEL_29;
  }

  if (v17 != 1)
  {
    if (v17)
    {
      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v26 = sub_252E36AD4();
      __swift_project_value_buffer(v26, qword_27F544EE0);
      sub_252CC4050(0xD000000000000019, 0x8000000252E6EFC0, 0xD00000000000007FLL, 0x8000000252E6EFE0, 0xD000000000000010, 0x8000000252E6F060, 68);
      goto LABEL_30;
    }

    LOBYTE(v43) = 0;
    sub_2529BBF08();
    sub_252E365A4();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_25293847C(v12, &qword_27F540F38, &unk_252E41490);
      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v18 = sub_252E36AD4();
      __swift_project_value_buffer(v18, qword_27F544EE0);
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E6F080);
      sub_252E365B4();
      sub_252E37AE4();
      v19 = v43;
      v20 = v44;
      v21 = 78;
LABEL_29:
      sub_252CC4050(v19, v20, 0xD00000000000007FLL, 0x8000000252E6EFE0, 0xD000000000000010, 0x8000000252E6F060, v21);

LABEL_30:
      v33 = type metadata accessor for TriggerEventType(0);
      return (*(*(v33 - 8) + 56))(v41, 1, 1, v33);
    }

    v28 = *(v14 + 32);
    v28(v16, v12, v13);
    v29 = v41;
    v28(v41, v16, v13);
    v30 = type metadata accessor for TriggerEventType(0);
    goto LABEL_34;
  }

  v42 = 0;
  sub_2529BBF08();
  sub_252E365A4();
  if (!v44)
  {
    goto LABEL_26;
  }

  v22 = sub_252E37B74();

  if (v22)
  {
    if (v22 == 1)
    {
      v23 = 1;
      goto LABEL_24;
    }

LABEL_26:
    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v32 = sub_252E36AD4();
    __swift_project_value_buffer(v32, qword_27F544EE0);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E6F080);
    sub_252E365B4();
    sub_252E37AE4();
    v19 = v43;
    v20 = v44;
    v21 = 89;
    goto LABEL_29;
  }

  v23 = 0;
LABEL_24:
  LOBYTE(v43) = 1;
  sub_252E365A4();
  v31 = v40[0];
  if ((*(v40[0] + 48))(v6, 1, v7) == 1)
  {
    sub_25293847C(v6, &qword_27F540F00, &unk_252E3FEC0);
    goto LABEL_26;
  }

  v35 = *(v31 + 32);
  v35(v9, v6, v7);
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F48, &unk_252E3F7C0) + 48);
  v37 = v41;
  *v41 = v23;
  v35(&v37[v36], v9, v7);
  (*(v31 + 56))(&v37[v36], 0, 1, v7);
  v30 = type metadata accessor for TriggerEventType(0);
  swift_storeEnumTagMultiPayload();
  v38 = *(*(v30 - 8) + 56);
  v39 = v37;
  return v38(v39, 0, 1, v30);
}

uint64_t sub_2529BAB9C(uint64_t a1)
{
  sub_2529BC0FC(&qword_27F540F70, type metadata accessor for TriggerEventType, byte_252E3F634);

  return sub_252E36514();
}

uint64_t sub_2529BAC08(uint64_t a1, uint64_t a2)
{
  v4 = sub_2529BC0FC(&qword_27F540F70, type metadata accessor for TriggerEventType, byte_252E3F634);

  return MEMORY[0x28213DA58](a1, a2, v4);
}

uint64_t sub_2529BAC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2529BC0FC(&qword_27F540F70, type metadata accessor for TriggerEventType, byte_252E3F634);

  return MEMORY[0x28213DA68](a1, a2, a3, v6);
}

uint64_t sub_2529BAD18(uint64_t a1, uint64_t a2)
{
  v4 = sub_2529BC0FC(&qword_27F540F70, type metadata accessor for TriggerEventType, byte_252E3F634);

  return MEMORY[0x28213DA60](a1, a2, v4);
}

void sub_2529BADA0(uint64_t *a1@<X8>)
{
  v2 = 0x657369726E7573;
  if (*v1)
  {
    v2 = 0x7465736E7573;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2529BADDC()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529BAE5C(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_2529BAEC8(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529BAF44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7465736E7573;
  }

  else
  {
    v3 = 0x657369726E7573;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x7465736E7573;
  }

  else
  {
    v5 = 0x657369726E7573;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_2529BAFF4@<X0>(char *a3@<X8>)
{
  v4 = sub_252E37B74();

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

void sub_2529BB050(uint64_t *a1@<X8>)
{
  v2 = 0x6D6F48657661656CLL;
  if (*v1)
  {
    v2 = 0x6F48657669727261;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEA0000000000656DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2529BB098()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529BB124(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_2529BB19C(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529BB224(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F48657669727261;
  }

  else
  {
    v3 = 0x6D6F48657661656CLL;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xEA0000000000656DLL;
  }

  if (*a2)
  {
    v5 = 0x6F48657669727261;
  }

  else
  {
    v5 = 0x6D6F48657661656CLL;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000656DLL;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_2529BB2D4(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v68 = sub_252E32BA4();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v62 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F58, &qword_252E3F7D0);
  MEMORY[0x28223BE20](v64);
  v67 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v63 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v69 = &v61 - v9;
  MEMORY[0x28223BE20](v8);
  v65 = &v61 - v10;
  v11 = sub_252E32E04();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TriggerEventType(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v61 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v61 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F60, &qword_252E3F7D8);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v61 - v26;
  v28 = &v61 + *(v25 + 56) - v26;
  sub_2529BBF5C(a1, &v61 - v26);
  sub_2529BBF5C(v70, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2529BBF5C(v27, v21);
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F48, &unk_252E3F7C0) + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = *v21;
        v32 = *v28;
        v33 = v65;
        sub_2529BBFC0(&v21[v30], v65);
        v34 = v69;
        sub_2529BBFC0(&v28[v30], v69);
        if (v31)
        {
          v35 = 0x7465736E7573;
        }

        else
        {
          v35 = 0x657369726E7573;
        }

        if (v31)
        {
          v36 = 0xE600000000000000;
        }

        else
        {
          v36 = 0xE700000000000000;
        }

        if (v32)
        {
          v37 = 0x7465736E7573;
        }

        else
        {
          v37 = 0x657369726E7573;
        }

        if (v32)
        {
          v38 = 0xE600000000000000;
        }

        else
        {
          v38 = 0xE700000000000000;
        }

        if (v35 == v37 && v36 == v38)
        {

          v40 = v67;
          v39 = v68;
          v41 = v66;
        }

        else
        {
          v51 = sub_252E37DB4();

          v40 = v67;
          v39 = v68;
          v41 = v66;
          if ((v51 & 1) == 0)
          {
            sub_25293847C(v34, &qword_27F540F00, &unk_252E3FEC0);
            sub_25293847C(v33, &qword_27F540F00, &unk_252E3FEC0);
            goto LABEL_54;
          }
        }

        v52 = *(v64 + 48);
        sub_2529BC030(v33, v40);
        sub_2529BC030(v34, v40 + v52);
        v53 = v34;
        v54 = *(v41 + 48);
        if (v54(v40, 1, v39) == 1)
        {
          sub_25293847C(v53, &qword_27F540F00, &unk_252E3FEC0);
          sub_25293847C(v33, &qword_27F540F00, &unk_252E3FEC0);
          if (v54(v40 + v52, 1, v39) == 1)
          {
            sub_25293847C(v40, &qword_27F540F00, &unk_252E3FEC0);
            goto LABEL_48;
          }
        }

        else
        {
          v55 = v63;
          sub_2529BC030(v40, v63);
          if (v54(v40 + v52, 1, v39) != 1)
          {
            v56 = v62;
            (*(v41 + 32))(v62, v40 + v52, v39);
            sub_2529BC0FC(&qword_27F540F68, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
            v57 = v55;
            v58 = sub_252E36EF4();
            v59 = *(v41 + 8);
            v59(v56, v39);
            sub_25293847C(v69, &qword_27F540F00, &unk_252E3FEC0);
            sub_25293847C(v33, &qword_27F540F00, &unk_252E3FEC0);
            v59(v57, v39);
            sub_25293847C(v40, &qword_27F540F00, &unk_252E3FEC0);
            if (v58)
            {
              goto LABEL_48;
            }

            goto LABEL_54;
          }

          sub_25293847C(v69, &qword_27F540F00, &unk_252E3FEC0);
          sub_25293847C(v33, &qword_27F540F00, &unk_252E3FEC0);
          (*(v41 + 8))(v55, v39);
        }

        sub_25293847C(v40, &qword_27F540F58, &qword_252E3F7D0);
LABEL_54:
        sub_2529BC0A0(v27);
        goto LABEL_55;
      }

      sub_25293847C(&v21[v30], &qword_27F540F00, &unk_252E3FEC0);
    }

    else
    {
      sub_2529BBF5C(v27, v18);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v42 = *v28;
        if (*v18)
        {
          v43 = 0x6F48657669727261;
        }

        else
        {
          v43 = 0x6D6F48657661656CLL;
        }

        if (*v18)
        {
          v44 = 0xEA0000000000656DLL;
        }

        else
        {
          v44 = 0xE900000000000065;
        }

        if (v42)
        {
          v45 = 0x6F48657669727261;
        }

        else
        {
          v45 = 0x6D6F48657661656CLL;
        }

        if (v42)
        {
          v46 = 0xEA0000000000656DLL;
        }

        else
        {
          v46 = 0xE900000000000065;
        }

        if (v43 == v45 && v44 == v46)
        {

          goto LABEL_48;
        }

        v48 = sub_252E37DB4();

        if (v48)
        {
LABEL_48:
          sub_2529BC0A0(v27);
          v49 = 1;
          return v49 & 1;
        }

        goto LABEL_54;
      }
    }

LABEL_41:
    sub_25293847C(v27, &qword_27F540F60, &qword_252E3F7D8);
LABEL_55:
    v49 = 0;
    return v49 & 1;
  }

  sub_2529BBF5C(v27, v23);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v12 + 8))(v23, v11);
    goto LABEL_41;
  }

  (*(v12 + 32))(v14, v28, v11);
  v49 = sub_252E32DA4();
  v50 = *(v12 + 8);
  v50(v14, v11);
  v50(v23, v11);
  sub_2529BC0A0(v27);
  return v49 & 1;
}

uint64_t sub_2529BBB68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a2);
  if (*(v3 + 16) && (v4 = sub_252A488EC(), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + v4);

    return v6;
  }

  else
  {

    return 2;
  }
}

uint64_t type metadata accessor for TriggerEventType(uint64_t a1)
{
  result = qword_27F540EE8;
  if (!qword_27F540EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2529BBC8C(uint64_t a1)
{
  sub_252E32E04();
  if (v1 <= 0x3F)
  {
    sub_2529BBD08(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2529BBD08(uint64_t a1)
{
  if (!qword_27F540EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540F00, &unk_252E3FEC0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F540EF8);
    }
  }
}

unint64_t sub_2529BBE5C()
{
  result = qword_27F540F28;
  if (!qword_27F540F28)
  {
    result = swift_getWitnessTable(aU_0, &type metadata for SignificantTime, v0, v1);
    atomic_store(result, &qword_27F540F28);
  }

  return result;
}

unint64_t sub_2529BBEB4()
{
  result = qword_27F540F30;
  if (!qword_27F540F30)
  {
    result = swift_getWitnessTable(byte_252E3F714, &type metadata for Presence, v0, v1);
    atomic_store(result, &qword_27F540F30);
  }

  return result;
}

unint64_t sub_2529BBF08()
{
  result = qword_27F540F40;
  if (!qword_27F540F40)
  {
    result = swift_getWitnessTable(aM, &type metadata for TriggerEventType.Identifiers, v0, v1);
    atomic_store(result, &qword_27F540F40);
  }

  return result;
}

uint64_t sub_2529BBF5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TriggerEventType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2529BBFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2529BC030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2529BC0A0(uint64_t a1)
{
  v2 = type metadata accessor for TriggerEventType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2529BC0FC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_2529BC158()
{
  result = qword_27F540F78;
  if (!qword_27F540F78)
  {
    result = swift_getWitnessTable(byte_252E3F82C, &type metadata for TriggerEventType.Identifiers, v0, v1);
    atomic_store(result, &qword_27F540F78);
  }

  return result;
}

uint64_t sub_2529BC1C0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 400) = a4;
  *(v5 + 168) = a3;
  *(v5 + 176) = v4;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F88, &unk_252E3F940);
  *(v5 + 184) = v7;
  *(v5 + 192) = *(v7 - 8);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F90, &qword_252E59480);
  *(v5 + 224) = v8;
  *(v5 + 232) = *(v8 - 8);
  *(v5 + 240) = swift_task_alloc();
  v9 = sub_252E32E04();
  *(v5 + 248) = v9;
  *(v5 + 256) = *(v9 - 8);
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F98, &qword_252E3F950);
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  v10 = sub_252E365E4();
  *(v5 + 296) = v10;
  *(v5 + 304) = *(v10 - 8);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  v11 = sub_252E36AB4();
  *(v5 + 328) = v11;
  *(v5 + 336) = *(v11 - 8);
  *(v5 + 344) = swift_task_alloc();
  v12 = a1[1];
  *(v5 + 16) = *a1;
  *(v5 + 32) = v12;
  *(v5 + 48) = a1[2];

  return MEMORY[0x2822009F8](sub_2529BC490, 0, 0);
}

uint64_t sub_2529BC490()
{
  if (qword_27F53F580 != -1)
  {
    swift_once();
  }

  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[19];
  v5 = qword_27F544F08;
  v0[44] = qword_27F544F08;
  v6 = v5;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  sub_2529C1384();
  sub_252E36644();
  sub_252E36644();
  sub_252E365D4();
  (*(v3 + 8))(v1, v2);
  sub_252E34074();
  swift_allocObject();
  v0[45] = sub_252E34064();
  v0[12] = MEMORY[0x277D84F90];
  v0[13] = 0;
  v7 = COERCE_DOUBLE(sub_2529C0CA8(v4, sub_2529C1384, &type metadata for HomeIntentProducer.GetAttributeValueIntent));
  if (v8)
  {
    v9 = 7.5;
  }

  else
  {
    v9 = v7 + 0.5;
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v11 = v0[32];
  v10 = v0[33];
  v12 = v0[31];
  v13 = sub_252E36AD4();
  v0[46] = __swift_project_value_buffer(v13, qword_27F544C70);
  sub_252E379F4();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E6F300);
  sub_252E37374();
  sub_252CC3D90(v0[8], v0[9], 0xD000000000000088, 0x8000000252E6F320);

  v15 = sub_252DB7C84(v14)[5];

  sub_252E32DF4();
  sub_252E32D44();
  v17 = v16;
  v18 = (*(v11 + 8))(v10, v12);
  v22.n128_f64[0] = v17 * 1000.0;
  if (COERCE__INT64(fabs(v17 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v22.n128_f64[0] <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v22.n128_f64[0] >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x2821C8618](v18, v19, v20, v21, v22);
  }

  v23 = v0[22];
  v24 = v0[19];
  *(v15 + 16) = v22.n128_f64[0];

  v25 = swift_allocObject();
  v0[47] = v25;
  *(v25 + 16) = v23;
  v27 = *v24;
  v26 = v24[1];
  *(v25 + 56) = v24[2];
  *(v25 + 24) = v27;
  *(v25 + 40) = v26;

  v28 = swift_task_alloc();
  v0[48] = v28;
  *v28 = v0;
  v28[1] = sub_2529BC8D8;
  v18 = v0[30];
  v21 = v0[28];
  v19 = &unk_252E3F960;
  v22.n128_f64[0] = v9;
  v20 = v25;

  return MEMORY[0x2821C8618](v18, v19, v20, v21, v22);
}

uint64_t sub_2529BC8D8()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_2529BCF64;
  }

  else
  {

    v2 = sub_2529BC9F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_2529BC9F4()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  sub_252E365F4();
  sub_252E366E4();
  v4 = *(v3 + 8);
  v4(v1, v2);
  v5 = *(v0 + 120);
  if (v5)
  {
    v38 = 0;
    *(v0 + 96) = v5;
  }

  else
  {
    v6 = *(v0 + 200);
    v7 = *(v0 + 184);
    sub_252E365F4();
    sub_252E366E4();
    v4(v6, v7);
    if (*(v0 + 128) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540FB0, &qword_252E3F978), type metadata accessor for SceneResult(0), (swift_dynamicCast() & 1) != 0))
    {
      v38 = *(v0 + 144);
      *(v0 + 104) = v38;
    }

    else
    {
      v38 = 0;
    }

    v5 = MEMORY[0x277D84F90];
  }

  v37 = v5;
  v8 = *(v0 + 280);
  v9 = *(v0 + 288);
  v10 = *(v0 + 208);
  v11 = *(v0 + 184);
  v35 = *(v0 + 400);
  v33 = *(v0 + 168);
  v30 = *(v0 + 160);
  sub_252E365F4();
  sub_252E366D4();
  v4(v10, v11);
  sub_252E365F4();
  sub_252E366C4();
  v4(v10, v11);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E6F400);
  v12 = type metadata accessor for DeviceResult(0);
  v13 = MEMORY[0x2530AD730](v37, v12);
  MEMORY[0x2530AD570](v13);

  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E6F440);
  *(v0 + 136) = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540FA8, &qword_252E3F970);
  v14 = sub_252E36F94();
  MEMORY[0x2530AD570](v14);

  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E6F460);
  sub_2529C1490(v9, v8);
  v15 = sub_252E36F94();
  MEMORY[0x2530AD570](v15);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000088, 0x8000000252E6F320);

  v16 = v30;
  v17 = sub_252B26B48((v0 + 96), (v0 + 104), v16, v33, v35 & 1);
  sub_252DB7C84(v17);

  v18 = sub_252DB5924();

  result = sub_252B21010(v16);
  v20 = result;
  if (!result)
  {
    goto LABEL_12;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (HIDWORD(v18))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  result = [result setCommandDuration_];
LABEL_12:
  v34 = *(v0 + 360);
  v36 = v17;
  v31 = *(v0 + 352);
  v32 = *(v0 + 344);
  v21 = *(v0 + 288);
  v22 = *(v0 + 232);
  v23 = *(v0 + 240);
  v24 = *(v0 + 224);
  v25 = *(v0 + 160);
  sub_252DB7C84(result);
  sub_252DB7138(v20);

  sub_252DB7C84(v26);
  sub_252DB649C(0, 0, 1);

  (*(v22 + 8))(v23, v24);
  sub_25293847C(v21, &qword_27F540F98, &qword_252E3F950);

  v27 = sub_252E375C4();
  v29 = 2;
  sub_252E36A74(v27, &dword_252917000, v31, "performAppIntent", 16, 2, v32, " enableTelemetry=YES ", 21, v29, MEMORY[0x277D84F90]);
  if (v34)
  {
    sub_252E34054();
  }

  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));

  v28 = *(v0 + 8);

  return v28(v36);
}

id sub_2529BCF64()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];

  v4 = sub_252E375C4();
  v14 = 2;
  sub_252E36A74(v4, &dword_252917000, v1, "performAppIntent", 16, 2, v3, " enableTelemetry=YES ", 21, v14, MEMORY[0x277D84F90]);
  if (v2)
  {
    sub_252E34054();
  }

  v5 = v0[49];
  v6 = v0[20];
  (*(v0[42] + 8))(v0[43], v0[41]);
  sub_252E379F4();
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E6F3B0);
  v0[14] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(v0[10], v0[11], 0xD000000000000088, 0x8000000252E6F320, 0xD00000000000002ELL, 0x8000000252E6F3D0, 119);

  v7 = sub_2529B83C8(v5, v6);
  sub_252DB7C84(v7);

  v8 = sub_252DB5924();

  result = sub_252B21010(v6);
  v10 = result;
  if (!result)
  {
    goto LABEL_7;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v8))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  result = [result setCommandDuration_];
LABEL_7:
  v11 = v0[49];
  sub_252DB7C84(result);
  sub_252DB7138(v10);

  sub_252DB7C84(v12);
  sub_252DB649C(0, 0, 1);

  v13 = v0[1];

  return v13(v7);
}

uint64_t sub_2529BD264(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 400) = a4;
  *(v5 + 168) = a3;
  *(v5 + 176) = v4;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F88, &unk_252E3F940);
  *(v5 + 184) = v7;
  *(v5 + 192) = *(v7 - 8);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F90, &qword_252E59480);
  *(v5 + 224) = v8;
  *(v5 + 232) = *(v8 - 8);
  *(v5 + 240) = swift_task_alloc();
  v9 = sub_252E32E04();
  *(v5 + 248) = v9;
  *(v5 + 256) = *(v9 - 8);
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F98, &qword_252E3F950);
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  v10 = sub_252E365E4();
  *(v5 + 296) = v10;
  *(v5 + 304) = *(v10 - 8);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  v11 = sub_252E36AB4();
  *(v5 + 328) = v11;
  *(v5 + 336) = *(v11 - 8);
  *(v5 + 344) = swift_task_alloc();
  v12 = a1[1];
  *(v5 + 16) = *a1;
  *(v5 + 32) = v12;
  *(v5 + 48) = a1[2];

  return MEMORY[0x2822009F8](sub_2529BD534, 0, 0);
}

uint64_t sub_2529BD534()
{
  if (qword_27F53F580 != -1)
  {
    swift_once();
  }

  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[19];
  v5 = qword_27F544F08;
  v0[44] = qword_27F544F08;
  v6 = v5;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  sub_2529C15DC();
  sub_252E36644();
  sub_252E36644();
  sub_252E365D4();
  (*(v3 + 8))(v1, v2);
  sub_252E34074();
  swift_allocObject();
  v0[45] = sub_252E34064();
  v0[12] = MEMORY[0x277D84F90];
  v0[13] = 0;
  v7 = COERCE_DOUBLE(sub_2529C0CA8(v4, sub_2529C15DC, &type metadata for HomeIntentProducer.SetAttributeValueIntent));
  if (v8)
  {
    v9 = 7.5;
  }

  else
  {
    v9 = v7 + 0.5;
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v11 = v0[32];
  v10 = v0[33];
  v12 = v0[31];
  v13 = sub_252E36AD4();
  v0[46] = __swift_project_value_buffer(v13, qword_27F544C70);
  sub_252E379F4();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E6F300);
  sub_252E37374();
  sub_252CC3D90(v0[8], v0[9], 0xD000000000000088, 0x8000000252E6F320);

  v15 = sub_252DB7C84(v14)[5];

  sub_252E32DF4();
  sub_252E32D44();
  v17 = v16;
  v18 = (*(v11 + 8))(v10, v12);
  v22.n128_f64[0] = v17 * 1000.0;
  if (COERCE__INT64(fabs(v17 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v22.n128_f64[0] <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v22.n128_f64[0] >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x2821C8618](v18, v19, v20, v21, v22);
  }

  v23 = v0[22];
  v24 = v0[19];
  *(v15 + 16) = v22.n128_f64[0];

  v25 = swift_allocObject();
  v0[47] = v25;
  *(v25 + 16) = v23;
  v27 = *v24;
  v26 = v24[1];
  *(v25 + 56) = v24[2];
  *(v25 + 24) = v27;
  *(v25 + 40) = v26;

  v28 = swift_task_alloc();
  v0[48] = v28;
  *v28 = v0;
  v28[1] = sub_2529BD97C;
  v18 = v0[30];
  v21 = v0[28];
  v19 = &unk_252E3F9B0;
  v22.n128_f64[0] = v9;
  v20 = v25;

  return MEMORY[0x2821C8618](v18, v19, v20, v21, v22);
}

uint64_t sub_2529BD97C()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_2529C1760;
  }

  else
  {

    v2 = sub_2529C1754;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2529BDA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v8 = sub_252E36AD4();
  v7[56] = v8;
  v7[57] = *(v8 - 8);
  v7[58] = swift_task_alloc();
  v9 = sub_252E32E84();
  v7[59] = v9;
  v7[60] = *(v9 - 8);
  v7[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529BDBB8, 0, 0);
}

char *sub_2529BDBB8()
{
  v242 = v0;
  v3 = type metadata accessor for HomeStore(0);
  v4 = static HomeStore.shared.getter(v3);
  v5 = sub_2529F219C();
  v7 = v6;

  v237 = v0;
  if (v7)
  {
LABEL_2:
    sub_2529C1374(v5, v7 & 1, MEMORY[0x277D85008]);
    goto LABEL_6;
  }

  if (v5)
  {
    v9 = *&v5[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate];

    v10 = [v9 home];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for Home(0);
      swift_allocObject();
      v12 = sub_2529E65BC(v11);
      v13 = MEMORY[0x277D85008];
      sub_2529C1374(v5, 0, MEMORY[0x277D85008]);
      sub_2529C1374(v5, 0, v13);
      v2 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v1 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      goto LABEL_13;
    }

    sub_2529C1374(v5, 0, MEMORY[0x277D85008]);
    goto LABEL_2;
  }

LABEL_6:
  v14 = static HomeStore.shared.getter(v8);
  v15 = v14[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v15 != 2 && (v15 & 1) == 0 || (v16 = [*(v0 + 416) filters]) == 0)
  {

    goto LABEL_12;
  }

  v17 = v16;
  v18 = *(v0 + 416);
  type metadata accessor for HomeFilter();
  v19 = sub_252E37264();

  v20 = [v18 userTask];
  v21 = HomeStore.accessories(matching:supporting:)(v19, v20);
  v23 = v22;

  if (v23)
  {
    sub_2529C1374(v21, 1, MEMORY[0x277D84FB8]);
    goto LABEL_12;
  }

  v239 = MEMORY[0x277D84F90];
  v26 = v21 & 0xFFFFFFFFFFFFFF8;
  if (v21 >> 62)
  {
    v25 = sub_252E378C4();
    if (v25)
    {
      goto LABEL_26;
    }

LABEL_140:
    v41 = MEMORY[0x277D84F90];
    goto LABEL_141;
  }

  v25 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_140;
  }

LABEL_26:
  v0 = 0;
  v221 = (*(v237 + 480) + 32);
  v41 = MEMORY[0x277D84F90];
  v234 = v25;
  do
  {
    v222 = v41;
    v1 = v0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x2530ADF00](v1, v21);
        v0 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_129;
        }
      }

      else
      {
        if (v1 >= *(v26 + 16))
        {
          goto LABEL_130;
        }

        v2 = *(v21 + 8 * v1 + 32);

        v0 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }
      }

      v42 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);
      type metadata accessor for MatterAccessory(0);
      v43 = swift_allocObject();
      v44 = v42;
      v45 = [v44 matterNodeID];
      if (v45)
      {
        v46 = v45;
        v47 = [v45 unsignedLongLongValue];

        *(v43 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = v47;
        if (v47)
        {
          goto LABEL_38;
        }
      }

      else
      {
        *(v43 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = 0;
      }

      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v237 + 448), qword_27F544CB8);
      sub_252E379F4();

      v240 = 0xD000000000000018;
      v241 = 0x8000000252E6DF00;
      v48 = [v44 name];
      v49 = sub_252E36F34();
      v51 = v50;

      MEMORY[0x2530AD570](v49, v51);

      MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6DF20);
      sub_252CC4050(0xD000000000000018, 0x8000000252E6DF00, 0xD000000000000075, 0x8000000252E6B7C0, 0x293A5F2874696E69, 0xE800000000000000, 19);

      v26 = v21 & 0xFFFFFFFFFFFFFF8;
      v25 = v234;
LABEL_38:
      v52 = [*(sub_252D4CE7C(v44) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
      if (v52)
      {
        break;
      }

      ++v1;
      if (v0 == v25)
      {
        v41 = v222;
        goto LABEL_141;
      }
    }

    v53 = v52;
    type metadata accessor for Home(0);
    v1 = swift_allocObject();
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v53;
    v54 = v53;
    v55 = [v54 uniqueIdentifier];
    sub_252E32E64();

    v56 = [v54 name];
    v57 = sub_252E36F34();
    v223 = v58;

    v59 = [v54 assistantIdentifier];
    if (v59)
    {
      v60 = v59;
      v61 = sub_252E36F34();
      v63 = v62;
    }

    else
    {

      v61 = 0;
      v63 = 0;
    }

    v64 = (*v221)(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, *(v237 + 488), *(v237 + 472));
    v65 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    *v65 = v57;
    v65[1] = v223;
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
    v66 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    *v66 = v61;
    v66[1] = v63;
    MEMORY[0x2530AD700](v64);
    v26 = v21 & 0xFFFFFFFFFFFFFF8;
    v25 = v234;
    if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
      v25 = v234;
    }

    sub_252E372D4();
    v41 = v239;
  }

  while (v0 != v25);
LABEL_141:
  sub_2529C1374(v21, 0, MEMORY[0x277D84FB8]);
  v218 = sub_252DF956C(v41);

  if (v218 >> 62)
  {
    if (v218 < 0)
    {
      v21 = v218;
    }

    else
    {
      v21 = v218 & 0xFFFFFFFFFFFFFF8;
    }

    v0 = v237;
    if (sub_252E378C4() != 1 || !sub_252E378C4())
    {
      goto LABEL_151;
    }

LABEL_143:
    if ((v218 & 0xC000000000000001) != 0)
    {
      v220 = MEMORY[0x2530ADF00](0, v218);

      v2 = *(v220 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v1 = *(v220 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      v0 = v237;
      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v219 = *(v218 + 32);

      v2 = *(v219 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v1 = *(v219 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      v0 = v237;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_154;
  }

  v0 = v237;
  if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    goto LABEL_143;
  }

LABEL_151:

LABEL_12:
  v2 = 0;
  v1 = 0;
LABEL_13:
  v24 = sub_252C42B30(*(v0 + 416));
  if (!v24)
  {
    goto LABEL_133;
  }

  v25 = v24;
  v26 = v24 >> 62;
  if (v24 >> 62)
  {
LABEL_131:
    if (!sub_252E378C4())
    {
      goto LABEL_132;
    }

LABEL_16:
    v27 = [*(v0 + 416) userTask];
    *(v0 + 496) = v27;
    if (!v27)
    {

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v68 = *(v0 + 456);
      v67 = *(v0 + 464);
      v69 = v0;
      v70 = *(v0 + 448);
      v71 = *(v69 + 416);
      v72 = __swift_project_value_buffer(v70, qword_27F544C70);
      (*(v68 + 16))(v67, v72, v70);
      sub_252E379F4();

      v240 = 0xD000000000000030;
      v241 = 0x8000000252E6F220;
      v73 = [v71 userTask];
      v74 = v73;
      if (v73)
      {
        v75 = [v73 taskType];
      }

      else
      {
        v75 = 0;
      }

      v89 = *(v237 + 456);
      v88 = *(v237 + 464);
      v90 = *(v237 + 448);
      v91 = *(v237 + 424);
      *(v237 + 304) = v75;
      *(v237 + 312) = v74 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F80, &unk_252E4E1F0);
      v92 = sub_252E36F94();
      MEMORY[0x2530AD570](v92);

      sub_252CC3D90(v240, v241, 0xD00000000000008BLL, 0x8000000252E6F160);

      (*(v89 + 8))(v88, v90);
      type metadata accessor for ControlHomeIntentResponse.Builder();
      v93 = swift_allocObject();
      v94 = MEMORY[0x277D84F90];
      *(v93 + 16) = 5;
      *(v93 + 24) = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      type metadata accessor for HomeEntity.Builder();
      swift_allocObject();
      v96.n128_f64[0] = HomeEntity.Builder.init()();
      v98 = (*(*v97 + 448))(v96);

      v99 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
      v100 = v98;
      v101 = sub_252E36F04();
      v102 = [v99 initWithIdentifier:0 displayString:v101];

      v103 = v102;
      [v103 setEntity_];
      type metadata accessor for HomeUserTaskResponse();
      v104 = sub_252E37254();
      [v103 setTaskResponses_];

      *(inited + 32) = v103;
      v105 = sub_25297D0C0(inited);

      swift_setDeallocating();
      v106 = sub_25293847C(inited + 32, &qword_27F540CC8, &unk_252E3F8F0);
      v107 = (*(*v105 + 176))(v106);

      v91(v107);

      v0 = v237;
      goto LABEL_136;
    }

    v28 = v27;
    v29 = [v27 taskType];
    if (v29 == 1)
    {
      v76 = sub_252A1EEEC();
      if (v76)
      {
        v77 = v76;
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v78 = *(v0 + 448);
        v79 = *(v0 + 416);
        __swift_project_value_buffer(v78, qword_27F544C70);

        v80 = v79;

        v81 = sub_252E36AC4();
        v82 = sub_252E374C4();

        if (os_log_type_enabled(v81, v82))
        {
          v229 = v82;
          loga = v81;
          v83 = swift_slowAlloc();
          v225 = swift_slowAlloc();
          v239 = v225;
          *v83 = 136316162;
          v233 = v77;
          v84 = MEMORY[0x2530AD730](v77, &type metadata for Attribute);
          v86 = sub_252BE2CE0(v84, v85, &v239);

          *(v83 + 4) = v86;
          v227 = v83;
          *(v83 + 12) = 2080;
          if (v26)
          {
            v87 = sub_252E378C4();
          }

          else
          {
            v87 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v127 = v237;
          v138 = MEMORY[0x277D84F90];
          v236 = v2;
          if (v87)
          {
            v240 = MEMORY[0x277D84F90];
            result = sub_2529AA3A0(0, v87 & ~(v87 >> 63), 0);
            if (v87 < 0)
            {
              goto LABEL_156;
            }

            v139 = 0;
            v140 = v240;
            do
            {
              if ((v25 & 0xC000000000000001) != 0)
              {
                MEMORY[0x2530ADF00](v139, v25);
              }

              else
              {
              }

              v141 = sub_252A96AFC();
              v143 = v142;

              v240 = v140;
              v145 = *(v140 + 16);
              v144 = *(v140 + 24);
              if (v145 >= v144 >> 1)
              {
                sub_2529AA3A0((v144 > 1), v145 + 1, 1);
                v140 = v240;
              }

              ++v139;
              *(v140 + 16) = v145 + 1;
              v146 = v140 + 16 * v145;
              *(v146 + 32) = v141;
              *(v146 + 40) = v143;
            }

            while (v87 != v139);
            v127 = v237;
            v138 = MEMORY[0x277D84F90];
          }

          else
          {
            v140 = MEMORY[0x277D84F90];
          }

          v175 = MEMORY[0x2530AD730](v140, MEMORY[0x277D837D0]);
          v177 = v176;

          v178 = sub_252BE2CE0(v175, v177, &v239);

          *(v227 + 14) = v178;
          *(v227 + 22) = 2080;
          v2 = v236;
          if (v1)
          {
            v179 = v236;
          }

          else
          {
            v179 = 0;
          }

          if (v1)
          {
            v180 = v1;
          }

          else
          {
            v180 = 0xE000000000000000;
          }

          v181 = sub_252BE2CE0(v179, v180, &v239);

          *(v227 + 24) = v181;
          *(v227 + 32) = 2080;
          v182 = ControlHomeIntent.roomNames()();
          if (v182)
          {
            v183 = v182;
          }

          else
          {
            v183 = v138;
          }

          v184 = MEMORY[0x2530AD730](v183, MEMORY[0x277D837D0]);
          v186 = v185;

          v187 = sub_252BE2CE0(v184, v186, &v239);

          *(v227 + 34) = v187;
          *(v227 + 42) = 2080;
          v188 = sub_252C4D390();
          if (v188)
          {
            v189 = v188;
          }

          else
          {
            v189 = v138;
          }

          v190 = MEMORY[0x2530AD730](v189, MEMORY[0x277D837D0]);
          v192 = v191;

          v193 = sub_252BE2CE0(v190, v192, &v239);

          *(v227 + 44) = v193;
          _os_log_impl(&dword_252917000, loga, v229, "Performing SetAttributeValueIntent with:\n   - attributeValues: %s\n   - deviceEntities %s\n   - homeEntity: %s\n   - roomEntities: %s\n   - zoneEntities: %s", v227, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x2530AED00](v225, -1, -1);
          MEMORY[0x2530AED00](v227, -1, -1);

          v77 = v233;
        }

        else
        {

          v127 = v237;
        }

        *(v127 + 352) = v77;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD8, &unk_252E3F900);
        swift_allocObject();
        v194 = sub_252E36754();
        *(v127 + 568) = v194;
        *(v127 + 360) = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE0, &unk_252E3E550);
        swift_allocObject();
        v195 = sub_252E36754();
        *(v127 + 576) = v195;
        *(v127 + 272) = v2;
        *(v127 + 280) = v1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE8, &unk_252E3F910);
        swift_allocObject();
        v196 = sub_252E36754();
        *(v127 + 584) = v196;
        *(v127 + 368) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CF0, &unk_252E3E560);
        swift_allocObject();
        v197 = sub_252E36754();
        *(v127 + 592) = v197;
        *(v127 + 376) = 0;
        swift_allocObject();
        v198 = sub_252E36754();
        *(v127 + 600) = v198;
        *(v127 + 320) = 0x401C000000000000;
        *(v127 + 328) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CF8, &qword_252E3F920);
        swift_allocObject();
        v199 = sub_252E36754();
        *(v127 + 608) = v199;
        *(v127 + 16) = v194;
        *(v127 + 24) = v195;
        *(v127 + 32) = v196;
        *(v127 + 40) = v197;
        *(v127 + 48) = v198;
        *(v127 + 56) = v199;
        v238 = sub_2529BD264;
        v200 = swift_task_alloc();
        *(v127 + 616) = v200;
        *v200 = v127;
        v200[1] = sub_2529BFBD8;
        v173 = *(v127 + 416);
        v174 = (v127 + 16);
        goto LABEL_126;
      }

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v108 = *(v0 + 424);
      __swift_project_value_buffer(*(v0 + 448), qword_27F544C70);
      sub_252CC4050(0xD000000000000038, 0x8000000252E6F260, 0xD00000000000008BLL, 0x8000000252E6F160, 0xD000000000000021, 0x8000000252E68B10, 87);
      type metadata accessor for ControlHomeIntentResponse.Builder();
      v111 = swift_allocObject();
      v112 = MEMORY[0x277D84F90];
      *(v111 + 16) = 5;
      *(v111 + 24) = v112;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
    }

    else
    {
      if (v29 != 4)
      {

        goto LABEL_136;
      }

      v30 = sub_252A1F47C();
      if (v30)
      {
        v21 = v30;
        if (qword_27F53F498 == -1)
        {
LABEL_21:
          v31 = *(v0 + 448);
          v32 = *(v0 + 416);
          __swift_project_value_buffer(v31, qword_27F544C70);

          v33 = v32;

          v34 = sub_252E36AC4();
          v35 = sub_252E374C4();

          if (!os_log_type_enabled(v34, v35))
          {

            v126 = v237;
LABEL_110:
            *(v126 + 384) = v21;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540D00, &unk_252E3E580);
            swift_allocObject();
            v166 = sub_252E36754();
            *(v126 + 504) = v166;
            *(v126 + 392) = v25;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE0, &unk_252E3E550);
            swift_allocObject();
            v167 = sub_252E36754();
            *(v126 + 512) = v167;
            *(v126 + 288) = v2;
            *(v126 + 296) = v1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE8, &unk_252E3F910);
            swift_allocObject();
            v168 = sub_252E36754();
            *(v126 + 520) = v168;
            *(v126 + 400) = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CF0, &unk_252E3E560);
            swift_allocObject();
            v169 = sub_252E36754();
            *(v126 + 528) = v169;
            *(v126 + 408) = 0;
            swift_allocObject();
            v170 = sub_252E36754();
            *(v126 + 536) = v170;
            *(v126 + 336) = 0x401C000000000000;
            *(v126 + 344) = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CF8, &qword_252E3F920);
            swift_allocObject();
            v171 = sub_252E36754();
            *(v126 + 544) = v171;
            *(v126 + 64) = v166;
            *(v126 + 72) = v167;
            *(v126 + 80) = v168;
            *(v126 + 88) = v169;
            *(v126 + 96) = v170;
            *(v126 + 104) = v171;
            v238 = sub_2529BC1C0;
            v172 = swift_task_alloc();
            *(v126 + 552) = v172;
            *v172 = v126;
            v172[1] = sub_2529BF988;
            v173 = *(v126 + 416);
            v174 = (v126 + 64);
LABEL_126:

            return v238(v174, v173, 0, 1);
          }

          v228 = v35;
          log = v34;
          v36 = swift_slowAlloc();
          v224 = swift_slowAlloc();
          v239 = v224;
          *v36 = 136316162;
          v232 = v21;
          v37 = MEMORY[0x2530AD730](v21, &type metadata for AttributeKind);
          v39 = sub_252BE2CE0(v37, v38, &v239);

          *(v36 + 4) = v39;
          v226 = v36;
          *(v36 + 12) = 2080;
          if (v26)
          {
            v40 = sub_252E378C4();
          }

          else
          {
            v40 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v126 = v237;
          v128 = MEMORY[0x277D84F90];
          v235 = v2;
          if (!v40)
          {
            v131 = MEMORY[0x277D84F90];
LABEL_97:
            v147 = MEMORY[0x2530AD730](v131, MEMORY[0x277D837D0]);
            v149 = v148;

            v150 = sub_252BE2CE0(v147, v149, &v239);

            *(v226 + 14) = v150;
            *(v226 + 22) = 2080;
            v2 = v235;
            if (v1)
            {
              v151 = v235;
            }

            else
            {
              v151 = 0;
            }

            if (v1)
            {
              v152 = v1;
            }

            else
            {
              v152 = 0xE000000000000000;
            }

            v153 = sub_252BE2CE0(v151, v152, &v239);

            *(v226 + 24) = v153;
            *(v226 + 32) = 2080;
            v154 = ControlHomeIntent.roomNames()();
            if (v154)
            {
              v155 = v154;
            }

            else
            {
              v155 = v128;
            }

            v156 = MEMORY[0x2530AD730](v155, MEMORY[0x277D837D0]);
            v158 = v157;

            v159 = sub_252BE2CE0(v156, v158, &v239);

            *(v226 + 34) = v159;
            *(v226 + 42) = 2080;
            v160 = sub_252C4D390();
            if (v160)
            {
              v161 = v160;
            }

            else
            {
              v161 = v128;
            }

            v162 = MEMORY[0x2530AD730](v161, MEMORY[0x277D837D0]);
            v164 = v163;

            v165 = sub_252BE2CE0(v162, v164, &v239);

            *(v226 + 44) = v165;
            _os_log_impl(&dword_252917000, log, v228, "Performing GetAttributeValueIntent with:\n   - attributeTypes: %s\n   - deviceEntities %s\n   - homeEntity: %s\n   - roomEntities: %s\n   - zoneEntities: %s", v226, 0x34u);
            swift_arrayDestroy();
            MEMORY[0x2530AED00](v224, -1, -1);
            MEMORY[0x2530AED00](v226, -1, -1);

            v21 = v232;
            goto LABEL_110;
          }

          v240 = MEMORY[0x277D84F90];
          result = sub_2529AA3A0(0, v40 & ~(v40 >> 63), 0);
          if ((v40 & 0x8000000000000000) == 0)
          {
            v130 = 0;
            v131 = v240;
            do
            {
              if ((v25 & 0xC000000000000001) != 0)
              {
                MEMORY[0x2530ADF00](v130, v25);
              }

              else
              {
              }

              v132 = sub_252A96AFC();
              v134 = v133;

              v240 = v131;
              v136 = *(v131 + 16);
              v135 = *(v131 + 24);
              if (v136 >= v135 >> 1)
              {
                sub_2529AA3A0((v135 > 1), v136 + 1, 1);
                v131 = v240;
              }

              ++v130;
              *(v131 + 16) = v136 + 1;
              v137 = v131 + 16 * v136;
              *(v137 + 32) = v132;
              *(v137 + 40) = v134;
            }

            while (v40 != v130);
            v126 = v237;
            v128 = MEMORY[0x277D84F90];
            goto LABEL_97;
          }

          __break(1u);
LABEL_156:
          __break(1u);
          return result;
        }

LABEL_154:
        swift_once();
        goto LABEL_21;
      }

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v108 = *(v0 + 424);
      __swift_project_value_buffer(*(v0 + 448), qword_27F544C70);
      sub_252CC4050(0xD00000000000003ELL, 0x8000000252E6F2A0, 0xD00000000000008BLL, 0x8000000252E6F160, 0xD000000000000021, 0x8000000252E68B10, 61);
      type metadata accessor for ControlHomeIntentResponse.Builder();
      v109 = swift_allocObject();
      v110 = MEMORY[0x277D84F90];
      *(v109 + 16) = 5;
      *(v109 + 24) = v110;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
    }

    v113 = swift_initStackObject();
    *(v113 + 16) = xmmword_252E3C290;
    type metadata accessor for HomeEntity.Builder();
    swift_allocObject();
    v114.n128_f64[0] = HomeEntity.Builder.init()();
    v116 = (*(*v115 + 448))(v114);

    v117 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
    v118 = v116;
    v119 = sub_252E36F04();
    v120 = [v117 initWithIdentifier:0 displayString:v119];

    v121 = v120;
    [v121 setEntity_];
    type metadata accessor for HomeUserTaskResponse();
    v122 = sub_252E37254();
    [v121 setTaskResponses_];

    *(v113 + 32) = v121;
    v123 = sub_25297D0C0(v113);

    swift_setDeallocating();
    v124 = sub_25293847C(v113 + 32, &qword_27F540CC8, &unk_252E3F8F0);
    v125 = (*(*v123 + 176))(v124);

    v108(v125);

    v0 = v237;
    goto LABEL_136;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_132:

LABEL_133:

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v201 = *(v0 + 424);
  __swift_project_value_buffer(*(v0 + 448), qword_27F544C70);
  sub_252CC4050(0xD000000000000024, 0x8000000252E6F1F0, 0xD00000000000008BLL, 0x8000000252E6F160, 0xD000000000000021, 0x8000000252E68B10, 41);
  type metadata accessor for ControlHomeIntentResponse.Builder();
  v202 = swift_allocObject();
  v203 = MEMORY[0x277D84F90];
  *(v202 + 16) = 102;
  *(v202 + 24) = v203;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
  v204 = swift_initStackObject();
  *(v204 + 16) = xmmword_252E3C290;
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v205.n128_f64[0] = HomeEntity.Builder.init()();
  v207 = (*(*v206 + 448))(v205);

  v208 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
  v209 = v207;
  v210 = sub_252E36F04();
  v211 = [v208 initWithIdentifier:0 displayString:v210];

  v212 = v211;
  [v212 setEntity_];
  type metadata accessor for HomeUserTaskResponse();
  v213 = sub_252E37254();
  [v212 setTaskResponses_];

  *(v204 + 32) = v212;
  v214 = sub_25297D0C0(v204);

  swift_setDeallocating();
  v215 = sub_25293847C(v204 + 32, &qword_27F540CC8, &unk_252E3F8F0);
  v216 = (*(*v214 + 176))(v215);

  v201(v216);

  v0 = v237;
LABEL_136:

  v217 = *(v0 + 8);

  return v217();
}

uint64_t sub_2529BF988(uint64_t a1)
{
  *(*v1 + 560) = a1;

  return MEMORY[0x2822009F8](sub_2529BFB44, 0, 0);
}

uint64_t sub_2529BFB44()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 496);
  (*(v0 + 424))(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2529BFBD8(uint64_t a1)
{
  *(*v1 + 624) = a1;

  return MEMORY[0x2822009F8](sub_2529BFD94, 0, 0);
}

uint64_t sub_2529BFD94()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 496);
  (*(v0 + 424))(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2529BFE4C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544C70);
  sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E6F130, 0xD00000000000008BLL, 0x8000000252E6F160);
  v12 = sub_252E37344();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = v4;
  v14 = a1;

  sub_2529D89C4(0, 0, v10, &unk_252E3F8E0, v13);
}

uint64_t sub_2529C0024()
{
  type metadata accessor for RVCAppIntentHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_2529C0054()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540FC8, &qword_252E3F988);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540FD0, &qword_252E3F990);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_252E36894();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_252E36764();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_252E36624();
  return sub_252E36614();
}

uint64_t sub_2529C01D4(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 64) = a1;
  v5 = sub_252E36634();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  v6 = a3[1];
  *(v3 + 16) = *a3;
  *(v3 + 32) = v6;
  *(v3 + 48) = a3[2];

  return MEMORY[0x2822009F8](sub_2529C02A8, 0, 0);
}

uint64_t sub_2529C02A8(uint64_t a1)
{
  sub_252B680FC(a1);
  v2 = sub_252B6796C();
  v4 = v3;

  v1[12] = v2;
  ObjectType = swift_getObjectType();
  sub_2529C1384();
  sub_2529C1500();
  sub_2529C0054();
  sub_252E36404();
  swift_allocObject();
  v6 = sub_252E363F4();
  v1[13] = v6;
  v7 = swift_task_alloc();
  v1[14] = v7;
  *v7 = v1;
  v7[1] = sub_2529C040C;
  v8 = v1[11];
  v9 = v1[8];
  v10 = MEMORY[0x277CEAFA0];

  return MEMORY[0x28213DAA0](v9, v1 + 2, v8, v6, v10, ObjectType, &type metadata for HomeIntentProducer.GetAttributeValueIntent, v4);
}

uint64_t sub_2529C040C()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  swift_unknownObjectRelease();
  if (v0)
  {
    v5 = sub_2529C0620;
  }

  else
  {
    v5 = sub_2529C05BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529C05BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2529C0620()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2529C0684(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 64) = a1;
  v5 = sub_252E36634();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  v6 = a3[1];
  *(v3 + 16) = *a3;
  *(v3 + 32) = v6;
  *(v3 + 48) = a3[2];

  return MEMORY[0x2822009F8](sub_2529C0758, 0, 0);
}

uint64_t sub_2529C0758(uint64_t a1)
{
  sub_252B680FC(a1);
  v2 = sub_252B6796C();
  v4 = v3;

  v1[12] = v2;
  ObjectType = swift_getObjectType();
  sub_2529C15DC();
  sub_2529C1500();
  sub_2529C0054();
  sub_252E36404();
  swift_allocObject();
  v6 = sub_252E363F4();
  v1[13] = v6;
  v7 = swift_task_alloc();
  v1[14] = v7;
  *v7 = v1;
  v7[1] = sub_2529C08BC;
  v8 = v1[11];
  v9 = v1[8];
  v10 = MEMORY[0x277CEAFA0];

  return MEMORY[0x28213DAA0](v9, v1 + 2, v8, v6, v10, ObjectType, &type metadata for HomeIntentProducer.SetAttributeValueIntent, v4);
}

uint64_t sub_2529C08BC()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  swift_unknownObjectRelease();
  if (v0)
  {
    v5 = sub_2529C1750;
  }

  else
  {
    v5 = sub_2529C175C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529C0A6C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = a3[1];
  *(v3 + 16) = *a3;
  *(v3 + 32) = v6;
  *(v3 + 48) = a3[2];
  v7 = swift_task_alloc();
  *(v3 + 64) = v7;
  *v7 = v3;
  v7[1] = sub_252963EC4;

  return sub_2529C01D4(a1, a2, (v3 + 16));
}

uint64_t sub_2529C0B20(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = a3[1];
  *(v3 + 16) = *a3;
  *(v3 + 32) = v6;
  *(v3 + 48) = a3[2];
  v7 = swift_task_alloc();
  *(v3 + 64) = v7;
  *v7 = v3;
  v7[1] = sub_2529C1758;

  return sub_2529C0684(a1, a2, (v3 + 16));
}

uint64_t sub_2529C0BD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25293B808;

  return sub_2529BDA98(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2529C0CA8(__int128 *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v47 = sub_252E36AD4();
  v43 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E365E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540FD8, &unk_252E3F998);
  MEMORY[0x28223BE20](v10 - 8);
  v44 = &v43 - v11;
  v12 = sub_252E36724();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v45 = &v43 - v18;
  v19 = a1[1];
  v53 = *a1;
  v54 = v19;
  v20 = a1[2];
  v21 = v17;
  v55 = v20;
  a2();
  sub_252E36644();
  v22 = sub_252E365C4();
  (*(v7 + 8))(v9, v6);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = 0x74756F656D6974;
    v48 = v13 + 16;
    while (v24 < *(v22 + 16))
    {
      (*(v13 + 16))(v16, v22 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v24, v21);
      if (sub_252E36704() == v25 && v26 == 0xE700000000000000)
      {

LABEL_10:

        v29 = v44;
        (*(v13 + 32))(v44, v16, v21);
        v28 = 0;
        v23 = v47;
        goto LABEL_11;
      }

      v9 = v25;
      v27 = sub_252E37DB4();

      if (v27)
      {
        goto LABEL_10;
      }

      ++v24;
      (*(v13 + 8))(v16, v21);
      v25 = v9;
      if (v23 == v24)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_8:

  v28 = 1;
  v23 = v47;
  v29 = v44;
LABEL_11:
  v9 = 0xD000000000000088;
  (*(v13 + 56))(v29, v28, 1, v21);
  v30 = (*(v13 + 48))(v29, 1, v21);
  v31 = v45;
  if (v30 == 1)
  {
    sub_25293847C(v29, &qword_27F540FD8, &unk_252E3F998);
    if (qword_27F53F498 == -1)
    {
LABEL_13:
      __swift_project_value_buffer(v23, qword_27F544C70);
      sub_252CC3D90((v9 - 113), 0x8000000252E6F490, 0xD000000000000088, 0x8000000252E6F320);
      return 0;
    }

LABEL_26:
    swift_once();
    goto LABEL_13;
  }

  (*(v13 + 32))(v45, v29, v21);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v23, qword_27F544C70);
  v33 = v43;
  (*(v43 + 16))(v46, v32, v23);
  *&v49 = 0;
  *(&v49 + 1) = 0xE000000000000000;
  sub_252E379F4();

  v51 = 0xD00000000000001CLL;
  v52 = 0x8000000252E6F4B0;
  v34 = sub_252E36714();
  if (v34)
  {
    v35 = v34;
    v36 = [v34 value];

    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E80, &qword_252E3DFA0);
  v37 = sub_252E36F94();
  MEMORY[0x2530AD570](v37);

  v38 = v46;
  sub_252CC3D90(v51, v52, 0xD000000000000088, 0x8000000252E6F320);

  (*(v33 + 8))(v38, v23);
  v39 = sub_252E36714();
  if (!v39)
  {
    (*(v13 + 8))(v31, v21);
    return 0;
  }

  v40 = v39;
  v41 = [v39 value];

  sub_252E377F4();
  swift_unknownObjectRelease();
  (*(v13 + 8))(v31, v21);
  if (swift_dynamicCast())
  {
    return v51;
  }

  else
  {
    return 0;
  }
}

void sub_2529C1374(id a1, char a2, void (*a3)(id))
{
  if (a2)
  {
  }

  else
  {
    a3(a1);
  }
}

unint64_t sub_2529C1384()
{
  result = qword_27F540FA0;
  if (!qword_27F540FA0)
  {
    result = swift_getWitnessTable(byte_252E4EEC4, &type metadata for HomeIntentProducer.GetAttributeValueIntent, v0, v1);
    atomic_store(result, &qword_27F540FA0);
  }

  return result;
}

uint64_t sub_2529C13D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_2529C0A6C(a1, v4, (v1 + 24));
}

uint64_t sub_2529C1490(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F98, &qword_252E3F950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2529C1500()
{
  result = qword_27F540FB8;
  if (!qword_27F540FB8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540FB0, &qword_252E3F978);
    v4[0] = sub_2529C1584();
    result = swift_getWitnessTable(MEMORY[0x277CEB148], v3, v4);
    atomic_store(result, &qword_27F540FB8);
  }

  return result;
}

unint64_t sub_2529C1584()
{
  result = qword_27F540FC0;
  if (!qword_27F540FC0)
  {
    v3 = type metadata accessor for DeviceResult(255);
    result = swift_getWitnessTable(byte_252E54AAC, v3, v0, v1);
    atomic_store(result, &qword_27F540FC0);
  }

  return result;
}

unint64_t sub_2529C15DC()
{
  result = qword_27F540FE0;
  if (!qword_27F540FE0)
  {
    result = swift_getWitnessTable(aH0, &type metadata for HomeIntentProducer.SetAttributeValueIntent, v0, v1);
    atomic_store(result, &qword_27F540FE0);
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2529C1698(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_2529C0B20(a1, v4, (v1 + 24));
}

void sub_2529C1764(uint64_t a1)
{
  v1 = a1;
  v21 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for HomeEntityResponse();
    sub_2529C5FD4();
    sub_252E373E4();
    v1 = v16;
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

LABEL_7:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_252E37904() || (type metadata accessor for HomeEntityResponse(), swift_dynamicCast(), v13 = v15, v4 = v9, v5 = v10, !v15))
      {
LABEL_21:
        sub_25291AE30(v1);
        return;
      }

      goto LABEL_17;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_13:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_17:
    v14 = sub_252DA124C(0);

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      MEMORY[0x2530AD700]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      goto LABEL_7;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_2529C19A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[27] = a1;
  v4[28] = a2;
  v5 = sub_252E34014();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529C1AB4, 0, 0);
}

uint64_t sub_2529C1AB4()
{
  v168 = v0;
  v1 = v0;
  v167 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = v3[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v4 != 2 && (v4 & 1) == 0 || (v5 = [*(v0 + 224) filters]) == 0)
  {

    goto LABEL_7;
  }

  v6 = v5;
  v7 = *(v1 + 224);
  *(v1 + 296) = type metadata accessor for HomeFilter();
  v8 = sub_252E37264();

  v9 = [v7 userTask];
  v10 = HomeStore.accessories(matching:supporting:)(v8, v9);
  LOBYTE(v7) = v11;

  if (v7)
  {
    sub_252929F10(v10, 1);
LABEL_7:
    v12 = *(v1 + 232);
    v13 = *(v1 + 240);
    v14 = swift_allocObject();
    *(v1 + 424) = v14;
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;

    v15 = v12;
    if (!v12)
    {
      if (qword_27F53F4D0 != -1)
      {
        goto LABEL_199;
      }

      goto LABEL_12;
    }

    v16 = v13[6];
    v17 = v15;
    v18 = *__swift_project_boxed_opaque_existential_1(v13 + 3, v16);
    v19 = v17;
    v20 = swift_task_alloc();
    *(v1 + 432) = v20;
    *v20 = v1;
    v20[1] = sub_2529C3DEC;
    v21 = *(v1 + 232);

    return sub_252C10ACC(0, v18, v21);
  }

  v32 = (v10 & 0xFFFFFFFFFFFFFF8);
  v157 = v10;
  if (v10 >> 62)
  {
    v164 = sub_252E378C4();
  }

  else
  {
    v164 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v160 = v1;
  if (!v164)
  {
    v60 = MEMORY[0x277D84F90];
    *(v1 + 184) = MEMORY[0x277D84F90];
    sub_25297A744(v60);
    sub_25297A744(v60);
    goto LABEL_108;
  }

  v33 = 0;
  v162 = (v157 + 32);
  v163 = v157 & 0xC000000000000001;
  v34 = MEMORY[0x277D84F90];
  do
  {
    v14 = v33;
    while (v163)
    {
      v37 = MEMORY[0x2530ADF00](v14, v157);
      v33 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
      }

      v38 = *(v37 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      v36 = *(v37 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

      swift_unknownObjectRelease();
      if (v36)
      {
        goto LABEL_31;
      }

LABEL_25:
      v14 = v33;
      if (v33 == v164)
      {
        goto LABEL_36;
      }
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }

    if (v14 >= v32[2])
    {
      goto LABEL_188;
    }

    v33 = v14 + 1;
    v35 = (*&v162[8 * v14] + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    v36 = v35[1];
    if (!v36)
    {
      goto LABEL_25;
    }

    v38 = *v35;

LABEL_31:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_2529F7A80(0, *(v34 + 2) + 1, 1, v34);
    }

    v40 = *(v34 + 2);
    v39 = *(v34 + 3);
    v14 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v34 = sub_2529F7A80((v39 > 1), v40 + 1, 1, v34);
    }

    *(v34 + 2) = v14;
    v41 = &v34[16 * v40];
    *(v41 + 4) = v38;
    *(v41 + 5) = v36;
  }

  while (v33 != v164);
LABEL_36:
  v42 = 0;
  *(v1 + 184) = v34;
  *&v166 = MEMORY[0x277D84F90];
  v161 = v32;
  while (2)
  {
    if (v163)
    {
      v44 = MEMORY[0x2530ADF00](v42, v157);
      v45 = __OFADD__(v42++, 1);
      if (v45)
      {
        goto LABEL_189;
      }
    }

    else
    {
      if (v42 >= v32[2])
      {
        goto LABEL_190;
      }

      v44 = *&v162[8 * v42];

      v45 = __OFADD__(v42++, 1);
      if (v45)
      {
        goto LABEL_189;
      }
    }

    v14 = *(v44 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
    if (v14 >> 62)
    {
      v46 = sub_252E378C4();
    }

    else
    {
      v46 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v165 = v44;
    if (!v46)
    {
      v43 = MEMORY[0x277D84F90];
      goto LABEL_38;
    }

    v47 = 0;
    v48 = v14 & 0xC000000000000001;
    v49 = v14 & 0xFFFFFFFFFFFFFF8;
    v158 = v14;
    v50 = v14 + 32;
    v43 = MEMORY[0x277D84F90];
    while (2)
    {
      v14 = v47;
      while (!v48)
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
          goto LABEL_187;
        }

        if (v14 >= *(v49 + 16))
        {
          goto LABEL_182;
        }

        v47 = v14 + 1;
        v51 = (*(v50 + 8 * v14) + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        v52 = v51[1];
        if (v52)
        {
          v159 = *v51;

          goto LABEL_57;
        }

LABEL_51:
        v14 = v47;
        if (v47 == v46)
        {
          goto LABEL_38;
        }
      }

      v53 = MEMORY[0x2530ADF00](v14, v158);
      v47 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_204;
      }

      v54 = *(v53 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      v52 = *(v53 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
      v159 = v53;

      swift_unknownObjectRelease();
      if (!v52)
      {
        goto LABEL_51;
      }

      v159 = v54;
LABEL_57:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_2529F7A80(0, *(v43 + 2) + 1, 1, v43);
      }

      v56 = *(v43 + 2);
      v55 = *(v43 + 3);
      v14 = v56 + 1;
      v57 = v159;
      if (v56 >= v55 >> 1)
      {
        v59 = sub_2529F7A80((v55 > 1), v56 + 1, 1, v43);
        v57 = v159;
        v43 = v59;
      }

      *(v43 + 2) = v14;
      v58 = &v43[16 * v56];
      *(v58 + 4) = v57;
      *(v58 + 5) = v52;
      v1 = v160;
      if (v47 != v46)
      {
        continue;
      }

      break;
    }

LABEL_38:

    sub_25297A744(v43);
    v32 = v161;
    if (v42 != v164)
    {
      continue;
    }

    break;
  }

  sub_25297A744(v166);
  v61 = 0;
  v62 = MEMORY[0x277D84F90];
  do
  {
    if (v163)
    {
      v14 = MEMORY[0x2530ADF00](v61, v157);
      v63 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_191;
      }
    }

    else
    {
      if (v61 >= v32[2])
      {
        goto LABEL_192;
      }

      v14 = *(v157 + 8 * v61 + 32);

      v63 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_191;
      }
    }

    v64 = sub_252E32E24();
    v66 = v65;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_2529F7A80(0, *(v62 + 2) + 1, 1, v62);
    }

    v68 = *(v62 + 2);
    v67 = *(v62 + 3);
    v14 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      v62 = sub_2529F7A80((v67 > 1), v68 + 1, 1, v62);
    }

    *(v62 + 2) = v14;
    v69 = &v62[16 * v68];
    *(v69 + 4) = v64;
    *(v69 + 5) = v66;
    ++v61;
    v32 = v161;
  }

  while (v63 != v164);
  sub_25297A744(v62);
  v70 = 0;
  *&v166 = MEMORY[0x277D84F90];
  do
  {
    if (v163)
    {
      v71 = MEMORY[0x2530ADF00](v70, v157);
      v45 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v45)
      {
        goto LABEL_196;
      }
    }

    else
    {
      if (v70 >= v32[2])
      {
        goto LABEL_197;
      }

      v71 = *&v162[8 * v70];

      v45 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v45)
      {
        goto LABEL_196;
      }
    }

    v73 = *(v71 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
    if (v73 >> 62)
    {
      v74 = sub_252E378C4();
      v158 = v71;
      v159 = v72;
      if (v74)
      {
LABEL_89:
        v75 = 0;
        v165 = v73 & 0xC000000000000001;
        v1 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v165)
          {
            MEMORY[0x2530ADF00](v75, v73);
            v76 = v75 + 1;
            if (__OFADD__(v75, 1))
            {
              goto LABEL_183;
            }
          }

          else
          {
            if (v75 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_184;
            }

            v76 = v75 + 1;
            if (__OFADD__(v75, 1))
            {
              goto LABEL_183;
            }
          }

          v77 = sub_252E32E24();
          v14 = v78;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_2529F7A80(0, *(v1 + 16) + 1, 1, v1);
          }

          v80 = *(v1 + 16);
          v79 = *(v1 + 24);
          if (v80 >= v79 >> 1)
          {
            v1 = sub_2529F7A80((v79 > 1), v80 + 1, 1, v1);
          }

          *(v1 + 16) = v80 + 1;
          v81 = v1 + 16 * v80;
          *(v81 + 32) = v77;
          *(v81 + 40) = v14;
          ++v75;
          if (v76 == v74)
          {
            goto LABEL_83;
          }
        }
      }
    }

    else
    {
      v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v158 = v71;
      v159 = v72;
      if (v74)
      {
        goto LABEL_89;
      }
    }

    v1 = MEMORY[0x277D84F90];
LABEL_83:

    sub_25297A744(v1);
    v70 = v159;
    v1 = v160;
    v32 = v161;
  }

  while (v159 != v164);
  v60 = v166;
LABEL_108:
  sub_252929F10(v157, 0);
  sub_25297A744(v60);
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v82 = *(v1 + 232);
  v83 = sub_252E36AD4();
  v84 = __swift_project_value_buffer(v83, qword_27F544D18);
  sub_252E379F4();

  *&v166 = 0xD000000000000010;
  *(&v166 + 1) = 0x8000000252E6F520;
  *(v1 + 304) = *(v1 + 184);
  v85 = MEMORY[0x2530AD730]();
  MEMORY[0x2530AD570](v85);

  sub_252CC3D90(v166, *(&v166 + 1), 0xD00000000000009ALL, 0x8000000252E6F540);

  if (v82 && (v86 = [*(v1 + 232) entityResponses]) != 0)
  {
    v87 = v86;
    type metadata accessor for HomeEntityResponse();
    v88 = sub_252E37264();
  }

  else
  {
    v88 = MEMORY[0x277D84F90];
  }

  v89 = sub_252C75D10(v88);

  strcpy(&v166, "responseSet ");
  BYTE13(v166) = 0;
  HIWORD(v166) = -5120;
  type metadata accessor for HomeEntityResponse();
  sub_2529C5FD4();
  v90 = sub_252E373B4();
  MEMORY[0x2530AD570](v90);

  sub_252CC3D90(v166, *(&v166 + 1), 0xD00000000000009ALL, 0x8000000252E6F540);

  v92 = sub_2529C5650(v91, (v1 + 184));
  sub_2529C1764(v92);
  v165 = 0;
  v163 = v93;
  *(v1 + 312) = v93;
  v94 = sub_252E17400(v92, v89);

  v157 = v84;
  v164 = v82;
  if ((v94 & 0xC000000000000001) != 0)
  {
    v96 = MEMORY[0x277D84FA0];
    *&v166 = MEMORY[0x277D84FA0];
    sub_252E37874();
    v97 = sub_252E37904();
    if (!v97)
    {
LABEL_116:

      goto LABEL_176;
    }

    while (1)
    {
      while (1)
      {
        *(v1 + 208) = v97;
        swift_dynamicCast();
        v98 = [*(v1 + 200) taskResponses];
        if (v98)
        {
          break;
        }

LABEL_118:

        v97 = sub_252E37904();
        if (!v97)
        {
          goto LABEL_116;
        }
      }

      v99 = v98;
      type metadata accessor for HomeUserTaskResponse();
      v100 = sub_252E37264();

      v1 = v100 & 0xFFFFFFFFFFFFFF8;
      v101 = v100 >> 62 ? sub_252E378C4() : *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = 0;
      do
      {
        if (v101 == v14)
        {

          v1 = v160;
          goto LABEL_118;
        }

        if ((v100 & 0xC000000000000001) != 0)
        {
          v102 = MEMORY[0x2530ADF00](v14, v100);
        }

        else
        {
          if (v14 >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_186;
          }

          v102 = *(v100 + 8 * v14 + 32);
        }

        v103 = v102;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_185;
        }

        v104 = sub_2529C61E4();

        ++v14;
      }

      while ((v104 & 1) == 0);

      v1 = v160;
      v105 = *(v160 + 200);
      v106 = *(v96 + 16);
      if (*(v96 + 24) <= v106)
      {
        sub_252DAB4D0(v106 + 1);
        v96 = v166;
      }

      v107 = sub_252E37684();
      v108 = v96 + 56;
      v109 = -1 << *(v96 + 32);
      v110 = v107 & ~v109;
      v111 = v110 >> 6;
      if (((-1 << v110) & ~*(v96 + 56 + 8 * (v110 >> 6))) == 0)
      {
        break;
      }

      v112 = __clz(__rbit64((-1 << v110) & ~*(v96 + 56 + 8 * (v110 >> 6)))) | v110 & 0x7FFFFFFFFFFFFFC0;
LABEL_143:
      *(v108 + ((v112 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v112;
      *(*(v96 + 48) + 8 * v112) = v105;
      ++*(v96 + 16);
      v97 = sub_252E37904();
      if (!v97)
      {
        goto LABEL_116;
      }
    }

    v113 = 0;
    v114 = (63 - v109) >> 6;
    while (++v111 != v114 || (v113 & 1) == 0)
    {
      v115 = v111 == v114;
      if (v111 == v114)
      {
        v111 = 0;
      }

      v113 |= v115;
      v116 = *(v108 + 8 * v111);
      if (v116 != -1)
      {
        v112 = __clz(__rbit64(~v116)) + (v111 << 6);
        goto LABEL_143;
      }
    }

LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    swift_once();
    v13 = *(v1 + 240);
LABEL_12:
    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v24 = v13[12];
    v25 = v13[13];
    __swift_project_boxed_opaque_existential_1(v13 + 9, v24);
    sub_252AD7CC4();
    v26 = swift_task_alloc();
    *(v1 + 480) = v26;
    *v26 = v1;
    v26[1] = sub_2529C41E4;
    v27 = *(v1 + 272);
    v170 = v25;
    v28 = &unk_252E3FA30;
    v29 = v1 + 16;
    v30 = v14;
    v31 = v24;
LABEL_13:

    return sub_252BDB88C(v29, v28, v30, v27, 0, 0, 0, v31);
  }

  v117 = *(v94 + 32);
  v154 = ((1 << v117) + 63) >> 6;
  v156 = v94;
  if ((v117 & 0x3Fu) <= 0xD)
  {
LABEL_147:
    v153 = &v153;
    MEMORY[0x28223BE20](v95);
    v155 = &v153 - ((v118 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v155, v118);
    v159 = 0;
    v119 = 0;
    v120 = v94 + 56;
    v121 = 1 << *(v94 + 32);
    v122 = -1;
    if (v121 < 64)
    {
      v122 = ~(-1 << v121);
    }

    v123 = v122 & *(v94 + 56);
    v124 = (v121 + 63) >> 6;
    v14 = 0x279711000;
    while (v123)
    {
      v126 = __clz(__rbit64(v123));
      v123 &= v123 - 1;
LABEL_159:
      v129 = v126 | (v119 << 6);
      v125 = *(*(v94 + 48) + 8 * v129);
      v130 = [v125 *(v14 + 1760)];
      if (v130)
      {
        v131 = v130;
        v161 = v125;
        type metadata accessor for HomeUserTaskResponse();
        v132 = sub_252E37264();

        v162 = v123;
        v158 = v129;
        v1 = v132 & 0xFFFFFFFFFFFFFF8;
        if (v132 >> 62)
        {
          v133 = sub_252E378C4();
        }

        else
        {
          v133 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v14 = 0;
        do
        {
          if (v133 == v14)
          {

            v1 = v160;
            v125 = v161;
            v94 = v156;
            v14 = &off_279711000;
            v123 = v162;
            goto LABEL_151;
          }

          if ((v132 & 0xC000000000000001) != 0)
          {
            v134 = MEMORY[0x2530ADF00](v14, v132);
          }

          else
          {
            if (v14 >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_195;
            }

            v134 = *(v132 + 8 * v14 + 32);
          }

          v135 = v134;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_194;
          }

          v136 = sub_2529C61E4();

          ++v14;
        }

        while ((v136 & 1) == 0);

        v94 = v156;
        *&v155[(v158 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v158;
        v1 = v160;
        v45 = __OFADD__(v159++, 1);
        v14 = 0x279711000;
        v123 = v162;
        if (v45)
        {
          __break(1u);
          goto LABEL_201;
        }
      }

      else
      {
LABEL_151:
      }
    }

    v127 = v119;
    while (1)
    {
      v119 = v127 + 1;
      if (__OFADD__(v127, 1))
      {
        goto LABEL_198;
      }

      if (v119 >= v124)
      {
        v96 = sub_252C53CA8(v155, v154, v159, v94);
        goto LABEL_176;
      }

      v128 = *(v120 + 8 * v119);
      ++v127;
      if (v128)
      {
        v126 = __clz(__rbit64(v128));
        v123 = (v128 - 1) & v128;
        goto LABEL_159;
      }
    }
  }

LABEL_201:

  if (swift_stdlib_isStackAllocationSafe())
  {
    v94 = v156;

    v1 = v160;
    goto LABEL_147;
  }

LABEL_204:
  v151 = swift_slowAlloc();
  v152 = v165;
  v96 = sub_2529C55C0(v151, v154, v156, sub_2529C4FEC);

  result = MEMORY[0x2530AED00](v151, -1, -1);
  if (!v152)
  {
    v165 = 0;
    v1 = v160;
LABEL_176:
    v137 = *(v1 + 240);
    sub_2529C1764(v96);
    v139 = v138;
    *(v1 + 320) = v138;

    v140 = swift_allocObject();
    *(v1 + 328) = v140;
    v141 = v163;
    v140[2] = v137;
    v140[3] = v141;
    v140[4] = v139;

    if (!v164)
    {
      v147 = *(v1 + 240);

      sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
      v148 = v147[12];
      v149 = v147[13];
      __swift_project_boxed_opaque_existential_1(v147 + 9, v148);
      sub_252AD7CC4();
      v150 = swift_task_alloc();
      *(v1 + 384) = v150;
      *v150 = v1;
      v150[1] = sub_2529C33AC;
      v27 = *(v1 + 288);
      v170 = v149;
      v28 = &unk_252E3FA48;
      v29 = v1 + 96;
      v30 = v140;
      v31 = v148;
      goto LABEL_13;
    }

    v142 = *(v1 + 240);
    v143 = *(v142 + 48);
    v144 = *(v1 + 232);
    v145 = *__swift_project_boxed_opaque_existential_1((v142 + 24), v143);

    v146 = swift_task_alloc();
    *(v1 + 336) = v146;
    *v146 = v1;
    v146[1] = sub_2529C2F70;

    return sub_252C1085C(0, v145, v141, v139);
  }

  return result;
}

uint64_t sub_2529C2F70(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_2529C32D8, 0, 0);
  }

  else
  {
    v5 = v3[29];
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v6 = swift_task_alloc();
    v3[45] = v6;
    *v6 = v4;
    v6[1] = sub_2529C3198;

    return sub_252E174F4(v5);
  }
}

uint64_t sub_2529C3198(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v4 = sub_2529C36D0;
  }

  else
  {
    v4 = sub_2529C3540;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2529C32D8()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2529C33AC()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  (*(v2[32] + 8))(v2[36], v2[31]);
  if (v0)
  {
    v3 = sub_2529C3D20;
  }

  else
  {
    v3 = sub_2529C3BC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2529C3540()
{
  v1 = v0[43];
  v0[24] = v1;
  v2 = v0 + 24;
  v3 = v0[46];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[30];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[50] = v10;
  *(v10 + 16) = v2;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[51] = v11;
  *v11 = v0;
  v11[1] = sub_2529C37B0;
  v12 = v0[35];

  return sub_252BDB88C((v0 + 17), &unk_252E3FA50, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_2529C36D0()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2529C37B0()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  (*(v2[32] + 8))(v2[35], v2[31]);
  if (v0)
  {
    v3 = sub_2529C3AC4;
  }

  else
  {

    v3 = sub_2529C3934;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2529C3934()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 368);
  v9 = *(v0 + 344);
  v10 = *(v0 + 232);
  (*(v4 + 112))(v7, v0 + 136, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2529C3AC4()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 232);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2529C3BC0()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 12, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2529C3D20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2529C3DEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *v2;
  v4[55] = a1;
  v4[56] = v1;

  v6 = v3[29];

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2529C4118, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[57] = v7;
    *v7 = v5;
    v7[1] = sub_2529C3FD8;

    return sub_252E174F4(v6);
  }
}

uint64_t sub_2529C3FD8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {
    v4 = sub_2529C4508;
  }

  else
  {
    v4 = sub_2529C4378;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2529C4118()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2529C41E4()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  (*(v2[32] + 8))(v2[34], v2[31]);
  if (v0)
  {
    v3 = sub_2529C4B50;
  }

  else
  {
    v3 = sub_2529C49EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2529C4378()
{
  v1 = v0[55];
  v0[22] = v1;
  v2 = v0 + 22;
  v3 = v0[58];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[30];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[62] = v10;
  *(v10 + 16) = v2;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[63] = v11;
  *v11 = v0;
  v11[1] = sub_2529C45E0;
  v12 = v0[33];

  return sub_252BDB88C((v0 + 7), &unk_252E3F140, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_2529C4508()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2529C45E0()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  (*(v2[32] + 8))(v2[33], v2[31]);
  if (v0)
  {
    v3 = sub_2529C48F8;
  }

  else
  {

    v3 = sub_2529C4764;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2529C4764()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 464);
  v9 = *(v0 + 440);
  v10 = *(v0 + 232);
  (*(v4 + 112))(v7, v0 + 56, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2529C48F8()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 232);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2529C49EC()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 2, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2529C4B50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2529C4C14(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2529C4C34, 0, 0);
}

uint64_t sub_2529C4C34()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_2529C4D04;
  v5 = v0[3];

  return sub_252C10ACC(0, v2, v5);
}

uint64_t sub_2529C4D04(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2529C4E24(uint64_t a1, id a2)
{
  if (a2)
  {
    v3 = [a2 entityResponses];
    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v5 = v3;
      type metadata accessor for HomeEntityResponse();
      v6 = sub_252E37264();

      v15 = v4;
      if (v6 >> 62)
      {
LABEL_21:
        v7 = sub_252E378C4();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = 0;
      while (v7 != v8)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x2530ADF00](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v12 = sub_252DA124C(0);

        ++v8;
        if (v12)
        {
          MEMORY[0x2530AD700]();
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v4 = v15;
          v8 = v11;
        }
      }
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  type metadata accessor for HomeAutomationBooleanResponses();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = v4;

  *(a1 + 16) = v13;

  *(a1 + 8) = 0;
  return result;
}

BOOL sub_2529C4FEC(id *a1)
{
  v1 = [*a1 taskResponses];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for HomeUserTaskResponse();
  v3 = sub_252E37264();

  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v9 = sub_2529C61E4();

    ++v5;
  }

  while ((v9 & 1) == 0);

  return v6;
}

uint64_t sub_2529C5110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2529C5134, 0, 0);
}

uint64_t sub_2529C5134()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_2529C5218;
  v3 = v0[3];
  v4 = v0[4];

  return sub_252C1085C(0, v1, v3, v4);
}

uint64_t sub_2529C5218(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2529C5358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for HomeAutomationBooleanResponses();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = a2;

  *(a1 + 16) = v6;
  type metadata accessor for HomeAutomationEntityResponses();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = a3;

  *(a1 + 8) = v7;
  return result;
}

uint64_t sub_2529C5420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_2529C19A0(a1, a2, a3);
}

void *sub_2529C54D4@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for GetSmokeSensorStateResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

void *sub_2529C5538(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
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

    sub_2529C5C48(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_2529C55C0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_252A19458(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_2529C5650(uint64_t a1, uint64_t *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_2529C5910(a1, a2);
  }

  v33 = v2;
  v4 = MEMORY[0x277D84FA0];
  v36 = MEMORY[0x277D84FA0];
  sub_252E37874();
  v5 = sub_252E37904();
  if (v5)
  {
    v32 = a2;
    v6 = v5;
    type metadata accessor for HomeEntityResponse();
    v7 = v6;
    v8 = MEMORY[0x277D84F68];
    do
    {
      v34[0] = v7;
      swift_dynamicCast();
      v9 = [v35 entity];
      if (v9 && (v10 = v9, v11 = [v9 entityIdentifier], v10, v11) && (v12 = sub_252E36F34(), v13 = v8, v15 = v14, v11, v16 = *v32, v34[0] = v12, v34[1] = v15, MEMORY[0x28223BE20](v17), v31[2] = v34, , v18 = v33, LOBYTE(v12) = sub_2529ED970(sub_25296A69C, v31, v16), v33 = v18, v8 = v13, , , (v12 & 1) != 0))
      {
        v19 = v35;
        v20 = *(v4 + 16);
        if (*(v4 + 24) <= v20)
        {
          sub_252DAB4D0(v20 + 1);
        }

        v4 = v36;
        result = sub_252E37684();
        v22 = v4 + 56;
        v23 = -1 << *(v4 + 32);
        v24 = result & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v4 + 56 + 8 * (v24 >> 6))) != 0)
        {
          v26 = __clz(__rbit64((-1 << v24) & ~*(v4 + 56 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v27 = 0;
          v28 = (63 - v23) >> 6;
          do
          {
            if (++v25 == v28 && (v27 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v29 = v25 == v28;
            if (v25 == v28)
            {
              v25 = 0;
            }

            v27 |= v29;
            v30 = *(v22 + 8 * v25);
          }

          while (v30 == -1);
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
        }

        *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        *(*(v4 + 48) + 8 * v26) = v19;
        ++*(v4 + 16);
      }

      else
      {
      }

      v7 = sub_252E37904();
    }

    while (v7);
  }

  return v4;
}

void *sub_2529C5910(uint64_t a1, uint64_t *a2)
{
  v35 = a2;
  v3 = a1;
  v38[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v37 = v2;
    v30[1] = v30;
    v31 = v5;
    MEMORY[0x28223BE20](a1);
    v32 = v30 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v6);
    v33 = 0;
    v34 = v3;
    v5 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = v12 | (v5 << 6);
      v16 = *(*(v3 + 48) + 8 * v15);
      v17 = [v16 entity];
      if (v17 && (v18 = v17, v19 = [v17 entityIdentifier], v18, v19))
      {
        v20 = sub_252E36F34();
        v22 = v21;

        v36 = v30;
        v23 = *v35;
        v38[0] = v20;
        v38[1] = v22;
        MEMORY[0x28223BE20](v24);
        v30[-2] = v38;

        v2 = v37;
        LOBYTE(v20) = sub_2529ED970(sub_25296A724, &v30[-4], v23);
        v37 = v2;

        v3 = v34;

        if (v20)
        {
          *&v32[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
          if (__OFADD__(v33++, 1))
          {
            __break(1u);
            return sub_252C53CA8(v32, v31, v33, v3);
          }
        }
      }

      else
      {
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v11)
      {
        return sub_252C53CA8(v32, v31, v33, v3);
      }

      v14 = *(v7 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = v3;
  v28 = swift_slowAlloc();
  v29 = sub_2529C5538(v28, v5, v27, v35);

  MEMORY[0x2530AED00](v28, -1, -1);
  return v29;
}

void sub_2529C5C48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v28 = 0;
  v29 = a4;
  v4 = a3;
  v26 = a2;
  v27 = a1;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v30 = a3;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v14 = v11 | (v5 << 6);
    v15 = *(*(v4 + 48) + 8 * v14);
    v16 = [v15 entity];
    if (v16 && (v17 = v16, v18 = [v16 entityIdentifier], v17, v18))
    {
      v19 = sub_252E36F34();
      v21 = v20;

      v31 = &v26;
      v32[0] = v19;
      v22 = *v29;
      v32[1] = v21;
      MEMORY[0x28223BE20](v23);
      *(&v26 - 2) = v32;

      v24 = v33;
      LOBYTE(v19) = sub_2529ED970(sub_25296A724, (&v26 - 4), v22);
      v33 = v24;

      v4 = v30;

      if (v19)
      {
        *(v27 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_18:

          sub_252C53CA8(v27, v26, v28, v4);
          return;
        }
      }
    }

    else
    {
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_18;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_2529C5E70(void *a1)
{
  result = [a1 userTask];
  if (result)
  {
    v3 = result;
    v4 = [a1 userTask];
    if (v4)
    {
      v5 = v4;
      if ([v4 taskType] == 4)
      {

LABEL_7:
        v7 = [v3 attribute];

        return (v7 == 31);
      }

      v6 = [v5 taskType];

      if (v6 == 5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_252C515AC();
    }

    return 0;
  }

  return result;
}

uint64_t sub_2529C5F3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_2529C4C14(v2, v3);
}

unint64_t sub_2529C5FD4()
{
  result = qword_27F540340;
  if (!qword_27F540340)
  {
    v3 = type metadata accessor for HomeEntityResponse();
    result = swift_getWitnessTable(MEMORY[0x277D85378], v3, v0, v1);
    atomic_store(result, &qword_27F540340);
  }

  return result;
}

uint64_t sub_2529C602C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_2529C5110(v2, v3, v4);
}

uint64_t sub_2529C60D4()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540FE8, qword_252E3FAB0);
  v2 = sub_252E329D4();
  v3 = [v1 stringFromMeasurement_];

  v4 = sub_252E36F34();
  return v4;
}

uint64_t sub_2529C6160(uint64_t a1)
{
  v2 = [*v1 stringFromUnit_];
  v3 = sub_252E36F34();

  return v3;
}

uint64_t dispatch thunk of MeasurementFormatterProtocol.string(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(a1, a2);
}

{
  return (*(a3 + 16))(a1, a2);
}

uint64_t sub_2529C61E4()
{
  v1 = [v0 userTask];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 attribute];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v0 userTask];
  if (v4 && (v5 = v4, v6 = [v4 value], v5, v6))
  {
    v7 = [v6 integerValue];

    v8 = 0;
    v9 = v7;
  }

  else
  {
    v9 = 0.0;
    v8 = 1;
  }

  v10 = [v0 userTask];
  if (v10 && (v11 = v10, v12 = [v10 value], v11, v12))
  {
    [v12 doubleValue];
    v14 = v13;

    v15 = 0;
    v16 = v14;
  }

  else
  {
    v16 = 0.0;
    v15 = 1;
  }

  if (v8)
  {
    v9 = v16;
  }

  result = [v0 userTask];
  if (result)
  {
    v18 = result;
    v19 = [result value];

    if (!v19)
    {
LABEL_21:
      result = 0;
      if (!v2)
      {
        return result;
      }

      goto LABEL_25;
    }

    v20 = [v19 type];

    if (v20 == 1)
    {
      result = [v0 userTask];
      if (result)
      {
        v21 = result;
        v22 = [result value];

        if (v22)
        {
          v23 = [v22 BOOLValue];

          result = v23;
          if (!v2)
          {
            return result;
          }

          goto LABEL_25;
        }

        goto LABEL_21;
      }
    }

    else
    {
      result = 0;
    }
  }

  if (!v2)
  {
    return result;
  }

LABEL_25:
  if (v3 > 15)
  {
    if (v3 > 38)
    {
      switch(v3)
      {
        case '\'':
          result = [v0 userTask];
          if (!result)
          {
            return result;
          }

          v39 = result;
          v40 = [result value];

          if (!v40)
          {
            return 0;
          }

          v41 = [v40 stringValue];

          if (!v41)
          {
            return 0;
          }

          v42 = sub_252E36F34();
          v44 = v43;

          if (v42 == 0xD000000000000012 && 0x8000000252E6F620 == v44)
          {
            goto LABEL_71;
          }

          break;
        case '(':
          result = [v0 userTask];
          if (!result)
          {
            return result;
          }

          v45 = result;
          v46 = [result value];

          if (!v46)
          {
            return 0;
          }

          v47 = [v46 stringValue];

          if (!v47)
          {
            return 0;
          }

          v48 = sub_252E36F34();
          v50 = v49;

          if (v48 == 0x5445445F4B41454CLL && v50 == 0xED00004445544345)
          {
LABEL_71:

            return 1;
          }

          break;
        case '.':
          goto LABEL_53;
        default:
          return result;
      }

LABEL_72:
      v51 = sub_252E37DB4();

      return v51 & 1;
    }

    if (v3 != 16)
    {
      if (v3 != 38)
      {
        return result;
      }

      goto LABEL_45;
    }

LABEL_53:
    if (v8 & v15)
    {
      return 0;
    }

    return v9 == 1.0;
  }

  if (v3 <= 9)
  {
    if (v3 == 8)
    {
      v31 = [v0 userTask];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 value];

        if (v33)
        {
          v34 = [v33 type];

          if (v34 == 1)
          {
            v35 = [v0 userTask];
            if (v35)
            {
              v36 = v35;
              v37 = [v35 value];

              if (v37)
              {
                v38 = [v37 BOOLValue];

                return v38;
              }
            }
          }
        }
      }

      goto LABEL_53;
    }

    if (v3 != 9)
    {
      return result;
    }

LABEL_45:
    if (v8 & v15)
    {
      return 0;
    }

    return (*&v9 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  }

  if (v3 == 10)
  {
    goto LABEL_45;
  }

  if (v3 == 12)
  {
    result = [v0 userTask];
    if (result)
    {
      v24 = result;
      v25 = [result value];

      if (!v25)
      {
        return 0;
      }

      v26 = [v25 stringValue];

      if (!v26)
      {
        return 0;
      }

      v27 = sub_252E36F34();
      v29 = v28;

      if (v27 == 0x5349574B434F4C43 && v29 == 0xE900000000000045)
      {
        goto LABEL_71;
      }

      goto LABEL_72;
    }
  }

  return result;
}

uint64_t sub_2529C6784()
{
  v1 = [v0 userTask];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 attribute];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v0 userTask];
  if (v4 && (v5 = v4, v6 = [v4 value], v5, v6))
  {
    v7 = [v6 integerValue];

    v8 = 0;
    v9 = v7;
  }

  else
  {
    v9 = 0.0;
    v8 = 1;
  }

  v10 = [v0 userTask];
  if (v10 && (v11 = v10, v12 = [v10 value], v11, v12))
  {
    [v12 doubleValue];
    v14 = v13;

    v15 = 0;
    v16 = v14;
  }

  else
  {
    v16 = 0.0;
    v15 = 1;
  }

  if (v8)
  {
    v9 = v16;
  }

  v17 = [v0 userTask];
  if (v17 && (v18 = v17, v19 = [v17 value], v18, v19) && (v20 = objc_msgSend(v19, sel_type), v19, v20 == 1) && (v21 = objc_msgSend(v0, sel_userTask)) != 0 && (v22 = v21, v23 = objc_msgSend(v21, sel_value), v22, v23))
  {
    v24 = [v23 BOOLValue];

    if (!v2)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v24 = 2;
    if (!v2)
    {
      goto LABEL_49;
    }
  }

  if (v3 <= 15)
  {
    if (v3 > 9)
    {
      if (v3 != 10)
      {
        if (v3 != 12)
        {
          goto LABEL_49;
        }

        v29 = [v0 userTask];
        if (!v29)
        {
          goto LABEL_79;
        }

        v30 = v29;
        v31 = [v29 value];

        if (!v31)
        {
          goto LABEL_79;
        }

        v32 = [v31 stringValue];

        if (!v32)
        {
          goto LABEL_79;
        }

        v33 = sub_252E36F34();
        v35 = v34;

        if (v33 == 0xD000000000000010 && 0x8000000252E66F40 == v35)
        {
          goto LABEL_72;
        }

        goto LABEL_76;
      }

      if ((v8 & v15 & 1) == 0)
      {
        v36 = [v0 userTask];
        if (v36)
        {
          if (v9 != 0.0)
          {
            v53 = v36;
            v54 = [v36 taskType];

            v28 = 1;
            if (v54 == 4 || v9 == 1.0)
            {
              return v28 & 1;
            }

            goto LABEL_79;
          }
        }

        if (v9 == 1.0)
        {
          goto LABEL_75;
        }
      }
    }

    else
    {
      if (v3 == 8)
      {
        if ((v8 & v15 & 1) == 0)
        {
          v28 = v9 != 1.0;
          return v28 & 1;
        }

        goto LABEL_75;
      }

      if (v3 != 9)
      {
        goto LABEL_49;
      }

      if ((v8 & v15 & 1) == 0)
      {
        v25 = [v0 userTask];
        if (v25)
        {
          if (v9 > 0.0)
          {
            v26 = v25;
            v27 = [v25 taskType];

            v28 = 1;
            if (v27 == 4 || v9 == 100.0)
            {
              return v28 & 1;
            }

            goto LABEL_79;
          }
        }

        if (v9 == 100.0)
        {
LABEL_75:
          v28 = 1;
          return v28 & 1;
        }
      }
    }

LABEL_79:
    v28 = 0;
    return v28 & 1;
  }

  if (v3 > 38)
  {
    switch(v3)
    {
      case '\'':
        v37 = [v0 userTask];
        if (!v37)
        {
          goto LABEL_79;
        }

        v38 = v37;
        v39 = [v37 value];

        if (!v39)
        {
          goto LABEL_79;
        }

        v40 = [v39 stringValue];

        if (!v40)
        {
          goto LABEL_79;
        }

        v41 = sub_252E36F34();
        v43 = v42;

        if (v41 == 0xD000000000000016 && 0x8000000252E6F600 == v43)
        {
          goto LABEL_72;
        }

        break;
      case '(':
        v44 = [v0 userTask];
        if (!v44)
        {
          goto LABEL_79;
        }

        v45 = v44;
        v46 = [v44 value];

        if (!v46)
        {
          goto LABEL_79;
        }

        v47 = [v46 stringValue];

        if (!v47)
        {
          goto LABEL_79;
        }

        v48 = sub_252E36F34();
        v50 = v49;

        if (v48 == 0xD000000000000011 && 0x8000000252E6F5E0 == v50)
        {
LABEL_72:

          v28 = 1;
          return v28 & 1;
        }

        break;
      case '.':
LABEL_51:
        if ((v8 & v15 & 1) == 0)
        {
          v28 = (*&v9 & 0x7FFFFFFFFFFFFFFFLL) == 0;
          return v28 & 1;
        }

        goto LABEL_79;
      default:
LABEL_49:
        if (v24 != 2)
        {
          v28 = v24 ^ 1;
          return v28 & 1;
        }

        goto LABEL_79;
    }

LABEL_76:
    v51 = sub_252E37DB4();

    return v51 & 1;
  }

  if (v3 == 16)
  {
    goto LABEL_51;
  }

  if (v3 != 38)
  {
    goto LABEL_49;
  }

  if (v8 & v15)
  {
    goto LABEL_79;
  }

  v28 = v9 == 1.0;
  return v28 & 1;
}

id sub_2529C6D64()
{
  v1 = [v0 userTask];
  if ((v1 && (v2 = v1, v3 = [v1 attribute], v2, v3 == 6) || (v4 = objc_msgSend(v27, sel_userTask)) != 0 && (v5 = v4, v6 = objc_msgSend(v4, sel_attribute), v5, v6 == 19) || (v7 = objc_msgSend(v27, sel_userTask)) != 0 && (v8 = v7, v9 = objc_msgSend(v7, sel_attribute), v8, v9 == 17)) && (v10 = objc_msgSend(v27, sel_userTask)) != 0)
  {
    v11 = v10;
    v12 = [v10 taskType];
    v13 = [v11 attribute];
    v14 = [v11 value];
    if (v14)
    {
      v15 = v14;
      v16 = HomeAttributeValue.localized.getter();
    }

    else
    {
      v16 = 0;
    }

    v18 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v19 = sub_252E36F04();
    v20 = [v18 initWithIdentifier:0 displayString:v19];

    v21 = v20;
    [v21 setTaskType_];
    [v21 setAttribute_];
    [v21 setValue_];

    v22 = [v27 taskOutcome];
    v23 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
    v24 = sub_252E36F04();
    v25 = [v23 initWithIdentifier:0 displayString:v24];

    v26 = v25;
    [v26 setTaskOutcome_];
    [v26 setUserTask_];

    return v26;
  }

  else
  {

    return v27;
  }
}

id sub_2529C6FFC()
{
  v1 = v0;
  result = [v0 value];
  if (result)
  {
    v3 = result;
    v4 = [result unit];

    if (v4)
    {
      return 0;
    }

    if (qword_27F53F748 != -1)
    {
      swift_once();
    }

    v5 = qword_27F575C58;
    [v1 attribute];
    if (*(v5 + 16) && (v6 = sub_252A488EC(), (v7 & 1) != 0))
    {
      return *(*(v5 + 56) + 8 * v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_2529C70CC()
{
  result = [v0 value];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result stringValue];

  if (!v3)
  {
    return 0;
  }

  sub_252E36F34();

  if ([v0 attribute] != 5)
  {
LABEL_11:

    return 0;
  }

  v4 = sub_252E37084();
  result = sub_252E37084();
  if (result >> 14 < v4 >> 14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = sub_252E37194();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v20[0] = v5;
  v20[1] = v7;
  v20[2] = v9;
  v20[3] = v11;
  sub_2529C7C0C();
  sub_252947DBC();
  v12 = sub_252E37794();

  if (v12[2] < 2uLL)
  {
    goto LABEL_11;
  }

  v13 = v12[4];
  v14 = v12[5];
  v20[0] = 0;

  LOBYTE(v13) = sub_252C5BE1C(v13, v14, v20);

  if ((v13 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (v12[2] < 2uLL)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v15 = v20[0];
  v16 = v12[6];
  v17 = v12[7];
  v20[0] = 0;

  LOBYTE(v16) = sub_252C5BE1C(v16, v17, v20);

  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (v12[2] > 2uLL)
  {
    v18 = v12[8];
    v19 = v12[9];

    v20[0] = 0;
    sub_252C5BE1C(v18, v19, v20);
  }

  return v15;
}

id sub_2529C7370()
{
  v1 = [v0 value];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 type];

    if (v3 == 4)
    {
      v4 = [v0 value];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 integerValue];

        v7 = v6;
        v8 = [v0 value];
        if (!v8)
        {
          return *&v7;
        }

LABEL_5:
        v9 = v8;
        [v8 unit];

        return *&v7;
      }
    }
  }

  result = [v0 value];
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = [result type];

  if (v12 == 2)
  {
    result = [v0 value];
    if (!result)
    {
      return result;
    }

    v13 = result;
    [result doubleValue];
    v15 = v14;

    v7 = v15;
    v8 = [v0 value];
    if (!v8)
    {
      return *&v7;
    }

    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_2529C74F8()
{
  v1 = [v0 value];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 type];

    if (v3 == 1)
    {
      v4 = [v0 value];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 BOOLValue];

        v7 = v6 ^ 1;
        return v7 & 1;
      }

LABEL_21:
      v7 = 0;
      return v7 & 1;
    }
  }

  v8 = [v0 value];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 type];

    if (v10 == 4)
    {
      v11 = [v0 attribute];
      v12 = [v0 value];
      if (v11 == 8)
      {
        if (v12)
        {
          v13 = v12;
          v14 = [v12 integerValue];

          v7 = v14 == 1;
          return v7 & 1;
        }
      }

      else if (v12)
      {
        v31 = v12;
        v32 = [v12 integerValue];

        v7 = v32 == 0;
        return v7 & 1;
      }

      goto LABEL_21;
    }
  }

  v15 = [v0 value];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 type];

    if (v17 == 2)
    {
      v18 = [v0 value];
      if (v18)
      {
        v19 = v18;
        [v18 doubleValue];
        v21 = v20;

        v7 = v21 == 0.0;
        return v7 & 1;
      }

      goto LABEL_21;
    }
  }

  v22 = [v0 value];
  if (!v22)
  {
    goto LABEL_21;
  }

  v23 = v22;
  v24 = [v22 type];

  if (v24 != 3)
  {
    goto LABEL_21;
  }

  v25 = [v0 value];
  if (v25 && (v26 = v25, v27 = [v25 stringValue], v26, v27))
  {
    v28 = sub_252E36F34();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0xE000000000000000;
  }

  v35[0] = v28;
  v35[1] = v30;
  MEMORY[0x28223BE20](v25);
  v34[2] = v35;
  v7 = sub_2529ED970(sub_25296A69C, v34, &unk_2864A9018);
  swift_arrayDestroy();

  return v7 & 1;
}

uint64_t sub_2529C77E4()
{
  v1 = [v0 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 cleaningJob];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 cleanModes];
  v5 = sub_252E37264();

  v6 = *(v5 + 16);
  v7 = 32;
  do
  {
    v8 = v6;
    v9 = v6-- != 0;
    v10 = v9;
    if (!v9)
    {
      break;
    }

    v11 = *(v5 + v7);
    v7 += 8;
  }

  while (v11 != 14);

  v12 = [v3 targetAreas];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for HomeAttributeTargetArea();
    v14 = sub_252E37264();

    if (v14 >> 62)
    {
      v15 = sub_252E378C4();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = 0;
    v17 = &off_279711000;
    while (1)
    {
      v18 = v15 != v16;
      if (v15 == v16)
      {
LABEL_23:

        goto LABEL_25;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2530ADF00](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v19 = *(v14 + 8 * v16 + 32);
      }

      v20 = v19;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      [v19 areaID];
      v22 = v21;

      ++v16;
      if (v22 == -2.0)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v18 = 0;
LABEL_25:
  v23 = [v3 targetMap];
  if (v23)
  {
    v24 = v23;
    [v23 mapID];
    v26 = v25;

    v15 = v26 == -2.0;
    v27 = !v18;
    if (v8)
    {
      v27 = 0;
    }

    if (v27)
    {
      LODWORD(v17) = 0;
      v28 = v26 == -2.0;
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v15 = 0;
  v28 = 0;
  LODWORD(v17) = 0;
  if (v8)
  {
    v29 = 1;
  }

  else
  {
    v29 = v18;
  }

  if (v29)
  {
LABEL_34:
    v28 = v15;
    v15 = 1;
    LODWORD(v17) = v10;
  }

LABEL_35:
  v40 = v28;
  if (qword_27F53F4E8 != -1)
  {
LABEL_64:
    swift_once();
  }

  v30 = sub_252E36AD4();
  __swift_project_value_buffer(v30, qword_27F544D60);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E6F640);
  if (v15)
  {
    v31 = 1702195828;
  }

  else
  {
    v31 = 0x65736C6166;
  }

  if (v15)
  {
    v32 = 0xE400000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v31, v32);

  MEMORY[0x2530AD570](0xD00000000000005ALL, 0x8000000252E6F660);
  if (v17)
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  if (v17)
  {
    v34 = 0xE400000000000000;
  }

  else
  {
    v34 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v33, v34);

  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E6F6C0);
  if (v18)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v18)
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v35, v36);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E6F6E0);
  if (v40)
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (v40)
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v37, v38);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008ELL, 0x8000000252E6F700);

  return v15;
}

unint64_t sub_2529C7C0C()
{
  result = qword_27F541340;
  if (!qword_27F541340)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83E70], MEMORY[0x277D83E40], v0, v1);
    atomic_store(result, &qword_27F541340);
  }

  return result;
}

uint64_t sub_2529C7C78()
{
  v0 = sub_252E34164();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E340E4();
  v4 = sub_2529C7D68(v3);
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return sub_252E339F4();
  }

  else
  {
    return sub_252E33A04();
  }
}

BOOL sub_2529C7D68(uint64_t a1)
{
  v2 = sub_252E34164();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 != *MEMORY[0x277D5C128])
  {
    if (v6 == *MEMORY[0x277D5C158])
    {
      (*(v3 + 96))(v5, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60);

      v7 = sub_252E358D4();
      (*(*(v7 - 8) + 8))(v5, v7);
      goto LABEL_5;
    }

    if (v6 != *MEMORY[0x277D5C150] && v6 != *MEMORY[0x277D5C160])
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_27F544D60);
      v16[0] = 0;
      v16[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E6F7D0);
      MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E6FA00);
      MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E6F810);
      v12 = sub_252D2CDB4();
      MEMORY[0x2530AD570](v12);

      sub_252CC3D90(v16[0], v16[1], 0xD000000000000075, 0x8000000252E6F840);

      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }

  (*(v3 + 8))(v5, v2);
LABEL_5:
  sub_252AB3FEC(a1, 0, v15);
  memcpy(v16, v15, sizeof(v16));
  if (sub_252956B94(v16) != 1)
  {
    memcpy(v14, v16, sizeof(v14));
    v9 = sub_252D8A048(v14);
    sub_25299F5D4(v15);
    return v9;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544D60);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E6FA00);
  MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E6F8C0);
  sub_252CC4050(v14[0], v14[1], 0xD000000000000075, 0x8000000252E6F840, 0xD000000000000014, 0x8000000252E6F900, 45);

  return 0;
}

uint64_t sub_2529C81D4(uint64_t a1)
{
  v2 = sub_252E34164();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 != *MEMORY[0x277D5C128])
  {
    if (v6 == *MEMORY[0x277D5C158])
    {
      (*(v3 + 96))(v5, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60);

      v7 = sub_252E358D4();
      (*(*(v7 - 8) + 8))(v5, v7);
      goto LABEL_5;
    }

    if (v6 != *MEMORY[0x277D5C150] && v6 != *MEMORY[0x277D5C160])
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_27F544D60);
      v16[0] = 0;
      v16[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E6F7D0);
      MEMORY[0x2530AD570](0x656D6F48776F6853, 0xEC000000776F6C46);
      MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E6F810);
      v12 = sub_252D2CDB4();
      MEMORY[0x2530AD570](v12);

      sub_252CC3D90(v16[0], v16[1], 0xD000000000000075, 0x8000000252E6F840);

      (*(v3 + 8))(v5, v2);
      goto LABEL_9;
    }
  }

  (*(v3 + 8))(v5, v2);
LABEL_5:
  sub_252AB3FEC(a1, 0, v15);
  memcpy(v16, v15, sizeof(v16));
  if (sub_252956B94(v16) != 1)
  {
    memcpy(v14, v16, sizeof(v14));
    v9 = sub_252CC0C40(v14);
    sub_25299F5D4(v15);
    return v9 & 1;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544D60);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0x656D6F48776F6853, 0xEC000000776F6C46);
  MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E6F8C0);
  sub_252CC4050(v14[0], v14[1], 0xD000000000000075, 0x8000000252E6F840, 0xD000000000000014, 0x8000000252E6F900, 45);

LABEL_9:
  v9 = 0;
  return v9 & 1;
}

uint64_t sub_2529C8644(uint64_t a1)
{
  v2 = sub_252E34164();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 != *MEMORY[0x277D5C128])
  {
    if (v6 == *MEMORY[0x277D5C158])
    {
      (*(v3 + 96))(v5, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60);

      v7 = sub_252E358D4();
      (*(*(v7 - 8) + 8))(v5, v7);
      goto LABEL_5;
    }

    if (v6 != *MEMORY[0x277D5C150] && v6 != *MEMORY[0x277D5C160])
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_27F544D60);
      v16[0] = 0;
      v16[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E6F7D0);
      MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E6F7F0);
      MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E6F810);
      v12 = sub_252D2CDB4();
      MEMORY[0x2530AD570](v12);

      sub_252CC3D90(v16[0], v16[1], 0xD000000000000075, 0x8000000252E6F840);

      (*(v3 + 8))(v5, v2);
      goto LABEL_9;
    }
  }

  (*(v3 + 8))(v5, v2);
LABEL_5:
  sub_252AB3FEC(a1, 0, v15);
  memcpy(v16, v15, sizeof(v16));
  if (sub_252956B94(v16) != 1)
  {
    memcpy(v14, v16, sizeof(v14));
    v9 = sub_252BDA558(v14);
    sub_25299F5D4(v15);
    return v9 & 1;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544D60);
  *v14 = 0;
  *&v14[8] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E6F7F0);
  MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E6F8C0);
  sub_252CC4050(*v14, *&v14[8], 0xD000000000000075, 0x8000000252E6F840, 0xD000000000000014, 0x8000000252E6F900, 45);

LABEL_9:
  v9 = 0;
  return v9 & 1;
}

uint64_t sub_2529C8AB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C9EDC;

  return sub_2529C93AC(a1);
}

uint64_t sub_2529C8B58(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2529C9ED8;

  return sub_2529C96D0(a1, a2);
}

uint64_t sub_2529C8C24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C8CCC;

  return sub_2529C93AC(a1);
}

uint64_t sub_2529C8CCC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2529C8DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DiscoverHomeRCHStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_2529C8E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_2529C8EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for DiscoverHomeRCHStrategy();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t sub_2529C8FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for DiscoverHomeRCHStrategy();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9D88](a1, a2, a3, v11, a5);
}

uint64_t sub_2529C9074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for DiscoverHomeRCHStrategy();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t sub_2529C9140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for DiscoverHomeRCHStrategy();
  *v12 = v6;
  v12[1] = sub_25293B808;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_2529C921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for DiscoverHomeRCHStrategy();
  *v12 = v6;
  v12[1] = sub_25294B954;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_2529C92F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return sub_2529C96D0(a1, a2);
}

uint64_t sub_2529C93AC(uint64_t a1)
{
  v1[128] = a1;
  v2 = sub_252E34164();
  v1[129] = v2;
  v1[130] = *(v2 - 8);
  v1[131] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529C946C, 0, 0);
}

uint64_t sub_2529C946C()
{
  v18 = v0;
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  v4 = *(v2 + 16);
  v4(v1, v0[128], v3);
  v5 = (*(v2 + 88))(v1, v3);
  v6 = v0[131];
  v7 = v0[130];
  v8 = v0[129];
  if (v5 == *MEMORY[0x277D5C128])
  {
    v9 = v0[128];
    (*(v7 + 8))(v6, v8);
    sub_252AB3FEC(v9, 0, v0 + 65);
    memcpy(v0 + 2, v0 + 65, 0x1F8uLL);
    if (sub_252956B94(v0 + 2) != 1)
    {
      memcpy(__dst, v0 + 2, sizeof(__dst));
      v10 = sub_252C9B4DC();
      sub_25299F5D4((v0 + 65));

      v11 = v0[1];

      return v11(v10);
    }
  }

  else
  {
    (*(v7 + 8))(v6, v8);
  }

  v13 = v0[129];
  v14 = v0[128];
  sub_2529515FC(2, 4, 0xD000000000000010, 0x8000000252E6F9E0);
  type metadata accessor for DiscoverHomeError(0);
  sub_2529C9D04(&qword_27F541008, 255, type metadata accessor for DiscoverHomeError, byte_252E3FC84);
  swift_allocError();
  v4(v15, v14, v13);
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_2529C96D0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_252E336F4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529C9790, 0, 0);
}

uint64_t sub_2529C9790()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544C70);
  sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E6F920, 0xD00000000000008ALL, 0x8000000252E6F950);
  v6 = objc_allocWithZone(type metadata accessor for DiscoverHomeIntentHandler());

  [v6 init];
  type metadata accessor for DiscoverHomeIntent();
  v7 = v4;
  sub_252E336E4();
  sub_252E33784();
  v8 = sub_252E33774();
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9(v8);
}

uint64_t dispatch thunk of DiscoverHomeRCHStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 96) + **(*v2 + 96));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25294B7BC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of DiscoverHomeRCHStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 104) + **(*v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25296BC70;

  return v8(a1, a2);
}

uint64_t type metadata accessor for DiscoverHomeError(uint64_t a1)
{
  result = qword_27F541010;
  if (!qword_27F541010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2529C9D04(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2529C9D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E34164();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2529C9DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252E34164();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_2529C9E34(uint64_t a1)
{
  result = sub_252E34164();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_2529C9EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v5 = sub_252E34014();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529C9FC8, 0, 0);
}

uint64_t sub_2529C9FC8(uint64_t a1)
{
  v2 = *(v1 + 208);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v37 = *(v1 + 208);
    v4 = sub_252C285F0();
    v5 = v4;
    v40 = v3;
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_39:
      v7 = sub_252E378C4();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    while (v7 != v8)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v8, v5);
      }

      else
      {
        if (v8 >= *(v6 + 16))
        {
          goto LABEL_38;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v12 = sub_252DA124C(0);

      ++v8;
      if (v12)
      {
        MEMORY[0x2530AD700]();
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v3 = v40;
        v8 = v11;
      }
    }

    v2 = v37;
  }

  *(v1 + 272) = v3;
  v13 = [*(v1 + 200) userTask];
  if (v13)
  {
    v14 = v13;
    if ([v13 taskType] == 4)
    {

LABEL_21:
      v16 = *(v1 + 216);
      v17 = swift_allocObject();
      *(v1 + 280) = v17;
      *(v17 + 16) = v16;
      *(v17 + 24) = v3;

      if (v2)
      {
        v18 = *(v16 + 48);
        v19 = *(v1 + 208);
        v20 = *__swift_project_boxed_opaque_existential_1((v16 + 24), v18);
        v38 = sub_252C10198;

        v21 = swift_task_alloc();
        *(v1 + 288) = v21;
        *v21 = v1;
        v22 = sub_2529CA5D0;
LABEL_25:
        v21[1] = v22;

        return v38(0, v20, v3);
      }

      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v34 = *(v1 + 216);
      v35 = sub_252E36AD4();
      __swift_project_value_buffer(v35, qword_27F544D18);
      sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
      v29 = *(v34 + 96);
      __swift_project_boxed_opaque_existential_1((v34 + 72), v29);
      sub_252AD7CC4();
      v36 = swift_task_alloc();
      *(v1 + 336) = v36;
      *v36 = v1;
      v36[1] = sub_2529CA920;
      v31 = *(v1 + 264);
      v32 = &unk_252E3FD50;
      v33 = v1 + 96;
      goto LABEL_34;
    }

    v15 = [v14 taskType];

    if (v15 == 5)
    {
      goto LABEL_21;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v23 = *(v1 + 216);
  v17 = swift_allocObject();
  *(v1 + 376) = v17;
  *(v17 + 16) = v23;
  *(v17 + 24) = v3;

  if (v2)
  {
    v24 = *(v23 + 48);
    v25 = *(v1 + 208);
    v20 = *__swift_project_boxed_opaque_existential_1((v23 + 24), v24);
    v38 = sub_252C10354;

    v21 = swift_task_alloc();
    *(v1 + 384) = v21;
    *v21 = v1;
    v22 = sub_2529CB1F8;
    goto LABEL_25;
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v27 = *(v1 + 216);
  v28 = sub_252E36AD4();
  __swift_project_value_buffer(v28, qword_27F544D18);
  sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
  v29 = *(v27 + 96);
  __swift_project_boxed_opaque_existential_1((v27 + 72), v29);
  sub_252AD7CC4();
  v30 = swift_task_alloc();
  *(v1 + 432) = v30;
  *v30 = v1;
  v30[1] = sub_2529CB548;
  v31 = *(v1 + 248);
  v32 = &unk_252E3FD38;
  v33 = v1 + 16;
LABEL_34:

  return sub_252BDB88C(v33, v32, v17, v31, 0, 0, 0, v29);
}

uint64_t sub_2529CA5D0(uint64_t a1)
{
  v3 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  swift_bridgeObjectRelease_n();
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2529CA888, 0, 0);
  }

  else
  {
    v4 = v3[26];
    v5 = swift_task_alloc();
    v3[39] = v5;
    *v5 = v3;
    v5[1] = sub_2529CA774;

    return sub_252E174F4(v4);
  }
}

uint64_t sub_2529CA774(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v4 = sub_2529CABEC;
  }

  else
  {
    v4 = sub_2529CAA90;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2529CA888()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2529CA920()
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  *(*v1 + 344) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2529CB168;
  }

  else
  {
    v5 = sub_2529CB030;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529CAA90()
{
  v1 = v0[37];
  v0[23] = v1;
  v2 = v0 + 23;
  v3 = v0[40];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[27];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[44] = v10;
  *(v10 + 16) = v2;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[45] = v11;
  *v11 = v0;
  v11[1] = sub_2529CAC90;
  v12 = v0[32];

  return sub_252BDB88C((v0 + 17), &unk_252E3FA50, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_2529CABEC()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2529CAC90()
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  *(*v1 + 368) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2529CAF70;
  }

  else
  {

    v5 = sub_2529CAE10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529CAE10()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 320);
  v9 = *(v0 + 296);
  v10 = *(v0 + 208);
  (*(v4 + 112))(v7, v0 + 136, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2529CAF70()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 208);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2529CB030()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 12, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2529CB168()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2529CB1F8(uint64_t a1)
{
  v3 = *v2;
  v3[49] = a1;
  v3[50] = v1;

  swift_bridgeObjectRelease_n();
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2529CB4B0, 0, 0);
  }

  else
  {
    v4 = v3[26];
    v5 = swift_task_alloc();
    v3[51] = v5;
    *v5 = v3;
    v5[1] = sub_2529CB39C;

    return sub_252E174F4(v4);
  }
}

uint64_t sub_2529CB39C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;

  if (v1)
  {
    v4 = sub_2529CB814;
  }

  else
  {
    v4 = sub_2529CB6B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2529CB4B0()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2529CB548()
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  *(*v1 + 440) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2529CBD90;
  }

  else
  {
    v5 = sub_2529CBC58;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529CB6B8()
{
  v1 = v0[49];
  v0[22] = v1;
  v2 = v0 + 22;
  v3 = v0[52];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[27];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[56] = v10;
  *(v10 + 16) = v2;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[57] = v11;
  *v11 = v0;
  v11[1] = sub_2529CB8B8;
  v12 = v0[30];

  return sub_252BDB88C((v0 + 7), &unk_252E3F140, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_2529CB814()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2529CB8B8()
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  *(*v1 + 464) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2529CBB98;
  }

  else
  {

    v5 = sub_2529CBA38;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529CBA38()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 416);
  v9 = *(v0 + 392);
  v10 = *(v0 + 208);
  (*(v4 + 112))(v7, v0 + 56, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2529CBB98()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 208);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2529CBC58()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 2, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2529CBD90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2529CBE20(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2529CBE40, 0, 0);
}

uint64_t sub_2529CBE40()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_25299F248;
  v3 = v0[3];

  return sub_252C10198(0, v1, v3);
}

uint64_t sub_2529CBF14(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2529CBF34, 0, 0);
}

uint64_t sub_2529CBF34()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_2529CC350;
  v3 = v0[3];

  return sub_252C10354(0, v1, v3);
}

BOOL sub_2529CC02C(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = sub_252C285F0();
    if (v4 >> 62)
    {
      v7 = sub_252E378C4();

      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v5)
      {
LABEL_4:
        v6 = sub_252C7CEA4(a1);
LABEL_8:

        return v6;
      }
    }

    v6 = 0;
    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_2529CC0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_2529C9EE0(a1, a2, a3);
}

void *sub_2529CC17C@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for WaterSystemResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_2529CC1E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_2529CBF14(v2, v3);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2529CC2B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_2529CBE20(v2, v3);
}

uint64_t sub_2529CC354(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_252E33C44();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_252E33DB4();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529CC474, 0, 0);
}

uint64_t sub_2529CC474()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540798, &qword_252E3F4E0);
  v4 = sub_252E34024();
  v0[14] = v4;
  sub_252E34044();
  v5 = sub_252E33DA4();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544C40);
  sub_252E379F4();

  MEMORY[0x2530AD570](v5, v7);

  sub_252CC3D90(0xD000000000000024, 0x8000000252E6FCE0, 0xD000000000000086, 0x8000000252E6FBB0);

  if ((sub_252CCFE10() & 1) == 0)
  {
    v9 = [v4 automatableTask];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for ControlAutomateHomeIntent();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v0[10];
        v13 = v0[7];
        v14 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

        v15 = [v14 attribute];
        v16 = *(v13 + 104);
        v17 = v12;
        v18 = v15;
        v19 = 1;
        v20 = 4;
        goto LABEL_9;
      }
    }
  }

  v21 = v0[10];
  v22 = *(v0[7] + 104);

  v20 = sub_252A63570(v5, v7);
  v17 = v21;
  v18 = 0;
  v19 = 2;
  v16 = v22;
LABEL_9:
  sub_252A6105C(v18, v19, v16, v20, v17);
  if (v5 == 0x6174616D6F747561 && v7 == 0xEF6B736154656C62 || (sub_252E37DB4() & 1) != 0)
  {

    v24 = sub_252B680FC(v23);
    swift_beginAccess();
    v25 = *(v24 + 16);
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = *(v25 + 504 * v26 - 85);
    }

    else
    {
      v27 = 0;
    }

    v28 = v0[7];

    v29 = v28[6];
    v30 = v28[7];
    __swift_project_boxed_opaque_existential_1(v28 + 3, v29);
    v31 = swift_allocObject();
    v0[15] = v31;
    *(v31 + 16) = v28;
    *(v31 + 24) = v27;
    *(v31 + 32) = v4;

    v32 = v4;
    v33 = swift_task_alloc();
    v0[16] = v33;
    *v33 = v0;
    v33[1] = sub_2529CCA04;
    v34 = v0[10];
    v35 = v0[5];
    v36 = &unk_252E3FEE8;
    goto LABEL_16;
  }

  if (v5 == 0x72656767697274 && v7 == 0xE700000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    v38 = v0[7];
    v29 = v38[6];
    v30 = v38[7];
    __swift_project_boxed_opaque_existential_1(v38 + 3, v29);
    v31 = swift_allocObject();
    v0[18] = v31;
    *(v31 + 16) = v38;
    *(v31 + 24) = v4;

    v39 = v4;
    v40 = swift_task_alloc();
    v0[19] = v40;
    *v40 = v0;
    v40[1] = sub_2529CCBCC;
    v34 = v0[10];
    v35 = v0[5];
    v36 = &unk_252E3FED8;
LABEL_16:

    return sub_252BDB3DC(v35, v36, v31, v34, v29, v30);
  }

  type metadata accessor for HomeAutomationError(0);
  sub_2529D02E4(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
  swift_allocError();
  *v41 = v5;
  v41[1] = v7;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  (*(v0[9] + 8))(v0[10], v0[8]);

  v42 = v0[1];

  return v42();
}

uint64_t sub_2529CCA04()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2529CCD00;
  }

  else
  {
    v2 = sub_2529CCB38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2529CCB38()
{
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2529CCBCC()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_2529CCD9C;
  }

  else
  {
    v2 = sub_2529D0534;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2529CCD00()
{
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2529CCD9C()
{
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2529CCE38(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 160) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = type metadata accessor for HomeAutomationPromptForUserTaskParameters(0);
  *(v3 + 88) = swift_task_alloc();
  v4 = sub_252E36324();
  *(v3 + 96) = v4;
  *(v3 + 104) = *(v4 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529CCF70, 0, 0);
}

uint64_t sub_2529CCF70()
{
  v1 = v0[8];
  sub_252929E74(v0[7] + 64, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = [v1 automatableTask];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for ControlAutomateHomeIntent();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if (v5 >> 62)
  {
    goto LABEL_25;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v6; i = v0)
  {
    v7 = 0;
    v46 = v5 & 0xFFFFFFFFFFFFFF8;
    v47 = v5 & 0xC000000000000001;
    v42 = v0[13];
    v48 = (v42 + 32);
    v8 = MEMORY[0x277D84F90];
    v43 = v6;
    v44 = v5;
    while (1)
    {
      if (v47)
      {
        v9 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
        if (v7 >= *(v46 + 16))
        {
          goto LABEL_24;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = [v9 homeEntityName];
      if (v12)
      {
        v14 = v0[14];
        v13 = v0[15];
        v15 = v0[12];
        v16 = v12;
        sub_252E36F34();

        sub_252E37024();

        v17 = *v48;
        (*v48)(v13, v14, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2529F7F74(0, v8[2] + 1, 1, v8);
        }

        v19 = v8[2];
        v18 = v8[3];
        v0 = i;
        if (v19 >= v18 >> 1)
        {
          v8 = sub_2529F7F74((v18 > 1), v19 + 1, 1, v8);
        }

        v20 = i[15];
        v21 = i[12];
        v8[2] = v19 + 1;
        v17(v8 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v19, v20, v21);
        v6 = v43;
        v5 = v44;
      }

      else
      {
      }

      ++v7;
      if (v11 == v6)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v6 = sub_252E378C4();
  }

  v8 = MEMORY[0x277D84F90];
LABEL_27:
  v22 = v8;
  v24 = v0[12];
  v23 = v0[13];
  v26 = v0[10];
  v25 = v0[11];
  v27 = v0[8];
  v28 = *(v0 + 160);

  v29 = v26[5];
  v30 = *(v23 + 56);
  v31 = 1;
  v30(&v25[v29], 1, 1, v24);
  v30(&v25[v26[8]], 1, 1, v24);
  *v25 = 0;
  v25[v26[6]] = 0;
  v25[v26[7]] = v28;
  *&v25[v26[9]] = v22;
  v32 = [v27 automatableTask];
  if (v32)
  {
    v33 = v32;
    type metadata accessor for ControlAutomateHomeIntent();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v35 = *(v34 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

      v36 = [v35 attribute];
      v31 = 0;
      v33 = v35;
    }

    else
    {
      v36 = 0;
    }

    v37 = i;
  }

  else
  {
    v36 = 0;
    v37 = i;
  }

  v38 = v37[9];
  static SemanticMapper.getSemanticKey(for:)(v36, v31, v38);
  sub_252956C98(v38, &v25[v29]);
  v39 = sub_252C07E14();
  v37[16] = v39;
  v49 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v40 = swift_task_alloc();
  v37[17] = v40;
  *v40 = v37;
  v40[1] = sub_2529CD40C;

  return v49(0xD000000000000020, 0x8000000252E6FD10, v39);
}

uint64_t sub_2529CD40C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_2529CD5FC;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_2529CD558;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529CD558()
{
  sub_2529D04D8(v0[11]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];
  v2 = v0[19];

  return v1(v2);
}

uint64_t sub_2529CD5FC()
{
  sub_2529D04D8(v0[11]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2529CD69C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_252E36324();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529CD768, 0, 0);
}

uint64_t sub_2529CD768()
{
  v1 = v0[8];
  sub_252929E74(v0[7] + 64, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = [v1 automatableTask];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for ControlAutomateHomeIntent();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if (v5 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v7 = 0;
    v28 = v5 & 0xFFFFFFFFFFFFFF8;
    v29 = v5 & 0xC000000000000001;
    v24 = v0[10];
    v8 = (v24 + 32);
    v9 = MEMORY[0x277D84F90];
    v26 = v0;
    v27 = v5;
    v25 = i;
    while (1)
    {
      if (v29)
      {
        v10 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
        if (v7 >= *(v28 + 16))
        {
          goto LABEL_24;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v13 = [v10 outerDeviceName];
      if (v13)
      {
        v14 = v0[11];
        v30 = v0[12];
        v15 = v0[9];
        v16 = v13;
        sub_252E36F34();

        sub_252E37024();

        v17 = *v8;
        (*v8)(v30, v14, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2529F7F74(0, *(v9 + 2) + 1, 1, v9);
        }

        v19 = *(v9 + 2);
        v18 = *(v9 + 3);
        v0 = v26;
        if (v19 >= v18 >> 1)
        {
          v9 = sub_2529F7F74((v18 > 1), v19 + 1, 1, v9);
        }

        v20 = v26[12];
        v21 = v26[9];
        *(v9 + 2) = v19 + 1;
        v17(&v9[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19], v20, v21);
        v5 = v27;
        i = v25;
      }

      else
      {
      }

      ++v7;
      if (v12 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_27:
  v0[13] = v9;

  v22 = swift_task_alloc();
  v0[14] = v22;
  *v22 = v0;
  v22[1] = sub_2529CDA9C;

  return sub_252C0D360(0, v9);
}

uint64_t sub_2529CDA9C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_2529CDC64;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_2529CDBE8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529CDBE8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];
  v2 = v0[16];

  return v1(v2);
}

uint64_t sub_2529CDC64()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2529CDCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[338] = a3;
  v3[337] = a2;
  v3[336] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541030, &qword_252E3FEB8);
  v3[339] = swift_task_alloc();
  v4 = sub_252E32BA4();
  v3[340] = v4;
  v3[341] = *(v4 - 8);
  v3[342] = swift_task_alloc();
  v3[343] = swift_task_alloc();
  v3[344] = swift_task_alloc();
  v3[345] = swift_task_alloc();
  v5 = sub_252E32E04();
  v3[346] = v5;
  v3[347] = *(v5 - 8);
  v3[348] = swift_task_alloc();
  v6 = sub_252E35BE4();
  v3[349] = v6;
  v3[350] = *(v6 - 8);
  v3[351] = swift_task_alloc();
  v7 = sub_252E35BF4();
  v3[352] = v7;
  v3[353] = *(v7 - 8);
  v3[354] = swift_task_alloc();
  v8 = sub_252E35C14();
  v3[355] = v8;
  v3[356] = *(v8 - 8);
  v3[357] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  v3[358] = swift_task_alloc();
  v3[359] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v3[360] = swift_task_alloc();
  v3[361] = swift_task_alloc();
  v3[362] = swift_task_alloc();
  v3[363] = swift_task_alloc();
  v9 = sub_252E34164();
  v3[364] = v9;
  v3[365] = *(v9 - 8);
  v3[366] = swift_task_alloc();
  v10 = sub_252E33DB4();
  v3[367] = v10;
  v3[368] = *(v10 - 8);
  v3[369] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529CE0C8, 0, 0);
}

uint64_t sub_2529CE0C8()
{
  v100 = v0;
  v1 = *(v0 + 2952);
  v2 = *(v0 + 2944);
  v3 = *(v0 + 2936);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540798, &qword_252E3F4E0);
  v4 = sub_252E34024();
  *(v0 + 2960) = v4;
  sub_252E34044();
  v5 = sub_252E33DA4();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  if (v5 == 0x6174616D6F747561 && v7 == 0xEF6B736154656C62 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = *(v0 + 2928);
    v9 = *(v0 + 2920);
    v10 = *(v0 + 2912);
    sub_252E340E4();
    sub_252AB3FEC(v8, 0, __src);
    (*(v9 + 8))(v8, v10);
    memcpy((v0 + 1528), __src, 0x1F8uLL);
    if (sub_252956B94((v0 + 1528)) == 1)
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_27F544DA8);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_252E379F4();

      __dst[0] = 0xD000000000000026;
      __dst[1] = 0x8000000252E6FC90;
      v12 = sub_252E340C4();
      MEMORY[0x2530AD570](v12);

      sub_252CC4050(__dst[0], __dst[1], 0xD000000000000086, 0x8000000252E6FBB0, 0xD000000000000028, 0x8000000252E6FC40, 79);

      sub_2529515FC(6, 1, 0xD000000000000015, 0x8000000252E6FCC0);
LABEL_8:
      type metadata accessor for HomeAutomationError(0);
      sub_2529D02E4(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
      swift_allocError();
      sub_252E340E4();
LABEL_9:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_10:

      v13 = *(v0 + 8);
LABEL_63:

      return v13();
    }

    memcpy(__dst, (v0 + 1528), 0x1F8uLL);
    v14 = sub_252BADB6C();
    memcpy((v0 + 2032), __dst, 0x1F8uLL);
    sub_252935408(v0 + 2032);
    v15 = [v4 automatableTask];
    if (v15)
    {
      v16 = v15;
      type metadata accessor for ControlAutomateHomeIntent();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

        v19 = type metadata accessor for MutableHomeUserTask();
        swift_allocObject();
        v20 = sub_252D6CA80(v18);
        v21 = [v14 value];
        if (v21)
        {
          type metadata accessor for MutableAttributeValue();
          swift_allocObject();
          v21 = sub_252D6CC80(v21);
        }

        swift_beginAccess();
        v20[4] = v21;

        v22 = sub_252D6CB58();
        v23 = [v4 automatableTask];
        if (v23)
        {
          v24 = v23;
          v25 = swift_dynamicCastClass();
          if (v25)
          {
            v26 = *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
            *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask) = v22;

            v27 = v4;
LABEL_42:
            v47 = *(v0 + 2688);
            __dst[3] = v19;
            __dst[0] = v20;
            type metadata accessor for AutomateHomeIntent();

            sub_252E33CC4();

            goto LABEL_62;
          }
        }

        v51 = v4;
        goto LABEL_42;
      }
    }

    v47 = *(v0 + 2688);
    type metadata accessor for AutomateHomeIntent();
    memset(__dst, 0, 32);
    sub_252E33CC4();

LABEL_62:
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541038, &unk_252E47570);
    (*(*(v90 - 8) + 56))(v47, 0, 1, v90);

    v13 = *(v0 + 8);
    goto LABEL_63;
  }

  if ((v5 != 0x72656767697274 || v7 != 0xE700000000000000) && (sub_252E37DB4() & 1) == 0)
  {
    sub_2529515FC(6, 1, 0xD000000000000017, 0x8000000252E6FB60);
    type metadata accessor for HomeAutomationError(0);
    sub_2529D02E4(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    *v48 = v5;
    v48[1] = v7;
    goto LABEL_9;
  }

  v28 = *(v0 + 2928);
  v29 = *(v0 + 2920);
  v30 = *(v0 + 2912);
  sub_252E340E4();
  sub_252AB3FEC(v28, 0, __dst);
  (*(v29 + 8))(v28, v30);
  memcpy((v0 + 520), __dst, 0x1F8uLL);
  memcpy((v0 + 16), __dst, 0x1F8uLL);
  if (sub_252956B94((v0 + 16)) == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v31 = sub_252E36AD4();
    __swift_project_value_buffer(v31, qword_27F544DA8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD000000000000024;
    __dst[1] = 0x8000000252E6FB80;
    v32 = sub_252E340C4();
    MEMORY[0x2530AD570](v32);

    sub_252CC4050(__dst[0], __dst[1], 0xD000000000000086, 0x8000000252E6FBB0, 0xD000000000000028, 0x8000000252E6FC40, 94);

    goto LABEL_8;
  }

  v33 = *(v0 + 2904);
  v34 = *(v0 + 2776);
  v35 = *(v0 + 2768);
  v36 = *(v34 + 56);
  *(v0 + 2968) = v36;
  *(v0 + 2976) = (v34 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v36(v33, 1, 1, v35);
  v37 = [v4 trigger];
  *(v0 + 2984) = v37;
  if (!v37)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v49 = *(v0 + 2904);
    v50 = sub_252E36AD4();
    __swift_project_value_buffer(v50, qword_27F544DA8);
    sub_252CC4050(0xD00000000000001BLL, 0x8000000252E6FC70, 0xD000000000000086, 0x8000000252E6FBB0, 0xD000000000000028, 0x8000000252E6FC40, 101);
    type metadata accessor for HomeAutomationError(0);
    sub_2529D02E4(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_25293847C(v0 + 520, &qword_27F5404C8, &unk_252E3FD60);

    sub_25293847C(v49, &qword_27F540F38, &unk_252E41490);
    goto LABEL_10;
  }

  v38 = v37;
  v39 = [v37 value];
  if (v39)
  {
    v40 = v39;
    type metadata accessor for EventTriggerValue(0);
    v41 = swift_dynamicCastClass();
    if (v41)
    {
      v42 = v41;
      v43 = *(v0 + 2904);
      sub_25293847C(v43, &qword_27F540F38, &unk_252E41490);
      v44 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate;
      swift_beginAccess();
      sub_252938414(v42 + v44, v43, &qword_27F540F38, &unk_252E41490);
    }
  }

  v45 = *(v0 + 56);
  if (v45 <= 1)
  {
    if (*(v0 + 56))
    {
      v46 = 4;
    }

    else
    {
      v46 = 3;
    }

    goto LABEL_51;
  }

  if (v45 == 2)
  {
    v46 = 1;
LABEL_51:
    v96 = v46;
    v95 = *(*(v0 + 2728) + 56);
    v95(*(v0 + 2872), 1, 1, *(v0 + 2720));
    v62 = [v38 recurrence];
    v94 = v36;
    if (v62)
    {
      v63 = v62;
      v97 = sub_252E37264();
    }

    else
    {
      v97 = 0;
    }

    v64 = *(v0 + 2896);
    v65 = *(v0 + 2888);
    v66 = *(v0 + 2872);
    v67 = *(v0 + 2864);
    v92 = *(v0 + 2720);
    v93 = *(v0 + 2768);
    sub_252938414(*(v0 + 2904), v64, &qword_27F540F38, &unk_252E41490);
    v91 = type metadata accessor for TriggerCondition();
    v68 = objc_allocWithZone(v91);
    v69 = sub_252E36F04();
    v70 = [v68 initWithIdentifier:0 displayString:v69 pronunciationHint:0];

    v71 = v70;
    [v71 setType_];
    sub_252938414(v66, v67, &qword_27F540F00, &unk_252E3FEC0);
    v72 = v65;
    sub_252938414(v64, v65, &qword_27F540F38, &unk_252E41490);
    v73 = type metadata accessor for EventTriggerValue(0);
    v74 = objc_allocWithZone(v73);
    v75 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset;
    v95(&v74[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_offset], 1, 1, v92);
    v76 = OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate;
    v94(&v74[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_recurringDate], 1, 1, v93);
    *&v74[OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event] = v96;
    swift_beginAccess();
    sub_2529D032C(v67, &v74[v75], &qword_27F540F00, &unk_252E3FEC0);
    swift_endAccess();
    swift_beginAccess();
    sub_2529D032C(v72, &v74[v76], &qword_27F540F38, &unk_252E41490);
    swift_endAccess();
    v77 = sub_252E36F04();
    *(v0 + 2672) = v74;
    *(v0 + 2680) = v73;
    v78 = objc_msgSendSuper2((v0 + 2672), sel_initWithIdentifier_displayString_pronunciationHint_, 0, v77, 0);

    sub_25293847C(v72, &qword_27F540F38, &unk_252E41490);
    sub_25293847C(v67, &qword_27F540F00, &unk_252E3FEC0);
    [v71 setValue_];

    if (v97)
    {
      v79 = sub_252E37254();
    }

    else
    {
      v79 = 0;
    }

    v80 = *(v0 + 2896);
    v81 = *(v0 + 2872);
    [v71 setRecurrence_];

    sub_25293847C(v80, &qword_27F540F38, &unk_252E41490);
    sub_25293847C(v81, &qword_27F540F00, &unk_252E3FEC0);
    v82 = *(v0 + 2960);
    v83 = v71;
    [v82 setTrigger_];
    v84 = v82;

    if (v83)
    {
      __dst[3] = v91;
      __dst[0] = v83;
LABEL_61:
      v86 = *(v0 + 2984);
      v87 = *(v0 + 2960);
      v88 = *(v0 + 2904);
      v47 = *(v0 + 2688);
      type metadata accessor for AutomateHomeIntent();
      v89 = v83;
      sub_252E33CC4();

      sub_25293847C(v0 + 520, &qword_27F5404C8, &unk_252E3FD60);
      sub_25293847C(v88, &qword_27F540F38, &unk_252E41490);
      goto LABEL_62;
    }

LABEL_60:
    v83 = 0;
    memset(__dst, 0, 32);
    goto LABEL_61;
  }

  if (v45 == 3)
  {
    v46 = 2;
    goto LABEL_51;
  }

  if (!*(v0 + 32))
  {
    v85 = *(v0 + 2960);
    goto LABEL_60;
  }

  v52 = *(v0 + 2832);
  v53 = *(v0 + 2824);
  v54 = *(v0 + 2816);
  v55 = *(v0 + 2808);
  v56 = *(v0 + 2800);
  v57 = *(v0 + 2792);
  memcpy((v0 + 1024), (v0 + 16), 0x1F8uLL);
  (*(v53 + 104))(v52, *MEMORY[0x277D56130], v54);
  (*(v56 + 104))(v55, *MEMORY[0x277D56128], v57);
  sub_252CC6450(MEMORY[0x277D84F90]);
  sub_252E35C04();
  sub_252E32DF4();
  v58 = swift_task_alloc();
  *(v0 + 2992) = v58;
  *v58 = v0;
  v58[1] = sub_2529CF1F8;
  v59 = *(v0 + 2856);
  v60 = *(v0 + 2784);

  return sub_252BAE648(v59, v60);
}

uint64_t sub_2529CF1F8(uint64_t a1)
{
  v2 = *(*v1 + 2856);
  v3 = *(*v1 + 2848);
  v4 = *(*v1 + 2840);
  v5 = *(*v1 + 2784);
  v6 = *(*v1 + 2776);
  v7 = *(*v1 + 2768);
  *(*v1 + 3000) = a1;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2529CF3B4, 0, 0);
}

uint64_t sub_2529CF3B4()
{
  v1 = *(v0 + 3000);
  if (v1)
  {
    v2 = [*(v0 + 3000) startDateComponents];
    if (v2)
    {
      v3 = *(v0 + 2760);
      v4 = *(v0 + 2752);
      v5 = *(v0 + 2728);
      v6 = *(v0 + 2720);
      v7 = v2;
      sub_252E32B24();

      (*(v5 + 32))(v3, v4, v6);
      v8 = [v1 dateInterval];
      v56 = v1;
      if (v8)
      {
        sub_252E32A74();

        v9 = 0;
      }

      else
      {
        v9 = 1;
      }

      v12 = *(v0 + 2984);
      v13 = *(v0 + 2760);
      v14 = *(v0 + 2744);
      v15 = *(v0 + 2728);
      v16 = *(v0 + 2720);
      v17 = *(v0 + 2712);
      v18 = sub_252E32A84();
      (*(*(v18 - 8) + 56))(v17, v9, 1, v18);
      sub_25293847C(v17, &qword_27F541030, &qword_252E3FEB8);
      v54 = *(v15 + 16);
      v54(v14, v13, v16);
      v19 = [v12 recurrence];
      if (v19)
      {
        v20 = v19;
        v55 = sub_252E37264();
      }

      else
      {
        v55 = 0;
      }

      v52 = *(v0 + 2968);
      v21 = *(v0 + 2888);
      v22 = *(v0 + 2880);
      v51 = *(v0 + 2768);
      v23 = *(v0 + 2744);
      v24 = *(v0 + 2736);
      v53 = *(v0 + 2728);
      v25 = *(v0 + 2720);
      sub_252938414(*(v0 + 2904), v22, &qword_27F540F38, &unk_252E41490);
      v26 = objc_allocWithZone(type metadata accessor for TriggerCondition());
      v27 = sub_252E36F04();
      v28 = [v26 initWithIdentifier:0 displayString:v27 pronunciationHint:0];

      v29 = v28;
      [v29 setType_];
      v54(v24, v23, v25);
      sub_252938414(v22, v21, &qword_27F540F38, &unk_252E41490);
      v30 = type metadata accessor for TimeTriggerValue(0);
      v31 = objc_allocWithZone(v30);
      v32 = OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate;
      v52(&v31[OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate], 1, 1, v51);
      v54(&v31[OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate], v24, v25);
      swift_beginAccess();
      sub_2529D032C(v21, &v31[v32], &qword_27F540F38, &unk_252E41490);
      swift_endAccess();
      v31[OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_isDateInterval] = v8 != 0;
      v33 = sub_252E36F04();
      *(v0 + 2656) = v31;
      *(v0 + 2664) = v30;
      v34 = objc_msgSendSuper2((v0 + 2656), sel_initWithIdentifier_displayString_pronunciationHint_, 0, v33, 0);

      sub_25293847C(v21, &qword_27F540F38, &unk_252E41490);
      v35 = *(v53 + 8);
      v35(v24, v25);
      [v29 setValue_];

      if (v55)
      {
        v36 = sub_252E37254();
      }

      else
      {
        v36 = 0;
      }

      v37 = *(v0 + 2880);
      v38 = *(v0 + 2760);
      v39 = *(v0 + 2744);
      v40 = *(v0 + 2720);
      [v29 setRecurrence_];

      sub_25293847C(v37, &qword_27F540F38, &unk_252E41490);
      v35(v39, v40);
      v35(v38, v40);
      v41 = *(v0 + 2960);
      v11 = v29;
      [v41 setTrigger_];
      v42 = v41;

      if (v11)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }
  }

  v10 = *(v0 + 2960);
LABEL_7:
  v11 = 0;
LABEL_16:
  v43 = *(v0 + 2984);
  v44 = *(v0 + 2960);
  v45 = *(v0 + 2904);
  v46 = *(v0 + 2688);
  type metadata accessor for AutomateHomeIntent();
  v47 = v11;
  sub_252E33CC4();

  sub_25293847C(v0 + 520, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v45, &qword_27F540F38, &unk_252E41490);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541038, &unk_252E47570);
  (*(*(v48 - 8) + 56))(v46, 0, 1, v48);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_2529CFA80()
{
  v0 = sub_252E34164();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *(sub_252B680FC(v2) + 72) = 1;

  sub_252E340E4();
  sub_252AB3FEC(v4, 0, v12);
  (*(v1 + 8))(v4, v0);
  memcpy(v13, v12, sizeof(v13));
  memcpy(v14, v12, sizeof(v14));
  if (sub_252956B94(v14) != 1)
  {
    v7 = BYTE1(v14[1]);
    if (BYTE1(v14[1]) > 1u)
    {
      if (BYTE1(v14[1]) == 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = sub_252E37DB4();

      if (v8)
      {
LABEL_11:
        sub_252E339E4();
        return sub_25293847C(v13, &qword_27F5404C8, &unk_252E3FD60);
      }

      if (v7)
      {
LABEL_10:
        swift_bridgeObjectRelease_n();
        goto LABEL_11;
      }

      v9 = sub_252E37DB4();

      if (v9)
      {
        goto LABEL_11;
      }
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544DA8);
    sub_252CC3D90(0x676E696C646E6148, 0xEE007475706E6920, 0xD00000000000008DLL, 0x8000000252E6FAD0);
    sub_252E339F4();
    return sub_25293847C(v13, &qword_27F5404C8, &unk_252E3FD60);
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E6FAA0, 0xD00000000000008DLL, 0x8000000252E6FAD0);
  return sub_252E33A04();
}

uint64_t sub_2529CFDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_2529CDCDC(a1, a2, a3);
}

uint64_t sub_2529CFE50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_2529CC354(a1, a2);
}

uint64_t sub_2529CFEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AutomateHomeNeedsValueStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9BF8](a1, a2, v9, a4);
}

uint64_t sub_2529CFFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AutomateHomeNeedsValueStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C00](a1, a2, v9, a4);
}

uint64_t sub_2529D0084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for AutomateHomeNeedsValueStrategy();
  *v12 = v6;
  v12[1] = sub_25294B954;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_2529D0160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for AutomateHomeNeedsValueStrategy();
  *v14 = v7;
  v14[1] = sub_25294B954;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_2529D028C(uint64_t a1, uint64_t a2)
{
  result = sub_2529D02E4(&qword_27F541028, a2, type metadata accessor for AutomateHomeNeedsValueStrategy, asc_252E3FE28);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2529D02E4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2529D032C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_2529D0394()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_2529CD69C(v2, v3);
}

uint64_t sub_2529D042C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_2529CCE38(v2, v3, v4);
}

uint64_t sub_2529D04D8(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationPromptForUserTaskParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2529D0538()
{
  v1 = v0;
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  HomeFilter.Builder.init()();
  v3 = *(*v2 + 568);

  v5 = v3(v4);

  v6 = *(v0 + 24);
  v7 = *(v1 + 32);
  v8 = *(*v5 + 576);

  v9 = v8(v6, v7);

  v10 = (*(*v9 + 592))(*(v1 + 40));

  v11 = (*(*v10 + 600))(*(v1 + 48));

  v12 = *(v1 + 56);
  v13 = *(v1 + 64);
  v14 = *(*v11 + 608);

  v15 = v14(v12, v13);

  v16 = (*(*v15 + 624))(*(v1 + 72));

  v17 = *(v1 + 80);
  v18 = *(v1 + 88);
  v19 = *(*v16 + 632);

  v20 = v19(v17, v18);

  v21 = *(v1 + 96);
  v22 = *(v1 + 104);
  v23 = *(*v20 + 648);

  v24 = v23(v21, v22);

  v25 = *(v1 + 112);
  v26 = *(v1 + 120);
  v27 = *(*v24 + 664);

  v28 = v27(v25, v26);

  v29 = *(v1 + 128);
  v30 = *(v1 + 136);
  v31 = *(*v28 + 680);

  v32 = v31(v29, v30);

  v33 = (*(*v32 + 728))(*(v1 + 144));

  v34 = (*(*v33 + 736))(*(v1 + 145));

  v36 = (*(*v34 + 760))(v35);

  return v36;
}

void *sub_2529D09E8()
{

  return v0;
}

uint64_t sub_2529D0A38()
{
  sub_2529D09E8();

  return swift_deallocClassInstance();
}

uint64_t sub_2529D0A90(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v4 = (v1 + 16);
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  v5 = [a1 entityIdentifiers];
  if (v5)
  {
    v6 = v5;
    v7 = sub_252E37264();
  }

  else
  {
    v7 = 0;
  }

  *v4 = v7;

  v8 = [a1 homeEntityName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_252E36F34();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v2 + 24) = v10;
  *(v2 + 32) = v12;

  *(v2 + 40) = [a1 entityType];
  *(v2 + 48) = [a1 outerDeviceType];
  v13 = [a1 outerDeviceName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_252E36F34();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  *(v2 + 56) = v15;
  *(v2 + 64) = v17;

  *(v2 + 72) = [a1 deviceType];
  v18 = [a1 homeName];
  if (v18)
  {
    v19 = v18;
    v20 = sub_252E36F34();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  *(v2 + 80) = v20;
  *(v2 + 88) = v22;

  v23 = [a1 zoneName];
  if (v23)
  {
    v24 = v23;
    v25 = sub_252E36F34();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  *(v2 + 96) = v25;
  *(v2 + 104) = v27;

  v28 = [a1 groupName];
  if (v28)
  {
    v29 = v28;
    v30 = sub_252E36F34();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  *(v2 + 112) = v30;
  *(v2 + 120) = v32;

  v33 = [a1 roomName];
  if (v33)
  {
    v34 = v33;
    v35 = sub_252E36F34();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  *(v2 + 128) = v35;
  *(v2 + 136) = v37;

  v38 = [a1 isExcludeFilter];
  sub_252956D08();
  v39 = sub_252E37674();
  if (v38)
  {
    v40 = sub_252E37694();

    v39 = v38;
  }

  else
  {
    v40 = 0;
  }

  *(v2 + 144) = v40 & 1;
  v41 = [a1 hasAllQuantifier];
  v42 = sub_252E37674();
  if (v41)
  {
    v43 = sub_252E37694();

    v42 = v41;
  }

  else
  {
    v43 = 0;
  }

  *(v2 + 145) = v43 & 1;
  return v2;
}

uint64_t sub_2529D0DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[142] = v3;
  v4[141] = a3;
  v4[140] = a2;
  v4[139] = a1;
  v5 = sub_252E34014();
  v4[143] = v5;
  v4[144] = *(v5 - 8);
  v4[145] = swift_task_alloc();
  v4[146] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529D0EA8, 0, 0);
}

uint64_t sub_2529D0EA8(uint64_t a1)
{
  v46 = v1;
  v2 = v1[141];
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    goto LABEL_34;
  }

  v4 = sub_252C285F0();
  v5 = v4;
  __dst[0] = v3;
  if (v4 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      v16 = MEMORY[0x277D84F90];
      goto LABEL_19;
    }

    v49 = v2;
    v8 = 0;
    v2 = v5 & 0xC000000000000001;
LABEL_7:
    if (v2)
    {
      break;
    }

    if (v8 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v5 + 32 + 8 * v8);
      goto LABEL_10;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

  v9 = MEMORY[0x2530ADF00](v8, v5);
LABEL_10:
  v10 = v9;
  if (__OFADD__(v8++, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v12 = sub_252DA6828();
  v13 = *(v12 + 2);
  v14 = 32;
  do
  {
    if (!v13)
    {

      if (v8 != i)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }

    v15 = *&v12[v14];
    v14 += 8;
    --v13;
  }

  while (v15 != 13);

  sub_252E37A94();
  sub_252E37AC4();
  sub_252E37AD4();
  sub_252E37AA4();
  if (v8 != i)
  {
    goto LABEL_7;
  }

LABEL_17:
  v16 = __dst[0];
  v2 = v49;
  v7 = MEMORY[0x277D84F90];
LABEL_19:

  __dst[0] = v7;
  if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
  {
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *(v16 + 16);
  }

  v17 = 0;
  v3 = MEMORY[0x277D84F90];
  while (v5 != v17)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x2530ADF00](v17, v16);
    }

    else
    {
      if (v17 >= *(v16 + 16))
      {
        goto LABEL_44;
      }

      v18 = *(v16 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v21 = sub_252DA124C(0);

    ++v17;
    if (v21)
    {
      MEMORY[0x2530AD700]();
      if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v3 = __dst[0];
      v17 = v20;
    }
  }

LABEL_34:
  v1[147] = v3;
  v22 = v1[142];
  v23 = v1[140];
  v24 = swift_allocObject();
  v1[148] = v24;
  v24[2] = v22;
  v24[3] = v3;
  v24[4] = v23;
  v25 = v23;

  if (v2)
  {
    v26 = v22[6];
    v27 = v1[141];
    __swift_project_boxed_opaque_existential_1(v22 + 3, v26);
    v28 = type metadata accessor for HomeAutomationSecuritySystemResponses();
    v29 = swift_allocObject();
    v1[149] = v29;
    *(v29 + 16) = 0;
    *(v29 + 24) = v3;
    memcpy(v1 + 2, v22 + 14, 0x1F8uLL);
    v30 = v25;

    memcpy(__dst, v22 + 14, 0x1F8uLL);
    v31 = v30;

    sub_2529D291C((v1 + 2), (v1 + 65));
    v32 = sub_252953488(v25, __dst, 0);
    v1[150] = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
    v33 = swift_allocObject();
    v1[151] = v33;
    *(v33 + 16) = xmmword_252E3C280;
    *(v33 + 32) = 0xD000000000000017;
    *(v33 + 40) = 0x8000000252E6FE70;
    v34 = MEMORY[0x277D839B0];
    *(v33 + 48) = 0;
    *(v33 + 72) = v34;
    strcpy((v33 + 80), "intentContext");
    *(v33 + 94) = -4864;
    v35 = type metadata accessor for HomeAutomationIntentContext(0);
    *(v33 + 96) = v32;
    *(v33 + 120) = v35;
    *(v33 + 128) = 0x65736E6F70736572;
    *(v33 + 168) = v28;
    *(v33 + 136) = 0xE900000000000073;
    *(v33 + 144) = v29;
    v49 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

    v36 = swift_task_alloc();
    v1[152] = v36;
    *v36 = v1;
    v36[1] = sub_2529D1500;
    v37 = v49;

    return v37(0xD000000000000025, 0x8000000252E6FE40, v33);
  }

  else
  {

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v39 = v1[142];
    v40 = sub_252E36AD4();
    __swift_project_value_buffer(v40, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v41 = v39[12];
    v42 = v39[13];
    __swift_project_boxed_opaque_existential_1(v39 + 9, v41);
    sub_252AD7CC4();
    v43 = swift_task_alloc();
    v1[158] = v43;
    *v43 = v1;
    v43[1] = sub_2529D18FC;
    v44 = v1[146];
    v48 = v42;

    return sub_252BDB88C((v1 + 128), &unk_252E3FFE0, v24, v44, 0, 0, 0, v41);
  }
}

uint64_t sub_2529D1500(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1224) = a1;
  *(v3 + 1232) = v1;

  if (v1)
  {
    v4 = sub_2529D1830;
  }

  else
  {
    v4 = sub_2529D1638;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2529D1638()
{
  v1 = v0[141];
  v2 = v0[140];

  swift_bridgeObjectRelease_n();
  v3 = swift_task_alloc();
  v0[155] = v3;
  *v3 = v0;
  v3[1] = sub_2529D1718;

  return sub_252E174F4(v1);
}

uint64_t sub_2529D1718(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1248) = a1;
  *(v3 + 1256) = v1;

  if (v1)
  {
    v4 = sub_2529D1BC8;
  }

  else
  {
    v4 = sub_2529D1A6C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2529D1830()
{
  v1 = v0[141];
  v2 = v0[140];

  swift_bridgeObjectRelease_n();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2529D18FC()
{
  v2 = *(*v1 + 1168);
  v3 = *(*v1 + 1152);
  v4 = *(*v1 + 1144);
  *(*v1 + 1272) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2529D20FC;
  }

  else
  {
    v5 = sub_2529D1FD4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529D1A6C()
{
  v1 = v0 + 138;
  v2 = v0[156];
  v3 = v0[153];
  v0[138] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[142];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[160] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[161] = v11;
  *v11 = v0;
  v11[1] = sub_2529D1C54;
  v12 = v0[145];

  return sub_252BDB88C((v0 + 133), &unk_252E3F140, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_2529D1BC8()
{
  v1 = *(v0 + 1128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2529D1C54()
{
  v2 = *(*v1 + 1160);
  v3 = *(*v1 + 1152);
  v4 = *(*v1 + 1144);
  *(*v1 + 1296) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2529D1F24;
  }

  else
  {

    v5 = sub_2529D1DD4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529D1DD4()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1120);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 1248);
  v9 = *(v0 + 1224);
  v10 = *(v0 + 1128);
  (*(v4 + 112))(v7, v0 + 1064, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1064));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2529D1F24()
{
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1128);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2529D1FD4()
{
  v1 = v0[142];
  v2 = v0[140];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 128, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 128);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2529D20FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2529D2174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[130] = a3;
  v3[129] = a2;
  v3[128] = a1;
  return MEMORY[0x2822009F8](sub_2529D219C, 0, 0);
}

uint64_t sub_2529D219C()
{
  v16 = v0;
  v1 = v0[130];
  v2 = v0[129];
  v3 = v0[128];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v4 = type metadata accessor for HomeAutomationSecuritySystemResponses();
  v5 = swift_allocObject();
  v0[131] = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v2;
  memcpy(v0 + 2, v3 + 14, 0x1F8uLL);

  v6 = v1;

  memcpy(__dst, v3 + 14, sizeof(__dst));

  v7 = v6;
  sub_2529D291C((v0 + 2), (v0 + 65));
  v8 = sub_252953488(v1, __dst, 0);
  v0[132] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v9 = swift_allocObject();
  v0[133] = v9;
  *(v9 + 16) = xmmword_252E3C280;
  *(v9 + 32) = 0xD000000000000017;
  *(v9 + 40) = 0x8000000252E6FE70;
  v10 = MEMORY[0x277D839B0];
  *(v9 + 48) = 0;
  *(v9 + 72) = v10;
  strcpy((v9 + 80), "intentContext");
  *(v9 + 94) = -4864;
  v11 = type metadata accessor for HomeAutomationIntentContext(0);
  *(v9 + 96) = v8;
  *(v9 + 120) = v11;
  *(v9 + 128) = 0x65736E6F70736572;
  *(v9 + 168) = v4;
  *(v9 + 136) = 0xE900000000000073;
  *(v9 + 144) = v5;
  v14 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v12 = swift_task_alloc();
  v0[134] = v12;
  *v12 = v0;
  v12[1] = sub_2529D23F0;

  return v14(0xD000000000000025, 0x8000000252E6FE40, v9);
}