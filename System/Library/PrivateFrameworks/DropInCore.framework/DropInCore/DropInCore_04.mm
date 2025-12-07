uint64_t sub_249E4A15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  if (a9)
  {
  }

  return result;
}

uint64_t sub_249E4A1D0()
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_4_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v1[1] = sub_249E042BC;
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_49_1();

  return sub_249E48430(v3, v4, v5, v6, v7, v8);
}

double sub_249E4A270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9)
  {
  }

  return result;
}

uint64_t sub_249E4A2E4()
{
  OUTLINED_FUNCTION_4_3();
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  *v4 = v5;
  v4[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_49_1();

  return sub_249E488F4(v6, v7, v8, v9, v10, v11, v1, v2);
}

uint64_t sub_249E4A39C()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_3(v2);
  *v3 = v4;
  v3[1] = sub_249E04BA4;
  v5 = OUTLINED_FUNCTION_5_8();

  return sub_249E47FF8(v5, v6, v7, v1);
}

uint64_t objectdestroy_86Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249E4A478()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_3(v2);
  *v3 = v4;
  v3[1] = sub_249E04BA4;
  v5 = OUTLINED_FUNCTION_5_8();

  return sub_249E431CC(v5, v6, v7, v1);
}

unint64_t sub_249E4A514()
{
  result = qword_28130D230;
  if (!qword_28130D230)
  {
    sub_249E7AE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D230);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RapportManager.RapportManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_249E4A64C()
{
  result = qword_27EF23CC8;
  if (!qword_27EF23CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23CC8);
  }

  return result;
}

void OUTLINED_FUNCTION_13_3()
{

  JUMPOUT(0x24C205870);
}

void *OUTLINED_FUNCTION_20_1(uint64_t a1)
{

  return sub_249E7A6E8();
}

uint64_t OUTLINED_FUNCTION_28_1(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *v3 = v2;
  *(v1 + 12) = 2080;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_29_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_31_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_37_1(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_249E42168(a1, v4, v5, a4);
}

uint64_t OUTLINED_FUNCTION_39_1()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = *(v0 + 112);

  return sub_249E4A15C(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

void OUTLINED_FUNCTION_57_0()
{

  sub_249E56EE0(v0);
}

uint64_t OUTLINED_FUNCTION_61_0()
{
}

uint64_t OUTLINED_FUNCTION_62_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_63_0()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t (*sub_249E4A968(uint64_t (*result)(void *), uint64_t a2, uint64_t a3, void (*a4)(void *, _BYTE *), void (*a5)(BOOL, uint64_t, uint64_t)))(void *)
{
  v6 = a4;
  v8 = result;
  v9 = 0;
  v10 = *(a3 + 16);
  v11 = a3 + 32;
  v12 = MEMORY[0x277D84F90];
  v18 = result;
  while (1)
  {
    if (v10 == v9)
    {
      goto LABEL_14;
    }

    if (v9 >= *(a3 + 16))
    {
      break;
    }

    sub_249E3B9A4(v11, v21);
    v13 = v8(v21);
    if (v5)
    {
      __swift_destroy_boxed_opaque_existential_0(v21);

LABEL_14:

      return v12;
    }

    if (v13)
    {
      v6(v21, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a5(0, *(v12 + 16) + 1, 1);
        v12 = v22;
      }

      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        a5(v15 > 1, v16 + 1, 1);
        v12 = v22;
      }

      *(v12 + 16) = v16 + 1;
      v6 = a4;
      result = (a4)(v20, v12 + 40 * v16 + 32);
      v8 = v18;
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_0(v21);
    }

    v11 += 40;
    ++v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_249E4AAF8(uint64_t a1, uint64_t a2)
{
  v5 = sub_249E7A6B8();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  *(v2 + 16) = a1;
  *(v2 + OBJC_IVAR____TtC10DropInCore20HomeMessageValidator_remoteTransport) = a2;
  sub_249E7A6A8();
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC10DropInCore20HomeMessageValidator_logger, v11, v5);
  return v2;
}

uint64_t sub_249E4AC08(uint64_t a1, uint64_t a2)
{
  v5 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  sub_249E3B9A4(a1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23D00, &qword_249E7FE70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23D08, &qword_249E7FE78);
  if (!swift_dynamicCast())
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    sub_249E4DF9C(&v44, &qword_27EF23D10, &qword_249E7FE80);
    v27 = sub_249E4D928();
    OUTLINED_FUNCTION_40(&type metadata for HomeMessageValidator.HomeMessageValidatorError, v27);
    return OUTLINED_FUNCTION_190(v28, 2);
  }

  v41 = a2;
  sub_249DF0790(&v44, v48);
  swift_getObjectType();
  __swift_project_boxed_opaque_existential_0(v48, v48[3]);
  v12 = OUTLINED_FUNCTION_10_2();
  v13(v12);
  v14 = sub_249DF530C(v11);
  v15 = *(v7 + 8);
  v15(v11, v5);
  if (!v14)
  {
    sub_249E3B9A4(v48, v47);
    v30 = sub_249E7A698();
    v31 = sub_249E7AE08();
    if (os_log_type_enabled(v30, v31))
    {
      OUTLINED_FUNCTION_70();
      v32 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      v42 = swift_slowAlloc();
      *&v44 = v42;
      *v32 = 136315138;
      __swift_project_boxed_opaque_existential_0(v47, v47[3]);
      v33 = OUTLINED_FUNCTION_10_2();
      v34(v33);
      sub_249DF49D8();
      v35 = sub_249E7B2D8();
      v37 = v36;
      v15(v11, v5);
      __swift_destroy_boxed_opaque_existential_0(v47);
      v38 = sub_249E3A958(v35, v37, &v44);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_249DEE000, v30, v31, "Failed to find home with UUID %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    v39 = sub_249E4D928();
    OUTLINED_FUNCTION_40(&type metadata for HomeMessageValidator.HomeMessageValidatorError, v39);
    OUTLINED_FUNCTION_190(v40, 3);
    return __swift_destroy_boxed_opaque_existential_0(v48);
  }

  sub_249E4B0F4(v14, v41);
  if (!v2)
  {
    sub_249E3B9A4(v41, v47);
    sub_249E3B9A4(a1, &v44);
    v16 = sub_249E7A698();
    v17 = sub_249E7AE28();
    if (!os_log_type_enabled(v16, v17))
    {

      __swift_destroy_boxed_opaque_existential_0(v47);
      __swift_destroy_boxed_opaque_existential_0(&v44);
      return __swift_destroy_boxed_opaque_existential_0(v48);
    }

    v18 = OUTLINED_FUNCTION_188();
    v49 = swift_slowAlloc();
    *v18 = 136315394;
    sub_249E3B9A4(v47, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
    v19 = sub_249E7AAC8();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_0(v47);
    v22 = sub_249E3A958(v19, v21, &v49);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    __swift_project_boxed_opaque_existential_0(&v44, *(&v45 + 1));
    v23 = sub_249E7B2D8();
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_0(&v44);
    v26 = sub_249E3A958(v23, v25, &v49);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_249DEE000, v16, v17, "Validated Outgoing Sender and Message on %s. Message = %s", v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  return __swift_destroy_boxed_opaque_existential_0(v48);
}

void sub_249E4B0F4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [*(v3 + 16) currentAccessory];
  if (v6)
  {
    v7 = v6;
    v8 = v6;
    v9 = a1;
    v10 = sub_249E7A698();
    v11 = sub_249E7AE28();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412546;
      *(v12 + 4) = v8;
      *(v12 + 12) = 2112;
      *(v12 + 14) = v9;
      *v13 = v7;
      v13[1] = v9;
      v14 = v8;
      v15 = v9;
      _os_log_impl(&dword_249DEE000, v10, v11, "Validating Current Accessory %@ in home %@", v12, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
      swift_arrayDestroy();
      MEMORY[0x24C205870](v13, -1, -1);
      MEMORY[0x24C205870](v12, -1, -1);
    }

    sub_249E4BC64(v8, v9);
  }

  else
  {
    v16 = [a1 currentUser];
    v17 = a1;
    v8 = v16;
    v18 = sub_249E7A698();
    v19 = sub_249E7AE28();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412546;
      *(v20 + 4) = v8;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v17;
      *v21 = v8;
      v21[1] = v17;
      v22 = v17;
      v23 = v8;
      _os_log_impl(&dword_249DEE000, v18, v19, "Validating Current User %@ in home %@", v20, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
      swift_arrayDestroy();
      MEMORY[0x24C205870](v21, -1, -1);
      MEMORY[0x24C205870](v20, -1, -1);
    }

    sub_249E4B6C4(v8, v17, a2);
  }
}

uint64_t sub_249E4B3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_249E3B9A4(a1, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v10 = sub_249DF691C(0, &unk_28130D190, 0x277CD1EE0);
  if (OUTLINED_FUNCTION_15_3(v62, v11, v12, v10, v13, v14, v15, v16, v57, __src[0], __src[1], __src[2], __src[3], __src[4]))
  {
    v17 = v62[0];
    OUTLINED_FUNCTION_12_3();
    sub_249E4B6C4(v18, v19, v20);
  }

  else
  {
    v21 = sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
    if ((OUTLINED_FUNCTION_15_3(v62, v22, v23, v21, v24, v25, v26, v27, v58, __src[0], __src[1], __src[2], __src[3], __src[4]) & 1) == 0)
    {
      if ((OUTLINED_FUNCTION_15_3(__src, v28, v29, &type metadata for MessageSender, v30, v31, v32, v33, v59, __src[0], __src[1], __src[2], __src[3], __src[4]) & 1) == 0)
      {
        v55 = sub_249E4D928();
        v37 = OUTLINED_FUNCTION_40(&type metadata for HomeMessageValidator.HomeMessageValidatorError, v55);
        OUTLINED_FUNCTION_190(v56, 11);
        goto LABEL_8;
      }

      memcpy(__dst, __src, 0x41uLL);
      OUTLINED_FUNCTION_12_3();
      sub_249E4C178(v51, v52, v53, v54);
      v36 = v6;
      if (v6)
      {
        sub_249E2A190(__dst);
        goto LABEL_7;
      }

      sub_249E2A2A4(v62);
      sub_249E2A190(__dst);
LABEL_13:
      __swift_destroy_boxed_opaque_existential_0(v61);
      return 1;
    }

    v17 = v62[0];
    OUTLINED_FUNCTION_12_3();
    sub_249E4BC64(v34, v35);
  }

  v36 = v6;
  if (!v6)
  {

    goto LABEL_13;
  }

LABEL_7:
  v37 = v36;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_0(v61);
  sub_249E3B9A4(a1, __src);
  v38 = v37;
  v39 = sub_249E7A698();
  v40 = sub_249E7AE08();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_188();
    v42 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v43 = swift_slowAlloc();
    v64 = v43;
    *v41 = 136315394;
    sub_249E3B9A4(__src, v61);
    v44 = sub_249E7AAC8();
    v46 = v45;
    __swift_destroy_boxed_opaque_existential_0(__src);
    v47 = sub_249E3A958(v44, v46, &v64);

    *(v41 + 4) = v47;
    *(v41 + 12) = 2112;
    v48 = v37;
    v49 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 14) = v49;
    *v42 = v49;
    _os_log_impl(&dword_249DEE000, v39, v40, "Failed to Validate Destination %s. Error = %@", v41, 0x16u);
    sub_249E4DF9C(v42, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    __swift_destroy_boxed_opaque_existential_0(v43);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(__src);
  }

  return 0;
}

void sub_249E4B6C4(void *a1, id a2, uint64_t a3)
{
  v6 = [a2 homeAccessControlForUser_];
  v7 = [v6 isAccessAllowed];

  if (!v7)
  {
    v23 = a1;
    v24 = sub_249E7A698();
    v25 = sub_249E7AE08();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&dword_249DEE000, v24, v25, "User does not have Home Access: %@", v26, 0xCu);
      sub_249E4DF9C(v27, &unk_27EF23C30, &qword_249E7DA20);
      MEMORY[0x24C205870](v27, -1, -1);
      MEMORY[0x24C205870](v26, -1, -1);
    }

    sub_249E4D928();
    swift_allocError();
    v30 = 9;
    goto LABEL_10;
  }

  if (!sub_249DF8B94(a1))
  {
    v31 = a1;
    v32 = sub_249E7A698();
    v33 = sub_249E7AE08();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v31;
      *v35 = v31;
      v36 = v31;
      _os_log_impl(&dword_249DEE000, v32, v33, "User does not have Drop In Access: %@", v34, 0xCu);
      sub_249E4DF9C(v35, &unk_27EF23C30, &qword_249E7DA20);
      MEMORY[0x24C205870](v35, -1, -1);
      MEMORY[0x24C205870](v34, -1, -1);
    }

    sub_249E7ADD8();
    goto LABEL_14;
  }

  sub_249E3B9A4(a3, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
  sub_249DF691C(0, &qword_27EF23CF0, 0x277D18778);
  if (swift_dynamicCast())
  {

    v8 = [a2 homeAccessControlForUser_];
    v9 = [v8 isRemoteAccessAllowed];

    if ((v9 & 1) == 0)
    {
      v37 = a1;
      v38 = sub_249E7A698();
      v39 = sub_249E7AE08();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v37;
        *v41 = v37;
        v42 = v37;
        _os_log_impl(&dword_249DEE000, v38, v39, "User does not have remote access. %@", v40, 0xCu);
        sub_249E4DF9C(v41, &unk_27EF23C30, &qword_249E7DA20);
        MEMORY[0x24C205870](v41, -1, -1);
        MEMORY[0x24C205870](v40, -1, -1);
      }

      sub_249E4D928();
      swift_allocError();
      v30 = 5;
LABEL_10:
      *v29 = v30;
LABEL_14:
      swift_willThrow();
      return;
    }
  }

  sub_249E3B9A4(a3, v44);
  v10 = a1;
  v11 = a2;
  v12 = sub_249E7A698();
  v13 = sub_249E7AE28();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v45 = v16;
    *v14 = 138412802;
    *(v14 + 4) = v10;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v10;
    v15[1] = v11;
    *(v14 + 22) = 2080;
    sub_249E3B9A4(v44, v43);
    v17 = v10;
    v18 = v11;
    v19 = sub_249E7AAC8();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_0(v44);
    v22 = sub_249E3A958(v19, v21, &v45);

    *(v14 + 24) = v22;
    _os_log_impl(&dword_249DEE000, v12, v13, "Validated User %@ in Home %@ on Transport %s", v14, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
    swift_arrayDestroy();
    MEMORY[0x24C205870](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C205870](v16, -1, -1);
    MEMORY[0x24C205870](v14, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v44);
  }
}

void sub_249E4BC64(void *a1, void *a2)
{
  v5 = sub_249E7A628();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v42 - v10;
  v12 = [a1 home];
  if (v12)
  {
    v42[1] = v2;
    v43 = v12;
    v13 = [v12 uniqueIdentifier];
    sub_249E7A608();

    v14 = [a2 uniqueIdentifier];
    sub_249E7A608();

    LOBYTE(v14) = sub_249E7A5F8();
    v15 = *(v6 + 8);
    v15(v9, v5);
    v15(v11, v5);
    if (v14)
    {
      v16 = a2;
      if ([a1 supportsDropIn])
      {

        return;
      }

      v34 = a1;
      v35 = v16;
      v36 = sub_249E7A698();
      v37 = sub_249E7AE08();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412546;
        *(v38 + 4) = v34;
        *(v38 + 12) = 2112;
        *(v38 + 14) = v35;
        *v39 = v34;
        v39[1] = v35;
        v40 = v34;
        v41 = v35;
        _os_log_impl(&dword_249DEE000, v36, v37, "Accessory does not support Drop In. %@, Home = %@", v38, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
        swift_arrayDestroy();
        MEMORY[0x24C205870](v39, -1, -1);
        MEMORY[0x24C205870](v38, -1, -1);
      }

      sub_249E4D928();
      swift_allocError();
      v33 = 12;
    }

    else
    {
      v24 = a1;
      v25 = a2;
      v26 = sub_249E7A698();
      v27 = sub_249E7AE08();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412546;
        *(v28 + 4) = v24;
        *(v28 + 12) = 2112;
        *(v28 + 14) = v25;
        *v29 = v24;
        v29[1] = v25;
        v30 = v24;
        v31 = v25;
        _os_log_impl(&dword_249DEE000, v26, v27, "Accessory not contained in target home. %@, Home = %@", v28, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C30, &qword_249E7DA20);
        swift_arrayDestroy();
        MEMORY[0x24C205870](v29, -1, -1);
        MEMORY[0x24C205870](v28, -1, -1);
      }

      sub_249E4D928();
      swift_allocError();
      v33 = 10;
    }

    *v32 = v33;
    swift_willThrow();
  }

  else
  {
    v17 = a1;
    v18 = sub_249E7A698();
    v19 = sub_249E7AE08();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_249DEE000, v18, v19, "No Home for Accessory. %@", v20, 0xCu);
      sub_249E4DF9C(v21, &unk_27EF23C30, &qword_249E7DA20);
      MEMORY[0x24C205870](v21, -1, -1);
      MEMORY[0x24C205870](v20, -1, -1);
    }

    sub_249E4D928();
    swift_allocError();
    *v23 = 3;
    swift_willThrow();
  }
}

