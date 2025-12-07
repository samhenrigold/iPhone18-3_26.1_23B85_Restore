uint64_t type metadata accessor for _ProtoColorElement(uint64_t a1)
{
  result = qword_28157AA30;
  if (!qword_28157AA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A33B040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoColor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _ProtoColorElement.color.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoColorElement(0) + 24);
  sub_26A13440C();
  sub_26A33B040(a1, v1 + v3);
  v4 = type metadata accessor for _ProtoColor(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

uint64_t _ProtoColorElement.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for _ProtoColorElement(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t static _ProtoColorElement.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370908, &qword_26A432968) - 8;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = *(type metadata accessor for _ProtoColorElement(0) + 24);
  v16 = *(v11 + 56);
  sub_26A291178(a1 + v15, v14);
  sub_26A291178(a2 + v15, &v14[v16]);
  OUTLINED_FUNCTION_14_9(v14);
  if (v17)
  {
    OUTLINED_FUNCTION_14_9(&v14[v16]);
    if (v17)
    {
      sub_26A13440C();
      goto LABEL_11;
    }

LABEL_9:
    sub_26A13440C();
LABEL_13:
    v19 = 0;
    return v19 & 1;
  }

  sub_26A291178(v14, v10);
  OUTLINED_FUNCTION_14_9(&v14[v16]);
  if (v17)
  {
    sub_26A33B408(v10);
    goto LABEL_9;
  }

  sub_26A33B040(&v14[v16], v6);
  v18 = static _ProtoColor.== infix(_:_:)();
  sub_26A33B408(v6);
  sub_26A33B408(v10);
  sub_26A13440C();
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((sub_26A0DB6A0(*a1, *a2) & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_26A424794();
  sub_26A33C4C4();
  v19 = sub_26A424B64();
  return v19 & 1;
}

uint64_t sub_26A33B408(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoColor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A33B464(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoColor(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A33B728(a1, v4);
  return _ProtoColorElement.color.setter(v4);
}

void (*_ProtoColorElement.color.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  v10 = *(type metadata accessor for _ProtoColorElement(0) + 24);
  *(v3 + 10) = v10;
  sub_26A291178(v1 + v10, v6);
  OUTLINED_FUNCTION_14_9(v6);
  if (v11)
  {
    type metadata accessor for _ProtoColor.OneOf_Value(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_14_9(v6);
    if (!v11)
    {
      sub_26A13440C();
    }
  }

  else
  {
    sub_26A33B040(v6, v9);
  }

  return sub_26A33B648;
}

void sub_26A33B648(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 10);
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    sub_26A33B728((*a1)[4], v5);
    sub_26A13440C();
    sub_26A33B040(v5, v8 + v4);
    OUTLINED_FUNCTION_70();
    sub_26A33B408(v6);
  }

  else
  {
    sub_26A13440C();
    sub_26A33B040(v6, v8 + v4);
    OUTLINED_FUNCTION_70();
  }

  free(v6);
  free(v5);
  free(v7);

  free(v3);
}

uint64_t sub_26A33B728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoColor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _ProtoColorElement.hasColor.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_8_33();
  sub_26A291178(v0 + *(v4 + 24), v1);
  v5 = type metadata accessor for _ProtoColor(0);
  v6 = __swift_getEnumTagSinglePayload(v1, 1, v5) != 1;
  sub_26A13440C();
  return v6;
}

Swift::Void __swiftcall _ProtoColorElement.clearColor()()
{
  type metadata accessor for _ProtoColorElement(0);
  sub_26A13440C();
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _ProtoColorElement.idioms.setter()
{
  OUTLINED_FUNCTION_14_4();

  *v1 = v0;
  return result;
}

uint64_t _ProtoColorElement.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoColorElement(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t _ProtoColorElement.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoColorElement(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

void (*_ProtoColorElement.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  type metadata accessor for _ProtoColorElement(0);
  return nullsub_1;
}

uint64_t sub_26A33BA38()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372CA0);
  __swift_project_value_buffer(v0, qword_280372CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "color";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "idioms";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t static _ProtoColorElement._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C608 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_280372CA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _ProtoColorElement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_26A424834();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v9 = OUTLINED_FUNCTION_5_6();
      sub_26A1FD7CC(v9, v10, v11, v12);
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_5_6();
      sub_26A33BD1C(v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t sub_26A33BD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoColorElement(0);
  type metadata accessor for _ProtoColor(0);
  sub_26A33C4C4();
  return sub_26A424944();
}

uint64_t _ProtoColorElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A33BE94(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      sub_26A11EF50();
      sub_26A4249D4();
    }

    type metadata accessor for _ProtoColorElement(0);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A33BE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for _ProtoColor(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _ProtoColorElement(0);
  sub_26A291178(a1 + *(v11 + 24), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A33B040(v7, v10);
  sub_26A33C4C4();
  sub_26A424A84();
  return sub_26A33B408(v10);
}

uint64_t _ProtoColorElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoColorElement(0);
  sub_26A33C4C4();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A33C160(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A33C4C4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A33C270(uint64_t a1)
{
  v2 = sub_26A33C4C4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A33C328(uint64_t a1, uint64_t a2)
{
  sub_26A33C4C4();

  return sub_26A4249B4();
}

void sub_26A33C3D0(uint64_t a1)
{
  sub_26A11FDC8();
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      sub_26A33C46C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A33C46C(uint64_t a1)
{
  if (!qword_28157B5B8[0])
  {
    type metadata accessor for _ProtoColor(255);
    v1 = sub_26A424E44();
    if (!v2)
    {
      atomic_store(v1, qword_28157B5B8);
    }
  }
}

unint64_t sub_26A33C4C4()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_33()
{

  return type metadata accessor for _ProtoColorElement(0);
}

uint64_t sub_26A33C528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  v65 = MEMORY[0x277D84F90];
  sub_26A10D50C(0, v7, 0, a4, a5, a6, a7);
  v10 = v65;
  v11 = a1 + 32;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDC0, &qword_26A426948) + 32);
  do
  {
    v13 = *(a2 + v12);
    sub_26A33E100(v11, &v58);
    sub_26A33E100(&v58, v60);
    v64 = v13;
    sub_26A33E138(&v58);
    v63 = v8;
    object = TableRow.Content.description(redacted:)(v13)._object;
    OUTLINED_FUNCTION_84_0();
    if (v16)
    {
      v17 = v15;

      OUTLINED_FUNCTION_12_28(0, 1);
      v8 = v18;
      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_12_28(v19 > 1, v20 + 1);
        v8 = v53;
      }

      *(v8 + 16) = v20 + 1;
      v21 = (v8 + 32 * v20);
      v21[4] = 0;
      v21[5] = 0;
      v21[6] = v17;
      v21[7] = object;
      v63 = v8;
    }

    else
    {
    }

    v58 = v61;
    v59 = 0;
    sub_26A4251B4();
    v23 = v22;
    OUTLINED_FUNCTION_84_0();
    if (v25)
    {
      v26 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_28(0, *(v8 + 16) + 1);
        v8 = v54;
      }

      v28 = *(v8 + 16);
      v27 = *(v8 + 24);
      if (v28 >= v27 >> 1)
      {
        OUTLINED_FUNCTION_12_28(v27 > 1, v28 + 1);
        v8 = v55;
      }

      *(v8 + 16) = v28 + 1;
      v29 = v8 + 32 * v28;
      *(v29 + 32) = xmmword_26A43F1C0;
      *(v29 + 48) = v26;
      *(v29 + 56) = v23;
      v63 = v8;
    }

    else
    {
    }

    v30 = 0xE700000000000000;
    v31 = 0x746C7561666564;
    switch(v62)
    {
      case 1:
        v31 = 0x676E696461656CLL;
        break;
      case 2:
        v30 = 0xE600000000000000;
        v31 = 0x7265746E6563;
        break;
      case 3:
        v30 = 0xE800000000000000;
        v31 = 0x676E696C69617274;
        break;
      default:
        break;
    }

    if ((v30 & 0xF00000000000000) != 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_12_28(0, *(v8 + 16) + 1);
        v8 = isUniquelyReferenced_nonNull_native;
      }

      v40 = *(v8 + 16);
      v39 = *(v8 + 24);
      if (v40 >= v39 >> 1)
      {
        OUTLINED_FUNCTION_12_28(v39 > 1, v40 + 1);
        v8 = isUniquelyReferenced_nonNull_native;
      }

      *(v8 + 16) = v40 + 1;
      v41 = v8 + 32 * v40;
      *(v41 + 32) = xmmword_26A43F1D0;
      *(v41 + 48) = v31;
      *(v41 + 56) = v30;
      v63 = v8;
    }

    else
    {
    }

    sub_26A101358(isUniquelyReferenced_nonNull_native, v33, v34, v35, v36, v37, v38);
    v43 = v42;
    v45 = v44;
    sub_26A0E48F0(v60, &qword_280372CD0, &qword_26A43F210);
    v65 = v10;
    v51 = *(v10 + 16);
    v50 = *(v10 + 24);
    if (v51 >= v50 >> 1)
    {
      sub_26A10D50C(v50 > 1, v51 + 1, 1, v46, v47, v48, v49);
      v10 = v65;
    }

    *(v10 + 16) = v51 + 1;
    v52 = v10 + 16 * v51;
    *(v52 + 32) = v43;
    *(v52 + 40) = v45;
    v11 += 64;
    --v7;
    v8 = MEMORY[0x277D84F90];
  }

  while (v7);
  return v10;
}

void TableHeader.cells.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C888, &qword_26A440D90);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v4 = &v42 - v3;
  v5 = type metadata accessor for _ProtoTable.Content(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for _ProtoTable.HeaderCell(0);
  OUTLINED_FUNCTION_24();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v18 = *v0;
  v19 = *(*v0 + 16);
  if (v19)
  {
    v50 = MEMORY[0x277D84F90];
    sub_26A10D9EC(0, v19, 0);
    v20 = v50;
    v21 = v10;
    v22 = v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v43 = *(v21 + 72);
    *&v23 = 134217984;
    v42 = v23;
    v44 = v8;
    v45 = v5;
    do
    {
      sub_26A33E1E0();
      sub_26A33E1E0();
      sub_26A10FD9C();
      if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
      {
        v24 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
        OUTLINED_FUNCTION_18_26(v8, v25, v26, v24);
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        v27 = *(v5 + 24);
        v28 = type metadata accessor for _ProtoOptionalInt(0);
        OUTLINED_FUNCTION_18_26(&v8[v27], v29, v30, v28);
        if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
        {
          sub_26A0E48F0(v4, &qword_28036C888, &qword_26A440D90);
        }
      }

      else
      {
        sub_26A33E234();
      }

      sub_26A3B145C();
      *&v49[20] = *v14;
      v31 = *(v14 + 8);
      if ((*(v14 + 16) & 1) == 0)
      {
        if (qword_28036C5A0 != -1)
        {
          swift_once();
        }

        v32 = sub_26A424AE4();
        __swift_project_value_buffer(v32, qword_2803A8950);
        v33 = sub_26A424AD4();
        v34 = sub_26A424E04();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = v42;
          *(v35 + 4) = v31;
          _os_log_impl(&dword_26A0B8000, v33, v34, "Unhandled column alignment value: %ld", v35, 0xCu);
          MEMORY[0x26D65C950](v35, -1, -1);
        }

        LOBYTE(v31) = 0;
      }

      sub_26A33E288(v14, type metadata accessor for _ProtoTable.HeaderCell);
      sub_26A33E288(v17, type metadata accessor for _ProtoTable.HeaderCell);
      v49[24] = v31;
      v50 = v20;
      v37 = *(v20 + 16);
      v36 = *(v20 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_26A10D9EC((v36 > 1), v37 + 1, 1);
        v20 = v50;
      }

      *(v20 + 16) = v37 + 1;
      v38 = (v20 + (v37 << 6));
      v39 = v47;
      v40 = v48;
      v41 = *v49;
      *(v38 + 73) = *&v49[9];
      v38[3] = v40;
      v38[4] = v41;
      v38[2] = v39;
      v8 = v44;
      v22 += v43;
      --v19;
      v5 = v45;
    }

    while (v19);
  }

  OUTLINED_FUNCTION_75();
}

uint64_t TableHeader.init(_:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_26A33CFDC(a1, a2, a3, sub_26A33E038);
}

{
  return sub_26A33CFDC(a1, a2, a3, sub_26A33E4E0);
}

uint64_t sub_26A33CD60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = type metadata accessor for _ProtoTable.HeaderCell(0);
  MEMORY[0x28223BE20](v18);
  v8 = *(a2 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v15 = a1;
    v16 = a3;
    v17 = a4;
    v20 = MEMORY[0x277D84F90];
    sub_26A10DA0C(0, v8, 0);
    v9 = v20;
    v10 = a2 + 32;
    do
    {
      v11 = sub_26A33E100(v10, v19);
      MEMORY[0x28223BE20](v11);
      *(&v15 - 2) = v19;
      sub_26A33E498(&qword_280372CE8, type metadata accessor for _ProtoTable.HeaderCell, &protocol conformance descriptor for _ProtoTable.HeaderCell);
      sub_26A4249C4();
      sub_26A33E138(v19);
      v20 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_26A10DA0C(v12 > 1, v13 + 1, 1);
        v9 = v20;
      }

      *(v9 + 16) = v13 + 1;
      sub_26A33E234();
      v10 += 64;
      --v8;
    }

    while (v8);
    a3 = v16;
    a4 = v17;
    a1 = v15;
  }

  *a1 = v9;

  a1[1] = a3;
  a1[2] = a4;
  return result;
}

uint64_t sub_26A33CFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoTable.Header(0);
  OUTLINED_FUNCTION_4_39();
  sub_26A33E498(v4, v5, &protocol conformance descriptor for _ProtoTable.Header);
  sub_26A4249C4();
}

uint64_t TableHeader.init(_:)(uint64_t a1)
{
  return sub_26A33D0BC(a1, sub_26A33E4E0);
}

{
  return sub_26A33D0BC(a1, sub_26A33E4E0);
}

uint64_t sub_26A33D0BC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoTable.Header(0);
  OUTLINED_FUNCTION_4_39();
  sub_26A33E498(v2, v3, &protocol conformance descriptor for _ProtoTable.Header);
  sub_26A4249C4();
}

Swift::String __swiftcall TableHeader.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for TableHeader(0);
  v4 = OUTLINED_FUNCTION_41(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v5);
  v7 = v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDC0, &qword_26A426948) - 8;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = v34 - v10;
  sub_26A33E1E0();
  sub_26A33E1E0();
  sub_26A33E234();
  v11[*(v8 + 40)] = v2;
  sub_26A33E288(v7, type metadata accessor for TableHeader);
  *&v11[*(v8 + 36)] = MEMORY[0x277D84F90];
  TableHeader.cells.getter();
  v18 = sub_26A33C528(v12, v11, v13, v14, v15, v16, v17);

  sub_26A3A2C20(v18, 0, 0, 0);

  KeyPath = swift_getKeyPath();
  sub_26A0F7FC0(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v20, v21, v22, v23, v34[0], v34[1]);

  sub_26A102034(v24, v25, v26, v27, v28, v29, v30);
  sub_26A0E48F0(v11, &qword_28036CDC0, &qword_26A426948);
  OUTLINED_FUNCTION_75();
  result._object = v32;
  result._countAndFlagsBits = v31;
  return result;
}

uint64_t sub_26A33D37C@<X0>(uint64_t *a1@<X8>)
{
  result = TableHeader.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A33D3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoTable.Content(0);
  MEMORY[0x28223BE20](v4);
  sub_26A3B1280();
  v5 = *(type metadata accessor for _ProtoTable.HeaderCell(0) + 28);
  sub_26A0E48F0(a1 + v5, &qword_28036C888, &qword_26A440D90);
  sub_26A33E234();
  result = __swift_storeEnumTagSinglePayload(a1 + v5, 0, 1, v4);
  *a1 = *(a2 + 52);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 16) = 1;
  return result;
}

__n128 TableHeader.HeaderCell.init(_:columnSpan:alignment:)@<Q0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  *(a4 + 48) = *(a1 + 48);
  *(a4 + 52) = a2;
  *(a4 + 56) = v4;
  return result;
}

