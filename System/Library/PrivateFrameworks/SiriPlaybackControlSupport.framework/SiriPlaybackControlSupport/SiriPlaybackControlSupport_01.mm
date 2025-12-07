uint64_t MediaGroup.members.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MediaGroup.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MediaGroup.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaGroup(0) + 24);
  v4 = sub_268C1531C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MediaGroup(uint64_t a1)
{
  result = qword_2802CE0B0;
  if (!qword_2802CE0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MediaGroup.init(name:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = MEMORY[0x277D84F90];
  *(a4 + 1) = a1;
  *(a4 + 2) = a2;
  v6 = *(type metadata accessor for MediaGroup(0) + 24);
  v7 = sub_268C1531C();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t MediaGroup.description.getter()
{
  sub_268C1606C();
  MEMORY[0x26D627230](0xD000000000000013, 0x8000000268C1BDF0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE098, &qword_268C177C0);
  v1 = sub_268C15C0C();
  MEMORY[0x26D627230](v1);

  MEMORY[0x26D627230](0x69746E656469202CLL, 0xEE00203A72656966);
  type metadata accessor for MediaGroup(0);
  sub_268C1531C();
  sub_268BC19A4();
  v2 = sub_268C1616C();
  MEMORY[0x26D627230](v2);

  MEMORY[0x26D627230](0x7265626D656D202CLL, 0xEB00000000203A73);
  v3 = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0A8, &qword_268C177C8);
  v5 = MEMORY[0x26D6272E0](v3, v4);
  MEMORY[0x26D627230](v5);

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return 0;
}

unint64_t sub_268BC19A4()
{
  result = qword_2802CE0A0;
  if (!qword_2802CE0A0)
  {
    sub_268C1531C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE0A0);
  }

  return result;
}

uint64_t sub_268BC1A14(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_268C1531C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_268BC1AB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_268C1531C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_268BC1B30(uint64_t a1)
{
  sub_268BC1BCC(319);
  if (v1 <= 0x3F)
  {
    sub_268BC1C30();
    if (v2 <= 0x3F)
    {
      sub_268C1531C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_268BC1BCC(uint64_t a1)
{
  if (!qword_2802CE0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802CE0A8, &qword_268C177C8);
    v1 = sub_268C15D7C();
    if (!v2)
    {
      atomic_store(v1, &qword_2802CE0C0);
    }
  }
}

void sub_268BC1C30()
{
  if (!qword_2802CE0C8)
  {
    v0 = sub_268C15F1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2802CE0C8);
    }
  }
}

SiriPlaybackControlSupport::Reference_optional __swiftcall ControlsUsoTask.reference()()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v67 = v2;
  sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v65 = v4;
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_0();
  v64 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0D0, &qword_268C17840);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_17_2();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF50, &qword_268C172D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v64 - v15;
  v17 = sub_268C155DC();
  OUTLINED_FUNCTION_3_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15_0();
  v23 = v22 - v21;
  sub_268BC230C(v1, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_268BC4CFC(v16, &qword_2802CDF50, &qword_268C172D0);
    goto LABEL_17;
  }

  (*(v19 + 32))(v23, v16, v17);
  v24 = sub_268C155CC();
  if (!v25)
  {
    goto LABEL_16;
  }

  if (v24 == 0xD000000000000014 && v25 == 0x8000000268C1BE10)
  {
  }

  else
  {
    v27 = sub_268C1618C();

    if ((v27 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (sub_268C155BC() == 6645876 && v28 == 0xE300000000000000)
  {
  }

  else
  {
    v30 = sub_268C1618C();

    if ((v30 & 1) == 0)
    {
LABEL_16:
      v31 = OUTLINED_FUNCTION_19_3();
      v32(v31);
      goto LABEL_17;
    }
  }

  if (sub_268C1552C() == 0xD00000000000001CLL && 0x8000000268C1BE30 == v56)
  {

    v61 = OUTLINED_FUNCTION_19_3();
    v62(v61);
LABEL_44:
    v55 = 1;
    goto LABEL_45;
  }

  v58 = sub_268C1618C();

  v59 = OUTLINED_FUNCTION_19_3();
  v60(v59);
  if (v58)
  {
    goto LABEL_44;
  }

LABEL_17:
  v33 = OUTLINED_FUNCTION_8_3();
  if (!v34(v33) || (sub_268C156AC(), OUTLINED_FUNCTION_33_1(), , !v17))
  {
    v35 = OUTLINED_FUNCTION_8_3();
    if (!v36(v35) || (sub_268C156AC(), OUTLINED_FUNCTION_33_1(), , !v17))
    {
      v37 = OUTLINED_FUNCTION_8_3();
      if (!v38(v37) || (sub_268C156AC(), OUTLINED_FUNCTION_33_1(), , !v17))
      {
        v55 = 5;
LABEL_45:
        *v67 = v55;
        goto LABEL_46;
      }
    }
  }

  sub_268C157FC();
  v39 = sub_268C1580C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v39);
  v42 = v65;
  v41 = v66;
  if (EnumTagSinglePayload == 1)
  {
LABEL_24:
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_2802CDBE0);
    }

    v43 = __swift_project_value_buffer(v41, qword_2802D2F10);
    v44 = v64;
    (*(v42 + 16))(v64, v43, v41);

    v45 = sub_268C159FC();
    v46 = sub_268C15DEC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_25_2();
      v48 = OUTLINED_FUNCTION_24_2();
      v68 = v17;
      v69 = v48;
      *v47 = 136315138;
      sub_268C1581C();

      v49 = sub_268C15C0C();
      v51 = sub_268BB3D28(v49, v50, &v69);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_268BAD000, v45, v46, "MediaPlayerUsoTaskDefinition#reference unexpected value: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30();

      (*(v42 + 8))(v64, v41);
    }

    else
    {

      (*(v42 + 8))(v44, v41);
    }

    v54 = 5;
    goto LABEL_32;
  }

  sub_268BC4AB8(v13, v10);
  v52 = *(v39 - 8);
  v53 = (*(v52 + 88))(v10, v39);
  if (v53 == *MEMORY[0x277D5EE48])
  {

    v54 = 4;
  }

  else
  {
    if (v53 != *MEMORY[0x277D5EE50])
    {
      (*(v52 + 8))(v10, v39);
      goto LABEL_24;
    }

    v54 = 3;
  }

LABEL_32:
  *v67 = v54;
  sub_268BC4CFC(v13, &qword_2802CE0D0, &qword_268C17840);
LABEL_46:
  OUTLINED_FUNCTION_32_0();
  return result;
}

uint64_t sub_268BC230C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 40))() && (v3 = sub_268C156BC(), , v3))
  {
    sub_268BC3104(v3, a2);
  }

  else
  {
    v5 = sub_268C155DC();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v5);
  }
}

void ControlsUsoTask.listPosition.getter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_2();
  v13 = v11 - v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  if (!(*(v2 + 40))(v4, v2, v15) || (sub_268C1568C(), OUTLINED_FUNCTION_23_2(), !v0))
  {
    v18 = OUTLINED_FUNCTION_8_3();
    if (!v19(v18) || (sub_268C1568C(), OUTLINED_FUNCTION_23_2(), !v0))
    {
      v20 = OUTLINED_FUNCTION_8_3();
      if (!v21(v20) || (sub_268C1568C(), OUTLINED_FUNCTION_23_2(), !v0))
      {
        v23 = 0;
LABEL_21:
        v46 = -1;
        goto LABEL_22;
      }
    }
  }

  v22 = v9;
  sub_268C0D638(&v51);
  v23 = v51;
  v24 = v52;
  if (v52 == 255)
  {
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_2802CDBE0);
    }

    v34 = __swift_project_value_buffer(v7, qword_2802D2F10);
    (*(v22 + 16))(v13, v34, v7);

    v35 = sub_268C159FC();
    v36 = sub_268C15DEC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_25_2();
      v48 = v22;
      v38 = v37;
      v39 = OUTLINED_FUNCTION_24_2();
      v50 = v0;
      v51 = v39;
      *v38 = 136315138;
      sub_268C157EC();
      v49 = v23;

      v40 = sub_268C15C0C();
      v42 = v6;
      v43 = sub_268BB3D28(v40, v41, &v51);
      v23 = v49;

      *(v38 + 4) = v43;
      v6 = v42;
      _os_log_impl(&dword_268BAD000, v35, v36, "Unable to get list position from: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_16_2();
    }

    else
    {
    }

    v44 = OUTLINED_FUNCTION_32_1();
    v45(v44);
    goto LABEL_21;
  }

  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v25 = __swift_project_value_buffer(v7, qword_2802D2F10);
  (*(v22 + 16))(v17, v25, v7);
  v26 = sub_268C159FC();
  v27 = sub_268C15DFC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_25_2();
    v48 = v22;
    v29 = v28;
    v30 = OUTLINED_FUNCTION_24_2();
    v49 = v23;
    v50 = v30;
    v31 = v30;
    *v29 = 136315138;
    v51 = v49;
    v52 = v24 & 1;
    v32 = ListPosition.description.getter();
    sub_268BB3D28(v32, v33, &v50);
    v47 = v7;
    OUTLINED_FUNCTION_33_1();

    *(v29 + 4) = v6;
    _os_log_impl(&dword_268BAD000, v26, v27, "List position: %s)", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v23 = v49;
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_16_2();

    (*(v48 + 8))(v17, v47);
  }

  else
  {

    (*(v22 + 8))(v17, v7);
  }

  v46 = v24 & 1;
LABEL_22:
  *v6 = v23;
  *(v6 + 8) = v46;
  OUTLINED_FUNCTION_32_0();
}

Swift::String_optional __swiftcall ControlsUsoTask.appBundleId(excluding:)(Swift::OpaquePointer excluding)
{
  OUTLINED_FUNCTION_31_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17_2();
  v14 = v12 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v40[-1] - v17;
  if ((*(v3 + 40))(v5, v3, v16) && (sub_268C1569C(), OUTLINED_FUNCTION_23_2(), v1) || (*(v3 + 48))(v5, v3) && (sub_268C1569C(), OUTLINED_FUNCTION_23_2(), v1) || (*(v3 + 32))(v5, v3) && (sub_268C1569C(), OUTLINED_FUNCTION_23_2(), v1))
  {
    sub_268C13120();
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      v40[0] = v19;
      v40[1] = v20;
      MEMORY[0x28223BE20](v19);
      *(&v39 - 2) = v40;
      if (sub_268BC48EC(sub_268BC4C7C, (&v39 - 4), v7))
      {
      }

      else
      {
        if (qword_2802CDBE0 != -1)
        {
          OUTLINED_FUNCTION_18(&qword_2802CDBE0);
        }

        v31 = __swift_project_value_buffer(v8, qword_2802D2F10);
        (*(v10 + 16))(v18, v31, v8);

        v32 = sub_268C159FC();
        v33 = sub_268C15DFC();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = OUTLINED_FUNCTION_25_2();
          v35 = OUTLINED_FUNCTION_24_2();
          v40[0] = v35;
          *v34 = 136315138;
          *(v34 + 4) = sub_268BB3D28(v21, v22, v40);
          _os_log_impl(&dword_268BAD000, v32, v33, "ControlsUsoTask.appBundleId: %s)", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_30();
        }

        else
        {
        }

        (*(v10 + 8))(v18, v8);
      }
    }

    else
    {
      if (qword_2802CDBE0 != -1)
      {
        OUTLINED_FUNCTION_18(&qword_2802CDBE0);
      }

      v23 = __swift_project_value_buffer(v8, qword_2802D2F10);
      (*(v10 + 16))(v14, v23, v8);

      v24 = sub_268C159FC();
      v25 = sub_268C15DEC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = OUTLINED_FUNCTION_25_2();
        v27 = OUTLINED_FUNCTION_24_2();
        v40[0] = v27;
        *v26 = 136315138;
        v40[2] = v1;
        sub_268C1571C();

        v28 = sub_268C15C0C();
        v30 = sub_268BB3D28(v28, v29, v40);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_268BAD000, v24, v25, "Unable to get app bundle identifier from: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30();
      }

      else
      {
      }

      (*(v10 + 8))(v14, v8);
    }
  }

  OUTLINED_FUNCTION_32_0();
  result.value._object = v37;
  result.value._countAndFlagsBits = v36;
  return result;
}

uint64_t sub_268BC2D7C(uint64_t a1, uint64_t a2)
{
  v23 = sub_268C154AC();
  v19 = *(v23 - 8);
  v5 = MEMORY[0x28223BE20](v23);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 56);
  v21 = a2;
  v22 = v2;
  v20 = a1;
  v9 = v8(a1, a2, v5);
  v10 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  result = sub_268BC4A94(v9);
  v12 = result;
  v13 = 0;
  while (1)
  {
    if (v12 == v13)
    {

      v15 = v19;
      v16 = v23;
      (*(v19 + 104))(v7, *MEMORY[0x277D5E478], v23);
      v17 = sub_268BC38BC(v7, v20, v21);
      (*(v15 + 8))(v7, v16);
      v25 = v10;
      sub_268BB00A4(v17);
      return v25;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D627640](v13, v9);
    }

    else
    {
      if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    sub_268C1563C();

    ++v13;
    if (v24)
    {
      MEMORY[0x26D6272B0](result);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268C15D2C();
      }

      result = sub_268C15D5C();
      v10 = v25;
      v13 = v14;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_268BC3104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_268C155DC();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_268BC31AC(uint64_t a1)
{
  result = sub_268BC4E14(a1);
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
    return sub_268BC4DC0(result, v3, 0, a1);
  }
}

double sub_268BC3228@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_268BB5B20(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *sub_268BC3248(uint64_t a1)
{
  result = sub_268BC4E14(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_268BC4E54(&v5, result, v3, 0, a1);
  }
}

void ControlsUsoTask.haFromEntities()()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v2 = sub_268C154AC();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_0();
  v8 = v7 - v6;
  (*(v4 + 104))(v7 - v6, *MEMORY[0x277D5E470], v2);
  v9 = OUTLINED_FUNCTION_32_1();
  v11 = sub_268BC38BC(v9, v10, v1);
  (*(v4 + 8))(v8, v2);
  v12 = sub_268BC4A94(v11);
  v13 = 0;
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v12 == v13)
    {

      OUTLINED_FUNCTION_32_0();
      return;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D627640](v13, v11);
    }

    else
    {
      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }
    }

    if (__OFADD__(v13, 1))
    {
      break;
    }

    v24[3] = &type metadata for HomeAutomationEntityQuery;
    v24[4] = &protocol witness table for HomeAutomationEntityQuery;
    v14 = swift_allocObject();
    v24[0] = v14;

    sub_268C00250(v14 + 16);
    FromEntity.init(haEntity:)(v24, v25);

    v15 = v26;
    if (v26)
    {
      v21 = v25[1];
      v22 = v25[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_7();
        sub_268BB2E84();
        v23 = v19;
      }

      v17 = *(v23 + 16);
      v16 = *(v23 + 24);
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_10_3(v16);
        sub_268BB2E84();
        v23 = v20;
      }

      *(v23 + 16) = v17 + 1;
      v18 = v23 + 24 * v17;
      *(v18 + 32) = v22;
      *(v18 + 40) = v21;
      *(v18 + 48) = v15;
      ++v13;
    }

    else
    {

      ++v13;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

unint64_t sub_268BC38BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268C154AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_268C15A1C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = (*(a3 + 56))(a2, a3, v12);
  v36 = a1;
  v16 = sub_268BE6660(sub_268BC4ED8, v35, v15);

  if (sub_268BC4A94(v16))
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v10, qword_2802D2F10);
    (*(v11 + 16))(v14, v17, v10);
    (*(v7 + 16))(v9, a1, v6);

    v18 = sub_268C159FC();
    v19 = sub_268C15DFC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37[0] = v33;
      *v20 = 136315394;
      v32 = v19;
      v21 = sub_268C1549C();
      v34 = v11;
      v23 = v22;
      (*(v7 + 8))(v9, v6);
      v24 = sub_268BB3D28(v21, v23, v37);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = sub_268C153EC();
      v26 = MEMORY[0x26D6272E0](v16, v25);
      v28 = sub_268BB3D28(v26, v27, v37);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_268BAD000, v18, v32, "Found entities with operator: %s, %s", v20, 0x16u);
      v29 = v33;
      swift_arrayDestroy();
      MEMORY[0x26D628010](v29, -1, -1);
      MEMORY[0x26D628010](v20, -1, -1);

      (*(v34 + 8))(v14, v10);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
      (*(v11 + 8))(v14, v10);
    }
  }

  return v16;
}

SiriPlaybackControlSupport::DeviceQuantifier_optional __swiftcall ControlsUsoTask.haDeviceQuantifier()()
{
  v2 = v1;
  v25 = v0;
  v3 = sub_268BC2D7C(v0, v1);
  v4 = sub_268BC4A94(v3);
  v5 = v4;
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      LOBYTE(v4) = MEMORY[0x26D627640](v6, v3);
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }
    }

    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      return v4;
    }

    if (sub_268C1567C())
    {
      sub_268BE22CC(&v28);

      v9 = v28;
      if (v28 == 5)
      {
        goto LABEL_15;
      }

      LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
      if ((v4 & 1) == 0)
      {
        v12 = OUTLINED_FUNCTION_1_2();
        sub_268BB2F78(v12, v13, v14, v15);
        v7 = v4;
      }

      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        v16 = OUTLINED_FUNCTION_10_3(v10);
        sub_268BB2F78(v16, v11 + 1, 1, v7);
        v7 = v4;
      }

      *(v7 + 16) = v11 + 1;
      *(v7 + v11 + 32) = v9;
      v6 = v8;
    }

    else
    {

LABEL_15:
      ++v6;
    }
  }

  v17 = (*(v2 + 24))(v25, v2);
  if (!v18)
  {
    goto LABEL_26;
  }

  if (v17 == 1886352499 && v18 == 0xE400000000000000)
  {
  }

  else
  {
    v20 = sub_268C1618C();

    if ((v20 & 1) == 0)
    {
LABEL_26:
      v21 = v26;
      goto LABEL_27;
    }
  }

  if (*(v7 + 16))
  {
    goto LABEL_26;
  }

  v21 = v26;
  if ((*(v2 + 40))(v25, v2))
  {
    if (sub_268C1567C())
    {
      sub_268BE22CC(&v27);

      v23 = v27;
      if (v27 != 5)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD98, &qword_268C17140);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_268C172B0;
        *(v7 + 32) = v23;
      }
    }
  }

LABEL_27:
  if (*(v7 + 16))
  {
    v22 = *(v7 + 32);
  }

  else
  {
    v22 = 5;
  }

  *v21 = v22;

  return v4;
}

SiriPlaybackControlSupport::PlaceHint_optional __swiftcall ControlsUsoTask.haPlaceHint()()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v4 = v3;
  v75 = v5;
  v73 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v72 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  v71 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0D8, &qword_268C17848);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v71 - v11;
  v13 = sub_268C153DC();
  OUTLINED_FUNCTION_3_0();
  v77 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_2();
  v85 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v84 = &v71 - v19;
  v80 = v4;
  v81 = v2;
  v82 = v0;
  v20 = sub_268BC2D7C(v4, v2);
  v21 = sub_268BC4A94(v20);
  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  while (v21 != v22)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D627640](v22, v20);
    }

    else
    {
      if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }
    }

    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      OUTLINED_FUNCTION_18(&qword_2802CDBE0);
LABEL_37:
      v54 = v73;
      v55 = __swift_project_value_buffer(v73, qword_2802D2F10);
      v56 = v72;
      v57 = v71;
      (*(v72 + 16))(v71, v55, v54);
      v58 = sub_268C159FC();
      v59 = sub_268C15DFC();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = OUTLINED_FUNCTION_25_2();
        v61 = v56;
        v62 = OUTLINED_FUNCTION_24_2();
        v86[0] = v62;
        *v60 = 136315138;

        v64 = MEMORY[0x26D6272E0](v63, &type metadata for PlaceHint);
        v66 = v65;

        v67 = sub_268BB3D28(v64, v66, v86);

        *(v60 + 4) = v67;
        _os_log_impl(&dword_268BAD000, v58, v59, "Found place hints: %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v62);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();

        (*(v61 + 8))(v57, v54);
      }

      else
      {

        (*(v56 + 8))(v57, v54);
      }

      v69 = v75;
      if (*(v22 + 16))
      {
        v68 = *(v22 + 32);
      }

      else
      {
        v68 = 20;
      }

      goto LABEL_44;
    }

    sub_268C00250(v86);
    memcpy(v87, v86, 0x65uLL);
    sub_268BB5BF4(v87);
    v25 = BYTE3(v87[12]);
    if (BYTE3(v87[12]) == 20)
    {
      ++v22;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = OUTLINED_FUNCTION_7();
        sub_268BB2FA0(v29, v30, v31, v23);
        v23 = v32;
      }

      v27 = *(v23 + 16);
      v26 = *(v23 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v33 = OUTLINED_FUNCTION_10_3(v26);
        v79 = v34;
        sub_268BB2FA0(v33, v34, 1, v23);
        v28 = v79;
        v23 = v35;
      }

      *(v23 + 16) = v28;
      *(v23 + v27 + 32) = v25;
      v22 = v24;
    }
  }

  v87[0] = v23;
  v36 = sub_268BC2D7C(v80, v81);
  v37 = sub_268BC4A94(v36);
  v22 = 0;
  v38 = v36 & 0xC000000000000001;
  v39 = v36 & 0xFFFFFFFFFFFFFF8;
  v82 = (v77 + 4);
  v80 = (v77 + 11);
  LODWORD(v79) = *MEMORY[0x277D5E238];
  v78 = *MEMORY[0x277D5E230];
  ++v77;
  v76 = MEMORY[0x277D84F90];
  v83 = v12;
  v81 = v36 & 0xFFFFFFFFFFFFFF8;
  while (v37 != v22)
  {
    if (v38)
    {
      MEMORY[0x26D627640](v22, v36);
    }

    else
    {
      if (v22 >= *(v39 + 16))
      {
        goto LABEL_48;
      }
    }

    if (__OFADD__(v22, 1))
    {
      goto LABEL_47;
    }

    sub_268C153CC();

    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      sub_268BC4CFC(v12, &qword_2802CE0D8, &qword_268C17848);
      goto LABEL_26;
    }

    v39 = v36;
    v36 = v38;
    v38 = v37;
    v40 = *v82;
    v41 = v84;
    (*v82)(v84, v12, v13);
    v37 = v85;
    v40(v85, v41, v13);
    v42 = (*v80)(v37, v13);
    if (v42 == v79)
    {
      v43 = 1;
      goto LABEL_29;
    }

    if (v42 == v78)
    {
      v43 = 3;
LABEL_29:
      v74 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = OUTLINED_FUNCTION_7();
        sub_268BB2FA0(v47, v48, v49, v50);
        v76 = v51;
      }

      OUTLINED_FUNCTION_20_1();
      v45 = *(v76 + 16);
      v44 = *(v76 + 24);
      v12 = v83;
      if (v45 >= v44 >> 1)
      {
        v52 = OUTLINED_FUNCTION_10_3(v44);
        sub_268BB2FA0(v52, v45 + 1, 1, v76);
        v76 = v53;
      }

      v46 = v76;
      *(v76 + 16) = v45 + 1;
      *(v46 + v45 + 32) = v74;
      ++v22;
    }

    else
    {
      (*v77)(v85, v13);
      OUTLINED_FUNCTION_20_1();
      v12 = v83;
LABEL_26:
      ++v22;
    }
  }

  sub_268BB01BC(v76);
  v22 = v87[0];
  if (*(v87[0] + 16))
  {
    if (qword_2802CDBE0 == -1)
    {
      goto LABEL_37;
    }

    goto LABEL_49;
  }

  v68 = 20;
  v69 = v75;