void sub_249E4C178(_OWORD *__src@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v50 = a2;
  v39 = __src[3];
  v40 = __src[1];
  v37 = __src[2];
  v38 = *__src;
  v36 = *(__src + 64);
  memcpy(__dst, __src, sizeof(__dst));
  v34 = a3;
  sub_249E3B9A4(a3, v44);
  v9 = *__dst;
  v10 = *&__dst[8];
  v11 = *&__dst[16];
  v12 = *&__dst[24];
  v48 = *&__dst[32];
  v49 = *&__dst[48];
  if (__dst[64])
  {
    sub_249E49D2C(__src, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
    sub_249DF691C(0, &unk_28130D1E0, 0x277D44160);
    if (swift_dynamicCast())
    {
      v45[0] = v9;
      v45[1] = v10;
      v45[2] = v11;
      v45[3] = v12;
      v46 = v48;
      v47 = v49;
      v13 = *(v35 + OBJC_IVAR____TtC10DropInCore20HomeMessageValidator_remoteTransport);
      v14 = v50;
      v15 = sub_249DFB168(v45, v41[0], v13);
      if (v15)
      {
        v16 = v15;

        v17 = v36 & 1 | 0x80;
        sub_249E49D2C(__src, v42);
        v18 = v14;
        __swift_destroy_boxed_opaque_existential_0(v44);
        memcpy(v42, __dst, 0x41uLL);
        sub_249E2A190(v42);
LABEL_18:
        *a4 = v16;
        *(a4 + 8) = v14;
        *(a4 + 16) = v38;
        *(a4 + 32) = v40;
        *(a4 + 48) = v37;
        *(a4 + 64) = v39;
        *(a4 + 80) = v17;
        return;
      }

      sub_249DFA758(v45, v41[0], v13);
      v16 = v23;

      goto LABEL_11;
    }

LABEL_8:
    sub_249E4D928();
    swift_allocError();
    *v22 = 8;
    swift_willThrow();
    sub_249E4DF9C(__dst, &qword_27EF23CF8, &qword_249E7FE68);
    return;
  }

  sub_249E49D2C(__src, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
  sub_249DF691C(0, &qword_27EF23CF0, 0x277D18778);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  v19 = v50;
  sub_249DF9E00(v9, v10, v11, v12, 0, 0, 0, 0, v41[0]);
  if (v20)
  {
    v16 = v20;

    v17 = v36 & 1 | 0x80;
    sub_249E49D2C(__src, v42);
    v21 = v19;
    __swift_destroy_boxed_opaque_existential_0(v44);
    memcpy(v42, __dst, 0x41uLL);
    sub_249E2A190(v42);
    v14 = v19;
    goto LABEL_18;
  }

  v16 = sub_249DF8FA4(v9, v10, v11, v12, 0, 0, v41[0]);

  v5 = v4;
  v14 = v19;
LABEL_11:
  v24 = v16;
  __swift_destroy_boxed_opaque_existential_0(v44);
  memcpy(v42, __dst, 0x41uLL);
  sub_249E2A190(v42);
  if (v16)
  {
    sub_249E4B6C4(v24, v14, v34);

    if (v5)
    {

      return;
    }

    v17 = v36 & 1;
    sub_249E49D2C(__src, v41);
    v33 = v14;
    goto LABEL_18;
  }

  sub_249E49D2C(__src, v41);
  v25 = sub_249E7A698();
  v26 = sub_249E7AE08();
  sub_249E2A190(__src);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v41[0] = v28;
    *v27 = 136315138;
    v29 = sub_249DF34CC();
    v31 = sub_249E3A958(v29, v30, v41);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_249DEE000, v25, v26, "Failed to find user for sender %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x24C205870](v28, -1, -1);
    MEMORY[0x24C205870](v27, -1, -1);
  }

  sub_249E4D928();
  swift_allocError();
  *v32 = 4;
  swift_willThrow();
}

void *sub_249E4C640@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v63 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v56 - v9;
  v11 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  sub_249E55870(0x6469656D6F68, 0xE600000000000000, a1, &v65);
  if (!v66)
  {
    v18 = &unk_27EF23C40;
    v19 = &qword_249E7D8E0;
    v20 = &v65;
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v21 = sub_249E4D928();
    OUTLINED_FUNCTION_40(&type metadata for HomeMessageValidator.HomeMessageValidatorError, v21);
    return OUTLINED_FUNCTION_190(v22, 2);
  }

  v62 = a4;
  sub_249E7A5C8();

  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    v18 = &qword_27EF234B0;
    v19 = &qword_249E7D910;
    v20 = v10;
LABEL_6:
    sub_249E4DF9C(v20, v18, v19);
    goto LABEL_7;
  }

  (*(v13 + 32))(v17, v10, v11);
  v24 = v63;
  sub_249E4CC44(v17, a2, v63, __src);
  if (v4)
  {
    v25 = OUTLINED_FUNCTION_13_4();
    return v26(v25);
  }

  else
  {
    v27 = OBJC_IVAR____TtC10DropInCore20HomeMessageValidator_logger;
    sub_249E3B9A4(v24, &v65);

    v61 = v27;
    v28 = sub_249E7A698();
    v29 = sub_249E7AE28();

    v60 = v29;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_188();
      v59 = v30;
      v58 = swift_slowAlloc();
      v68 = v58;
      *v30 = 136315394;
      sub_249E3B9A4(&v65, &v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23CE0, &unk_249E7F4F0);
      v31 = sub_249E7AAC8();
      v57 = v28;
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_0(&v65);
      v34 = sub_249E3A958(v31, v33, &v68);

      v35 = v59;
      *(v59 + 1) = v34;
      *(v35 + 6) = 2080;
      v36 = sub_249E7A9E8();
      v38 = sub_249E3A958(v36, v37, &v68);

      v39 = v59;
      *(v59 + 14) = v38;
      v40 = v57;
      _os_log_impl(&dword_249DEE000, v57, v60, "Validated Incoming Message on %s. Message = %s", v39, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v65);
    }

    sub_249E49D2C(a2, &v65);
    sub_249E2A248(__src, &v65);
    v41 = sub_249E7A698();
    v42 = sub_249E7AE28();
    sub_249E2A190(a2);
    sub_249E2A2A4(__src);
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_188();
      v61 = swift_slowAlloc();
      v64 = v61;
      *v43 = 136315394;
      v60 = v42;
      v44 = sub_249DF34CC();
      v45 = v41;
      v47 = sub_249E3A958(v44, v46, &v64);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      sub_249E2A248(__src, &v65);
      v48 = sub_249E4D280();
      v50 = v49;
      sub_249E2A2A4(__src);
      v51 = sub_249E3A958(v48, v50, &v64);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_249DEE000, v45, v60, "Sender = %s, HomeMessageSender = %s", v43, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {
    }

    v52 = v62;
    v53 = __src[1];
    sub_249E4B0F4(v53, v63);
    v54 = OUTLINED_FUNCTION_13_4();
    v55(v54);

    return memcpy(v52, __src, 0x51uLL);
  }
}

void sub_249E4CC44(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v24 = a4;
  v7 = sub_249E7A628();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v11 = sub_249DF530C(a1);
  if (v11)
  {
    v12 = v11;
    v13 = v25;
    sub_249E4C178(a2, v11, a3, __src);

    if (!v13)
    {
      memcpy(v24, __src, 0x51uLL);
    }
  }

  else
  {
    (*(v8 + 16))(v10, a1, v7);
    v14 = sub_249E7A698();
    v15 = sub_249E7AE08();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136315138;
      sub_249DF49D8();
      v18 = sub_249E7B2D8();
      v20 = v19;
      (*(v8 + 8))(v10, v7);
      v21 = sub_249E3A958(v18, v20, &v27);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_249DEE000, v14, v15, "Failed to find home with UUID %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x24C205870](v17, -1, -1);
      MEMORY[0x24C205870](v16, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    sub_249E4D928();
    swift_allocError();
    *v22 = 3;
    swift_willThrow();
  }
}

uint64_t sub_249E4CEE4()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC10DropInCore20HomeMessageValidator_logger;
  sub_249E7A6B8();
  OUTLINED_FUNCTION_8_2();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_249E4CF58()
{
  sub_249E4CEE4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for HomeMessageValidator(uint64_t a1)
{
  result = qword_28130D798;
  if (!qword_28130D798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E4D004(uint64_t a1)
{
  result = sub_249E7A6B8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_249E4D0C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 81))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 80) & 0x7E | (*(a1 + 80) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_249E4D108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 80) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_249E4D1B8()
{
  result = qword_28130D7C0[0];
  if (!qword_28130D7C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28130D7C0);
  }

  return result;
}

void *sub_249E4D230@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_249E4C640(a1, a2, a3, __src);
  if (!v4)
  {
    return memcpy(a4, __src, 0x51uLL);
  }

  return result;
}

uint64_t sub_249E4D280()
{
  v2 = *(v0 + 8);
  sub_249E7B128();

  v11 = OUTLINED_FUNCTION_22_1(v3, v4, v5, v6, v7, v8, v9, v10, v22, 0, 0xE000000000000000);
  v12 = sub_249E7AAA8();
  v14 = v13;

  MEMORY[0x24C204750](v12, v14);

  OUTLINED_FUNCTION_20_2();
  v15 = [v2 (v1 + 1272)];
  v16 = sub_249E7AAA8();
  v18 = v17;

  MEMORY[0x24C204750](v16, v18);

  v19 = OUTLINED_FUNCTION_241();
  MEMORY[0x24C204750](v19);
  v20 = sub_249DF34CC();
  MEMORY[0x24C204750](v20);

  MEMORY[0x24C204750](93, 0xE100000000000000);
  return v23;
}

uint64_t sub_249E4D4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a2 + 80);
  if (*(a1 + 80) < 0)
  {
    if (v13 < 0)
    {
      v22 = a2;
      v21 = *a2;
      v14 = *(v22 + 8);
      v23 = [v11 uniqueIdentifier];
      sub_249E7A608();

      v24 = [v21 uniqueIdentifier];
      sub_249E7A608();

      LOBYTE(v24) = sub_249E7A5F8();
      v19 = *(v6 + 8);
      v25 = OUTLINED_FUNCTION_241();
      v19(v25);
      (v19)(v10, v4);
      if (v24)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v28 = 0;
    return v28 & 1;
  }

  if (v13 < 0)
  {
    goto LABEL_8;
  }

  v16 = a2;
  v15 = *a2;
  v14 = *(v16 + 8);
  v17 = [v11 uniqueIdentifier];
  sub_249E7A608();

  v18 = [v15 uniqueIdentifier];
  sub_249E7A608();

  LOBYTE(v18) = sub_249E7A5F8();
  v19 = *(v6 + 8);
  v20 = OUTLINED_FUNCTION_241();
  v19(v20);
  (v19)(v10, v4);
  if ((v18 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  v26 = [v12 uniqueIdentifier];
  sub_249E7A608();

  v27 = [v14 uniqueIdentifier];
  sub_249E7A608();

  v28 = sub_249E7A5F8();
  v29 = OUTLINED_FUNCTION_241();
  v19(v29);
  (v19)(v10, v4);
  return v28 & 1;
}

uint64_t sub_249E4D760(uint64_t a1)
{
  v3 = *(v1 + 80);
  MEMORY[0x24C205020](v3 < 0);
  sub_249E7AF88();
  sub_249E7AF88();
  if (v3)
  {
    MEMORY[0x24C205020](1);
    return sub_249E30EBC(a1);
  }

  else
  {
    MEMORY[0x24C205020](0);
    sub_249E7AB18();

    return sub_249E7AB18();
  }
}

uint64_t sub_249E4D884()
{
  sub_249E7B408();
  sub_249E4D760(v1);
  return sub_249E7B438();
}

uint64_t sub_249E4D8D4(uint64_t a1)
{
  sub_249E7B408();
  sub_249E4D760(v2);
  return sub_249E7B438();
}

unint64_t sub_249E4D928()
{
  result = qword_27EF23CD8;
  if (!qword_27EF23CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23CD8);
  }

  return result;
}

uint64_t sub_249E4D97C()
{
  v1[2] = v0;
  v2 = sub_249E7A628();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E4DA3C, 0, 0);
}

uint64_t sub_249E4DA3C()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  if (*(v1 + 80) < 0)
  {
    v17 = [v2 uniqueIdentifier];
    sub_249E7A608();

    sub_249E7A5D8();
    v18 = sub_249E4DFF8(v2);
    v19 = objc_allocWithZone(MEMORY[0x277D069E0]);
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_17_1();
    v16 = sub_249E4DE40(v20, v21, v22, v23, v24, v25, v26, v18, v31, v32, v33);
    v27 = OUTLINED_FUNCTION_241();
    v28(v27);
  }

  else
  {
    v3 = [v2 name];
    v4 = sub_249E7AAA8();

    v5 = [v2 uniqueIdentifier];
    sub_249E7A608();

    sub_249E7A5D8();
    v6 = OUTLINED_FUNCTION_241();
    v7(v6);
    v8 = objc_allocWithZone(MEMORY[0x277D069E0]);
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_17_1();
    v16 = sub_249E4DE40(v9, v10, v11, v12, v13, v14, v15, v4, v31, v32, v33);
  }

  v29 = *(v0 + 8);

  return v29(v16);
}

unint64_t sub_249E4DBF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_249E7B268();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_249E4DC40(char a1)
{
  result = 0x4D64696C61766E69;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0xD000000000000014;
      break;
    case 2:
      return result;
    case 3:
      v3 = 1701670760;
      goto LABEL_8;
    case 4:
      v3 = 1919251317;
LABEL_8:
      result = v3 | 0x46746F4E00000000;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 8:
      result = 0xD000000000000025;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_249E4DDDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_249E4DBF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_249E4DE0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_249E4DC40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_249E4DE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v15 = sub_249E7AA88();

  if (a5)
  {
    v16 = sub_249E7AA88();
  }

  else
  {
    v16 = 0;
  }

  if (a7)
  {
    v17 = sub_249E7AA88();
  }

  else
  {
    v17 = 0;
  }

  if (a9)
  {
    v18 = sub_249E7AA88();
  }

  else
  {
    v18 = 0;
  }

  if (a11 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_249E7A4E8();
    sub_249E4E9BC(a10, a11);
  }

  v20 = [v11 initWithType:a1 value:v15 givenName:v16 familyName:v17 displayName:v18 imageData:v19];

  return v20;
}

uint64_t sub_249E4DF9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_249E4DFF8(void *a1)
{
  v1 = [a1 configuredName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249E7AAA8();

  return v3;
}

uint64_t (*sub_249E4E05C(uint64_t a1))(void *)
{
  v4 = OUTLINED_FUNCTION_5_9(a1);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_8_2();
  (*(v8 + 16))();
  v47 = v1;
  v48 = v3;
  __swift_allocate_boxed_opaque_existential_0(v46);
  OUTLINED_FUNCTION_8_2();
  (*(v9 + 16))();
  sub_249E3B9A4(v49, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23D00, &qword_249E7FE70);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23D08, &qword_249E7FE78);
  if (!OUTLINED_FUNCTION_16_2(v10))
  {
    OUTLINED_FUNCTION_9_4();
    sub_249E4DF9C(v43, &qword_27EF23D10, &qword_249E7FE80);
LABEL_12:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_249DF0790(v43, v45);
  swift_getObjectType();
  __swift_project_boxed_opaque_existential_0(v45, v45[3]);
  v11 = OUTLINED_FUNCTION_0_12();
  v12(v11);
  v13 = sub_249DF530C(v2);
  v14 = *(v6 + 8);
  v15 = OUTLINED_FUNCTION_241();
  v16 = v14(v15);
  if (!v13)
  {
    sub_249E3B9A4(v45, v44);
    v29 = sub_249E7A698();
    v30 = sub_249E7AE08();
    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_70();
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      v32 = swift_slowAlloc();
      *&v43[0] = v32;
      *v31 = 136315138;
      __swift_project_boxed_opaque_existential_0(v44, v44[3]);
      v33 = OUTLINED_FUNCTION_0_12();
      v34(v33);
      sub_249DF49D8();
      v35 = sub_249E7B2D8();
      v37 = v36;
      v38 = OUTLINED_FUNCTION_241();
      v14(v38);
      __swift_destroy_boxed_opaque_existential_0(v44);
      v39 = sub_249E3A958(v35, v37, v43);

      *(v31 + 4) = v39;
      OUTLINED_FUNCTION_19_3(&dword_249DEE000, v40, v41, "Failed to find home with UUID %s");
      __swift_destroy_boxed_opaque_existential_0(v32);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v44);
    }

    __swift_destroy_boxed_opaque_existential_0(v45);
    goto LABEL_12;
  }

  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_6();
  v17 = sub_249E4A968(sub_249E4E4D8, v4, v2, sub_249E4EB90, sub_249E5DAAC);

  v18 = sub_249E7A698();
  v19 = sub_249E7AE28();
  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_70();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v21 = swift_slowAlloc();
    v44[0] = v21;
    *v20 = 136315138;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237F8, &qword_249E7E250);
    v23 = MEMORY[0x24C204800](v17, v22);
    v25 = v24;

    v26 = sub_249E3A958(v23, v25, v44);

    *(v20 + 4) = v26;
    OUTLINED_FUNCTION_21_2(&dword_249DEE000, v27, v28, "Validated Destinations: %s");
    __swift_destroy_boxed_opaque_existential_0(v21);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v45);
LABEL_13:
  __swift_destroy_boxed_opaque_existential_0(v49);
  __swift_destroy_boxed_opaque_existential_0(v46);
  return v17;
}

uint64_t (*sub_249E4E50C(uint64_t a1))(void *)
{
  v4 = OUTLINED_FUNCTION_5_9(a1);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_8_2();
  (*(v8 + 16))();
  v47 = v1;
  v48 = v3;
  __swift_allocate_boxed_opaque_existential_0(v46);
  OUTLINED_FUNCTION_8_2();
  (*(v9 + 16))();
  sub_249E3B9A4(v49, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23D00, &qword_249E7FE70);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23D08, &qword_249E7FE78);
  if (!OUTLINED_FUNCTION_16_2(v10))
  {
    OUTLINED_FUNCTION_9_4();
    sub_249E4DF9C(v43, &qword_27EF23D10, &qword_249E7FE80);
LABEL_12:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_249DF0790(v43, v45);
  swift_getObjectType();
  __swift_project_boxed_opaque_existential_0(v45, v45[3]);
  v11 = OUTLINED_FUNCTION_0_12();
  v12(v11);
  v13 = sub_249DF530C(v2);
  v14 = *(v6 + 8);
  v15 = OUTLINED_FUNCTION_241();
  v16 = v14(v15);
  if (!v13)
  {
    sub_249E3B9A4(v45, v44);
    v29 = sub_249E7A698();
    v30 = sub_249E7AE08();
    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_70();
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      v32 = swift_slowAlloc();
      *&v43[0] = v32;
      *v31 = 136315138;
      __swift_project_boxed_opaque_existential_0(v44, v44[3]);
      v33 = OUTLINED_FUNCTION_0_12();
      v34(v33);
      sub_249DF49D8();
      v35 = sub_249E7B2D8();
      v37 = v36;
      v38 = OUTLINED_FUNCTION_241();
      v14(v38);
      __swift_destroy_boxed_opaque_existential_0(v44);
      v39 = sub_249E3A958(v35, v37, v43);

      *(v31 + 4) = v39;
      OUTLINED_FUNCTION_19_3(&dword_249DEE000, v40, v41, "Failed to find home with UUID %s");
      __swift_destroy_boxed_opaque_existential_0(v32);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v44);
    }

    __swift_destroy_boxed_opaque_existential_0(v45);
    goto LABEL_12;
  }

  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_6();
  v17 = sub_249E4A968(sub_249E4E988, v4, v2, sub_249E4EB90, sub_249E5DACC);

  v18 = sub_249E7A698();
  v19 = sub_249E7AE28();
  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_70();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v21 = swift_slowAlloc();
    v44[0] = v21;
    *v20 = 136315138;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23810, &qword_249E7E270);
    v23 = MEMORY[0x24C204800](v17, v22);
    v25 = v24;

    v26 = sub_249E3A958(v23, v25, v44);

    *(v20 + 4) = v26;
    OUTLINED_FUNCTION_21_2(&dword_249DEE000, v27, v28, "Validated Destinations: %s");
    __swift_destroy_boxed_opaque_existential_0(v21);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v45);
LABEL_13:
  __swift_destroy_boxed_opaque_existential_0(v49);
  __swift_destroy_boxed_opaque_existential_0(v46);
  return v17;
}