Swift::String __swiftcall TableHeader.HeaderCell.description(redacted:)(Swift::Bool redacted)
{
  sub_26A33E100(v1, v25);
  sub_26A33E100(v25, v26);
  v30 = redacted;
  sub_26A33E138(v25);
  v29 = MEMORY[0x277D84F90];
  object = TableRow.Content.description(redacted:)(redacted)._object;
  OUTLINED_FUNCTION_84_0();
  if (v5)
  {
    v6 = v4;

    sub_26A168154(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = v7;
    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_26A168154(v9 > 1, v10 + 1, 1, v7);
      v8 = v23;
    }

    *(v8 + 16) = v10 + 1;
    v13 = (v8 + 32 * v10);
    v13[4] = 0;
    v13[5] = 0;
    v13[6] = v6;
    v13[7] = object;
    v29 = v8;
  }

  else
  {
  }

  v25[0] = 0;
  sub_26A146A18(v27, 0x70536E6D756C6F63, 0xEA00000000006E61, 0, v11, v12);
  sub_26A1468F8(v28, 0x6E656D6E67696C61, 0xE900000000000074, 0);
  sub_26A101358(v14, v15, v16, v17, v18, v19, v20);
  sub_26A0E48F0(v26, &qword_280372CD0, &qword_26A43F210);
  v21 = OUTLINED_FUNCTION_175();
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

void _ProtoTable.Header.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v2 = type metadata accessor for _ProtoVisualProperty(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17();
  v81 = v4 - v5;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_48();
  v80 = v7;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v79 = v10 - v11;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_48();
  v78 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  OUTLINED_FUNCTION_41(v14);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  v84 = &v77 - v16;
  v17 = type metadata accessor for _ProtoTable.Content(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17();
  v91 = v19 - v20;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v21);
  v83 = &v77 - v22;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_48();
  v86 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C888, &qword_26A440D90);
  v26 = OUTLINED_FUNCTION_41(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_48();
  v96 = v31;
  type metadata accessor for _ProtoTable.HeaderCell(0);
  OUTLINED_FUNCTION_24();
  v89 = v33;
  v90 = v32;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17();
  v97 = v34 - v35;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v36);
  v38 = &v77 - v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_48();
  v93 = v40;
  OUTLINED_FUNCTION_5_44();
  v41 = v17;
  sub_26A33E1E0();
  v42 = *v1;
  v88 = *(*v1 + 16);
  if (!v88)
  {
LABEL_24:
    OUTLINED_FUNCTION_75();
    return;
  }

  v43 = 0;
  v44 = &qword_28036C888;
  v82 = v1;
  v85 = v29;
  v92 = v41;
  v87 = v38;
  while (v43 < *(v42 + 16))
  {
    v95 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v94 = *(v89 + 72) * v43;
    v45 = v44;
    v46 = v93;
    sub_26A33E1E0();
    v47 = v92;
    sub_26A33E1E0();
    v48 = *(v90 + 28);
    v49 = v96;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v49, 1, v47) == 1)
    {
      sub_26A33E288(v46, type metadata accessor for _ProtoTable.HeaderCell);
      sub_26A0E48F0(v96, v45, &qword_26A440D90);
      v44 = v45;
      goto LABEL_20;
    }

    sub_26A0E48F0(v96, v45, &qword_26A440D90);
    sub_26A10FD9C();
    v44 = v45;
    if (__swift_getEnumTagSinglePayload(v29, 1, v47) == 1)
    {
      v50 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
      v51 = v86;
      OUTLINED_FUNCTION_18_26(v86, v52, v53, v50);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v54 = v47;
      v55 = *(v47 + 24);
      v56 = type metadata accessor for _ProtoOptionalInt(0);
      OUTLINED_FUNCTION_18_26(v51 + v55, v57, v58, v56);
      v59 = v54;
      v60 = v51;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v59);
      v62 = v84;
      if (EnumTagSinglePayload != 1)
      {
        sub_26A0E48F0(v85, v44, &qword_26A440D90);
      }
    }

    else
    {
      v60 = v86;
      sub_26A33E234();
      v62 = v84;
    }

    sub_26A33E1E0();
    sub_26A10FD9C();
    v63 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
    if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
    {
      sub_26A33E288(v60, type metadata accessor for _ProtoTable.Content);
      OUTLINED_FUNCTION_0_65();
      v65 = v93;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v67 = v93;
        if (EnumCaseMultiPayload == 1)
        {
          v68 = v78;
          sub_26A33E234();
          _ProtoMultilineTextProperty.redactedProto.getter();
          sub_26A33E288(v68, type metadata accessor for _ProtoMultilineTextProperty);
        }

        else
        {
          v73 = v80;
          sub_26A33E234();
          _ProtoVisualProperty.redactedProto.getter();
          sub_26A33E288(v73, type metadata accessor for _ProtoVisualProperty);
        }

        OUTLINED_FUNCTION_1_54();
        sub_26A33E288(v86, v69);
        OUTLINED_FUNCTION_0_65();
        sub_26A33E288(v67, v70);
        v71 = v91;
        sub_26A0E48F0(v91, &qword_28036C8B0, &unk_26A425E60);
        sub_26A33E234();
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v71, 0, 1, v63);
        goto LABEL_19;
      }

      sub_26A33E288(v86, type metadata accessor for _ProtoTable.Content);
      OUTLINED_FUNCTION_0_65();
      sub_26A33E288(v93, v72);
      v64 = type metadata accessor for _ProtoTable.Content.OneOf_Value;
      v65 = v62;
    }

    sub_26A33E288(v65, v64);
LABEL_19:
    sub_26A33E234();
    v74 = v97;
    sub_26A0E48F0(v97 + v48, v44, &qword_26A440D90);
    sub_26A33E234();
    __swift_storeEnumTagSinglePayload(v74 + v48, 0, 1, v92);
    v1 = v82;
    v29 = v85;
LABEL_20:
    v75 = v87;
    sub_26A33E234();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A33E168(v42);
      v42 = v76;
    }

    if (v43 >= *(v42 + 16))
    {
      goto LABEL_26;
    }

    ++v43;
    sub_26A33E17C(v75, v42 + v95 + v94);
    *v1 = v42;
    if (v88 == v43)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t type metadata accessor for TableHeader(uint64_t a1)
{
  result = qword_280372CD8;
  if (!qword_280372CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A33E17C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoTable.HeaderCell(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A33E1E0()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A33E234()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A33E288(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A33E350(uint64_t a1)
{
  result = type metadata accessor for _ProtoTable.Header(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10SnippetKit8TableRowV7ContentO(uint64_t a1)
{
  if ((*(a1 + 49) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 49) & 3;
  }
}

uint64_t sub_26A33E3D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 57))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 49);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A33E418(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 49) = -a2;
    }
  }

  return result;
}

uint64_t sub_26A33E498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_12_28(uint64_t a1, uint64_t a2)
{

  sub_26A168154(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_15_33()
{

  return type metadata accessor for _ProtoTable.Header(0);
}

uint64_t OUTLINED_FUNCTION_18_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t static _ProtoCoreChart.== infix(_:_:)(void *a1, void *a2)
{
  if ((MEMORY[0x26D65B4F0](*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for _ProtoCoreChart(0);
  sub_26A424794();
  sub_26A33F034(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_26A424B64() & 1;
}

uint64_t type metadata accessor for _ProtoCoreChart(uint64_t a1)
{
  result = qword_28157AB98;
  if (!qword_28157AB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _ProtoCoreChart.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_26A426400;
  type metadata accessor for _ProtoCoreChart(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoCoreChart.data.getter()
{
  v1 = *v0;
  sub_26A0E45C0(*v0, *(v0 + 8));
  return v1;
}

uint64_t _ProtoCoreChart.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26A0E4784(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t _ProtoCoreChart.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoCoreChart(0) + 20);
  v4 = sub_26A424794();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _ProtoCoreChart.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoCoreChart(0) + 20);
  v4 = sub_26A424794();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_26A33E8CC()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280372CF0);
  __swift_project_value_buffer(v0, qword_280372CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26A426410;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "data";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_26A424AA4();
}

uint64_t static _ProtoCoreChart._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C610 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_280372CF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _ProtoCoreChart.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_26A424834();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_26A4248C4();
    }
  }

  return result;
}

uint64_t _ProtoCoreChart.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v5 = v3;
      v6 = v3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v5 = *(v3 + 16);
      v6 = *(v3 + 24);
LABEL_6:
      if (v5 != v6)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v4 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      result = sub_26A424A14();
      if (!v2)
      {
LABEL_8:
        type metadata accessor for _ProtoCoreChart(0);
        return sub_26A424774();
      }

      return result;
  }
}

uint64_t _ProtoCoreChart.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoCoreChart(0);
  sub_26A33F034(&qword_28036D540, type metadata accessor for _ProtoCoreChart, &protocol conformance descriptor for _ProtoCoreChart);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A33ED48(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A33F034(&qword_280372D18, type metadata accessor for _ProtoCoreChart, &protocol conformance descriptor for _ProtoCoreChart);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A33EE58(uint64_t a1)
{
  v2 = sub_26A33F034(&qword_28036D538, type metadata accessor for _ProtoCoreChart, &protocol conformance descriptor for _ProtoCoreChart);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A33EF10(uint64_t a1, uint64_t a2)
{
  sub_26A33F034(&qword_28036D538, type metadata accessor for _ProtoCoreChart, &protocol conformance descriptor for _ProtoCoreChart);

  return sub_26A4249B4();
}

uint64_t sub_26A33EFB8(uint64_t a1)
{
  result = sub_26A424794();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A33F034(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _ProtoSlider.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17();
  v69 = v4 - v5;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_47();
  v68 = v7;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47();
  v66[1] = v9;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v10);
  v66[0] = v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v13 = OUTLINED_FUNCTION_41(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  v67 = v14 - v15;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_47();
  v70 = v17;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47();
  v71 = v19;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  v22 = v66 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v66 - v24;
  OUTLINED_FUNCTION_3_49();
  sub_26A340D0C();
  v26 = *(type metadata accessor for _ProtoSlider(0) + 20);
  v27 = *(a1 + v26);
  OUTLINED_FUNCTION_142(v27 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__leadingThumbnail, v73);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v2);
  sub_26A0E48F0(v25, &qword_28036CAE8, &unk_26A426430);
  v29 = MEMORY[0x277D84F90];
  v30 = EnumTagSinglePayload == 1;
  v31 = v2;
  if (!v30)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v22);
    if (v30)
    {
      v39 = v66[0];
      *v66[0] = v29;
      *(v39 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v32 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v32);
      OUTLINED_FUNCTION_3_6(v22);
      if (!v30)
      {
        sub_26A0E48F0(v22, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      v39 = v66[0];
      sub_26A340D60();
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_2_46();
    sub_26A340DB4(v39, v40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a1 + v26);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for _ProtoSlider._StorageClass(0);
      swift_allocObject();
      v27 = sub_26A15B28C(v27);
      *(a1 + v26) = v27;
    }

    v42 = v71;
    sub_26A340D60();
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v2);
    v43 = OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__leadingThumbnail;
    swift_beginAccess();
    sub_26A33F6B4(v42, v27 + v43);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v27 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__trailingThumbnail, v72);
  v44 = v70;
  sub_26A10FD9C();
  v45 = __swift_getEnumTagSinglePayload(v44, 1, v31);
  sub_26A0E48F0(v44, &qword_28036CAE8, &unk_26A426430);
  if (v45 != 1)
  {
    v46 = v67;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v46);
    if (v30)
    {
      v54 = v68;
      *v68 = v29;
      *(v54 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v47 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v51, v52, v53, v47);
      OUTLINED_FUNCTION_3_6(v46);
      if (!v30)
      {
        sub_26A0E48F0(v46, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      v54 = v68;
      sub_26A340D60();
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_2_46();
    sub_26A340DB4(v54, v55);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(a1 + v26);
    if ((v56 & 1) == 0)
    {
      type metadata accessor for _ProtoSlider._StorageClass(0);
      swift_allocObject();
      v57 = sub_26A15B28C(v57);
      *(a1 + v26) = v57;
    }

    v58 = v71;
    sub_26A340D60();
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v31);
    v59 = OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__trailingThumbnail;
    swift_beginAccess();
    sub_26A33F6B4(v58, v57 + v59);
    swift_endAccess();
  }

  v60 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(a1 + v26);
  if ((v60 & 1) == 0)
  {
    type metadata accessor for _ProtoSlider._StorageClass(0);
    swift_allocObject();
    v61 = sub_26A15B28C(v61);
    *(a1 + v26) = v61;
  }

  v62 = (v61 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__invocationPayload);
  swift_beginAccess();
  v63 = *v62;
  v64 = v62[1];
  *v62 = xmmword_26A426400;
  return sub_26A0E4784(v63, v64);
}

uint64_t sub_26A33F6B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Slider.identifier.getter()
{
  v1 = type metadata accessor for _ProtoSlider(0);
  OUTLINED_FUNCTION_142(*(v0 + *(v1 + 20)) + 16, v3);

  return OUTLINED_FUNCTION_175();
}

double Slider.minimum.getter()
{
  v1 = *(v0 + *(type metadata accessor for _ProtoSlider(0) + 20));
  OUTLINED_FUNCTION_142(v1 + 32, v3);
  return *(v1 + 32);
}

double Slider.maximum.getter()
{
  v1 = *(v0 + *(type metadata accessor for _ProtoSlider(0) + 20));
  OUTLINED_FUNCTION_142(v1 + 40, v3);
  return *(v1 + 40);
}

uint64_t sub_26A33F838(void *a1)
{
  v3 = type metadata accessor for _ProtoOptionalDouble(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D8D8, &qword_26A429A50);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v20[-v14 - 8];
  v16 = type metadata accessor for _ProtoSlider(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v16 + 20)) + *a1, v20);
  sub_26A10FD9C();
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v15, 1, v3);
  sub_26A0E48F0(v15, &qword_28036D8D8, &qword_26A429A50);
  v17 = 0;
  if (a1 != 1)
  {
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
    {
      *v7 = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v12, 1, v3) != 1)
      {
        sub_26A0E48F0(v12, &qword_28036D8D8, &qword_26A429A50);
      }
    }

    else
    {
      sub_26A340D60();
    }

    v17 = *v7;
    sub_26A340DB4(v7, type metadata accessor for _ProtoOptionalDouble);
  }

  return v17;
}

uint64_t sub_26A33FA68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v31[-v15 - 8];
  v17 = type metadata accessor for _ProtoSlider(0);
  OUTLINED_FUNCTION_142(*(v2 + *(v17 + 20)) + *a1, v31);
  sub_26A10FD9C();
  v18 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v4);
  v20 = v30;
  sub_26A0E48F0(v16, &qword_28036CAE8, &unk_26A426430);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v13, 1, v4) == 1)
    {
      *v8 = MEMORY[0x277D84F90];
      *(v8 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v21 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v21);
      if (__swift_getEnumTagSinglePayload(v13, 1, v4) != 1)
      {
        sub_26A0E48F0(v13, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A340D60();
    }

    sub_26A340D60();
    v18 = 0;
  }

  v28 = type metadata accessor for VisualProperty(0);
  return __swift_storeEnumTagSinglePayload(v20, v18, 1, v28);
}

uint64_t Slider.invocationPayload.getter()
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = (*(v0 + *(type metadata accessor for _ProtoSlider(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__invocationPayload);
  OUTLINED_FUNCTION_142(v2, v22);
  v4 = *v2;
  v3 = v2[1];
  sub_26A0E45C0(v4, v3);
  v5 = sub_26A4246B4();
  sub_26A0E4784(v4, v3);
  v21[0] = 0;
  v6 = [v1 propertyListWithData:v5 options:0 format:0 error:v21];

  if (v6)
  {
    v7 = v21[0];
    sub_26A424E64();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FB50, &qword_26A43B4F0);
    if (swift_dynamicCast())
    {
      return v20;
    }
  }

  else
  {
    v9 = v21[0];
    v10 = sub_26A4245B4();

    swift_willThrow();
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v11 = sub_26A424AE4();
    __swift_project_value_buffer(v11, qword_2803A8950);
    v12 = v10;
    v13 = sub_26A424AD4();
    v14 = sub_26A424DF4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[0] = v16;
      *v15 = 136446210;
      swift_getErrorValue();
      v17 = sub_26A4254B4();
      v19 = sub_26A0E8788(v17, v18, v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_26A0B8000, v13, v14, "Failed to deserialize invocationPayload data to dictionary: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x26D65C950](v16, -1, -1);
      MEMORY[0x26D65C950](v15, -1, -1);
    }

    else
    {
    }
  }

  return sub_26A424B24();
}

uint64_t Slider.init(identifier:minimum:maximum:step:initialValue:leadingThumbnail:trailingThumbnail:invocationPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a12)
{
  type metadata accessor for _ProtoSlider(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  sub_26A340C68();
  sub_26A4249C4();

  if (!v16)
  {
    sub_26A340D60();
  }

  sub_26A0E48F0(a8, &qword_28036CB00, &unk_26A426450);
  return sub_26A0E48F0(a7, &qword_28036CB00, &unk_26A426450);
}

uint64_t sub_26A340150(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v53 = a10;
  v52 = a9;
  v50 = a8;
  LODWORD(v51) = a7;
  v49 = a6;
  v61 = *MEMORY[0x277D85DE8];
  v16 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v16 - 8);
  v55 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v18 - 8);
  v54 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D8D8, &qword_26A429A50);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  v26 = type metadata accessor for _ProtoOptionalDouble(0);
  MEMORY[0x28223BE20](v26);
  v28 = (&v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v31 = (&v48 - v30);

  _ProtoSlider.identifier.setter();
  v32 = *(type metadata accessor for _ProtoSlider(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(a1 + v32);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for _ProtoSlider._StorageClass(0);
    swift_allocObject();
    v34 = sub_26A15B28C(v34);
    *(a1 + v32) = v34;
  }

  swift_beginAccess();
  v34[4] = a2;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(a1 + v32);
  if ((v35 & 1) == 0)
  {
    type metadata accessor for _ProtoSlider._StorageClass(0);
    swift_allocObject();
    v36 = sub_26A15B28C(v36);
    *(a1 + v32) = v36;
  }

  swift_beginAccess();
  v36[5] = a3;
  if ((v51 & 1) == 0)
  {
    v51 = v12;
    swift_beginAccess();
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
    {
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
      {
        sub_26A0E48F0(v25, &qword_28036D8D8, &qword_26A429A50);
      }
    }

    else
    {
      sub_26A340D60();
    }

    *v31 = v49;
    _ProtoSlider.step.setter(v31);
  }

  if ((v52 & 1) == 0)
  {
    swift_beginAccess();
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v22, 1, v26) == 1)
    {
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v22, 1, v26) != 1)
      {
        sub_26A0E48F0(v22, &qword_28036D8D8, &qword_26A429A50);
      }
    }

    else
    {
      sub_26A340D60();
    }

    *v28 = v50;
    _ProtoSlider.initialValue.setter(v28);
  }

  sub_26A10FD9C();
  if (v57)
  {
    sub_26A0D671C(&v56, v58);
    v37 = v59;
    v38 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    (*(v38 + 8))(v37, v38);
    v39 = v55;
    sub_26A340D60();
    _ProtoSlider.leadingThumbnail.setter(v39);
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  else
  {
    sub_26A0E48F0(&v56, &qword_28036CB00, &unk_26A426450);
    v39 = v55;
  }

  sub_26A10FD9C();
  if (v57)
  {
    sub_26A0D671C(&v56, v58);
    v40 = v59;
    v41 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    (*(v41 + 8))(v40, v41);
    sub_26A340D60();
    _ProtoSlider.trailingThumbnail.setter(v39);
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  else
  {
    sub_26A0E48F0(&v56, &qword_28036CB00, &unk_26A426450);
  }

  v42 = objc_opt_self();
  v43 = sub_26A424B04();
  v58[0] = 0;
  v44 = [v42 dataWithPropertyList:v43 format:200 options:0 error:v58];

  v45 = v58[0];
  if (v44)
  {
    sub_26A4246D4();

    return _ProtoSlider.invocationPayload.setter();
  }

  else
  {
    v47 = v45;
    sub_26A4245B4();

    return swift_willThrow();
  }
}

unint64_t sub_26A340C68()
{
  result = qword_28036D918;
  if (!qword_28036D918)
  {
    type metadata accessor for _ProtoSlider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D918);
  }

  return result;
}

