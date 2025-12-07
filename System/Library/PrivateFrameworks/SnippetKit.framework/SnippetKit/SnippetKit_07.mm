void sub_26A166AA8(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_16_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_60_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15_9();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036DBB8, &qword_26A42A000);
    v11 = OUTLINED_FUNCTION_74_2();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_44_7();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[32 * v9] <= v13)
    {
      memmove(v13, v14, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A166B88(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_16_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_60_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15_9();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036DB40, &qword_26A429F88);
    v11 = OUTLINED_FUNCTION_74_2();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_83_1();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v9);
  }
}

void sub_26A1686F4()
{
  OUTLINED_FUNCTION_79_3();
  if (v5)
  {
    OUTLINED_FUNCTION_16_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_60_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15_9();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    v11 = OUTLINED_FUNCTION_74_2();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_44_7();
    v11[2] = v9;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v11 != v0 || &v0[4 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_22_1();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_39_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_22_1();
    swift_arrayInitWithCopy();
  }
}

void sub_26A1688A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v10 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_16_8();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_60_3();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15_9();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (v10)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_26A168AAC(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A16899C(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  v5 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_16_8();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_60_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15_9();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC18, &qword_26A426678);
    v11 = OUTLINED_FUNCTION_74_2();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_83_1();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26A168AAC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_12(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_39_7();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_39_7();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_26A168C84(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_14(a3, result);
  }

  return result;
}

char *sub_26A168E24(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_14(a3, result);
  }

  return result;
}

char *sub_26A168E5C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[56 * a2] <= __dst)
  {
    return memmove(__dst, __src, 56 * a2);
  }

  return __src;
}

char *sub_26A168ED4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_14(a3, result);
  }

  return result;
}

uint64_t sub_26A168F7C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A168FD0()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A169024(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A16907C()
{
  OUTLINED_FUNCTION_131_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_175();
  v4(v3);
  return v0;
}

uint64_t sub_26A1690D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26A1691A8(uint64_t a1)
{
  sub_26A169258();
  if (v1 <= 0x3F)
  {
    sub_26A1692B8(319);
    if (v2 <= 0x3F)
    {
      sub_26A169340(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ImageElement.Contact(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_26A169258()
{
  if (!qword_28036D9F8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28036D9F8);
    }
  }
}

void sub_26A1692B8(uint64_t a1)
{
  if (!qword_28036DA00)
  {
    sub_26A424614();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28036D9A0, &qword_26A429CE0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_28036DA00);
    }
  }
}

void sub_26A169340(uint64_t a1)
{
  if (!qword_28036DA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28036CBA0, &qword_26A4265B0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28036DA08);
    }
  }
}

void sub_26A1693B8(uint64_t a1)
{
  sub_26A169258();
  if (v1 <= 0x3F)
  {
    sub_26A169340(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void OUTLINED_FUNCTION_54_4()
{

  JUMPOUT(0x26D65BA70);
}

void OUTLINED_FUNCTION_55_4()
{

  JUMPOUT(0x26D65BA70);
}

uint64_t OUTLINED_FUNCTION_56_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_65_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_66_0(uint64_t a1)
{
  *(v1 - 96) = 0x22286C7275;
  *(v1 - 88) = 0xE500000000000000;

  return sub_26A4245E4();
}

void OUTLINED_FUNCTION_67_2()
{

  JUMPOUT(0x26D65BA70);
}

uint64_t OUTLINED_FUNCTION_74_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_86_2(uint64_t a1)
{

  return sub_26A425354();
}

uint64_t OUTLINED_FUNCTION_87_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_88_2(uint64_t a1, uint64_t a2)
{

  return sub_26A4249C4();
}

void OUTLINED_FUNCTION_89_0()
{

  JUMPOUT(0x26D65BA70);
}

void OUTLINED_FUNCTION_90_1()
{

  JUMPOUT(0x26D65BA70);
}

uint64_t static UpdateResponseCommand<>.playerButton(identifier:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *(a4 + 24) = &type metadata for UpdatePlayerButton;
  *(a4 + 32) = &protocol witness table for UpdatePlayerButton;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
}

uint64_t sub_26A169C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A424EA4();
  sub_26A16A060(a1, &v14, v12);

  sub_26A16A0C4(v12);
  if (v15)
  {
    if (swift_dynamicCast())
    {
      sub_26A4243D4();
      swift_allocObject();
      sub_26A4243C4();
      sub_26A16AA20();
      sub_26A4243B4();
      sub_26A0E4784(0xD00000000000001ELL, 0x800000026A447980);

      if (!v2)
      {
        v6 = v12[1];
        v7 = v13;
        *a2 = v12[0];
        *(a2 + 8) = v6;
        *(a2 + 16) = v7;
      }

      return result;
    }
  }

  else
  {
    sub_26A16A118(&v14);
  }

  if (qword_28036C5A0 != -1)
  {
    swift_once();
  }

  v8 = sub_26A424AE4();
  __swift_project_value_buffer(v8, qword_2803A8950);
  v9 = sub_26A424AD4();
  v10 = sub_26A424E04();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26A0B8000, v9, v10, "UpdateResponseCommand modelData init failed", v11, 2u);
    MEMORY[0x26D65C950](v11, -1, -1);
  }

  sub_26A16A824();
  swift_allocError();
  return swift_willThrow();
}