LABEL_44:
  *v69 = v68;

  OUTLINED_FUNCTION_32_0();
  return result;
}

uint64_t sub_268BC47F0@<X0>(void *a1@<X8>)
{
  result = sub_268C1562C();
  if (!result)
  {
    goto LABEL_13;
  }

  v3 = sub_268C1565C();
  v5 = v4;
  v6 = sub_268C1549C();
  if (!v5)
  {

    goto LABEL_10;
  }

  if (v3 == v6 && v5 == v7)
  {

    goto LABEL_12;
  }

  v9 = sub_268C1618C();

  if ((v9 & 1) == 0)
  {
LABEL_10:

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

LABEL_12:
  sub_268C1566C();

  v10 = v11;
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_14:
  *a1 = v10;
  return result;
}

BOOL sub_268BC48EC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

    v8 = a1(v11);
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

BOOL sub_268BC499C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5, a2);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_268BC4A94(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_268C1613C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_268BC4AB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0D0, &qword_268C17840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_268BC4B38(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_268BC4B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_268C1618C() & 1;
  }
}

uint64_t sub_268BC4BA0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_3(a1, a2, a3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_30_1();
  }

  else
  {
    OUTLINED_FUNCTION_31_1();
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_21_1();
}

uint64_t sub_268BC4BF4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_3(a1, a2, a3);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_30_1();
  }

  else
  {
    OUTLINED_FUNCTION_31_1();
  }

  *v3 = v5;
  return OUTLINED_FUNCTION_21_1();
}

uint64_t sub_268BC4C9C()
{

  return MEMORY[0x2821FE8E8](v0, 117, 7);
}

uint64_t sub_268BC4CFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_268BC4DC0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_268BC4E54(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t OUTLINED_FUNCTION_3_3(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_268BC4B28(a3);

  return sub_268BC4B38(a2, v5, a3);
}

void OUTLINED_FUNCTION_7_2()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
}

void *OUTLINED_FUNCTION_11_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t __src, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return memcpy(va, &__src, 0x65uLL);
}

void OUTLINED_FUNCTION_16_2()
{

  JUMPOUT(0x26D628010);
}

uint64_t OUTLINED_FUNCTION_23_2()
{
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_28_1()
{

  JUMPOUT(0x26D627640);
}

uint64_t OUTLINED_FUNCTION_29_1()
{
}

uint64_t OUTLINED_FUNCTION_30_1()
{
}

void OUTLINED_FUNCTION_31_1()
{

  JUMPOUT(0x26D627640);
}

void sub_268BC5144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_268BD5A48(a1, a2);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v12[4] = sub_268BD81E8;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_268BD8718;
  v12[3] = &block_descriptor_335;
  v10 = _Block_copy(v12);

  v11 = [v8 performWithCompletion_];
  _Block_release(v10);
  swift_unknownObjectRelease();
}

void sub_268BC5260(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = a1;
  sub_268BB9B44(0, &qword_2802CE1A0, 0x277D27958);

  v17 = sub_268BD5C70(a4, a5, &selRef_initWithBundleIdentifier_);
  sub_268BB9B44(0, &qword_2802CE1A8, 0x277D279E8);
  v18 = a3;
  v19 = v17;
  v20 = sub_268BD5384(a3, v17, 0);
  v21 = static MRCommandIDHelper.ensureMRCommandIDInOptions(options:)(a2);
  v22 = sub_268C15B4C();
  v23 = swift_allocObject();
  *(v23 + 16) = a8;
  *(v23 + 24) = a9;
  *(v23 + 32) = v10;
  *(v23 + 40) = v16;
  *(v23 + 48) = v21;
  aBlock[4] = sub_268BD82E4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268BB7C90;
  aBlock[3] = &block_descriptor_356;
  v24 = _Block_copy(aBlock);
  v25 = v20;

  MRMediaRemoteSendCommandToPlayerWithResult();
  _Block_release(v24);
}

void sub_268BC5458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268BB60C8();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_268BD7EE0;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_268BD8718;
  v9[3] = &block_descriptor_271;
  v8 = _Block_copy(v9);

  [v6 requestNowPlayingItemMetadataOnQueue:a1 completion:v8];
  _Block_release(v8);
}

uint64_t sub_268BC5554(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_268BC55D4()
{
  v7 = sub_268C15E4C();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268C15E1C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_268C15AAC();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_268BB9B44(0, &qword_2802CE068, 0x277D85C78);
  sub_268C15A7C();
  v8 = MEMORY[0x277D84F90];
  sub_268BD84E4(&qword_2802CE070, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE078, &unk_268C177B0);
  sub_268BC1190(&unk_2802CE080, &qword_2802CE078, &unk_268C177B0);
  sub_268C15FCC();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_268C15E8C();
  qword_2802CE0E0 = result;
  return result;
}

id static PlaybackController.mediaRemoteCommandQueue.getter()
{
  if (qword_2802CDB78 != -1)
  {
    OUTLINED_FUNCTION_7_3(&qword_2802CDB78);
  }

  v1 = qword_2802CE0E0;

  return v1;
}

void *PlaybackController.__allocating_init()()
{
  sub_268C1539C();
  v0 = type metadata accessor for PlaybackControlsCommandProvider();
  swift_allocObject();
  v1 = sub_268BB6134(&v10);
  v11 = v0;
  v12 = &off_287975C90;
  *&v10 = v1;
  type metadata accessor for PlaybackController();
  OUTLINED_FUNCTION_56();
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(&v10, v0);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_0();
  v6 = (v5 - v4);
  (*(v7 + 16))(v5 - v4);
  v8 = *v6;
  v2[5] = v0;
  v2[6] = &off_287975C90;
  v2[2] = v8;
  __swift_destroy_boxed_opaque_existential_0(&v10);
  return v2;
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

uint64_t sub_268BC5A3C()
{

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

void sub_268BC5A70()
{
  OUTLINED_FUNCTION_31_0();
  v23 = v4;
  v21 = v5;
  v22 = v6;
  sub_268C159EC();
  OUTLINED_FUNCTION_2_2();
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_76();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_3();
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  qword_2802D2EB8;
  sub_268C159DC();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_55();
  v11();
  OUTLINED_FUNCTION_83();
  v12 = v2 + v8;
  v13 = (v2 + v8) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_17_4(v14, 31);
  v16(v15, v3, v0);
  *(v14 + v12) = 1;
  v17 = v14 + v13;
  *(v17 + 8) = v21;
  *(v17 + 16) = v22;

  sub_268C15EAC();
  OUTLINED_FUNCTION_63();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_268BD6B10;
  *(v18 + 24) = v14;

  sub_268BC5C5C(sub_268BD8720, v18, v23, v1);

  v19 = OUTLINED_FUNCTION_73();
  v20(v19);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BC5C5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v34 = a4;
  v35 = a1;
  v36 = a2;
  v5 = sub_268C15A1C();
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2802CDB70 != -1)
  {
LABEL_20:
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_2802D2ED8);
  (*(v6 + 16))(v8, v9, v5);

  v10 = sub_268C159FC();
  v11 = sub_268C15DFC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37 = v13;
    *v12 = 136315138;
    v14 = MEMORY[0x26D6272E0](a3, MEMORY[0x277D837D0]);
    v16 = sub_268BB3D28(v14, v15, &v37);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_268BAD000, v10, v11, "Executing remove devices: %s from a playback group", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26D628010](v13, -1, -1);
    MEMORY[0x26D628010](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v6 = a3[2];
  if (v6)
  {
    a3 += 5;
    v17 = MEMORY[0x277D84F98];
    v5 = &unk_268C179A0;
    while (1)
    {
      v19 = *(a3 - 1);
      v18 = *a3;

      swift_isUniquelyReferenced_nonNull_native();
      v37 = v17;
      v8 = v17;
      v20 = sub_268BD99A0(v19, v18);
      if (__OFADD__(v17[2], (v21 & 1) == 0))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE1B0, &unk_268C179A0);
      v8 = &v37;
      if (sub_268C1610C())
      {
        v8 = v37;
        v24 = sub_268BD99A0(v19, v18);
        if ((v23 & 1) != (v25 & 1))
        {
          result = sub_268C161CC();
          __break(1u);
          return result;
        }

        v22 = v24;
      }

      if (v23)
      {

        v17 = v37;
        v26 = (v37[7] + 16 * v22);
        *v26 = 0;
        v26[1] = 0xE000000000000000;
      }

      else
      {
        v17 = v37;
        v37[(v22 >> 6) + 8] |= 1 << v22;
        v27 = (v17[6] + 16 * v22);
        *v27 = v19;
        v27[1] = v18;
        v28 = (v17[7] + 16 * v22);
        *v28 = 0;
        v28[1] = 0xE000000000000000;
        v29 = v17[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_19;
        }

        v17[2] = v31;
      }

      a3 += 2;
      if (!--v6)
      {
        goto LABEL_17;
      }
    }
  }

  v17 = MEMORY[0x277D84F98];
LABEL_17:
  __swift_project_boxed_opaque_existential_1((v34 + 16), *(v34 + 40));
  v32 = swift_allocObject();
  *(v32 + 16) = v35;
  *(v32 + 24) = v36;

  sub_268BB787C(v17, 0, 0, 0, sub_268BD82F8, v32);
}

uint64_t sub_268BC6050(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  if (!a2)
  {
    goto LABEL_10;
  }

  v13 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, qword_2802D2ED8);
    (*(v7 + 16))(v12, v14, v6);

    v15 = sub_268C159FC();
    v16 = sub_268C15DEC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = a3;
      v18 = v17;
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_268BB3D28(a1, a2, &v28);
      _os_log_impl(&dword_268BAD000, v15, v16, "Error removing devices using Mediaremote %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x26D628010](v19, -1, -1);
      v20 = v18;
      a3 = v27;
      MEMORY[0x26D628010](v20, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    v28 = 0x8000000000000000;
    v29 = 1;
  }

  else
  {
LABEL_10:
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v6, qword_2802D2ED8);
    (*(v7 + 16))(v9, v21, v6);
    v22 = sub_268C159FC();
    v23 = sub_268C15DFC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_268BAD000, v22, v23, "Success removing devices from group", v24, 2u);
      MEMORY[0x26D628010](v24, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v28 = 0;
    v29 = 0;
  }

  return a3(&v28);
}

void sub_268BC63D8()
{
  OUTLINED_FUNCTION_31_0();
  v15 = v1;
  v3 = v2;
  v16 = v4;
  v5 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
  }

  __swift_project_value_buffer(v5, qword_2802D2ED8);
  v9 = OUTLINED_FUNCTION_8_4();
  v10(v9);
  v11 = sub_268C159FC();
  v12 = sub_268C15DFC();
  if (OUTLINED_FUNCTION_78(v12))
  {
    v13 = OUTLINED_FUNCTION_23_0();
    *v13 = 0;
    _os_log_impl(&dword_268BAD000, v11, v12, v15, v13, 2u);
    OUTLINED_FUNCTION_30();
  }

  (*(v7 + 8))(v0, v5);
  OUTLINED_FUNCTION_22_0();
  v14 = swift_allocObject();
  *(v14 + 16) = v16;
  *(v14 + 24) = v3;

  sub_268C15B7C();
  sub_268BCF444();

  OUTLINED_FUNCTION_32_0();
}