uint64_t type metadata accessor for Slider(uint64_t a1)
{
  result = qword_280372D20;
  if (!qword_280372D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A340D0C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A340D60()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A340DB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A340E38(uint64_t a1)
{
  result = type metadata accessor for _ProtoSlider(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_26()
{

  return type metadata accessor for _ProtoSlider(0);
}

void OUTLINED_FUNCTION_15_34(uint64_t a1, unsigned int a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, double a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = a2 | 0x6D756D00000000;

  sub_26A0F75D8(a1, v31, 0xE700000000000000, 0, a13, a14, a15, a16, a3, a4, a5, a6, a7, a8, a9, a10, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t VisualizationImage.visual.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = &v21[-v4 - 8];
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  v10 = type metadata accessor for _ProtoVisualization_Image(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v10 + 20)) + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual, v21);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_15(v5);
  if (v11)
  {
    *v9 = MEMORY[0x277D84F90];
    *(v9 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v12 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
    OUTLINED_FUNCTION_15(v5);
    if (!v11)
    {
      sub_26A0E48F0(v5, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A3433C4();
  }

  return sub_26A3433C4();
}

void sub_26A341114()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v26 = v3;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_93_0();
  v14 = type metadata accessor for _ProtoVisualization_Image(0);
  OUTLINED_FUNCTION_142(*(v0 + *(v14 + 20)) + *v2, &v27);
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v15, v16, &unk_26A425BF0);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      *v7 = MEMORY[0x277D84F90];
      *(v7 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v18 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v18);
      OUTLINED_FUNCTION_38_0();
      if (!v17)
      {
        sub_26A0E48F0(v12, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A3433C4();
    }

    sub_26A3433C4();
    v2 = 0;
  }

  v25 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v26, v2, 1, v25);
  OUTLINED_FUNCTION_75();
}

void VisualizationImage.action.getter()
{
  OUTLINED_FUNCTION_76();
  v18 = v2;
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_93_0();
  v13 = type metadata accessor for _ProtoVisualization_Image(0);
  OUTLINED_FUNCTION_142(*(v0 + *(v13 + 20)) + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action, &v19);
  OUTLINED_FUNCTION_127_0();
  v14 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v14, v15, &off_26A427400);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v16)
    {
      *v6 = MEMORY[0x277D84F90];
      v6[1] = 0;
      v6[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v16)
      {
        sub_26A0E48F0(v11, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A3433C4();
    }

    sub_26A3433C4();
    v1 = 0;
  }

  v17 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v18, v1, 1, v17);
  OUTLINED_FUNCTION_75();
}

uint64_t VisualizationImage.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoVisualization_Image(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

uint64_t VisualizationImage.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoVisualization_Image(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoVisualization_Image.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v115 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  v109 = (v104 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  v114 = v104 - v10;
  v113 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v14);
  v105 = (v104 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v17 = OUTLINED_FUNCTION_41(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47();
  v112 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  v24 = v104 - v23;
  v25 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  v29 = v104 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v31 = OUTLINED_FUNCTION_41(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  v34 = v104 - v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_3_50();
  sub_26A343838();
  v36 = *(type metadata accessor for _ProtoVisualization_Image(0) + 20);
  v116 = v2;
  v117 = v36;
  v37 = *(v2 + v36);
  OUTLINED_FUNCTION_142(v37 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual, &v122);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v25);
  sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v34);
    if (v39)
    {
      *v29 = MEMORY[0x277D84F90];
      *(v29 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v40 = v115;
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v115);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v40);
      OUTLINED_FUNCTION_17_3(v34);
      v47 = v116;
      v48 = v117;
      if (!v39)
      {
        sub_26A0E48F0(v34, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A3433C4();
      v47 = v116;
      v48 = v117;
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A343418(v29, type metadata accessor for _ProtoVisualProperty);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v47 + v48);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v50);
      OUTLINED_FUNCTION_24_33();
      v37 = v51;
      *(v47 + v48) = v51;
    }

    sub_26A3433C4();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v25);
    OUTLINED_FUNCTION_211(v37 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual, v121);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v37 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1, v121);
  sub_26A10FD9C();
  v55 = v113;
  v56 = __swift_getEnumTagSinglePayload(v24, 1, v113);
  sub_26A0E48F0(v24, &qword_28036C7B8, &unk_26A425BF0);
  if (v56 == 1)
  {
    v57 = v115;
    v58 = v116;
    v59 = v117;
  }

  else
  {
    v60 = v104[3];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_15(v60);
    v58 = v116;
    v59 = v117;
    if (v39)
    {
      v61 = v105;
      *v105 = MEMORY[0x277D84F90];
      *(v61 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v57 = v115;
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v115);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v57);
      OUTLINED_FUNCTION_15(v60);
      if (!v39)
      {
        sub_26A0E48F0(v60, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A3433C4();
      v57 = v115;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_13_30();
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v58 + v59);
    if ((v68 & 1) == 0)
    {
      v69 = type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v69);
      OUTLINED_FUNCTION_24_33();
      v37 = v70;
      *(v58 + v59) = v70;
    }

    sub_26A3433C4();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v55);
    OUTLINED_FUNCTION_211(v37 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text1, v120);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v37 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, v120);
  v74 = v111;
  sub_26A10FD9C();
  v75 = v55;
  v76 = __swift_getEnumTagSinglePayload(v74, 1, v55);
  sub_26A0E48F0(v74, &qword_28036C7B8, &unk_26A425BF0);
  if (v76 != 1)
  {
    v77 = v106;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v77, 1, v75) == 1)
    {
      v78 = v107;
      *v107 = MEMORY[0x277D84F90];
      *(v78 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v57);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v57);
      if (__swift_getEnumTagSinglePayload(v77, 1, v75) != 1)
      {
        sub_26A0E48F0(v77, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A3433C4();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_13_30();
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v58 + v59);
    if ((v85 & 1) == 0)
    {
      v86 = type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v86);
      OUTLINED_FUNCTION_24_33();
      v37 = v87;
      *(v58 + v59) = v87;
    }

    sub_26A3433C4();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v75);
    OUTLINED_FUNCTION_211(v37 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__text2, v119);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v37 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action, v119);
  v91 = v114;
  sub_26A10FD9C();
  v92 = __swift_getEnumTagSinglePayload(v91, 1, v57);
  sub_26A0E48F0(v91, &off_28036C7C0, &off_26A427400);
  if (v92 != 1)
  {
    v93 = v108;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v93);
    v94 = v117;
    if (v39)
    {
      v95 = v109;
      *v109 = MEMORY[0x277D84F90];
      *(v95 + 8) = 0;
      *(v95 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_17_3(v93);
      v96 = v110;
      if (!v39)
      {
        sub_26A0E48F0(v93, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v95 = v109;
      sub_26A3433C4();
      v96 = v110;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v96);
    sub_26A343418(v95, type metadata accessor for _ProtoActionProperty);
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v98 = *(v58 + v94);
    if ((v97 & 1) == 0)
    {
      v99 = type metadata accessor for _ProtoVisualization_Image._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v99);
      sub_26A311400();
      v98 = v100;
      *(v58 + v94) = v100;
    }

    sub_26A3433C4();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v101, v102, v103, v57);
    OUTLINED_FUNCTION_211(v98 + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__action, &v118);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t VisualizationImage.init(visual:text1:text2:action:componentName:linkIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for _ProtoVisualization_Image(0);
  OUTLINED_FUNCTION_2_47();
  sub_26A343710(v12, v13, &protocol conformance descriptor for _ProtoVisualization_Image);
  sub_26A4249C4();

  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a3, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A342240(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v59 = a8;
  v60 = a1;
  v67 = a6;
  v68 = a7;
  v63 = a4;
  v64 = a5;
  v61 = a3;
  v10 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v12 - 8);
  v66 = &v53 - v13;
  v65 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v65);
  v55 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v56 = &v53 - v16;
  v17 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v17 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v18 - 8);
  v62 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v23 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v23);
  v54 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v57 = &v53 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v53 - v28;
  v30 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v30 - 8);
  v31 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v31 - 8);
  v32 = a2[3];
  v33 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v32);
  (*(v33 + 8))(v32, v33);
  sub_26A3433C4();
  _ProtoVisualization_Image.visual.setter();
  sub_26A10FD9C();
  v34 = v70;
  if (v70)
  {
    v35 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    (*(v35 + 8))(v34, v35);
    sub_26A3433C4();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
    __swift_destroy_boxed_opaque_existential_1(v69);
    if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
    {
      sub_26A3433C4();
      sub_26A343838();
      _ProtoVisualization_Image.text1.setter();
      sub_26A343418(v29, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v69, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
  }

  sub_26A0E48F0(v22, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v36 = v70;
  if (v70)
  {
    v37 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    (*(v37 + 8))(v36, v37);
    v38 = v62;
    sub_26A3433C4();
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v23);
    __swift_destroy_boxed_opaque_existential_1(v69);
    if (__swift_getEnumTagSinglePayload(v38, 1, v23) != 1)
    {
      v39 = v54;
      sub_26A3433C4();
      sub_26A343838();
      _ProtoVisualization_Image.text2.setter();
      sub_26A343418(v39, type metadata accessor for _ProtoTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v69, &qword_28036CB08, &unk_26A428720);
    v38 = v62;
    __swift_storeEnumTagSinglePayload(v62, 1, 1, v23);
  }

  sub_26A0E48F0(v38, &qword_28036C7B8, &unk_26A425BF0);
LABEL_11:
  sub_26A10FD9C();
  v40 = v70;
  if (v70)
  {
    v41 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    (*(v41 + 8))(v40, v41);
    v42 = v66;
    sub_26A3433C4();
    v43 = v65;
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v65);
    __swift_destroy_boxed_opaque_existential_1(v69);
    if (__swift_getEnumTagSinglePayload(v42, 1, v43) != 1)
    {
      v44 = v56;
      sub_26A3433C4();
      sub_26A343838();
      _ProtoVisualization_Image.action.setter();
      sub_26A343418(v44, type metadata accessor for _ProtoActionProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v69, &qword_28036CAF8, &unk_26A426D30);
    v42 = v66;
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v65);
  }

  sub_26A0E48F0(v42, &off_28036C7C0, &off_26A427400);
LABEL_16:
  v45 = v68;

  result = _ProtoVisualization_Image.componentName.setter(v67, v45, v46, v47, v48);
  if (a9)
  {

    return _ProtoVisualization_Image.linkIdentifier.setter(v59, a9, v50, v51, v52);
  }

  return result;
}

uint64_t VisualizationImage.init(visual:text1:text2:action:componentName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_26A0E5D68(a1, v16);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  type metadata accessor for _ProtoVisualization_Image(0);
  OUTLINED_FUNCTION_2_47();
  sub_26A343710(v10, v11, &protocol conformance descriptor for _ProtoVisualization_Image);
  sub_26A4249C4();

  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(a3);
  OUTLINED_FUNCTION_164_0(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v13, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v14);
  OUTLINED_FUNCTION_164_0(v15);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

void VisualizationImage.init(visual:text1:text2:action:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v9 = v6;
  sub_26A0E5D68(v6, v17);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A0E5D68(v17, v13);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  type metadata accessor for _ProtoVisualization_Image(0);
  OUTLINED_FUNCTION_2_47();
  sub_26A343710(v7, v8, &protocol conformance descriptor for _ProtoVisualization_Image);
  sub_26A4249C4();
  sub_26A0E48F0(v1, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v3);
  OUTLINED_FUNCTION_164_0(v5);
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_26A0E48F0(&v14, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(&v15);
  OUTLINED_FUNCTION_164_0(&v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  sub_26A0E48F0(v10, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v11);
  OUTLINED_FUNCTION_164_0(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall VisualizationImage.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v68 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = &v66 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v67 = &v66 - v12;
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v17);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  v21 = type metadata accessor for VisualizationImage(0);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v23);
  v25 = &v66 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDB0, &qword_26A43F5D0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  v29 = &v66 - v28;
  OUTLINED_FUNCTION_10_45();
  sub_26A343838();
  if (v2)
  {
    _ProtoVisualization_Image.redactedProto.getter();
  }

  else
  {
    sub_26A343838();
  }

  sub_26A3433C4();
  v29[*(v26 + 32)] = v2 & 1;
  sub_26A343418(v25, type metadata accessor for VisualizationImage);
  v30 = MEMORY[0x277D84F90];
  *&v29[*(v26 + 28)] = MEMORY[0x277D84F90];
  v31 = type metadata accessor for _ProtoVisualization_Image(0);
  OUTLINED_FUNCTION_142(*&v29[*(v31 + 20)] + OBJC_IVAR____TtCV10SnippetKit25_ProtoVisualization_ImageP33_30B3E187C9B3B14CE5EF49DE15908FB513_StorageClass__visual, &v69);
  v32 = v67;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_17_3(v32);
  if (v33)
  {
    *v16 = v30;
    *(v16 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v34 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v34);
    OUTLINED_FUNCTION_17_3(v32);
    if (!v33)
    {
      sub_26A0E48F0(v32, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A3433C4();
  }

  sub_26A3433C4();
  type metadata accessor for VisualProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  sub_26A104B80(v20, 0x6C6175736976, 0xE600000000000000);
  sub_26A0E48F0(v20, &qword_28036CB20, &unk_26A426470);
  VisualizationImage.text1.getter();
  sub_26A104B58(v9, 0x3174786574, 0xE500000000000000);
  sub_26A0E48F0(v9, &qword_28036CB30, &qword_26A426480);
  VisualizationImage.text2.getter();
  sub_26A104B58(v9, 0x3274786574, 0xE500000000000000);
  sub_26A0E48F0(v9, &qword_28036CB30, &qword_26A426480);
  v45 = v68;
  VisualizationImage.action.getter();
  sub_26A104A54();
  sub_26A0E48F0(v45, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F77C8(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v47, v48, v49, v50, v66, v67);

  v51 = swift_getKeyPath();
  sub_26A0F83B4(v51, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v52, v53, v54, v55, v66, v67);

  sub_26A0FADA4(v56, v57, v58, v59, v60, v61, v62);
  sub_26A0E48F0(v29, &qword_28036CDB0, &qword_26A43F5D0);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v64;
  result._countAndFlagsBits = v63;
  return result;
}

uint64_t type metadata accessor for VisualizationImage(uint64_t a1)
{
  result = qword_280372D30;
  if (!qword_280372D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A3433C4()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A343418(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t VisualizationImage.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoVisualization_Image(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_3_50();
  sub_26A343838();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_11_32();
  sub_26A3433C4();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t VisualizationImage.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for VisualizationImage(0);
  *(inited + 64) = &protocol witness table for VisualizationImage;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_10_45();
  sub_26A343838();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A343710(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A343710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A3437CC(uint64_t a1)
{
  result = type metadata accessor for _ProtoVisualization_Image(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A343838()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_13_30()
{

  return sub_26A343418(v0, type metadata accessor for _ProtoTextProperty);
}

void OUTLINED_FUNCTION_24_33()
{

  sub_26A311400();
}

uint64_t OUTLINED_FUNCTION_29_19()
{

  return type metadata accessor for _ProtoVisualization_Image(0);
}

uint64_t ReferenceStandard.text1.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - v3;
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  type metadata accessor for _ProtoReference_Standard(0);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v4, 1, v5);
  if (v10)
  {
    *v9 = MEMORY[0x277D84F90];
    *(v9 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v11 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
    OUTLINED_FUNCTION_37(v4, 1, v5);
    if (!v10)
    {
      sub_26A0E48F0(v4, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A344C58();
  }

  return sub_26A344C58();
}

uint64_t ReferenceStandard.action.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = (v4 - v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  type metadata accessor for _ProtoReference_Standard(0);
  sub_26A10FD9C();
  v14 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v1);
  v16 = v25;
  sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    v17 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v17, v18, v1);
    if (v19)
    {
      *v5 = MEMORY[0x277D84F90];
      v5[1] = 0;
      v5[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v20 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v20, v21, v1);
      if (!v19)
      {
        sub_26A0E48F0(v10, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A344C58();
    }

    sub_26A344C58();
    v14 = 0;
  }

  v22 = type metadata accessor for ActionProperty(0);
  return __swift_storeEnumTagSinglePayload(v16, v14, 1, v22);
}

uint64_t _ProtoReference_Standard.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v59 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v58 = (v3 - v4);
  MEMORY[0x28223BE20](v5);
  v57 = (&v55 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v56 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v55 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - v27;
  OUTLINED_FUNCTION_0_66();
  sub_26A344C04();
  v60 = type metadata accessor for _ProtoReference_Standard(0);
  v29 = *(v60 + 24);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v14);
  sub_26A0E48F0(v28, &qword_28036C7B8, &unk_26A425BF0);
  v31 = MEMORY[0x277D84F90];
  v32 = EnumTagSinglePayload == 1;
  v33 = v59;
  if (!v32)
  {
    sub_26A10FD9C();
    v34 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v34, v35, v14);
    if (v32)
    {
      *v20 = v31;
      *(v20 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v33);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v33);
      v42 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v42, v43, v14);
      if (!v32)
      {
        sub_26A0E48F0(v25, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A344C58();
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A344CAC(v20, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(a1 + v29, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A344C58();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v14);
  }

  v47 = *(v60 + 28);
  sub_26A10FD9C();
  v48 = __swift_getEnumTagSinglePayload(v13, 1, v33);
  result = sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
  if (v48 != 1)
  {
    v50 = v56;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v50, 1, v33);
    if (v32)
    {
      v51 = v57;
      *v57 = v31;
      *(v51 + 8) = 0;
      *(v51 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v50, 1, v33);
      if (!v32)
      {
        sub_26A0E48F0(v50, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v51 = v57;
      sub_26A344C58();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v58);
    sub_26A344CAC(v51, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(a1 + v47, &off_28036C7C0, &off_26A427400);
    sub_26A344C58();
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v52, v53, v54, v33);
  }

  return result;
}

uint64_t ReferenceStandard.init(text1:action:componentName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoReference_Standard(0);
  OUTLINED_FUNCTION_4_40();
  sub_26A344F78(v6, v7, &protocol conformance descriptor for _ProtoReference_Standard);
  sub_26A4249C4();

  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A344368(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v26[3] = a3;
  v7 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v26 - v9;
  v27 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v27);
  v26[2] = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v26[1] = v26 - v13;
  v14 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v14);
  v15 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v15 - 8);
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  (*(v17 + 8))(v16, v17);
  sub_26A344C58();
  v18 = type metadata accessor for _ProtoReference_Standard(0);
  v19 = *(v18 + 24);
  sub_26A0E48F0(a1 + v19, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A344C58();
  __swift_storeEnumTagSinglePayload(a1 + v19, 0, 1, v14);
  sub_26A10FD9C();
  v20 = v31;
  if (!v31)
  {
    sub_26A0E48F0(v30, &qword_28036CAF8, &unk_26A426D30);
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v27);
    goto LABEL_5;
  }

  v21 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v21 + 8))(v20, v21);
  sub_26A344C58();
  v22 = v27;
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v27);
  __swift_destroy_boxed_opaque_existential_1(v30);
  if (__swift_getEnumTagSinglePayload(v10, 1, v22) == 1)
  {
LABEL_5:
    sub_26A0E48F0(v10, &off_28036C7C0, &off_26A427400);
    goto LABEL_6;
  }

  sub_26A344C58();
  sub_26A344C58();
  v23 = *(v18 + 28);
  sub_26A0E48F0(a1 + v23, &off_28036C7C0, &off_26A427400);
  sub_26A344C58();
  __swift_storeEnumTagSinglePayload(a1 + v23, 0, 1, v22);
LABEL_6:
  v24 = v29;

  *a1 = v28;
  a1[1] = v24;
  return result;
}

uint64_t ReferenceStandard.init(text1:action:)(void *a1, uint64_t a2)
{
  sub_26A0E5D68(a1, v8);
  sub_26A10FD9C();
  type metadata accessor for _ProtoReference_Standard(0);
  OUTLINED_FUNCTION_4_40();
  sub_26A344F78(v4, v5, &protocol conformance descriptor for _ProtoReference_Standard);
  sub_26A4249C4();
  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

Swift::String __swiftcall ReferenceStandard.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = v41 - v8;
  v10 = type metadata accessor for ReferenceStandard(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDA8, &unk_26A426930);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v19);
  v21 = v41 - v20;
  OUTLINED_FUNCTION_3_51();
  sub_26A344C04();
  if (redacted)
  {
    _ProtoReference_Standard.redactedProto.getter(v14);
  }

  else
  {
    sub_26A344C04();
  }

  sub_26A344C58();
  v21[*(v18 + 32)] = redacted;
  sub_26A344CAC(v17, type metadata accessor for ReferenceStandard);
  *&v21[*(v18 + 28)] = MEMORY[0x277D84F90];
  ReferenceStandard.text1.getter();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_26A1058AC(v9);
  sub_26A0E48F0(v9, &qword_28036CB30, &qword_26A426480);
  ReferenceStandard.action.getter(v5);
  sub_26A1057A8();
  sub_26A0E48F0(v5, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7958(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v27, v28, v29, v30, v41[0], v41[1]);

  sub_26A0FC1B8(v31, v32, v33, v34, v35, v36, v37);
  sub_26A0E48F0(v21, &qword_28036CDA8, &unk_26A426930);
  v38 = OUTLINED_FUNCTION_175();
  result._object = v39;
  result._countAndFlagsBits = v38;
  return result;
}

uint64_t type metadata accessor for ReferenceStandard(uint64_t a1)
{
  result = qword_280372D40;
  if (!qword_280372D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A344C04()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A344C58()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A344CAC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t ReferenceStandard.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoReference_Standard(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_0_66();
  sub_26A344C04();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_5_45();
  sub_26A344C58();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t ReferenceStandard.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for ReferenceStandard(0);
  *(inited + 64) = &protocol witness table for ReferenceStandard;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_3_51();
  sub_26A344C04();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A344F78(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A344F78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A345034(uint64_t a1)
{
  result = type metadata accessor for _ProtoReference_Standard(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_35()
{

  return type metadata accessor for _ProtoReference_Standard(0);
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

uint64_t sub_26A345150(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_26A345190(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A3451EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v11 = v23 - v10;
  v12 = *(a1 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 24))(a1, a3, v14);
  (*(a3 + 32))(v11, a1, a3);
  v17 = (*(a3 + 64))(1, a1, a3);
  if (v4)
  {
    return (*(v12 + 8))(v16, a1);
  }

  v20 = v17;
  v21 = v18;
  (*(v12 + 8))(v16, a1);
  v22 = *(a3 + 48);
  a4[3] = a1;
  a4[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a4);
  return v22(v20, v21, a1, a3);
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x26D65C950);
  }

  return result;
}

uint64_t _ProtoResponse.Component.init()()
{
  v0 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for _ProtoResponse.Component.OneOf_Value(v0);
  OUTLINED_FUNCTION_90_7();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for _ProtoResponse.Component(0);
  OUTLINED_FUNCTION_23_21(v5);
  type metadata accessor for _ProtoSeparators(0);
  v6 = OUTLINED_FUNCTION_12_29();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_26A34552C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t _ProtoResponse.Component.hasSeparators.getter()
{
  v1 = OUTLINED_FUNCTION_133();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_46();
  v6 = type metadata accessor for _ProtoResponse.Component(v5);
  OUTLINED_FUNCTION_176(*(v6 + 24));
  sub_26A10FD9C();
  type metadata accessor for _ProtoSeparators(0);
  v7 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v7, v8, v9);
  OUTLINED_FUNCTION_125_4();
  return v0;
}

uint64_t _ProtoResponse.Component.separators.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_115();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_46();
  v8 = type metadata accessor for _ProtoResponse.Component(v7);
  OUTLINED_FUNCTION_176(*(v8 + 24));
  sub_26A10FD9C();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_23(v1);
  if (!v9)
  {
    return sub_26A34552C();
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_23(v1);
  if (!v9)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t _ProtoResponse.Component.separators.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoResponse.Component(v0);
  sub_26A13440C();
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_36_1();
  sub_26A34552C();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoIntentsUI_Standard.hasAction.getter()
{
  v1 = OUTLINED_FUNCTION_133();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_46();
  v6 = type metadata accessor for _ProtoIntentsUI_Standard(v5);
  OUTLINED_FUNCTION_176(*(v6 + 36));
  sub_26A10FD9C();
  type metadata accessor for _ProtoActionProperty(0);
  v7 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v7, v8, v9);
  OUTLINED_FUNCTION_125_4();
  return v0;
}

uint64_t _ProtoIntentsUI_Standard.action.getter()
{
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_46();
  v6 = type metadata accessor for _ProtoIntentsUI_Standard(v5);
  OUTLINED_FUNCTION_176(*(v6 + 36));
  sub_26A10FD9C();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_23(v0);
  if (!v7)
  {
    return sub_26A34552C();
  }

  OUTLINED_FUNCTION_138_2(MEMORY[0x277D84F90]);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_23(v0);
  if (!v7)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t _ProtoIntentsUI_Standard.action.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoIntentsUI_Standard(v0);
  sub_26A13440C();
  OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_36_1();
  sub_26A34552C();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoIntentsUI_Standard.Slot.parameterKeyPaths.getter()
{
  OUTLINED_FUNCTION_124_2();
  OUTLINED_FUNCTION_142(*(v0 + v1) + 16, v3);
}

uint64_t _ProtoIntentsUI_Standard.Slot.fallback.getter()
{
  v2 = OUTLINED_FUNCTION_115();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_124_2();
  OUTLINED_FUNCTION_142(*(v1 + v6) + OBJC_IVAR____TtCVV10SnippetKit24_ProtoIntentsUI_Standard4SlotP33_7D14C79C842FCD24B5883C58ADC455B313_StorageClass__fallback, v17);
  sub_26A10FD9C();
  type metadata accessor for _ProtoResponse.Component(0);
  OUTLINED_FUNCTION_23(v0);
  if (!v7)
  {
    return sub_26A34552C();
  }

  type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  result = OUTLINED_FUNCTION_23(v0);
  if (!v7)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t _ProtoIntentsUI_Standard.Slot.parameterKeyPaths.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_110();
  v4 = *(type metadata accessor for _ProtoIntentsUI_Standard.Slot(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_133_3();
    v7 = OUTLINED_FUNCTION_5_3();
    v6 = sub_26A375664(v7);
    *(v2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 16) = v0;
}

uint64_t _ProtoIntentsUI_Standard.Slot.fallback.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C880, &unk_26A425E30);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_62_3();
  v3 = *(type metadata accessor for _ProtoIntentsUI_Standard.Slot(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_133_3();
    v4 = OUTLINED_FUNCTION_5_3();
    *(v0 + v3) = sub_26A375664(v4);
  }

  sub_26A34552C();
  type metadata accessor for _ProtoResponse.Component(0);
  OUTLINED_FUNCTION_90_7();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  swift_beginAccess();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t static _ProtoIntentsUI_Standard.Slot.== infix(_:_:)()
{
  OUTLINED_FUNCTION_45_3();
  OUTLINED_FUNCTION_124_2();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_26A375DE4(v3, v4);

    if (!v5)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_1_55();
  sub_26A37650C();
  OUTLINED_FUNCTION_246();
  return sub_26A424B64() & 1;
}

uint64_t _ProtoResponse.backgrounds.setter()
{
  OUTLINED_FUNCTION_14_4();

  *(v1 + 16) = v0;
  return result;
}

uint64_t _ProtoResponse.ornaments.setter()
{
  OUTLINED_FUNCTION_14_4();

  *(v1 + 24) = v0;
  return result;
}

uint64_t _ProtoResponse.groups.setter()
{
  OUTLINED_FUNCTION_14_4();

  *(v1 + 32) = v0;
  return result;
}

uint64_t _ProtoResponse.aceCommands.setter()
{
  OUTLINED_FUNCTION_14_4();

  *(v1 + 40) = v0;
  return result;
}

uint64_t _ProtoResponse.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for _ProtoResponse(v0);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_57_5();

  return v2(v1);
}

uint64_t _ProtoResponse.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoResponse(v0);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_219_0();

  return v2(v1);
}

uint64_t _ProtoResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoResponse(v0);
  return OUTLINED_FUNCTION_51_5();
}

unint64_t _ProtoResponse.LevelOfDetail.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t _ProtoResponse.LevelOfDetail.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_26A3465E4@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoResponse.LevelOfDetail.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A346618(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A376550();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t _ProtoResponse.Section.componentList.setter()
{
  OUTLINED_FUNCTION_14_4();

  *v1 = v0;
  return result;
}

uint64_t _ProtoResponse.Section.levelOfDetail.setter()
{
  OUTLINED_FUNCTION_14_4();

  *(v1 + 8) = v0;
  return result;
}

uint64_t _ProtoResponse.Section.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoResponse.Section(v0);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoResponse.Section.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  type metadata accessor for _ProtoResponse.Section(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoResponse.Group.id.setter()
{
  OUTLINED_FUNCTION_60_5();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t _ProtoResponse.Group.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for _ProtoResponse.Group(v0);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_57_5();

  return v2(v1);
}

uint64_t _ProtoResponse.Group.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoResponse.Group(v0);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_219_0();

  return v2(v1);
}

uint64_t _ProtoResponse.Group.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoResponse.Group(v0);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoResponse.Group.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_61_11();
  *(a1 + 16) = MEMORY[0x277D84F90];
  type metadata accessor for _ProtoResponse.Group(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoResponse.Component.customCanvas.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
LABEL_6:
    OUTLINED_FUNCTION_61_11();
    *(v0 + 16) = 0;
    *(v0 + 24) = v7;
    *(v0 + 32) = xmmword_26A426400;
    *(v0 + 48) = 0;
    *(v0 + 56) = v7;
    *(v0 + 64) = 0;
    *(v0 + 66) = 0;
    type metadata accessor for _ProtoCustomCanvas(0);
    return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  }

  OUTLINED_FUNCTION_21_3();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_26A3761EC();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_246();
  return sub_26A34552C();
}

void _ProtoResponse.Component.customCanvas.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoCustomCanvas(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = *(v6 + 64);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_7;
    }

    sub_26A3761EC();
  }

  OUTLINED_FUNCTION_60_12();
  *(v7 + 16) = 0;
  *(v7 + 24) = v13;
  *(v7 + 32) = xmmword_26A426400;
  *(v7 + 48) = 0;
  *(v7 + 56) = v13;
  *(v7 + 64) = 0;
  *(v7 + 66) = 0;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.factItemStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoFactItem_Standard(0) + 20);
  if (qword_28036C488 != -1)
  {
    OUTLINED_FUNCTION_87_7(&qword_28036C488);
  }

  *(v0 + v8) = qword_280371AE8;
}

uint64_t sub_26A346E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  OUTLINED_FUNCTION_12_2();
  sub_26A37623C();
  return a7(v11);
}

void _ProtoResponse.Component.factItemStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoFactItem_Standard(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C488 != -1)
  {
    OUTLINED_FUNCTION_87_7(&qword_28036C488);
  }

  *(v8 + v14) = qword_280371AE8;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.factItemShortNumber.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoFactItem_ShortNumber(0) + 20);
  if (qword_28036C498 != -1)
  {
    OUTLINED_FUNCTION_86_10(&qword_28036C498);
  }

  *(v0 + v8) = qword_280371B08;
}

void _ProtoResponse.Component.factItemShortNumber.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoFactItem_ShortNumber(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C498 != -1)
  {
    OUTLINED_FUNCTION_86_10(&qword_28036C498);
  }

  *(v8 + v14) = qword_280371B08;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.factItemHeroNumber.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoFactItem_HeroNumber(0) + 20);
  if (qword_28036C4A8 != -1)
  {
    OUTLINED_FUNCTION_85_6(&qword_28036C4A8);
  }

  *(v0 + v8) = qword_280371B28;
}

void _ProtoResponse.Component.factItemHeroNumber.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoFactItem_HeroNumber(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C4A8 != -1)
  {
    OUTLINED_FUNCTION_85_6(&qword_28036C4A8);
  }

  *(v8 + v14) = qword_280371B28;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSummaryItem_Standard(0) + 20);
  if (qword_28036C080 != -1)
  {
    OUTLINED_FUNCTION_84_7(&qword_28036C080);
  }

  *(v0 + v8) = qword_28036E740;
}

void _ProtoResponse.Component.summaryItemStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSummaryItem_Standard(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C080 != -1)
  {
    OUTLINED_FUNCTION_84_7(&qword_28036C080);
  }

  *(v8 + v14) = qword_28036E740;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemShortNumber.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSummaryItem_ShortNumber(0) + 20);
  if (qword_28036C090 != -1)
  {
    OUTLINED_FUNCTION_83_8(&qword_28036C090);
  }

  *(v0 + v8) = qword_28036E760;
}

void _ProtoResponse.Component.summaryItemShortNumber.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSummaryItem_ShortNumber(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C090 != -1)
  {
    OUTLINED_FUNCTION_83_8(&qword_28036C090);
  }

  *(v8 + v14) = qword_28036E760;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemText.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSummaryItem_Text(0) + 20);
  if (qword_28036C0A0 != -1)
  {
    OUTLINED_FUNCTION_82_9(&qword_28036C0A0);
  }

  *(v0 + v8) = qword_28036E780;
}