uint64_t UpdateResponseCommand<>.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A424EA4();
  sub_26A16A060(a1, &v11, v10);

  sub_26A16A0C4(v10);
  if (v12)
  {
    if (swift_dynamicCast())
    {
      sub_26A4243D4();
      swift_allocObject();
      sub_26A4243C4();
      sub_26A4243B4();
      sub_26A0E4784(0xD00000000000001ELL, 0x800000026A447980);
    }
  }

  else
  {
    sub_26A16A118(&v11);
  }

  if (qword_28036C5A0 != -1)
  {
    swift_once();
  }

  v6 = sub_26A424AE4();
  __swift_project_value_buffer(v6, qword_2803A8950);
  v7 = sub_26A424AD4();
  v8 = sub_26A424E04();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26A0B8000, v7, v8, "UpdateResponseCommand modelData init failed", v9, 2u);
    MEMORY[0x26D65C950](v9, -1, -1);
  }

  sub_26A16A824();
  swift_allocError();
  return swift_willThrow();
}

double sub_26A16A060@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_26A3D53E4(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_26A0E93D4(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_26A16A118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E620, &qword_26A42AA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A16A180@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_26A3D5428(a3, a4), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a1 + 56);
    v10 = type metadata accessor for ComponentGroup(0);
    sub_26A16AA74(v9 + *(*(v10 - 8) + 72) * v8, a2);
    v11 = a2;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for ComponentGroup(0);
    v11 = a2;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

void *sub_26A16A230(void *a1, void *a2, char a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = sub_26A424404();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = a1;
  v22[2] = a2;
  v23 = a3 & 1;
  sub_26A424444();
  sub_26A0E6E84();
  sub_26A1F5544(v10);
  (*(v8 + 8))(v10, v7);
  sub_26A16A9CC();
  v11 = sub_26A424424();
  if (!v3)
  {
    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E630, qword_26A42AA68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26A426410;
    *(inited + 32) = 0xD00000000000001ELL;
    *(inited + 40) = 0x800000026A447980;
    *(inited + 48) = v13;
    *(inited + 56) = v14;
    sub_26A0E45C0(v13, v14);
    sub_26A424B24();
    v16 = objc_opt_self();
    v17 = sub_26A424B04();

    v22[0] = 0;
    v18 = [v16 dataWithPropertyList:v17 format:100 options:0 error:v22];

    v19 = v22[0];
    if (v18)
    {
      v7 = sub_26A4246D4();
      sub_26A0E4784(v13, v14);

      return v7;
    }

    v7 = v19;
    sub_26A4245B4();

    swift_willThrow();
    sub_26A0E4784(v13, v14);
  }

  return v7;
}

void *UpdateResponseCommand<>.serializeData()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[9] = *MEMORY[0x277D85DE8];
  v6 = sub_26A424404();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A424444();
  sub_26A0E6E84();
  sub_26A1F5544(v9);
  (*(v7 + 8))(v9, v6);
  v10 = sub_26A424424();
  if (!v4)
  {
    v12 = v10;
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E630, qword_26A42AA68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26A426410;
    *(inited + 32) = 0xD00000000000001ELL;
    *(inited + 40) = 0x800000026A447980;
    *(inited + 48) = v12;
    *(inited + 56) = v13;
    sub_26A0E45C0(v12, v13);
    OUTLINED_FUNCTION_0_22();
    sub_26A424B24();
    v15 = objc_opt_self();
    OUTLINED_FUNCTION_0_22();
    v16 = sub_26A424B04();

    v20[0] = 0;
    v17 = [v15 dataWithPropertyList:v16 format:100 options:0 error:v20];

    v18 = v20[0];
    if (v17)
    {
      a1 = sub_26A4246D4();
      sub_26A0E4784(v12, v13);

      return a1;
    }

    a1 = v18;
    sub_26A4245B4();

    swift_willThrow();
    sub_26A0E4784(v12, v13);
  }

  return a1;
}

uint64_t sub_26A16A794()
{
  sub_26A425504();
  MEMORY[0x26D65C340](0);
  return sub_26A425554();
}

unint64_t sub_26A16A824()
{
  result = qword_28036E628;
  if (!qword_28036E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036E628);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UpdateResponseCommandFailure(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_26A16A978()
{
  result = qword_28036E638;
  if (!qword_28036E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036E638);
  }

  return result;
}

unint64_t sub_26A16A9CC()
{
  result = qword_28036E640;
  if (!qword_28036E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036E640);
  }

  return result;
}