uint64_t sub_249E4E9BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_249DFE8F8(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeMessageValidator.HomeMessageValidatorError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HomeMessageValidator.HomeMessageValidatorError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
        break;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_249E4EB3C()
{
  result = qword_27EF23D18;
  if (!qword_27EF23D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23D18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_9(uint64_t a1)
{
  *(v1 - 304) = a1;

  return sub_249E7A628();
}

double OUTLINED_FUNCTION_6_6()
{

  return result;
}

double OUTLINED_FUNCTION_9_4()
{
  *(v0 - 256) = 0;
  result = 0.0;
  *(v0 - 272) = 0u;
  *(v0 - 288) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_16_2(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t *OUTLINED_FUNCTION_18_2()
{
  *(v2 - 104) = v1;
  *(v2 - 96) = v0;

  return __swift_allocate_boxed_opaque_existential_0((v2 - 128));
}

void OUTLINED_FUNCTION_19_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_20_2()
{

  JUMPOUT(0x24C204750);
}

void OUTLINED_FUNCTION_21_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_22_1(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return [v11 description];
}

void sub_249E4ED84(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v6 = sub_249E514A8(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C204D50](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v8;
    v10 = a1(&v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      return;
    }
  }
}

void sub_249E4EE70(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_249E7B058();
    sub_249E513DC();
    sub_249E517C8(&qword_28130D158, sub_249E513DC, MEMORY[0x277D85378]);
    sub_249E7AD88();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_249E7B088())
        {
          goto LABEL_20;
        }

        sub_249E513DC();
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      sub_249E08728(v20);
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_20:
      sub_249E08728(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_249E4F0C4(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_249E7B058();
    sub_249E513DC();
    sub_249E517C8(&qword_28130D158, sub_249E513DC, MEMORY[0x277D85378]);
    sub_249E7AD88();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        a1(&v26);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_249E7B088())
        {
          goto LABEL_19;
        }

        sub_249E513DC();
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      v18 = v20;
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_19:
      v18 = v5;
    }

    sub_249E08728(v18);
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_249E4F2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_10_3(a1, a2, a3, a4, a5);

  v5 = OUTLINED_FUNCTION_13_5();
  sub_249E4F3B4(v5, v6, v7);
}

uint64_t sub_249E4F34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_10_3(a1, a2, a3, a4, a5);

  v5 = OUTLINED_FUNCTION_13_5();
  sub_249E4EE70(v5, v6, v7);
  v9 = v8;

  return v9;
}

void sub_249E4F3B4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v22[7] = MEMORY[0x277D84F90];
  if ((a3 & 0xC000000000000001) != 0)
  {
    sub_249E7B058();
    sub_249E513DC();
    sub_249E517C8(&qword_28130D158, sub_249E513DC, MEMORY[0x277D85378]);
    sub_249E7AD88();
    v4 = v22[1];
    v5 = v22[2];
    v6 = v22[3];
    v7 = v22[4];
    v8 = v22[5];
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);
  }

  v12 = (v6 + 64) >> 6;
  v20 = v4;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v22[0] = v17;
        v18 = a1(v22);
        if (v3)
        {
          break;
        }

        if (v18)
        {
          sub_249E7B1A8();
          sub_249E7B1D8();
          sub_249E7B1E8();
          sub_249E7B1B8();
        }

        else
        {
        }

        v7 = v15;
        v8 = v16;
        v4 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_249E7B088())
        {
          goto LABEL_22;
        }

        sub_249E513DC();
        swift_dynamicCast();
        v17 = v21;
        v15 = v7;
        v16 = v8;
        if (!v21)
        {
          goto LABEL_23;
        }
      }

      sub_249E08728(v20);
    }

    else
    {
LABEL_23:
      v4 = v20;
LABEL_22:
      sub_249E08728(v4);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_22;
      }

      v14 = *(v5 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_249E4F638@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_249E7B058();
    sub_249E513DC();
    sub_249E517C8(&qword_28130D158, sub_249E513DC, MEMORY[0x277D85378]);
    sub_249E7AD88();
    result = v10;
    v3 = v11;
    v5 = v12;
    v4 = v13;
    v6 = v14;
  }

  else
  {
    v4 = 0;
    v7 = -1;
    v8 = -1 << *(result + 32);
    v3 = result + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v7 = ~(-1 << v9);
    }

    v6 = v7 & *(result + 56);
  }

  *a2 = result;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v6;
  a2[5] = 0;
  return result;
}

void sub_249E4F724(uint64_t result)
{
  v2 = v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    if (sub_249E7B088())
    {
      sub_249E513DC();
      swift_dynamicCast();
      if (v10)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v4 = v1[3];
    v3 = v1[4];
    if (!v3)
    {
      while (1)
      {
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v5 >= ((v1[2] + 64) >> 6))
        {
          v7 = 0;
          v6 = 0;
          goto LABEL_12;
        }

        v3 = *(v1[1] + 8 * v5);
        ++v4;
        if (v3)
        {
          v4 = v5;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v5 = v1[3];
LABEL_11:
    v6 = (v3 - 1) & v3;
    v7 = *(*(*v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v3)))));
    v8 = v7;
LABEL_12:
    v2[3] = v4;
    v2[4] = v6;
    if (v7)
    {
LABEL_13:
      v9 = v2[5];
      if (!__OFADD__(v9, 1))
      {
        v2[5] = v9 + 1;
        return;
      }

      goto LABEL_18;
    }
  }
}

uint64_t sub_249E4F83C(uint64_t a1)
{
  swift_defaultActor_initialize();
  sub_249E7A6A8();
  sub_249DFC07C(a1);
  *(v1 + 112) = v3;
  return v1;
}

void sub_249E4F8BC(void *a1)
{
  v2 = a1;
  v3 = sub_249E7A698();
  v4 = sub_249E7AE28();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_4();
    v5 = OUTLINED_FUNCTION_8_5();
    *v1 = 138412290;
    *(v1 + 4) = v2;
    *v5 = v2;
    v6 = v2;
    OUTLINED_FUNCTION_7_6(&dword_249DEE000, v7, v8, "Adding Device: %@");
    sub_249E2A8CC(v5, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15_1();
  }

  swift_beginAccess();
  v9 = v2;
  sub_249E63F70(&v11, v9);
  swift_endAccess();

  v10 = [objc_opt_self() defaultCenter];
  if (qword_28130D208 != -1)
  {
    swift_once();
  }

  [v10 postNotificationName:qword_28130E6E8 object:v9];
}

void sub_249E4FA38(void *a1)
{
  v2 = a1;
  v3 = sub_249E7A698();
  v4 = sub_249E7AE28();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_4();
    v5 = OUTLINED_FUNCTION_8_5();
    *v1 = 138412290;
    *(v1 + 4) = v2;
    *v5 = v2;
    v6 = v2;
    OUTLINED_FUNCTION_7_6(&dword_249DEE000, v7, v8, "Removing Device: %@");
    sub_249E2A8CC(v5, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15_1();
  }

  swift_beginAccess();
  v9 = sub_249E68458(v2);
  swift_endAccess();

  v10 = [objc_opt_self() defaultCenter];
  if (qword_28130D200 != -1)
  {
    swift_once();
  }

  [v10 postNotificationName:qword_28130E6E0 object:v2];
}

void sub_249E4FBA8(uint64_t a1)
{
  v2 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  sub_249E4F2F4(a1, v9, v10, v11, v12);
  v14 = v13;
  (*(v4 + 16))(v8, a1, v2);
  v15 = sub_249E7A698();
  v16 = sub_249E7AE28();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v17 = 134218242;
    *(v17 + 4) = sub_249E51FB4();
    *(v17 + 12) = 2080;
    OUTLINED_FUNCTION_0_13();
    sub_249E517C8(v18, v19, MEMORY[0x277CC9628]);
    v20 = sub_249E7B2D8();
    v22 = v21;
    (*(v4 + 8))(v8, v2);
    v23 = sub_249E3A958(v20, v22, &v29);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_249DEE000, v15, v16, "Removing %ld devices from home: %s", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v28);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  v24 = sub_249E514A8(v14);
  for (i = 0; ; ++i)
  {
    if (v24 == i)
    {

      return;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x24C204D50](i, v14);
    }

    else
    {
      if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v26 = *(v14 + 8 * i + 32);
    }

    v27 = v26;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_249E4FA38(v26);
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_249E4FE48(void *a1)
{
  v3 = v1;
  v4 = a1;
  v5 = sub_249E7A698();
  v6 = sub_249E7AE28();
  v34 = v4;

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_4();
    v7 = OUTLINED_FUNCTION_8_5();
    *v2 = 138412290;
    *(v2 + 4) = v4;
    *v7 = v4;
    v8 = v4;
    _os_log_impl(&dword_249DEE000, v5, v6, "Updating Device: %@", v2, 0xCu);
    sub_249E2A8CC(v7, &unk_27EF23C30, &qword_249E7DA20);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15_1();
  }

  swift_beginAccess();
  v9 = *(v3 + 112);
  if ((v9 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_249E7B058();
    sub_249E513DC();
    sub_249E517C8(&qword_28130D158, sub_249E513DC, MEMORY[0x277D85378]);
    sub_249E7AD88();
    v11 = v36;
    v10 = v37;
    v12 = v38;
    v13 = v39;
    v14 = v40;
  }

  else
  {
    v15 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(v9 + 56));
    swift_bridgeObjectRetain_n();
    v13 = 0;
    v11 = v9;
  }

  v18 = 0;
  v19 = (v12 + 64) >> 6;
  if (v11 < 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v20 = v13;
  v21 = v14;
  v22 = v13;
  if (!v14)
  {
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        goto LABEL_21;
      }

      v21 = *(v10 + 8 * v22);
      ++v20;
      if (v21)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:
    swift_once();
LABEL_27:
    [v14 postNotificationName:qword_28130E6D8 object:v18];

    return;
  }

LABEL_14:
  v23 = (v21 - 1) & v21;
  v24 = *(*(v11 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
  if (v24)
  {
    while (1)
    {
      v35 = v24;
      if (sub_249E502B4(&v35, v34))
      {
        break;
      }

      v13 = v22;
      v14 = v23;
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_16:
      if (sub_249E7B088())
      {
        sub_249E513DC();
        swift_dynamicCast();
        v24 = v35;
        v22 = v13;
        v23 = v14;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    OUTLINED_FUNCTION_12_4();
    v18 = v24;
    v28 = sub_249E7A698();
    v29 = sub_249E7AE28();

    if (os_log_type_enabled(v28, v29))
    {
      OUTLINED_FUNCTION_4();
      v30 = OUTLINED_FUNCTION_8_5();
      *v9 = 138412290;
      *(v9 + 4) = v18;
      *v30 = v18;
      v31 = v18;
      OUTLINED_FUNCTION_7_6(&dword_249DEE000, v32, v33, "Found and Updating Existing Device: %@");
      sub_249E2A8CC(v30, &unk_27EF23C30, &qword_249E7DA20);
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_15_1();
    }

    [v18 updateWithDevice:v34 updateState:0];
    v14 = [objc_opt_self() defaultCenter];
    if (qword_28130D1F8 == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_29;
  }

LABEL_21:
  OUTLINED_FUNCTION_12_4();
  v25 = sub_249E7A698();
  v26 = sub_249E7AE28();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_249DEE000, v25, v26, "No existing device found. Adding as a new device.", v27, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  sub_249E4F8BC(v34);
}

uint64_t sub_249E502B4(id *a1, void *a2)
{
  v4 = sub_249E7A628();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23750, &qword_249E7E130);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = [*a1 homeKitIdentifier];
  if (v18)
  {
    v19 = v18;
    sub_249E7A608();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = 1;
  __swift_storeEnumTagSinglePayload(v17, v20, 1, v4);
  v22 = [a2 homeKitIdentifier];
  if (v22)
  {
    v23 = v22;
    sub_249E7A608();

    v21 = 0;
  }

  __swift_storeEnumTagSinglePayload(v15, v21, 1, v4);
  v24 = *(v6 + 48);
  sub_249DF6A08(v17, v8);
  sub_249DF6A08(v15, &v8[v24]);
  if (__swift_getEnumTagSinglePayload(v8, 1, v4) != 1)
  {
    sub_249DF6A08(v8, v12);
    if (__swift_getEnumTagSinglePayload(&v8[v24], 1, v4) != 1)
    {
      v26 = v32;
      v27 = &v8[v24];
      v28 = v31;
      (*(v32 + 32))(v31, v27, v4);
      sub_249E517C8(&qword_27EF23760, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v25 = sub_249E7AA78();
      v29 = *(v26 + 8);
      v29(v28, v4);
      sub_249E2A8CC(v15, &qword_27EF234B0, &qword_249E7D910);
      sub_249E2A8CC(v17, &qword_27EF234B0, &qword_249E7D910);
      v29(v12, v4);
      sub_249E2A8CC(v8, &qword_27EF234B0, &qword_249E7D910);
      return v25 & 1;
    }

    sub_249E2A8CC(v15, &qword_27EF234B0, &qword_249E7D910);
    sub_249E2A8CC(v17, &qword_27EF234B0, &qword_249E7D910);
    (*(v32 + 8))(v12, v4);
    goto LABEL_11;
  }

  sub_249E2A8CC(v15, &qword_27EF234B0, &qword_249E7D910);
  sub_249E2A8CC(v17, &qword_27EF234B0, &qword_249E7D910);
  if (__swift_getEnumTagSinglePayload(&v8[v24], 1, v4) != 1)
  {
LABEL_11:
    sub_249E2A8CC(v8, &qword_27EF23750, &qword_249E7E130);
    v25 = 0;
    return v25 & 1;
  }

  sub_249E2A8CC(v8, &qword_27EF234B0, &qword_249E7D910);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_249E50708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DropInStateManager.Context(0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  (*(v12 + 16))(v15 - v14, a1, v10);
  sub_249E30560(a2, v9);
  v17 = sub_249E7A698();
  v18 = sub_249E7AE28();
  if (os_log_type_enabled(v17, v18))
  {
    v38 = a2;
    v19 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39[0] = v37;
    *v19 = 136315394;
    OUTLINED_FUNCTION_0_13();
    sub_249E517C8(v20, v21, MEMORY[0x277CC9628]);
    v36 = v18;
    v22 = sub_249E7B2D8();
    v23 = a1;
    v25 = v24;
    (*(v12 + 8))(v16, v10);
    v26 = sub_249E3A958(v22, v25, v39);
    a1 = v23;

    *(v19 + 4) = v26;
    *(v19 + 12) = 2080;
    v27 = sub_249E30088();
    v29 = v28;
    sub_249E30628(v9);
    v30 = sub_249E3A958(v27, v29, v39);

    *(v19 + 14) = v30;
    _os_log_impl(&dword_249DEE000, v17, v36, "Updating Device with Accessory ID: %s, context = %s", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1();
    a2 = v38;
    OUTLINED_FUNCTION_1();
  }

  else
  {

    sub_249E30628(v9);
    (*(v12 + 8))(v16, v10);
  }

  v31 = swift_beginAccess();
  v32 = *(v3 + 112);
  MEMORY[0x28223BE20](v31);
  *&v35[-16] = a1;

  v33 = sub_249E5159C(sub_249E514CC, &v35[-32], v32);
  MEMORY[0x28223BE20](v33);
  *&v35[-16] = v3;
  *&v35[-8] = a2;
  sub_249E4F0C4(sub_249E517AC, &v35[-32], v33);
}

void sub_249E50A8C(id *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = sub_249E7A698();
  v6 = sub_249E7AE28();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_249DEE000, v5, v6, "Updating %@", v7, 0xCu);
    sub_249E2A8CC(v8, &unk_27EF23C30, &qword_249E7DA20);
    MEMORY[0x24C205870](v8, -1, -1);
    MEMORY[0x24C205870](v7, -1, -1);
  }

  [v4 setState_];
  v10 = sub_249E7AA88();
  [v4 setStateReason_];

  type metadata accessor for DropInStateManager.Context(0);
  v11 = sub_249E7A538();
  [v4 setStateExpiration_];

  v12 = [objc_opt_self() defaultCenter];
  if (qword_28130D1F8 != -1)
  {
    swift_once();
  }

  [v12 postNotificationName:qword_28130E6D8 object:v4];
}

uint64_t sub_249E50C80()
{
  swift_beginAccess();

  v0 = sub_249E6972C();

  v1 = sub_249E7A698();
  v2 = sub_249E7AE28();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_4();
    *v3 = 134217984;
    *(v3 + 4) = v0;
    _os_log_impl(&dword_249DEE000, v1, v2, "Drop In Devices (%ld):", v3, 0xCu);
    OUTLINED_FUNCTION_15();
  }

  v5 = sub_249E4F638(v4, &v17);
  while (1)
  {
    sub_249E4F724(v5);
    if (!v7)
    {
      break;
    }

    v8 = v6;
    v9 = v7;
    v10 = v7;
    v11 = sub_249E7A698();
    v12 = sub_249E7AE28();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 134218242;
      *(v13 + 4) = v8;
      *(v13 + 12) = 2112;
      *(v13 + 14) = v10;
      *v14 = v9;
      v15 = v10;
      _os_log_impl(&dword_249DEE000, v11, v12, "+ %ld: %@", v13, 0x16u);
      sub_249E2A8CC(v14, &unk_27EF23C30, &qword_249E7DA20);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
      v10 = v11;
      v11 = v15;
    }
  }

  return sub_249E08728(v17);
}

uint64_t sub_249E50E80()
{

  v1 = OBJC_IVAR____TtC10DropInCore13DeviceManager_logger;
  sub_249E7A6B8();
  OUTLINED_FUNCTION_28_0();
  (*(v2 + 8))(v0 + v1);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249E50EE8()
{
  sub_249E50E80();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for DeviceManager(uint64_t a1)
{
  result = qword_28130E028;
  if (!qword_28130E028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E50F68(uint64_t a1)
{
  result = sub_249E7A6B8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_249E51010(id *a1, uint64_t a2, SEL *a3)
{
  v37 = a2;
  v5 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v36 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23750, &qword_249E7E130);
  OUTLINED_FUNCTION_28_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v36 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - v22;
  v24 = [*a1 *a3];
  if (v24)
  {
    v25 = v24;
    sub_249E7A608();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v23, v26, 1, v5);
  (*(v7 + 16))(v21, v37, v5);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
  v27 = *(v11 + 48);
  sub_249DF6A08(v23, v14);
  sub_249DF6A08(v21, &v14[v27]);
  OUTLINED_FUNCTION_16_3(v14);
  if (!v29)
  {
    sub_249DF6A08(v14, v18);
    OUTLINED_FUNCTION_16_3(&v14[v27]);
    if (!v29)
    {
      v30 = &v14[v27];
      v31 = v36;
      (*(v7 + 32))(v36, v30, v5);
      OUTLINED_FUNCTION_0_13();
      sub_249E517C8(v32, v33, MEMORY[0x277CC9610]);
      v28 = sub_249E7AA78();
      v34 = *(v7 + 8);
      v34(v31, v5);
      sub_249E2A8CC(v21, &qword_27EF234B0, &qword_249E7D910);
      sub_249E2A8CC(v23, &qword_27EF234B0, &qword_249E7D910);
      v34(v18, v5);
      sub_249E2A8CC(v14, &qword_27EF234B0, &qword_249E7D910);
      return v28 & 1;
    }

    OUTLINED_FUNCTION_15_4(v21);
    OUTLINED_FUNCTION_15_4(v23);
    (*(v7 + 8))(v18, v5);
LABEL_12:
    sub_249E2A8CC(v14, &qword_27EF23750, &qword_249E7E130);
    v28 = 0;
    return v28 & 1;
  }

  OUTLINED_FUNCTION_15_4(v21);
  OUTLINED_FUNCTION_15_4(v23);
  OUTLINED_FUNCTION_16_3(&v14[v27]);
  if (!v29)
  {
    goto LABEL_12;
  }

  sub_249E2A8CC(v14, &qword_27EF234B0, &qword_249E7D910);
  v28 = 1;
  return v28 & 1;
}

unint64_t sub_249E513DC()
{
  result = qword_28130D160;
  if (!qword_28130D160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130D160);
  }

  return result;
}

uint64_t sub_249E51420()
{
  result = sub_249E7AA88();
  qword_28130E6E8 = result;
  return result;
}

void *sub_249E51458()
{
  result = OUTLINED_FUNCTION_14_3();
  qword_28130E6E0 = result;
  return result;
}

void *sub_249E51480()
{
  result = OUTLINED_FUNCTION_14_3();
  qword_28130E6D8 = result;
  return result;
}

uint64_t sub_249E514A8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_249E7B068();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_249E514F4(unint64_t result, char a2, uint64_t a3)
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

unint64_t sub_249E51518(uint64_t a1, uint64_t a2)
{
  sub_249E7AF68();
  result = sub_249E7B048();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_249E5159C(uint64_t (*a1)(id *), unint64_t *a2, uint64_t a3)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277D84FA0];
    v21 = MEMORY[0x277D84FA0];
    sub_249E7B058();
    while (1)
    {
      while (1)
      {
        if (!sub_249E7B088())
        {

          return v4;
        }

        sub_249E513DC();
        swift_dynamicCast();
        v6 = a1(&v20);
        if (v3)
        {

          v19 = v20;

          return v4;
        }

        v7 = v20;
        if (v6)
        {
          break;
        }
      }

      if (*(v4 + 24) <= *(v4 + 16))
      {
        sub_249E64EF8();
      }

      v4 = v21;
      result = sub_249E7AF68();
      v9 = v4 + 56;
      v10 = -1 << *(v4 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      if (((-1 << v11) & ~*(v4 + 56 + 8 * (v11 >> 6))) == 0)
      {
        break;
      }

      v13 = __clz(__rbit64((-1 << v11) & ~*(v4 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
LABEL_18:
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v4 + 48) + 8 * v13) = v7;
      ++*(v4 + 16);
    }

    v14 = 0;
    v15 = (63 - v10) >> 6;
    while (++v12 != v15 || (v14 & 1) == 0)
    {
      v16 = v12 == v15;
      if (v12 == v15)
      {
        v12 = 0;
      }

      v14 |= v16;
      v17 = *(v9 + 8 * v12);
      if (v17 != -1)
      {
        v13 = __clz(__rbit64(~v17)) + (v12 << 6);
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = sub_249E51810(a1, a2, a3);
    if (!v3)
    {
      return v18;
    }

    return v4;
  }

  return result;
}

uint64_t sub_249E517C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t *sub_249E51810(uint64_t (*a1)(id *), unint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v29 = a1;
  v31[1] = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  v9 = 8 * v8;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v30 = v4;
    v27 = &v25;
    MEMORY[0x28223BE20](a1);
    v25 = v8;
    v26 = (&v25 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_249E6697C(0, v8, v26);
    v28 = 0;
    v10 = 0;
    v8 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v9 = v12 & *(v5 + 56);
    v13 = (v11 + 63) >> 6;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v17 = v14 | (v10 << 6);
      v4 = v5;
      v31[0] = *(*(v5 + 48) + 8 * v17);
      v18 = v31[0];
      v19 = v30;
      v20 = v29(v31);
      v30 = v19;
      if (v19)
      {

        swift_willThrow();
        return a2;
      }

      v21 = v20;

      v5 = v4;
      if (v21)
      {
        *(v26 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
          return sub_249E51CB0(v26, v25, v28, v5);
        }
      }
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v13)
      {
        return sub_249E51CB0(v26, v25, v28, v5);
      }

      v16 = *(v8 + 8 * v10);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  a2 = sub_249E51C20(v24, v8, v5, v29);

  MEMORY[0x24C205870](v24, -1, -1);
  return a2;
}

void sub_249E51AB4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
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
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_249E51CB0(a1, a2, v20, a3);
        return;
      }
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
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_249E51C20(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_249E51AB4(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_249E51CB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24210, &unk_249E80038);
  result = sub_249E7B108();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_249E7AF68();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void (*sub_249E51E9C(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_1_8(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x24C204D50](v5, v4);
  }

  *v3 = v7;
  return sub_249E51F04;
}

void (*sub_249E51F0C(uint64_t a1, unint64_t a2, uint64_t a3))(id *)
{
  OUTLINED_FUNCTION_1_8(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x24C204D50](v5, v4);
  }

  *v3 = v7;
  return sub_249E51FD4;
}

unint64_t OUTLINED_FUNCTION_1_8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_249DF1AC8(a3);

  return sub_249E514F4(a2, v5, a3);
}

void OUTLINED_FUNCTION_7_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_8_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_10_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_4()
{
  sub_249E08728(v0);
}

uint64_t OUTLINED_FUNCTION_14_3()
{

  return sub_249E7AA88();
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1)
{

  return sub_249E2A8CC(a1, v1, v2);
}

uint64_t sub_249E52140(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_249E521BC(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10DropInCore11HomeManager_homesLoaded;
  OUTLINED_FUNCTION_20_3(v2 + OBJC_IVAR____TtC10DropInCore11HomeManager_homesLoaded, a2);
  return *(v2 + v3);
}

uint64_t sub_249E5221C(char a1)
{
  v3 = OBJC_IVAR____TtC10DropInCore11HomeManager_homesLoaded;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void HomeManager.init(options:cachePolicy:)()
{
  OUTLINED_FUNCTION_15_0();
  v22 = v1;
  v23 = v2;
  v21 = sub_249E7AE68();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = sub_249E7AE58();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v10 = sub_249E7A958();
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_1_0();
  v0[OBJC_IVAR____TtC10DropInCore11HomeManager_homesLoaded] = 0;
  v20 = OBJC_IVAR____TtC10DropInCore11HomeManager_serialQueue;
  sub_249DF691C(0, &qword_28130D228, 0x277D85C78);
  sub_249E7A888();
  v26 = v11;
  MEMORY[0x24C204750](0x6E614D656D6F682ELL, 0xEC00000072656761);
  sub_249E7A938();
  v25 = MEMORY[0x277D84F90];
  sub_249E55078(&qword_28130D230, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_2(&unk_28130D280);
  sub_249E7B018();
  (*(v4 + 104))(v8, *MEMORY[0x277D85260], v21);
  v12 = v0;
  *&v0[v20] = sub_249E7AE98();
  *&v0[OBJC_IVAR____TtC10DropInCore11HomeManager_homesLoadedHandlers] = MEMORY[0x277D84F90];
  v13 = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
  *&v0[OBJC_IVAR____TtC10DropInCore11HomeManager_delegatesToQueues] = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277CD1C60]) initWithOptions:v22 cachePolicy:v23];
  [v14 setDiscretionary_];
  v15 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v14 setDelegateQueue_];

  v16 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
  *&v12[OBJC_IVAR____TtC10DropInCore11HomeManager_manager] = v16;
  v24.receiver = v12;
  v24.super_class = type metadata accessor for HomeManager();
  v17 = objc_msgSendSuper2(&v24, sel_init);
  v18 = *&v17[OBJC_IVAR____TtC10DropInCore11HomeManager_manager];
  v19 = v17;
  [v18 setDelegate_];

  OUTLINED_FUNCTION_6_1();
}

id HomeManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t HomeManager.init()()
{
  v0 = objc_allocWithZone(type metadata accessor for HomeManager());
  HomeManager.init(options:cachePolicy:)();
  v2 = v1;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

void sub_249E526DC()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v4 = v3;
  sub_249E7A928();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_22();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v7);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_13_6();
  v8 = swift_allocObject();
  v8[2] = v0;
  v8[3] = v4;
  v8[4] = v2;
  v18[4] = sub_249E55054;
  v18[5] = v8;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v18[2] = v9;
  v18[3] = &block_descriptor_5;
  v10 = _Block_copy(v18);

  sub_249E7A938();
  OUTLINED_FUNCTION_2_14();
  sub_249E55078(v11, v12, MEMORY[0x277D851A0]);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_2(&qword_28130D2A0);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_17_2();
  sub_249E7B018();
  v13 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x24C204A90](v13);
  _Block_release(v10);
  v14 = OUTLINED_FUNCTION_6_7();
  v15(v14);
  v16 = OUTLINED_FUNCTION_7_7();
  v17(v16);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

void sub_249E52918(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC10DropInCore11HomeManager_homesLoaded;
    swift_beginAccess();
    if (v6[v7])
    {
      v8 = [*&v6[OBJC_IVAR____TtC10DropInCore11HomeManager_manager] homes];
      sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
      v9 = sub_249E7ABE8();

      a2(v9);
    }

    else
    {
      v10 = swift_allocObject();
      *(v10 + 16) = a2;
      *(v10 + 24) = a3;
      v11 = OBJC_IVAR____TtC10DropInCore11HomeManager_homesLoadedHandlers;
      swift_beginAccess();

      sub_249E3A1AC();
      v12 = *(*&v6[v11] + 16);
      sub_249E3A2C4(v12);
      v13 = *&v6[v11];
      *(v13 + 16) = v12 + 1;
      v14 = v13 + 16 * v12;
      *(v14 + 32) = sub_249E55674;
      *(v14 + 40) = v10;
      *&v6[v11] = v13;
      swift_endAccess();
    }
  }

  else
  {
    a2(MEMORY[0x277D84F90]);
  }
}

void sub_249E52B3C(uint64_t a1, uint64_t a2)
{
  sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
  v3 = sub_249E7ABD8();
  (*(a2 + 16))(a2, v3);
}

void sub_249E52BB8()
{
  v0 = dispatch_group_create();
  dispatch_group_enter(v0);
  OUTLINED_FUNCTION_22();
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_249E526DC();

  sub_249E7AE48();
}

void sub_249E52C9C()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_22();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v5);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_13_6();
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v0;
  v17[4] = sub_249E5511C;
  v17[5] = v6;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v17[2] = v7;
  v17[3] = &block_descriptor_13;
  v8 = _Block_copy(v17);
  v9 = v2;
  swift_unknownObjectRetain();

  sub_249E7A938();
  OUTLINED_FUNCTION_2_14();
  sub_249E55078(v10, v11, MEMORY[0x277D851A0]);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_2(&qword_28130D2A0);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_17_2();
  sub_249E7B018();
  v12 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x24C204A90](v12);
  _Block_release(v8);
  v13 = OUTLINED_FUNCTION_6_7();
  v14(v13);
  v15 = OUTLINED_FUNCTION_7_7();
  v16(v15);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

void sub_249E52ECC(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      sub_249DF691C(0, &qword_28130D228, 0x277D85C78);
      v7 = sub_249E7AE78();
    }

    v8 = *&v6[OBJC_IVAR____TtC10DropInCore11HomeManager_delegatesToQueues];
    v9 = a2;
    [v8 setObject:v7 forKey:a3];
  }
}