void _ProtoResponse.Component.summaryItemText.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSummaryItem_Text(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C0A0 != -1)
  {
    OUTLINED_FUNCTION_82_9(&qword_28036C0A0);
  }

  *(v8 + v14) = qword_28036E780;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemLargeText.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSummaryItem_LargeText(0) + 20);
  if (qword_28036C0B0 != -1)
  {
    OUTLINED_FUNCTION_81_7(&qword_28036C0B0);
  }

  *(v0 + v8) = qword_28036E7A0;
}

void _ProtoResponse.Component.summaryItemLargeText.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSummaryItem_LargeText(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C0B0 != -1)
  {
    OUTLINED_FUNCTION_81_7(&qword_28036C0B0);
  }

  *(v8 + v14) = qword_28036E7A0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemDetailedText.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSummaryItem_DetailedText(0) + 20);
  if (qword_28036C0C0 != -1)
  {
    OUTLINED_FUNCTION_80_7(&qword_28036C0C0);
  }

  *(v0 + v8) = qword_28036E7C0;
}

void _ProtoResponse.Component.summaryItemDetailedText.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSummaryItem_DetailedText(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C0C0 != -1)
  {
    OUTLINED_FUNCTION_80_7(&qword_28036C0C0);
  }

  *(v8 + v14) = qword_28036E7C0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.simpleItemStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSimpleItem_Standard(0) + 20);
  if (qword_28036C3C8 != -1)
  {
    OUTLINED_FUNCTION_79_8(&qword_28036C3C8);
  }

  *(v0 + v8) = qword_280370C00;
}