unint64_t sub_26A16AA20()
{
  result = qword_28036E648;
  if (!qword_28036E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036E648);
  }

  return result;
}

uint64_t sub_26A16AA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A16AB24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _ProtoColor.hexValue.getter()
{
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_17_6();
  if (v4)
  {
    sub_26A13440C();
    return OUTLINED_FUNCTION_21_9();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_26A16B104();
    return OUTLINED_FUNCTION_21_9();
  }

  OUTLINED_FUNCTION_246();
  return sub_26A16CE90();
}

uint64_t sub_26A16ACE4(uint64_t a1)
{
  v1 = type metadata accessor for _ProtoColor.HexValue(0);
  MEMORY[0x28223BE20](v1 - 8);
  sub_26A16B8F8();
  return _ProtoColor.hexValue.setter();
}

uint64_t _ProtoColor.hexValue.setter()
{
  OUTLINED_FUNCTION_14_4();
  sub_26A13440C();
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_175();
  sub_26A16CE90();
  v0 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  OUTLINED_FUNCTION_246();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v0);
}

void (*_ProtoColor.hexValue.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  type metadata accessor for _ProtoColor.HexValue(0);
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 64);
  v3[2] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[3] = v9;
  sub_26A10FD9C();
  v10 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  v3[4] = v10;
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_157();
      sub_26A16CE90();
      return sub_26A16AFBC;
    }

    sub_26A16B104();
  }

  *v9 = 0;
  v9[1] = 0xE000000000000000;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  return sub_26A16AFBC;
}

void sub_26A16AFBC(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  v4 = *(*a1 + 4);
  v5 = *(*a1 + 1);
  v6 = *(*a1 + 2);
  if (a2)
  {
    sub_26A16B8F8();
    sub_26A13440C();
    sub_26A16CE90();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
    sub_26A16B104();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_3_15();
    sub_26A16CE90();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v4);
  }

  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_26A16B104()
{
  OUTLINED_FUNCTION_14_4();
  v1(0);
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t _ProtoColor.name.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_12_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_17_6();
  if (v7)
  {
    result = sub_26A13440C();
LABEL_7:
    v9 = 0;
    v10 = 1;
    goto LABEL_8;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    result = sub_26A16B104();
    goto LABEL_7;
  }

  v9 = *v1;
  v10 = *(v1 + 8);
LABEL_8:
  *a1 = v9;
  *(a1 + 8) = v10;
  return result;
}

uint64_t sub_26A16B240@<X0>(uint64_t a1@<X8>)
{
  result = _ProtoColor.name.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_26A16B284(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return _ProtoColor.name.setter(&v3);
}

uint64_t _ProtoColor.name.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_26A13440C();
  *v1 = v2;
  *(v1 + 8) = v3;
  v4 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  OUTLINED_FUNCTION_246();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
}

void (*_ProtoColor.name.modify(void *a1))(uint64_t **a1)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v4[3] = v7;
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  v4[4] = v8;
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_26A13440C();
LABEL_6:
    v9 = 0;
    v10 = 1;
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_26A16B104();
    goto LABEL_6;
  }

  v9 = *v7;
  v10 = v7[8];
LABEL_7:
  *v4 = v9;
  *(v4 + 8) = v10;
  return sub_26A16B48C;
}

void sub_26A16B48C(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = (*a1)[2];
  v5 = **a1;
  v6 = *(*a1 + 8);
  sub_26A13440C();
  *v4 = v5;
  *(v4 + 8) = v6;
  OUTLINED_FUNCTION_157();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
  free(v3);

  free(v1);
}

void (*_ProtoColor.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  type metadata accessor for _ProtoColor(0);
  return nullsub_1;
}

BOOL static _ProtoColor.OneOf_Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoColor.HexValue(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_10_14();
  type metadata accessor for _ProtoColor.OneOf_Value(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v18 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E6B0, &qword_26A42AB70);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v14 = (&v18 + *(v13 + 56) - v12);
  sub_26A16B8F8();
  sub_26A16B8F8();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_26A16B8F8();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26A16CE90();
      v16 = *v9 == *v2 && v9[1] == v2[1];
      if (v16 || (sub_26A425354() & 1) != 0)
      {
        sub_26A424794();
        OUTLINED_FUNCTION_1_15();
        sub_26A16CF2C();
        if (sub_26A424B64())
        {
          sub_26A16B104();
          OUTLINED_FUNCTION_157();
          sub_26A16B104();
          OUTLINED_FUNCTION_0_23();
          sub_26A16B104();
          return 1;
        }
      }

      sub_26A16B104();
      OUTLINED_FUNCTION_157();
      sub_26A16B104();
      OUTLINED_FUNCTION_0_23();
      sub_26A16B104();
      return 0;
    }

    sub_26A16B104();