void sub_268BC65D0()
{
  OUTLINED_FUNCTION_31_0();
  v26 = v2;
  v27 = v1;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  sub_268C159EC();
  OUTLINED_FUNCTION_2_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v11 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  qword_2802D2EB8;
  sub_268C159DC();
  (*(v7 + 16))(v11, v14, v0);
  v15 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v16 = v15 + v9;
  v17 = (v15 + v9) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = "executeMediaRemoteResumeLocalAppCommand";
  *(v18 + 24) = 39;
  *(v18 + 32) = 2;
  (*(v7 + 32))(v18 + v15, v11, v0);
  *(v18 + v16) = 0;
  v19 = v18 + v17;
  v20 = v24;
  *(v19 + 8) = v23;
  *(v19 + 16) = v20;

  sub_268C15EAC();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_268BD870C;
  *(v21 + 24) = v18;

  sub_268BC6808(sub_268BD8720, v21, v25, v26, v27);

  (*(v7 + 8))(v14, v0);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BC6808(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v24 = a2;
  v9 = sub_268C15A1C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDB70 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_2802D2ED8);
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_268C159FC();
  v15 = sub_268C15DFC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_268BB3D28(a3, a4, &v25);
    _os_log_impl(&dword_268BAD000, v14, v15, "Sending a resume command to app: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26D628010](v18, -1, -1);
    v19 = v17;
    a1 = v23;
    MEMORY[0x26D628010](v19, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  __swift_project_boxed_opaque_existential_1((a5 + 16), *(a5 + 40));
  v20 = sub_268C15B7C();
  sub_268BC5260(0, v20, 0, a3, a4, 0, 0, a1, v24);
}

void sub_268BC6A94()
{
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_61();
  v0 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
  }

  __swift_project_value_buffer(v0, qword_2802D2ED8);
  v2 = OUTLINED_FUNCTION_8_4();
  v3(v2);
  v4 = sub_268C159FC();
  v5 = sub_268C15DFC();
  if (OUTLINED_FUNCTION_77(v5))
  {
    v6 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_22_3(v6);
    OUTLINED_FUNCTION_39_0(&dword_268BAD000, v7, v8, "Executing next playback control");
    OUTLINED_FUNCTION_31_2();
    OUTLINED_FUNCTION_30();
  }

  v9 = OUTLINED_FUNCTION_40_0();
  v10(v9);
  OUTLINED_FUNCTION_56();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_25_3(v11);

  sub_268C15B7C();
  sub_268BCF444();

  OUTLINED_FUNCTION_32_0();
}

void sub_268BC6C50()
{
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_61();
  v0 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
  }

  __swift_project_value_buffer(v0, qword_2802D2ED8);
  v2 = OUTLINED_FUNCTION_8_4();
  v3(v2);
  v4 = sub_268C159FC();
  v5 = sub_268C15DFC();
  if (OUTLINED_FUNCTION_77(v5))
  {
    v6 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_22_3(v6);
    OUTLINED_FUNCTION_39_0(&dword_268BAD000, v7, v8, "Executing previous playback control");
    OUTLINED_FUNCTION_31_2();
    OUTLINED_FUNCTION_30();
  }

  v9 = OUTLINED_FUNCTION_40_0();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0E8, &unk_268C178D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172B0;
  v12 = *MEMORY[0x277D27DD0];
  *(inited + 32) = *MEMORY[0x277D27DD0];
  *(inited + 40) = 1;
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
  sub_268BD6B58();
  OUTLINED_FUNCTION_57();
  v14 = sub_268C15B7C();
  sub_268BC6E54(v14);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_56();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_25_3(v15);

  OUTLINED_FUNCTION_68();

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BC6E54(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE198, &qword_268C17998);
    v2 = sub_268C1614C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    *&v29[0] = *(*(a1 + 48) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v11 = *&v29[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
    swift_dynamicCast();
    swift_dynamicCast();
    v25 = v21;
    v26 = v22;
    v27 = v23;
    sub_268BD8290(&v24, v28);
    v21 = v25;
    v22 = v26;
    v23 = v27;
    sub_268BD8290(v28, v29);
    result = sub_268C15FFC();
    v12 = -1 << *(v2 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~*(v7 + 8 * (v13 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v12) >> 6;
      while (++v14 != v17 || (v16 & 1) == 0)
      {
        v18 = v14 == v17;
        if (v14 == v17)
        {
          v14 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v14);
        if (v19 != -1)
        {
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~*(v7 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    v20 = *(v2 + 48) + 40 * v15;
    *v20 = v21;
    *(v20 + 16) = v22;
    *(v20 + 32) = v23;
    result = sub_268BD8290(v29, (*(v2 + 56) + 32 * v15));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_268BC7110(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE198, &qword_268C17998);
    v2 = sub_268C1614C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    *&v29[0] = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v5)))));
    v11 = *&v29[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
    swift_dynamicCast();
    swift_dynamicCast();
    v25 = v21;
    v26 = v22;
    v27 = v23;
    sub_268BD8290(&v24, v28);
    v21 = v25;
    v22 = v26;
    v23 = v27;
    sub_268BD8290(v28, v29);
    result = sub_268C15FFC();
    v12 = -1 << *(v2 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~*(v7 + 8 * (v13 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v12) >> 6;
      while (++v14 != v17 || (v16 & 1) == 0)
      {
        v18 = v14 == v17;
        if (v14 == v17)
        {
          v14 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v14);
        if (v19 != -1)
        {
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~*(v7 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    v20 = *(v2 + 48) + 40 * v15;
    *v20 = v21;
    *(v20 + 16) = v22;
    *(v20 + 32) = v23;
    result = sub_268BD8290(v29, (*(v2 + 56) + 32 * v15));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_268BC73D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE198, &qword_268C17998);
    v2 = sub_268C1614C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    *&v29[0] = *(*(a1 + 48) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v11 = *&v29[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
    swift_dynamicCast();
    swift_dynamicCast();
    v25 = v21;
    v26 = v22;
    v27 = v23;
    sub_268BD8290(&v24, v28);
    v21 = v25;
    v22 = v26;
    v23 = v27;
    sub_268BD8290(v28, v29);
    result = sub_268C15FFC();
    v12 = -1 << *(v2 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~*(v7 + 8 * (v13 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v12) >> 6;
      while (++v14 != v17 || (v16 & 1) == 0)
      {
        v18 = v14 == v17;
        if (v14 == v17)
        {
          v14 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v14);
        if (v19 != -1)
        {
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~*(v7 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    v20 = *(v2 + 48) + 40 * v15;
    *v20 = v21;
    *(v20 + 16) = v22;
    *(v20 + 32) = v23;
    result = sub_268BD8290(v29, (*(v2 + 56) + 32 * v15));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_268BC7694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_31_0();
  v49 = v21;
  v23 = v22;
  v25 = v24;
  v50 = v26;
  v28 = v27;
  v29 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_15_0();
  v35 = v34 - v33;
  v36 = *v28;
  if (*(v28 + 8))
  {
    sub_268BB99C0(*v28);
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    OUTLINED_FUNCTION_33_2(v29, qword_2802D2ED8);
    v37 = OUTLINED_FUNCTION_64();
    v38(v37);
    sub_268BB99C0(v36);
    v39 = sub_268C159FC();
    v40 = sub_268C15DEC();
    sub_268BB99F0(v36, 1);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_25_2();
      v51 = OUTLINED_FUNCTION_24_2();
      *v41 = 136446210;
      sub_268BD8218();
      v42 = sub_268C161DC();
      OUTLINED_FUNCTION_96(v42, v43);
      OUTLINED_FUNCTION_109();
      *(v41 + 4) = v25;
      OUTLINED_FUNCTION_70(&dword_268BAD000, v44, v40);
      __swift_destroy_boxed_opaque_existential_0(v51);
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_30();
    }

    (*(v31 + 8))(v35, v29);
    v45 = OUTLINED_FUNCTION_16_3();
    v49(v45);
    sub_268BB99F0(v36, 1);
    goto LABEL_12;
  }

  if ((v25 & 1) == 0)
  {
    v48 = OUTLINED_FUNCTION_90();
    v49(v48);
LABEL_12:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  OUTLINED_FUNCTION_22_0();
  v46 = swift_allocObject();
  *(v46 + 16) = v49;
  *(v46 + 24) = v50;

  sub_268BC63AC(v23, a21, v46);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BC792C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE108, &unk_268C19120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172B0;
  v8 = *MEMORY[0x277D27D60];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
  sub_268BD6B58();
  sub_268C1601C();
  *(inited + 96) = MEMORY[0x277D839F8];
  *(inited + 72) = a4;
  sub_268C15B7C();
  OUTLINED_FUNCTION_22_0();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_268BCF444();
}

void sub_268BC7A78()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_0();
  v8 = v7 - v6;
  v9 = *v3;
  if (*(v3 + 8))
  {
    sub_268BB99C0(*v3);
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    __swift_project_value_buffer(v4, qword_2802D2ED8);
    OUTLINED_FUNCTION_30_2();
    v10(v8);
    sub_268BB99C0(v9);
    v11 = sub_268C159FC();
    v12 = sub_268C15DEC();
    OUTLINED_FUNCTION_107();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_25_2();
      v23 = OUTLINED_FUNCTION_24_2();
      *v13 = 136446210;
      sub_268BD8218();
      v14 = sub_268C161DC();
      v16 = v1;
      v17 = OUTLINED_FUNCTION_96(v14, v15);

      *(v13 + 4) = v17;
      v1 = v16;
      OUTLINED_FUNCTION_70(&dword_268BAD000, v18, v12);
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    v19 = OUTLINED_FUNCTION_62();
    v20(v19);
    v21 = OUTLINED_FUNCTION_16_3();
    v1(v21);
    OUTLINED_FUNCTION_107();
  }

  else
  {
    v22 = OUTLINED_FUNCTION_90();
    v1(v22);
  }

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BC7CD0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE110, &qword_268C178F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172B0;
  v10 = *MEMORY[0x277D27DA0];
  *(inited + 32) = *MEMORY[0x277D27DA0];
  *(inited + 40) = a4;
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
  sub_268BD6B58();
  v12 = sub_268C15B7C();
  sub_268BC73D8(v12);

  OUTLINED_FUNCTION_22_0();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  sub_268BCF444();
}

uint64_t sub_268BC7DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2802CDB78 != -1)
  {
    OUTLINED_FUNCTION_7_3(&qword_2802CDB78);
  }

  v7 = qword_2802CE0E0;
  OUTLINED_FUNCTION_54();
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = a3;
  v8[4] = a4;
  OUTLINED_FUNCTION_54();
  v9 = swift_allocObject();
  *(v9 + 16) = 19;
  *(v9 + 24) = sub_268BD6CF4;
  *(v9 + 32) = v8;

  v10 = OUTLINED_FUNCTION_67();
  sub_268BD58B8(v10, v11, v7, v12, v9);
}

uint64_t sub_268BC7F08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  sub_268BC7F68(a2);
  a4(a1, v6);
}

void sub_268BC7F68(uint64_t a1)
{
  OUTLINED_FUNCTION_59();
  v5 = v4;
  sub_268C15A1C();
  OUTLINED_FUNCTION_2_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_87();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27_2();
  if (*MEMORY[0x277D27AC0])
  {
    v10 = sub_268C15BFC();
    sub_268C0F3F8(v10, v11, v5, &v38);

    if (v39)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE148, &qword_268C17980);
      if (swift_dynamicCast())
      {
        v12 = *(v37 + 16);
        if (v12)
        {
          *&v38 = MEMORY[0x277D84F90];
          sub_268BB4A40(0, v12, 0);
          v13 = 32;
          v14 = v38;
          do
          {
            sub_268C15D8C();
            v16 = v15;
            *&v38 = v14;
            v18 = *(v14 + 16);
            v17 = *(v14 + 24);
            if (v18 >= v17 >> 1)
            {
              sub_268BB4A40((v17 > 1), v18 + 1, 1);
              v14 = v38;
            }

            *(v14 + 16) = v18 + 1;
            *(v14 + 8 * v18 + 32) = v16 / 100.0;
            v13 += 8;
            --v12;
          }

          while (v12);
        }

        else
        {

          v14 = MEMORY[0x277D84F90];
        }

        if (qword_2802CDB70 != -1)
        {
          OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
        }

        OUTLINED_FUNCTION_33_2(v1, qword_2802D2ED8);
        (*(v7 + 16))(v2);

        v29 = sub_268C159FC();
        v30 = sub_268C15DFC();

        if (os_log_type_enabled(v29, v30))
        {
          OUTLINED_FUNCTION_25_2();
          v31 = OUTLINED_FUNCTION_43_0();
          *&v38 = v31;
          MEMORY[0] = 136315138;
          v32 = MEMORY[0x26D6272E0](v14, MEMORY[0x277D839F8]);
          v34 = sub_268BB3D28(v32, v33, &v38);

          MEMORY[4] = v34;
          _os_log_impl(&dword_268BAD000, v29, v30, "Supported speeds: %s", 0, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_37_0();
        }

        v35 = OUTLINED_FUNCTION_15();
        v36(v35);
LABEL_22:
        OUTLINED_FUNCTION_58();
        return;
      }
    }

    else
    {
      sub_268BD8138(&v38, &qword_2802CE140, &qword_268C17978);
    }

    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    OUTLINED_FUNCTION_33_2(v1, qword_2802D2ED8);
    v19 = OUTLINED_FUNCTION_24_3();
    v20(v19);

    v21 = sub_268C159FC();
    v22 = sub_268C15DEC();

    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_25_2();
      v23 = OUTLINED_FUNCTION_43_0();
      *&v38 = v23;
      *v3 = 136315138;
      v24 = sub_268C15B6C();
      v26 = sub_268BB3D28(v24, v25, &v38);

      *(v3 + 4) = v26;
      _os_log_impl(&dword_268BAD000, v21, v22, "Didn't find any supported playback speeds in %s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_37_0();
    }

    v27 = OUTLINED_FUNCTION_67();
    v28(v27);
    goto LABEL_22;
  }

  __break(1u);
}

void sub_268BC83C8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_59();
  v23 = v3;
  v5 = v4;
  v24 = v6;
  v8 = v7;
  v9 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
  }

  __swift_project_value_buffer(v9, qword_2802D2ED8);
  v13 = OUTLINED_FUNCTION_8_4();
  v14(v13);
  v15 = sub_268C159FC();
  v16 = sub_268C15DFC();
  if (OUTLINED_FUNCTION_78(v16))
  {
    v17 = OUTLINED_FUNCTION_23_0();
    *v17 = 0;
    _os_log_impl(&dword_268BAD000, v15, v16, v23, v17, 2u);
    OUTLINED_FUNCTION_30();
  }

  (*(v11 + 8))(v2, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE100, &unk_268C178E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172B0;
  v19 = *MEMORY[0x277D27DF8];
  *(inited + 32) = *MEMORY[0x277D27DF8];
  *(inited + 40) = v8;
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
  sub_268BD6B58();
  v21 = sub_268C15B7C();
  sub_268BC7110(v21);

  OUTLINED_FUNCTION_22_0();
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  *(v22 + 24) = v5;

  sub_268BCF444();

  OUTLINED_FUNCTION_58();
}

void sub_268BC8624(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_48_0();
  v3 = v2;
  OUTLINED_FUNCTION_61();
  v4 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
  }

  __swift_project_value_buffer(v4, qword_2802D2ED8);
  v6 = OUTLINED_FUNCTION_8_4();
  v7(v6);
  v8 = sub_268C159FC();
  v9 = sub_268C15DFC();
  if (OUTLINED_FUNCTION_77(v9))
  {
    v10 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_22_3(v10);
    OUTLINED_FUNCTION_39_0(&dword_268BAD000, v11, v12, "Executing seek playback control");
    OUTLINED_FUNCTION_31_2();
    OUTLINED_FUNCTION_30();
  }

  v13 = OUTLINED_FUNCTION_40_0();
  v14(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE100, &unk_268C178E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172B0;
  v16 = *MEMORY[0x277D27D50];
  *(inited + 32) = *MEMORY[0x277D27D50];
  *(inited + 40) = v3;
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
  sub_268BD6B58();
  OUTLINED_FUNCTION_57();
  v18 = sub_268C15B7C();
  sub_268BC7110(v18);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_56();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_25_3(v19);

  OUTLINED_FUNCTION_68();

  OUTLINED_FUNCTION_58();
}

void sub_268BC8828()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_3();
  v11 = *v6;
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
  }

  OUTLINED_FUNCTION_33_2(v7, qword_2802D2ED8);
  v12 = OUTLINED_FUNCTION_24_3();
  v13(v12);
  v14 = sub_268C159FC();
  v15 = sub_268C15DFC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_23_0();
    *v16 = 0;
    _os_log_impl(&dword_268BAD000, v14, v15, "Changing shuffle mode", v16, 2u);
    OUTLINED_FUNCTION_30();
  }

  (*(v9 + 8))(v0, v7);
  if (v11)
  {
    v17 = 1;
  }

  else
  {
    v17 = 3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE110, &qword_268C178F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172B0;
  v19 = *MEMORY[0x277D27DE8];
  *(inited + 32) = *MEMORY[0x277D27DE8];
  *(inited + 40) = v17;
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
  sub_268BD6B58();
  v21 = sub_268C15B7C();
  sub_268BC73D8(v21);

  OUTLINED_FUNCTION_22_0();
  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  *(v22 + 24) = v2;

  sub_268BCF444();

  OUTLINED_FUNCTION_32_0();
}

void sub_268BC8AA8()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v2 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_3();
  v18 = *v1;
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
  }

  __swift_project_value_buffer(v2, qword_2802D2ED8);
  v4 = OUTLINED_FUNCTION_8_4();
  v5(v4);
  v6 = sub_268C159FC();
  v7 = sub_268C15DFC();
  if (OUTLINED_FUNCTION_77(v7))
  {
    *OUTLINED_FUNCTION_23_0() = 0;
    OUTLINED_FUNCTION_39_0(&dword_268BAD000, v8, v9, "Changing repeat mode");
    OUTLINED_FUNCTION_30();
  }

  v10 = OUTLINED_FUNCTION_40_0();
  v11(v10);
  v12 = dword_268C179B4[v18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE110, &qword_268C178F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172B0;
  v14 = *MEMORY[0x277D27DC8];
  *(inited + 32) = *MEMORY[0x277D27DC8];
  *(inited + 40) = v12;
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
  sub_268BD6B58();
  OUTLINED_FUNCTION_57();
  v16 = sub_268C15B7C();
  sub_268BC73D8(v16);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_56();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_25_3(v17);

  OUTLINED_FUNCTION_68();

  OUTLINED_FUNCTION_32_0();
}

void sub_268BC8CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_31_0();
  v25 = v24;
  v59 = v27;
  v60 = v26;
  v29 = v28;
  v31 = v30;
  v61 = v32;
  OUTLINED_FUNCTION_47_0();
  v33 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_87();
  MEMORY[0x28223BE20](v37);
  v39 = &v59 - v38;
  v40 = *v22;
  if (*(v22 + 8))
  {
    sub_268BB99C0(*v22);
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    __swift_project_value_buffer(v33, qword_2802D2ED8);
    OUTLINED_FUNCTION_21_2();
    v41(v39);
    sub_268BB99C0(v40);
    v42 = sub_268C159FC();
    v43 = sub_268C15DEC();
    OUTLINED_FUNCTION_107();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_25_2();
      v45 = OUTLINED_FUNCTION_24_2();
      v62 = v40;
      v63 = v45;
      *v44 = 136446210;
      sub_268BD8218();
      v46 = sub_268C161DC();
      v48 = OUTLINED_FUNCTION_96(v46, v47);

      *(v44 + 4) = v48;
      OUTLINED_FUNCTION_70(&dword_268BAD000, v49, v43);
      __swift_destroy_boxed_opaque_existential_0(v45);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_30();
    }

    (*(v35 + 8))(v39, v33);
    v63 = v40;
    v50 = OUTLINED_FUNCTION_16_3();
    v60(v50);
    OUTLINED_FUNCTION_107();
  }

  else if (v31)
  {
    v59 = a22;
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    __swift_project_value_buffer(v33, qword_2802D2ED8);
    OUTLINED_FUNCTION_21_2();
    v51(v23);
    v52 = sub_268C159FC();
    v53 = sub_268C15DFC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_23_0();
      *v54 = 0;
      _os_log_impl(&dword_268BAD000, v52, v53, v25, v54, 2u);
      OUTLINED_FUNCTION_41_0();
    }

    v55 = OUTLINED_FUNCTION_93();
    v56(v55);
    OUTLINED_FUNCTION_22_0();
    v57 = swift_allocObject();
    *(v57 + 16) = v60;
    *(v57 + 24) = v61;

    sub_268BC63AC(v29, v59, v57);
  }

  else
  {
    v63 = *v22;
    v58 = OUTLINED_FUNCTION_90();
    v60(v58);
  }

  OUTLINED_FUNCTION_32_0();
}

void sub_268BC9008()
{
  OUTLINED_FUNCTION_31_0();
  v3 = v2;
  v5 = v4;
  v30 = v6;
  v31 = v7;
  sub_268C159EC();
  OUTLINED_FUNCTION_2_2();
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v11 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_22_0();
  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  *(v13 + 24) = v3;
  v14 = qword_2802CDB60;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  v15 = qword_2802D2EB8;
  sub_268C159DC();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_55();
  v16();
  OUTLINED_FUNCTION_81();
  v17 = v1 + v9;
  v18 = (v1 + v9) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_15_3(v19, 24);
  v21 = OUTLINED_FUNCTION_85(v20);
  v22(v21, v11, v0);
  *(v19 + v17) = 1;
  v23 = v19 + v18;
  *(v23 + 8) = sub_268BD6E60;
  *(v23 + 16) = v13;

  sub_268C15EAC();
  OUTLINED_FUNCTION_63();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_268BD6E9C;
  *(v24 + 24) = v19;
  OUTLINED_FUNCTION_22_0();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_268BD6EBC;
  *(v25 + 24) = v24;
  OUTLINED_FUNCTION_22_0();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_268BD6EC4;
  *(v26 + 24) = v25;
  OUTLINED_FUNCTION_22_0();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_268BD6EFC;
  *(v27 + 24) = v26;

  sub_268BC5144(v30, v31, sub_268BD6F04, v27);

  v28 = OUTLINED_FUNCTION_73();
  v29(v28);
  OUTLINED_FUNCTION_32_0();
}

void sub_268BC92D4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  if (a1 && (v13 = sub_268BC4EF4(a1)) != 0)
  {
    v14 = v13;
    v32 = v12;
    v33 = v13;
    v9 = 0;
    v39 = a1 & 0xFFFFFFFFFFFFFF8;
    v40 = a1 & 0xC000000000000001;
    v37 = a2;
    v38 = a1 + 32;
    v35 = v6;
    v36 = a3;
    v34 = v7;
    while (1)
    {
LABEL_4:
      if (v9 == v14)
      {
        if (qword_2802CDB70 != -1)
        {
          swift_once();
        }

        v28 = __swift_project_value_buffer(v6, qword_2802D2ED8);
        (*(v7 + 16))(v32, v28, v6);
        v29 = sub_268C159FC();
        v30 = sub_268C15DEC();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_268BAD000, v29, v30, "Missing requested group type", v31, 2u);
          MEMORY[0x26D628010](v31, -1, -1);
        }

        (*(v7 + 8))(v32, v6);
        goto LABEL_26;
      }

      if (v40)
      {
        v15 = MEMORY[0x26D627640](v9, a1);
      }

      else
      {
        if (v9 >= *(v39 + 16))
        {
          goto LABEL_40;
        }

        v15 = *(v38 + 8 * v9);
      }

      if (__OFADD__(v9++, 1))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v41 = v15;
      v17 = sub_268BD6978(v15);
      if (v17)
      {
        break;
      }
    }

    v18 = v17;
    v6 = sub_268BC4EF4(v17);
    v7 = 0;
    do
    {
      if (v6 == v7)
      {

        a2 = v37;
        v7 = v34;
        v6 = v35;
        v14 = v33;
        goto LABEL_4;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x26D627640](v7, v18);
      }

      else
      {
        if (v7 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v19 = *(v18 + 8 * v7 + 32);
      }

      v20 = v19;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      a2 = [v19 languageOptionType];

      ++v7;
    }

    while (a2 != 1);

    v25 = [v41 selectedOption];
    v26 = v25;
    if (v25)
    {
    }

    v37(v26 != 0);
    v27 = v41;
  }

  else
  {
    if (qword_2802CDB70 != -1)
    {
LABEL_41:
      swift_once();
    }

    v21 = __swift_project_value_buffer(v6, qword_2802D2ED8);
    (*(v7 + 16))(v9, v21, v6);
    v22 = sub_268C159FC();
    v23 = sub_268C15DEC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_268BAD000, v22, v23, "Unable to get language groups", v24, 2u);
      MEMORY[0x26D628010](v24, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
LABEL_26:
    a2(0);
  }
}

void sub_268BC9748()
{
  OUTLINED_FUNCTION_31_0();
  v27 = v2;
  v28 = v3;
  v30 = v4;
  v31 = v5;
  v7 = v6;
  sub_268C159EC();
  OUTLINED_FUNCTION_2_2();
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_2();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_3();
  v29 = *v7;
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  qword_2802D2EB8;
  sub_268C159DC();
  OUTLINED_FUNCTION_55();
  v15();
  OUTLINED_FUNCTION_83();
  v16 = v1 + v9;
  v17 = (v1 + v9) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = OUTLINED_FUNCTION_17_4(v18, 18);
  v20(v19, v13, v0);
  *(v18 + v16) = 1;
  v21 = v18 + v17;
  *(v21 + 8) = v27;
  *(v21 + 16) = v28;

  sub_268C15EAC();
  OUTLINED_FUNCTION_63();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_268BD6B10;
  *(v22 + 24) = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_268BD8720;
  *(v23 + 24) = v22;
  *(v23 + 32) = v29;
  OUTLINED_FUNCTION_22_0();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_268BD6F9C;
  *(v24 + 24) = v23;

  sub_268BC5144(v30, v31, sub_268BD8724, v24);

  v25 = OUTLINED_FUNCTION_73();
  v26(v25);
  OUTLINED_FUNCTION_32_0();
}

void sub_268BC99BC(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, char a4)
{
  v8 = sub_268C15A1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v68 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - v16;
  MEMORY[0x28223BE20](v18);
  v78 = &v68 - v19;
  if (!a1 || (v80 = sub_268BC4EF4(a1)) == 0)
  {
    if (qword_2802CDB70 == -1)
    {
LABEL_23:
      v30 = __swift_project_value_buffer(v8, qword_2802D2ED8);
      (*(v9 + 16))(v11, v30, v8);
      v31 = sub_268C159FC();
      v32 = sub_268C15DEC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_268BAD000, v31, v32, "Unable to get language groups", v33, 2u);
        MEMORY[0x26D628010](v33, -1, -1);
      }

      (*(v9 + 8))(v11, v8);
      *&v88 = 0;
      BYTE8(v88) = 1;
      a2(&v88);
      return;
    }

LABEL_68:
    swift_once();
    goto LABEL_23;
  }

  v69 = v14;
  v70 = v17;
  v74 = a3;
  v75 = a2;
  v11 = 0;
  v20 = (a4 & 1) == 0;
  a2 = (a1 & 0xC000000000000001);
  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  v79 = a1 + 32;
  v77 = v8;
  v76 = v9;
  v73 = a1;
  v72 = (a1 & 0xC000000000000001);
  v71 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
LABEL_4:
    if (v11 == v80)
    {
      v63 = v75;
      if (qword_2802CDB70 != -1)
      {
        swift_once();
      }

      v64 = __swift_project_value_buffer(v8, qword_2802D2ED8);
      (*(v9 + 16))(v78, v64, v8);
      v65 = sub_268C159FC();
      v66 = sub_268C15DEC();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_268BAD000, v65, v66, "Missing requested group type", v67, 2u);
        MEMORY[0x26D628010](v67, -1, -1);
      }

      (*(v9 + 8))(v78, v8);
      *&v88 = 2;
      BYTE8(v88) = 1;
      v63(&v88);
      return;
    }

    if (a2)
    {
      v22 = MEMORY[0x26D627640](v11, a1);
    }

    else
    {
      if (v11 >= *(v21 + 16))
      {
        goto LABEL_67;
      }

      v22 = *(v79 + 8 * v11);
    }

    v23 = v22;
    if (__OFADD__(v11++, 1))
    {
      goto LABEL_66;
    }

    v25 = sub_268BD6978(v22);
    if (v25)
    {
      break;
    }
  }

  v26 = v25;
  v81 = v23;
  v9 = sub_268BC4EF4(v25);
  v27 = 0;
  v8 = v26 & 0xC000000000000001;
  do
  {
    if (v9 == v27)
    {

      v8 = v77;
      v9 = v76;
      a1 = v73;
      a2 = v72;
      v21 = v71;
      goto LABEL_4;
    }

    if (v8)
    {
      v28 = MEMORY[0x26D627640](v27, v26);
    }

    else
    {
      if (v27 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v28 = *(v26 + 8 * v27 + 32);
    }

    v29 = v28;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    a2 = [v28 languageOptionType];

    ++v27;
  }

  while (a2 != v20);

  v34 = v81;
  v35 = sub_268BD6978(v81);
  if (!v35)
  {
    goto LABEL_49;
  }

  v9 = v35;
  v36 = sub_268BC4EF4(v35);
  if (!v36)
  {

LABEL_49:
    *&v88 = 1;
    BYTE8(v88) = 1;
    v75(&v88);

    return;
  }

  v37 = v36;
  v38 = 0;
  a2 = (v9 & 0xFFFFFFFFFFFFFF8);
  v8 = MEMORY[0x277D84F90];
  while (v37 != v38)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x26D627640](v38, v9);
    }

    else
    {
      if (v38 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      v39 = *(v9 + 8 * v38 + 32);
    }

    v11 = v39;
    if (__OFADD__(v38, 1))
    {
      goto LABEL_64;
    }

    v91 = v39;
    sub_268BCA3A0(&v91, v34, &v88);

    if (*(&v88 + 1))
    {
      v85 = v88;
      v86 = v89;
      v87[0] = *v90;
      *(v87 + 9) = *&v90[9];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268BB3244();
        v8 = v45;
      }

      v40 = *(v8 + 16);
      v11 = (v40 + 1);
      if (v40 >= *(v8 + 24) >> 1)
      {
        sub_268BB3244();
        v8 = v46;
      }

      v84[0] = v87[0];
      *(v84 + 9) = *(v87 + 9);
      v41 = v85;
      v83 = v86;
      v82 = v85;
      *(v8 + 16) = v11;
      v42 = (v8 + (v40 << 6));
      v43 = v83;
      v44 = v84[0];
      *(v42 + 73) = *(v84 + 9);
      v42[3] = v43;
      v42[4] = v44;
      v42[2] = v41;
      v34 = v81;
    }

    else
    {
      v85 = v88;
      v86 = v89;
      v87[0] = *v90;
      *(v87 + 9) = *&v90[9];
      sub_268BD8138(&v85, &qword_2802CE168, &qword_268C17990);
    }

    ++v38;
  }

  if (*(v8 + 16))
  {
    v47 = v75;
    v48 = v77;
    v49 = v76;
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v48, qword_2802D2ED8);
    (*(v49 + 16))(v70, v50, v48);

    v51 = sub_268C159FC();
    v52 = sub_268C15DCC();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      *(v53 + 4) = *(v8 + 16);

      _os_log_impl(&dword_268BAD000, v51, v52, "Returning %ld language options", v53, 0xCu);
      MEMORY[0x26D628010](v53, -1, -1);
    }

    else
    {
    }

    (*(v49 + 8))(v70, v48);
    *&v88 = v8;
    BYTE8(v88) = 0;
    v47(&v88);

    sub_268BD818C(v88, SBYTE8(v88));
  }

  else
  {

    v54 = v75;
    v55 = v77;
    v56 = v76;
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v57 = __swift_project_value_buffer(v55, qword_2802D2ED8);
    v58 = v69;
    (*(v56 + 16))(v69, v57, v55);
    v59 = sub_268C159FC();
    v60 = sub_268C15DEC();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_268BAD000, v59, v60, "No language options able to be returned", v61, 2u);
      v62 = v61;
      v58 = v69;
      MEMORY[0x26D628010](v62, -1, -1);
    }

    (*(v56 + 8))(v58, v55);
    *&v88 = 1;
    BYTE8(v88) = 1;
    v54(&v88);
  }
}