void _ProtoResponse.Component.simpleItemStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSimpleItem_Standard(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C3C8 != -1)
  {
    OUTLINED_FUNCTION_79_8(&qword_28036C3C8);
  }

  *(v8 + v14) = qword_280370C00;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.simpleItemRich.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSimpleItem_Rich(0) + 20);
  if (qword_28036C3D8 != -1)
  {
    OUTLINED_FUNCTION_78_8(&qword_28036C3D8);
  }

  *(v0 + v8) = qword_280370C20;
}

void _ProtoResponse.Component.simpleItemRich.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSimpleItem_Rich(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C3D8 != -1)
  {
    OUTLINED_FUNCTION_78_8(&qword_28036C3D8);
  }

  *(v8 + v14) = qword_280370C20;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.simpleItemVisual.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  *v0 = MEMORY[0x277D84F90];
  v0[1] = 0;
  v0[2] = 0xE000000000000000;
  v0[3] = 0;
  v0[4] = 0xE000000000000000;
  type metadata accessor for _ProtoSimpleItem_Visual(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_26_29(v8);
  type metadata accessor for _ProtoTextProperty(0);
  v9 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void _ProtoResponse.Component.simpleItemVisual.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoSimpleItem_Visual(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = *(v6 + 64);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    *v7 = MEMORY[0x277D84F90];
    v7[1] = 0;
    v7[2] = 0xE000000000000000;
    v7[3] = 0;
    v7[4] = 0xE000000000000000;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v13 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_27_21(v13);
    v14 = type metadata accessor for _ProtoTextProperty(0);
    OUTLINED_FUNCTION_19_17(v14);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.primaryHeaderStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 12)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoPrimaryHeader_Standard(0) + 20);
  if (qword_28036C768 != -1)
  {
    OUTLINED_FUNCTION_77_7(&qword_28036C768);
  }

  *(v0 + v8) = qword_280373AC8;
}

void _ProtoResponse.Component.primaryHeaderStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoPrimaryHeader_Standard(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 12)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C768 != -1)
  {
    OUTLINED_FUNCTION_77_7(&qword_28036C768);
  }

  *(v8 + v14) = qword_280373AC8;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.primaryHeaderMarquee.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoPrimaryHeader_Marquee(0) + 20);
  if (qword_28036C778 != -1)
  {
    OUTLINED_FUNCTION_76_9(&qword_28036C778);
  }

  *(v0 + v8) = qword_280373AE8;
}

void _ProtoResponse.Component.primaryHeaderMarquee.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoPrimaryHeader_Marquee(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C778 != -1)
  {
    OUTLINED_FUNCTION_76_9(&qword_28036C778);
  }

  *(v8 + v14) = qword_280373AE8;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.primaryHeaderRich.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 14)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoPrimaryHeader_Rich(0) + 20);
  if (qword_28036C788 != -1)
  {
    OUTLINED_FUNCTION_75_10(&qword_28036C788);
  }

  *(v0 + v8) = qword_280373B08;
}

void _ProtoResponse.Component.primaryHeaderRich.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoPrimaryHeader_Rich(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 14)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C788 != -1)
  {
    OUTLINED_FUNCTION_75_10(&qword_28036C788);
  }

  *(v8 + v14) = qword_280373B08;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.secondaryHeaderStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v4)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 15)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v7 = OUTLINED_FUNCTION_25_25();
  v8 = type metadata accessor for _ProtoSecondaryHeader_Standard(v7);
  OUTLINED_FUNCTION_23_21(v8);
  v9 = OUTLINED_FUNCTION_68_9();
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_22_22(v10);
  v11 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void _ProtoResponse.Component.secondaryHeaderStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoSecondaryHeader_Standard(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_22(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_10_46(v9);
  OUTLINED_FUNCTION_0_67();
  if (v10)
  {
    v11 = sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17(v11);
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    v15 = OUTLINED_FUNCTION_23_31(v14);
    OUTLINED_FUNCTION_19_17(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 15)
  {
    v11 = sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.button.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 16)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoButton(0) + 20);
  if (qword_28036C428 != -1)
  {
    OUTLINED_FUNCTION_60_4(&qword_28036C428);
  }

  *(v0 + v8) = qword_280371710;
}

void _ProtoResponse.Component.button.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoButton(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 16)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C428 != -1)
  {
    OUTLINED_FUNCTION_60_4(&qword_28036C428);
  }

  *(v8 + v14) = qword_280371710;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.binaryButton.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 17)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  OUTLINED_FUNCTION_61_11();
  *(v0 + 16) = 0;
  *(v0 + 24) = v8;
  v9 = type metadata accessor for _ProtoBinaryButton(0);
  OUTLINED_FUNCTION_144_5(v9);
  v10 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  OUTLINED_FUNCTION_92();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
}

void _ProtoResponse.Component.binaryButton.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoBinaryButton(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = *(v6 + 64);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_60_12();
    *(v7 + 16) = 0;
    *(v7 + 24) = v13;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = type metadata accessor for _ProtoButton(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 17)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.statusIndicatorSuccess.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v4)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 18)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v7 = OUTLINED_FUNCTION_25_25();
  v8 = type metadata accessor for _ProtoStatusIndicator_Success(v7);
  OUTLINED_FUNCTION_23_21(v8);
  v9 = OUTLINED_FUNCTION_68_9();
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_26_29(v10);
  v11 = OUTLINED_FUNCTION_132_3();
  v12 = type metadata accessor for _ProtoOptionalBool(v11);
  OUTLINED_FUNCTION_26_29(v12);
  v13 = OUTLINED_FUNCTION_123_5();
  type metadata accessor for _ProtoActionProperty(v13);
  v14 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void _ProtoResponse.Component.statusIndicatorSuccess.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoStatusIndicator_Success(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_22(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_10_46(v9);
  OUTLINED_FUNCTION_0_67();
  if (v10)
  {
    v11 = sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17(v11);
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    OUTLINED_FUNCTION_27_21(v14);
    v15 = OUTLINED_FUNCTION_131_4();
    v16 = type metadata accessor for _ProtoOptionalBool(v15);
    OUTLINED_FUNCTION_27_21(v16);
    v17 = OUTLINED_FUNCTION_122_4();
    v18 = type metadata accessor for _ProtoActionProperty(v17);
    OUTLINED_FUNCTION_19_17(v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 18)
  {
    v11 = sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.statusIndicatorError.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v4)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 19)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v7 = OUTLINED_FUNCTION_25_25();
  v8 = type metadata accessor for _ProtoStatusIndicator_Error(v7);
  OUTLINED_FUNCTION_23_21(v8);
  v9 = OUTLINED_FUNCTION_68_9();
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_26_29(v10);
  v11 = OUTLINED_FUNCTION_132_3();
  v12 = type metadata accessor for _ProtoOptionalBool(v11);
  OUTLINED_FUNCTION_26_29(v12);
  v13 = OUTLINED_FUNCTION_123_5();
  type metadata accessor for _ProtoActionProperty(v13);
  v14 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void _ProtoResponse.Component.statusIndicatorError.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoStatusIndicator_Error(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_22(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_10_46(v9);
  OUTLINED_FUNCTION_0_67();
  if (v10)
  {
    v11 = sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17(v11);
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    OUTLINED_FUNCTION_27_21(v14);
    v15 = OUTLINED_FUNCTION_131_4();
    v16 = type metadata accessor for _ProtoOptionalBool(v15);
    OUTLINED_FUNCTION_27_21(v16);
    v17 = OUTLINED_FUNCTION_122_4();
    v18 = type metadata accessor for _ProtoActionProperty(v17);
    OUTLINED_FUNCTION_19_17(v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 19)
  {
    v11 = sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.statusIndicatorInProgress.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v4)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 20)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v7 = OUTLINED_FUNCTION_25_25();
  v8 = type metadata accessor for _ProtoStatusIndicator_InProgress(v7);
  OUTLINED_FUNCTION_23_21(v8);
  v9 = OUTLINED_FUNCTION_68_9();
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_26_29(v10);
  v11 = OUTLINED_FUNCTION_132_3();
  v12 = type metadata accessor for _ProtoOptionalBool(v11);
  OUTLINED_FUNCTION_26_29(v12);
  v13 = OUTLINED_FUNCTION_123_5();
  type metadata accessor for _ProtoActionProperty(v13);
  v14 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void _ProtoResponse.Component.statusIndicatorInProgress.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoStatusIndicator_InProgress(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_22(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_10_46(v9);
  OUTLINED_FUNCTION_0_67();
  if (v10)
  {
    v11 = sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17(v11);
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    OUTLINED_FUNCTION_27_21(v14);
    v15 = OUTLINED_FUNCTION_131_4();
    v16 = type metadata accessor for _ProtoOptionalBool(v15);
    OUTLINED_FUNCTION_27_21(v16);
    v17 = OUTLINED_FUNCTION_122_4();
    v18 = type metadata accessor for _ProtoActionProperty(v17);
    OUTLINED_FUNCTION_19_17(v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 20)
  {
    v11 = sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.statusIndicatorCancelled.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v4)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 21)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v7 = OUTLINED_FUNCTION_25_25();
  v8 = type metadata accessor for _ProtoStatusIndicator_Cancelled(v7);
  OUTLINED_FUNCTION_23_21(v8);
  v9 = OUTLINED_FUNCTION_68_9();
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_26_29(v10);
  v11 = OUTLINED_FUNCTION_132_3();
  v12 = type metadata accessor for _ProtoOptionalBool(v11);
  OUTLINED_FUNCTION_26_29(v12);
  v13 = OUTLINED_FUNCTION_123_5();
  type metadata accessor for _ProtoActionProperty(v13);
  v14 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void _ProtoResponse.Component.statusIndicatorCancelled.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoStatusIndicator_Cancelled(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_22(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_10_46(v9);
  OUTLINED_FUNCTION_0_67();
  if (v10)
  {
    v11 = sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17(v11);
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    OUTLINED_FUNCTION_27_21(v14);
    v15 = OUTLINED_FUNCTION_131_4();
    v16 = type metadata accessor for _ProtoOptionalBool(v15);
    OUTLINED_FUNCTION_27_21(v16);
    v17 = OUTLINED_FUNCTION_122_4();
    v18 = type metadata accessor for _ProtoActionProperty(v17);
    OUTLINED_FUNCTION_19_17(v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 21)
  {
    v11 = sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.textInput.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 22)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  return _ProtoTextInput.init()(v0);
}

void _ProtoResponse.Component.textInput.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoTextInput(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = *(v6 + 64);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_60_12();
    *(v7 + 16) = 0;
    *(v7 + 24) = v13;
    *(v7 + 32) = 0;
    *(v7 + 40) = v13;
    *(v7 + 48) = 0;
    *(v7 + 56) = 1;
    *(v7 + 64) = xmmword_26A426400;
    *(v7 + 80) = 0;
    *(v7 + 88) = v13;
    *(v7 + 96) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = type metadata accessor for _ProtoTextProperty(0);
    OUTLINED_FUNCTION_19_17(v14);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 22)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.controlSwitch.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 23)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoControl_Switch(0) + 20);
  if (qword_28036C1E0 != -1)
  {
    OUTLINED_FUNCTION_113_3(&qword_28036C1E0);
  }

  *(v0 + v8) = qword_28036F2B0;
}

void _ProtoResponse.Component.controlSwitch.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoControl_Switch(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 23)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C1E0 != -1)
  {
    OUTLINED_FUNCTION_113_3(&qword_28036C1E0);
  }

  *(v8 + v14) = qword_28036F2B0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.controlSlider.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v4)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 24)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v7 = OUTLINED_FUNCTION_25_25();
  v8 = type metadata accessor for _ProtoControl_Slider(v7);
  OUTLINED_FUNCTION_23_21(v8);
  v9 = OUTLINED_FUNCTION_68_9();
  v10 = type metadata accessor for _ProtoSlider(v9);
  OUTLINED_FUNCTION_26_29(v10);
  v11 = OUTLINED_FUNCTION_132_3();
  v12 = type metadata accessor for _ProtoTextProperty(v11);
  OUTLINED_FUNCTION_26_29(v12);
  v13 = OUTLINED_FUNCTION_123_5();
  type metadata accessor for _ProtoActionProperty(v13);
  v14 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void _ProtoResponse.Component.controlSlider.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoControl_Slider(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_22(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_10_46(v9);
  OUTLINED_FUNCTION_0_67();
  if (v10)
  {
    v11 = sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17(v11);
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoSlider(v13);
    OUTLINED_FUNCTION_27_21(v14);
    v15 = OUTLINED_FUNCTION_131_4();
    v16 = type metadata accessor for _ProtoTextProperty(v15);
    OUTLINED_FUNCTION_27_21(v16);
    v17 = OUTLINED_FUNCTION_122_4();
    v18 = type metadata accessor for _ProtoActionProperty(v17);
    OUTLINED_FUNCTION_19_17(v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 24)
  {
    v11 = sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.controlPlayerButton.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 25)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoControl_PlayerButton(0) + 20);
  if (qword_28036C1F8 != -1)
  {
    OUTLINED_FUNCTION_111_4(&qword_28036C1F8);
  }

  *(v0 + v8) = qword_28036F2E8;
}

void _ProtoResponse.Component.controlPlayerButton.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoControl_PlayerButton(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 25)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C1F8 != -1)
  {
    OUTLINED_FUNCTION_111_4(&qword_28036C1F8);
  }

  *(v8 + v14) = qword_28036F2E8;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.groupID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_246();
  sub_26A10FD9C();
  v3 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_37(v0, 1, v3);
  if (v4)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_175();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 26)
    {
      return *v0;
    }

    sub_26A3761EC();
  }

  return 0;
}

uint64_t _ProtoResponse.Component.groupID.setter()
{
  OUTLINED_FUNCTION_60_5();
  sub_26A13440C();
  *v1 = v2;
  v1[1] = v0;
  v3 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_246();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
}

void (*_ProtoResponse.Component.groupID.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v4[3] = v7;
  OUTLINED_FUNCTION_125();
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  v4[4] = v8;
  OUTLINED_FUNCTION_37(v7, 1, v8);
  if (v9)
  {
    sub_26A13440C();
LABEL_7:
    v11 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 26)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  v11 = *v7;
  v12 = v7[1];
LABEL_8:
  *v4 = v11;
  v4[1] = v12;
  return sub_26A34B6D8;
}

void sub_26A34B6D8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[2];
  if (a2)
  {

    sub_26A13440C();
    *v7 = v4;
    v7[1] = v3;
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v6);
  }

  else
  {
    sub_26A13440C();
    *v7 = v4;
    v7[1] = v3;
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
  }

  free(v5);

  free(v2);
}