LABEL_6:
    sub_26A13440C();
    return 0;
  }

  sub_26A16B8F8();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_6;
  }

  v15 = sub_26A257DA8(*v6, v6[8], *v14);
  OUTLINED_FUNCTION_0_23();
  sub_26A16B104();
  return v15;
}

uint64_t sub_26A16B8F8()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t static _ProtoColor.HexValue.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for _ProtoColor.HexValue(0);
  sub_26A424794();
  OUTLINED_FUNCTION_1_15();
  sub_26A16CF2C();
  return OUTLINED_FUNCTION_14_7() & 1;
}

unint64_t _ProtoColor.Name.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x13;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_26A16BA30@<X0>(uint64_t *a1@<X8>)
{
  result = _ProtoColor.Name.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A16BA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A16E290();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t _ProtoColor.HexValue.rgba.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_26A16BB58@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_26A16BBEC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

void (*_ProtoColor.HexValue.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  type metadata accessor for _ProtoColor.HexValue(0);
  return nullsub_1;
}

uint64_t _ProtoColor.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  type metadata accessor for _ProtoColor(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t static _ProtoColor.Name.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_28036E650 = a1;
}

uint64_t (*static _ProtoColor.Name.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26A16BDE0@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoColor.Name.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A16BE2C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036E658);
  __swift_project_value_buffer(v0, qword_28036E658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "hex_value";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoColor.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_246();
      sub_26A16C598(v7, v8, v2, v1);
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_175();
      sub_26A16C0A0(v5, v6, v2, v1);
    }
  }

  return result;
}

uint64_t sub_26A16C0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoColor.HexValue(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E720, &qword_26A42B068);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A16CE90();
    sub_26A16CE90();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A16B104();
    }

    else
    {
      sub_26A13440C();
      sub_26A16CE90();
      sub_26A16CE90();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_26A16CF2C();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A16CE90();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A16CE90();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A16C598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v14 = 0;
  v15 = 256;
  sub_26A16E290();
  result = sub_26A424884();
  if (!v4 && (v15 & 0x100) == 0)
  {
    v16 = v14;
    v13 = v15;
    sub_26A10FD9C();
    v10 = type metadata accessor for _ProtoColor.OneOf_Value(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v10);
    sub_26A13440C();
    if (EnumTagSinglePayload != 1)
    {
      sub_26A424844();
    }

    sub_26A13440C();
    *a2 = v16;
    *(a2 + 8) = v13 & 1;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
  }

  return result;
}

uint64_t _ProtoColor.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_10();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - v3;
  sub_26A10FD9C();
  v5 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    goto LABEL_2;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = OUTLINED_FUNCTION_13_10();
    result = sub_26A16CAA4(v7, v8, v9, v10);
    if (!v0)
    {
LABEL_2:
      type metadata accessor for _ProtoColor(0);
      return sub_26A424774();
    }
  }

  else
  {
    v11 = OUTLINED_FUNCTION_13_10();
    sub_26A16C890(v11, v12, v13, v14);
    OUTLINED_FUNCTION_0_23();
    result = sub_26A16B104();
    if (!v0)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_26A16C890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoColor.HexValue(0);
  MEMORY[0x28223BE20](v7);
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26A16CE90();
      sub_26A16CF2C();
      sub_26A424A84();
      return sub_26A16B104();
    }

    result = sub_26A16B104();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A16CAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_26A10FD9C();
  v7 = type metadata accessor for _ProtoColor.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = v6[8];
      v10 = *v6;
      v11 = v8;
      sub_26A16E290();
      return sub_26A4249F4();
    }

    result = sub_26A16B104();
  }

  __break(1u);
  return result;
}