double sub_268BCA3A0@<D0>(id *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v53 = a2;
  v54 = a3;
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268C1533C();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (([*a1 isAutomaticLegibleLanguageOption] & 1) != 0 || objc_msgSend(v13, sel_isAutomaticAudibleLanguageOption))
  {
    v14 = 1869903201;
    type metadata accessor for LocalizationProvider();
    swift_initStaticObject();
    sub_268C1539C();
    __swift_project_boxed_opaque_existential_1(v55, v55[3]);
    sub_268C1536C();
    __swift_destroy_boxed_opaque_existential_0(v55);
    LOBYTE(v55[0]) = 8;
    v15 = sub_268C056A8(v55);
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 1869903169;
    }

    v18 = 0xE400000000000000;
    if (v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    v51 = v19;
    v52 = v17;
    (*(v9 + 8))(v12, v8);
    v20 = MEMORY[0x277D84F90];
    v21 = 1869903201;
    v22 = 0xE400000000000000;
LABEL_10:
    v23 = sub_268BD69E8(v13, &selRef_identifier);
    v25 = v24;
    v26 = [v53 selectedOption];
    if (v26)
    {
      v28 = sub_268BD6AA0(v26);
      if (v25)
      {
        if (v29)
        {
          if (v23 == v28 && v25 == v29)
          {

            v31 = 1;
          }

          else
          {
            v31 = sub_268C1618C();
          }

          goto LABEL_30;
        }

        goto LABEL_19;
      }

      if (v29)
      {
        v31 = 0;
        goto LABEL_30;
      }
    }

    else if (v25)
    {
LABEL_19:
      v31 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v31 = 1;
LABEL_31:
    v39 = v54;
    *v54 = v14;
    *(v39 + 1) = v18;
    *(v39 + 2) = v21;
    *(v39 + 3) = v22;
    v40 = v51;
    *(v39 + 4) = v52;
    *(v39 + 5) = v40;
    *(v39 + 6) = v20;
    *(v39 + 56) = v31 & 1;
    return result;
  }

  v32 = sub_268BD69E8(v13, &selRef_identifier);
  if (v33)
  {
    v14 = v32;
    v18 = v33;
    v34 = sub_268BD69E8(v13, &selRef_languageTag);
    if (v35)
    {
      v21 = v34;
      v22 = v35;
      v36 = sub_268BD69E8(v13, &selRef_displayName);
      if (v37)
      {
        v51 = v37;
        v52 = v36;
        v38 = sub_268BD6A48(v13);
        if (v38)
        {
          v20 = v38;
        }

        else
        {
          v20 = MEMORY[0x277D84F90];
        }

        goto LABEL_10;
      }
    }
  }

  if (qword_2802CDB70 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v4, qword_2802D2ED8);
  v42 = v5;
  (*(v5 + 16))(v7, v41, v4);
  v43 = v13;
  v44 = sub_268C159FC();
  v45 = sub_268C15DEC();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138543362;
    *(v46 + 4) = v43;
    *v47 = v43;
    v48 = v43;
    _os_log_impl(&dword_268BAD000, v44, v45, "Language option missingrequired fields: %{public}@", v46, 0xCu);
    sub_268BD8138(v47, &qword_2802CDF28, &unk_268C17900);
    MEMORY[0x26D628010](v47, -1, -1);
    MEMORY[0x26D628010](v46, -1, -1);
  }

  (*(v42 + 8))(v7, v4);
  result = 0.0;
  v49 = v54;
  *(v54 + 41) = 0u;
  v49[1] = 0u;
  v49[2] = 0u;
  *v49 = 0u;
  return result;
}

void sub_268BCA868()
{
  OUTLINED_FUNCTION_31_0();
  v30 = v3;
  v31 = v1;
  v5 = v4;
  v27 = v7;
  v28 = v6;
  v9 = v8;
  sub_268C159EC();
  OUTLINED_FUNCTION_2_2();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_44_0();
  v29 = v9;
  v26 = *(v9 + 16);
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  v16 = qword_2802D2EB8;
  sub_268C159DC();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_75();
  v17();
  v18 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = "mediaRemoteAddOutputDevicesToGroup";
  *(v19 + 24) = 34;
  *(v19 + 32) = 2;
  (*(v11 + 32))(v19 + v18, &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  v20 = (v19 + ((v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v27;
  v20[1] = v5;

  v21 = sub_268C15EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
  OUTLINED_FUNCTION_88();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D83B88];
  *(v22 + 16) = xmmword_268C172B0;
  v24 = MEMORY[0x277D83C10];
  *(v22 + 56) = v23;
  *(v22 + 64) = v24;
  OUTLINED_FUNCTION_84(v22, v26);
  LOBYTE(v27) = 2;
  sub_268C159BC(v21, &dword_268BAD000, v16, "mediaRemoteAddOutputDevicesToGroup", 34, 2, v2, "routeCount=%{public, signpost.telemetry:number1}d enableTelemetry=YES ", 70, v27, v28, v29);

  OUTLINED_FUNCTION_22_0();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_268BD6FA8;
  *(v25 + 24) = v19;

  sub_268BCAB18(sub_268BD8720, v25, v29, v28, v30, v31);

  (*(v11 + 8))(v2, v0);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BCAB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v30 = a6;
  v31 = a2;
  v29 = a1;
  v9 = sub_268C15A1C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDB70 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_2802D2ED8);
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_268C159FC();
  v15 = sub_268C15DFC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = a4;
    v17 = v16;
    v27 = swift_slowAlloc();
    v32 = v27;
    *v17 = 136315394;
    v18 = MEMORY[0x26D6272E0](a3, MEMORY[0x277D837D0]);
    v20 = sub_268BB3D28(v18, v19, &v32);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_268BB3D28(v28, a5, &v32);
    _os_log_impl(&dword_268BAD000, v14, v15, "Adding output devices %s to group: %s", v17, 0x16u);
    v21 = v27;
    swift_arrayDestroy();
    MEMORY[0x26D628010](v21, -1, -1);
    v22 = v17;
    a4 = v28;
    MEMORY[0x26D628010](v22, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v23 = v30;
  __swift_project_boxed_opaque_existential_1((v30 + 16), *(v30 + 40));
  v24 = swift_allocObject();
  v25 = v29;
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v31;

  sub_268BB7BB0(a4, a5, a3, sub_268BD811C, v24);
}

void sub_268BCAE14()
{
  OUTLINED_FUNCTION_31_0();
  v58 = v0;
  v54 = v1;
  v55 = v2;
  v4 = v3;
  v5 = sub_268C159EC();
  OUTLINED_FUNCTION_3_0();
  v59 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_92();
  v57 = v11;
  OUTLINED_FUNCTION_10_2();
  v12 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_0();
  v18 = v17 - v16;
  v19 = OUTLINED_FUNCTION_67();
  v60 = sub_268BCE414(v19, v20);
  v22 = v21;
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
  }

  __swift_project_value_buffer(v12, qword_2802D2ED8);
  OUTLINED_FUNCTION_21_2();
  v23(v18);

  v24 = sub_268C159FC();
  v25 = sub_268C15DFC();

  v26 = os_log_type_enabled(v24, v25);
  v61 = v4;
  v56 = v22;
  if (v26)
  {
    v27 = OUTLINED_FUNCTION_110();
    v28 = swift_slowAlloc();
    v52 = v5;
    v63 = v22;
    v64 = v28;
    *v27 = 136315394;
    v62 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE098, &qword_268C177C0);
    v29 = sub_268C15F0C();
    v31 = sub_268BB3D28(v29, v30, &v64);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v32 = MEMORY[0x26D6272E0](v61, MEMORY[0x277D837D0]);
    v34 = sub_268BB3D28(v32, v33, &v64);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_268BAD000, v24, v25, "Moving audio from group: %s to output devices %s", v27, 0x16u);
    swift_arrayDestroy();
    v5 = v52;
    OUTLINED_FUNCTION_30();
    v4 = v61;
    OUTLINED_FUNCTION_30();
  }

  (*(v14 + 8))(v18, v12);
  v52 = *(v4 + 16);
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  v35 = qword_2802D2EB8;
  v36 = v57;
  sub_268C159DC();
  v37 = v59;
  v38 = v5;
  (*(v59 + 16))(v9, v36, v5);
  v39 = (*(v37 + 80) + 33) & ~*(v37 + 80);
  v40 = (v53 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 16) = "mediaRemoteMoveOutputDevicesToGroup";
  *(v41 + 24) = 35;
  *(v41 + 32) = 2;
  (*(v37 + 32))(v41 + v39, v9, v38);
  v42 = (v41 + v40);
  v43 = v55;
  *v42 = v54;
  v42[1] = v43;

  v44 = sub_268C15EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
  OUTLINED_FUNCTION_88();
  v45 = swift_allocObject();
  v46 = MEMORY[0x277D83B88];
  *(v45 + 16) = xmmword_268C172B0;
  v47 = MEMORY[0x277D83C10];
  *(v45 + 56) = v46;
  *(v45 + 64) = v47;
  OUTLINED_FUNCTION_84(v45, v52);
  LOBYTE(v52) = 2;
  sub_268C159BC(v44, &dword_268BAD000, v35, "mediaRemoteMoveOutputDevicesToGroup", 35, 2, v36, "routeCount=%{public, signpost.telemetry:number1}d enableTelemetry=YES ", 70, v52);

  OUTLINED_FUNCTION_22_0();
  v48 = swift_allocObject();
  *(v48 + 16) = sub_268BD8710;
  *(v48 + 24) = v41;
  v49 = v58;
  __swift_project_boxed_opaque_existential_1((v58 + 16), *(v58 + 40));
  OUTLINED_FUNCTION_54();
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = sub_268BD8720;
  v50[4] = v48;

  sub_268BB7CFC(v60, v56, v61, sub_268BD872C, v50);

  (*(v37 + 8))(v36, v38);
  OUTLINED_FUNCTION_32_0();
}

void sub_268BCB358()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v73 = v3;
  v5 = v4;
  v6 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_2();
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v17 = &v61 - v16;
  if (!v5)
  {
    v75 = 0;
    v39 = OUTLINED_FUNCTION_90();
    v73(v39);
LABEL_28:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v72 = v15;
  v65 = v14;
  v66 = v13;
  v18 = v5;
  Code = CFErrorGetCode(v18);
  v19 = CFErrorGetDomain(v18);
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
  }

  __swift_project_value_buffer(v6, qword_2802D2ED8);
  OUTLINED_FUNCTION_30_2();
  v67 = v20;
  v68 = v21;
  v69 = v22;
  (v21)(v17);
  v23 = v18;
  v24 = v19;
  v25 = v8;
  v26 = sub_268C159FC();
  v27 = sub_268C15DEC();

  v28 = os_log_type_enabled(v26, v27);
  v71 = v25;
  if (v28)
  {
    v29 = OUTLINED_FUNCTION_24_2();
    v63 = v6;
    v30 = v29;
    swift_slowAlloc();
    v31 = OUTLINED_FUNCTION_43_0();
    v64 = v2;
    v32 = v31;
    v74 = v23;
    v75 = v31;
    *v30 = 136315650;
    type metadata accessor for CFError(0);
    v62 = v19;
    sub_268BD84E4(&qword_2802CE138, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
    v33 = sub_268C161DC();
    v35 = OUTLINED_FUNCTION_96(v33, v34);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2112;
    *(v30 + 14) = v24;
    *v0 = v62;
    *(v30 + 22) = 2048;
    *(v30 + 24) = Code;
    v36 = v24;
    v37 = v24;
    _os_log_impl(&dword_268BAD000, v26, v27, "Error modifying device groups: %s, errorDomain: %@, errorCode: %ld", v30, 0x20u);
    sub_268BD8138(v0, &qword_2802CDF28, &unk_268C17900);
    OUTLINED_FUNCTION_37_0();
    __swift_destroy_boxed_opaque_existential_0(v32);
    OUTLINED_FUNCTION_30();
    v6 = v63;
    OUTLINED_FUNCTION_30();

    v38 = *(v71 + 8);
  }

  else
  {
    v36 = v24;

    v38 = *(v25 + 8);
  }

  v38(v17, v6);
  IsInformational = MRMediaRemoteErrorIsInformational();

  v41 = v72;
  if (IsInformational)
  {
    v68(v72, v67, v6);
    v42 = sub_268C159FC();
    v43 = sub_268C15DEC();
    if (OUTLINED_FUNCTION_12_0(v43))
    {
      v44 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_53(v44);
      OUTLINED_FUNCTION_7_0(&dword_268BAD000, v45, v46, "PlaybackController#handleWHAGroupingResponse ignoring informational error, treating as success");
      OUTLINED_FUNCTION_45_0();
    }

    v38(v41, v6);
    v75 = 0;
    v76 = 0;
    goto LABEL_27;
  }

  v47 = *MEMORY[0x277D27AE0];
  if (v36)
  {
    if (!v47)
    {
      goto LABEL_25;
    }

    type metadata accessor for CFString(0);
    sub_268BD84E4(&qword_2802CE130, type metadata accessor for CFString, &unk_268C16E78);
    v48 = v47;
    OUTLINED_FUNCTION_89();
    v49 = sub_268C1594C();

    if ((v49 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v47)
  {
    goto LABEL_25;
  }

  if ((Code & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(Code))
  {
    if (Code == 26 || Code == 47)
    {
      v68(v66, v67, v6);
      v56 = sub_268C159FC();
      v57 = sub_268C15DEC();
      if (OUTLINED_FUNCTION_12_0(v57))
      {
        v58 = OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_53(v58);
        OUTLINED_FUNCTION_7_0(&dword_268BAD000, v59, v60, "Device(s) not on network or unplugged");
        OUTLINED_FUNCTION_30();
      }

      v38(v66, v6);
      v55 = 0x8000000000000040;
      goto LABEL_26;
    }

    if (Code == 33)
    {
      v68(v65, v67, v6);
      v50 = sub_268C159FC();
      v51 = sub_268C15DEC();
      if (OUTLINED_FUNCTION_12_0(v51))
      {
        v52 = OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_53(v52);
        OUTLINED_FUNCTION_7_0(&dword_268BAD000, v53, v54, "Devices are not groupable");
        OUTLINED_FUNCTION_30();
      }

      v38(v65, v6);
      v55 = 0x8000000000000030;
      goto LABEL_26;
    }

LABEL_25:
    v55 = 0x8000000000000000;
LABEL_26:
    v75 = v55;
    v76 = 1;
LABEL_27:
    v73(&v75);

    goto LABEL_28;
  }

  __break(1u);
}

void sub_268BCB938()
{
  OUTLINED_FUNCTION_31_0();
  v49 = v0;
  v50 = v1;
  v3 = v2;
  v51 = v4;
  v5 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_2();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_28_2();
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
  }

  v16 = __swift_project_value_buffer(v5, qword_2802D2ED8);
  v17 = OUTLINED_FUNCTION_93();
  v48 = v18;
  (v18)(v17);

  v19 = sub_268C159FC();
  v20 = sub_268C15DCC();

  v21 = os_log_type_enabled(v19, v20);
  v47 = v3;
  if (v21)
  {
    v22 = OUTLINED_FUNCTION_25_2();
    v46 = v7;
    v23 = v22;
    v24 = OUTLINED_FUNCTION_24_2();
    v45 = v14;
    v25 = v11;
    v26 = v24;
    v52[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_268BB3D28(v51, v3, v52);
    _os_log_impl(&dword_268BAD000, v19, v20, "Executing diable subtitles on device: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v11 = v25;
    v14 = v45;
    OUTLINED_FUNCTION_30();
    v7 = v46;
    OUTLINED_FUNCTION_30();
  }

  v27 = *(v7 + 8);
  v28 = OUTLINED_FUNCTION_105();
  v27(v28);
  LOBYTE(v52[0]) = 0;
  v29 = sub_268BD1808(0, 0xE000000000000000, v52);
  if (v29)
  {
    sub_268BD19C4(v29);
    v48(v14, v16, v5);
    v30 = sub_268C159FC();
    v31 = sub_268C15DCC();
    if (OUTLINED_FUNCTION_12_0(v31))
    {
      v32 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_53(v32);
      OUTLINED_FUNCTION_7_0(&dword_268BAD000, v33, v34, "Performing disable subtitle command");
      OUTLINED_FUNCTION_45_0();
    }

    (v27)(v14, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCC8, &qword_268C17090);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_268C172B0;
    v36 = v47;
    *(v35 + 32) = v51;
    *(v35 + 40) = v36;
    OUTLINED_FUNCTION_22_0();
    v37 = swift_allocObject();
    v38 = v50;
    *(v37 + 16) = v49;
    *(v37 + 24) = v38;

    sub_268BCF444();
  }

  else
  {
    v48(v11, v16, v5);
    v39 = sub_268C159FC();
    v40 = sub_268C15DEC();
    if (OUTLINED_FUNCTION_12_0(v40))
    {
      v41 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_53(v41);
      OUTLINED_FUNCTION_7_0(&dword_268BAD000, v42, v43, "Could not make language option");
      OUTLINED_FUNCTION_45_0();
    }

    (v27)(v11, v5);
    v52[0] = 0x8000000000000000;
    v44 = OUTLINED_FUNCTION_16_3();
    v49(v44);
  }

  OUTLINED_FUNCTION_32_0();
}

void sub_268BCBD0C()
{
  OUTLINED_FUNCTION_31_0();
  v49 = v0;
  v2 = v1;
  v53 = v4;
  v54 = v3;
  v6 = v5;
  v8 = v7;
  v51 = v9;
  v52 = v10;
  v11 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_2();
  v48 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v56 = &v47 - v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_28_2();
  v50 = *v8;
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
  }

  v20 = __swift_project_value_buffer(v11, qword_2802D2ED8);
  v21 = *(v13 + 16);
  v21(v0, v20, v11);

  v22 = sub_268C159FC();
  v23 = sub_268C15DCC();
  v55 = v6;

  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_25_2();
    v47 = v2;
    v25 = v24;
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = sub_268C15BEC();
    *(v25 + 4) = v27;
    *v26 = v27;
    _os_log_impl(&dword_268BAD000, v22, v23, "Executing set language option on device: %@", v25, 0xCu);
    sub_268BD8138(v26, &qword_2802CDF28, &unk_268C17900);
    OUTLINED_FUNCTION_30();
    v2 = v47;
    OUTLINED_FUNCTION_30();
  }

  v28 = *(v13 + 8);
  v29 = OUTLINED_FUNCTION_105();
  v28(v29);
  v58 = v50;
  v30 = sub_268BD1808(v51, v52, &v58);
  if (v30)
  {
    sub_268BD19C4(v30);
    v21(v56, v20, v11);
    v31 = sub_268C159FC();
    v32 = sub_268C15DCC();
    if (OUTLINED_FUNCTION_12_0(v32))
    {
      v33 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_53(v33);
      OUTLINED_FUNCTION_7_0(&dword_268BAD000, v34, v35, "Performing set language option command");
      OUTLINED_FUNCTION_45_0();
    }

    (v28)(v56, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCC8, &qword_268C17090);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_268C172B0;
    v37 = v55;
    *(v36 + 32) = v54;
    *(v36 + 40) = v37;
    OUTLINED_FUNCTION_22_0();
    v38 = swift_allocObject();
    *(v38 + 16) = v53;
    *(v38 + 24) = v2;

    OUTLINED_FUNCTION_55();
    sub_268BCF444();
  }

  else
  {
    v39 = v48;
    v40 = OUTLINED_FUNCTION_89();
    (v21)(v40);
    v41 = sub_268C159FC();
    v42 = sub_268C15DEC();
    if (OUTLINED_FUNCTION_12_0(v42))
    {
      v43 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_53(v43);
      OUTLINED_FUNCTION_7_0(&dword_268BAD000, v44, v45, "Could not make language option");
      OUTLINED_FUNCTION_45_0();
    }

    (v28)(v39, v11);
    v57 = 0x8000000000000000;
    v46 = OUTLINED_FUNCTION_16_3();
    v53(v46);
  }

  OUTLINED_FUNCTION_32_0();
}

void sub_268BCC0E0()
{
  OUTLINED_FUNCTION_31_0();
  v3 = v2;
  v5 = v4;
  sub_268C159EC();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_22_0();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v3;
  v9 = qword_2802CDB60;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  v10 = qword_2802D2EB8;
  sub_268C159DC();
  v11 = OUTLINED_FUNCTION_32_2();
  v12(v11);
  OUTLINED_FUNCTION_23_3();
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_10_4(v13, 24);
  v15(v14);
  *(v13 + v1) = 0;
  v16 = v13 + v0;
  *(v16 + 8) = sub_268BD6FDC;
  *(v16 + 16) = v8;

  v17 = sub_268C15EAC();
  OUTLINED_FUNCTION_108(v17, &dword_268BAD000, v10, "nowPlayingAppDisplayName", 24);
  OUTLINED_FUNCTION_22_0();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_268BD7054;
  *(v18 + 24) = v13;

  v19 = OUTLINED_FUNCTION_82();
  sub_268BCC304(v19, v20);

  v21 = OUTLINED_FUNCTION_86();
  v22(v21);
  OUTLINED_FUNCTION_32_0();
}

void sub_268BCC304(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = qword_2802CDB78;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = sub_268BD871C;
  *(v6 + 24) = v4;
  v8[4] = sub_268BD80C8;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_268BCC7AC;
  v8[3] = &block_descriptor_326;
  v7 = _Block_copy(v8);

  MRMediaRemoteGetNowPlayingClient();
  _Block_release(v7);
}

uint64_t sub_268BCC43C(uint64_t a1, void *a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v8 = sub_268C15A1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a2)
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v8, qword_2802D2ED8);
    (*(v9 + 16))(v11, v17, v8);
    v18 = a2;
    v19 = sub_268C159FC();
    v20 = sub_268C15DEC();

    if (os_log_type_enabled(v19, v20))
    {
      v29[1] = a4;
      v30 = a3;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136446210;
      if (a2)
      {
        v31 = v18;
        type metadata accessor for CFError(0);
        sub_268BD84E4(&qword_2802CE138, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
        v23 = sub_268C161DC();
      }

      else
      {
        v24 = 0xED0000726F727265;
        v23 = 0x206E776F6E6B6E55;
      }

      v31 = v23;
      v32 = v24;
      v26 = sub_268C15C9C();
      v28 = sub_268BB3D28(v26, v27, &v33);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_268BAD000, v19, v20, "Received error attempting to look up NowPlaying appName: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x26D628010](v22, -1, -1);
      MEMORY[0x26D628010](v21, -1, -1);

      (*(v9 + 8))(v11, v8);
      a3 = v30;
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    return a3(0, 0);
  }

  else
  {
    v12 = MRNowPlayingClientGetDisplayName();
    if (v12)
    {
      v13 = v12;
      v14 = sub_268C15BFC();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    a3(v14, v16);
  }
}

void sub_268BCC7AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_268BCC824()
{
  OUTLINED_FUNCTION_31_0();
  v3 = v2;
  v5 = v4;
  sub_268C159EC();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_22_0();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v3;
  v9 = qword_2802CDB60;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  v10 = qword_2802D2EB8;
  sub_268C159DC();
  v11 = OUTLINED_FUNCTION_32_2();
  v12(v11);
  OUTLINED_FUNCTION_23_3();
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_10_4(v13, 21);
  v15(v14);
  *(v13 + v1) = 1;
  v16 = v13 + v0;
  *(v16 + 8) = sub_268BD8704;
  *(v16 + 16) = v8;

  v17 = sub_268C15EAC();
  OUTLINED_FUNCTION_108(v17, &dword_268BAD000, v10, "nowPlayingAppBundleId", 21);
  OUTLINED_FUNCTION_22_0();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_268BD8714;
  *(v18 + 24) = v13;

  v19 = OUTLINED_FUNCTION_82();
  sub_268BCCA4C(v19, v20);

  v21 = OUTLINED_FUNCTION_86();
  v22(v21);
  OUTLINED_FUNCTION_32_0();
}

void sub_268BCCA4C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = qword_2802CDB78;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = sub_268BD8084;
  *(v6 + 24) = v4;
  v8[4] = sub_268BD8088;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_268BCC7AC;
  v8[3] = &block_descriptor_316;
  v7 = _Block_copy(v8);

  MRMediaRemoteGetNowPlayingClient();
  _Block_release(v7);
}

uint64_t sub_268BCCB84(uint64_t a1, void *a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v8 = sub_268C15A1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a2)
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v8, qword_2802D2ED8);
    (*(v9 + 16))(v11, v17, v8);
    v18 = a2;
    v19 = sub_268C159FC();
    v20 = sub_268C15DEC();

    if (os_log_type_enabled(v19, v20))
    {
      v28 = a4;
      v29 = a3;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136446210;
      if (a2)
      {
        v30 = v18;
        type metadata accessor for CFError(0);
        sub_268BD84E4(&qword_2802CE138, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
        v23 = sub_268C161DC();
        v25 = v24;
      }

      else
      {
        v25 = 0xED0000726F727265;
        v23 = 0x206E776F6E6B6E55;
      }

      v27 = sub_268BB3D28(v23, v25, &v31);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_268BAD000, v19, v20, "Received error attempting to look up NowPlaying bundleID: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x26D628010](v22, -1, -1);
      MEMORY[0x26D628010](v21, -1, -1);

      (*(v9 + 8))(v11, v8);
      a3 = v29;
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    return a3(0, 0);
  }

  else
  {
    v12 = MRNowPlayingClientGetBundleIdentifier();
    if (v12)
    {
      v13 = v12;
      v14 = sub_268C15BFC();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    a3(v14, v16);
  }
}

void sub_268BCCED4()
{
  OUTLINED_FUNCTION_31_0();
  v25 = v2;
  v26 = v3;
  v27 = v4;
  v28 = v5;
  sub_268C159EC();
  OUTLINED_FUNCTION_2_2();
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_2();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_3();
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  qword_2802D2EB8;
  sub_268C159DC();
  OUTLINED_FUNCTION_55();
  v13();
  OUTLINED_FUNCTION_83();
  v14 = v1 + v7;
  v15 = (v1 + v7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_17_4(v16, 12);
  v18(v17, v11, v0);
  *(v16 + v14) = 1;
  v19 = v16 + v15;
  *(v19 + 8) = v25;
  *(v19 + 16) = v26;

  sub_268C15EAC();
  OUTLINED_FUNCTION_63();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_268BD713C;
  *(v20 + 24) = v16;
  OUTLINED_FUNCTION_22_0();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_268BD71D0;
  *(v21 + 24) = v20;
  OUTLINED_FUNCTION_22_0();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_268BD71D8;
  *(v22 + 24) = v21;

  sub_268BC5144(v27, v28, sub_268BD71E0, v22);

  v23 = OUTLINED_FUNCTION_73();
  v24(v23);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BCD130(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  if (*(a1 + 48) == 2)
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v6, qword_2802D2ED8);
    (*(v7 + 16))(v12, v13, v6);
    v14 = sub_268C159FC();
    v15 = sub_268C15DEC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_268BAD000, v14, v15, "Error getting duration info", v16, 2u);
      MEMORY[0x26D628010](v16, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    v32 = 0;
    v33 = 0;
    v34 = 1;
  }

  else
  {
    v17 = *(a1 + 24);
    v18 = *(a1 + 32);
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v6, qword_2802D2ED8);
    (*(v7 + 16))(v9, v19, v6);
    v20 = sub_268C159FC();
    v21 = sub_268C15DCC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30 = a2;
      v23 = v22;
      v24 = swift_slowAlloc();
      v29 = a3;
      v25 = v24;
      v31 = v24;
      v32 = 0;
      *v23 = 136315138;
      v33 = 0xE000000000000000;
      sub_268C1606C();
      MEMORY[0x26D627230](0xD000000000000016, 0x8000000268C1C420);
      sub_268C15D9C();
      MEMORY[0x26D627230](0xD000000000000013, 0x8000000268C1C440);
      sub_268C15D9C();
      MEMORY[0x26D627230](32032, 0xE200000000000000);
      v26 = sub_268BB3D28(v32, v33, &v31);

      *(v23 + 4) = v26;
      _os_log_impl(&dword_268BAD000, v20, v21, "Sucessfully retrieved duration info: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x26D628010](v25, -1, -1);
      v27 = v23;
      a2 = v30;
      MEMORY[0x26D628010](v27, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v32 = v17;
    v33 = v18;
    v34 = 0;
  }

  return a2(&v32);
}

void sub_268BCD51C()
{
  OUTLINED_FUNCTION_31_0();
  v21 = v3;
  v22 = v4;
  sub_268C159EC();
  OUTLINED_FUNCTION_2_2();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_80();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27_2();
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  v9 = qword_2802D2EB8;
  sub_268C159DC();
  v10 = OUTLINED_FUNCTION_64();
  v11(v10, v2, v0);
  OUTLINED_FUNCTION_81();
  v12 = v1 + v6;
  v13 = (v1 + v6) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = "getNowPlayingApplicationState";
  *(v14 + 24) = 29;
  *(v14 + 32) = 2;
  OUTLINED_FUNCTION_85(v14);
  OUTLINED_FUNCTION_75();
  v15();
  *(v14 + v12) = 1;
  v16 = v14 + v13;
  *(v16 + 8) = v21;
  *(v16 + 16) = v22;

  v17 = sub_268C15EAC();
  OUTLINED_FUNCTION_108(v17, &dword_268BAD000, v9, "getNowPlayingApplicationState", 29);
  OUTLINED_FUNCTION_22_0();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_268BD6E9C;
  *(v18 + 24) = v14;

  sub_268BCD738(sub_268BD6EBC, v18);

  v19 = OUTLINED_FUNCTION_15();
  v20(v19);
  OUTLINED_FUNCTION_32_0();
}

void sub_268BCD738(uint64_t a1, uint64_t a2)
{
  if (qword_2802CDB78 != -1)
  {
    swift_once();
  }

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v6[4] = sub_268BD807C;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_268BCDA1C;
  v6[3] = &block_descriptor_307;
  v5 = _Block_copy(v6);

  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
  _Block_release(v5);
}

uint64_t sub_268BCD848(unsigned int a1, uint64_t (*a2)(char *))
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDB70 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_2802D2ED8);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_268C159FC();
  v10 = sub_268C15DCC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1;
    _os_log_impl(&dword_268BAD000, v9, v10, "Playback state from MR = %u", v11, 8u);
    MEMORY[0x26D628010](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  if (a1 >= 6)
  {
    v12 = 0;
  }

  else
  {
    v12 = a1;
  }

  v15 = v12;
  return a2(&v15);
}

uint64_t sub_268BCDA1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_268BCDA70()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v4 = v3;
  v21 = v0;
  sub_268C159EC();
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_80();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_22_0();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v2;
  v12 = qword_2802CDB60;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  qword_2802D2EB8;
  sub_268C159DC();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_55();
  v13();
  v14 = ((*(v6 + 80) + 33) & ~*(v6 + 80)) + v8;
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_15_3(v15, 20);
  OUTLINED_FUNCTION_75();
  v16();
  *(v15 + v14) = 1;
  v17 = v15 + (v14 & 0xFFFFFFFFFFFFFFF8);
  *(v17 + 8) = sub_268BD7278;
  *(v17 + 16) = v11;

  sub_268C15EAC();
  OUTLINED_FUNCTION_63();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_268BD72A0;
  *(v18 + 24) = v15;

  sub_268BCDD18(sub_268BD733C, v18, v21);

  v19 = OUTLINED_FUNCTION_73();
  v20(v19);
  OUTLINED_FUNCTION_32_0();
}