uint64_t _ProtoResponse.Component.referenceStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v4)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 27)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v7 = OUTLINED_FUNCTION_25_25();
  v8 = type metadata accessor for _ProtoReference_Standard(v7);
  OUTLINED_FUNCTION_23_21(v8);
  v9 = OUTLINED_FUNCTION_68_9();
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_22_22(v10);
  v11 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void _ProtoResponse.Component.referenceStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoReference_Standard(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_22(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_10_46(v9);
  OUTLINED_FUNCTION_0_67();
  if (v10)
  {
    v11 = sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17(v11);
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    v15 = OUTLINED_FUNCTION_23_31(v14);
    OUTLINED_FUNCTION_19_17(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 27)
  {
    v11 = sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.referenceLogo.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v4)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 28)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v7 = OUTLINED_FUNCTION_25_25();
  v8 = type metadata accessor for _ProtoReference_Logo(v7);
  OUTLINED_FUNCTION_23_21(v8);
  v9 = OUTLINED_FUNCTION_68_9();
  v10 = type metadata accessor for _ProtoVisualProperty(v9);
  OUTLINED_FUNCTION_22_22(v10);
  v11 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void _ProtoResponse.Component.referenceLogo.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoReference_Logo(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_22(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_10_46(v9);
  OUTLINED_FUNCTION_0_67();
  if (v10)
  {
    v11 = sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17(v11);
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoVisualProperty(v13);
    v15 = OUTLINED_FUNCTION_23_31(v14);
    OUTLINED_FUNCTION_19_17(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 28)
  {
    v11 = sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.referenceRich.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 29)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoReference_Rich(0) + 20);
  if (qword_28036C510 != -1)
  {
    OUTLINED_FUNCTION_108_6(&qword_28036C510);
  }

  *(v0 + v8) = qword_280372270;
}

void _ProtoResponse.Component.referenceRich.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoReference_Rich(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 29)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C510 != -1)
  {
    OUTLINED_FUNCTION_108_6(&qword_28036C510);
  }

  *(v8 + v14) = qword_280372270;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.referenceButton.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 30)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  OUTLINED_FUNCTION_61_11();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v8 = type metadata accessor for _ProtoReference_Button(0);
  OUTLINED_FUNCTION_144_5(v8);
  v9 = OUTLINED_FUNCTION_132_3();
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_26_29(v10);
  v11 = OUTLINED_FUNCTION_123_5();
  type metadata accessor for _ProtoActionProperty(v11);
  v12 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void _ProtoResponse.Component.referenceButton.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoReference_Button(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = *(v6 + 64);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_60_12();
    *(v7 + 16) = 0;
    *(v7 + 24) = 1;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v13 = OUTLINED_FUNCTION_131_4();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    OUTLINED_FUNCTION_27_21(v14);
    v15 = OUTLINED_FUNCTION_122_4();
    v16 = type metadata accessor for _ProtoActionProperty(v15);
    OUTLINED_FUNCTION_19_17(v16);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 30)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemPair.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 31)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSummaryItem_Pair(0) + 20);
  if (qword_28036C0D0 != -1)
  {
    OUTLINED_FUNCTION_106_5(&qword_28036C0D0);
  }

  *(v0 + v8) = qword_28036E7E0;
}

void _ProtoResponse.Component.summaryItemPair.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSummaryItem_Pair(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 31)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C0D0 != -1)
  {
    OUTLINED_FUNCTION_106_5(&qword_28036C0D0);
  }

  *(v8 + v14) = qword_28036E7E0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemPairV2.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 32)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSummaryItem_PairV2(0) + 20);
  if (qword_28036C0E0 != -1)
  {
    OUTLINED_FUNCTION_105_3(&qword_28036C0E0);
  }

  *(v0 + v8) = qword_28036E800;
}

void _ProtoResponse.Component.summaryItemPairV2.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSummaryItem_PairV2(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 32)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C0E0 != -1)
  {
    OUTLINED_FUNCTION_105_3(&qword_28036C0E0);
  }

  *(v8 + v14) = qword_28036E800;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemPairNumber.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 33)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSummaryItem_PairNumber(0) + 20);
  if (qword_28036C0F0 != -1)
  {
    OUTLINED_FUNCTION_104_4(&qword_28036C0F0);
  }

  *(v0 + v8) = qword_28036E820;
}

void _ProtoResponse.Component.summaryItemPairNumber.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSummaryItem_PairNumber(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 33)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C0F0 != -1)
  {
    OUTLINED_FUNCTION_104_4(&qword_28036C0F0);
  }

  *(v8 + v14) = qword_28036E820;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemPairNumberV2.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 34)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSummaryItem_PairNumberV2(0) + 20);
  if (qword_28036C100 != -1)
  {
    OUTLINED_FUNCTION_103_4(&qword_28036C100);
  }

  *(v0 + v8) = qword_28036E840;
}

void _ProtoResponse.Component.summaryItemPairNumberV2.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSummaryItem_PairNumberV2(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 34)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C100 != -1)
  {
    OUTLINED_FUNCTION_103_4(&qword_28036C100);
  }

  *(v8 + v14) = qword_28036E840;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemButton.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 35)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSummaryItem_Button(0) + 20);
  if (qword_28036C110 != -1)
  {
    OUTLINED_FUNCTION_102_5(&qword_28036C110);
  }

  *(v0 + v8) = qword_28036E860;
}

void _ProtoResponse.Component.summaryItemButton.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSummaryItem_Button(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 35)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C110 != -1)
  {
    OUTLINED_FUNCTION_102_5(&qword_28036C110);
  }

  *(v8 + v14) = qword_28036E860;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.factItemButton.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 36)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoFactItem_Button(0) + 20);
  if (qword_28036C4B8 != -1)
  {
    OUTLINED_FUNCTION_101_6(&qword_28036C4B8);
  }

  *(v0 + v8) = qword_280371B48;
}

void _ProtoResponse.Component.factItemButton.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoFactItem_Button(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 36)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C4B8 != -1)
  {
    OUTLINED_FUNCTION_101_6(&qword_28036C4B8);
  }

  *(v8 + v14) = qword_280371B48;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.table.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 37)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  *v0 = 0;
  v8 = MEMORY[0x277D84F90];
  *(v0 + 8) = MEMORY[0x277D84F90];
  *(v0 + 16) = v8;
  type metadata accessor for _ProtoTable(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v9 = OUTLINED_FUNCTION_123_5();
  type metadata accessor for _ProtoTable.Header(v9);
  v10 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void _ProtoResponse.Component.table.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoTable(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = *(v6 + 64);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    *v7 = 0;
    v13 = MEMORY[0x277D84F90];
    *(v7 + 8) = MEMORY[0x277D84F90];
    *(v7 + 16) = v13;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = OUTLINED_FUNCTION_122_4();
    v15 = type metadata accessor for _ProtoTable.Header(v14);
    OUTLINED_FUNCTION_19_17(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 37)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.referenceFootnote.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 38)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoReference_Footnote(0) + 20);
  if (qword_28036C530 != -1)
  {
    OUTLINED_FUNCTION_100_5(&qword_28036C530);
  }

  *(v0 + v8) = qword_2803722C0;
}

void _ProtoResponse.Component.referenceFootnote.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoReference_Footnote(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 38)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C530 != -1)
  {
    OUTLINED_FUNCTION_100_5(&qword_28036C530);
  }

  *(v8 + v14) = qword_2803722C0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.longItemText.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v4)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 39)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v7 = OUTLINED_FUNCTION_25_25();
  v8 = type metadata accessor for _ProtoLongItem_Text(v7);
  OUTLINED_FUNCTION_23_21(v8);
  v9 = OUTLINED_FUNCTION_68_9();
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_22_22(v10);
  v11 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void _ProtoResponse.Component.longItemText.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoLongItem_Text(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_22(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_10_46(v9);
  OUTLINED_FUNCTION_0_67();
  if (v10)
  {
    v11 = sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17(v11);
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    v15 = OUTLINED_FUNCTION_23_31(v14);
    OUTLINED_FUNCTION_19_17(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 39)
  {
    v11 = sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.visualizationChart.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 40)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoVisualization_Chart(0) + 20);
  if (qword_28036C560 != -1)
  {
    OUTLINED_FUNCTION_99_5(&qword_28036C560);
  }

  *(v0 + v8) = qword_280372590;
}

void _ProtoResponse.Component.visualizationChart.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoVisualization_Chart(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 40)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C560 != -1)
  {
    OUTLINED_FUNCTION_99_5(&qword_28036C560);
  }

  *(v8 + v14) = qword_280372590;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemPlayer.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 41)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSummaryItem_Player(0) + 20);
  if (qword_28036C120 != -1)
  {
    OUTLINED_FUNCTION_98_7(&qword_28036C120);
  }

  *(v0 + v8) = qword_28036E880;
}

void _ProtoResponse.Component.summaryItemPlayer.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSummaryItem_Player(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 41)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C120 != -1)
  {
    OUTLINED_FUNCTION_98_7(&qword_28036C120);
  }

  *(v8 + v14) = qword_28036E880;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.simpleItemPlayer.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 42)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSimpleItem_Player(0) + 20);
  if (qword_28036C400 != -1)
  {
    OUTLINED_FUNCTION_97_4(&qword_28036C400);
  }

  *(v0 + v8) = qword_280370C78;
}

void _ProtoResponse.Component.simpleItemPlayer.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSimpleItem_Player(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 42)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C400 != -1)
  {
    OUTLINED_FUNCTION_97_4(&qword_28036C400);
  }

  *(v8 + v14) = qword_280370C78;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.simpleItemReverseRich.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 43)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSimpleItem_ReverseRich(0) + 20);
  if (qword_28036C3E8 != -1)
  {
    OUTLINED_FUNCTION_96_5(&qword_28036C3E8);
  }

  *(v0 + v8) = qword_280370C40;
}

void _ProtoResponse.Component.simpleItemReverseRich.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSimpleItem_ReverseRich(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 43)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C3E8 != -1)
  {
    OUTLINED_FUNCTION_96_5(&qword_28036C3E8);
  }

  *(v8 + v14) = qword_280370C40;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.secondaryHeaderEmphasized.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v4)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 44)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v7 = OUTLINED_FUNCTION_25_25();
  v8 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(v7);
  OUTLINED_FUNCTION_23_21(v8);
  v9 = OUTLINED_FUNCTION_68_9();
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_22_22(v10);
  v11 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void _ProtoResponse.Component.secondaryHeaderEmphasized.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoSecondaryHeader_Emphasized(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_22(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_10_46(v9);
  OUTLINED_FUNCTION_0_67();
  if (v10)
  {
    v11 = sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17(v11);
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    v15 = OUTLINED_FUNCTION_23_31(v14);
    OUTLINED_FUNCTION_19_17(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 44)
  {
    v11 = sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemSwitch.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 45)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSummaryItem_Switch(0) + 20);
  if (qword_28036C130 != -1)
  {
    OUTLINED_FUNCTION_95_7(&qword_28036C130);
  }

  *(v0 + v8) = qword_28036E8A0;
}

void _ProtoResponse.Component.summaryItemSwitch.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSummaryItem_Switch(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 45)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C130 != -1)
  {
    OUTLINED_FUNCTION_95_7(&qword_28036C130);
  }

  *(v8 + v14) = qword_28036E8A0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.systemTextClarificationTitle.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v4)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 46)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v7 = OUTLINED_FUNCTION_25_25();
  v8 = type metadata accessor for _ProtoSystemText_ClarificationTitle(v7);
  OUTLINED_FUNCTION_23_21(v8);
  v9 = OUTLINED_FUNCTION_68_9();
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_22_22(v10);
  v11 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void _ProtoResponse.Component.systemTextClarificationTitle.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoSystemText_ClarificationTitle(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_22(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_10_46(v9);
  OUTLINED_FUNCTION_0_67();
  if (v10)
  {
    v11 = sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17(v11);
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    v15 = OUTLINED_FUNCTION_23_31(v14);
    OUTLINED_FUNCTION_19_17(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 46)
  {
    v11 = sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.visualizationImage.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 47)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoVisualization_Image(0) + 20);
  if (qword_28036C570 != -1)
  {
    OUTLINED_FUNCTION_94_6(&qword_28036C570);
  }

  *(v0 + v8) = qword_2803725B0;
}

void _ProtoResponse.Component.visualizationImage.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoVisualization_Image(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 47)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C570 != -1)
  {
    OUTLINED_FUNCTION_94_6(&qword_28036C570);
  }

  *(v8 + v14) = qword_2803725B0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.visualizationMap.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 48)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoVisualization_Map(0) + 20);
  if (qword_28036C580 != -1)
  {
    OUTLINED_FUNCTION_93_6(&qword_28036C580);
  }

  *(v0 + v8) = qword_2803725D0;
}

void _ProtoResponse.Component.visualizationMap.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoVisualization_Map(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 48)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C580 != -1)
  {
    OUTLINED_FUNCTION_93_6(&qword_28036C580);
  }

  *(v8 + v14) = qword_2803725D0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.buttonContainer.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 49)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  *v0 = MEMORY[0x277D84F90];
  type metadata accessor for _ProtoButton_Container(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

void _ProtoResponse.Component.buttonContainer.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoButton_Container(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = *(v6 + 64);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    *v7 = MEMORY[0x277D84F90];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 49)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.intentsUiStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v4)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 50)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  OUTLINED_FUNCTION_137_4(MEMORY[0x277D84F90], xmmword_26A426400);
  type metadata accessor for _ProtoActionProperty(0);
  v7 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t _ProtoIntentsUI_Standard.init()(uint64_t a1)
{
  OUTLINED_FUNCTION_137_4(MEMORY[0x277D84F90], xmmword_26A426400);
  type metadata accessor for _ProtoActionProperty(0);
  v1 = OUTLINED_FUNCTION_12_29();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void _ProtoResponse.Component.intentsUiStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoIntentsUI_Standard(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = *(v6 + 64);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_26_22(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_10_46(v10);
  OUTLINED_FUNCTION_0_67();
  if (v11)
  {
    sub_26A13440C();
LABEL_7:
    *v7 = xmmword_26A426400;
    *(v7 + 16) = MEMORY[0x277D84F90];
    *(v7 + 24) = 0;
    *(v7 + 32) = 0xE000000000000000;
    *(v7 + 40) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v13 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_19_17(v13);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 50)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.sashStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 51)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSash_Standard(0) + 20);
  if (qword_28036C4D8 != -1)
  {
    OUTLINED_FUNCTION_92_6(&qword_28036C4D8);
  }

  *(v0 + v8) = qword_280371E30;
}

void _ProtoResponse.Component.sashStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSash_Standard(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 51)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C4D8 != -1)
  {
    OUTLINED_FUNCTION_92_6(&qword_28036C4D8);
  }

  *(v8 + v14) = qword_280371E30;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.heroHeader.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 52)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoHeroHeader(0) + 20);
  if (qword_28036C248 != -1)
  {
    OUTLINED_FUNCTION_91_6(&qword_28036C248);
  }

  *(v0 + v8) = qword_28036F8B0;
}

void _ProtoResponse.Component.heroHeader.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoHeroHeader(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 52)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C248 != -1)
  {
    OUTLINED_FUNCTION_91_6(&qword_28036C248);
  }

  *(v8 + v14) = qword_28036F8B0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.horizontalListStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v4)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 53)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  OUTLINED_FUNCTION_138_2(MEMORY[0x277D84F90]);
  v7 = type metadata accessor for _ProtoHorizontalList_Standard(0);
  OUTLINED_FUNCTION_144_5(v7);
  type metadata accessor for _ProtoTextProperty(0);
  v8 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void _ProtoResponse.Component.horizontalListStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoHorizontalList_Standard(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_22(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_10_46(v9);
  OUTLINED_FUNCTION_0_67();
  if (v10)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_141_3(MEMORY[0x277D84F90]);
    v12 = type metadata accessor for _ProtoTextProperty(0);
    OUTLINED_FUNCTION_19_17(v12);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 53)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.sectionHeaderStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v4)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 54)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v7 = OUTLINED_FUNCTION_25_25();
  v8 = type metadata accessor for _ProtoSectionHeader_Standard(v7);
  OUTLINED_FUNCTION_23_21(v8);
  v9 = OUTLINED_FUNCTION_68_9();
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_22_22(v10);
  v11 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_26A350360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26A13440C();
  OUTLINED_FUNCTION_157();
  sub_26A34552C();
  v3 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_21_3();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
}