uint64_t sub_249E53014()
{
  sub_249E52BB8();
  v1 = [*(v0 + OBJC_IVAR____TtC10DropInCore11HomeManager_manager) homes];
  sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
  v2 = sub_249E7ABE8();

  return v2;
}

id sub_249E53144()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10DropInCore11HomeManager_manager) currentHome];

  return v1;
}

id sub_249E531C8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10DropInCore11HomeManager_manager) currentAccessory];

  return v1;
}

id HomeManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_249E532D0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 homes];
    sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
    v6 = sub_249E7ABE8();

    v7 = sub_249E51FB4();
    for (i = 0; v7 != i; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C204D50](i, v6);
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

      [v9 setDelegate_];
    }

    v25 = a2;

    v11 = OBJC_IVAR____TtC10DropInCore11HomeManager_homesLoaded;
    swift_beginAccess();
    v4[v11] = 1;
    v12 = OBJC_IVAR____TtC10DropInCore11HomeManager_homesLoadedHandlers;
    swift_beginAccess();
    v24 = v12;
    v13 = *&v4[v12];
    v14 = *(v13 + 16);
    v15 = OBJC_IVAR____TtC10DropInCore11HomeManager_manager;

    v16 = 0;
    v17 = v13 + 40;
    while (v14 != v16)
    {
      if (v16 >= *(v13 + 16))
      {
        goto LABEL_18;
      }

      ++v16;
      v18 = *(v17 - 8);
      v19 = *&v4[v15];

      v20 = [v19 homes];
      v21 = sub_249E7ABE8();

      v26 = v21;
      v18(&v26);

      v17 += 16;
    }

    *&v4[v24] = MEMORY[0x277D84F90];

    v22 = swift_allocObject();
    *(v22 + 16) = v25;
    v23 = v25;
    sub_249E53670(sub_249E5566C, v22);
  }
}

void sub_249E5356C(void *a1, void *a2)
{
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v4 = [a2 homes];
    sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
    sub_249E7ABE8();

    v5 = sub_249E7ABD8();
    [a1 didUpdateHomes_];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_249E53670(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a1;
  v40 = a2;
  v38 = sub_249E7A928();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_249E7A958();
  v6 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_249E7A998();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR____TtC10DropInCore11HomeManager_serialQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_249E7A9B8();
  result = (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v42 = OBJC_IVAR____TtC10DropInCore11HomeManager_delegatesToQueues;
  v15 = [*(v3 + OBJC_IVAR____TtC10DropInCore11HomeManager_delegatesToQueues) keyEnumerator];
  v16 = [v15 allObjects];

  v17 = sub_249E7ABE8();
  v18 = sub_249E54F24(v17);

  if (!v18)
  {
    return result;
  }

  result = sub_249E51FB4();
  v43 = result;
  if (result)
  {
    if (v43 >= 1)
    {
      v19 = 0;
      v41 = v18 & 0xC000000000000001;
      v33 = (v4 + 8);
      v34 = v47;
      v32 = (v6 + 8);
      v20 = v35;
      do
      {
        if (v41)
        {
          v21 = MEMORY[0x24C204D50](v19, v18);
        }

        else
        {
          v21 = *(v18 + 8 * v19 + 32);
          swift_unknownObjectRetain();
        }

        v22 = [*(v3 + v42) objectForKey_];
        if (v22)
        {
          v23 = v22;
          v24 = swift_allocObject();
          v25 = v40;
          v24[2] = v39;
          v24[3] = v25;
          v24[4] = v21;
          v47[2] = sub_249E5551C;
          v47[3] = v24;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          v47[0] = sub_249E52140;
          v47[1] = &block_descriptor_104;
          v44 = _Block_copy(aBlock);

          swift_unknownObjectRetain();
          sub_249E7A938();
          v45 = MEMORY[0x277D84F90];
          sub_249E55078(&qword_28130D2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
          sub_249E550C0(&qword_28130D2A0, &unk_27EF23D50, &unk_249E80260);
          v26 = v18;
          v27 = v37;
          v28 = v38;
          sub_249E7B018();
          v29 = v44;
          MEMORY[0x24C204A90](0, v20, v27, v44);
          _Block_release(v29);
          swift_unknownObjectRelease();

          v30 = v27;
          v18 = v26;
          (*v33)(v30, v28);
          (*v32)(v20, v36);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v19;
      }

      while (v43 != v19);
    }

LABEL_16:
    __break(1u);
    return result;
  }
}

void sub_249E53C24(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [a2 setDelegate_];
    v5 = [a2 accessories];
    sub_249DF691C(0, &qword_28130D270, 0x277CD1650);
    v6 = sub_249E7ABE8();

    v7 = sub_249E51FB4();
    for (i = 0; ; ++i)
    {
      if (v7 == i)
      {

        v11 = swift_allocObject();
        *(v11 + 16) = a2;
        v12 = a2;
        sub_249E53670(sub_249E55648, v11);

        return;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C204D50](i, v6);
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        break;
      }

      [v9 setDelegate_];
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

void sub_249E53E58()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_249E7A928();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_22();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v9);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_8_3();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  *(v10 + 24) = v6;
  v21[4] = v4;
  v21[5] = v10;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v21[2] = v11;
  v21[3] = v2;
  v12 = _Block_copy(v21);

  v13 = v6;
  sub_249E7A938();
  OUTLINED_FUNCTION_2_14();
  sub_249E55078(v14, v15, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  sub_249E550C0(&qword_28130D2A0, &unk_27EF23D50, &unk_249E80260);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_17_2();
  sub_249E7B018();
  v16 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x24C204A90](v16);
  _Block_release(v12);
  v17 = OUTLINED_FUNCTION_6_7();
  v18(v17);
  v19 = OUTLINED_FUNCTION_7_7();
  v20(v19);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

void sub_249E54120()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_249E7A928();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_22();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v9);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_8_3();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  *(v10 + 24) = v6;
  v21[4] = v4;
  v21[5] = v10;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v21[2] = v11;
  v21[3] = v2;
  v12 = _Block_copy(v21);

  v13 = v6;
  sub_249E7A938();
  OUTLINED_FUNCTION_2_14();
  sub_249E55078(v14, v15, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  sub_249E550C0(&qword_28130D2A0, &unk_27EF23D50, &unk_249E80260);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_17_2();
  sub_249E7B018();
  v16 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x24C204A90](v16);
  _Block_release(v12);
  v17 = OUTLINED_FUNCTION_6_7();
  v18(v17);
  v19 = OUTLINED_FUNCTION_7_7();
  v20(v19);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

Swift::Void __swiftcall HomeManager.home(_:didAdd:)(HMHome _, HMAccessory didAdd)
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_22();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v7);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_13_6();
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v2;
  v20[4] = sub_249E551A8;
  v20[5] = v8;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v20[2] = v9;
  v20[3] = &block_descriptor_48;
  v10 = _Block_copy(v20);

  v11 = v4;
  v12 = v2;
  sub_249E7A938();
  OUTLINED_FUNCTION_2_14();
  sub_249E55078(v13, v14, MEMORY[0x277D851A0]);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_2(&qword_28130D2A0);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_17_2();
  sub_249E7B018();
  v15 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x24C204A90](v15);
  _Block_release(v10);
  v16 = OUTLINED_FUNCTION_6_7();
  v17(v16);
  v18 = OUTLINED_FUNCTION_7_7();
  v19(v18);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

void *sub_249E545E0(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    [a2 setDelegate_];
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    *(v7 + 24) = a2;
    v8 = a3;
    v9 = a2;
    sub_249E53670(sub_249E555DC, v7);
  }

  return result;
}

void sub_249E547E4()
{
  OUTLINED_FUNCTION_15_0();
  v23 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_249E7A928();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_22();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_14_4(v10);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_13_6();
  v11 = swift_allocObject();
  v11[2] = v0;
  v11[3] = v7;
  v11[4] = v5;
  v24[4] = v3;
  v24[5] = v11;
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_4(COERCE_DOUBLE(1107296256));
  v24[2] = v12;
  v24[3] = v23;
  v13 = _Block_copy(v24);

  v14 = v7;
  v15 = v5;
  sub_249E7A938();
  OUTLINED_FUNCTION_2_14();
  sub_249E55078(v16, v17, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  sub_249E550C0(&qword_28130D2A0, &unk_27EF23D50, &unk_249E80260);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_17_2();
  sub_249E7B018();
  v18 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x24C204A90](v18);
  _Block_release(v13);
  v19 = OUTLINED_FUNCTION_6_7();
  v20(v19);
  v21 = OUTLINED_FUNCTION_7_7();
  v22(v21);
  OUTLINED_FUNCTION_21_3();

  OUTLINED_FUNCTION_6_1();
}

void *sub_249E54A20(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    [a2 setDelegate_];
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    v8 = a2;
    v9 = a3;
    sub_249E53670(sub_249E55594, v7);
  }

  return result;
}

void *sub_249E54B80(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_20_3(a1 + 16, a2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    OUTLINED_FUNCTION_8_3();
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    v11 = a2;
    v12 = a3;
    sub_249E53670(a5, v10);
  }

  return result;
}