void sub_268BCDD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = qword_2802CDB70;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_2802D2ED8);
  (*(v7 + 16))(v9, v12, v6);
  v13 = sub_268C159FC();
  v14 = sub_268C15DFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_268BAD000, v13, v14, "Getting local playback rate", v15, 2u);
    MEMORY[0x26D628010](v15, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  v16 = sub_268BB60C8();
  if (qword_2802CDB78 != -1)
  {
    swift_once();
  }

  v17 = qword_2802CE0E0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_268BD8028;
  *(v18 + 24) = v10;
  aBlock[4] = sub_268BD8074;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_268BD8718;
  aBlock[3] = &block_descriptor_301;
  v19 = _Block_copy(aBlock);

  [v16 requestNowPlayingItemMetadataOnQueue:v17 completion:v19];
  _Block_release(v19);
}

void sub_268BCDFE8(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_268C15A1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  if (a1)
  {
    v15 = a1;
    [v15 defaultPlaybackRate];
    if (v16 != 0.0 && a2 == 0)
    {
      if (qword_2802CDB70 != -1)
      {
        swift_once();
      }

      v26 = __swift_project_value_buffer(v8, qword_2802D2ED8);
      (*(v9 + 16))(v14, v26, v8);
      v27 = v15;
      v28 = sub_268C159FC();
      v29 = sub_268C15DCC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        [v27 defaultPlaybackRate];
        *(v30 + 4) = v31;
        _os_log_impl(&dword_268BAD000, v28, v29, "Playback rate from MR = %f", v30, 0xCu);
        MEMORY[0x26D628010](v30, -1, -1);
      }

      (*(v9 + 8))(v14, v8);
      [v27 defaultPlaybackRate];
      LOBYTE(v40) = 0;
      v33 = v32;
    }

    else
    {
      v39 = a4;
      if (qword_2802CDB70 != -1)
      {
        swift_once();
      }

      v18 = __swift_project_value_buffer(v8, qword_2802D2ED8);
      (*(v9 + 16))(v11, v18, v8);
      v19 = a2;
      v20 = sub_268C159FC();
      v21 = sub_268C15DEC();

      if (os_log_type_enabled(v20, v21))
      {
        v38 = a3;
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v42 = v23;
        *v22 = 136446210;
        if (a2)
        {
          swift_getErrorValue();
          v24 = sub_268C161DC();
        }

        else
        {
          v24 = 0;
          v25 = 0;
        }

        v40 = v24;
        v41 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE098, &qword_268C177C0);
        v34 = sub_268C15C0C();
        v36 = sub_268BB3D28(v34, v35, &v42);

        *(v22 + 4) = v36;
        _os_log_impl(&dword_268BAD000, v20, v21, "Unexpected 0.0 playbackRate or error: %{public}s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x26D628010](v23, -1, -1);
        MEMORY[0x26D628010](v22, -1, -1);

        (*(v9 + 8))(v11, v8);
        a3 = v38;
      }

      else
      {

        (*(v9 + 8))(v11, v8);
      }

      LOBYTE(v40) = 1;
      v33 = 0x100000000;
    }

    a3(v33);
  }
}

uint64_t sub_268BCE414(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_61();
  sub_268C15A1C();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_3();
  if (a2 && (v4 == 0x45445F4C41434F4CLL ? (v7 = a2 == 0xEC00000045434956) : (v7 = 0), v7 || (sub_268C1618C() & 1) != 0))
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    __swift_project_value_buffer(v2, qword_2802D2ED8);
    OUTLINED_FUNCTION_21_2();
    v8(v3);
    v9 = sub_268C159FC();
    v10 = sub_268C15DFC();
    if (OUTLINED_FUNCTION_95(v10))
    {
      v11 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_97(v11);
      OUTLINED_FUNCTION_69(&dword_268BAD000, v12, v13, "moveOutputDevicesToGroup called with groupId=LOCAL_DEVICE, overwriting with nil since this is the value the API expects");
      OUTLINED_FUNCTION_30();
    }

    v14 = OUTLINED_FUNCTION_67();
    v15(v14);
    return 0;
  }

  else
  {
  }

  return v4;
}

void sub_268BCE594()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
  }

  OUTLINED_FUNCTION_33_2(v5, qword_2802D2ED8);
  v7 = OUTLINED_FUNCTION_24_3();
  v8(v7);
  v9 = sub_268C159FC();
  v10 = sub_268C15DFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_23_0();
    *v11 = 0;
    _os_log_impl(&dword_268BAD000, v9, v10, "Getting local NowPlayingMediaType", v11, 2u);
    OUTLINED_FUNCTION_30();
  }

  v12 = OUTLINED_FUNCTION_105();
  v13(v12);
  OUTLINED_FUNCTION_54();
  v14 = swift_allocObject();
  v14[2] = v4;
  v14[3] = v2;
  v14[4] = v0;

  sub_268BCED98();

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BCE738(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  if (!a1)
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v6, qword_2802D2ED8);
    (*(v7 + 16))(v15, v21, v6);
    v22 = sub_268C159FC();
    v23 = sub_268C15DEC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_268BAD000, v22, v23, "Local NowPlayingMediaItem is undefined", v24, 2u);
      MEMORY[0x26D628010](v24, -1, -1);
    }

    (*(v7 + 8))(v15, v6);
    return a2(0, 0);
  }

  v16 = MRContentItemCopyNowPlayingInfo();
  if (!v16)
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v6, qword_2802D2ED8);
    (*(v7 + 16))(v12, v25, v6);
    v26 = sub_268C159FC();
    v27 = sub_268C15DEC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_268BAD000, v26, v27, "getLocalNowPlayingMediaItemInfo is undefined", v28, 2u);
      MEMORY[0x26D628010](v28, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    return a2(0, 0);
  }

  v17 = v16;
  result = *MEMORY[0x277D27C30];
  if (*MEMORY[0x277D27C30])
  {
    *&v53[0] = sub_268C15BFC();
    *(&v53[0] + 1) = v19;
    v20 = [v17 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v20)
    {
      sub_268C15FAC();
      swift_unknownObjectRelease();
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
    }

    v53[0] = v51;
    v53[1] = v52;
    if (*(&v52 + 1))
    {
      v29 = swift_dynamicCast();
      if (v29)
      {
        v30 = v49;
      }

      else
      {
        v30 = 0;
      }

      if (v29)
      {
        v31 = v50;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      sub_268BD8138(v53, &qword_2802CE140, &qword_268C17978);
      v30 = 0;
      v31 = 0;
    }

    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v6, qword_2802D2ED8);
    (*(v7 + 16))(v9, v32, v6);

    v33 = v6;
    v34 = sub_268C159FC();
    v35 = sub_268C15DFC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v48 = a3;
      v37 = v36;
      v38 = swift_slowAlloc();
      v47 = v17;
      v39 = v38;
      *&v53[0] = v38;
      *v37 = 136315138;
      v45 = v33;
      v46 = a2;
      if (v31)
      {
        v40 = v30;
      }

      else
      {
        v40 = 7104878;
      }

      v41 = v30;
      if (v31)
      {
        v42 = v31;
      }

      else
      {
        v42 = 0xE300000000000000;
      }

      v43 = sub_268BB3D28(v40, v42, v53);
      v30 = v41;

      *(v37 + 4) = v43;
      a2 = v46;
      _os_log_impl(&dword_268BAD000, v34, v35, "Local NowPlayingMediaType is %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      v44 = v39;
      v17 = v47;
      MEMORY[0x26D628010](v44, -1, -1);
      MEMORY[0x26D628010](v37, -1, -1);

      (*(v7 + 8))(v9, v45);
    }

    else
    {

      (*(v7 + 8))(v9, v33);
    }

    a2(v30, v31);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268BCECD4(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  if (qword_2802CDB78 != -1)
  {
    OUTLINED_FUNCTION_7_3(&qword_2802CDB78);
  }

  v5 = qword_2802CE0E0;
  OUTLINED_FUNCTION_22_0();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_268BC5458(v5, sub_268BD7354, v6);
}

void sub_268BCED98()
{
  OUTLINED_FUNCTION_31_0();
  v3 = v2;
  v5 = v4;
  sub_268C159EC();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_22_0();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v3;
  v9 = qword_2802CDB60;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  v10 = qword_2802D2EB8;
  sub_268C159DC();
  v11 = OUTLINED_FUNCTION_32_2();
  v12(v11);
  OUTLINED_FUNCTION_23_3();
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_10_4(v13, 30);
  v15(v14);
  *(v13 + v1) = 1;
  v16 = v13 + v0;
  *(v16 + 8) = sub_268BD7EE8;
  *(v16 + 16) = v8;

  v17 = sub_268C15EAC();
  OUTLINED_FUNCTION_108(v17, &dword_268BAD000, v10, "requestNowPlayingPlaybackQueue", 30);
  OUTLINED_FUNCTION_22_0();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_268BD7F14;
  *(v18 + 24) = v13;

  v19 = OUTLINED_FUNCTION_82();
  sub_268BCEFC0(v19, v20);

  v21 = OUTLINED_FUNCTION_86();
  v22(v21);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BCEFC0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = qword_2802CDB78;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = swift_allocObject();
  v7[2] = sub_268BD7F98;
  v7[3] = v4;
  v7[4] = v5;
  v10[4] = sub_268BD801C;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_268BCC7AC;
  v10[3] = &block_descriptor_292;
  v8 = _Block_copy(v10);

  MRMediaRemoteRequestNowPlayingPlaybackQueueSync();
  _Block_release(v8);
}

uint64_t sub_268BCF130(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = sub_268C15A1C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a2)
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v10, qword_2802D2ED8);
    (*(v11 + 16))(v13, v15, v10);
    v16 = a2;
    v17 = sub_268C159FC();
    v18 = sub_268C15DEC();

    if (os_log_type_enabled(v17, v18))
    {
      v27 = a4;
      v28 = a3;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136446210;
      if (a2)
      {
        v29 = v16;
        type metadata accessor for CFError(0);
        sub_268BD84E4(&qword_2802CE138, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
        v21 = sub_268C161DC();
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      v29 = v21;
      v30 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE098, &qword_268C177C0);
      v23 = sub_268C15C0C();
      v25 = sub_268BB3D28(v23, v24, &v31);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_268BAD000, v17, v18, "Unexpected nil playbackQueue or error: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x26D628010](v20, -1, -1);
      MEMORY[0x26D628010](v19, -1, -1);

      (*(v11 + 8))(v13, v10);
      ContentItemAtOffset = 0;
      a3 = v28;
    }

    else
    {

      (*(v11 + 8))(v13, v10);
      ContentItemAtOffset = 0;
    }
  }

  else
  {
    ContentItemAtOffset = MRPlaybackQueueGetContentItemAtOffset();
    swift_beginAccess();
    *(a5 + 16) = ContentItemAtOffset;
  }

  return a3(ContentItemAtOffset);
}

void sub_268BCF444()
{
  OUTLINED_FUNCTION_31_0();
  v25 = v2;
  v26 = v3;
  v29 = v4;
  v30 = v5;
  v28 = v6;
  v31 = v1;
  v27 = *v1;
  sub_268C159EC();
  OUTLINED_FUNCTION_2_2();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v12 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  v16 = qword_2802D2EB8;
  sub_268C159DC();
  (*(v8 + 16))(v12, v15, v0);
  v17 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v18 = v17 + v10;
  v19 = (v17 + v10) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "executeMediaRemoteCommand";
  *(v20 + 24) = 25;
  *(v20 + 32) = 2;
  (*(v8 + 32))(v20 + v17, v12, v0);
  *(v20 + v18) = 0;
  v21 = v20 + v19;
  v22 = v26;
  *(v21 + 8) = v25;
  *(v21 + 16) = v22;

  sub_268C15EAC();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_268BD870C;
  *(v23 + 24) = v20;

  sub_268BCF6B0(sub_268BD8720, v23, v28, v29, v30, v31);

  (*(v8 + 8))(v15, v0);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BCF6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v39 = a1;
  v11 = sub_268C15A1C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v9;
  v37 = sub_268BCFA5C(v9);
  v16 = v15;
  if (qword_2802CDB70 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_2802D2ED8);
  (*(v12 + 16))(v14, v17, v11);

  v18 = sub_268C159FC();
  v19 = sub_268C15DCC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = a4;
    v21 = v20;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41 = v36;
    *v21 = 136446722;
    v22 = sub_268BB3D28(v37, v16, &v41);
    v37 = a2;
    v23 = a6;
    v24 = v22;

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    v25 = sub_268C15B6C();
    v27 = sub_268BB3D28(v25, v26, &v41);
    a6 = v23;
    a2 = v37;

    *(v21 + 14) = v27;
    *(v21 + 22) = 2112;
    v28 = sub_268C15CFC();
    *(v21 + 24) = v28;
    v29 = v35;
    *v35 = v28;
    _os_log_impl(&dword_268BAD000, v18, v19, "Sending command: %{public}s with options: %{public}s, to device IDs: %@", v21, 0x20u);
    sub_268BD8138(v29, &qword_2802CDF28, &unk_268C17900);
    MEMORY[0x26D628010](v29, -1, -1);
    v30 = v36;
    swift_arrayDestroy();
    MEMORY[0x26D628010](v30, -1, -1);
    v31 = v21;
    a4 = v38;
    MEMORY[0x26D628010](v31, -1, -1);
  }

  else
  {
  }

  (*(v12 + 8))(v14, v11);
  v32 = swift_allocObject();
  *(v32 + 16) = v39;
  *(v32 + 24) = a2;
  *(v32 + 32) = a5;
  *(v32 + 40) = a6;
  *(v32 + 48) = v40;
  *(v32 + 56) = a4;

  sub_268BCFE28();
}

uint64_t sub_268BCFA5C(unsigned int a1)
{
  v2 = sub_268C15B7C();
  v3 = sub_268C0F45C(a1, v2);
  v5 = v4;

  if (v5)
  {
    return v3;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

void sub_268BCFAE8(void *a1, char a2, void (*a3)(unint64_t *, __n128), uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8)
{
  v38 = a6;
  v15 = sub_268C15A1C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v39 = 0x8000000000000000;
    v40 = 1;
    a3(&v39, v17);
  }

  else
  {
    v35 = a3;
    v36 = a7;
    v37 = a8;
    v20 = *(a5 + 16);
    v21 = a1;
    v22 = (a5 + 40);
    v23 = v20 + 1;
    do
    {
      if (!--v23)
      {
        break;
      }

      if (*(v22 - 1) == 0x45445F4C41434F4CLL && *v22 == 0xEC00000045434956)
      {
        break;
      }

      v22 += 2;
    }

    while ((sub_268C1618C() & 1) == 0);
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v15, qword_2802D2ED8);
    (*(v16 + 16))(v19, v25, v15);
    sub_268BD8488(a1);
    v26 = sub_268C159FC();
    v27 = sub_268C15DCC();
    sub_268BD8494(a1);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = a4;
      v30 = v21;
      v31 = v29;
      *v28 = 138412290;
      *(v28 + 4) = v30;
      *v29 = a1;
      sub_268BD8488(a1);
      _os_log_impl(&dword_268BAD000, v26, v27, "Sending command with destination: %@", v28, 0xCu);
      sub_268BD8138(v31, &qword_2802CDF28, &unk_268C17900);
      a4 = v34;
      MEMORY[0x26D628010](v31, -1, -1);
      MEMORY[0x26D628010](v28, -1, -1);
    }

    (*(v16 + 8))(v19, v15);
    v32 = swift_allocObject();
    *(v32 + 16) = v35;
    *(v32 + 24) = a4;

    sub_268BD0760();

    sub_268BD8494(a1);
  }
}