void _ProtoResponse.Component.sectionHeaderStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoSectionHeader_Standard(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_22(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_10_46(v9);
  OUTLINED_FUNCTION_0_67();
  if (v10)
  {
    v11 = sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17(v11);
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    v15 = OUTLINED_FUNCTION_23_31(v14);
    OUTLINED_FUNCTION_19_17(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 54)
  {
    v11 = sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.sectionHeaderRich.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 55)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSectionHeader_Rich(0) + 20);
  if (qword_28036C000 != -1)
  {
    OUTLINED_FUNCTION_90_8(&qword_28036C000);
  }

  *(v0 + v8) = qword_28036D0E0;
}

void _ProtoResponse.Component.sectionHeaderRich.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSectionHeader_Rich(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 55)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C000 != -1)
  {
    OUTLINED_FUNCTION_90_8(&qword_28036C000);
  }

  *(v8 + v14) = qword_28036D0E0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.keyValueStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v4)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 56)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  OUTLINED_FUNCTION_138_2(MEMORY[0x277D84F90]);
  type metadata accessor for _ProtoKeyValue_Standard(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

void _ProtoResponse.Component.keyValueStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoKeyValue_Standard(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_22(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_10_46(v9);
  OUTLINED_FUNCTION_0_67();
  if (v10)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_141_3(MEMORY[0x277D84F90]);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 56)
  {
    sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.tertiaryHeaderStandard.getter()
{
  OUTLINED_FUNCTION_25_21();
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v4)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 57)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  v7 = OUTLINED_FUNCTION_25_25();
  v8 = type metadata accessor for _ProtoTertiaryHeader_Standard(v7);
  OUTLINED_FUNCTION_23_21(v8);
  v9 = OUTLINED_FUNCTION_68_9();
  v10 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_22_22(v10);
  v11 = OUTLINED_FUNCTION_12_29();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void _ProtoResponse.Component.tertiaryHeaderStandard.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  type metadata accessor for _ProtoTertiaryHeader_Standard(v5);
  OUTLINED_FUNCTION_7_28();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_22(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_10_46(v9);
  OUTLINED_FUNCTION_0_67();
  if (v10)
  {
    v11 = sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_32_17(v11);
    v13 = OUTLINED_FUNCTION_67_8();
    v14 = type metadata accessor for _ProtoTextProperty(v13);
    v15 = OUTLINED_FUNCTION_23_31(v14);
    OUTLINED_FUNCTION_19_17(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 57)
  {
    v11 = sub_26A3761EC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A34552C();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.simpleItemRichSearchResult.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 58)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSimpleItem_RichSearchResult(0) + 20);
  if (qword_28036C410 != -1)
  {
    OUTLINED_FUNCTION_89_6(&qword_28036C410);
  }

  *(v0 + v8) = qword_280370C98;
}

void _ProtoResponse.Component.simpleItemRichSearchResult.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSimpleItem_RichSearchResult(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 58)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C410 != -1)
  {
    OUTLINED_FUNCTION_89_6(&qword_28036C410);
  }

  *(v8 + v14) = qword_280370C98;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoResponse.Component.summaryItemSwitchV2.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_2_48();
  if (v5)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 59)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A34552C();
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(type metadata accessor for _ProtoSummaryItem_SwitchV2(0) + 20);
  if (qword_28036C140 != -1)
  {
    OUTLINED_FUNCTION_88_9(&qword_28036C140);
  }

  *(v0 + v8) = qword_28036E8C0;
}

void _ProtoResponse.Component.summaryItemSwitchV2.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  type metadata accessor for _ProtoSummaryItem_SwitchV2(v6);
  OUTLINED_FUNCTION_7_28();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_26_22(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_0_67();
  if (v12)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 59)
    {
      OUTLINED_FUNCTION_157();
      sub_26A34552C();
      goto LABEL_10;
    }

    sub_26A3761EC();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = *(v0 + 20);
  if (qword_28036C140 != -1)
  {
    OUTLINED_FUNCTION_88_9(&qword_28036C140);
  }

  *(v8 + v14) = qword_28036E8C0;

LABEL_10:
  OUTLINED_FUNCTION_67_1();
}

void sub_26A3512D8()
{
  OUTLINED_FUNCTION_76();
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 8);
  v4 = *(*v0 + 16);
  if (v5)
  {
    OUTLINED_FUNCTION_125();
    sub_26A37623C();
    sub_26A13440C();
    sub_26A34552C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
    sub_26A3761EC();
  }

  else
  {
    sub_26A13440C();
    sub_26A34552C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v2);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_75();

  free(v12);
}

void _ProtoResponse.Component.separators.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_15_3(v4);
  *(v0 + 16) = type metadata accessor for _ProtoSeparators(v5);
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  *(v0 + 32) = v8;
  v9 = *(type metadata accessor for _ProtoResponse.Component(0) + 24);
  *(v0 + 40) = v9;
  OUTLINED_FUNCTION_176(v9);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_4_11();
  if (v10)
  {
    *v8 = 0;
    v8[8] = 1;
    *(v8 + 2) = 0;
    v8[24] = 1;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_4_11();
    if (!v10)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A34552C();
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A351550()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_108();
  if (v4)
  {
    OUTLINED_FUNCTION_157();
    sub_26A37623C();
    sub_26A13440C();
    OUTLINED_FUNCTION_30_14();
    sub_26A34552C();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v3);
    sub_26A3761EC();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_30_14();
    sub_26A34552C();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_67_1();

  free(v11);
}

Swift::Void __swiftcall _ProtoResponse.Component.clearSeparators()()
{
  type metadata accessor for _ProtoResponse.Component(0);
  sub_26A13440C();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _ProtoResponse.Component.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for _ProtoResponse.Component(v0);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_57_5();

  return v2(v1);
}

uint64_t _ProtoResponse.Component.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoResponse.Component(v0);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_219_0();

  return v2(v1);
}

uint64_t _ProtoResponse.Component.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoResponse.Component(v0);
  return OUTLINED_FUNCTION_51_5();
}

void static _ProtoResponse.Component.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v441 = v1;
  v442 = v2;
  v3 = type metadata accessor for _ProtoSummaryItem_SwitchV2(0);
  v4 = OUTLINED_FUNCTION_41(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v6 = OUTLINED_FUNCTION_35(v5);
  v7 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(v6);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v10 = OUTLINED_FUNCTION_35(v9);
  v11 = type metadata accessor for _ProtoTertiaryHeader_Standard(v10);
  v12 = OUTLINED_FUNCTION_41(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v14 = OUTLINED_FUNCTION_35(v13);
  v15 = type metadata accessor for _ProtoKeyValue_Standard(v14);
  v16 = OUTLINED_FUNCTION_41(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  v18 = OUTLINED_FUNCTION_35(v17);
  v19 = type metadata accessor for _ProtoSectionHeader_Rich(v18);
  v20 = OUTLINED_FUNCTION_41(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_11();
  v22 = OUTLINED_FUNCTION_35(v21);
  v23 = type metadata accessor for _ProtoSectionHeader_Standard(v22);
  v24 = OUTLINED_FUNCTION_41(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_11();
  v26 = OUTLINED_FUNCTION_35(v25);
  v27 = type metadata accessor for _ProtoHorizontalList_Standard(v26);
  v28 = OUTLINED_FUNCTION_41(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_11();
  v30 = OUTLINED_FUNCTION_35(v29);
  v31 = type metadata accessor for _ProtoHeroHeader(v30);
  v32 = OUTLINED_FUNCTION_41(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_11();
  v34 = OUTLINED_FUNCTION_35(v33);
  v35 = type metadata accessor for _ProtoSash_Standard(v34);
  v36 = OUTLINED_FUNCTION_41(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_11();
  v38 = OUTLINED_FUNCTION_35(v37);
  v39 = type metadata accessor for _ProtoIntentsUI_Standard(v38);
  v40 = OUTLINED_FUNCTION_41(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_11();
  v42 = OUTLINED_FUNCTION_35(v41);
  v43 = type metadata accessor for _ProtoButton_Container(v42);
  v44 = OUTLINED_FUNCTION_13_31(v43, &v418);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_11();
  v46 = OUTLINED_FUNCTION_35(v45);
  v47 = type metadata accessor for _ProtoVisualization_Map(v46);
  v48 = OUTLINED_FUNCTION_41(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_11();
  v50 = OUTLINED_FUNCTION_35(v49);
  v51 = type metadata accessor for _ProtoVisualization_Image(v50);
  v52 = OUTLINED_FUNCTION_41(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_11();
  v54 = OUTLINED_FUNCTION_35(v53);
  v55 = type metadata accessor for _ProtoSystemText_ClarificationTitle(v54);
  v56 = OUTLINED_FUNCTION_41(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_11();
  v58 = OUTLINED_FUNCTION_35(v57);
  v59 = type metadata accessor for _ProtoSummaryItem_Switch(v58);
  v60 = OUTLINED_FUNCTION_41(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_11();
  v62 = OUTLINED_FUNCTION_35(v61);
  v63 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(v62);
  v64 = OUTLINED_FUNCTION_41(v63);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_11();
  v66 = OUTLINED_FUNCTION_35(v65);
  v67 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v66);
  v68 = OUTLINED_FUNCTION_41(v67);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_11();
  v70 = OUTLINED_FUNCTION_35(v69);
  v71 = type metadata accessor for _ProtoSimpleItem_Player(v70);
  v72 = OUTLINED_FUNCTION_41(v71);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_11();
  v74 = OUTLINED_FUNCTION_35(v73);
  v75 = type metadata accessor for _ProtoSummaryItem_Player(v74);
  v76 = OUTLINED_FUNCTION_41(v75);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_11();
  v78 = OUTLINED_FUNCTION_35(v77);
  v79 = type metadata accessor for _ProtoVisualization_Chart(v78);
  v80 = OUTLINED_FUNCTION_41(v79);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_11();
  v82 = OUTLINED_FUNCTION_35(v81);
  v83 = type metadata accessor for _ProtoLongItem_Text(v82);
  v84 = OUTLINED_FUNCTION_41(v83);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_11();
  v86 = OUTLINED_FUNCTION_35(v85);
  v87 = type metadata accessor for _ProtoReference_Footnote(v86);
  v88 = OUTLINED_FUNCTION_41(v87);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_11();
  v90 = OUTLINED_FUNCTION_35(v89);
  v91 = type metadata accessor for _ProtoTable(v90);
  v92 = OUTLINED_FUNCTION_41(v91);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_11();
  v94 = OUTLINED_FUNCTION_35(v93);
  v95 = type metadata accessor for _ProtoFactItem_Button(v94);
  v96 = OUTLINED_FUNCTION_41(v95);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_11();
  v98 = OUTLINED_FUNCTION_35(v97);
  v99 = type metadata accessor for _ProtoSummaryItem_Button(v98);
  v100 = OUTLINED_FUNCTION_41(v99);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_11();
  v102 = OUTLINED_FUNCTION_35(v101);
  v103 = type metadata accessor for _ProtoSummaryItem_PairNumberV2(v102);
  v104 = OUTLINED_FUNCTION_41(v103);
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_11();
  v106 = OUTLINED_FUNCTION_35(v105);
  v107 = type metadata accessor for _ProtoSummaryItem_PairNumber(v106);
  v108 = OUTLINED_FUNCTION_41(v107);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_11();
  v110 = OUTLINED_FUNCTION_35(v109);
  v111 = type metadata accessor for _ProtoSummaryItem_PairV2(v110);
  v112 = OUTLINED_FUNCTION_41(v111);
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_11();
  v114 = OUTLINED_FUNCTION_35(v113);
  v115 = type metadata accessor for _ProtoSummaryItem_Pair(v114);
  v116 = OUTLINED_FUNCTION_41(v115);
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_11();
  v118 = OUTLINED_FUNCTION_35(v117);
  v119 = type metadata accessor for _ProtoReference_Button(v118);
  v120 = OUTLINED_FUNCTION_41(v119);
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_11();
  v122 = OUTLINED_FUNCTION_35(v121);
  v123 = type metadata accessor for _ProtoReference_Rich(v122);
  v124 = OUTLINED_FUNCTION_41(v123);
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_11();
  v126 = OUTLINED_FUNCTION_35(v125);
  v127 = type metadata accessor for _ProtoReference_Logo(v126);
  v128 = OUTLINED_FUNCTION_41(v127);
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_11();
  v130 = OUTLINED_FUNCTION_35(v129);
  v131 = type metadata accessor for _ProtoReference_Standard(v130);
  v132 = OUTLINED_FUNCTION_41(v131);
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_11();
  v134 = OUTLINED_FUNCTION_35(v133);
  v135 = type metadata accessor for _ProtoControl_PlayerButton(v134);
  v136 = OUTLINED_FUNCTION_13_31(v135, v433);
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_11();
  v138 = OUTLINED_FUNCTION_35(v137);
  v139 = type metadata accessor for _ProtoControl_Slider(v138);
  v140 = OUTLINED_FUNCTION_41(v139);
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_11();
  v142 = OUTLINED_FUNCTION_35(v141);
  v143 = type metadata accessor for _ProtoControl_Switch(v142);
  v144 = OUTLINED_FUNCTION_13_31(v143, &v432);
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_11();
  v146 = OUTLINED_FUNCTION_35(v145);
  v147 = type metadata accessor for _ProtoTextInput(v146);
  v148 = OUTLINED_FUNCTION_41(v147);
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_11();
  v150 = OUTLINED_FUNCTION_35(v149);
  v151 = type metadata accessor for _ProtoStatusIndicator_Cancelled(v150);
  v152 = OUTLINED_FUNCTION_41(v151);
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_11();
  v154 = OUTLINED_FUNCTION_35(v153);
  v155 = type metadata accessor for _ProtoStatusIndicator_InProgress(v154);
  v156 = OUTLINED_FUNCTION_41(v155);
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_11();
  v158 = OUTLINED_FUNCTION_35(v157);
  v159 = type metadata accessor for _ProtoStatusIndicator_Error(v158);
  v160 = OUTLINED_FUNCTION_41(v159);
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_11();
  v162 = OUTLINED_FUNCTION_35(v161);
  v163 = type metadata accessor for _ProtoStatusIndicator_Success(v162);
  v164 = OUTLINED_FUNCTION_41(v163);
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_11();
  v166 = OUTLINED_FUNCTION_35(v165);
  v167 = type metadata accessor for _ProtoBinaryButton(v166);
  v168 = OUTLINED_FUNCTION_41(v167);
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_11();
  v170 = OUTLINED_FUNCTION_35(v169);
  v171 = type metadata accessor for _ProtoButton(v170);
  v172 = OUTLINED_FUNCTION_41(v171);
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_11();
  v174 = OUTLINED_FUNCTION_35(v173);
  v175 = type metadata accessor for _ProtoSecondaryHeader_Standard(v174);
  v176 = OUTLINED_FUNCTION_41(v175);
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_11();
  v178 = OUTLINED_FUNCTION_35(v177);
  v179 = type metadata accessor for _ProtoPrimaryHeader_Rich(v178);
  v180 = OUTLINED_FUNCTION_13_31(v179, v431);
  MEMORY[0x28223BE20](v180);
  OUTLINED_FUNCTION_11();
  v182 = OUTLINED_FUNCTION_35(v181);
  v183 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v182);
  v184 = OUTLINED_FUNCTION_13_31(v183, &v430);
  MEMORY[0x28223BE20](v184);
  OUTLINED_FUNCTION_11();
  v186 = OUTLINED_FUNCTION_35(v185);
  v187 = type metadata accessor for _ProtoPrimaryHeader_Standard(v186);
  v188 = OUTLINED_FUNCTION_13_31(v187, &v429);
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_11();
  v190 = OUTLINED_FUNCTION_35(v189);
  v191 = type metadata accessor for _ProtoSimpleItem_Visual(v190);
  v192 = OUTLINED_FUNCTION_41(v191);
  MEMORY[0x28223BE20](v192);
  OUTLINED_FUNCTION_11();
  v194 = OUTLINED_FUNCTION_35(v193);
  v195 = type metadata accessor for _ProtoSimpleItem_Rich(v194);
  v196 = OUTLINED_FUNCTION_13_31(v195, &v428);
  MEMORY[0x28223BE20](v196);
  OUTLINED_FUNCTION_11();
  v198 = OUTLINED_FUNCTION_35(v197);
  v199 = type metadata accessor for _ProtoSimpleItem_Standard(v198);
  v200 = OUTLINED_FUNCTION_13_31(v199, &v427);
  MEMORY[0x28223BE20](v200);
  OUTLINED_FUNCTION_11();
  v202 = OUTLINED_FUNCTION_35(v201);
  v203 = type metadata accessor for _ProtoSummaryItem_DetailedText(v202);
  v204 = OUTLINED_FUNCTION_13_31(v203, &v426);
  MEMORY[0x28223BE20](v204);
  OUTLINED_FUNCTION_11();
  v206 = OUTLINED_FUNCTION_35(v205);
  v207 = type metadata accessor for _ProtoSummaryItem_LargeText(v206);
  v208 = OUTLINED_FUNCTION_13_31(v207, &v425);
  MEMORY[0x28223BE20](v208);
  OUTLINED_FUNCTION_11();
  v210 = OUTLINED_FUNCTION_35(v209);
  v211 = type metadata accessor for _ProtoSummaryItem_Text(v210);
  v212 = OUTLINED_FUNCTION_13_31(v211, &v424);
  MEMORY[0x28223BE20](v212);
  OUTLINED_FUNCTION_11();
  v214 = OUTLINED_FUNCTION_35(v213);
  v215 = type metadata accessor for _ProtoSummaryItem_ShortNumber(v214);
  v216 = OUTLINED_FUNCTION_13_31(v215, &v423);
  MEMORY[0x28223BE20](v216);
  OUTLINED_FUNCTION_11();
  v218 = OUTLINED_FUNCTION_35(v217);
  v219 = type metadata accessor for _ProtoSummaryItem_Standard(v218);
  v220 = OUTLINED_FUNCTION_13_31(v219, &v422);
  MEMORY[0x28223BE20](v220);
  OUTLINED_FUNCTION_11();
  v222 = OUTLINED_FUNCTION_35(v221);
  v223 = type metadata accessor for _ProtoFactItem_HeroNumber(v222);
  v224 = OUTLINED_FUNCTION_13_31(v223, &v421);
  MEMORY[0x28223BE20](v224);
  OUTLINED_FUNCTION_11();
  v226 = OUTLINED_FUNCTION_35(v225);
  v227 = type metadata accessor for _ProtoFactItem_ShortNumber(v226);
  v228 = OUTLINED_FUNCTION_13_31(v227, &v420);
  MEMORY[0x28223BE20](v228);
  OUTLINED_FUNCTION_11();
  v230 = OUTLINED_FUNCTION_35(v229);
  v231 = type metadata accessor for _ProtoFactItem_Standard(v230);
  v232 = OUTLINED_FUNCTION_13_31(v231, &v419);
  MEMORY[0x28223BE20](v232);
  OUTLINED_FUNCTION_11();
  v234 = OUTLINED_FUNCTION_35(v233);
  v235 = type metadata accessor for _ProtoCustomCanvas(v234);
  v236 = OUTLINED_FUNCTION_41(v235);
  MEMORY[0x28223BE20](v236);
  OUTLINED_FUNCTION_11();
  v238 = OUTLINED_FUNCTION_35(v237);
  v440 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(v238);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v239);
  OUTLINED_FUNCTION_8();
  v439 = v240;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v241);
  OUTLINED_FUNCTION_47();
  v438 = v242;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v243);
  OUTLINED_FUNCTION_47();
  v437 = v244;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v245);
  OUTLINED_FUNCTION_47();
  v436 = v246;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v247);
  OUTLINED_FUNCTION_47();
  v435 = v248;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v249);
  OUTLINED_FUNCTION_47();
  v433[50] = v250;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v251);
  OUTLINED_FUNCTION_47();
  v433[49] = v252;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v253);
  OUTLINED_FUNCTION_47();
  v433[48] = v254;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v255);
  OUTLINED_FUNCTION_47();
  v433[47] = v256;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v257);
  OUTLINED_FUNCTION_47();
  v433[46] = v258;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v259);
  OUTLINED_FUNCTION_47();
  v434 = v260;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v261);
  OUTLINED_FUNCTION_47();
  v433[45] = v262;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v263);
  OUTLINED_FUNCTION_47();
  v433[44] = v264;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v265);
  OUTLINED_FUNCTION_47();
  v433[43] = v266;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v267);
  OUTLINED_FUNCTION_47();
  v433[42] = v268;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v269);
  OUTLINED_FUNCTION_47();
  v433[41] = v270;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v271);
  OUTLINED_FUNCTION_47();
  v433[40] = v272;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v273);
  OUTLINED_FUNCTION_47();
  v433[39] = v274;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v275);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v276);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v277);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v278);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v279);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v280);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v281);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v282);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v283);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v284);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v285);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v286);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v287);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v288);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v289);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v290);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v291);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v292);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v293);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v294);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v295);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v296);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v297);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v298);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v299);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v300);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v301);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v302);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v303);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v304);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v305);
  OUTLINED_FUNCTION_152_4();
  MEMORY[0x28223BE20](v306);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v307);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v308);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v309);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v310);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v311);
  v313 = v417 - v312;
  MEMORY[0x28223BE20](v314);
  v316 = v417 - v315;
  MEMORY[0x28223BE20](v317);
  v319 = v417 - v318;
  MEMORY[0x28223BE20](v320);
  v322 = v417 - v321;
  MEMORY[0x28223BE20](v323);
  v325 = v417 - v324;
  MEMORY[0x28223BE20](v326);
  v328 = (v417 - v327);
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372E50, &unk_26A43F7F0);
  OUTLINED_FUNCTION_41(v329);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v330);
  v333 = v417 + *(v332 + 56) - v331;
  sub_26A37623C();
  v442 = v333;
  sub_26A37623C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 1)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128();
      sub_26A34552C();
      OUTLINED_FUNCTION_65_13();
      if (*&v325[v371] != *(v0 + v371))
      {

        OUTLINED_FUNCTION_175();
        sub_26A2C7F08();
        OUTLINED_FUNCTION_126_4();

        if ((v316 & 1) == 0)
        {
          goto LABEL_226;
        }
      }

      goto LABEL_42;
    case 2u:
      sub_26A37623C();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_148();
      sub_26A34552C();
      OUTLINED_FUNCTION_65_13();
      if (*&v322[v365] == *&v313[v365] || (, , OUTLINED_FUNCTION_21_3(), sub_26A2CBC94(), v367 = v366, , , (v367 & 1) != 0))
      {
        sub_26A424794();
        OUTLINED_FUNCTION_1_55();
        sub_26A37650C();
        OUTLINED_FUNCTION_90_7();
        sub_26A424B64();
      }

      sub_26A3761EC();
      OUTLINED_FUNCTION_175();
      goto LABEL_227;
    case 3u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 3)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128();
      sub_26A34552C();
      OUTLINED_FUNCTION_65_13();
      if (*&v319[v370] == *(v0 + v370))
      {
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_175();
      sub_26A2CF6B4();
      OUTLINED_FUNCTION_126_4();

      if (v316)
      {
        goto LABEL_42;
      }

      goto LABEL_226;
    case 4u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 4)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_148();
      sub_26A34552C();
      OUTLINED_FUNCTION_65_13();
      if (*&v316[v362] == *&v313[v362] || (, , OUTLINED_FUNCTION_175(), sub_26A18F48C(), v364 = v363, , , (v364 & 1) != 0))
      {
        sub_26A424794();
        OUTLINED_FUNCTION_1_55();
        sub_26A37650C();
        OUTLINED_FUNCTION_115();
        sub_26A424B64();
      }

      goto LABEL_226;
    case 5u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 5)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128();
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33();
      if (v408)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A19336C();
      OUTLINED_FUNCTION_126_4();

      if (v316)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 6u:
      OUTLINED_FUNCTION_148();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 6)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128();
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33();
      if (v408)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A19699C();
      OUTLINED_FUNCTION_126_4();

      if (v316)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 7u:
      OUTLINED_FUNCTION_148();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 7)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128();
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33();
      if (v408)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A199228();
      OUTLINED_FUNCTION_126_4();

      if (v316)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 8u:
      OUTLINED_FUNCTION_148();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 8)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128();
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33();
      if (v408)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A19C6A4();
      OUTLINED_FUNCTION_126_4();

      if (v316)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 9u:
      OUTLINED_FUNCTION_148();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 9)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128();
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33();
      if (v408)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A2674E8();
      OUTLINED_FUNCTION_126_4();

      if (v316)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 0xAu:
      OUTLINED_FUNCTION_148();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 10)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128();
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33();
      if (v408)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A26BA64();
      OUTLINED_FUNCTION_126_4();

      if (v316)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 0xBu:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 11)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      OUTLINED_FUNCTION_157();
      static _ProtoSimpleItem_Visual.== infix(_:_:)();
      goto LABEL_159;
    case 0xCu:
      OUTLINED_FUNCTION_148();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 12)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128();
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33();
      if (v408)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A3FD598();
      OUTLINED_FUNCTION_126_4();

      if (v316)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 0xDu:
      OUTLINED_FUNCTION_148();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 13)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128();
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33();
      if (v408)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A3FFA58();
      OUTLINED_FUNCTION_126_4();

      if (v316)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 0xEu:
      OUTLINED_FUNCTION_148();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 14)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128();
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33();
      if (v408)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A4026C8();
      OUTLINED_FUNCTION_126_4();

      if (v316)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 0xFu:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 15)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v368 = OUTLINED_FUNCTION_157();
      static _ProtoSecondaryHeader_Standard.== infix(_:_:)(v368, v369);
      goto LABEL_159;
    case 0x10u:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 16)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v345 = OUTLINED_FUNCTION_157();
      static _ProtoButton.== infix(_:_:)(v345, v346);
      goto LABEL_159;
    case 0x11u:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 17)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      OUTLINED_FUNCTION_157();
      static _ProtoBinaryButton.== infix(_:_:)();
      goto LABEL_159;
    case 0x12u:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 18)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v380 = OUTLINED_FUNCTION_157();
      static _ProtoStatusIndicator_Success.== infix(_:_:)(v380, v381);
      goto LABEL_159;
    case 0x13u:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 19)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v390 = OUTLINED_FUNCTION_157();
      static _ProtoStatusIndicator_Error.== infix(_:_:)(v390, v391);
      goto LABEL_159;
    case 0x14u:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 20)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v376 = OUTLINED_FUNCTION_157();
      static _ProtoStatusIndicator_InProgress.== infix(_:_:)(v376, v377);
      goto LABEL_159;
    case 0x15u:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 21)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v378 = OUTLINED_FUNCTION_157();
      static _ProtoStatusIndicator_Cancelled.== infix(_:_:)(v378, v379);
      goto LABEL_159;
    case 0x16u:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 22)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v386 = OUTLINED_FUNCTION_157();
      static _ProtoTextInput.== infix(_:_:)(v386, v387);
      goto LABEL_159;
    case 0x17u:
      OUTLINED_FUNCTION_148();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 23)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128();
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33();
      if (v408)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_175();
      sub_26A1CE844();
      OUTLINED_FUNCTION_126_4();

      if (v316)
      {
        goto LABEL_113;
      }

      goto LABEL_226;
    case 0x18u:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 24)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      OUTLINED_FUNCTION_157();
      static _ProtoControl_Slider.== infix(_:_:)();
      goto LABEL_159;
    case 0x19u:
      OUTLINED_FUNCTION_148();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 25)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_128();
      sub_26A34552C();
      OUTLINED_FUNCTION_11_33();
      if (v408 || (, , OUTLINED_FUNCTION_175(), sub_26A1D2380(), OUTLINED_FUNCTION_126_4(), , (v316 & 1) != 0))
      {
LABEL_113:
        sub_26A424794();
        OUTLINED_FUNCTION_1_55();
        sub_26A37650C();
        OUTLINED_FUNCTION_33_15();
      }

      goto LABEL_226;
    case 0x1Au:
      v402 = v433[17];
      sub_26A37623C();
      v404 = *v402;
      v403 = v402[1];
      v405 = v442;
      if (swift_getEnumCaseMultiPayload() != 26)
      {

        goto LABEL_216;
      }

      v406 = *v405;
      v407 = v405[1];
      v408 = v404 == v406 && v403 == v407;
      if (!v408)
      {
        OUTLINED_FUNCTION_246();
        sub_26A425354();
      }