id sub_249E54C18(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  result = [a1 respondsToSelector_];
  if (result)
  {
    v9 = *a4;

    return [a1 v9];
  }

  return result;
}

void *sub_249E54DC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_20_3(a1 + 16, a2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    OUTLINED_FUNCTION_22();
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    v9 = a2;
    sub_249E53670(a4, v8);
  }

  return result;
}

id sub_249E54E4C(void *a1, uint64_t a2, const char **a3)
{
  result = [a1 respondsToSelector_];
  if (result)
  {
    v7 = *a3;

    return [a1 v7];
  }

  return result;
}

uint64_t sub_249E54F24(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_249E7B1C8();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_249DF686C(v3, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23E80, qword_249E80078);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_249E7B1A8();
    sub_249E7B1D8();
    sub_249E7B1E8();
    sub_249E7B1B8();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249E55078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_249E550C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_44Tm()
{

  v1 = OUTLINED_FUNCTION_12_5();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return sub_249E7A958();
}

uint64_t OUTLINED_FUNCTION_20_3(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21_3()
{
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return sub_249E7A928();
}

uint64_t OUTLINED_FUNCTION_23_2(unint64_t *a1)
{

  return sub_249E550C0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

double sub_249E55870@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_249DFDA24(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_249DF686C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_249E558D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_249DFDA9C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_249DF686C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_249E55938()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23710, &unk_249E7DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249E7DF30;
  *(inited + 32) = 6580589;
  *(inited + 40) = 0xE300000000000000;
  v2 = sub_249E7A5D8();
  v3 = MEMORY[0x277D837D0];
  *(inited + 48) = v2;
  *(inited + 56) = v4;
  *(inited + 72) = v3;
  *(inited + 80) = 6580592;
  *(inited + 88) = 0xE300000000000000;
  v5 = type metadata accessor for MessageContainer(0);
  v6 = (v0 + *(v5 + 20));
  v7 = v6[1];
  *(inited + 96) = *v6;
  *(inited + 104) = v7;
  *(inited + 120) = v3;
  *(inited + 128) = 112;
  *(inited + 136) = 0xE100000000000000;
  v8 = *(v0 + *(v5 + 24));
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
  *(inited + 144) = v8;

  return sub_249E7AA08();
}

uint64_t sub_249E55A40@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v29 - v5);
  v7 = sub_249E7A628();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249E55870(6580589, 0xE300000000000000, a1, &v33);
  if (!v34)
  {
    goto LABEL_14;
  }

  if ((OUTLINED_FUNCTION_0_14(v11, v12, v13, MEMORY[0x277D837D0]) & 1) == 0)
  {
    goto LABEL_17;
  }

  v30 = a2;
  v35 = v31;
  sub_249E55870(6580592, 0xE300000000000000, a1, &v33);
  if (!v34)
  {
    goto LABEL_13;
  }

  if ((OUTLINED_FUNCTION_0_14(v14, v15, v16, MEMORY[0x277D837D0]) & 1) == 0)
  {
    goto LABEL_16;
  }

  v17 = v32;
  v29 = v31;
  sub_249E55870(112, 0xE100000000000000, a1, &v33);

  if (!v34)
  {
LABEL_13:

LABEL_14:

    v22 = &unk_27EF23C40;
    v23 = &qword_249E7D8E0;
    v24 = &v33;
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23718, &qword_249E7E080);
  if ((OUTLINED_FUNCTION_0_14(v18, v19, v20, v18) & 1) == 0)
  {
LABEL_16:

LABEL_17:

    goto LABEL_18;
  }

  v21 = v31;
  sub_249E7A5C8();

  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {

    v22 = &qword_27EF234B0;
    v23 = &qword_249E7D910;
    v24 = v6;
LABEL_15:
    sub_249DF6A78(v24, v22, v23);
LABEL_18:
    sub_249DFE8A4();
    swift_allocError();
    return swift_willThrow();
  }

  v26 = *(v8 + 32);
  v26(v10, v6, v7);
  v27 = v30;
  v26(v30, v10, v7);
  result = type metadata accessor for MessageContainer(0);
  v28 = &v27[*(result + 20)];
  *v28 = v29;
  *(v28 + 1) = v17;
  *&v27[*(result + 24)] = v21;
  return result;
}

uint64_t sub_249E55D58()
{
  sub_249E7B128();

  strcpy(v5, "[Identifier = ");
  HIBYTE(v5[1]) = -18;
  sub_249E7A628();
  sub_249E55FBC(&qword_28130D350, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v1 = sub_249E7B2D8();
  MEMORY[0x24C204750](v1);

  MEMORY[0x24C204750](0x3D20656D614E202CLL, 0xE900000000000020);
  v2 = type metadata accessor for MessageContainer(0);
  MEMORY[0x24C204750](*(v0 + *(v2 + 20)), *(v0 + *(v2 + 20) + 8));
  MEMORY[0x24C204750](0x616F6C796150202CLL, 0xEC000000203D2064);
  v3 = sub_249E7B2D8();
  MEMORY[0x24C204750](v3);

  MEMORY[0x24C204750](0x5D736574796220, 0xE700000000000000);
  return v5[0];
}

uint64_t sub_249E55F18(uint64_t a1)
{
  result = sub_249E55FBC(&qword_27EF23EF0, type metadata accessor for MessageContainer, &unk_249E800B0);
  *(a1 + 32) = result;
  return result;
}

uint64_t type metadata accessor for MessageContainer(uint64_t a1)
{
  result = qword_27EF23EF8;
  if (!qword_27EF23EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E55FBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_249E5602C(uint64_t a1)
{
  sub_249E7A628();
  if (v1 <= 0x3F)
  {
    sub_249E560B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_249E560B8()
{
  if (!qword_27EF23F08)
  {
    v0 = sub_249E7AA28();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF23F08);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

unint64_t sub_249E5613C(uint64_t a1, uint64_t a2)
{
  v2 = sub_249E7B268();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_249E56188(char a1)
{
  result = 0x6C7070612E6D6F63;
  switch(a1)
  {
    case 2:
    case 5:
      return result;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

_BYTE *_s7RapportOwst(_BYTE *result, int a2, int a3)
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

void *sub_249E56328(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_249E7B068();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x277D84F90];
  result = sub_249E5DA6C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C204D50](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v9 = *(v10 + 16);
      v8 = *(v10 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_249E5DA6C((v8 > 1), v9 + 1, 1);
      }

      ++v5;
      *(v10 + 16) = v9 + 1;
      *(v10 + 8 * v9 + 32) = v7;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_249E564B8(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t), uint64_t *a3, uint64_t *a4, void (*a5)(_BYTE *, unint64_t))
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v18 = MEMORY[0x277D84F90];
    a2(0, v5, 0);
    v6 = v18;
    v11 = a1 + 32;
    do
    {
      sub_249E29D88(v11, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24090, &qword_249E80240);
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      swift_dynamicCast();
      v18 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        a2(v12 > 1, v13 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v13 + 1;
      a5(v17, v6 + 40 * v13 + 32);
      v11 += 48;
      --v5;
    }

    while (v5);
  }

  return v6;
}

void *sub_249E56600(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_249E7B068();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x277D84F90];
  result = sub_249E5DAEC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C204D50](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_249DF691C(0, &unk_28130D190, 0x277CD1EE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24090, &qword_249E80240);
      swift_dynamicCast();
      v10 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_249E5DAEC((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      *(v3 + 16) = v8 + 1;
      sub_249E29DEC(v9, (v3 + 48 * v8 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void *sub_249E5677C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_249E7B068();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v9 = MEMORY[0x277D84F90];
  result = sub_249E5DB0C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v9;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C204D50](v5, a1);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24050, &qword_249E80208);
      swift_dynamicCast();
      v9 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_249E5DB0C((v6 > 1), v7 + 1, 1);
        v3 = v9;
      }

      ++v5;
      *(v3 + 16) = v7 + 1;
      sub_249DFDB78(&v8, (v3 + 32 * v7 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_249E568E0(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_249E7B068())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x277D84FA0];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24060, &qword_249E80218);
  v3 = sub_249E7B108();
  if (v2)
  {
LABEL_4:

    sub_249E7B058();
    sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
    sub_249E5E70C();
    sub_249E7AD88();
    v1 = v30;
    v4 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
    goto LABEL_11;
  }

LABEL_7:
  v8 = -1 << *(v1 + 32);
  v4 = v1 + 56;
  v5 = ~v8;
  v9 = -v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v7 = v10 & *(v1 + 56);

  v6 = 0;
LABEL_11:
  v11 = v3 + 56;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v7)
  {
    v12 = v6;
LABEL_21:
    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v16 = *(*(v1 + 48) + ((v12 << 9) | (8 * v15)));
    while (1)
    {
      sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
      swift_dynamicCast();
      v17 = sub_249E7B0A8();
      v18 = -1 << *(v3 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
      *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v26 = *(v3 + 48) + 40 * v21;
      *(v26 + 32) = v29;
      *v26 = v27;
      *(v26 + 16) = v28;
      ++*(v3 + 16);
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_14:
      v13 = sub_249E7B088();
      if (!v13)
      {
        goto LABEL_33;
      }

      *&v27 = v13;
      sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
      swift_dynamicCast();
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
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = v6;
    while (1)
    {
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v12 >= ((v5 + 64) >> 6))
      {
LABEL_33:
        sub_249E08728(v1);

        return;
      }

      v7 = *(v4 + 8 * v12);
      ++v14;
      if (v7)
      {
        v6 = v12;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
}

void sub_249E56C58(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24070, &qword_249E80228);
    OUTLINED_FUNCTION_286();
    v2 = sub_249E7B258();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_23_3();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (a1[6] + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_249DF686C(a1[7] + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_249DFDB78(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_249DFDB78(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_249DFDB78(v31, v32);
    v15 = sub_249E7B0A8() & ~(-1 << *(v2 + 32));
    if (((-1 << v15) & ~*(v8 + 8 * (v15 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_42_1();
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        if (*(v8 + 8 * v16) != -1)
        {
          OUTLINED_FUNCTION_41_1();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_43_2();
LABEL_21:
    v6 &= v6 - 1;
    OUTLINED_FUNCTION_40_2();
    *(v8 + v20) |= v21;
    v23 = *(v2 + 48) + 40 * v22;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    sub_249DFDB78(v32, (*(v2 + 56) + 32 * v22));
    ++*(v2 + 16);
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = a1[v10 + 8];
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_249E56EE0(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24070, &qword_249E80228);
    OUTLINED_FUNCTION_286();
    v2 = sub_249E7B258();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_23_3();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (a1[6] + 16 * (__clz(__rbit64(v6)) | (v9 << 6)));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_249DFDB78(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_249DFDB78(v29, v30);
    v13 = sub_249E7B0A8() & ~(-1 << *(v2 + 32));
    if (((-1 << v13) & ~*(v8 + 8 * (v13 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_42_1();
      while (++v14 != v16 || (v15 & 1) == 0)
      {
        v17 = v14 == v16;
        if (v14 == v16)
        {
          v14 = 0;
        }

        v15 |= v17;
        if (*(v8 + 8 * v14) != -1)
        {
          OUTLINED_FUNCTION_41_1();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_43_2();
LABEL_21:
    v6 &= v6 - 1;
    OUTLINED_FUNCTION_40_2();
    *(v8 + v18) |= v19;
    v21 = *(v2 + 48) + 40 * v20;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    sub_249DFDB78(v30, (*(v2 + 56) + 32 * v20));
    ++*(v2 + 16);
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = a1[v10 + 8];
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_249E5715C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC10DropInCore10IDSManager_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_249E57C2C();

  return swift_unknownObjectRelease();
}

uint8_t *sub_249E571AC(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for IDSManager.MessageType(0);
  OUTLINED_FUNCTION_28_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  v8 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v28 = a2;
  (*(v10 + 16))(v13 - v12, a2, v8);
  v15 = sub_249E7A698();
  v16 = sub_249E7AE28();
  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_70();
    v17 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v26 = swift_slowAlloc();
    v30 = v26;
    *v17 = 136315138;
    OUTLINED_FUNCTION_0_15();
    sub_249E5E658(v18, v19);
    v20 = sub_249E7B2D8();
    v22 = v21;
    (*(v10 + 8))(v14, v8);
    v23 = sub_249E3A958(v20, v22, &v30);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_249DEE000, v15, v16, "Handling Send Event %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {

    (*(v10 + 8))(v14, v8);
  }

  swift_storeEnumTagMultiPayload();
  v24 = sub_249E584CC(a1, v28, v7, a3, 0, 1);
  sub_249E5E3E8(v7);
  return v24;
}

uint64_t sub_249E5745C()
{
  OUTLINED_FUNCTION_11();
  *(v1 + 89) = v2;
  *(v1 + 128) = v3;
  *(v1 + 136) = v0;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 96) = v6;
  *(v1 + 104) = v7;
  *(v1 + 144) = sub_249E7A628();
  OUTLINED_FUNCTION_17_3();
  *(v1 + 152) = v8;
  *(v1 + 160) = swift_task_alloc();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_249E5751C()
{
  OUTLINED_FUNCTION_50();
  v36 = v0;
  (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 112), *(v0 + 144));
  v3 = sub_249E7A698();
  v4 = sub_249E7AE28();
  v5 = OUTLINED_FUNCTION_127(v4);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 144);
  if (v5)
  {
    OUTLINED_FUNCTION_70();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    v35 = swift_slowAlloc();
    *v9 = 136315138;
    OUTLINED_FUNCTION_0_15();
    sub_249E5E658(v10, v11);
    sub_249E7B2D8();
    v12 = OUTLINED_FUNCTION_9_6();
    v13(v12);
    v14 = sub_249E3A958(v1, v2, &v35);

    *(v9 + 4) = v14;
    OUTLINED_FUNCTION_52(&dword_249DEE000, v15, v16, "Handling Send Request %s");
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870](v17);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v19 = *(v0 + 128);
  v18 = *(v0 + 136);
  v20 = *(v0 + 89);
  v21 = *(v0 + 120);
  v22 = swift_task_alloc();
  *(v0 + 168) = v22;
  v23 = *(v0 + 104);
  *(v22 + 16) = v18;
  *(v22 + 24) = v23;
  *(v22 + 40) = v21;
  *(v22 + 48) = v19;
  *(v22 + 56) = v20 & 1;
  v24 = swift_task_alloc();
  *(v0 + 176) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237E0, &unk_249E7E240);
  *v24 = v0;
  v24[1] = sub_249E57758;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_34();

  return MEMORY[0x2822008A0](v25, v26, v27, v28, v29, v30, v31, v32);
}

uint64_t sub_249E57758()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_3();
  *v3 = v2;
  *(v4 + 184) = v0;

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_249E57858()
{
  OUTLINED_FUNCTION_90();
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  v3 = *(v0 + 88);
  v8 = *(v0 + 56);
  v9 = *(v0 + 24);
  v6 = *(v0 + 72);
  v7 = *(v0 + 40);

  *v1 = v2;
  *(v1 + 24) = v7;
  *(v1 + 8) = v9;
  *(v1 + 56) = v6;
  *(v1 + 40) = v8;
  *(v1 + 72) = v3 & 1;
  OUTLINED_FUNCTION_9_0();

  return v4();
}

uint64_t sub_249E5791C()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_9_0();

  return v0();
}

void sub_249E57980(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24078, &qword_249E80230);
    OUTLINED_FUNCTION_286();
    v2 = sub_249E7B258();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_23_3();
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v6)) | (v9 << 6);
    sub_249DFE7F4(a1[6] + 40 * v10, __src);
    sub_249DF686C(a1[7] + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_249DFE7F4(__dst, v20);
    if (!swift_dynamicCast())
    {
      sub_249E2A8CC(__dst, &unk_27EF24080, &qword_249E80238);

      return;
    }

    v6 &= v6 - 1;
    sub_249DF686C(&__dst[40], v21);
    sub_249E2A8CC(__dst, &unk_27EF24080, &qword_249E80238);
    v22 = v19;
    sub_249DFDB78(v21, v23);
    v11 = v22;
    sub_249DFDB78(v23, v24);
    sub_249DFDB78(v24, &v22);
    v12 = sub_249DFDA24(v11, *(&v11 + 1));
    v13 = v12;
    if (v14)
    {
      *(v2[6] + 16 * v12) = v11;

      v15 = (v2[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v15);
      sub_249DFDB78(&v22, v15);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_21;
      }

      *(v2 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
      *(v2[6] + 16 * v12) = v11;
      sub_249DFDB78(&v22, (v2[7] + 32 * v12));
      v16 = v2[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_22;
      }

      v2[2] = v18;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = a1[v9 + 8];
    ++v8;
    if (v6)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_249E57C54()
{
  OUTLINED_FUNCTION_15_0();
  ObjectType = swift_getObjectType();
  sub_249E7AE68();
  OUTLINED_FUNCTION_3();
  v27 = v2;
  v28 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v5 = v4 - v3;
  sub_249E7AE58();
  OUTLINED_FUNCTION_28_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v7 = sub_249E7A958();
  v8 = OUTLINED_FUNCTION_37(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  sub_249E7A6A8();
  v26 = OBJC_IVAR____TtC10DropInCore10IDSManager_serialQueue;
  sub_249DF691C(0, &qword_28130D228, 0x277D85C78);
  sub_249DF3F24();
  sub_249E7A948();
  v30 = MEMORY[0x277D84F90];
  sub_249E5E658(&qword_28130D230, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23C68, &qword_249E7F8C0);
  sub_249E2AB74(&unk_28130D280, &unk_27EF23C68, &qword_249E7F8C0);
  sub_249E7B018();
  (*(v27 + 104))(v5, *MEMORY[0x277D85260], v28);
  *&v0[v26] = sub_249E7AE98();
  v9 = OBJC_IVAR____TtC10DropInCore10IDSManager_pendingMessageResponseHandlers;
  sub_249E7A628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23F88, &unk_249E80198);
  OUTLINED_FUNCTION_0_15();
  sub_249E5E658(v10, v11);
  *&v0[v9] = sub_249E7AA08();
  *&v0[OBJC_IVAR____TtC10DropInCore10IDSManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  objc_allocWithZone(MEMORY[0x277D18778]);
  v12 = sub_249E5D9B4(0xD000000000000024, 0x8000000249E83070);
  if (!v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  *&v0[OBJC_IVAR____TtC10DropInCore10IDSManager_service] = v12;
  v13 = objc_opt_self();
  v14 = sub_249DFC27C(v13, &selRef_stringGUID);
  if (!v15)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = &v0[OBJC_IVAR____TtC10DropInCore10IDSManager_listenerID];
  *v16 = v14;
  v16[1] = v15;
  v29.receiver = v0;
  v29.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v29, sel_init);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 sharedInstance];
  if (!v20)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v21 = v20;

  v22 = sub_249E7AA88();

  sub_249E5E1DC(&v19[OBJC_IVAR____TtC10DropInCore10IDSManager_service]);
  if (v23)
  {
    v24 = sub_249E7AA88();
  }

  else
  {
    v24 = 0;
  }

  [v21 addListenerID:v22 forService:v24];

  OUTLINED_FUNCTION_6_1();
}

void sub_249E580E4()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_249E7A6B8();
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = [objc_opt_self() sharedInstance];
  if (v10)
  {
    v11 = v10;

    v12 = sub_249E7AA88();

    v13 = OBJC_IVAR____TtC10DropInCore10IDSManager_service;
    sub_249E5E1DC(&v1[OBJC_IVAR____TtC10DropInCore10IDSManager_service]);
    if (v14)
    {
      v15 = sub_249E7AA88();
    }

    else
    {
      v15 = 0;
    }

    [v11 removeListenerID:v12 forService:v15];

    (*(v5 + 16))(v9, &v1[OBJC_IVAR____TtC10DropInCore10IDSManager_logger], v3);
    v16 = sub_249E7A698();
    v17 = sub_249E7AE28();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_9();
      *v18 = 0;
      _os_log_impl(&dword_249DEE000, v16, v17, "IDSManager deinit()", v18, 2u);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    (*(v5 + 8))(v9, v3);
    [*&v1[v13] removeDelegate_];
    v19.receiver = v1;
    v19.super_class = ObjectType;
    objc_msgSendSuper2(&v19, sel_dealloc);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_249E5840C(uint64_t a1)
{
  result = sub_249E7A6B8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint8_t *sub_249E584CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v117) = a6;
  v123 = a5;
  v124 = a4;
  v126 = a3;
  v127 = a1;
  v134 = *MEMORY[0x277D85DE8];
  v120 = sub_249E7A628();
  v121 = *(v120 - 8);
  v7 = MEMORY[0x28223BE20](v120);
  v122 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v113 - v9;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v116 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v113 - v11;
  v12 = type metadata accessor for IDSManager.MessageType(0);
  v13 = MEMORY[0x28223BE20](v12);
  v119 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v113 - v15;
  v17 = sub_249E7AA08();
  *&v130 = sub_249E7AAA8();
  *(&v130 + 1) = v18;
  sub_249E7B0C8();
  sub_249E7A5D8();
  v19 = sub_249E7AA88();

  v20 = IDSGetUUIDData();

  v118 = a2;
  if (v20)
  {
    v21 = sub_249E7A4F8();
    v23 = v22;

    *(&v131 + 1) = MEMORY[0x277CC9318];
    *&v130 = v21;
    *(&v130 + 1) = v23;
    sub_249DFDB78(&v130, v129);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v128 = v17;
    sub_249DFDF38(v129, &v132, isUniquelyReferenced_nonNull_native);
    v17 = v128;
    sub_249DFE850(&v132);
  }

  else
  {
    v25 = sub_249DFDA9C(&v132);
    if (v26)
    {
      v27 = v25;
      swift_isUniquelyReferenced_nonNull_native();
      *&v129[0] = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23520, &qword_249E80210);
      sub_249E7B208();
      v17 = *&v129[0];
      sub_249DFE850(*(*&v129[0] + 48) + 40 * v27);
      sub_249DFDB78((*(v17 + 56) + 32 * v27), &v130);
      sub_249E7B218();
    }

    else
    {
      v130 = 0u;
      v131 = 0u;
    }

    sub_249DFE850(&v132);
    sub_249E2A8CC(&v130, &unk_27EF23C40, &qword_249E7D8E0);
  }

  *&v130 = sub_249E7AAA8();
  *(&v130 + 1) = v28;
  v29 = MEMORY[0x277D837D0];
  sub_249E7B0C8();
  v30 = MEMORY[0x277D839B0];
  *(&v131 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v130) = 1;
  sub_249DFDB78(&v130, v129);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v128 = v17;
  sub_249DFDF38(v129, &v132, v31);
  v32 = v128;
  sub_249DFE850(&v132);
  *&v130 = sub_249E7AAA8();
  *(&v130 + 1) = v33;
  sub_249E7B0C8();
  *(&v131 + 1) = v30;
  LOBYTE(v130) = 1;
  sub_249DFDB78(&v130, v129);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v128 = v32;
  sub_249DFDF38(v129, &v132, v34);
  v35 = v128;
  sub_249DFE850(&v132);
  sub_249E5E384(v126, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v37 = v122;
    if (EnumCaseMultiPayload == 1)
    {
      v38 = v10;
      v39 = v16;
      v40 = v120;
      (*(v121 + 32))(v10, v39, v120);
      v41 = v119;
      v42 = v118;
      if (v117)
      {
        v43 = v114;
        sub_249E7A7F8();
        sub_249E2AB74(&qword_28130D320, &unk_27EF23820, &unk_249E7E860);
        sub_249E2AB74(&unk_28130D310, &unk_27EF23820, &unk_249E7E860);
        v117 = v10;
        v40 = v120;
        sub_249E2AB74(&unk_28130D300, &unk_27EF23820, &unk_249E7E860);
        v44 = v115;
        v37 = v122;
        v38 = v117;
        sub_249E7A6E8();
        (*(v116 + 8))(v43, v44);
        v123 = v132;
      }

      *&v130 = sub_249E7AAA8();
      *(&v130 + 1) = v45;
      sub_249E7B0C8();
      v46 = sub_249E7A5D8();
      *(&v131 + 1) = v29;
      *&v130 = v46;
      *(&v130 + 1) = v47;
      sub_249DFDB78(&v130, v129);
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v128 = v35;
      sub_249DFDF38(v129, &v132, v48);
      v35 = v128;
      sub_249DFE850(&v132);
      v49 = v121;
      (*(v121 + 8))(v38, v40);
      v51 = v124;
      v50 = v125;
    }

    else
    {
      v41 = v119;
      if (v117)
      {
        v57 = v114;
        sub_249E7A7B8();
        sub_249E2AB74(&qword_28130D320, &unk_27EF23820, &unk_249E7E860);
        sub_249E2AB74(&unk_28130D310, &unk_27EF23820, &unk_249E7E860);
        sub_249E2AB74(&unk_28130D300, &unk_27EF23820, &unk_249E7E860);
        v58 = v115;
        v37 = v122;
        sub_249E7A6E8();
        (*(v116 + 8))(v57, v58);
        v123 = v132;
      }

      v51 = v124;
      v50 = v125;
      v40 = v120;
      v42 = v118;
      v49 = v121;
    }
  }

  else
  {
    if (v117)
    {
      v52 = v114;
      sub_249E7A7D8();
      sub_249E2AB74(&qword_28130D320, &unk_27EF23820, &unk_249E7E860);
      sub_249E2AB74(&unk_28130D310, &unk_27EF23820, &unk_249E7E860);
      sub_249E2AB74(&unk_28130D300, &unk_27EF23820, &unk_249E7E860);
      v53 = v115;
      sub_249E7A6E8();
      (*(v116 + 8))(v52, v53);
      v123 = v132;
    }

    *&v130 = sub_249E7AAA8();
    *(&v130 + 1) = v54;
    sub_249E7B0C8();
    *(&v131 + 1) = v30;
    LOBYTE(v130) = 1;
    sub_249DFDB78(&v130, v129);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v35;
    sub_249DFDF38(v129, &v132, v55);
    v35 = v128;
    sub_249DFE850(&v132);
    v49 = v121;
    v56 = v16;
    v40 = v120;
    (*(v121 + 8))(v56, v120);
    v51 = v124;
    v50 = v125;
    v37 = v122;
    v41 = v119;
    v42 = v118;
  }

  *&v130 = sub_249E7AAA8();
  *(&v130 + 1) = v59;
  sub_249E7B0C8();
  *(&v131 + 1) = MEMORY[0x277D839F8];
  *&v130 = v123;
  sub_249DFDB78(&v130, v129);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v128 = v35;
  sub_249DFDF38(v129, &v132, v60);
  v123 = v128;
  sub_249DFE850(&v132);
  v61 = OBJC_IVAR____TtC10DropInCore10IDSManager_logger;
  sub_249E5E384(v126, v41);
  (*(v49 + 16))(v37, v42, v40);
  v62 = v127;

  v126 = v61;
  v63 = sub_249E7A698();
  v64 = sub_249E7AE28();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v132 = v122;
    *v65 = 136316162;
    LODWORD(v121) = v64;
    v66 = sub_249E5D7E0();
    v68 = v67;
    sub_249E5E3E8(v41);
    v69 = sub_249E3A958(v66, v68, &v132);

    *(v65 + 4) = v69;
    *(v65 + 12) = 2080;
    sub_249E5E658(&qword_28130D350, MEMORY[0x277CC95F0]);
    v70 = sub_249E7B2D8();
    v72 = v71;
    (*(v49 + 8))(v37, v40);
    v73 = sub_249E3A958(v70, v72, &v132);

    *(v65 + 14) = v73;
    *(v65 + 22) = 2080;
    v74 = sub_249E7A9E8();
    v76 = sub_249E3A958(v74, v75, &v132);

    *(v65 + 24) = v76;
    *(v65 + 32) = 2080;
    v77 = v123;

    v78 = sub_249E7A9E8();
    v80 = v79;

    v81 = sub_249E3A958(v78, v80, &v132);

    *(v65 + 34) = v81;
    *(v65 + 42) = 2080;
    v51 = v124;
    v50 = v125;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF24050, &qword_249E80208);
    v83 = MEMORY[0x24C204800](v51, v82);
    v85 = sub_249E3A958(v83, v84, &v132);

    *(v65 + 44) = v85;
    _os_log_impl(&dword_249DEE000, v63, v121, "Sending %s, Identifier = %s, Message = %s, Options = %s, Destinations = %s", v65, 0x34u);
    v86 = v122;
    swift_arrayDestroy();
    MEMORY[0x24C205870](v86, -1, -1);
    v87 = v65;
    v62 = v127;
    MEMORY[0x24C205870](v87, -1, -1);

    v88 = v77;
  }

  else
  {

    (*(v49 + 8))(v37, v40);
    sub_249E5E3E8(v41);
    v88 = v123;
  }

  v89 = *(v50 + OBJC_IVAR____TtC10DropInCore10IDSManager_service);
  sub_249E56C58(v62);
  v91 = v90;
  sub_249DF691C(0, &unk_27EF23FD8, 0x277CBEB98);
  v92 = sub_249E5677C(v51);
  v93 = sub_249E5CC40(v92);
  sub_249DF691C(0, &qword_28130D150, 0x277D82BB8);
  sub_249E5E70C();
  v94 = sub_249E7AD58();

  sub_249E568E0(v94);
  v96 = v95;

  v132 = 0;
  *&v130 = 0;

  v97 = sub_249E5E278(v91, v96, 300, v88, &v132, &v130, v89);
  v98 = v132;
  if ((v97 & 1) == 0)
  {
    v106 = v130;
    v107 = v98;
    sub_249E7A4D8();

LABEL_32:
    swift_willThrow();

    return v91;
  }

  if (!v132)
  {
    v108 = v130;
    goto LABEL_29;
  }

  v132 = 0;
  v133 = 0;
  v99 = v130;
  v100 = v98;
  sub_249E7AA98();
  v101 = v133;
  if (!v133)
  {
LABEL_29:
    v109 = sub_249E7A698();
    v110 = sub_249E7AE08();
    if (os_log_type_enabled(v109, v110))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_249DEE000, v109, v110, "Message Identifier is nil", v91, 2u);
      MEMORY[0x24C205870](v91, -1, -1);
    }

    sub_249E5DA18();
    swift_allocError();
    *v111 = 0;
    goto LABEL_32;
  }

  v91 = v132;

  v102 = sub_249E7A698();
  v103 = sub_249E7AE28();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v132 = v105;
    *v104 = 136315138;
    *(v104 + 4) = sub_249E3A958(v91, v101, &v132);
    _os_log_impl(&dword_249DEE000, v102, v103, "Request to Send Message Successful! Message Identifier = %s)", v104, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v105);
    MEMORY[0x24C205870](v105, -1, -1);
    MEMORY[0x24C205870](v104, -1, -1);
  }

  return v91;
}

uint64_t sub_249E594DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v19 = a2;
  v20 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF240A0, &qword_249E80258);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  (*(v13 + 16))(&v19 - v14, a1, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, v15, v12);
  sub_249E59720(a3, a4, a5, v20, a7 & 1, sub_249E5E788, v17);
}

uint64_t sub_249E59654(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 73))
  {
    v7 = *a1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF240A0, &qword_249E80258);
    return sub_249E7AC38();
  }

  else
  {
    memcpy(v6, (a1 + 8), sizeof(v6));
    v5[10] = v1;
    v7 = v1;
    memcpy(v8, (a1 + 8), sizeof(v8));
    sub_249E5E930(&v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF240A0, &qword_249E80258);
    return sub_249E7AC48();
  }
}

uint64_t sub_249E59720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v36 = a6;
  v37 = a7;
  v32 = a5;
  v31 = a4;
  v35 = a3;
  v33 = a1;
  v39 = sub_249E7A928();
  v42 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_249E7A958();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10);
  v34 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_249E7A628();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v30 = *(v7 + OBJC_IVAR____TtC10DropInCore10IDSManager_serialQueue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v16 + v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  (*(v13 + 32))(v19 + v16, &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v20 = v19 + ((v16 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v20 = v31;
  *(v20 + 8) = v32 & 1;
  v21 = (v19 + v17);
  v22 = v37;
  *v21 = v36;
  v21[1] = v22;
  *(v19 + v18) = v33;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;
  aBlock[4] = sub_249E5E800;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249E52140;
  aBlock[3] = &block_descriptor_6;
  v23 = _Block_copy(aBlock);
  v24 = v30;

  swift_unknownObjectRetain();
  v25 = v34;
  sub_249E7A938();
  v43 = MEMORY[0x277D84F90];
  sub_249E5E658(&qword_28130D2D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23D50, &unk_249E80260);
  sub_249E2AB74(&qword_28130D2A0, &unk_27EF23D50, &unk_249E80260);
  v27 = v38;
  v26 = v39;
  sub_249E7B018();
  MEMORY[0x24C204A90](0, v25, v27, v23);
  _Block_release(v23);

  (*(v42 + 8))(v27, v26);
  (*(v40 + 8))(v25, v41);
}

void sub_249E59B90()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0;
  v227 = v2;
  v4 = v3;
  v216 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  v9 = OUTLINED_FUNCTION_37(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22_3(v205 - v10);
  v219 = type metadata accessor for IDSManager.MessageType(0);
  OUTLINED_FUNCTION_28_0();
  v12 = MEMORY[0x28223BE20](v11);
  v220 = v205 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v218 = v205 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v205 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v19 = OUTLINED_FUNCTION_37(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_3(v205 - v20);
  v225 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_22_3(v205 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_3(v205 - v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22_3(v205 - v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_22_3(v205 - v30);
  v212 = v31;
  MEMORY[0x28223BE20](v32);
  v34 = v205 - v33;
  v35 = OBJC_IVAR____TtC10DropInCore10IDSManager_logger;

  v36 = sub_249E7A698();
  sub_249E7AE28();

  v37 = OUTLINED_FUNCTION_272();
  v222 = v17;
  v223 = v7;
  if (v37)
  {
    OUTLINED_FUNCTION_70();
    v38 = swift_slowAlloc();
    v226 = v35;
    v35 = v38;
    OUTLINED_FUNCTION_74();
    v39 = swift_slowAlloc();
    v221 = v1;
    v40 = v4;
    v41 = v39;
    *v232 = v39;
    *v35 = 136315138;
    *v230 = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23FB0, &qword_249E801E0);
    v42 = sub_249E7AAC8();
    v44 = v22;
    v45 = sub_249E3A958(v42, v43, v232);

    *(v35 + 4) = v45;
    v22 = v44;
    OUTLINED_FUNCTION_19_4(&dword_249DEE000, v46, v47, "Incoming message = %s");
    __swift_destroy_boxed_opaque_existential_0(v41);
    v48 = v34;
    v4 = v40;
    v49 = v221;
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  else
  {
    v48 = v34;

    v49 = v1;
  }

  v50 = v228;
  if (v227)
  {
    v51 = v227;
    v52 = sub_249DFC27C(v51, &selRef_senderCorrelationIdentifier);
    if (v53)
    {
      v54 = v53;
      if (v4)
      {
        v55 = v52;
        v226 = v35;

        v56 = sub_249DFC27C(v51, &selRef_originalGUID);
        if (v57)
        {
          v58 = v56;
          v59 = v57;
          v227 = v51;
          v60 = v224;
          sub_249E7A5C8();
          if (__swift_getEnumTagSinglePayload(v60, 1, v225) == 1)
          {

            sub_249E2A8CC(v60, &qword_27EF234B0, &qword_249E7D910);

            v62 = OUTLINED_FUNCTION_21_4(v61);
            v63 = sub_249E7AE08();

            if (os_log_type_enabled(v62, v63))
            {
              OUTLINED_FUNCTION_70();
              v64 = swift_slowAlloc();
              OUTLINED_FUNCTION_74();
              *v232 = swift_slowAlloc();
              *v64 = 136315138;
              v65 = sub_249E3A958(v58, v59, v232);

              *(v64 + 4) = v65;
              _os_log_impl(&dword_249DEE000, v62, v63, "Unsupported GUID %s", v64, 0xCu);
              OUTLINED_FUNCTION_12_2();
              OUTLINED_FUNCTION_65();
              MEMORY[0x24C205870]();
            }

            else
            {
            }

            goto LABEL_21;
          }

          v85 = *(v22 + 32);
          v211 = v48;
          v224 = v85;
          v85(v48, v60, v225);
          if (!v223 || (sub_249E57980(v223), !v86))
          {

            v108 = OUTLINED_FUNCTION_21_4(v107);
            v109 = sub_249E7AE08();
            v110 = OUTLINED_FUNCTION_4_1(v109);
            v111 = v227;
            if (v110)
            {
              v112 = OUTLINED_FUNCTION_9();
              OUTLINED_FUNCTION_6_0(v112);
              OUTLINED_FUNCTION_1_1();
              _os_log_impl(v113, v114, v115, v116, v117, 2u);
              OUTLINED_FUNCTION_65();
              MEMORY[0x24C205870]();
            }

            else
            {
            }

            (*(v22 + 8))(v211, v225);
            goto LABEL_21;
          }

          v87 = v86;
          v205[2] = v22 + 32;
          v206 = v55;
          v223 = v4;
          v88 = *(v22 + 16);
          v205[1] = v22 + 16;
          v205[0] = v88;
          v89 = v88(v50, v211, v225);
          v90 = v49;
          v91 = OUTLINED_FUNCTION_21_4(v89);
          v92 = sub_249E7AE28();
          v93 = os_log_type_enabled(v91, v92);
          v94 = v227;
          v210 = v22;
          v209 = v54;
          v208 = v87;
          if (v93)
          {
            OUTLINED_FUNCTION_70();
            v95 = swift_slowAlloc();
            OUTLINED_FUNCTION_74();
            v96 = swift_slowAlloc();
            v221 = v90;
            v97 = v96;
            *v232 = v96;
            *v95 = 136315138;
            OUTLINED_FUNCTION_0_15();
            sub_249E5E658(v98, v99);
            v100 = v50;
            v101 = v225;
            v102 = sub_249E7B2D8();
            v103 = v22;
            v105 = v104;
            v207 = *(v103 + 8);
            v207(v100, v101);
            v106 = sub_249E3A958(v102, v105, v232);

            *(v95 + 4) = v106;
            _os_log_impl(&dword_249DEE000, v91, v92, "Incoming message identifier = %s", v95, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v97);
            v90 = v221;
            OUTLINED_FUNCTION_65();
            MEMORY[0x24C205870]();
            OUTLINED_FUNCTION_65();
            MEMORY[0x24C205870]();
          }

          else
          {

            v207 = *(v22 + 8);
            v207(v50, v225);
          }

          v118 = v94;
          v119 = v90;
          OUTLINED_FUNCTION_27_1();
          v120 = sub_249E7A698();
          sub_249E7AE28();

          if (OUTLINED_FUNCTION_272())
          {
            v121 = v211;
            OUTLINED_FUNCTION_70();
            v122 = swift_slowAlloc();
            OUTLINED_FUNCTION_74();
            *v230 = swift_slowAlloc();
            *v122 = 136315138;
            *v232 = sub_249DFC27C(v118, &selRef_incomingResponseIdentifier);
            *&v232[8] = v123;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FA0, &unk_249E7DF00);
            v124 = sub_249E7AAC8();
            v126 = sub_249E3A958(v124, v125, v230);

            *(v122 + 4) = v126;
            OUTLINED_FUNCTION_19_4(&dword_249DEE000, v127, v128, "Incoming response identifier = %s");
            OUTLINED_FUNCTION_12_2();
            OUTLINED_FUNCTION_27_1();
            OUTLINED_FUNCTION_65();
            MEMORY[0x24C205870]();
          }

          else
          {
            v121 = v211;
          }

          v129 = v222;
          v130 = v118;
          v131 = sub_249E7A698();
          sub_249E7AE28();

          v132 = OUTLINED_FUNCTION_272();
          v228 = v130;
          if (v132)
          {
            OUTLINED_FUNCTION_70();
            v133 = swift_slowAlloc();
            OUTLINED_FUNCTION_74();
            v134 = swift_slowAlloc();
            *v230 = v134;
            *v133 = 136315138;
            *v232 = sub_249DFC27C(v130, &selRef_outgoingResponseIdentifier);
            *&v232[8] = v135;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FA0, &unk_249E7DF00);
            v136 = sub_249E7AAC8();
            v138 = sub_249E3A958(v136, v137, v230);

            *(v133 + 4) = v138;
            OUTLINED_FUNCTION_19_4(&dword_249DEE000, v139, v140, "Outgoing response identifier = %s");
            __swift_destroy_boxed_opaque_existential_0(v134);
            OUTLINED_FUNCTION_65();
            MEMORY[0x24C205870]();
            OUTLINED_FUNCTION_27_1();
            OUTLINED_FUNCTION_65();
            MEMORY[0x24C205870]();
          }

          v141 = v218;

          sub_249E5ADEC(v129);
          sub_249E5E384(v129, v141);
          v142 = sub_249E7A698();
          v143 = sub_249E7AE28();
          if (os_log_type_enabled(v142, v143))
          {
            OUTLINED_FUNCTION_70();
            v144 = swift_slowAlloc();
            OUTLINED_FUNCTION_74();
            *v232 = swift_slowAlloc();
            *v144 = 136315138;
            v145 = sub_249E5D7E0();
            v146 = v141;
            v148 = v147;
            sub_249E5E3E8(v146);
            v149 = sub_249E3A958(v145, v148, v232);

            *(v144 + 4) = v149;
            _os_log_impl(&dword_249DEE000, v142, v143, "Message Type = %s", v144, 0xCu);
            OUTLINED_FUNCTION_12_2();
            OUTLINED_FUNCTION_27_1();
            OUTLINED_FUNCTION_65();
            MEMORY[0x24C205870]();
          }

          else
          {

            sub_249E5E3E8(v141);
          }

          v150 = v210;
          v151 = v220;
          sub_249E5E384(v129, v220);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v153 = v223;
          v154 = v119;
          if (EnumCaseMultiPayload)
          {
            v155 = v129;
            if (EnumCaseMultiPayload != 1)
            {

              v186 = sub_249E7AC78();
              v187 = v217;
              __swift_storeEnumTagSinglePayload(v217, 1, 1, v186);
              v232[0] = 0;
              v188 = swift_allocObject();
              v189 = OUTLINED_FUNCTION_10_4(v188);
              v189[8] = *(v190 - 256);
              v189[9] = v153;
              *(v189 + 112) = 0;
              v191 = v119;
              sub_249E5ED90(0, 0, v187, &unk_249E801B0, v129);
              OUTLINED_FUNCTION_39_2();

              sub_249E5E3E8(v129);
              v207(v121, v225);
              goto LABEL_21;
            }

            v156 = v215;
            v224(v215, v151, v225);
            v157 = sub_249E5B094(v156);
            if (v157)
            {
              v159 = v157;
              v160 = v158;

              v161 = sub_249E7A698();
              v162 = sub_249E7AE28();
              sub_249DF2D58(v159, v160);
              if (os_log_type_enabled(v161, v162))
              {
                OUTLINED_FUNCTION_70();
                v163 = swift_slowAlloc();
                OUTLINED_FUNCTION_74();
                v227 = swift_slowAlloc();
                *v230 = v227;
                *v163 = 136315138;
                v164 = swift_allocObject();
                *(v164 + 16) = v159;
                *(v164 + 24) = v160;
                *v232 = sub_249E5E624;
                *&v232[8] = v164;

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23F98, &unk_249E801D0);
                v165 = sub_249E7AAC8();
                v167 = sub_249E3A958(v165, v166, v230);

                *(v163 + 4) = v167;
                _os_log_impl(&dword_249DEE000, v161, v162, "Found Pending Response Handler %s", v163, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v227);
                OUTLINED_FUNCTION_65();
                MEMORY[0x24C205870]();
                v153 = v223;
                OUTLINED_FUNCTION_65();
                MEMORY[0x24C205870]();
              }

              v168 = v207;
              v229 = 0;
              *v230 = v208;
              *&v230[8] = v206;
              *&v230[16] = v209;
              *&v230[24] = v216;
              *&v230[32] = v153;
              v230[72] = 0;
              memcpy(v232, v230, sizeof(v232));
              v231 = 0;
              v233 = 0;
              v159(v232);
              sub_249E2A8CC(v230, &unk_27EF237E0, &unk_249E7E240);
              sub_249DF2D58(v159, v160);
              OUTLINED_FUNCTION_39_2();
              v204 = v225;
              v168(v215, v225);
              sub_249E5E3E8(v155);
              v168(v121, v204);
              goto LABEL_21;
            }

            v192 = sub_249E7A698();
            v183 = sub_249E7AE08();

            if (os_log_type_enabled(v192, v183))
            {
              OUTLINED_FUNCTION_70();
              v151 = swift_slowAlloc();
              OUTLINED_FUNCTION_74();
              v193 = swift_slowAlloc();
              *v232 = v193;
              *v151 = 136315138;
              v194 = sub_249E7A9E8();
              v196 = v195;

              v197 = sub_249E3A958(v194, v196, v232);

              *(v151 + 4) = v197;
              OUTLINED_FUNCTION_1_1();
              _os_log_impl(v198, v199, v200, v201, v202, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v193);
              OUTLINED_FUNCTION_65();
              MEMORY[0x24C205870]();
              OUTLINED_FUNCTION_65();
              MEMORY[0x24C205870]();
              OUTLINED_FUNCTION_39_2();
            }

            else
            {
              OUTLINED_FUNCTION_39_2();
            }

            v203 = OUTLINED_FUNCTION_16_4();
            v183(v203);
            sub_249E5E3E8(v155);
            v184 = v121;
            v185 = v151;
          }

          else
          {
            v169 = v214;
            v170 = v225;
            v171 = v224;
            v224(v214, v151, v225);
            v172 = sub_249E7AC78();
            __swift_storeEnumTagSinglePayload(v217, 1, 1, v172);
            v173 = v150;
            v174 = v213;
            (v205[0])(v213, v169, v170);
            v232[0] = 0;
            v175 = (*(v173 + 80) + 113) & ~*(v173 + 80);
            v176 = (v212 + v175 + 7) & 0xFFFFFFFFFFFFFFF8;
            v177 = swift_allocObject();
            v178 = OUTLINED_FUNCTION_10_4(v177);
            v180 = *(v179 - 256);
            v178[8] = v180;
            v178[9] = v153;
            *(v178 + 112) = 0;
            v171(v178 + v175, v174, v170);
            v181 = &v129[v176];
            *v181 = v180;
            *(v181 + 1) = v153;
            v182 = v154;
            sub_249E5ED90(0, 0, v217, &unk_249E801C0, v129);
            OUTLINED_FUNCTION_39_2();

            v183 = v207;
            v207(v214, v170);
            sub_249E5E3E8(v222);
            v184 = v211;
            v185 = v170;
          }

          (v183)(v184, v185);
          goto LABEL_21;
        }

        v74 = OUTLINED_FUNCTION_21_4(v77);
        v78 = sub_249E7AE18();
        if (OUTLINED_FUNCTION_4_1(v78))
        {
          goto LABEL_19;
        }

LABEL_20:

        goto LABEL_21;
      }

      v74 = sub_249E7A698();
      v76 = sub_249E7AE18();
      if (!OUTLINED_FUNCTION_4_1(v76))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v74 = sub_249E7A698();
      v75 = sub_249E7AE18();
      if (!OUTLINED_FUNCTION_4_1(v75))
      {
        goto LABEL_20;
      }
    }

LABEL_19:
    v79 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6_0(v79);
    OUTLINED_FUNCTION_1_1();
    _os_log_impl(v80, v81, v82, v83, v84, 2u);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
    goto LABEL_20;
  }

  v66 = sub_249E7A698();
  v67 = sub_249E7AE18();
  if (OUTLINED_FUNCTION_4_1(v67))
  {
    v68 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6_0(v68);
    OUTLINED_FUNCTION_1_1();
    _os_log_impl(v69, v70, v71, v72, v73, 2u);
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

LABEL_21:
  OUTLINED_FUNCTION_6_1();
}

uint64_t sub_249E5ADEC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = sub_249E7A628();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  if ([v2 expectsPeerResponse])
  {
    sub_249DFC27C(v2, &selRef_outgoingResponseIdentifier);
    if (v17)
    {
      sub_249E7A5C8();

      if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
      {
        v20 = *(v11 + 32);
        v20(v16, v9, v10);
        v20(a1, v16, v10);
        goto LABEL_11;
      }

      sub_249E2A8CC(v9, &qword_27EF234B0, &qword_249E7D910);
    }
  }

  sub_249DFC27C(v2, &selRef_incomingResponseIdentifier);
  if (v18)
  {
    sub_249E7A5C8();

    if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
    {
      sub_249E2A8CC(v7, &qword_27EF234B0, &qword_249E7D910);
    }

    else
    {
      v19 = *(v11 + 32);
      v19(v14, v7, v10);
      v19(a1, v14, v10);
    }
  }

LABEL_11:
  type metadata accessor for IDSManager.MessageType(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t (*sub_249E5B094(uint64_t a1))(void *a1)
{
  v3 = OBJC_IVAR____TtC10DropInCore10IDSManager_pendingMessageResponseHandlers;
  swift_beginAccess();
  v4 = sub_249DFDAE0(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v1 + v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23F80, &unk_249E7D900);
    sub_249E7B208();
    v7 = *(v14 + 48);
    v8 = sub_249E7A628();
    (*(*(v8 - 8) + 8))(v7 + *(*(v8 - 8) + 72) * v6, v8);
    v9 = *(v14 + 56) + 24 * v6;
    v10 = *(v9 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23F88, &unk_249E80198);
    sub_249E5E658(&qword_28130D360, MEMORY[0x277CC95F0]);
    v13 = *v9;
    sub_249E7B218();
    *(v1 + v3) = v14;
    swift_endAccess();
    *(swift_allocObject() + 16) = v13;
    v11 = v10;
    sub_249E6B770();

    return sub_249E5E188;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t sub_249E5B278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v12;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v8[13] = type metadata accessor for IDSManager.MessageType(0);
  v8[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23FB8, &qword_249E801E8);
  v8[15] = swift_task_alloc();
  v8[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FC0, qword_249E801F0);
  v8[17] = swift_task_alloc();
  v9 = sub_249E7AC78();
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E5B3EC, 0, 0);
}

uint64_t sub_249E5B3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v22[21] = OBJC_IVAR____TtC10DropInCore10IDSManager_logger;
  v27 = sub_249E7A698();
  v28 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_127(v28))
  {
    OUTLINED_FUNCTION_70();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    a11 = swift_slowAlloc();
    *v29 = 136315138;
    sub_249E7ACC8();
    OUTLINED_FUNCTION_11_5();
    sub_249E5E658(v30, v31);
    sub_249E7B2D8();
    v32 = OUTLINED_FUNCTION_9_6();
    v33(v32);
    v34 = sub_249E3A958(v23, v24, &a11);

    *(v29 + 4) = v34;
    OUTLINED_FUNCTION_52(&dword_249DEE000, v35, v36, "Task Priority = %s");
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v37 = v22[7] + OBJC_IVAR____TtC10DropInCore10IDSManager_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v22[22] = Strong;
  v39 = v22[15];
  if (Strong)
  {
    v40 = *(v37 + 8);
    swift_getObjectType();
    OUTLINED_FUNCTION_17_3();
    v61 = v41 + *v41;
    v42 = swift_task_alloc();
    v22[23] = v42;
    *v42 = v22;
    v42[1] = sub_249E5B6B4;
    OUTLINED_FUNCTION_72();

    return v50(v43, v44, v45, v46, v47, v48, v49, v50, v40 + 8, v61, a11, a12, a13, a14);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v22[15], 1, 1, v22[16]);
    sub_249E2A8CC(v39, &qword_27EF23FB8, &qword_249E801E8);
    OUTLINED_FUNCTION_37_2();

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E5B6B4(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_3();
  *v7 = v6;
  *(v5 + 192) = v1;

  if (!v1)
  {
    swift_unknownObjectRelease();
    *(v5 + 200) = a1;
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_249E5B7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v75 = *(v22 + 192);
  v26 = *(v22 + 128);
  v25 = *(v22 + 136);
  v27 = *(v22 + 112);
  v28 = *(v22 + 120);
  v29 = *(v22 + 96);
  v30 = *(v22 + 80);
  v31 = *(v22 + 88);
  *v28 = *(v22 + 200);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v26);
  sub_249E5E69C(v28, v25);
  sub_249E7A628();
  OUTLINED_FUNCTION_28_0();
  (*(v32 + 16))(v27, v30);
  swift_storeEnumTagMultiPayload();
  v33 = *v25;
  v34 = *(v26 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C60, &unk_249E7F8B0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_249E80120;
  sub_249DF691C(0, &qword_27EF23FD0, 0x277CCACA8);

  *(v35 + 32) = sub_249E5C0A4(v31, v29);
  v36 = sub_249E584CC(v33, v25 + v34, v27, v35, 0, 1);
  if (!v75)
  {
    v47 = v36;
    v48 = v37;

    v49 = sub_249E7A698();
    v50 = sub_249E7AE28();

    v51 = OUTLINED_FUNCTION_272();
    v52 = *(v22 + 112);
    if (v51)
    {
      OUTLINED_FUNCTION_70();
      v53 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      v54 = swift_slowAlloc();
      a10 = v54;
      *v53 = 136315138;
      v55 = sub_249E3A958(v47, v48, &a10);

      *(v53 + 4) = v55;
      _os_log_impl(&dword_249DEE000, v49, v50, "Successfully sent response %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    else
    {
    }

    sub_249E5E3E8(v52);
    sub_249E2A8CC(*(v22 + 136), &unk_27EF23FC0, qword_249E801F0);
    goto LABEL_15;
  }

  v38 = *(v22 + 136);
  sub_249E5E3E8(*(v22 + 112));

  sub_249E2A8CC(v38, &unk_27EF23FC0, qword_249E801F0);
  *(v22 + 40) = v75;
  v39 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23720, &qword_249E7E090);
  if (swift_dynamicCast() && *(v22 + 208) == 6)
  {

    v40 = sub_249E7A698();
    v41 = sub_249E7AE28();

    if (os_log_type_enabled(v40, v41))
    {
      OUTLINED_FUNCTION_70();
      v42 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      a10 = swift_slowAlloc();
      *v42 = 136315138;
      v43 = sub_249E7A9E8();
      v45 = sub_249E3A958(v43, v44, &a10);

      *(v42 + 4) = v45;
      _os_log_impl(&dword_249DEE000, v40, v41, "Message already handled, Request = %s", v42, 0xCu);
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }

    v46 = *(v22 + 40);
  }

  else
  {

    v56 = v75;

    v57 = sub_249E7A698();
    v58 = sub_249E7AE08();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      *v59 = 136315394;
      swift_getErrorValue();
      v60 = sub_249E7B3A8();
      v62 = sub_249E3A958(v60, v61, &a10);

      *(v59 + 4) = v62;
      *(v59 + 12) = 2080;
      v63 = sub_249E7A9E8();
      v65 = sub_249E3A958(v63, v64, &a10);

      *(v59 + 14) = v65;
      _os_log_impl(&dword_249DEE000, v57, v58, "Failed to handle request. Error = %s, Request = %s", v59, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();

      goto LABEL_15;
    }

    v46 = v75;
  }

LABEL_15:
  OUTLINED_FUNCTION_37_2();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_72();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, v75, a10, a11, a12, a13, a14);
}

void sub_249E5BD50()
{
  OUTLINED_FUNCTION_50();
  v30 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 192);
  *(v0 + 40) = v1;
  v2 = (v0 + 40);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23720, &qword_249E7E090);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 208) == 6;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {

    v17 = sub_249E7A698();
    v18 = sub_249E7AE28();

    if (OUTLINED_FUNCTION_272())
    {
      OUTLINED_FUNCTION_70();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136315138;
      v21 = sub_249E7A9E8();
      v23 = sub_249E3A958(v21, v22, &v29);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_249DEE000, v17, v18, "Message already handled, Request = %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870](v24);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870](v25);
    }

    v26 = *v2;
  }

  else
  {

    v5 = v1;

    v6 = sub_249E7A698();
    v7 = sub_249E7AE08();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v8 = 136315394;
      swift_getErrorValue();
      v9 = sub_249E7B3A8();
      v11 = sub_249E3A958(v9, v10, &v29);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      v12 = sub_249E7A9E8();
      v14 = sub_249E3A958(v12, v13, &v29);

      *(v8 + 14) = v14;
      _os_log_impl(&dword_249DEE000, v6, v7, "Failed to handle request. Error = %s, Request = %s", v8, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870](v15);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870](v16);

      goto LABEL_12;
    }

    v26 = v1;
  }

LABEL_12:
  OUTLINED_FUNCTION_37_2();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_34();

  __asm { BRAA            X1, X16 }
}

id sub_249E5C0A4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_249E7AA88();

  v4 = [v2 initWithString_];

  return v4;
}

uint64_t sub_249E5C118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_249E7AC78();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E5C1DC, 0, 0);
}

uint64_t sub_249E5C1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_87();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v27 = sub_249E7A698();
  v28 = sub_249E7AE28();
  if (OUTLINED_FUNCTION_127(v28))
  {
    OUTLINED_FUNCTION_70();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_74();
    a11 = swift_slowAlloc();
    *v29 = 136315138;
    sub_249E7ACC8();
    OUTLINED_FUNCTION_11_5();
    sub_249E5E658(v30, v31);
    sub_249E7B2D8();
    v32 = OUTLINED_FUNCTION_9_6();
    v33(v32);
    v34 = sub_249E3A958(v23, v24, &a11);

    *(v29 + 4) = v34;
    OUTLINED_FUNCTION_52(&dword_249DEE000, v35, v36, "Task Priority = %s");
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_65();
    MEMORY[0x24C205870]();
  }

  v37 = v22[2] + OBJC_IVAR____TtC10DropInCore10IDSManager_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v22[8] = Strong;
  if (Strong)
  {
    v39 = *(v37 + 8);
    swift_getObjectType();
    OUTLINED_FUNCTION_17_3();
    v60 = v40 + *v40;
    v41 = swift_task_alloc();
    v22[9] = v41;
    *v41 = v22;
    v41[1] = sub_249E5C450;
    OUTLINED_FUNCTION_72();

    return v48(v42, v43, v44, v45, v46, v47, v48, v49, v39 + 16, v60, a11, a12, a13, a14);
  }

  else
  {

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_72();

    return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_249E5C450()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v2 = v1;

  swift_unknownObjectRelease();

  v3 = *(v1 + 8);

  return v3();
}

void sub_249E5C678()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF234B0, &qword_249E7D910);
  v7 = OUTLINED_FUNCTION_37(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  v10 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  if (v5)
  {
    if ((v3 & 1) == 0)
    {
      if (v1)
      {
        v24 = v1;
      }

      else
      {
        sub_249E5DA18();
        v24 = swift_allocError();
        *v25 = 1;
      }

      v26 = v24;
      v27 = v24;
      v28 = v1;

      v29 = sub_249E7A698();
      v30 = sub_249E7AE08();

      v31 = OUTLINED_FUNCTION_272();
      v48 = v24;
      if (v31)
      {
        v32 = swift_slowAlloc();
        v46 = v30;
        v33 = v32;
        v47 = swift_slowAlloc();
        v50[0] = v47;
        *(v33 + 4) = OUTLINED_FUNCTION_48_1(4.8151e-34);
        *(v33 + 12) = 2080;
        swift_getErrorValue();
        v45 = v29;
        v34 = sub_249E7B3A8();
        v36 = sub_249E3A958(v34, v35, v50);

        *(v33 + 14) = v36;
        v37 = v45;
        _os_log_impl(&dword_249DEE000, v45, v46, "IDS Send Failed. Identifier = %s Error: %s", v33, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
        OUTLINED_FUNCTION_65();
        MEMORY[0x24C205870]();
      }

      else
      {
      }

      sub_249E7A5C8();
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
      {
        v38 = v48;

        sub_249E2A8CC(v9, &qword_27EF234B0, &qword_249E7D910);
      }

      else
      {
        (*(v12 + 32))(v16, v9, v10);
        v39 = sub_249E5B094(v16);
        v41 = v48;
        if (v39)
        {
          v42 = v39;
          v43 = v40;
          v49 = 1;
          v50[0] = v48;
          v51 = 1;
          v44 = v48;
          v42(v50);

          sub_249DF2D58(v42, v43);
          (*(v12 + 8))(v16, v10);
        }

        else
        {
          (*(v12 + 8))(v16, v10);
        }
      }

      goto LABEL_21;
    }

    v48 = sub_249E7A698();
    v17 = sub_249E7AE28();

    if (os_log_type_enabled(v48, v17))
    {
      OUTLINED_FUNCTION_70();
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_74();
      v19 = swift_slowAlloc();
      v50[0] = v19;
      *(v18 + 4) = OUTLINED_FUNCTION_48_1(4.8149e-34);
      _os_log_impl(&dword_249DEE000, v48, v17, "IDS Send Succeeded. Identifier = %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();

LABEL_21:
      OUTLINED_FUNCTION_6_1();
      return;
    }
  }

  else
  {
    v48 = sub_249E7A698();
    v20 = sub_249E7AE18();
    if (os_log_type_enabled(v48, v20))
    {
      v21 = OUTLINED_FUNCTION_9();
      *v21 = 0;
      _os_log_impl(&dword_249DEE000, v48, v20, "Identifier is nil", v21, 2u);
      OUTLINED_FUNCTION_65();
      MEMORY[0x24C205870]();
    }
  }

  OUTLINED_FUNCTION_6_1();
}

id sub_249E5CC40(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_249E7ABD8();

  v3 = [v1 initWithArray_];

  return v3;
}

char *sub_249E5CCB8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v56 = a8;
  v58 = a5;
  v57 = a3;
  v55 = type metadata accessor for IDSManager.MessageType(0);
  MEMORY[0x28223BE20](v55);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_249E7A628();
  v14 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23820, &unk_249E7E860);
  v51 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    v49 = a7;
    v50 = v13;
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_249E7B128();

    v62 = 0xD000000000000011;
    v63 = 0x8000000249E830D0;
    v53 = a2;
    sub_249E60134(&v60);
    v22 = v60;
    v23 = v61;

    sub_249E5E8D4(&v60);
    MEMORY[0x24C204750](v22, v23);

    v24 = v62;
    v47 = v63;
    v48 = a4;
    v52 = a6;
    if (a4)
    {
      sub_249E7A7E8();
      sub_249E2AB74(&qword_28130D320, &unk_27EF23820, &unk_249E7E860);
      sub_249E2AB74(&unk_28130D310, &unk_27EF23820, &unk_249E7E860);
      a6 = v52;
      sub_249E2AB74(&unk_28130D300, &unk_27EF23820, &unk_249E7E860);
      sub_249E7A6E8();
      (*(v51 + 8))(v19, v17);
      v25 = *&v62;
      v26 = v57;
    }

    else
    {
      v26 = v57;
      v62 = v57;
      v25 = *&v57;
    }

    v27 = *&v21[OBJC_IVAR____TtC10DropInCore10IDSManager_serialQueue];
    v28 = v53;
    (*(v14 + 16))(v16, v53, v54);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = objc_allocWithZone(type metadata accessor for OneshotTimer(0));
    v31 = v27;
    v32 = OneshotTimer.init(timeInterval:queue:identifier:label:timerFiredHandler:)(v27, v16, v24, v47, sub_249E5E928, v29, v25);
    v33 = swift_allocObject();
    *(v33 + 16) = v58;
    *(v33 + 24) = a6;
    v34 = OBJC_IVAR____TtC10DropInCore10IDSManager_pendingMessageResponseHandlers;
    swift_beginAccess();

    v35 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *&v21[v34];
    sub_249DFE06C(sub_249E5EBA8, v33, v35, v28, isUniquelyReferenced_nonNull_native);
    *&v21[v34] = v59;
    swift_endAccess();
    v37 = v50;
    sub_249E7A618();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23C60, &unk_249E7F8B0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_249E80120;
    *(v38 + 32) = v56;
    swift_unknownObjectRetain();
    v39 = sub_249E584CC(v49, v28, v37, v38, v26, v48 & 1);
    v41 = v40;

    v42 = sub_249E7A698();
    v43 = sub_249E7AE28();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v62 = v45;
      *v44 = 136315138;
      v46 = sub_249E3A958(v39, v41, &v62);

      *(v44 + 4) = v46;
      _os_log_impl(&dword_249DEE000, v42, v43, "Message Send Request Succeeded: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x24C205870](v45, -1, -1);
      MEMORY[0x24C205870](v44, -1, -1);
    }

    else
    {
    }

    return sub_249E5E3E8(v37);
  }

  return result;
}

void sub_249E5D4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_249E7A628();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 16))(v8, a3, v5);
    v11 = sub_249E7A698();
    v12 = sub_249E7AE08();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v28 = a3;
      v14 = v13;
      v15 = swift_slowAlloc();
      v31 = v15;
      *v14 = 136315138;
      sub_249E5E658(&qword_28130D350, MEMORY[0x277CC95F0]);
      v16 = sub_249E7B2D8();
      v18 = v17;
      (*(v6 + 8))(v8, v5);
      v19 = sub_249E3A958(v16, v18, &v31);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_249DEE000, v11, v12, "Timed out waiting for response. Identifier = %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C205870](v15, -1, -1);
      v20 = v14;
      a3 = v28;
      MEMORY[0x24C205870](v20, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    v21 = sub_249E5B094(a3);
    if (v21)
    {
      v23 = v21;
      v24 = v22;
      sub_249E5DA18();
      v25 = swift_allocError();
      *v26 = 2;
      v29 = 1;
      v31 = v25;
      memcpy(v32, __src, 0x41uLL);
      v32[65] = 1;
      v23(&v31);
      sub_249DF2D58(v23, v24);
    }

    else
    {
    }
  }
}

uint64_t sub_249E5D7E0()
{
  v1 = sub_249E7A628();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  type metadata accessor for IDSManager.MessageType(0);
  OUTLINED_FUNCTION_28_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  sub_249E5E384(v0, v10 - v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0x746E657645;
    }

    v12 = OUTLINED_FUNCTION_26_2();
    v13(v12);
    v14 = 0x65736E6F70736552;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_26_2();
    v16(v15);
    v14 = 0x2074736575716552;
  }

  v22 = v14;
  OUTLINED_FUNCTION_0_15();
  sub_249E5E658(v17, v18);
  v19 = sub_249E7B2D8();
  MEMORY[0x24C204750](v19);

  v20 = v22;
  (*(v3 + 8))(v7, v1);
  return v20;
}

id sub_249E5D9B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_249E7AA88();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithService_];

  return v4;
}