void sub_268BCFE28()
{
  OUTLINED_FUNCTION_31_0();
  v22 = v1;
  v3 = v2;
  v5 = v4;
  sub_268C159EC();
  OUTLINED_FUNCTION_2_2();
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_80();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_22_0();
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v3;
  v11 = qword_2802CDB60;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  qword_2802D2EB8;
  sub_268C159DC();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_55();
  v12();
  OUTLINED_FUNCTION_81();
  v13 = v0 + v7;
  v14 = (v0 + v7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_15_3(v15, 25);
  OUTLINED_FUNCTION_85(v16);
  OUTLINED_FUNCTION_75();
  v17();
  *(v15 + v13) = 1;
  v18 = v15 + v14;
  *(v18 + 8) = sub_268BD7BBC;
  *(v18 + 16) = v10;

  sub_268C15EAC();
  OUTLINED_FUNCTION_63();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_268BD6B10;
  *(v19 + 24) = v15;

  sub_268BD0058(sub_268BD8720, v19, v22, v0);

  v20 = OUTLINED_FUNCTION_73();
  v21(v20);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BD0058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v7 = sub_268C15A1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v36 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v36 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v39 = v15;
  v16 = qword_2802CDB70;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v7, qword_2802D2ED8);
  v38 = v8;
  v18 = *(v8 + 16);
  v18(v14, v17, v7);

  v19 = sub_268C159FC();
  v20 = sub_268C15DFC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    v23 = sub_268C15CFC();
    *(v21 + 4) = v23;
    *v22 = v23;
    _os_log_impl(&dword_268BAD000, v19, v20, "Resolving MR destination based on devices: %@", v21, 0xCu);
    sub_268BD8138(v22, &qword_2802CDF28, &unk_268C17900);
    MEMORY[0x26D628010](v22, -1, -1);
    MEMORY[0x26D628010](v21, -1, -1);
  }

  v24 = *(v38 + 8);
  v25 = v24(v14, v7);
  if (*(a3 + 16) && (strcpy(v41, "LOCAL_DEVICE"), HIBYTE(v41[6]) = 0, v41[7] = -5120, MEMORY[0x28223BE20](v25), *(&v36 - 2) = v41, !sub_268BC48EC(sub_268BC4C7C, (&v36 - 4), a3)))
  {
    v18(v36, v17, v7);
    v30 = sub_268C159FC();
    v31 = sub_268C15DCC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_268BAD000, v30, v31, "Sending command to remote device(s) based on input", v32, 2u);
      MEMORY[0x26D628010](v32, -1, -1);
    }

    v24(v36, v7);
  }

  else
  {
    v26 = v37;
    v18(v37, v17, v7);
    v27 = sub_268C159FC();
    v28 = sub_268C15DCC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_268BAD000, v27, v28, "Sending command to local device based on input", v29, 2u);
      MEMORY[0x26D628010](v29, -1, -1);
    }

    v24(v26, v7);
    a3 = MEMORY[0x277D84F90];
  }

  __swift_project_boxed_opaque_existential_1((v40 + 16), *(v40 + 40));
  v33 = swift_allocObject();
  v34 = v39;
  *(v33 + 16) = sub_268BD7BF0;
  *(v33 + 24) = v34;
  sub_268C07AE4(a3, sub_268BD7C30, v33);
}

void sub_268BD052C(void *a1, void (*a2)(void *, uint64_t))
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16 = a1;
    a2(a1, 0);
    v8 = v16;
  }

  else
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v4, qword_2802D2ED8);
    (*(v5 + 16))(v7, v9, v4);
    v10 = sub_268C159FC();
    v11 = sub_268C15DEC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_268BAD000, v10, v11, "Unexpected nil MPCAssistantRemoteControlDestination from media remote", v12, 2u);
      MEMORY[0x26D628010](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    sub_268BD7C38();
    v13 = swift_allocError();
    *v14 = -99;
    a2(v13, 1);
  }
}

void sub_268BD0760()
{
  OUTLINED_FUNCTION_31_0();
  v34 = v3;
  v35 = v1;
  v5 = v4;
  v7 = v6;
  v37 = v8;
  v38 = v9;
  v11 = v10;
  sub_268C159EC();
  OUTLINED_FUNCTION_2_2();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_20_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_44_0();
  v36 = v11;
  v18 = sub_268BCFA5C(v11);
  v32 = v19;
  v33 = v18;
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  v31 = v7 & 1;
  v20 = qword_2802D2EB8;
  sub_268C159DC();
  OUTLINED_FUNCTION_75();
  v21();
  v22 = (v15 + ((*(v13 + 80) + 33) & ~*(v13 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = "mediaRemoteSendCommand";
  *(v23 + 24) = 22;
  *(v23 + 32) = 2;
  OUTLINED_FUNCTION_55();
  v24();
  v25 = (v23 + v22);
  *v25 = v34;
  v25[1] = v5;

  v26 = sub_268C15EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_268C172C0;
  *(v27 + 56) = MEMORY[0x277D837D0];
  v28 = sub_268BD7430();
  *(v27 + 32) = v33;
  *(v27 + 40) = v32;
  v29 = MEMORY[0x277D83C10];
  *(v27 + 96) = MEMORY[0x277D83B88];
  *(v27 + 104) = v29;
  *(v27 + 64) = v28;
  *(v27 + 72) = v31;
  sub_268C159BC(v26, &dword_268BAD000, v20, "mediaRemoteSendCommand", 22, 2, v2, "send command=%{public, signpost.telemetry:string1}@ isLocal=%{public, signpost.telemetry:number1}d enableTelemetry=YES ", 119, 2, v27);

  OUTLINED_FUNCTION_22_0();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_268BD6FA8;
  *(v30 + 24) = v23;
  __swift_project_boxed_opaque_existential_1((v35 + 16), *(v35 + 40));

  sub_268BB61B4(v36, v37, v38, sub_268BD8720, v30);

  (*(v13 + 8))(v2, v0);
  OUTLINED_FUNCTION_32_0();
}

void sub_268BD0A50()
{
  OUTLINED_FUNCTION_31_0();
  v34 = v3;
  v35 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v33 = v10;
  sub_268C159EC();
  OUTLINED_FUNCTION_2_2();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v16 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_22_0();
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = v5;
  v19 = qword_2802CDB60;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  v32 = v9 & 1;
  v20 = qword_2802D2EB8;
  sub_268C159DC();
  OUTLINED_FUNCTION_75();
  v21();
  v22 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "mediaRemoteDiscoverEndpoint";
  *(v24 + 24) = 27;
  v31 = v9;
  *(v24 + 32) = 2;
  (*(v12 + 32))(v24 + v22, v16, v0);
  v25 = (v24 + v23);
  *v25 = sub_268BD7CDC;
  v25[1] = v18;

  v26 = sub_268C15EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
  OUTLINED_FUNCTION_88();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D83B88];
  *(v27 + 16) = xmmword_268C172B0;
  v29 = MEMORY[0x277D83C10];
  *(v27 + 56) = v28;
  *(v27 + 64) = v29;
  OUTLINED_FUNCTION_84(v27, v32);
  LOBYTE(v31) = 2;
  sub_268C159BC(v26, &dword_268BAD000, v20, "mediaRemoteDiscoverEndpoint", 27, 2, v2, "isLocal=%{public, signpost.telemetry:number1}d enableTelemetry=YES ", 67);
  OUTLINED_FUNCTION_111();

  sub_268BD0D48(v31 & 1, v35, v33, v34, sub_268BD7CE4, v24);

  (*(v12 + 8))(v2, v0);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BD0D48(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v12 = sub_268C15A1C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v31 = a5;
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_268BD7D60;
  *(v17 + 24) = v16;
  if (a1)
  {

    v18 = [objc_opt_self() sharedLocalEndpoint];
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v12, qword_2802D2ED8);
    (*(v13 + 16))(v15, v19, v12);
    v20 = sub_268C159FC();
    v21 = sub_268C15DFC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30 = v18;
      v23 = a3;
      v24 = v22;
      *v22 = 0;
      _os_log_impl(&dword_268BAD000, v20, v21, "Got endpoint for local device", v22, 2u);
      v25 = v24;
      a3 = v23;
      v18 = v30;
      MEMORY[0x26D628010](v25, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    v32[0] = v18;
    v32[1] = a3;
    v32[2] = a4;
    v33 = 0;

    v26 = v18;
    v31(v32);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCC8, &qword_268C17090);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_268C172B0;
    *(v28 + 32) = a3;
    *(v28 + 40) = a4;
    v29 = swift_allocObject();
    v29[2] = a3;
    v29[3] = a4;
    v29[4] = sub_268BD7D68;
    v29[5] = v17;
    swift_bridgeObjectRetain_n();

    sub_268BB7A30(v28, sub_268BD7DB0, v29);
  }
}

void sub_268BD10EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void *, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v47[1] = a6;
  v48 = a5;
  v10 = sub_268C15A1C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v47 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v47 - v18;
  v20 = sub_268BD16FC(a1);
  if (v20)
  {
    v21 = v20;
    if (sub_268BC4EF4(v20))
    {
      sub_268BC4F00();
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x26D627640](0, v21);
      }

      else
      {
        v22 = *(v21 + 32);
      }

      v23 = v22;

      sub_268BC3228(a2, &v50);
      if (v51)
      {
        sub_268BB9B44(0, &qword_2802CE158, 0x277D27948);
        if (swift_dynamicCast())
        {
          v24 = v49;
          v25 = [v49 uid];
          if (v25)
          {
            v26 = v25;
            a3 = sub_268C15BFC();
            a4 = v27;

LABEL_22:
            if (qword_2802CDB70 != -1)
            {
              swift_once();
            }

            v42 = __swift_project_value_buffer(v10, qword_2802D2ED8);
            (*(v11 + 16))(v16, v42, v10);
            v43 = sub_268C159FC();
            v44 = sub_268C15DFC();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              *v45 = 0;
              _os_log_impl(&dword_268BAD000, v43, v44, "Got endpoint from UID", v45, 2u);
              MEMORY[0x26D628010](v45, -1, -1);
            }

            (*(v11 + 8))(v16, v10);
            v46 = v23;
            v48(v23, a3, a4, 0);

            return;
          }
        }
      }

      else
      {
        sub_268BD8138(&v50, &qword_2802CE140, &qword_268C17978);
      }

      if (qword_2802CDB70 != -1)
      {
        swift_once();
      }

      v35 = __swift_project_value_buffer(v10, qword_2802D2ED8);
      (*(v11 + 16))(v19, v35, v10);

      v36 = sub_268C159FC();
      v37 = sub_268C15DEC();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v47[0] = v23;
        v39 = v38;
        v40 = swift_slowAlloc();
        *&v50 = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_268BB3D28(a3, a4, &v50);
        _os_log_impl(&dword_268BAD000, v36, v37, "Call to get RemoteMRAVEndpoints returned invalid MRAVOutputDevice for: %s, using the default device id instead", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x26D628010](v40, -1, -1);
        v41 = v39;
        v23 = v47[0];
        MEMORY[0x26D628010](v41, -1, -1);
      }

      (*(v11 + 8))(v19, v10);

      goto LABEL_22;
    }
  }

  if (qword_2802CDB70 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v10, qword_2802D2ED8);
  (*(v11 + 16))(v13, v28, v10);

  v29 = sub_268C159FC();
  v30 = sub_268C15DEC();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v50 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_268BB3D28(a3, a4, &v50);
    _os_log_impl(&dword_268BAD000, v29, v30, "Error getting MRAVEndpoints for: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x26D628010](v32, -1, -1);
    MEMORY[0x26D628010](v31, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  sub_268BD7C38();
  v33 = swift_allocError();
  *v34 = -98;
  v48(v33, 0, 0, 1);
}

uint64_t sub_268BD16FC(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_268C160CC();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_268BB5B20(v3, v5);
    sub_268BB9B44(0, &qword_2802CE160, 0x277D27938);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_268C160AC();
    sub_268C160DC();
    sub_268C160EC();
    sub_268C160BC();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_268BD1808(uint64_t a1, uint64_t a2, char *a3)
{
  sub_268C15A1C();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_3();
  if (a1 == 1869903201 && a2 == 0xE400000000000000)
  {
    return MRLanguageOptionCreateAutomaticLanguageOptionForType();
  }

  OUTLINED_FUNCTION_89();
  if (sub_268C1618C())
  {
    return MRLanguageOptionCreateAutomaticLanguageOptionForType();
  }

  OUTLINED_FUNCTION_89();
  v11 = sub_268C15BEC();
  v9 = MRLanguageOptionCreate();

  if (!v9)
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    __swift_project_value_buffer(v3, qword_2802D2ED8);
    OUTLINED_FUNCTION_21_2();
    v12(v4);
    v13 = sub_268C159FC();
    v14 = sub_268C15DEC();
    if (OUTLINED_FUNCTION_95(v14))
    {
      v15 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_97(v15);
      OUTLINED_FUNCTION_69(&dword_268BAD000, v16, v17, "Could not make language option");
      OUTLINED_FUNCTION_30();
    }

    v18 = OUTLINED_FUNCTION_67();
    v19(v18);
    return 0;
  }

  return v9;
}

uint64_t sub_268BD19C4(uint64_t a1)
{
  OUTLINED_FUNCTION_61();
  sub_268C15A1C();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_3();
  ExternalRepresentation = MRLanguageOptionCreateExternalRepresentation();
  if (ExternalRepresentation)
  {
    v5 = ExternalRepresentation;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE108, &unk_268C19120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268C172B0;
    v7 = *MEMORY[0x277D27D48];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE0F0, qword_268C1A660);
    sub_268BD6B58();
    sub_268C1601C();
    type metadata accessor for CFData(0);
    *(inited + 96) = v8;
    *(inited + 72) = v5;
    v9 = v5;
  }

  else
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    __swift_project_value_buffer(v1, qword_2802D2ED8);
    OUTLINED_FUNCTION_21_2();
    v10(v2);
    v11 = sub_268C159FC();
    v12 = sub_268C15DEC();
    if (OUTLINED_FUNCTION_95(v12))
    {
      v13 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_97(v13);
      OUTLINED_FUNCTION_69(&dword_268BAD000, v14, v15, "Error creating external representation");
      OUTLINED_FUNCTION_30();
    }

    v16 = OUTLINED_FUNCTION_67();
    v17(v16);
  }

  return sub_268C15B7C();
}

void sub_268BD1BC8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_59();
  v96 = v2;
  v94 = v4;
  v95 = v5;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_61();
  v10 = sub_268C159EC();
  OUTLINED_FUNCTION_3_0();
  v98 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_65(v15, v16, v17, v18, v19, v20, v21, v22, v91);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_92();
  v97 = v24;
  OUTLINED_FUNCTION_10_2();
  v25 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17_2();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_28_2();
  if (v9)
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    OUTLINED_FUNCTION_33_2(v25, qword_2802D2ED8);
    v33 = OUTLINED_FUNCTION_24_3();
    v34(v33);

    v35 = sub_268C159FC();
    v36 = sub_268C15DFC();

    if (os_log_type_enabled(v35, v36))
    {
      OUTLINED_FUNCTION_110();
      v92 = OUTLINED_FUNCTION_43_0();
      v99 = v92;
      v37 = OUTLINED_FUNCTION_29_2(3.8521e-34);
      v38 = MEMORY[0x26D6272E0](v3, MEMORY[0x277D837D0], v37);
      v3 = v39;
      sub_268BB3D28(v38, v39, &v99);
      OUTLINED_FUNCTION_106();
      *(v7 + 14) = v10;
      v10 = v13;
      _os_log_impl(&dword_268BAD000, v35, v36, "Increasing volume by: %f for routeIds: %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v92);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_37_0();
    }

    (*(v27 + 8))(v2, v25);
    v40 = v98;
    v41 = v97;
    if (qword_2802CDB60 != -1)
    {
      OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
    }

    qword_2802D2EB8;
    sub_268C159DC();
    v42 = OUTLINED_FUNCTION_74();
    v43(v42);
    OUTLINED_FUNCTION_26_2();
    v44 = swift_allocObject();
    v45 = OUTLINED_FUNCTION_49(v44);
    v46(v45);
    v47 = (v44 + v3);
    *v47 = v94;
    v47[1] = v95;

    sub_268C15EAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_268C178C0;
    *(v48 + 56) = MEMORY[0x277D837D0];
    v49 = sub_268BD7430();
    *(v48 + 32) = 0xD000000000000011;
    *(v48 + 40) = 0x8000000268C1C140;
    OUTLINED_FUNCTION_35_0(v49, MEMORY[0x277D83B88]);
    v50 = OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_94(v50, v51, v52, "mediaRemoteVolumeControlCommands", v53, v54, v55, v56);
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_22_0();
    v57 = swift_allocObject();
    *(v57 + 16) = sub_268BD8710;
    *(v57 + 24) = v44;
    OUTLINED_FUNCTION_72(v2);
    OUTLINED_FUNCTION_22_0();
    v58 = swift_allocObject();
    *(v58 + 16) = sub_268BD8720;
    *(v58 + 24) = v57;

    v59 = OUTLINED_FUNCTION_102();
    sub_268BB7DE4(v59, v60, v61, v62);
  }

  else
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    OUTLINED_FUNCTION_33_2(v25, qword_2802D2ED8);
    v63 = OUTLINED_FUNCTION_91();
    v64(v63);

    v65 = sub_268C159FC();
    v66 = sub_268C15DFC();

    if (os_log_type_enabled(v65, v66))
    {
      OUTLINED_FUNCTION_110();
      v93 = OUTLINED_FUNCTION_43_0();
      v99 = v93;
      v67 = OUTLINED_FUNCTION_29_2(3.8521e-34);
      v68 = MEMORY[0x26D6272E0](v3, MEMORY[0x277D837D0], v67);
      v3 = v69;
      sub_268BB3D28(v68, v69, &v99);
      OUTLINED_FUNCTION_106();
      *(v7 + 14) = v10;
      v10 = v13;
      _os_log_impl(&dword_268BAD000, v65, v66, "Decreasing volume by: %f for routeIds: %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v93);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_37_0();
    }

    (*(v27 + 8))(v31, v25);
    v40 = v98;
    v41 = v97;
    if (qword_2802CDB60 != -1)
    {
      OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
    }

    qword_2802D2EB8;
    sub_268C159DC();
    v70 = OUTLINED_FUNCTION_74();
    v71(v70);
    OUTLINED_FUNCTION_26_2();
    v72 = swift_allocObject();
    v73 = OUTLINED_FUNCTION_49(v72);
    v74(v73);
    v75 = (v72 + v3);
    *v75 = v94;
    v75[1] = v95;

    sub_268C15EAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_268C178C0;
    *(v76 + 56) = MEMORY[0x277D837D0];
    v77 = sub_268BD7430();
    *(v76 + 32) = 0xD000000000000011;
    *(v76 + 40) = 0x8000000268C1C140;
    OUTLINED_FUNCTION_35_0(v77, MEMORY[0x277D83B88]);
    v78 = OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_94(v78, v79, v80, "mediaRemoteVolumeControlCommands", v81, v82, v83, v84);
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_22_0();
    v85 = swift_allocObject();
    *(v85 + 16) = sub_268BD6FA8;
    *(v85 + 24) = v72;
    OUTLINED_FUNCTION_72(v96);
    OUTLINED_FUNCTION_22_0();
    v86 = swift_allocObject();
    *(v86 + 16) = sub_268BD7484;
    *(v86 + 24) = v85;

    v87 = OUTLINED_FUNCTION_102();
    sub_268BB7DF8(v87, v88, v89, v90);
  }

  (*(v40 + 8))(v41, v10);
  OUTLINED_FUNCTION_58();
}

void sub_268BD22C0()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_28_2();
  if (v11)
  {
    v15 = v11;
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    OUTLINED_FUNCTION_33_2(v12, qword_2802D2ED8);
    v16 = OUTLINED_FUNCTION_64();
    v17(v16);
    v18 = v11;
    v19 = sub_268C159FC();
    v20 = v5();

    if (os_log_type_enabled(v19, v20))
    {
      v36 = v9;
      v21 = OUTLINED_FUNCTION_25_2();
      v37 = OUTLINED_FUNCTION_24_2();
      *v21 = 136315138;
      swift_getErrorValue();
      v22 = sub_268C161DC();
      v24 = OUTLINED_FUNCTION_96(v22, v23);

      *(v21 + 4) = v24;
      _os_log_impl(&dword_268BAD000, v19, v20, v3, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      OUTLINED_FUNCTION_41_0();
      v9 = v36;
      OUTLINED_FUNCTION_30();
    }

    v25 = OUTLINED_FUNCTION_62();
    v26(v25);
    v27 = OUTLINED_FUNCTION_16_3();
    v9(v27);
  }

  else
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    OUTLINED_FUNCTION_33_2(v12, qword_2802D2ED8);
    v28 = OUTLINED_FUNCTION_24_3();
    v29(v28);
    v30 = sub_268C159FC();
    v31 = sub_268C15DFC();
    if (OUTLINED_FUNCTION_78(v31))
    {
      v32 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_53(v32);
      _os_log_impl(&dword_268BAD000, v30, v31, v1, v7, 2u);
      OUTLINED_FUNCTION_30();
    }

    v33 = OUTLINED_FUNCTION_93();
    v34(v33);
    v35 = OUTLINED_FUNCTION_90();
    v9(v35);
  }

  OUTLINED_FUNCTION_32_0();
}