uint64_t static _ProtoColor.== infix(_:_:)()
{
  type metadata accessor for _ProtoColor.OneOf_Value(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_10_14();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C920, &unk_26A425ED0);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v11 = *(v10 + 56);
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_28(v9);
  if (v12)
  {
    OUTLINED_FUNCTION_28(&v9[v11]);
    if (v12)
    {
      sub_26A13440C();
LABEL_12:
      type metadata accessor for _ProtoColor(0);
      sub_26A424794();
      OUTLINED_FUNCTION_1_15();
      sub_26A16CF2C();
      v13 = OUTLINED_FUNCTION_14_7();
      return v13 & 1;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_12_2();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_28(&v9[v11]);
  if (v12)
  {
    sub_26A16B104();
LABEL_9:
    sub_26A13440C();
    goto LABEL_10;
  }

  sub_26A16CE90();
  v14 = static _ProtoColor.OneOf_Value.== infix(_:_:)(v5, v0);
  sub_26A16B104();
  sub_26A16B104();
  sub_26A13440C();
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_10:
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_26A16CE90()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

unint64_t sub_26A16CF2C()
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

uint64_t sub_26A16CFD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A16CF2C();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A16D050(uint64_t a1)
{
  v2 = sub_26A16CF2C();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A16D0C0(uint64_t a1, uint64_t a2)
{
  sub_26A16CF2C();

  return sub_26A4249B4();
}

uint64_t sub_26A16D140()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036E670);
  __swift_project_value_buffer(v0, qword_28036E670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_26A42AB60;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 0;
  *v4 = "DEFAULT";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v44 + v3 + v2 + v1[14];
  *(v44 + v3 + v2) = 1;
  *v8 = "CLEAR";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v44 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "BLACK";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v44 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "WHITE";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v44 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "GRAY";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v44 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "RED";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = (v44 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "GREEN";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  v19 = (v44 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "BLUE";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v7();
  v21 = (v44 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "ORANGE";
  *(v22 + 1) = 6;
  v22[16] = 2;
  v7();
  v23 = (v44 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "YELLOW";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v7();
  v25 = (v44 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "PINK";
  *(v26 + 1) = 4;
  v26[16] = 2;
  v7();
  v27 = (v44 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "PURPLE";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v7();
  v29 = (v44 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "PRIMARY";
  *(v30 + 1) = 7;
  v30[16] = 2;
  v7();
  v31 = (v44 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "SECONDARY";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v7();
  v33 = (v44 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "BROWN";
  *(v34 + 1) = 5;
  v34[16] = 2;
  v7();
  v35 = (v44 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "CYAN";
  *(v36 + 1) = 4;
  v36[16] = 2;
  v7();
  v37 = (v44 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "INDIGO";
  *(v38 + 1) = 6;
  v38[16] = 2;
  v7();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "MINT";
  *(v40 + 1) = 4;
  v40[16] = 2;
  v7();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "TEAL";
  *(v42 + 1) = 4;
  v42[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A16D728()
{
  result = MEMORY[0x26D65BA70](0x756C61567865482ELL, 0xE900000000000065);
  qword_28036E688 = 0x5574657070696E53;
  unk_28036E690 = 0xEF726F6C6F432E49;
  return result;
}

uint64_t static _ProtoColor.HexValue.protoMessageName.getter()
{
  if (qword_28036C068 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_175();
}

uint64_t sub_26A16D804()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036E698);
  __swift_project_value_buffer(v0, qword_28036E698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26A426410;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "rgba";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_26A424AA4();
}

uint64_t _ProtoColor.HexValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_26A424924();
    }
  }

  return result;
}

uint64_t _ProtoColor.HexValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_10();
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_26A424A64(), !v1))
  {
    type metadata accessor for _ProtoColor.HexValue(0);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A16DADC(uint64_t (*a1)(void))
{
  sub_26A425504();
  a1(0);
  sub_26A16CF2C();
  sub_26A424B44();
  return sub_26A425554();
}

unint64_t sub_26A16DB6C()
{
  result = qword_28036E6C0;
  if (!qword_28036E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036E6C0);
  }

  return result;
}

unint64_t sub_26A16DBC4()
{
  result = qword_28036E6C8;
  if (!qword_28036E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036E6C8);
  }

  return result;
}

unint64_t sub_26A16DC1C()
{
  result = qword_28036E6D0;
  if (!qword_28036E6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28036E6D8, &qword_26A42AC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036E6D0);
  }

  return result;
}

uint64_t sub_26A16DE28(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A16CF2C();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A16DF38(uint64_t a1)
{
  v2 = sub_26A16CF2C();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A16DFF0(uint64_t a1, uint64_t a2)
{
  sub_26A16CF2C();

  return sub_26A4249B4();
}

void sub_26A16E098(uint64_t a1)
{
  sub_26A16E11C(319);
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A16E11C(uint64_t a1)
{
  if (!qword_28157B700)
  {
    type metadata accessor for _ProtoColor.OneOf_Value(255);
    v1 = sub_26A424E44();
    if (!v2)
    {
      atomic_store(v1, &qword_28157B700);
    }
  }
}

uint64_t sub_26A16E174(uint64_t a1)
{
  result = type metadata accessor for _ProtoColor.HexValue(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A16E214(uint64_t a1)
{
  result = sub_26A424794();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26A16E290()
{
  result = qword_28036E718;
  if (!qword_28036E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036E718);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_7()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_21_9()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  type metadata accessor for _ProtoColor.HexValue(0);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoSummaryItem_Player.player.getter()
{
  v1 = type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_142(*(v0 + *(v1 + 20)) + 16, v3);
}

uint64_t _ProtoSummaryItem_Player.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_79_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Player.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_79_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Player.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_79_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Player.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_79_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Player.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_79_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Player.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_79_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Player.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_79_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Player.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_79_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Player.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_79_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Player.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_79_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A16EC38(uint64_t (*a1)(void), void *a2)
{
  v4 = a1(0);
  OUTLINED_FUNCTION_142(*(v2 + *(v4 + 20)) + *a2, v6);

  return OUTLINED_FUNCTION_246();
}

uint64_t _ProtoSummaryItem_Player.player.setter()
{
  v3 = OUTLINED_FUNCTION_110();
  v4 = type metadata accessor for _ProtoSummaryItem_Player(v3);
  v5 = OUTLINED_FUNCTION_187_1(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1B7690();
    OUTLINED_FUNCTION_52_3(v7);
  }

  OUTLINED_FUNCTION_26_10(v6 + 16, v9);
  *(v6 + 16) = v0;
}

uint64_t _ProtoSummaryItem_Player.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Player(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1B7690();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Player.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Player(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1B7690();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Player.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Player(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1B7690();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Player.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Player(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1B7690();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Player.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Player(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1B7690();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Player.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Player(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1B7690();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t sub_26A16F2E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t), void *a6)
{
  v10 = v6;
  v13 = *(a3(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v6 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_5_3();
    v15 = a5(v16);
    *(v10 + v13) = v15;
  }

  v17 = (v15 + *a6);
  OUTLINED_FUNCTION_26_10(v17, v19);
  *v17 = a1;
  v17[1] = a2;
}

uint64_t _ProtoSummaryItem_Player.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_79_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Switch.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_72_2(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Switch.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_72_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Switch.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_72_2(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Switch.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_72_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Switch.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_72_2(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Switch.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_72_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Switch.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_72_2(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Switch.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_72_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Switch.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_72_2(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Switch.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_72_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A16FBB0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v8 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_141_0();
  a1(0);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_142(v3 + *a2, v12);
  sub_26A10FD9C();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_23(v4);
  if (!v10)
  {
    return sub_26A1C2528();
  }

  *a3 = MEMORY[0x277D84F90];
  a3[1] = 0;
  a3[2] = 0xE000000000000000;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_23(v4);
  if (!v10)
  {
    return sub_26A0E48F0(v4, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Switch.switch.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Switch(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A1BAEFC();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoSwitch(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Switch.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Switch(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A1BAEFC();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Switch.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Switch(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A1BAEFC();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Switch.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Switch(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A1BAEFC();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Switch.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Switch(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A1BAEFC();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Switch.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Switch(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A1BAEFC();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Switch.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Switch(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A1BAEFC();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Switch.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_72_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.text6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasText7.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text7.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasText8.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text8.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasText9.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text9.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasText10.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text10.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasThumbnail1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.thumbnail1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasThumbnail2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.thumbnail2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_45_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Pair.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_143_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.text6.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_143_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_143_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_143_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_143_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_143_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.text7.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_143_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.text8.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_143_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.text9.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_143_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.text10.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_143_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.thumbnail1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_143_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.thumbnail2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_143_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_143_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_Pair.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Pair.hasText6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_45_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_PairNumberV2.number1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_59_6(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_PairNumberV2.number2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_59_6(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_PairNumberV2.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_59_6(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_59_6(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_PairNumberV2.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_59_6(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_59_6(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_PairNumberV2.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_59_6(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_59_6(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_PairNumberV2.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_59_6(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_59_6(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_PairNumberV2.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_59_6(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_59_6(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_PairNumberV2.hasThumbnail1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_59_6(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_PairNumberV2.thumbnail1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_59_6(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSummaryItem_PairNumberV2.hasThumbnail2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_59_6(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_PairNumberV2.thumbnail2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_59_6(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSummaryItem_PairNumberV2.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_59_6(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_PairNumberV2.number1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_171_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.number2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_171_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_171_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_171_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_171_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_171_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_171_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.thumbnail1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_171_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.thumbnail2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_171_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_171_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A1ADC04();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoSummaryItem_PairNumberV2.hasNumber1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_59_6(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_Standard.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_78_2(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Standard.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_Standard.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_35_8(v10);
  OUTLINED_FUNCTION_78_2(v11);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Standard.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_78_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_Standard.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_Standard.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_78_2(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t sub_26A173E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_12_2();
  sub_26A1C257C();
  return a7(v7);
}

uint64_t _ProtoSummaryItem_Standard.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_Standard.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoMultilineTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_35_8(v10);
  OUTLINED_FUNCTION_78_2(v11);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Standard.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_78_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_Standard.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_Standard.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_78_2(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Standard.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_Standard.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoMultilineTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_35_8(v10);
  OUTLINED_FUNCTION_78_2(v11);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Standard.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_78_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_Standard.clearText3()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_Standard.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_78_2(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Standard.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_Standard.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoVisualProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_35_8(v10);
  OUTLINED_FUNCTION_78_2(v11);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Standard.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_78_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_Standard.clearThumbnail()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_Standard.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_Standard.action.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoActionProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_35_8(v10);
  OUTLINED_FUNCTION_78_2(v11);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v12)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Standard.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_78_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_Standard.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_Standard.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_78_2(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Standard.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_Standard.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_35_8(v10);
  OUTLINED_FUNCTION_78_2(v11);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Standard.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_78_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_Standard.clearText4()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Standard._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A18D9D4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A175360(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSummaryItem_Standard.componentName.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSummaryItem_Standard.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSummaryItem_Standard(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A1754B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSummaryItem_Standard.linkIdentifier.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSummaryItem_Standard.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSummaryItem_Standard(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoSummaryItem_ShortNumber.number.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_61_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_ShortNumber.number.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_180_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_ShortNumber.number.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_ShortNumber.hasNumber.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_61_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_ShortNumber.clearNumber()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_179_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_ShortNumber.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_61_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_ShortNumber.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_180_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_ShortNumber.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_ShortNumber.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_61_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_ShortNumber.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_179_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_ShortNumber.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_61_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_ShortNumber.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_180_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_ShortNumber.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_ShortNumber.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_61_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_ShortNumber.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_179_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_ShortNumber.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_61_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_ShortNumber.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_180_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_ShortNumber.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_ShortNumber.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_61_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_ShortNumber.clearText3()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_179_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_ShortNumber.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_61_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_ShortNumber.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_180_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_ShortNumber.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_ShortNumber.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_61_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_ShortNumber.clearText4()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_179_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_ShortNumber.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_61_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_ShortNumber.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_180_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_ShortNumber.text5.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_ShortNumber.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_61_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_ShortNumber.clearText5()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_179_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_ShortNumber.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_61_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSummaryItem_ShortNumber.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_180_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_ShortNumber.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoVisualProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_ShortNumber.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_61_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_ShortNumber.clearThumbnail()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_179_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_ShortNumber.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_180_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_ShortNumber.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoActionProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_ShortNumber.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_61_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_ShortNumber.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_179_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A177880(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSummaryItem_ShortNumber.componentName.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSummaryItem_ShortNumber.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSummaryItem_ShortNumber(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A1779D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSummaryItem_ShortNumber.linkIdentifier.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSummaryItem_ShortNumber.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSummaryItem_ShortNumber(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoSummaryItem_ShortNumber.text6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_61_4(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_ShortNumber.text6.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_180_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_189_1();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_ShortNumber.text6.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_27_11();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_ShortNumber.hasText6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_61_4(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_ShortNumber.clearText6()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_179_0(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A190CC8();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A177FC4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_125();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t _ProtoSummaryItem_Text.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_77_1(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Text.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Text(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Text._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A194F78();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_Text.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_35_8(v10);
  OUTLINED_FUNCTION_77_1(v11);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Text.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77_1(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_Text.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Text(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Text._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A194F78();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_Text.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_77_1(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Text.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Text(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Text._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A194F78();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_Text.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_35_8(v10);
  OUTLINED_FUNCTION_77_1(v11);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Text.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77_1(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_Text.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Text(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Text._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A194F78();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_Text.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_77_1(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Text.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Text(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Text._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A194F78();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_Text.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoMultilineTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_35_8(v10);
  OUTLINED_FUNCTION_77_1(v11);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Text.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77_1(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_Text.clearText3()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Text(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Text._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A194F78();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_Text.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_77_1(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Text.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Text(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Text._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A194F78();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_Text.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_35_8(v10);
  OUTLINED_FUNCTION_77_1(v11);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Text.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77_1(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_Text.clearText4()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Text(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Text._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A194F78();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_Text.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_77_1(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_Text.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Text(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Text._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A194F78();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_Text.text5.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_35_8(v10);
  OUTLINED_FUNCTION_77_1(v11);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Text.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77_1(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_Text.clearText5()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Text(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Text._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A194F78();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_Text.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Text(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Text._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A194F78();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_Text.action.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoActionProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_35_8(v10);
  OUTLINED_FUNCTION_77_1(v11);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v12)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_Text.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77_1(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_Text.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_Text(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    type metadata accessor for _ProtoSummaryItem_Text._StorageClass(0);
    OUTLINED_FUNCTION_100_0();
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A194F78();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A179A70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSummaryItem_Text.componentName.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSummaryItem_Text.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSummaryItem_Text(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A179BC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSummaryItem_Text.linkIdentifier.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSummaryItem_Text.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSummaryItem_Text(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoSummaryItem_LargeText.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoSummaryItem_LargeText(v5);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

void _ProtoSummaryItem_LargeText.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_35_8(v10);
  type metadata accessor for _ProtoSummaryItem_LargeText(v11);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_LargeText.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoSummaryItem_LargeText(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_LargeText.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoSummaryItem_LargeText(v5);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

void _ProtoSummaryItem_LargeText.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoMultilineTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_35_8(v10);
  type metadata accessor for _ProtoSummaryItem_LargeText(v11);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_LargeText.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoSummaryItem_LargeText(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSummaryItem_LargeText.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoSummaryItem_LargeText(v5);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

void _ProtoSummaryItem_LargeText.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoMultilineTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_35_8(v10);
  type metadata accessor for _ProtoSummaryItem_LargeText(v11);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_LargeText.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoSummaryItem_LargeText(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

void _ProtoSummaryItem_LargeText.action.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoActionProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_35_8(v10);
  type metadata accessor for _ProtoSummaryItem_LargeText(v11);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v12)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_LargeText.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  type metadata accessor for _ProtoSummaryItem_LargeText(v4);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A17AEBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSummaryItem_LargeText.componentName.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSummaryItem_LargeText.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSummaryItem_LargeText(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A17B014(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSummaryItem_LargeText.linkIdentifier.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSummaryItem_LargeText.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSummaryItem_LargeText(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoSummaryItem_DetailedText.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_64_2(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_DetailedText.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_DetailedText(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A19A508();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_DetailedText.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_DetailedText.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_64_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_DetailedText.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_DetailedText(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A19A508();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_DetailedText.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_64_2(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_DetailedText.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_DetailedText(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A19A508();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_DetailedText.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_DetailedText.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_64_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_DetailedText.clearText3()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_DetailedText(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A19A508();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_DetailedText.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_64_2(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_DetailedText.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_DetailedText(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A19A508();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_DetailedText.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_DetailedText.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_64_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_DetailedText.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_DetailedText(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A19A508();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_DetailedText.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_64_2(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_DetailedText.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_DetailedText(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A19A508();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_DetailedText.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_DetailedText.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_64_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_DetailedText.clearText4()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_DetailedText(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A19A508();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_DetailedText.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_64_2(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_DetailedText.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_DetailedText(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A19A508();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_DetailedText.text5.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_DetailedText.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_64_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_DetailedText.clearText5()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_DetailedText(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A19A508();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_DetailedText.text6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_64_2(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSummaryItem_DetailedText.text6.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_DetailedText(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A19A508();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_DetailedText.text6.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_DetailedText.hasText6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_64_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_DetailedText.clearText6()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_DetailedText(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A19A508();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_DetailedText.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_64_2(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSummaryItem_DetailedText.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_DetailedText(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A19A508();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_DetailedText.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoVisualProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_DetailedText.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_64_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_DetailedText.clearThumbnail()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_DetailedText(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A19A508();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoSummaryItem_DetailedText.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_DetailedText(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A19A508();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_189_1();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoSummaryItem_DetailedText.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoActionProperty(v7);
  OUTLINED_FUNCTION_14_8();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSummaryItem_DetailedText.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_64_2(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSummaryItem_DetailedText.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSummaryItem_DetailedText(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_5_3();
    sub_26A19A508();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A17D41C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSummaryItem_DetailedText.componentName.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSummaryItem_DetailedText.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSummaryItem_DetailedText(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A17D574(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSummaryItem_DetailedText.linkIdentifier.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSummaryItem_DetailedText.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSummaryItem_DetailedText(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

void _ProtoSummaryItem_Pair.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_19_10(v10);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSummaryItem_Pair.clearText4()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_142_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoSummaryItem_Pair.text6.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_19_10(v10);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSummaryItem_Pair.clearText6()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_142_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoSummaryItem_Pair.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_19_10(v10);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSummaryItem_Pair.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_142_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoSummaryItem_Pair.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_19_10(v10);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSummaryItem_Pair.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_142_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoSummaryItem_Pair.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_19_10(v10);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSummaryItem_Pair.clearText3()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_142_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoSummaryItem_Pair.text5.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_19_10(v10);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSummaryItem_Pair.clearText5()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_142_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoSummaryItem_Pair.text7.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_19_10(v10);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSummaryItem_Pair.clearText7()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_142_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoSummaryItem_Pair.text8.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_19_10(v10);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSummaryItem_Pair.clearText8()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_142_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoSummaryItem_Pair.text9.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_19_10(v10);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSummaryItem_Pair.clearText9()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_142_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoSummaryItem_Pair.text10.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_19_10(v10);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSummaryItem_Pair.clearText10()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_142_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoSummaryItem_Pair.thumbnail1.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoVisualProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_19_10(v10);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSummaryItem_Pair.clearThumbnail1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_142_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoSummaryItem_Pair.thumbnail2.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoVisualProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_19_10(v10);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSummaryItem_Pair.clearThumbnail2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_142_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoSummaryItem_Pair.action.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_31_1(v5);
  type metadata accessor for _ProtoActionProperty(v6);
  OUTLINED_FUNCTION_14_8();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_51_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_19_10(v10);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1C2528();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSummaryItem_Pair.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_142_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_5_3();
    sub_26A19E384();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A17F168(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSummaryItem_Pair.componentName.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSummaryItem_Pair.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSummaryItem_Pair(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A17F258(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSummaryItem_Pair.linkIdentifier.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSummaryItem_Pair.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSummaryItem_Pair(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}