unint64_t sub_249E5DA18()
{
  result = qword_27EF23F78;
  if (!qword_27EF23F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23F78);
  }

  return result;
}

void *sub_249E5DA6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_249E5DB2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_249E5DA8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_249E5DC3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_249E5DAAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_249E5DD3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_249E5DACC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_249E5DE54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_249E5DAEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_249E5DF6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_249E5DB0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_249E5E084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_249E5DB2C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24098, &qword_249E80248);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_249E3A81C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237C0, &qword_249E7E220);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_249E5DC3C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23AD0, &qword_249E7F570);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_249E3A7FC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_249E5DD3C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237D0, &qword_249E7E230);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_249E3BBA4(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF237F8, &qword_249E7E250);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_249E5DE54(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23800, &qword_249E7E260);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_249E3BBA4(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF23810, &qword_249E7E270);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_249E5DF6C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236F0, &qword_249E7E030);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_249E3A83C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24090, &qword_249E80240);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_249E5E084(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF24068, &qword_249E80220);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_249E3A864((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_249E5E1DC(id *a1)
{
  v1 = *a1;

  return sub_249E5E208(v1);
}

uint64_t sub_249E5E208(void *a1)
{
  v2 = [a1 serviceIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_249E7AAA8();

  return v3;
}

id sub_249E5E278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_249E7A9C8();

  v11 = sub_249E7AD38();

  v12 = sub_249E7A9C8();

  v13 = [a7 sendMessage:v10 toDestinations:v11 priority:a3 options:v12 identifier:a5 error:a6];

  return v13;
}

uint64_t sub_249E5E384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSManager.MessageType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E5E3E8(uint64_t a1)
{
  v2 = type metadata accessor for IDSManager.MessageType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249E5E444()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249E042BC;
  OUTLINED_FUNCTION_1_2();

  return sub_249E5C118(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_249E5E4F8()
{
  OUTLINED_FUNCTION_50();
  sub_249E7A628();
  OUTLINED_FUNCTION_17_3();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249E04BA4;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_34();

  return sub_249E5B278(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_249E5E658(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_286();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249E5E69C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF23FC0, qword_249E801F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_249E5E70C()
{
  result = qword_27EF23FE8;
  if (!qword_27EF23FE8)
  {
    sub_249DF691C(255, &qword_28130D150, 0x277D82BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF23FE8);
  }

  return result;
}

uint64_t sub_249E5E788(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF240A0, &qword_249E80258);
  OUTLINED_FUNCTION_37(v2);

  return sub_249E59654(a1);
}

char *sub_249E5E800()
{
  sub_249E7A628();
  OUTLINED_FUNCTION_17_3();
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  v11 = v0 + v7;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = (v0 + v8);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v0 + v9);
  v18 = *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_249E5CCB8(v10, v0 + v5, v12, v13, v15, v16, v17, v18);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249E5E930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF237E0, &unk_249E7E240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_249E5E9A8(uint64_t a1)
{
  sub_249E5EA2C(319, &qword_27EF240C0);
  if (v1 <= 0x3F)
  {
    sub_249E5EA2C(319, &unk_27EF240C8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_249E5EA2C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_249E7A628();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for IDSManager.IDSManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_249E5EB54()
{
  result = qword_27EF240D8;
  if (!qword_27EF240D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF240D8);
  }

  return result;
}

void *OUTLINED_FUNCTION_10_4(void *result)
{
  result[2] = 0;
  result[3] = 0;
  v3 = *(v2 - 424);
  result[4] = v1;
  result[5] = v3;
  v4 = *(v2 - 416);
  result[6] = *(v2 - 440);
  result[7] = v4;
  return result;
}

void OUTLINED_FUNCTION_19_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_21_4(uint64_t a1)
{

  return sub_249E7A698();
}

uint64_t OUTLINED_FUNCTION_37_2()
{
}

void OUTLINED_FUNCTION_39_2()
{
  v2 = *(v0 - 264);
}

void *OUTLINED_FUNCTION_47_1(void *__src, ...)
{
  va_start(va, __src);

  return memcpy(va, __src, 0x4AuLL);
}

uint64_t OUTLINED_FUNCTION_48_1(float a1)
{
  *v2 = a1;

  return sub_249E3A958(v3, v1, (v4 - 168));
}

uint64_t sub_249E5ED90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_249E5FDB8(a3, v24 - v10);
  v12 = sub_249E7AC78();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_249E044D0(v11, &unk_27EF236B0, &qword_249E7DFD0);
  }

  else
  {
    sub_249E7AC68();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_249E7AC28();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_249E7AAF8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_249E044D0(a3, &unk_27EF236B0, &qword_249E7DFD0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_249E044D0(a3, &unk_27EF236B0, &qword_249E7DFD0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t DropInCoreService.__allocating_init(homeManagerProvider:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DropInCoreService.init(homeManagerProvider:)(a1);
  return v2;
}

uint64_t DropInCoreService.init(homeManagerProvider:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_249E7A6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10DropInCore17DropInCoreService_logger;
  sub_249E7A6A8();
  if (a1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    (*(v5 + 16))(v7, v2 + v8, v4);
    v9 = sub_249E7A698();
    v10 = sub_249E7AE08();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_249DEE000, v9, v10, "Home Manager Provider is nil. Creating a new instance of Home Manager", v11, 2u);
      OUTLINED_FUNCTION_1();
    }

    (*(v5 + 8))(v7, v4);
    v12 = objc_allocWithZone(type metadata accessor for HomeManager());
    HomeManager.init(options:cachePolicy:)();
  }

  v13 = objc_allocWithZone(type metadata accessor for DropInServiceListenerDelegate(0));
  v14 = swift_unknownObjectRetain();
  *(v2 + OBJC_IVAR____TtC10DropInCore17DropInCoreService_listenerDelegate) = sub_249E3D5EC(v14);
  sub_249E5FB70();
  v15 = sub_249E7A868();
  v17 = sub_249E5F31C(v15, v16);
  *(v2 + OBJC_IVAR____TtC10DropInCore17DropInCoreService_listener) = v17;
  [v17 setDelegate_];
  [*(v2 + OBJC_IVAR____TtC10DropInCore17DropInCoreService_listener) resume];
  sub_249E7A858();
  v18 = sub_249E7AAF8();

  notify_post((v18 + 32));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v2;
}

id sub_249E5F31C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_249E7AA88();

  v4 = [v2 initWithMachServiceName_];

  return v4;
}

uint64_t sub_249E5F390(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_249E7AC78();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_249E5ED90(0, 0, v7, &unk_249E80388, v9);
}

uint64_t sub_249E5F490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_249E7AC78();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249E5F554, 0, 0);
}

void sub_249E5F554(uint64_t a1)
{
  v17 = v1;
  v1[8] = OBJC_IVAR____TtC10DropInCore17DropInCoreService_logger;
  v2 = sub_249E7A698();
  v3 = sub_249E7AE28();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v1[6];
    v4 = v1[7];
    v6 = v1[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    sub_249E7ACC8();
    sub_249E5FFAC();
    v9 = sub_249E7B2D8();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_249E3A958(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_249DEE000, v2, v3, "Task Priority = %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  v13 = *(*(v1[2] + OBJC_IVAR____TtC10DropInCore17DropInCoreService_listenerDelegate) + OBJC_IVAR____TtC10DropInCore29DropInServiceListenerDelegate_xpcDispatcher);
  if (!v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = *(*(v13 + 16) + OBJC_IVAR____TtC10DropInCore13DropInManager_messageCenter);
  if (!v14)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v1[9] = *(v14 + 24);

  v15 = swift_task_alloc();
  v1[10] = v15;
  *v15 = v1;
  v15[1] = sub_249E5F75C;

  sub_249E437C8();
}

uint64_t sub_249E5F75C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  *v2 = v1;
  *(v4 + 88) = v3;

  return MEMORY[0x2822009F8](sub_249E5F86C, 0, 0);
}

uint64_t sub_249E5F86C()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = v1;
    v3 = sub_249E7A698();
    v4 = sub_249E7AE28();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 88);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v2;
      *v7 = v5;
      v8 = v2;
      _os_log_impl(&dword_249DEE000, v3, v4, "Activated Companion Link Client %@", v6, 0xCu);
      sub_249E044D0(v7, &unk_27EF23C30, &qword_249E7DA20);
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_1();
    }

    v9 = *(v0 + 24);

    v9(0);
  }

  else
  {
    v10 = *(v0 + 24);
    sub_249E5FF58();
    v11 = swift_allocError();
    v10();
  }

  OUTLINED_FUNCTION_9_0();

  return v12();
}

uint64_t DropInCoreService.deinit()
{
  v1 = OBJC_IVAR____TtC10DropInCore17DropInCoreService_logger;
  sub_249E7A6B8();
  OUTLINED_FUNCTION_21();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t DropInCoreService.__deallocating_deinit()
{
  DropInCoreService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_249E5FAE4()
{
  sub_249E7B408();
  MEMORY[0x24C205020](0);
  return sub_249E7B438();
}

uint64_t sub_249E5FB30(uint64_t a1)
{
  sub_249E7B408();
  MEMORY[0x24C205020](0);
  return sub_249E7B438();
}

unint64_t sub_249E5FB70()
{
  result = qword_28130D250;
  if (!qword_28130D250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130D250);
  }

  return result;
}

uint64_t sub_249E5FBB4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_3(v8);
  *v9 = v10;
  v9[1] = sub_249E042BC;

  return sub_249E5F490(a1, v3, v4, v5, v6, v7);
}

uint64_t type metadata accessor for DropInCoreService(uint64_t a1)
{
  result = qword_28130E168;
  if (!qword_28130E168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249E5FCC8(uint64_t a1)
{
  result = sub_249E7A6B8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_249E5FDB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF236B0, &qword_249E7DFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249E5FE28()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_26_1(v1);

  return v4(v3);
}

uint64_t sub_249E5FEC0()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_26_1(v1);

  return v4(v3);
}

unint64_t sub_249E5FF58()
{
  result = qword_27EF24140;
  if (!qword_27EF24140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF24140);
  }

  return result;
}

unint64_t sub_249E5FFAC()
{
  result = qword_28130D2C0;
  if (!qword_28130D2C0)
  {
    sub_249E7AC78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130D2C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DropInCoreService.DropInCoreServiceError(_BYTE *result, int a2, int a3)
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