void sub_268BD25B8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_59();
  v59 = v5;
  v58 = v6;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_61();
  sub_268C159EC();
  OUTLINED_FUNCTION_3_0();
  v62 = v12;
  v63 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_65(v13, v14, v15, v16, v17, v18, v19, v20, v54);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_92();
  v60 = v22;
  OUTLINED_FUNCTION_10_2();
  v23 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_3();
  v57 = *(v3 + 16);
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
  }

  OUTLINED_FUNCTION_33_2(v23, qword_2802D2ED8);
  v25 = OUTLINED_FUNCTION_24_3();
  v26(v25);

  v27 = sub_268C159FC();
  v28 = sub_268C15DFC();

  v61 = v3;
  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_110();
    v55 = v8;
    v29 = OUTLINED_FUNCTION_43_0();
    v64 = v29;
    v30 = OUTLINED_FUNCTION_29_2(3.8521e-34);
    v31 = MEMORY[0x26D6272E0](v3, MEMORY[0x277D837D0], v30);
    v3 = v32;
    v33 = sub_268BB3D28(v31, v32, &v64);

    *(v4 + 14) = v33;
    _os_log_impl(&dword_268BAD000, v27, v28, "Setting volume to: %f for routeIds: %s", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v8 = v55;
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_37_0();
  }

  v34 = OUTLINED_FUNCTION_57();
  v35(v34);
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  qword_2802D2EB8;
  sub_268C159DC();
  v36 = OUTLINED_FUNCTION_62();
  v37(v36);
  OUTLINED_FUNCTION_26_2();
  v38 = swift_allocObject();
  *(v38 + 16) = "mediaRemoteVolumeControlCommands";
  *(v38 + 24) = 32;
  *(v38 + 32) = 2;
  (*(v62 + 32))(v38 + v8, v56, v63);
  v39 = (v38 + v3);
  *v39 = v58;
  v39[1] = v59;

  sub_268C15EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_268C178C0;
  *(v40 + 56) = MEMORY[0x277D837D0];
  v41 = sub_268BD7430();
  *(v40 + 32) = 0xD000000000000011;
  *(v40 + 40) = 0x8000000268C1C160;
  v42 = MEMORY[0x277D83B88];
  v43 = MEMORY[0x277D83C10];
  *(v40 + 96) = MEMORY[0x277D83B88];
  *(v40 + 104) = v43;
  *(v40 + 64) = v41;
  *(v40 + 72) = v8 & 1;
  *(v40 + 136) = v42;
  *(v40 + 144) = v43;
  *(v40 + 112) = v57;
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_63();
  sub_268C159BC(v44, v45, v46, v47, v48, v49, v50, v51, 164, 2, v40);
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_22_0();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_268BD8710;
  *(v52 + 24) = v38;
  OUTLINED_FUNCTION_72(v2);
  OUTLINED_FUNCTION_22_0();
  v53 = swift_allocObject();
  *(v53 + 16) = sub_268BD8720;
  *(v53 + 24) = v52;

  sub_268BB7E0C(v61, sub_268BD74E4, v53, v10);

  (*(v62 + 8))(v60, v63);
  OUTLINED_FUNCTION_58();
}

uint64_t sub_268BD2A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v11 = *v5;
  if (a1 == 0x45445F4C41434F4CLL && a2 == 0xEC00000045434956)
  {
    v13 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_15();
    v13 = sub_268C1618C();
  }

  OUTLINED_FUNCTION_88();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13 & 1;
  *(v14 + 36) = a5;
  *(v14 + 40) = a1;
  *(v14 + 48) = a2;
  *(v14 + 56) = v5;
  *(v14 + 64) = v11;

  OUTLINED_FUNCTION_15();
  sub_268BD0A50();
}

uint64_t sub_268BD2B6C(void *a1, void *a2, uint64_t a3, char a4, uint64_t (*a5)(unint64_t *), uint64_t (*a6)(unint64_t *), int a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11)
{
  v77 = a8;
  v79 = a7;
  v82 = a3;
  v83 = a5;
  v81 = a2;
  v84 = a1;
  v14 = sub_268C159EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v71 - v19;
  v21 = sub_268C15A1C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v23);
  v26 = &v71 - v25;
  if (a4)
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v21, qword_2802D2ED8);
    (*(v22 + 16))(v26, v27, v21);
    v28 = v84;
    v29 = v84;
    v30 = sub_268C159FC();
    v31 = sub_268C15DEC();
    sub_268BD7C8C(v28, v81, v82, 1);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v21;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v85 = v34;
      *v33 = 136446210;
      swift_getErrorValue();
      v35 = sub_268C161DC();
      v37 = sub_268BB3D28(v35, v36, &v85);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_268BAD000, v30, v31, "SetVolume: Error trying to access endpoints: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x26D628010](v34, -1, -1);
      MEMORY[0x26D628010](v33, -1, -1);

      (*(v22 + 8))(v26, v32);
    }

    else
    {

      (*(v22 + 8))(v26, v21);
    }

    v85 = 0x8000000000000000;
    v86 = 1;
    return v83(&v85);
  }

  else
  {
    v74 = v24;
    v78 = v21;
    v72 = a10;
    if (qword_2802CDB60 != -1)
    {
      swift_once();
    }

    v73 = a11;
    v38 = qword_2802D2EB8;
    sub_268C159DC();
    (*(v15 + 16))(v17, v20, v14);
    v39 = (*(v15 + 80) + 33) & ~*(v15 + 80);
    v80 = v20;
    v40 = swift_allocObject();
    *(v40 + 16) = "mediaRemoteVolumeControlCommands";
    *(v40 + 24) = 32;
    *(v40 + 32) = 2;
    v75 = v15;
    v76 = v14;
    (*(v15 + 32))(v40 + v39, v17);
    v41 = (v40 + ((v16 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v41 = v83;
    v41[1] = a6;

    v42 = sub_268C15EAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_268C172C0;
    *(v43 + 56) = MEMORY[0x277D837D0];
    v44 = sub_268BD7430();
    v45 = MEMORY[0x277D83B88];
    v46 = MEMORY[0x277D83C10];
    *(v43 + 32) = 0x6D756C6F56746553;
    *(v43 + 40) = 0xE900000000000065;
    *(v43 + 96) = v45;
    *(v43 + 104) = v46;
    *(v43 + 64) = v44;
    *(v43 + 72) = 1;
    sub_268C159BC(v42, &dword_268BAD000, v38, "mediaRemoteVolumeControlCommands", 32, 2, v80, "command=%{public, signpost.telemetry:string1}@ isLocal=%{public, signpost.telemetry:number1}d enableTelemetry=YES ", 114, 2, v43);

    v47 = swift_allocObject();
    *(v47 + 16) = sub_268BD8710;
    *(v47 + 24) = v40;
    v48 = v81;
    if (v79)
    {
      v48 = 0;
    }

    v83 = v48;
    if (v79)
    {
      v49 = 0;
    }

    else
    {
      v49 = v82;
    }

    v50 = qword_2802CDB70;

    if (v50 != -1)
    {
      swift_once();
    }

    v51 = v78;
    v52 = __swift_project_value_buffer(v78, qword_2802D2ED8);
    v53 = v74;
    (*(v22 + 16))(v74, v52, v51);
    v54 = v84;
    v55 = v72;

    v56 = v55;
    v57 = sub_268C159FC();
    v58 = sub_268C15DFC();

    LODWORD(v82) = v58;
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v85 = v81;
      *v59 = 134218754;
      *(v59 + 4) = a9;
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_268BB3D28(v77, v56, &v85);
      *(v59 + 22) = 2080;
      if (v49)
      {
        v60 = v83;
      }

      else
      {
        v60 = 0x3E6C696E3CLL;
      }

      if (v49)
      {
        v61 = v49;
      }

      else
      {
        v61 = 0xE500000000000000;
      }

      v62 = sub_268BB3D28(v60, v61, &v85);

      *(v59 + 24) = v62;
      *(v59 + 32) = 2080;
      v87[0] = v84;
      v63 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE150, &qword_268C17988);
      v64 = sub_268C15C0C();
      v66 = sub_268BB3D28(v64, v65, &v85);

      *(v59 + 34) = v66;
      _os_log_impl(&dword_268BAD000, v57, v82, "Setting volume to: %f for device: %s, outputUID: %s, endpoint: %s", v59, 0x2Au);
      v67 = v81;
      swift_arrayDestroy();
      MEMORY[0x26D628010](v67, -1, -1);
      v68 = v80;
      MEMORY[0x26D628010](v59, -1, -1);

      (*(v22 + 8))(v53, v78);
      v69 = v75;
    }

    else
    {

      (*(v22 + 8))(v53, v51);
      v69 = v75;
      v68 = v80;
    }

    __swift_project_boxed_opaque_existential_1((v73 + 16), *(v73 + 40));
    if (qword_2802CDB78 != -1)
    {
      swift_once();
    }

    sub_268BB7F08();

    return (*(v69 + 8))(v68, v76);
  }
}

void sub_268BD3424()
{
  OUTLINED_FUNCTION_31_0();
  v51 = v2;
  v52 = v3;
  v5 = v4;
  v7 = v6;
  v48 = *v0;
  sub_268C159EC();
  OUTLINED_FUNCTION_3_0();
  v49 = v9;
  v50 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_76();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_92();
  v14 = v13;
  OUTLINED_FUNCTION_10_2();
  v15 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_3();
  v19 = v7 == 0x45445F4C41434F4CLL && v5 == 0xEC00000045434956;
  if (v19 || (sub_268C1618C() & 1) != 0)
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    OUTLINED_FUNCTION_33_2(v15, qword_2802D2ED8);
    v20 = OUTLINED_FUNCTION_24_3();
    v21(v20);
    v22 = sub_268C159FC();
    v23 = sub_268C15DFC();
    if (OUTLINED_FUNCTION_78(v23))
    {
      v24 = OUTLINED_FUNCTION_23_0();
      *v24 = 0;
      _os_log_impl(&dword_268BAD000, v22, v23, "Getting local volume based on input", v24, 2u);
      OUTLINED_FUNCTION_37_0();
    }

    (*(v17 + 8))(v0, v15);
    if (qword_2802CDB60 != -1)
    {
      OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
    }

    qword_2802D2EB8;
    sub_268C159DC();
    v25 = OUTLINED_FUNCTION_91();
    v26(v25, v14, v50);
    v27 = (*(v49 + 80) + 33) & ~*(v49 + 80);
    v28 = (v11 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 16) = "mediaRemoteVolumeControlCommands";
    *(v29 + 24) = 32;
    *(v29 + 32) = 2;
    (*(v49 + 32))(v29 + v27, v1, v50);
    v30 = (v29 + v28);
    *v30 = v51;
    v30[1] = v52;

    sub_268C15EAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_268C172C0;
    *(v31 + 56) = MEMORY[0x277D837D0];
    v32 = sub_268BD7430();
    v33 = MEMORY[0x277D83B88];
    v34 = MEMORY[0x277D83C10];
    *(v31 + 32) = 0x6D756C6F56746547;
    *(v31 + 40) = 0xE900000000000065;
    *(v31 + 96) = v33;
    *(v31 + 104) = v34;
    *(v31 + 64) = v32;
    *(v31 + 72) = 1;
    v35 = OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_94(v35, v36, v37, "mediaRemoteVolumeControlCommands", v38, v39, v40, v41);

    OUTLINED_FUNCTION_22_0();
    v42 = swift_allocObject();
    *(v42 + 16) = sub_268BD6FA8;
    *(v42 + 24) = v29;
    OUTLINED_FUNCTION_72(v0);
    v43 = qword_2802CDB78;

    if (v43 != -1)
    {
      OUTLINED_FUNCTION_7_3(&qword_2802CDB78);
    }

    v44 = qword_2802CE0E0;
    OUTLINED_FUNCTION_22_0();
    v45 = swift_allocObject();
    *(v45 + 16) = sub_268BD8720;
    *(v45 + 24) = v42;
    sub_268BB84C4(v44, sub_268BD7620, v45);

    (*(v49 + 8))(v14, v50);
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v46 = swift_allocObject();
    *(v46 + 16) = v51;
    *(v46 + 24) = v52;
    *(v46 + 32) = 0;
    *(v46 + 40) = 0;
    *(v46 + 48) = v7;
    *(v46 + 56) = v5;
    *(v46 + 64) = v0;
    *(v46 + 72) = v48;

    sub_268BD0A50();
    OUTLINED_FUNCTION_32_0();
  }
}

uint64_t sub_268BD3958(uint64_t (*a1)(unint64_t *), float a2)
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDB70 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_2802D2ED8);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_268C159FC();
  v10 = sub_268C15DFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = a2;
    _os_log_impl(&dword_268BAD000, v9, v10, "GetVolume: local volumeLevel: %f", v11, 0xCu);
    MEMORY[0x26D628010](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  if (a2 == -3.0)
  {
    v13 = 0x8000000000000000;
    v14 = 1;
  }

  else
  {
    v13 = LODWORD(a2);
    v14 = 0;
  }

  return a1(&v13);
}

uint64_t sub_268BD3B50(void *a1, uint64_t a2, uint64_t a3, char a4, char *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v87 = a8;
  v86 = a7;
  v91 = a5;
  v92 = a6;
  v89 = a2;
  v90 = a3;
  v13 = sub_268C159EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v79 - v18;
  v20 = sub_268C15A1C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - v24;
  if (a4)
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v20, qword_2802D2ED8);
    (*(v21 + 16))(v25, v26, v20);
    v27 = a1;
    v28 = sub_268C159FC();
    v29 = sub_268C15DEC();
    sub_268BD7C8C(a1, v89, v90, 1);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v93 = v31;
      *v30 = 136446210;
      swift_getErrorValue();
      v32 = sub_268C161DC();
      v34 = v21;
      v35 = sub_268BB3D28(v32, v33, &v93);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_268BAD000, v28, v29, "GetVolume: Error trying to access endpoints: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x26D628010](v31, -1, -1);
      MEMORY[0x26D628010](v30, -1, -1);

      (*(v34 + 8))(v25, v20);
    }

    else
    {

      (*(v21 + 8))(v25, v20);
    }

    v93 = 0x8000000000000000;
    v94 = 1;
    return (v91)(&v93);
  }

  else
  {
    v84 = v21;
    v85 = v23;
    v88 = a1;
    v80 = a10;
    if (qword_2802CDB60 != -1)
    {
      swift_once();
    }

    v81 = a11;
    v36 = qword_2802D2EB8;
    sub_268C159DC();
    (*(v14 + 16))(v16, v19, v13);
    v37 = (*(v14 + 80) + 33) & ~*(v14 + 80);
    v38 = v15 + v37 + 7;
    v39 = v19;
    v40 = v38 & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    *(v41 + 16) = "mediaRemoteVolumeControlCommands";
    *(v41 + 24) = 32;
    *(v41 + 32) = 2;
    v82 = v14;
    v83 = v13;
    (*(v14 + 32))(v41 + v37, v16, v13);
    v42 = (v41 + v40);
    v43 = v92;
    *v42 = v91;
    v42[1] = v43;

    v44 = sub_268C15EAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE118, &qword_268C178F8);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_268C172C0;
    *(v45 + 56) = MEMORY[0x277D837D0];
    v46 = sub_268BD7430();
    *(v45 + 32) = 0x6D756C6F56746547;
    *(v45 + 40) = 0xE900000000000065;
    v47 = MEMORY[0x277D83C10];
    *(v45 + 96) = MEMORY[0x277D83B88];
    *(v45 + 104) = v47;
    v48 = v86;
    *(v45 + 64) = v46;
    *(v45 + 72) = v48;
    v91 = v39;
    sub_268C159BC(v44, &dword_268BAD000, v36, "mediaRemoteVolumeControlCommands", 32, 2, v39, "command=%{public, signpost.telemetry:string1}@ isLocal=%{public, signpost.telemetry:number1}d enableTelemetry=YES ", 114, 2, v45);

    v49 = swift_allocObject();
    *(v49 + 16) = sub_268BD8710;
    *(v49 + 24) = v41;
    v86 = v49;
    v50 = v89;
    if (v87)
    {
      v50 = 0;
    }

    v92 = v50;
    if (v87)
    {
      v51 = 0;
    }

    else
    {
      v51 = v90;
    }

    v52 = qword_2802CDB70;

    if (v52 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v20, qword_2802D2ED8);
    v55 = v84;
    v54 = v85;
    (*(v84 + 16))(v85, v53, v20);
    v56 = v88;
    v57 = v88;
    v58 = v80;

    v59 = v20;
    v60 = v58;
    v61 = sub_268C159FC();
    v62 = sub_268C15DFC();

    LODWORD(v90) = v62;
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v89 = v59;
      v64 = v63;
      v65 = swift_slowAlloc();
      v93 = v65;
      *v64 = 136315650;
      *(v64 + 4) = sub_268BB3D28(a9, v60, &v93);
      *(v64 + 12) = 2080;
      if (v51)
      {
        v66 = v92;
      }

      else
      {
        v66 = 0x3E6C696E3CLL;
      }

      v67 = v56;
      if (v51)
      {
        v68 = v51;
      }

      else
      {
        v68 = 0xE500000000000000;
      }

      v69 = sub_268BB3D28(v66, v68, &v93);

      *(v64 + 14) = v69;
      *(v64 + 22) = 2080;
      v95[0] = v67;
      v70 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE150, &qword_268C17988);
      v71 = sub_268C15C0C();
      v73 = sub_268BB3D28(v71, v72, &v93);

      *(v64 + 24) = v73;
      _os_log_impl(&dword_268BAD000, v61, v90, "Getting device volume for device: %s, outputUID: %s, endpoint: %s", v64, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D628010](v65, -1, -1);
      MEMORY[0x26D628010](v64, -1, -1);

      (*(v55 + 8))(v85, v89);
    }

    else
    {

      (*(v55 + 8))(v54, v59);
    }

    v75 = __swift_project_boxed_opaque_existential_1((v81 + 16), *(v81 + 40));
    v76 = v83;
    if (qword_2802CDB78 != -1)
    {
      swift_once();
    }

    v77 = qword_2802CE0E0;
    v78 = *v75;

    sub_268BB81BC(v92, v51, v88, v77, v78, sub_268BD8720);

    return (*(v82 + 8))(v91, v76);
  }
}

void sub_268BD43B8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_59();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_87();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_44_0();
  if (v6)
  {
    v12 = v6;
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    __swift_project_value_buffer(v9, qword_2802D2ED8);
    OUTLINED_FUNCTION_30_2();
    v13(v2);
    v14 = v6;
    v15 = sub_268C159FC();
    v16 = sub_268C15DFC();

    if (os_log_type_enabled(v15, v16))
    {
      v31 = v4;
      v17 = OUTLINED_FUNCTION_25_2();
      v18 = OUTLINED_FUNCTION_24_2();
      v32 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_268C161DC();
      v21 = sub_268BB3D28(v19, v20, &v32);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_268BAD000, v15, v16, "Error in getting the volume: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_30();
      v4 = v31;
      OUTLINED_FUNCTION_30();
    }

    v22 = OUTLINED_FUNCTION_62();
    v23(v22);
    v32 = 0x8000000000000000;
    v33 = 1;
    v4(&v32);
  }

  else
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    OUTLINED_FUNCTION_33_2(v9, qword_2802D2ED8);
    v24 = OUTLINED_FUNCTION_24_3();
    v25(v24);
    v26 = sub_268C159FC();
    v27 = sub_268C15DFC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_25_2();
      *v28 = 134217984;
      *(v28 + 4) = v8;
      _os_log_impl(&dword_268BAD000, v26, v27, "GetVolume: volumeLevel: %f", v28, 0xCu);
      OUTLINED_FUNCTION_41_0();
    }

    v29 = OUTLINED_FUNCTION_93();
    v30(v29);
    v32 = LODWORD(v8);
    v33 = 0;
    v4(&v32);
  }

  OUTLINED_FUNCTION_58();
}

void sub_268BD4720()
{
  OUTLINED_FUNCTION_31_0();
  sub_268C15A5C();
  OUTLINED_FUNCTION_3_0();
  v49 = v3;
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15_0();
  v47 = v5 - v4;
  OUTLINED_FUNCTION_10_2();
  v48 = sub_268C15AAC();
  OUTLINED_FUNCTION_3_0();
  v46 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  v45 = v9 - v8;
  OUTLINED_FUNCTION_10_2();
  v53 = sub_268C15ADC();
  OUTLINED_FUNCTION_3_0();
  v43 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17_2();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_92();
  v42 = v16;
  OUTLINED_FUNCTION_10_2();
  v17 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_17_2();
  v51 = v21 - v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_28_2();
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v17, qword_2802D2F10);
  v24 = *(v19 + 16);
  v25 = OUTLINED_FUNCTION_93();
  v24(v25);
  v26 = sub_268C159FC();
  v27 = sub_268C15DDC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_97(v28);
    _os_log_impl(&dword_268BAD000, v26, v27, "PlaybackController#acquireAndReleaseSnippetAssertionWithFixedTime acquire Media Remote assertion.", v1, 2u);
    OUTLINED_FUNCTION_30();
  }

  v29 = *(v19 + 8);
  v29(v0, v17);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v30 = sub_268BB884C();
  v32 = v31;
  if (v31)
  {
    v52 = v30;
    sub_268BB9B44(0, &qword_2802CE068, 0x277D85C78);

    v41 = sub_268C15E5C();
    sub_268C15ABC();
    sub_268C15B3C();
    v44 = *(v43 + 8);
    v44(v14, v53);
    OUTLINED_FUNCTION_54();
    v33 = swift_allocObject();
    v33[2] = v0;
    v33[3] = v52;
    v33[4] = v32;
    v54[4] = sub_268BD7640;
    v54[5] = v33;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 1107296256;
    v54[2] = sub_268BC5554;
    v54[3] = &block_descriptor_1;
    v34 = _Block_copy(v54);

    sub_268C15A6C();
    v54[0] = MEMORY[0x277D84F90];
    sub_268BD84E4(&qword_2802CE048, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v35 = OUTLINED_FUNCTION_105();
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
    sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
    sub_268C15FCC();
    MEMORY[0x26D6273F0](v42, v45, v47, v34);
    _Block_release(v34);

    (*(v49 + 8))(v47, v50);
    (*(v46 + 8))(v45, v48);
    v44(v42, v53);
  }

  else
  {
    v37 = OUTLINED_FUNCTION_62();
    v24(v37);
    v38 = sub_268C159FC();
    v39 = sub_268C15DEC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_23_0();
      *v40 = 0;
      _os_log_impl(&dword_268BAD000, v38, v39, "PlaybackController#acquireAndReleaseSnippetAssertionWithFixedTime No UI sessionID has been provided", v40, 2u);
      OUTLINED_FUNCTION_30();
    }

    v29(v51, v17);
  }

  OUTLINED_FUNCTION_32_0();
}

void sub_268BD4CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_2802D2F10);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_268C159FC();
  v12 = sub_268C15DDC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_268BAD000, v11, v12, "PlaybackController#acquireAndReleaseSnippetAssertionWithFixedTime release Media Remote assertion.", v13, 2u);
    MEMORY[0x26D628010](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_268BB8A94(a2, a3, v14, v15, v16, v17);
}

uint64_t PlaybackController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_56();

  return MEMORY[0x2821FE8D8](v1);
}

id sub_268BD5384(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithOrigin:a1 client:a2 player:a3];

  return v6;
}

