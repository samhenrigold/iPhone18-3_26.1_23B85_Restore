void sub_1DF70C7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF70E410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1DF70ED9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1E12DD030](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1DF70F108()
{
  v0 = sub_1DF7112D8();
  __swift_allocate_value_buffer(v0, qword_1EE30A290);
  __swift_project_value_buffer(v0, qword_1EE30A290);
  return sub_1DF7112C8();
}

uint64_t static Logger.content.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE30A288 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF7112D8();
  v3 = __swift_project_value_buffer(v2, qword_1EE30A290);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t getEnumTagSinglePayload for HealthContentUtilities(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HealthContentUtilities(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t ExperienceContext.identifier.getter()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6570795461746164;
  }
}

uint64_t ExperienceContext.ArticleContext.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DF711358();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DF70F4D4()
{
  sub_1DF7113D8();
  sub_1DF7112F8();
  return sub_1DF7113F8();
}

uint64_t sub_1DF70F550(uint64_t a1)
{
  sub_1DF7113D8();
  sub_1DF7112F8();
  return sub_1DF7113F8();
}

void sub_1DF70F5B4(uint64_t a1@<X8>)
{
  strcpy(a1, "dataTypeRoom");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t ExperienceContext.VideoContext.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DF711358();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DF70F6E0()
{
  sub_1DF7113D8();
  sub_1DF7112F8();
  return sub_1DF7113F8();
}

uint64_t sub_1DF70F754(uint64_t a1)
{
  sub_1DF7113D8();
  sub_1DF7112F8();
  return sub_1DF7113F8();
}

uint64_t sub_1DF70F7B4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DF711358();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DF70F8F8(uint64_t a1)
{
  v2 = sub_1DF710118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF70F934(uint64_t a1)
{
  v2 = sub_1DF710118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF70F988()
{
  v1 = *v0;
  sub_1DF7113D8();
  MEMORY[0x1E12DCDE0](v1);
  return sub_1DF7113F8();
}

uint64_t sub_1DF70F9FC(uint64_t a1)
{
  v2 = *v1;
  sub_1DF7113D8();
  MEMORY[0x1E12DCDE0](v2);
  return sub_1DF7113F8();
}

uint64_t sub_1DF70FA40()
{
  if (*v0)
  {
    return 0x6F65646976;
  }

  else
  {
    return 0x656C6369747261;
  }
}

uint64_t sub_1DF70FA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C6369747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_1DF7113C8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF7113C8();

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

uint64_t sub_1DF70FB5C(uint64_t a1)
{
  v2 = sub_1DF71016C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF70FB98(uint64_t a1)
{
  v2 = sub_1DF71016C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF70FBD4()
{
  sub_1DF7113D8();
  MEMORY[0x1E12DCDE0](0);
  return sub_1DF7113F8();
}

uint64_t sub_1DF70FC18(uint64_t a1)
{
  sub_1DF7113D8();
  MEMORY[0x1E12DCDE0](0);
  return sub_1DF7113F8();
}

uint64_t sub_1DF70FC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF7113C8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF70FCE0(uint64_t a1)
{
  v2 = sub_1DF7100C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF70FD1C(uint64_t a1)
{
  v2 = sub_1DF7100C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExperienceContext.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1DF710804(0, &qword_1ECE51F70, sub_1DF7100C4, &type metadata for ExperienceContext.VideoCodingKeys, MEMORY[0x1E69E6F58]);
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x1EEE9AC00]();
  v20 = &v17 - v5;
  sub_1DF710804(0, &qword_1ECE51F80, sub_1DF710118, &type metadata for ExperienceContext.ArticleCodingKeys, v3);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00]();
  v8 = &v17 - v7;
  sub_1DF710804(0, &qword_1ECE51F90, sub_1DF71016C, &type metadata for ExperienceContext.CodingKeys, v3);
  v10 = v9;
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00]();
  v12 = &v17 - v11;
  LOBYTE(v3) = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF71016C();
  sub_1DF711418();
  if (v3)
  {
    v25 = 1;
    sub_1DF7100C4();
    v13 = v20;
    sub_1DF7113A8();
    sub_1DF710204();
    v14 = v22;
    sub_1DF7113B8();
    (*(v21 + 8))(v13, v14);
  }

  else
  {
    v24 = 0;
    sub_1DF710118();
    sub_1DF7113A8();
    sub_1DF710258();
    v15 = v19;
    sub_1DF7113B8();
    (*(v18 + 8))(v8, v15);
  }

  return (*(v23 + 8))(v12, v10);
}

unint64_t sub_1DF7100C4()
{
  result = qword_1ECE51F78;
  if (!qword_1ECE51F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51F78);
  }

  return result;
}

unint64_t sub_1DF710118()
{
  result = qword_1ECE51F88;
  if (!qword_1ECE51F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51F88);
  }

  return result;
}

unint64_t sub_1DF71016C()
{
  result = qword_1ECE51F98;
  if (!qword_1ECE51F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51F98);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1DF710204()
{
  result = qword_1ECE51FA0;
  if (!qword_1ECE51FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51FA0);
  }

  return result;
}

unint64_t sub_1DF710258()
{
  result = qword_1ECE51FA8;
  if (!qword_1ECE51FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51FA8);
  }

  return result;
}

uint64_t ExperienceContext.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v31 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1DF710804(0, &qword_1ECE51FB0, sub_1DF7100C4, &type metadata for ExperienceContext.VideoCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v28 = v4;
  v29 = v5;
  MEMORY[0x1EEE9AC00]();
  v30 = &v26 - v6;
  sub_1DF710804(0, &qword_1ECE51FB8, sub_1DF710118, &type metadata for ExperienceContext.ArticleCodingKeys, v3);
  v8 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00]();
  v10 = &v26 - v9;
  sub_1DF710804(0, &qword_1ECE51FC0, sub_1DF71016C, &type metadata for ExperienceContext.CodingKeys, v3);
  v12 = v11;
  v32 = *(v11 - 8);
  MEMORY[0x1EEE9AC00]();
  v14 = &v26 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF71016C();
  v15 = v33;
  sub_1DF711408();
  if (v15)
  {
    goto LABEL_7;
  }

  v16 = v30;
  v17 = v31;
  v33 = a1;
  v18 = sub_1DF711398();
  if (*(v18 + 16) != 1)
  {
    v20 = sub_1DF711348();
    swift_allocError();
    v22 = v21;
    sub_1DF7108B8(0);
    *v22 = &type metadata for ExperienceContext;
    sub_1DF711378();
    sub_1DF711328();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v32 + 8))(v14, v12);
    swift_unknownObjectRelease();
    a1 = v33;