LABEL_228:
      sub_26A3761EC();
      break;
    case 0x1Bu:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 27)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      OUTLINED_FUNCTION_157();
      static _ProtoReference_Standard.== infix(_:_:)();
      goto LABEL_159;
    case 0x1Cu:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 28)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      OUTLINED_FUNCTION_157();
      static _ProtoReference_Logo.== infix(_:_:)();
      goto LABEL_159;
    case 0x1Du:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 29)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v398 = OUTLINED_FUNCTION_157();
      static _ProtoReference_Rich.== infix(_:_:)(v398, v399);
      goto LABEL_159;
    case 0x1Eu:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 30)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      OUTLINED_FUNCTION_157();
      static _ProtoReference_Button.== infix(_:_:)();
      goto LABEL_159;
    case 0x1Fu:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 31)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v372 = OUTLINED_FUNCTION_157();
      static _ProtoSummaryItem_Pair.== infix(_:_:)(v372, v373);
      goto LABEL_159;
    case 0x20u:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 32)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v382 = OUTLINED_FUNCTION_157();
      static _ProtoSummaryItem_PairV2.== infix(_:_:)(v382, v383);
      goto LABEL_159;
    case 0x21u:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 33)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v349 = OUTLINED_FUNCTION_157();
      static _ProtoSummaryItem_PairNumber.== infix(_:_:)(v349, v350);
      goto LABEL_159;
    case 0x22u:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 34)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v343 = OUTLINED_FUNCTION_157();
      static _ProtoSummaryItem_PairNumberV2.== infix(_:_:)(v343, v344);
      goto LABEL_159;
    case 0x23u:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 35)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v339 = OUTLINED_FUNCTION_157();
      static _ProtoSummaryItem_Button.== infix(_:_:)(v339, v340);
      goto LABEL_159;
    case 0x24u:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 36)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v341 = OUTLINED_FUNCTION_157();
      static _ProtoFactItem_Button.== infix(_:_:)(v341, v342);
      goto LABEL_159;
    case 0x25u:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 37)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v337 = OUTLINED_FUNCTION_157();
      static _ProtoTable.== infix(_:_:)(v337);
      goto LABEL_159;
    case 0x26u:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 38)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v400 = OUTLINED_FUNCTION_157();
      static _ProtoReference_Footnote.== infix(_:_:)(v400, v401);
      goto LABEL_159;
    case 0x27u:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 39)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v388 = OUTLINED_FUNCTION_157();
      static _ProtoLongItem_Text.== infix(_:_:)(v388, v389);
      goto LABEL_159;
    case 0x28u:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 40)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      OUTLINED_FUNCTION_157();
      static _ProtoVisualization_Chart.== infix(_:_:)();
      goto LABEL_159;
    case 0x29u:
      OUTLINED_FUNCTION_128();
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 41)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v374 = OUTLINED_FUNCTION_157();
      static _ProtoSummaryItem_Player.== infix(_:_:)(v374, v375);
      goto LABEL_159;
    case 0x2Au:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 42)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v394 = OUTLINED_FUNCTION_157();
      static _ProtoSimpleItem_Player.== infix(_:_:)(v394, v395);
      goto LABEL_159;
    case 0x2Bu:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 43)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v335 = OUTLINED_FUNCTION_157();
      static _ProtoSimpleItem_ReverseRich.== infix(_:_:)(v335, v336);
      goto LABEL_159;
    case 0x2Cu:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 44)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v347 = OUTLINED_FUNCTION_157();
      static _ProtoSecondaryHeader_Emphasized.== infix(_:_:)(v347, v348);
      goto LABEL_159;
    case 0x2Du:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 45)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v384 = OUTLINED_FUNCTION_157();
      static _ProtoSummaryItem_Switch.== infix(_:_:)(v384, v385);
      goto LABEL_159;
    case 0x2Eu:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 46)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v413 = OUTLINED_FUNCTION_157();
      static _ProtoSystemText_ClarificationTitle.== infix(_:_:)(v413, v414);
      goto LABEL_159;
    case 0x2Fu:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 47)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      OUTLINED_FUNCTION_157();
      static _ProtoVisualization_Image.== infix(_:_:)();
      goto LABEL_159;
    case 0x30u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 48)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      OUTLINED_FUNCTION_157();
      static _ProtoVisualization_Map.== infix(_:_:)();
      goto LABEL_159;
    case 0x31u:
      v353 = v434;
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 49)
      {
        goto LABEL_215;
      }

      v354 = v431[9];
      sub_26A34552C();
      sub_26A0DCCA8(*v353, *v354, v355, v356, v357, v358, v359, v360, v417[0], v417[1], v417[2], v417[3], v417[4], v417[5]);
      if (v361)
      {
LABEL_42:
        sub_26A424794();
        OUTLINED_FUNCTION_1_55();
        sub_26A37650C();
        sub_26A424B64();
      }

LABEL_226:
      sub_26A3761EC();
LABEL_227:
      sub_26A3761EC();
      goto LABEL_228;
    case 0x32u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 50)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v334 = OUTLINED_FUNCTION_157();
      static _ProtoIntentsUI_Standard.== infix(_:_:)(v334);
      goto LABEL_159;
    case 0x33u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 51)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v415 = OUTLINED_FUNCTION_157();
      static _ProtoSash_Standard.== infix(_:_:)(v415, v416);
      goto LABEL_159;
    case 0x34u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 52)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v411 = OUTLINED_FUNCTION_157();
      static _ProtoHeroHeader.== infix(_:_:)(v411, v412);
      goto LABEL_159;
    case 0x35u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 53)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      OUTLINED_FUNCTION_157();
      static _ProtoHorizontalList_Standard.== infix(_:_:)();
      goto LABEL_159;
    case 0x36u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 54)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      OUTLINED_FUNCTION_157();
      static _ProtoSectionHeader_Standard.== infix(_:_:)();
      goto LABEL_159;
    case 0x37u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 55)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v409 = OUTLINED_FUNCTION_157();
      static _ProtoSectionHeader_Rich.== infix(_:_:)(v409, v410);
      goto LABEL_159;
    case 0x38u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 56)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v338 = OUTLINED_FUNCTION_157();
      static _ProtoKeyValue_Standard.== infix(_:_:)(v338);
      goto LABEL_159;
    case 0x39u:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 57)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v392 = OUTLINED_FUNCTION_157();
      static _ProtoTertiaryHeader_Standard.== infix(_:_:)(v392, v393);
      goto LABEL_159;
    case 0x3Au:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 58)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v351 = OUTLINED_FUNCTION_157();
      static _ProtoSimpleItem_RichSearchResult.== infix(_:_:)(v351, v352);
      goto LABEL_159;
    case 0x3Bu:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10() != 59)
      {
        goto LABEL_215;
      }

      OUTLINED_FUNCTION_120_2();
      v396 = OUTLINED_FUNCTION_157();
      static _ProtoSummaryItem_SwitchV2.== infix(_:_:)(v396, v397);
LABEL_159:
      sub_26A3761EC();
      goto LABEL_160;
    default:
      sub_26A37623C();
      if (OUTLINED_FUNCTION_42_10())
      {
LABEL_215:
        sub_26A3761EC();
LABEL_216:
        sub_26A13440C();
      }

      else
      {
        OUTLINED_FUNCTION_128();
        sub_26A34552C();
        static _ProtoCustomCanvas.== infix(_:_:)(v328, v0);
        sub_26A3761EC();
LABEL_160:
        sub_26A3761EC();
        sub_26A3761EC();
      }

      break;
  }

  OUTLINED_FUNCTION_75();
}