void sub_268BD53EC(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v11 = sub_268C15A1C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  if (a1)
  {
    v50 = a5;
    v51 = a6;
    v49 = a1;
    v18 = a1;
    v19 = [v18 error];
    v48 = v18;
    v20 = [v18 handlerReturnStatuses];
    v47 = sub_268BB9B44(0, &qword_2802CDF30, 0x277CCABB0);
    v21 = sub_268C15D0C();

    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v11, qword_2802D2ED8);
    (*(v12 + 16))(v14, v22, v11);
    v23 = v19;

    v24 = sub_268C159FC();
    v25 = sub_268C15DFC();

    if (os_log_type_enabled(v24, v25))
    {
      v45 = a3;
      v46 = v23;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v52 = v43;
      *v26 = 138412546;
      v44 = a2;
      if (v19)
      {
        v28 = v46;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        v30 = v29;
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

      *(v26 + 4) = v29;
      *v27 = v30;
      *(v26 + 12) = 2080;
      v36 = MEMORY[0x26D6272E0](v21, v47);
      v38 = v37;

      v39 = sub_268BB3D28(v36, v38, &v52);

      *(v26 + 14) = v39;
      _os_log_impl(&dword_268BAD000, v24, v25, "PlaybackControlsCommandProviding#sendCommandToApp returned with error: %@ and statuses: %s", v26, 0x16u);
      sub_268BD8138(v27, &qword_2802CDF28, &unk_268C17900);
      MEMORY[0x26D628010](v27, -1, -1);
      v40 = v43;
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x26D628010](v40, -1, -1);
      MEMORY[0x26D628010](v26, -1, -1);

      (*(v12 + 8))(v14, v11);
      a2 = v44;
      a3 = v45;
      v35 = v51;
      v23 = v46;
    }

    else
    {

      (*(v12 + 8))(v14, v11);
      v35 = v51;
    }

    v41 = v48;
    sub_268BB676C(v50, v49, 0, v35, a2, a3);
  }

  else
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v11, qword_2802D2ED8);
    (*(v12 + 16))(v17, v31, v11);
    v32 = sub_268C159FC();
    v33 = sub_268C15DFC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_268BAD000, v32, v33, "PlaybackControlsCommandProviding#sendCommandToApp failed, no result returned", v34, 2u);
      MEMORY[0x26D628010](v34, -1, -1);
    }

    (*(v12 + 8))(v17, v11);
    v52 = 0x8000000000000000;
    v53 = 1;
    a2(&v52);
  }
}

void sub_268BD58B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1 == 0x45445F4C41434F4CLL && a2 == 0xEC00000045434956;
  if (v8 || (sub_268C1618C() & 1) != 0)
  {
    v11 = [objc_opt_self() localDestination];
  }

  else
  {
    sub_268BB9B44(0, &qword_2802CE188, 0x277D27988);

    v11 = sub_268BD5C70(a1, a2, &selRef_initWithOutputDeviceUID_);
  }

  v12 = v11;
  v13 = [objc_allocWithZone(MEMORY[0x277D279C8]) initWithDestination_];
  v15[4] = a4;
  v15[5] = a5;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_268BD5CE0;
  v15[3] = &block_descriptor_344;
  v14 = _Block_copy(v15);

  [v13 requestSupportedCommandsOnQueue:a3 completion:v14];

  _Block_release(v14);
}

id sub_268BD5A48(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0x45445F4C41434F4CLL && a2 == 0xEC00000045434956;
  if (v2 || (sub_268C1618C() & 1) != 0)
  {
    v5 = [objc_opt_self() deviceActivePlayerPath];
  }

  else
  {
    sub_268BB9B44(0, &qword_2802CE178, 0x277D278E0);

    v5 = sub_268BD5D84(a1, a2, 0, 0, 0, 0, 0);
  }

  v6 = v5;
  v7 = objc_allocWithZone(MEMORY[0x277D278F0]);
  v8 = v6;
  v9 = [v7 init];
  v10 = [objc_opt_self() emptyPropertySet];
  [v9 setPlayingItemProperties_];

  [v9 setPlayerPath_];
  v11 = v9;
  v12 = sub_268C15BEC();
  [v11 setLabel_];

  return v11;
}

void sub_268BD5BE8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v8 = a2;
  v6 = a3;
  v7 = OUTLINED_FUNCTION_67();
  v5(v7);
}

id sub_268BD5C70(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_89();
  v5 = sub_268C15BEC();

  v6 = [v4 *a3];

  return v6;
}

uint64_t sub_268BD5CE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_268BB9B44(0, &qword_2802CE190, 0x277D27960);
    v4 = sub_268C15D0C();
  }

  v6 = a3;
  v5(v4, a3);
}

id sub_268BD5D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_268C15BEC();

  if (!a4)
  {
    v11 = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = sub_268C15BEC();

  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_268C15BEC();

LABEL_6:
  v13 = [swift_getObjCClassFromMetadata() pathWithDeviceUID:v10 bundleID:v11 pid:a5 playerID:v12];

  return v13;
}

uint64_t sub_268BD5E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(char *))
{
  v17 = a1;
  v13 = sub_268C15E9C();
  if (qword_2802CDB60 != -1)
  {
    swift_once();
  }

  if (a6)
  {
    v14 = "enableTelemetry=YES";
  }

  else
  {
    v14 = "";
  }

  v15 = 19;
  if ((a6 & 1) == 0)
  {
    v15 = 0;
  }

  sub_268C159BC(v13, &dword_268BAD000, qword_2802D2EB8, a2, a3, a4, a5, v14, v15, 2, MEMORY[0x277D84F90]);
  return a7(&v17);
}

uint64_t sub_268BD5F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t (*a8)(void *))
{
  v18[0] = a1;
  v18[1] = a2;
  v14 = sub_268C15E9C();
  if (qword_2802CDB60 != -1)
  {
    swift_once();
  }

  if (a7)
  {
    v15 = "enableTelemetry=YES";
  }

  else
  {
    v15 = "";
  }

  v16 = 19;
  if ((a7 & 1) == 0)
  {
    v16 = 0;
  }

  sub_268C159BC(v14, &dword_268BAD000, qword_2802D2EB8, a3, a4, a5, a6, v15, v16, 2, MEMORY[0x277D84F90]);
  return a8(v18);
}

uint64_t sub_268BD606C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t (*a9)(uint64_t *))
{
  v18 = a1;
  v19 = a2;
  LOBYTE(v20) = a3 & 1;
  v14 = sub_268C15E9C();
  if (qword_2802CDB60 != -1)
  {
    swift_once();
  }

  if (a8)
  {
    v15 = "enableTelemetry=YES";
  }

  else
  {
    v15 = "";
  }

  v16 = 19;
  if ((a8 & 1) == 0)
  {
    v16 = 0;
  }

  sub_268C159BC(v14, &dword_268BAD000, qword_2802D2EB8, a4, a5, a6, a7, v15, v16, 2, MEMORY[0x277D84F90], v18, v19, v20);
  return a9(&v18);
}

uint64_t sub_268BD6170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t *))
{
  LODWORD(v17) = a1;
  BYTE4(v17) = BYTE4(a1) & 1;
  v13 = sub_268C15E9C();
  if (qword_2802CDB60 != -1)
  {
    swift_once();
  }

  if (a6)
  {
    v14 = "enableTelemetry=YES";
  }

  else
  {
    v14 = "";
  }

  v15 = 19;
  if ((a6 & 1) == 0)
  {
    v15 = 0;
  }

  sub_268C159BC(v13, &dword_268BAD000, qword_2802D2EB8, a2, a3, a4, a5, v14, v15, 2, MEMORY[0x277D84F90], v17);
  return a7(&v17);
}

uint64_t sub_268BD6278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t *))
{
  v17 = a1;
  v13 = sub_268C15E9C();
  if (qword_2802CDB60 != -1)
  {
    swift_once();
  }

  if (a6)
  {
    v14 = "enableTelemetry=YES";
  }

  else
  {
    v14 = "";
  }

  v15 = 19;
  if ((a6 & 1) == 0)
  {
    v15 = 0;
  }

  sub_268C159BC(v13, &dword_268BAD000, qword_2802D2EB8, a2, a3, a4, a5, v14, v15, 2, MEMORY[0x277D84F90], v17);
  return a7(&v17);
}

uint64_t sub_268BD6384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t *))
{
  OUTLINED_FUNCTION_104();
  v20 = v9;
  v21 = v10 & 1;
  sub_268C15E9C();
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_50();
  sub_268C159BC(v11, v12, v13, v14, v15, v16, v17, v18);
  return a8(&v20);
}

uint64_t sub_268BD645C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t *))
{
  v17 = a1;
  sub_268C15E9C();
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_50();
  sub_268C159BC(v8, v9, v10, v11, v12, v13, v14, v15);
  return a7(&v17);
}

uint64_t sub_268BD656C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_268BD65AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t sub_268BD65E4(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  v6 = a3 & 1;
  return a4(v5);
}

uint64_t sub_268BD6624(uint64_t a1, uint64_t (*a2)(int *))
{
  v3 = a1;
  v4 = BYTE4(a1) & 1;
  return a2(&v3);
}

uint64_t sub_268BD669C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t *))
{
  OUTLINED_FUNCTION_104();
  v11 = v8;
  v12 = v9 & 1;
  sub_268C15E9C();
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  OUTLINED_FUNCTION_50();
  sub_268C159CC();
  return a7(&v11);
}

uint64_t sub_268BD6740(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *))
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v11 = a4 & 1;
  sub_268C15E9C();
  if (qword_2802CDB60 != -1)
  {
    swift_once();
  }

  sub_268C159CC();
  return a9(v10);
}

uint64_t sub_268BD680C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void *))
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v7 = a4 & 1;
  return a5(v6);
}

void sub_268BD6878(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_268BD6914(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_268BD6978(void *a1)
{
  v1 = [a1 options];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_268BB9B44(0, &qword_2802CE170, 0x277CD5FF0);
  v3 = sub_268C15D0C();

  return v3;
}

uint64_t sub_268BD69E8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_268C15BFC();

  return v4;
}

uint64_t sub_268BD6A48(void *a1)
{
  v1 = [a1 languageOptionCharacteristics];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268C15D0C();

  return v3;
}

uint64_t sub_268BD6AA0(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268C15BFC();

  return v3;
}

unint64_t sub_268BD6B58()
{
  result = qword_2802CE0F8;
  if (!qword_2802CE0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802CE0F0, qword_268C1A660);
    sub_268BD84E4(&qword_2802CDC80, type metadata accessor for CFString, &unk_268C17034);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE0F8);
  }

  return result;
}

uint64_t sub_268BD6D00()
{

  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t objectdestroy_19Tm()
{

  OUTLINED_FUNCTION_56();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_268BD6EC4(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_268BD6F64()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_268BD7074(uint64_t a1)
{
  OUTLINED_FUNCTION_47_0();
  v1 = sub_268C159EC();
  OUTLINED_FUNCTION_28(v1);
  v2 = OUTLINED_FUNCTION_5_1();

  return sub_268BD700C(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_268BD713C(uint64_t a1)
{
  OUTLINED_FUNCTION_47_0();
  v1 = sub_268C159EC();
  OUTLINED_FUNCTION_28(v1);
  v2 = OUTLINED_FUNCTION_5_1();

  return sub_268BD70F0(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_268BD71E8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_47_0();
  v2 = sub_268C159EC();
  OUTLINED_FUNCTION_28(v2);
  v3 = OUTLINED_FUNCTION_5_1();

  return a2(v3);
}

uint64_t sub_268BD72A0(uint64_t a1)
{
  OUTLINED_FUNCTION_47_0();
  v1 = sub_268C159EC();
  OUTLINED_FUNCTION_28(v1);
  v2 = OUTLINED_FUNCTION_5_1();

  return sub_268BD7280(v2, v3, v4, v5, v6, v7, v8);
}

unint64_t sub_268BD7430()
{
  result = qword_2802CE120;
  if (!qword_2802CE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE120);
  }

  return result;
}

uint64_t sub_268BD7510()
{

  OUTLINED_FUNCTION_88();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_268BD7598()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268BD7BF0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

unint64_t sub_268BD7C38()
{
  result = qword_2802CE128;
  if (!qword_2802CE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE128);
  }

  return result;
}

void sub_268BD7C8C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    v5 = a1;

    a1 = v5;
  }
}

uint64_t sub_268BD7CE4(uint64_t a1)
{
  OUTLINED_FUNCTION_47_0();
  v1 = sub_268C159EC();
  OUTLINED_FUNCTION_28(v1);
  v2 = OUTLINED_FUNCTION_42_0();

  return sub_268BD73C4(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_268BD7D68(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = a4 & 1;
  return v5(v7);
}

uint64_t objectdestroy_86Tm()
{
  sub_268C159EC();
  OUTLINED_FUNCTION_46_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_268BD7E50(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_47_0();
  v2 = sub_268C159EC();
  OUTLINED_FUNCTION_28(v2);
  v3 = OUTLINED_FUNCTION_42_0();

  return a2(v3);
}

uint64_t sub_268BD7F14(uint64_t a1)
{
  OUTLINED_FUNCTION_47_0();
  v1 = sub_268C159EC();
  OUTLINED_FUNCTION_28(v1);
  v2 = OUTLINED_FUNCTION_5_1();

  return sub_268BD7384(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_268BD7F98(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t objectdestroy_157Tm()
{

  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_268BD8028(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  v5 = BYTE4(a1) & 1;
  return v2(&v4);
}

uint64_t sub_268BD8090(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t objectdestroy_37Tm(void (*a1)(void))
{

  a1(*(v1 + 32));
  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_268BD8138(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_46_0();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_268BD818C(id a1, char a2)
{
  if (a2)
  {
    sub_268BD8198(a1);
  }

  else
  {
  }
}

void sub_268BD8198(id a1)
{
  if (a1 >= 5)
  {
  }
}

uint64_t objectdestroy_256Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_268BD8218()
{
  result = qword_2802CE180;
  if (!qword_2802CE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE180);
  }

  return result;
}

_OWORD *sub_268BD8290(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_268BD82A0()
{

  OUTLINED_FUNCTION_56();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t objectdestroy_2Tm()
{
  sub_268C159EC();
  OUTLINED_FUNCTION_46_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 24, v2 | 7);
}

uint64_t sub_268BD8390(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_47_0();
  v2 = sub_268C159EC();
  OUTLINED_FUNCTION_28(v2);
  v3 = OUTLINED_FUNCTION_5_1();

  return a2(v3);
}

uint64_t sub_268BD8420()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_268BD84A0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

uint64_t sub_268BD84E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_7_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = a2;
  *(a1 + 32) = 2;
  return a1 + v3;
}

void OUTLINED_FUNCTION_11_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, ...)
{

  sub_268BD22C0();
}

uint64_t OUTLINED_FUNCTION_15_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = v2;
  *(result + 24) = a2;
  *(result + 32) = 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = v3;
  *(a1 + 24) = a2;
  *(a1 + 32) = 2;
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_25_3(uint64_t a1)
{
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5 & 1;
  *(a1 + 40) = v1;
  *(a1 + 48) = v2;
}

double OUTLINED_FUNCTION_29_2(float a1)
{
  *v1 = a1;
  result = v2;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[12] = a2;
  v3[13] = v2;
  v5 = *(v4 - 152);
  v3[8] = result;
  v3[9] = v5;
  v3[17] = a2;
  v3[18] = v2;
  v3[14] = *(v4 - 144);
  return result;
}

void OUTLINED_FUNCTION_37_0()
{

  JUMPOUT(0x26D628010);
}

void OUTLINED_FUNCTION_39_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_41_0()
{

  JUMPOUT(0x26D628010);
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_45_0()
{

  JUMPOUT(0x26D628010);
}

uint64_t OUTLINED_FUNCTION_49(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = 32;
  *(a1 + 32) = 2;
  return a1 + v2;
}

void OUTLINED_FUNCTION_68()
{

  sub_268BCF444();
}

void OUTLINED_FUNCTION_69(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_70(void *a1, uint64_t a2, os_log_type_t a3)
{
  v7 = *(v5 - 128);

  _os_log_impl(a1, v3, a3, v7, v4, 0xCu);
}

BOOL OUTLINED_FUNCTION_77(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_78(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return sub_268C159BC(a1, a2, a3, a4, 32, 2, v8, a8);
}

BOOL OUTLINED_FUNCTION_95(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t OUTLINED_FUNCTION_96(uint64_t a1, unint64_t a2)
{

  return sub_268BB3D28(a1, a2, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_106()
{
}

unint64_t OUTLINED_FUNCTION_107()
{

  return sub_268BB99F0(v0, 1);
}

uint64_t OUTLINED_FUNCTION_108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_268C159CC();
}

uint64_t OUTLINED_FUNCTION_109()
{
}

uint64_t OUTLINED_FUNCTION_110()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_111()
{
}

SiriPlaybackControlSupport::HomeError_optional __swiftcall HomeError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue + 24;
  if ((rawValue - 1000) >= 7)
  {
    v2 = 7;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_268BD8F64()
{
  result = qword_2802CE1B8;
  if (!qword_2802CE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE1B8);
  }

  return result;
}

uint64_t sub_268BD8FD8@<X0>(uint64_t *a1@<X8>)
{
  result = HomeError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_268BD9004(uint64_t a1, uint64_t a2)
{
  v4 = sub_268BD91F0();
  v5 = sub_268BD9244();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for HomeError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HomeError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268BD91B8);
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

unint64_t sub_268BD91F0()
{
  result = qword_2802CE1C0;
  if (!qword_2802CE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE1C0);
  }

  return result;
}

unint64_t sub_268BD9244()
{
  result = qword_2802CE1C8;
  if (!qword_2802CE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE1C8);
  }

  return result;
}

void *sub_268BD9298()
{
  result = sub_268C15B7C();
  off_2802CE1D0 = result;
  return result;
}

SiriPlaybackControlSupport::AccessoryCategory_optional __swiftcall AccessoryCategory.init(accessoryType:)(Swift::String accessoryType)
{
  object = accessoryType._object;
  countAndFlagsBits = accessoryType._countAndFlagsBits;
  v4 = v1;
  v5 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDB80 != -1)
  {
    swift_once();
  }

  v11 = off_2802CE1D0;
  if (*(off_2802CE1D0 + 2) && (v12 = sub_268BD99A0(countAndFlagsBits, object), (v13 & 1) != 0))
  {
    v14 = v12;

    v17 = 0;
    v18 = *(v11[7] + 8 * v14);
  }

  else
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v5, qword_2802D2F10);
    (*(v7 + 16))(v10, v19, v5);

    v20 = sub_268C159FC();
    v21 = sub_268C15DEC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      *v22 = 136446210;
      v24 = sub_268BB3D28(countAndFlagsBits, object, &v26);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_268BAD000, v20, v21, "Could not map accessory type %{public}s to a AccessoryCategory. Returning nil", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x26D628010](v23, -1, -1);
      MEMORY[0x26D628010](v22, -1, -1);
    }

    else
    {
    }

    v15 = (*(v7 + 8))(v10, v5);
    v18 = 0;
    v17 = 1;
  }

  *v4 = v18;
  *(v4 + 8) = v17;
  result.value.rawValue = v15;
  result.is_nil = v16;
  return result;
}

void *sub_268BD9588()
{
  sub_268BDAD6C();
  result = sub_268C15B7C();
  off_2802CE1D8 = result;
  return result;
}

uint64_t static AccessoryCategory.keys.getter()
{
  if (qword_2802CDB88 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_2802CDB88);
  }
}

unint64_t AccessoryCategory.description.getter()
{
  v1 = *v0;
  v21 = MEMORY[0x277D84FA0];
  if (qword_2802CDB88 != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_0_1(&qword_2802CDB88);
  }

  v2 = off_2802CE1D8;
  v3 = off_2802CE1D8 + 64;
  v4 = 1 << *(off_2802CE1D8 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(off_2802CE1D8 + 8);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_10:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    if ((*(v2[6] + 8 * v11) & ~v1) == 0)
    {
      v12 = (v2[7] + 16 * v11);
      v14 = *v12;
      v13 = v12[1];

      sub_268BDA100(&v19, v14, v13);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *&v3[8 * v9];
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_268C1606C();

  v19 = 0xD000000000000014;
  v20 = 0x8000000268C1C530;
  if (*(v21 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE1E0, &qword_268C17B10);
    sub_268BDA24C();
    sub_268BB9A64();
    v15 = sub_268C15CDC();
    v17 = v16;
  }

  else
  {

    v17 = 0xE300000000000000;
    v15 = 7104878;
  }

  MEMORY[0x26D627230](v15, v17);

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return v19;
}

SiriPlaybackControlSupport::AccessoryCategory sub_268BD9928@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = AccessoryCategory.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_268BD9968@<X0>(uint64_t *a1@<X8>)
{
  result = AccessoryCategory.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_268BD99A0(uint64_t a1, uint64_t a2)
{
  sub_268C1624C();
  sub_268C15C3C();
  v4 = sub_268C1626C();

  return sub_268BD9CE8(a1, a2, v4);
}

unint64_t sub_268BD9A18()
{
  OUTLINED_FUNCTION_2_3();
  sub_268C157BC();
  v1 = MEMORY[0x277D5EA60];
  sub_268BDAE70(&qword_2802CE218, MEMORY[0x277D5EA60], MEMORY[0x277D5EA68]);
  v2 = sub_268C15B8C();
  return sub_268BD9E60(v0, v2, MEMORY[0x277D5EA60], &qword_2802CE220, v1, MEMORY[0x277D5EA70]);
}

unint64_t sub_268BD9AE0(uint64_t a1)
{
  v2 = sub_268C15FFC();

  return sub_268BD9D9C(a1, v2);
}

unint64_t sub_268BD9B24()
{
  OUTLINED_FUNCTION_2_3();
  sub_268C157DC();
  v1 = MEMORY[0x277D5EC70];
  sub_268BDAE70(&qword_2802CE228, MEMORY[0x277D5EC70], MEMORY[0x277D5EC78]);
  v2 = sub_268C15B8C();
  return sub_268BD9E60(v0, v2, MEMORY[0x277D5EC70], &qword_2802CE230, v1, MEMORY[0x277D5EC80]);
}

unint64_t sub_268BD9BEC(uint64_t a1)
{
  v2 = sub_268C1623C();

  return sub_268BD9FEC(a1, v2);
}

unint64_t sub_268BD9C34(uint64_t a1)
{
  OUTLINED_FUNCTION_3_4(a1);
  MEMORY[0x26D627820](v1);
  v2 = sub_268C1626C();
  return sub_268BD9FEC(v1, v2);
}

unint64_t sub_268BD9C8C(uint64_t a1)
{
  OUTLINED_FUNCTION_3_4(a1);
  sub_268BF8744(__src, v1);
  v2 = sub_268C1626C();

  return sub_268BDA04C(v1, v2);
}

unint64_t sub_268BD9CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_268C1618C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_268BD9D9C(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_268BDADC0(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D6275D0](v8, a1);
    sub_268BDAE1C(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_268BD9E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v21 = a4;
  v19 = a1;
  v8 = a3(0);
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v24 = v6 + 64;
  v20 = v6;
  v15 = ~(-1 << *(v6 + 32));
  for (i = a2 & v15; ((1 << i) & *(v24 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v15)
  {
    (*(v10 + 16))(v14, *(v20 + 48) + *(v10 + 72) * i, v8, v12);
    sub_268BDAE70(v21, v22, v23);
    v17 = sub_268C15BDC();
    (*(v10 + 8))(v14, v8);
    if (v17)
    {
      break;
    }
  }

  return i;
}