LABEL_7:
    v23 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v26 = v18;
  v34 = *(v18 + 32);
  if (v34)
  {
    v36 = 1;
    sub_1DF7100C4();
    sub_1DF711368();
    v27 = v14;
    sub_1DF710974();
    v19 = v28;
    sub_1DF711388();
    (*(v29 + 8))(v16, v19);
    v25 = v32;
    v14 = v27;
  }

  else
  {
    v35 = 0;
    sub_1DF710118();
    sub_1DF711368();
    sub_1DF7109C8();
    sub_1DF711388();
    (*(v27 + 1))(v10, v8);
    v25 = v32;
  }

  (*(v25 + 8))(v14, v12);
  swift_unknownObjectRelease();
  *v17 = v34;
  v23 = v33;
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

void sub_1DF710804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return MEMORY[0x1EEE6C0A8](*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_1DF7108B8(uint64_t a1)
{
  if (!qword_1ECE51FC8)
  {
    sub_1DF710928();
    sub_1DF711338();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE51FC8);
    }
  }
}

unint64_t sub_1DF710928()
{
  result = qword_1ECE51FD0;
  if (!qword_1ECE51FD0)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1ECE51FD0);
  }

  return result;
}

unint64_t sub_1DF710974()
{
  result = qword_1ECE51FD8;
  if (!qword_1ECE51FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51FD8);
  }

  return result;
}

unint64_t sub_1DF7109C8()
{
  result = qword_1ECE51FE0;
  if (!qword_1ECE51FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51FE0);
  }

  return result;
}

unint64_t sub_1DF710A20()
{
  result = qword_1ECE51FE8;
  if (!qword_1ECE51FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51FE8);
  }

  return result;
}

unint64_t sub_1DF710A78()
{
  result = qword_1ECE51FF0;
  if (!qword_1ECE51FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51FF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExperienceContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for ExperienceContext(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExperienceContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExperienceContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF710DF0()
{
  result = qword_1ECE51FF8;
  if (!qword_1ECE51FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE51FF8);
  }

  return result;
}

unint64_t sub_1DF710E48()
{
  result = qword_1ECE52000;
  if (!qword_1ECE52000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52000);
  }

  return result;
}

unint64_t sub_1DF710EA0()
{
  result = qword_1ECE52008;
  if (!qword_1ECE52008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52008);
  }

  return result;
}

unint64_t sub_1DF710EF8()
{
  result = qword_1ECE52010;
  if (!qword_1ECE52010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52010);
  }

  return result;
}

unint64_t sub_1DF710F50()
{
  result = qword_1ECE52018;
  if (!qword_1ECE52018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52018);
  }

  return result;
}

unint64_t sub_1DF710FA8()
{
  result = qword_1ECE52020;
  if (!qword_1ECE52020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52020);
  }

  return result;
}

unint64_t sub_1DF711000()
{
  result = qword_1ECE52028;
  if (!qword_1ECE52028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52028);
  }

  return result;
}

unint64_t sub_1DF711058()
{
  result = qword_1ECE52030;
  if (!qword_1ECE52030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52030);
  }

  return result;
}

unint64_t sub_1DF7110B0()
{
  result = qword_1ECE52038;
  if (!qword_1ECE52038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52038);
  }

  return result;
}

unint64_t sub_1DF711104()
{
  result = qword_1ECE52040;
  if (!qword_1ECE52040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52040);
  }

  return result;
}

unint64_t sub_1DF711158()
{
  result = qword_1ECE52048;
  if (!qword_1ECE52048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE52048);
  }

  return result;
}