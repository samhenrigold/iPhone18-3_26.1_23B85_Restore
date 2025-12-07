void sub_1B0116230(void *a1, void (*a2)(void *))
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v4 = sub_1B014CB5C();
  __swift_project_value_buffer(v4, qword_1EDAE7828);
  v5 = a1;
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v11 = sub_1B014CC6C();
    v13 = sub_1B00E6C2C(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B00C4000, v6, v7, "Failed to connect to centralized feedback daemon: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  if (a1)
  {
    v14 = v5;
    a2(a1);
  }

  else
  {
    sub_1B00E8BA4();
    v15 = swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    (a2)(v15, v16);
  }
}

uint64_t sub_1B0116410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_1B0101878(sub_1B012491C, v7);
}

void sub_1B0116558(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C30, &qword_1B014F3F0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - v10);
  sub_1B00DE660(a1, &v19 - v10, &qword_1EB6C3C30, &qword_1B014F3F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = *v11;
    a3(v12, 1);
  }

  else
  {
    v14 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented;
    swift_beginAccess();
    if (*(a2 + v14) == 1)
    {
      if (qword_1EDAE7070 != -1)
      {
        swift_once();
      }

      v15 = sub_1B014CB5C();
      __swift_project_value_buffer(v15, qword_1EDAE7828);
      v16 = sub_1B014CB3C();
      v17 = sub_1B014CF6C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1B00C4000, v16, v17, "Resetting sentPresented after successful evaluation", v18, 2u);
        MEMORY[0x1B271F750](v18, -1, -1);
      }

      *(a2 + v14) = 0;
    }

    a3(a5, 0);
    sub_1B00DE9C0(v11, &qword_1EB6C3C30, &qword_1B014F3F0);
  }
}

uint64_t sub_1B0116774(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A10, &qword_1B0156558);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - v13;
  v19 = a3;
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  (*(v12 + 16))(v18 - v13, a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v14, v11);
  sub_1B0102174(&v19, v18, sub_1B0124890, v16);
}

uint64_t sub_1B01168EC(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A10, &qword_1B0156558);
    return sub_1B014CE7C();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A10, &qword_1B0156558);
    return sub_1B014CE8C();
  }
}

id FBKSInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1B0116A00(char a1)
{
  result = 0x4465727574616566;
  switch(a1)
  {
    case 1:
      result = 0x49656C646E75625FLL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0x6E6F436172747865;
      break;
    case 6:
      result = 0x6C616E696769726FLL;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x7265566C65646F6DLL;
      break;
    case 9:
      result = 0x74736F6E67616964;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x7250686769487369;
      break;
    case 12:
      result = 0x7461756C6176655FLL;
      break;
    case 13:
      result = 0x73657250746E6573;
      break;
    case 14:
      result = 0x6176457473726966;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B0116C08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0124124(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0116C3C(uint64_t a1)
{
  v2 = sub_1B01009E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0116C78(uint64_t a1)
{
  v2 = sub_1B01009E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id FBKSInteraction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBKSInteraction(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B0116E94@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 728))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t FBKSInteraction.EvaluationResponse.description.getter()
{
  if (*(v0 + 24) > 1u)
  {
    if (*(v0 + 24) == 2)
    {
      return 0x632074726F706552;
    }

    else if (*(v0 + 16) | *v0 | *(v0 + 8))
    {
      return 0x657373696D736944;
    }

    else
    {
      return 0x6E776F6E6B6E55;
    }
  }

  else if (*(v0 + 24))
  {
    return 0x642073626D756854;
  }

  else
  {
    return 0x752073626D756854;
  }
}

uint64_t sub_1B0116FB8()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x705573626D756874;
  v4 = 0x6F4473626D756874;
  if (v1 != 3)
  {
    v4 = 0x6F4374726F706572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657373696D736964;
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

uint64_t sub_1B0117068@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0124618(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B011709C(uint64_t a1)
{
  v2 = sub_1B011CA64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01170D8(uint64_t a1)
{
  v2 = sub_1B011CA64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0117114(uint64_t a1)
{
  v2 = sub_1B011CBB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0117150(uint64_t a1)
{
  v2 = sub_1B011CBB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B011718C(uint64_t a1)
{
  v2 = sub_1B011CAB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01171C8(uint64_t a1)
{
  v2 = sub_1B011CAB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0117204(uint64_t a1)
{
  v2 = sub_1B011CB0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0117240(uint64_t a1)
{
  v2 = sub_1B011CB0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B011727C(uint64_t a1)
{
  v2 = sub_1B011CB60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01172B8(uint64_t a1)
{
  v2 = sub_1B011CB60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01172F4(uint64_t a1)
{
  v2 = sub_1B011CC08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0117330(uint64_t a1)
{
  v2 = sub_1B011CC08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSInteraction.EvaluationResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C47A0, &qword_1B0151A50);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C47A8, &qword_1B0151A58);
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C47B0, &qword_1B0151A60);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C47B8, &qword_1B0151A68);
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C47C0, &qword_1B0151A70);
  v27 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C47C8, &qword_1B0151A78);
  v42 = *(v15 - 8);
  v43 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v18 = *v1;
  v39 = v1[1];
  v40 = v18;
  v41 = v1[2];
  v19 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B011CA64();
  sub_1B014D35C();
  if (v19 <= 1)
  {
    if (v19)
    {
      LOBYTE(v44) = 3;
      sub_1B011CB0C();
      v20 = v33;
      v21 = v43;
      sub_1B014D19C();
      v44 = v40;
      v45 = v39;
      v46 = v41;
      sub_1B00DCB14();
      v22 = v35;
      sub_1B014D1CC();
      v23 = v34;
    }

    else
    {
      LOBYTE(v44) = 2;
      sub_1B011CB60();
      v20 = v30;
      v21 = v43;
      sub_1B014D19C();
      v44 = v40;
      v45 = v39;
      v46 = v41;
      sub_1B00DCB14();
      v22 = v32;
      sub_1B014D1CC();
      v23 = v31;
    }

    goto LABEL_7;
  }

  if (v19 == 2)
  {
    LOBYTE(v44) = 4;
    sub_1B011CAB8();
    v20 = v36;
    v21 = v43;
    sub_1B014D19C();
    v44 = v40;
    v45 = v39;
    v46 = v41;
    sub_1B00DCB14();
    v22 = v38;
    sub_1B014D1CC();
    v23 = v37;
LABEL_7:
    (*(v23 + 8))(v20, v22);
    return (*(v42 + 8))(v17, v21);
  }

  if (!(v41 | v39 | v40))
  {
    LOBYTE(v44) = 0;
    sub_1B011CC08();
    v25 = v43;
    sub_1B014D19C();
    (*(v27 + 8))(v14, v12);
    return (*(v42 + 8))(v17, v25);
  }

  LOBYTE(v44) = 1;
  sub_1B011CBB4();
  v21 = v43;
  sub_1B014D19C();
  (*(v28 + 8))(v11, v29);
  return (*(v42 + 8))(v17, v21);
}

uint64_t FBKSInteraction.EvaluationResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4800, &qword_1B0151A80);
  v50 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v54 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4808, &qword_1B0151A88);
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v42 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4810, &qword_1B0151A90);
  v47 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v53 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4818, &qword_1B0151A98);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4820, &qword_1B0151AA0);
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4828, &qword_1B0151AA8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - v16;
  v18 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B011CA64();
  v19 = v62;
  sub_1B014D34C();
  if (v19)
  {
    goto LABEL_14;
  }

  v20 = v13;
  v62 = v11;
  v22 = v53;
  v21 = v54;
  v23 = sub_1B014D18C();
  v24 = (2 * *(v23 + 16)) | 1;
  v58 = v23;
  v59 = v23 + 32;
  v60 = 0;
  v61 = v24;
  v25 = sub_1B00D4B04();
  if (v25 == 5 || v60 != v61 >> 1)
  {
    v29 = sub_1B014D05C();
    swift_allocError();
    v30 = v17;
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE8, &qword_1B014F3B0);
    *v32 = &type metadata for FBKSInteraction.EvaluationResponse;
    sub_1B014D0FC();
    sub_1B014D04C();
    (*(*(v29 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    (*(v15 + 8))(v30, v14);
    swift_unknownObjectRelease();
LABEL_14:
    v41 = v55;
    return __swift_destroy_boxed_opaque_existential_0(v41);
  }

  if (v25 <= 1u)
  {
    if (v25)
    {
      LOBYTE(v56) = 1;
      sub_1B011CBB4();
      sub_1B014D0EC();
      (*(v44 + 8))(v10, v45);
      (*(v15 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v39 = 0;
      v38 = xmmword_1B01515C0;
    }

    else
    {
      LOBYTE(v56) = 0;
      sub_1B011CC08();
      sub_1B014D0EC();
      (*(v42 + 8))(v20, v62);
      (*(v15 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v39 = 0;
      v38 = 0uLL;
    }

    v40 = 3;
    v41 = v55;
    v26 = v52;
  }

  else if (v25 == 2)
  {
    LOBYTE(v56) = 2;
    sub_1B011CB60();
    sub_1B014D0EC();
    v33 = v52;
    sub_1B00DCC00();
    v34 = v43;
    sub_1B014D12C();
    (*(v47 + 8))(v22, v34);
    (*(v15 + 8))(v17, v14);
    swift_unknownObjectRelease();
    v40 = 0;
    v38 = v56;
    v39 = v57;
    v41 = v55;
    v26 = v33;
  }

  else
  {
    v26 = v52;
    if (v25 == 3)
    {
      LOBYTE(v56) = 3;
      sub_1B011CB0C();
      v27 = v51;
      sub_1B014D0EC();
      sub_1B00DCC00();
      v28 = v48;
      sub_1B014D12C();
      (*(v49 + 8))(v27, v28);
      (*(v15 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v38 = v56;
      v39 = v57;
      v40 = 1;
      v41 = v55;
    }

    else
    {
      LOBYTE(v56) = 4;
      sub_1B011CAB8();
      sub_1B014D0EC();
      v35 = v26;
      sub_1B00DCC00();
      v36 = v46;
      sub_1B014D12C();
      (*(v50 + 8))(v21, v36);
      (*(v15 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v38 = v56;
      v39 = v57;
      v40 = 2;
      v41 = v55;
      v26 = v35;
    }
  }

  *v26 = v38;
  *(v26 + 16) = v39;
  *(v26 + 24) = v40;
  return __swift_destroy_boxed_opaque_existential_0(v41);
}

uint64_t sub_1B0118234()
{
  if (*(v0 + 24) > 1u)
  {
    if (*(v0 + 24) == 2)
    {
      return 0x632074726F706552;
    }

    else if (*(v0 + 16) | *v0 | *(v0 + 8))
    {
      return 0x657373696D736944;
    }

    else
    {
      return 0x6E776F6E6B6E55;
    }
  }

  else if (*(v0 + 24))
  {
    return 0x642073626D756854;
  }

  else
  {
    return 0x752073626D756854;
  }
}

void static FBKSInteraction.userResponse(id:)(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 3;
}

void *sub_1B011833C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_1B0118364(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B013E0D0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B013F300();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B013E840(v16, a4 & 1);
    v11 = sub_1B013E0D0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1B014D28C();
      __break(1u);
_objc_release_x1:
      MEMORY[0x1EEE66BB8]();
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  sub_1B013F0DC(v11, a2, a3, a1, v21);
}

uint64_t sub_1B01184A8(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B013E148(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B013F46C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B013EAE4(v16, a4 & 1);
    v11 = sub_1B013E148(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1B014D28C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1B013F0DC(v11, a2, a3, a1, v21);

    return sub_1B00D1FFC(a2, a3);
  }
}

void sub_1B01185F4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B013E0D0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B013F5DC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B013EE24(v16, a4 & 1);
    v11 = sub_1B013E0D0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1B014D28C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    sub_1B00D20C0(a1, v22);
  }

  else
  {
    sub_1B013F124(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1B0118744@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
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
    v10 = sub_1B014C95C();
    if (v10)
    {
      v11 = sub_1B014C98C();
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
      result = sub_1B014C97C();
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
  v10 = sub_1B014C95C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1B014C98C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1B014C97C();
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

uint64_t sub_1B0118974(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
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
    v10 = sub_1B0119718(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1B00D2024(a3, a4);
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
  sub_1B0118744(v13, a3, a4, &v12);
  v10 = v4;
  sub_1B00D2024(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

void sub_1B0118B04(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v25 = v8;
    if (!v6)
    {
      break;
    }

LABEL_13:
    v15 = __clz(__rbit64(v6)) | (v9 << 6);
    v16 = *(*(a2 + 48) + 16 * v15 + 8);
    v17 = *(a2 + 56) + 24 * v15;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);

    sub_1B00DE580(v18, v19, v20);
    if (!v16)
    {
LABEL_28:

      MEMORY[0x1B271EE00](v25);
      return;
    }

    v21 = *(a1 + 48);
    v26[2] = *(a1 + 32);
    v26[3] = v21;
    v27 = *(a1 + 64);
    v22 = *(a1 + 16);
    v26[0] = *a1;
    v26[1] = v22;
    sub_1B014CCAC();

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        MEMORY[0x1B271EE00](3);
        sub_1B014CCAC();
        v10 = v18;
        v11 = v19;
        v12 = 3;
      }

      else if (v20 == 4)
      {
        MEMORY[0x1B271EE00](4);
        sub_1B0118D5C(v26, v18);
        v10 = v18;
        v11 = v19;
        v12 = 4;
      }

      else
      {
        MEMORY[0x1B271EE00](5);
        sub_1B0118B04(v26, v18);
        v10 = v18;
        v11 = v19;
        v12 = 5;
      }

      sub_1B00DE5AC(v10, v11, v12);
      goto LABEL_6;
    }

    if (!v20)
    {
      MEMORY[0x1B271EE00](0);
      sub_1B014D31C();
LABEL_6:
      v13 = v25;
      goto LABEL_7;
    }

    v13 = v25;
    if (v20 == 1)
    {
      MEMORY[0x1B271EE00](1);
      MEMORY[0x1B271EE00](v18);
    }

    else
    {
      MEMORY[0x1B271EE00](2);
      if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v23 = v18;
      }

      else
      {
        v23 = 0;
      }

      MEMORY[0x1B271EE20](v23);
    }

LABEL_7:
    v6 &= v6 - 1;
    v8 = sub_1B014D33C() ^ v13;
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v7)
    {
      goto LABEL_28;
    }

    v6 = *(v3 + 8 * v14);
    ++v9;
    if (v6)
    {
      v9 = v14;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1B0118D5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1B271EE00](v4);
  if (v4)
  {
    v6 = (a2 + 48);
    do
    {
      v10 = *(v6 - 2);
      v11 = *v6;
      if (v11 > 2)
      {
        v12 = *(v6 - 1);
        if (v11 == 3)
        {
          MEMORY[0x1B271EE00](3);

          sub_1B014CCAC();
          v7 = v10;
          v8 = v12;
          v9 = 3;
        }

        else if (v11 == 4)
        {
          MEMORY[0x1B271EE00](4);

          sub_1B0118D5C(a1, v10);
          v7 = v10;
          v8 = v12;
          v9 = 4;
        }

        else
        {
          MEMORY[0x1B271EE00](5);

          sub_1B0118B04(a1, v10);
          v7 = v10;
          v8 = v12;
          v9 = 5;
        }

        result = sub_1B00DE5AC(v7, v8, v9);
      }

      else if (*v6)
      {
        if (v11 == 1)
        {
          MEMORY[0x1B271EE00](1);
          result = MEMORY[0x1B271EE00](v10);
        }

        else
        {
          MEMORY[0x1B271EE00](2);
          if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v13 = v10;
          }

          else
          {
            v13 = 0;
          }

          result = MEMORY[0x1B271EE20](v13);
        }
      }

      else
      {
        MEMORY[0x1B271EE00](0);
        result = sub_1B014D31C();
      }

      v6 += 24;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t _s15FeedbackService15FBKSInteractionC13FeatureDomainO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_82;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_75;
      }

      v8 = 1;
      sub_1B0100A3C(*a1, 1uLL);
      sub_1B0100A3C(v4, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 2uLL);
      v6 = v4;
      v7 = 2;
      goto LABEL_82;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 3uLL);
      v6 = v4;
      v7 = 3;
      goto LABEL_82;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 4uLL);
      v6 = v4;
      v7 = 4;
      goto LABEL_82;
    case 5uLL:
      if (v5 != 5)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 5uLL);
      v6 = v4;
      v7 = 5;
      goto LABEL_82;
    case 6uLL:
      if (v5 != 6)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 6uLL);
      v6 = v4;
      v7 = 6;
      goto LABEL_82;
    case 7uLL:
      if (v5 != 7)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 7uLL);
      v6 = v4;
      v7 = 7;
      goto LABEL_82;
    case 8uLL:
      if (v5 != 8)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 8uLL);
      v6 = v4;
      v7 = 8;
      goto LABEL_82;
    case 9uLL:
      if (v5 != 9)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 9uLL);
      v6 = v4;
      v7 = 9;
      goto LABEL_82;
    case 0xAuLL:
      if (v5 != 10)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0xAuLL);
      v6 = v4;
      v7 = 10;
      goto LABEL_82;
    case 0xBuLL:
      if (v5 != 11)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0xBuLL);
      v6 = v4;
      v7 = 11;
      goto LABEL_82;
    case 0xCuLL:
      if (v5 != 12)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0xCuLL);
      v6 = v4;
      v7 = 12;
      goto LABEL_82;
    case 0xDuLL:
      if (v5 != 13)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0xDuLL);
      v6 = v4;
      v7 = 13;
      goto LABEL_82;
    case 0xEuLL:
      if (v5 != 14)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0xEuLL);
      v6 = v4;
      v7 = 14;
      goto LABEL_82;
    case 0xFuLL:
      if (v5 != 15)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0xFuLL);
      v6 = v4;
      v7 = 15;
      goto LABEL_82;
    case 0x10uLL:
      if (v5 != 16)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x10uLL);
      v6 = v4;
      v7 = 16;
      goto LABEL_82;
    case 0x11uLL:
      if (v5 != 17)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x11uLL);
      v6 = v4;
      v7 = 17;
      goto LABEL_82;
    case 0x12uLL:
      if (v5 != 18)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x12uLL);
      v6 = v4;
      v7 = 18;
      goto LABEL_82;
    case 0x13uLL:
      if (v5 != 19)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x13uLL);
      v6 = v4;
      v7 = 19;
      goto LABEL_82;
    case 0x14uLL:
      if (v5 != 20)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x14uLL);
      v6 = v4;
      v7 = 20;
      goto LABEL_82;
    case 0x15uLL:
      if (v5 != 21)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x15uLL);
      v6 = v4;
      v7 = 21;
      goto LABEL_82;
    case 0x16uLL:
      if (v5 != 22)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x16uLL);
      v6 = v4;
      v7 = 22;
      goto LABEL_82;
    case 0x17uLL:
      if (v5 != 23)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x17uLL);
      v6 = v4;
      v7 = 23;
      goto LABEL_82;
    case 0x18uLL:
      if (v5 != 24)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x18uLL);
      v6 = v4;
      v7 = 24;
      goto LABEL_82;
    case 0x19uLL:
      if (v5 != 25)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x19uLL);
      v6 = v4;
      v7 = 25;
      goto LABEL_82;
    case 0x1AuLL:
      if (v5 != 26)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x1AuLL);
      v6 = v4;
      v7 = 26;
      goto LABEL_82;
    case 0x1BuLL:
      if (v5 != 27)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x1BuLL);
      v6 = v4;
      v7 = 27;
      goto LABEL_82;
    case 0x1CuLL:
      if (v5 != 28)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x1CuLL);
      v6 = v4;
      v7 = 28;
      goto LABEL_82;
    case 0x1DuLL:
      if (v5 != 29)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x1DuLL);
      v6 = v4;
      v7 = 29;
      goto LABEL_82;
    case 0x1EuLL:
      if (v5 != 30)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x1EuLL);
      v6 = v4;
      v7 = 30;
      goto LABEL_82;
    case 0x1FuLL:
      if (v5 != 31)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x1FuLL);
      v6 = v4;
      v7 = 31;
      goto LABEL_82;
    case 0x20uLL:
      if (v5 != 32)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x20uLL);
      v6 = v4;
      v7 = 32;
      goto LABEL_82;
    case 0x21uLL:
      if (v5 != 33)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x21uLL);
      v6 = v4;
      v7 = 33;
      goto LABEL_82;
    case 0x22uLL:
      if (v5 != 34)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x22uLL);
      v6 = v4;
      v7 = 34;
      goto LABEL_82;
    case 0x23uLL:
      if (v5 != 35)
      {
        goto LABEL_75;
      }

      sub_1B0100A3C(*a1, 0x23uLL);
      v6 = v4;
      v7 = 35;
      goto LABEL_82;
    default:
      if (v5 >= 0x24)
      {
        v9 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v11 = sub_1B014D25C();
          sub_1B0100B40(v4, v5);
          sub_1B0100B40(v2, v3);
          sub_1B0100A3C(v2, v3);
          sub_1B0100A3C(v4, v5);
          return v11 & 1;
        }

        sub_1B0100B40(v9, v3);
        sub_1B0100B40(v2, v3);
        sub_1B0100A3C(v2, v3);
        v6 = v2;
        v7 = v3;
LABEL_82:
        sub_1B0100A3C(v6, v7);
        return 1;
      }

      else
      {
LABEL_75:
        sub_1B0100B40(*a2, *(a2 + 8));
        sub_1B0100B40(v2, v3);
        sub_1B0100A3C(v2, v3);
        sub_1B0100A3C(v4, v5);
        return 0;
      }
  }
}

uint64_t _s15FeedbackService15FBKSInteractionC15StructuredValueO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 == 3)
      {
        if (v2 == v5 && v3 == v6)
        {
          sub_1B00DE580(v2, v3, 3);
          sub_1B00DE580(v2, v3, 3);
          sub_1B00DE5AC(v2, v3, 3);
          sub_1B00DE5AC(v2, v3, 3);
          v8 = 1;
          return v8 & 1;
        }

        v9 = sub_1B014D25C();
        sub_1B00DE580(v5, v6, 3);
        sub_1B00DE580(v2, v3, 3);
        sub_1B00DE5AC(v2, v3, 3);
        v10 = v5;
        v11 = v6;
        v12 = 3;
LABEL_23:
        sub_1B00DE5AC(v10, v11, v12);
        return v9 & 1;
      }
    }

    else if (v4 == 4)
    {
      if (v7 == 4)
      {
        sub_1B00DE580(*a2, *(a2 + 8), 4);
        sub_1B00DE580(v2, v3, 4);
        v9 = sub_1B010C968(v2, v5);
        sub_1B00DE5AC(v2, v3, 4);
        v10 = v5;
        v11 = v6;
        v12 = 4;
        goto LABEL_23;
      }
    }

    else if (v7 == 5)
    {
      sub_1B00DE580(*a2, *(a2 + 8), 5);
      sub_1B00DE580(v2, v3, 5);
      v9 = sub_1B00D5754(v2, v5);
      sub_1B00DE5AC(v2, v3, 5);
      v10 = v5;
      v11 = v6;
      v12 = 5;
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_1B00DE5AC(*a1, v3, 0);
      sub_1B00DE5AC(v5, v6, 0);
      v8 = v5 ^ v2 ^ 1;
      return v8 & 1;
    }

    goto LABEL_25;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      sub_1B00DE5AC(*a1, v3, 2);
      sub_1B00DE5AC(v5, v6, 2);
      if (*&v2 == *&v5)
      {
        v8 = 1;
        return v8 & 1;
      }

LABEL_26:
      v8 = 0;
      return v8 & 1;
    }

LABEL_25:
    sub_1B00DE580(v5, v6, v7);
    sub_1B00DE5AC(v2, v3, v4);
    sub_1B00DE5AC(v5, v6, v7);
    goto LABEL_26;
  }

  if (v7 != 1)
  {
    goto LABEL_25;
  }

  sub_1B00DE5AC(*a1, v3, 1);
  sub_1B00DE5AC(v5, v6, 1);
  v8 = v2 == v5;
  return v8 & 1;
}

uint64_t sub_1B0119718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1B014C95C();
  v11 = result;
  if (result)
  {
    result = sub_1B014C98C();
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

  sub_1B014C97C();
  sub_1B0118744(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1B01197D0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_1B00DE8A4(a3, a4);
          return sub_1B0118974(v13, a2, a3, a4) & 1;
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

uint64_t _s15FeedbackService15FBKSInteractionC7ContentO2eeoiySbAE_AEtFZ_0(char *a1, void *a2)
{
  v141 = a1;
  v142 = a2;
  v2 = sub_1B014CA4C();
  v138 = *(v2 - 8);
  v139 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v126 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for FBKSInteraction.Content(0);
  v4 = MEMORY[0x1EEE9AC00](v140);
  v137 = (&v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x1EEE9AC00](v4);
  v136 = (&v126 - v7);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v135 = (&v126 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v134 = (&v126 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v133 = &v126 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v132 = &v126 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v131 = &v126 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v130 = (&v126 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v129 = (&v126 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v128 = (&v126 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v127 = (&v126 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v126 - v27);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = (&v126 - v30);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = (&v126 - v33);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = (&v126 - v36);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = (&v126 - v39);
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = (&v126 - v42);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v126 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C49E8, &unk_1B0156520);
  v47 = MEMORY[0x1EEE9AC00](v46 - 8);
  v49 = &v126 - v48;
  v50 = &v126 + *(v47 + 56) - v48;
  sub_1B011A8C4(v141, &v126 - v48, type metadata accessor for FBKSInteraction.Content);
  v51 = v142;
  v142 = v50;
  sub_1B011A8C4(v51, v50, type metadata accessor for FBKSInteraction.Content);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B011A8C4(v49, v43, type metadata accessor for FBKSInteraction.Content);
      v104 = *v43;
      v103 = v43[1];
      v106 = v43[2];
      v105 = v43[3];
      v107 = v142;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1B00D2024(v106, v105);
        goto LABEL_24;
      }

      v73 = v49;
      v108 = v107[2];
      v109 = v107[3];
      if (v104 == *v107 && v103 == v107[1])
      {

LABEL_65:
        v59 = sub_1B01197D0(v106, v105, v108, v109);
        sub_1B00D2024(v108, v109);
        sub_1B00D2024(v106, v105);
        goto LABEL_66;
      }

      v124 = sub_1B014D25C();

      if (v124)
      {
        goto LABEL_65;
      }

      sub_1B00D2024(v108, v109);
      sub_1B00D2024(v106, v105);
      sub_1B011A92C(v73, type metadata accessor for FBKSInteraction.Content);
      goto LABEL_57;
    case 2u:
      sub_1B011A8C4(v49, v40, type metadata accessor for FBKSInteraction.Content);
      v62 = *v40;
      v61 = v40[1];
      v63 = v142;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    case 3u:
      sub_1B011A8C4(v49, v37, type metadata accessor for FBKSInteraction.Content);
      v54 = *v37;
      v55 = v37[1];
      v56 = v142;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    case 4u:
      sub_1B011A8C4(v49, v34, type metadata accessor for FBKSInteraction.Content);
      v54 = *v34;
      v55 = v34[1];
      v56 = v142;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    case 5u:
      sub_1B011A8C4(v49, v31, type metadata accessor for FBKSInteraction.Content);
      v54 = *v31;
      v55 = v31[1];
      v56 = v142;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    case 6u:
      sub_1B011A8C4(v49, v28, type metadata accessor for FBKSInteraction.Content);
      v54 = *v28;
      v55 = v28[1];
      v56 = v142;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    case 7u:
      v92 = v127;
      sub_1B011A8C4(v49, v127, type metadata accessor for FBKSInteraction.Content);
      v94 = *v92;
      v93 = v92[1];
      v96 = v92[2];
      v95 = v92[3];
      v97 = v142;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_53;
      }

      v98 = v49;
      v100 = *v97;
      v99 = v97[1];
      v102 = v97[2];
      v101 = v97[3];
      if (!sub_1B01197D0(v94, v93, v100, v99))
      {
        goto LABEL_61;
      }

      if (v96 != v102 || v95 != v101)
      {
        goto LABEL_68;
      }

      goto LABEL_52;
    case 8u:
      v113 = v128;
      sub_1B011A8C4(v49, v128, type metadata accessor for FBKSInteraction.Content);
      v94 = *v113;
      v93 = v113[1];
      v115 = v113[2];
      v114 = v113[3];
      v116 = v142;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
LABEL_53:

        sub_1B00D2024(v94, v93);
        goto LABEL_56;
      }

      v98 = v49;
      v100 = *v116;
      v99 = v116[1];
      v118 = v116[2];
      v117 = v116[3];
      if (!sub_1B01197D0(v94, v93, v100, v99))
      {
LABEL_61:

        sub_1B00D2024(v100, v99);
        sub_1B00D2024(v94, v93);
        goto LABEL_62;
      }

      if (v115 == v118 && v114 == v117)
      {
LABEL_52:
        sub_1B00D2024(v100, v99);
        sub_1B00D2024(v94, v93);

        goto LABEL_69;
      }

LABEL_68:
      v125 = sub_1B014D25C();
      sub_1B00D2024(v100, v99);
      sub_1B00D2024(v94, v93);

      if ((v125 & 1) == 0)
      {
LABEL_62:
        sub_1B011A92C(v98, type metadata accessor for FBKSInteraction.Content);
        goto LABEL_57;
      }

LABEL_69:
      v67 = v98;
LABEL_13:
      sub_1B011A92C(v67, type metadata accessor for FBKSInteraction.Content);
      v59 = 1;
      return v59 & 1;
    case 9u:
      v90 = v129;
      sub_1B011A8C4(v49, v129, type metadata accessor for FBKSInteraction.Content);
      v54 = *v90;
      v55 = v90[1];
      v56 = v142;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    case 0xAu:
      v112 = v130;
      sub_1B011A8C4(v49, v130, type metadata accessor for FBKSInteraction.Content);
      v62 = *v112;
      v61 = v112[1];
      v63 = v142;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    case 0xBu:
      v68 = v131;
      sub_1B011A8C4(v49, v131, type metadata accessor for FBKSInteraction.Content);
      v70 = *v68;
      v69 = *(v68 + 8);
      v71 = *(v68 + 16);
      v72 = v142;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        sub_1B00DE5AC(v70, v69, v71);
        goto LABEL_56;
      }

      v73 = v49;
      v74 = *v72;
      v75 = v72[1];
      v76 = *(v72 + 16);
      v146 = v70;
      v147 = v69;
      v148 = v71;
      v143 = v74;
      v144 = v75;
      v145 = v76;
      v59 = _s15FeedbackService15FBKSInteractionC15StructuredValueO2eeoiySbAE_AEtFZ_0(&v146, &v143);
      sub_1B00DE5AC(v74, v75, v76);
      sub_1B00DE5AC(v70, v69, v71);
LABEL_66:
      sub_1B011A92C(v73, type metadata accessor for FBKSInteraction.Content);
      return v59 & 1;
    case 0xCu:
      v141 = v49;
      v77 = v132;
      sub_1B011A8C4(v49, v132, type metadata accessor for FBKSInteraction.Content);
      v79 = *v77;
      v78 = *(v77 + 8);
      v81 = *(v77 + 16);
      v80 = *(v77 + 24);
      v82 = *(v77 + 32);
      v83 = v142;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_19;
      }

      goto LABEL_43;
    case 0xDu:
      v141 = v49;
      v111 = v133;
      sub_1B011A8C4(v49, v133, type metadata accessor for FBKSInteraction.Content);
      v79 = *v111;
      v78 = *(v111 + 8);
      v81 = *(v111 + 16);
      v80 = *(v111 + 24);
      v82 = *(v111 + 32);
      v83 = v142;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
LABEL_43:
        sub_1B00DE5AC(v81, v80, v82);
        sub_1B00D2024(v79, v78);
        v49 = v141;
        goto LABEL_56;
      }

LABEL_19:
      v84 = *v83;
      v85 = v83[1];
      v86 = v83[2];
      v87 = v83[3];
      v88 = *(v83 + 32);
      if (sub_1B01197D0(v79, v78, v84, v85))
      {
        v146 = v81;
        v147 = v80;
        v148 = v82;
        v143 = v86;
        v144 = v87;
        v145 = v88;
        v89 = _s15FeedbackService15FBKSInteractionC15StructuredValueO2eeoiySbAE_AEtFZ_0(&v146, &v143);
        LODWORD(v142) = v88;
        v59 = v89;
        sub_1B00D2024(v84, v85);
        sub_1B00D2024(v79, v78);
        sub_1B00DE5AC(v86, v87, v142);
        sub_1B00DE5AC(v81, v80, v82);
        sub_1B011A92C(v141, type metadata accessor for FBKSInteraction.Content);
        return v59 & 1;
      }

      sub_1B00DE5AC(v86, v87, v88);
      sub_1B00DE5AC(v81, v80, v82);
      sub_1B00D2024(v84, v85);
      sub_1B00D2024(v79, v78);
      sub_1B011A92C(v141, type metadata accessor for FBKSInteraction.Content);
      goto LABEL_57;
    case 0xEu:
      v60 = v134;
      sub_1B011A8C4(v49, v134, type metadata accessor for FBKSInteraction.Content);
      v62 = *v60;
      v61 = v60[1];
      v63 = v142;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    case 0xFu:
      v91 = v135;
      sub_1B011A8C4(v49, v135, type metadata accessor for FBKSInteraction.Content);
      v62 = *v91;
      v61 = v91[1];
      v63 = v142;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    case 0x10u:
      v53 = v136;
      sub_1B011A8C4(v49, v136, type metadata accessor for FBKSInteraction.Content);
      v54 = *v53;
      v55 = v53[1];
      v56 = v142;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
LABEL_5:
        v57 = *v56;
        v58 = v56[1];
        v59 = sub_1B01197D0(v54, v55, *v56, v58);
        sub_1B00D2024(v57, v58);
        sub_1B00D2024(v54, v55);
        goto LABEL_6;
      }

LABEL_17:
      sub_1B00D2024(v54, v55);
      goto LABEL_56;
    case 0x11u:
      v110 = v137;
      sub_1B011A8C4(v49, v137, type metadata accessor for FBKSInteraction.Content);
      v62 = *v110;
      v61 = v110[1];
      v63 = v142;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
LABEL_24:

LABEL_56:
        sub_1B00DE9C0(v49, &qword_1EB6C49E8, &unk_1B0156520);
        goto LABEL_57;
      }

LABEL_8:
      v64 = *v63;
      v65 = v63[1];
      if (v62 == v64 && v61 == v65)
      {
      }

      else
      {
        v66 = sub_1B014D25C();

        if ((v66 & 1) == 0)
        {
          sub_1B011A92C(v49, type metadata accessor for FBKSInteraction.Content);
LABEL_57:
          v59 = 0;
          return v59 & 1;
        }
      }

      v67 = v49;
      goto LABEL_13;
    default:
      sub_1B011A8C4(v49, v45, type metadata accessor for FBKSInteraction.Content);
      v52 = v142;
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v138 + 8))(v45, v139);
        goto LABEL_56;
      }

      v121 = v138;
      v120 = v139;
      v122 = v126;
      (*(v138 + 32))(v126, v52, v139);
      v59 = sub_1B014CA0C();
      v123 = *(v121 + 8);
      v123(v122, v120);
      v123(v45, v120);
LABEL_6:
      sub_1B011A92C(v49, type metadata accessor for FBKSInteraction.Content);
      return v59 & 1;
  }
}

unint64_t sub_1B011A788(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C49E0, &qword_1B0156518);
    v3 = sub_1B014D0CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1B013E0D0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B011A8C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B011A92C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B011A98C()
{
  result = qword_1EDAE71B0;
  if (!qword_1EDAE71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71B0);
  }

  return result;
}

uint64_t sub_1B011A9E0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C41A8, &qword_1B01515E0);
    sub_1B0100AA4(a2, type metadata accessor for FBKSInteraction.AnnotatedContent, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B011AA7C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C41B0, &qword_1B01515E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B011AAEC()
{
  result = qword_1EDAE7600;
  if (!qword_1EDAE7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7600);
  }

  return result;
}

unint64_t sub_1B011AB40()
{
  result = qword_1EB6C42F0;
  if (!qword_1EB6C42F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C42F0);
  }

  return result;
}

unint64_t sub_1B011AB94()
{
  result = qword_1EB6C42F8;
  if (!qword_1EB6C42F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C42F8);
  }

  return result;
}

unint64_t sub_1B011ABE8()
{
  result = qword_1EB6C4300;
  if (!qword_1EB6C4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4300);
  }

  return result;
}

unint64_t sub_1B011AC3C()
{
  result = qword_1EB6C4308;
  if (!qword_1EB6C4308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4308);
  }

  return result;
}

unint64_t sub_1B011AC90()
{
  result = qword_1EB6C4310;
  if (!qword_1EB6C4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4310);
  }

  return result;
}

unint64_t sub_1B011ACE4()
{
  result = qword_1EB6C4318;
  if (!qword_1EB6C4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4318);
  }

  return result;
}

unint64_t sub_1B011AD38()
{
  result = qword_1EB6C4320;
  if (!qword_1EB6C4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4320);
  }

  return result;
}

unint64_t sub_1B011AD8C()
{
  result = qword_1EB6C4328;
  if (!qword_1EB6C4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4328);
  }

  return result;
}

unint64_t sub_1B011ADE0()
{
  result = qword_1EB6C4330;
  if (!qword_1EB6C4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4330);
  }

  return result;
}

unint64_t sub_1B011AE34()
{
  result = qword_1EB6C4338;
  if (!qword_1EB6C4338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4338);
  }

  return result;
}

unint64_t sub_1B011AE88()
{
  result = qword_1EB6C4340;
  if (!qword_1EB6C4340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4340);
  }

  return result;
}

unint64_t sub_1B011AEDC()
{
  result = qword_1EB6C4348;
  if (!qword_1EB6C4348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4348);
  }

  return result;
}

unint64_t sub_1B011AF30()
{
  result = qword_1EB6C4350;
  if (!qword_1EB6C4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4350);
  }

  return result;
}

unint64_t sub_1B011AF84()
{
  result = qword_1EB6C4358;
  if (!qword_1EB6C4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4358);
  }

  return result;
}

unint64_t sub_1B011AFD8()
{
  result = qword_1EB6C4360;
  if (!qword_1EB6C4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4360);
  }

  return result;
}

unint64_t sub_1B011B02C()
{
  result = qword_1EB6C4368;
  if (!qword_1EB6C4368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4368);
  }

  return result;
}

unint64_t sub_1B011B080()
{
  result = qword_1EB6C4370;
  if (!qword_1EB6C4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4370);
  }

  return result;
}

unint64_t sub_1B011B0D4()
{
  result = qword_1EB6C4378;
  if (!qword_1EB6C4378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4378);
  }

  return result;
}

unint64_t sub_1B011B128()
{
  result = qword_1EB6C4380;
  if (!qword_1EB6C4380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4380);
  }

  return result;
}

unint64_t sub_1B011B17C()
{
  result = qword_1EB6C4388;
  if (!qword_1EB6C4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4388);
  }

  return result;
}

unint64_t sub_1B011B1D0()
{
  result = qword_1EB6C4390;
  if (!qword_1EB6C4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4390);
  }

  return result;
}

unint64_t sub_1B011B224()
{
  result = qword_1EB6C4398;
  if (!qword_1EB6C4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4398);
  }

  return result;
}

unint64_t sub_1B011B278()
{
  result = qword_1EB6C43A0;
  if (!qword_1EB6C43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C43A0);
  }

  return result;
}

unint64_t sub_1B011B2CC()
{
  result = qword_1EB6C43A8;
  if (!qword_1EB6C43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C43A8);
  }

  return result;
}

unint64_t sub_1B011B320()
{
  result = qword_1EB6C43B0;
  if (!qword_1EB6C43B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C43B0);
  }

  return result;
}

unint64_t sub_1B011B374()
{
  result = qword_1EB6C43B8;
  if (!qword_1EB6C43B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C43B8);
  }

  return result;
}

unint64_t sub_1B011B3C8()
{
  result = qword_1EDAE6F38;
  if (!qword_1EDAE6F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F38);
  }

  return result;
}

unint64_t sub_1B011B41C()
{
  result = qword_1EB6C43C0;
  if (!qword_1EB6C43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C43C0);
  }

  return result;
}

unint64_t sub_1B011B470()
{
  result = qword_1EDAE6DE8;
  if (!qword_1EDAE6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6DE8);
  }

  return result;
}

unint64_t sub_1B011B4C4()
{
  result = qword_1EDAE6DF8;
  if (!qword_1EDAE6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6DF8);
  }

  return result;
}

unint64_t sub_1B011B518()
{
  result = qword_1EB6C43C8;
  if (!qword_1EB6C43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C43C8);
  }

  return result;
}

unint64_t sub_1B011B56C()
{
  result = qword_1EDAE6E08[0];
  if (!qword_1EDAE6E08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAE6E08);
  }

  return result;
}

unint64_t sub_1B011B5C0()
{
  result = qword_1EB6C43D0;
  if (!qword_1EB6C43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C43D0);
  }

  return result;
}

unint64_t sub_1B011B614()
{
  result = qword_1EB6C43D8;
  if (!qword_1EB6C43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C43D8);
  }

  return result;
}

unint64_t sub_1B011B668()
{
  result = qword_1EB6C43E0;
  if (!qword_1EB6C43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C43E0);
  }

  return result;
}

unint64_t sub_1B011B6BC()
{
  result = qword_1EDAE6E00;
  if (!qword_1EDAE6E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6E00);
  }

  return result;
}

unint64_t sub_1B011B710()
{
  result = qword_1EDAE6DF0;
  if (!qword_1EDAE6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6DF0);
  }

  return result;
}

unint64_t sub_1B011B764()
{
  result = qword_1EB6C4530;
  if (!qword_1EB6C4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4530);
  }

  return result;
}

unint64_t sub_1B011B7B8()
{
  result = qword_1EDAE7120;
  if (!qword_1EDAE7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7120);
  }

  return result;
}

void sub_1B011B80C(_BYTE *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v5 = sub_1B014CB5C();
  __swift_project_value_buffer(v5, qword_1EDAE7828);
  v6 = sub_1B014CB3C();
  v7 = sub_1B014CF6C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1B00E6C2C(0x65746E6573657270, 0xED0000293A5F2864, aBlock);
    _os_log_impl(&dword_1B00C4000, v6, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B271F750](v9, -1, -1);
    MEMORY[0x1B271F750](v8, -1, -1);
  }

  v37 = &type metadata for FeedbackFeatureFlags;
  v38 = sub_1B00DC988();
  LOBYTE(aBlock[0]) = 0;
  v10 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if ((v10 & 1) == 0)
  {
    sub_1B00DC9DC();
    v15 = swift_allocError();
    *v16 = 0;
    v17 = sub_1B014C9BC();
    (a2)[2](a2, v17);

LABEL_11:

    return;
  }

  v11 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented;
  swift_beginAccess();
  if (a1[v11])
  {
    v12 = sub_1B014CB3C();
    v13 = sub_1B014CF6C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B00C4000, v12, v13, "Ignoring .presented(), sentPresented already set", v14, 2u);
      MEMORY[0x1B271F750](v14, -1, -1);
    }

    a2[2](a2, 0);
    goto LABEL_11;
  }

  v18 = [objc_opt_self() mainBundle];
  v19 = [v18 bundleIdentifier];

  if (!v19)
  {
    v20 = 0x3E6C696E3CLL;
    v22 = 0xE500000000000000;
    goto LABEL_17;
  }

  v20 = sub_1B014CC1C();
  v22 = v21;

  if (v20 != 0xD00000000000001ALL || 0x80000001B015C960 != v22)
  {
LABEL_17:
    if (sub_1B014D25C())
    {
      v23 = 0;
    }

    else if (v20 == 0xD000000000000025 && 0x80000001B015C910 == v22)
    {
      v23 = 0;
      v20 = 0xD000000000000025;
    }

    else
    {
      v23 = sub_1B014D25C() ^ 1;
    }

    goto LABEL_23;
  }

  v23 = 0;
  v20 = 0xD00000000000001ALL;
LABEL_23:

  v24 = sub_1B014CB3C();
  v25 = sub_1B014CF3C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315394;
    v28 = sub_1B00E6C2C(v20, v22, aBlock);

    *(v26 + 4) = v28;
    *(v26 + 12) = 1024;
    *(v26 + 14) = v23 & 1;
    _os_log_impl(&dword_1B00C4000, v24, v25, "Presented interaction from %s. Is presented inline: %{BOOL}d", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1B271F750](v27, -1, -1);
    MEMORY[0x1B271F750](v26, -1, -1);
  }

  else
  {
  }

  FBKSInteraction.CAPayload(_:)(v23 & 1);
  if (qword_1EDAE7100 != -1)
  {
    swift_once();
  }

  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B00F9900;
  *(v29 + 24) = v4;

  v30 = sub_1B00FA9AC(sub_1B01249B8, v29);

  if (v30)
  {
    sub_1B00DC12C();
    v31 = sub_1B014CB9C();

    _s15FeedbackService12RACAnalyticsV32featureDomainEvaluationEventNameySSAA15FBKSInteractionCFZ_0(a1);
    v32 = sub_1B014CC0C();

    v33 = swift_allocObject();
    v33[2] = a1;
    v33[3] = sub_1B00F9900;
    v33[4] = v4;
    v38 = sub_1B01249A8;
    v39 = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B00DFB7C;
    v37 = &block_descriptor_335;
    v34 = _Block_copy(aBlock);

    v35 = a1;

    [v30 presentedInteractionWithAnalyticsPayload:v31 featureDomainEventName:v32 completion:v34];
    swift_unknownObjectRelease();
    _Block_release(v34);
  }

  else
  {
  }
}

unint64_t sub_1B011BEB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4540, &qword_1B0151898);
    v3 = sub_1B014D0CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B00DE660(v4, &v13, &qword_1EB6C3E88, &unk_1B0150310);
      v5 = v13;
      v6 = v14;
      result = sub_1B013E0D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B00D20C0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B011BFE4()
{
  result = qword_1EDAE71A8;
  if (!qword_1EDAE71A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71A8);
  }

  return result;
}

unint64_t sub_1B011C038()
{
  result = qword_1EDAE7138;
  if (!qword_1EDAE7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7138);
  }

  return result;
}

unint64_t sub_1B011C08C()
{
  result = qword_1EDAE6F30;
  if (!qword_1EDAE6F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F30);
  }

  return result;
}

unint64_t sub_1B011C0E0()
{
  result = qword_1EDAE7150;
  if (!qword_1EDAE7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7150);
  }

  return result;
}

unint64_t sub_1B011C134()
{
  result = qword_1EB6C4590;
  if (!qword_1EB6C4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4590);
  }

  return result;
}

unint64_t sub_1B011C188()
{
  result = qword_1EB6C4598;
  if (!qword_1EB6C4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4598);
  }

  return result;
}

unint64_t sub_1B011C1DC()
{
  result = qword_1EB6C45A0;
  if (!qword_1EB6C45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C45A0);
  }

  return result;
}

uint64_t sub_1B011C230(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C4580, &qword_1B01518D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B011C2B4()
{
  result = qword_1EDAE6DD0;
  if (!qword_1EDAE6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6DD0);
  }

  return result;
}

uint64_t sub_1B011C308(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6C4588, &qword_1B01518E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B011C380()
{
  result = qword_1EDAE7368[0];
  if (!qword_1EDAE7368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAE7368);
  }

  return result;
}

unint64_t sub_1B011C3D4()
{
  result = qword_1EB6C4678;
  if (!qword_1EB6C4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4678);
  }

  return result;
}

unint64_t sub_1B011C428()
{
  result = qword_1EB6C4680;
  if (!qword_1EB6C4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4680);
  }

  return result;
}

unint64_t sub_1B011C47C()
{
  result = qword_1EDAE7018;
  if (!qword_1EDAE7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7018);
  }

  return result;
}

unint64_t sub_1B011C4D0()
{
  result = qword_1EB6C4688;
  if (!qword_1EB6C4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4688);
  }

  return result;
}

unint64_t sub_1B011C524()
{
  result = qword_1EB6C4690;
  if (!qword_1EB6C4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4690);
  }

  return result;
}

unint64_t sub_1B011C578()
{
  result = qword_1EB6C4698;
  if (!qword_1EB6C4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4698);
  }

  return result;
}

unint64_t sub_1B011C5CC()
{
  result = qword_1EB6C46A0;
  if (!qword_1EB6C46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46A0);
  }

  return result;
}

unint64_t sub_1B011C620()
{
  result = qword_1EDAE7110;
  if (!qword_1EDAE7110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7110);
  }

  return result;
}

unint64_t sub_1B011C674()
{
  result = qword_1EB6C46A8;
  if (!qword_1EB6C46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46A8);
  }

  return result;
}

unint64_t sub_1B011C6C8()
{
  result = qword_1EB6C46B0;
  if (!qword_1EB6C46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46B0);
  }

  return result;
}

unint64_t sub_1B011C71C()
{
  result = qword_1EB6C46B8;
  if (!qword_1EB6C46B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46B8);
  }

  return result;
}

unint64_t sub_1B011C770()
{
  result = qword_1EB6C46C0;
  if (!qword_1EB6C46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46C0);
  }

  return result;
}

unint64_t sub_1B011C7C4()
{
  result = qword_1EB6C46C8;
  if (!qword_1EB6C46C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46C8);
  }

  return result;
}

unint64_t sub_1B011C818()
{
  result = qword_1EB6C46D0;
  if (!qword_1EB6C46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46D0);
  }

  return result;
}

unint64_t sub_1B011C86C()
{
  result = qword_1EB6C46D8;
  if (!qword_1EB6C46D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46D8);
  }

  return result;
}

unint64_t sub_1B011C8C0()
{
  result = qword_1EDAE6F68;
  if (!qword_1EDAE6F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F68);
  }

  return result;
}

unint64_t sub_1B011C914()
{
  result = qword_1EDAE6B30;
  if (!qword_1EDAE6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6B30);
  }

  return result;
}

unint64_t sub_1B011C968()
{
  result = qword_1EB6C46E0;
  if (!qword_1EB6C46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46E0);
  }

  return result;
}

unint64_t sub_1B011C9BC()
{
  result = qword_1EB6C46E8;
  if (!qword_1EB6C46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C46E8);
  }

  return result;
}

unint64_t sub_1B011CA10()
{
  result = qword_1EDAE6AE8;
  if (!qword_1EDAE6AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6AE8);
  }

  return result;
}

unint64_t sub_1B011CA64()
{
  result = qword_1EB6C47D0;
  if (!qword_1EB6C47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C47D0);
  }

  return result;
}

unint64_t sub_1B011CAB8()
{
  result = qword_1EB6C47D8;
  if (!qword_1EB6C47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C47D8);
  }

  return result;
}

unint64_t sub_1B011CB0C()
{
  result = qword_1EB6C47E0;
  if (!qword_1EB6C47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C47E0);
  }

  return result;
}

unint64_t sub_1B011CB60()
{
  result = qword_1EB6C47E8;
  if (!qword_1EB6C47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C47E8);
  }

  return result;
}

unint64_t sub_1B011CBB4()
{
  result = qword_1EB6C47F0;
  if (!qword_1EB6C47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C47F0);
  }

  return result;
}

unint64_t sub_1B011CC08()
{
  result = qword_1EB6C47F8;
  if (!qword_1EB6C47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C47F8);
  }

  return result;
}

unint64_t sub_1B011CC90()
{
  result = qword_1EDAE6DE0;
  if (!qword_1EDAE6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6DE0);
  }

  return result;
}

unint64_t sub_1B011CCE8()
{
  result = qword_1EB6C4840;
  if (!qword_1EB6C4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4840);
  }

  return result;
}

uint64_t sub_1B011CDB4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t keypath_get_22Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return sub_1B00DE660(v8 + v9, a5, a3, a4);
}

double keypath_get_20Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);

  return result;
}

void sub_1B011CED8(uint64_t a1)
{
  sub_1B011E02C(319, qword_1EDAE7778, type metadata accessor for FBKSInteraction.AnnotatedContent);
  if (v1 <= 0x3F)
  {
    sub_1B011E02C(319, qword_1EDAE76E0, type metadata accessor for FBKSInteraction.Content);
    if (v2 <= 0x3F)
    {
      sub_1B011E02C(319, &qword_1EDAE77E0, MEMORY[0x1E69695A8]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of FBKSInteraction.presented()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x298);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B00DCFAC;

  return v5();
}

uint64_t dispatch thunk of FBKSInteraction.evaluate(action:formResponse:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x2A8);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B011DE7C;

  return v9(a1, a2);
}

uint64_t sub_1B011DE7C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_1B011E02C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B014CFBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B011E080(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B011E0D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B011E134(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFDB && *(a1 + 16))
  {
    return (*a1 + 2147483612);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 35;
  if (v4 >= 0x25)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B011E18C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFDC)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483612;
    if (a3 >= 0x7FFFFFDC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFDC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 35;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B011E20C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B011E254(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1B011E2B0(uint64_t a1)
{
  sub_1B011E420();
  if (v1 <= 0x3F)
  {
    v2 = MEMORY[0x1E69E6158];
    v3 = MEMORY[0x1E6969080];
    sub_1B011E468(319, &qword_1EDAE7650, MEMORY[0x1E69E6158], MEMORY[0x1E6969080], "name data ");
    if (v4 <= 0x3F)
    {
      sub_1B011E468(319, &qword_1EDAE77F8, v3, v2, "image text ");
      if (v5 <= 0x3F)
      {
        sub_1B011E468(319, &qword_1EDAE77E8, v3, v2, "sketch text ");
        if (v6 <= 0x3F)
        {
          sub_1B011E468(319, &qword_1EDAE7800, v3, &type metadata for FBKSInteraction.StructuredValue, "image structured ");
          if (v7 <= 0x3F)
          {
            sub_1B011E468(319, &qword_1EDAE77F0, v3, &type metadata for FBKSInteraction.StructuredValue, "sketch structured ");
            if (v8 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B011E420()
{
  if (!qword_1EDAE7808)
  {
    v0 = sub_1B014CA4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAE7808);
    }
  }
}

void sub_1B011E468(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15FeedbackService15FBKSInteractionC18EvaluationResponseO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B011E4F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B011E538(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B011E580(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for FBKSInteraction.EvaluationResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FBKSInteraction.EvaluationResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FBKSInteraction.Content.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKSInteraction.Content.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B011EA38(uint64_t a1, int a2)
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

uint64_t sub_1B011EA80(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for FBKSInteraction.FeatureDomain.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKSInteraction.FeatureDomain.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBKSInteraction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBKSInteraction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B011EFC4()
{
  result = qword_1EB6C4860;
  if (!qword_1EB6C4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4860);
  }

  return result;
}

unint64_t sub_1B011F01C()
{
  result = qword_1EB6C4868;
  if (!qword_1EB6C4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4868);
  }

  return result;
}

unint64_t sub_1B011F074()
{
  result = qword_1EB6C4870;
  if (!qword_1EB6C4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4870);
  }

  return result;
}

unint64_t sub_1B011F0CC()
{
  result = qword_1EB6C4878;
  if (!qword_1EB6C4878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4878);
  }

  return result;
}

unint64_t sub_1B011F124()
{
  result = qword_1EB6C4880;
  if (!qword_1EB6C4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4880);
  }

  return result;
}

unint64_t sub_1B011F17C()
{
  result = qword_1EB6C4888;
  if (!qword_1EB6C4888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4888);
  }

  return result;
}

unint64_t sub_1B011F1D4()
{
  result = qword_1EB6C4890;
  if (!qword_1EB6C4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4890);
  }

  return result;
}

unint64_t sub_1B011F22C()
{
  result = qword_1EB6C4898;
  if (!qword_1EB6C4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4898);
  }

  return result;
}

unint64_t sub_1B011F284()
{
  result = qword_1EB6C48A0;
  if (!qword_1EB6C48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48A0);
  }

  return result;
}

unint64_t sub_1B011F2DC()
{
  result = qword_1EB6C48A8;
  if (!qword_1EB6C48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48A8);
  }

  return result;
}

unint64_t sub_1B011F334()
{
  result = qword_1EB6C48B0;
  if (!qword_1EB6C48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48B0);
  }

  return result;
}

unint64_t sub_1B011F38C()
{
  result = qword_1EB6C48B8;
  if (!qword_1EB6C48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48B8);
  }

  return result;
}

unint64_t sub_1B011F3E4()
{
  result = qword_1EB6C48C0;
  if (!qword_1EB6C48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48C0);
  }

  return result;
}

unint64_t sub_1B011F43C()
{
  result = qword_1EB6C48C8;
  if (!qword_1EB6C48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48C8);
  }

  return result;
}

unint64_t sub_1B011F494()
{
  result = qword_1EB6C48D0;
  if (!qword_1EB6C48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48D0);
  }

  return result;
}

unint64_t sub_1B011F4EC()
{
  result = qword_1EB6C48D8;
  if (!qword_1EB6C48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48D8);
  }

  return result;
}

unint64_t sub_1B011F544()
{
  result = qword_1EB6C48E0;
  if (!qword_1EB6C48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48E0);
  }

  return result;
}

unint64_t sub_1B011F59C()
{
  result = qword_1EB6C48E8;
  if (!qword_1EB6C48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48E8);
  }

  return result;
}

unint64_t sub_1B011F5F4()
{
  result = qword_1EB6C48F0;
  if (!qword_1EB6C48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48F0);
  }

  return result;
}

unint64_t sub_1B011F64C()
{
  result = qword_1EB6C48F8;
  if (!qword_1EB6C48F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C48F8);
  }

  return result;
}

unint64_t sub_1B011F6A4()
{
  result = qword_1EB6C4900;
  if (!qword_1EB6C4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4900);
  }

  return result;
}

unint64_t sub_1B011F6FC()
{
  result = qword_1EB6C4908;
  if (!qword_1EB6C4908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4908);
  }

  return result;
}

unint64_t sub_1B011F754()
{
  result = qword_1EB6C4910;
  if (!qword_1EB6C4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4910);
  }

  return result;
}

unint64_t sub_1B011F7AC()
{
  result = qword_1EB6C4918;
  if (!qword_1EB6C4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4918);
  }

  return result;
}

unint64_t sub_1B011F804()
{
  result = qword_1EB6C4920;
  if (!qword_1EB6C4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4920);
  }

  return result;
}

unint64_t sub_1B011F85C()
{
  result = qword_1EB6C4928;
  if (!qword_1EB6C4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4928);
  }

  return result;
}

unint64_t sub_1B011F8B4()
{
  result = qword_1EB6C4930;
  if (!qword_1EB6C4930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4930);
  }

  return result;
}

unint64_t sub_1B011F90C()
{
  result = qword_1EB6C4938;
  if (!qword_1EB6C4938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4938);
  }

  return result;
}

unint64_t sub_1B011F964()
{
  result = qword_1EB6C4940;
  if (!qword_1EB6C4940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4940);
  }

  return result;
}

unint64_t sub_1B011F9BC()
{
  result = qword_1EB6C4948;
  if (!qword_1EB6C4948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4948);
  }

  return result;
}

unint64_t sub_1B011FA14()
{
  result = qword_1EB6C4950;
  if (!qword_1EB6C4950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4950);
  }

  return result;
}

unint64_t sub_1B011FA6C()
{
  result = qword_1EB6C4958;
  if (!qword_1EB6C4958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4958);
  }

  return result;
}

unint64_t sub_1B011FAC4()
{
  result = qword_1EB6C4960;
  if (!qword_1EB6C4960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4960);
  }

  return result;
}

unint64_t sub_1B011FB1C()
{
  result = qword_1EB6C4968;
  if (!qword_1EB6C4968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4968);
  }

  return result;
}

unint64_t sub_1B011FB74()
{
  result = qword_1EB6C4970;
  if (!qword_1EB6C4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4970);
  }

  return result;
}

unint64_t sub_1B011FBCC()
{
  result = qword_1EB6C4978;
  if (!qword_1EB6C4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4978);
  }

  return result;
}

unint64_t sub_1B011FC24()
{
  result = qword_1EB6C4980;
  if (!qword_1EB6C4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4980);
  }

  return result;
}

unint64_t sub_1B011FC7C()
{
  result = qword_1EB6C4988;
  if (!qword_1EB6C4988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4988);
  }

  return result;
}

unint64_t sub_1B011FCD4()
{
  result = qword_1EB6C4990;
  if (!qword_1EB6C4990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4990);
  }

  return result;
}

unint64_t sub_1B011FD2C()
{
  result = qword_1EB6C4998;
  if (!qword_1EB6C4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4998);
  }

  return result;
}

unint64_t sub_1B011FD84()
{
  result = qword_1EB6C49A0;
  if (!qword_1EB6C49A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C49A0);
  }

  return result;
}

unint64_t sub_1B011FDDC()
{
  result = qword_1EB6C49A8;
  if (!qword_1EB6C49A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C49A8);
  }

  return result;
}

unint64_t sub_1B011FE34()
{
  result = qword_1EB6C49B0;
  if (!qword_1EB6C49B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C49B0);
  }

  return result;
}

unint64_t sub_1B011FE8C()
{
  result = qword_1EB6C49B8;
  if (!qword_1EB6C49B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C49B8);
  }

  return result;
}

unint64_t sub_1B011FEE4()
{
  result = qword_1EB6C49C0;
  if (!qword_1EB6C49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C49C0);
  }

  return result;
}

unint64_t sub_1B011FF3C()
{
  result = qword_1EDAE7348;
  if (!qword_1EDAE7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7348);
  }

  return result;
}

unint64_t sub_1B011FF94()
{
  result = qword_1EDAE7350;
  if (!qword_1EDAE7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7350);
  }

  return result;
}

unint64_t sub_1B011FFEC()
{
  result = qword_1EDAE72D8;
  if (!qword_1EDAE72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72D8);
  }

  return result;
}

unint64_t sub_1B0120044()
{
  result = qword_1EDAE72E0;
  if (!qword_1EDAE72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72E0);
  }

  return result;
}

unint64_t sub_1B012009C()
{
  result = qword_1EDAE7328;
  if (!qword_1EDAE7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7328);
  }

  return result;
}

unint64_t sub_1B01200F4()
{
  result = qword_1EDAE7330;
  if (!qword_1EDAE7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7330);
  }

  return result;
}

unint64_t sub_1B012014C()
{
  result = qword_1EDAE72F8;
  if (!qword_1EDAE72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72F8);
  }

  return result;
}

unint64_t sub_1B01201A4()
{
  result = qword_1EDAE7300;
  if (!qword_1EDAE7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7300);
  }

  return result;
}

unint64_t sub_1B01201FC()
{
  result = qword_1EDAE7318;
  if (!qword_1EDAE7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7318);
  }

  return result;
}

unint64_t sub_1B0120254()
{
  result = qword_1EDAE7320;
  if (!qword_1EDAE7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7320);
  }

  return result;
}

unint64_t sub_1B01202AC()
{
  result = qword_1EDAE7278;
  if (!qword_1EDAE7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7278);
  }

  return result;
}

unint64_t sub_1B0120304()
{
  result = qword_1EDAE7280;
  if (!qword_1EDAE7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7280);
  }

  return result;
}

unint64_t sub_1B012035C()
{
  result = qword_1EDAE72C8;
  if (!qword_1EDAE72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72C8);
  }

  return result;
}

unint64_t sub_1B01203B4()
{
  result = qword_1EDAE72D0;
  if (!qword_1EDAE72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72D0);
  }

  return result;
}

unint64_t sub_1B012040C()
{
  result = qword_1EDAE72B8;
  if (!qword_1EDAE72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72B8);
  }

  return result;
}

unint64_t sub_1B0120464()
{
  result = qword_1EDAE72C0;
  if (!qword_1EDAE72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72C0);
  }

  return result;
}

unint64_t sub_1B01204BC()
{
  result = qword_1EDAE72A8;
  if (!qword_1EDAE72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72A8);
  }

  return result;
}

unint64_t sub_1B0120514()
{
  result = qword_1EDAE72B0;
  if (!qword_1EDAE72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72B0);
  }

  return result;
}

unint64_t sub_1B012056C()
{
  result = qword_1EDAE72E8;
  if (!qword_1EDAE72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72E8);
  }

  return result;
}

unint64_t sub_1B01205C4()
{
  result = qword_1EDAE72F0;
  if (!qword_1EDAE72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72F0);
  }

  return result;
}

unint64_t sub_1B012061C()
{
  result = qword_1EDAE7298;
  if (!qword_1EDAE7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7298);
  }

  return result;
}

unint64_t sub_1B0120674()
{
  result = qword_1EDAE72A0;
  if (!qword_1EDAE72A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE72A0);
  }

  return result;
}

unint64_t sub_1B01206CC()
{
  result = qword_1EDAE7288;
  if (!qword_1EDAE7288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7288);
  }

  return result;
}

unint64_t sub_1B0120724()
{
  result = qword_1EDAE7290;
  if (!qword_1EDAE7290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7290);
  }

  return result;
}

unint64_t sub_1B012077C()
{
  result = qword_1EDAE7248;
  if (!qword_1EDAE7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7248);
  }

  return result;
}

unint64_t sub_1B01207D4()
{
  result = qword_1EDAE7250;
  if (!qword_1EDAE7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7250);
  }

  return result;
}

unint64_t sub_1B012082C()
{
  result = qword_1EDAE7238;
  if (!qword_1EDAE7238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7238);
  }

  return result;
}

unint64_t sub_1B0120884()
{
  result = qword_1EDAE7240;
  if (!qword_1EDAE7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7240);
  }

  return result;
}

unint64_t sub_1B01208DC()
{
  result = qword_1EDAE7258;
  if (!qword_1EDAE7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7258);
  }

  return result;
}

unint64_t sub_1B0120934()
{
  result = qword_1EDAE7260;
  if (!qword_1EDAE7260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7260);
  }

  return result;
}

unint64_t sub_1B012098C()
{
  result = qword_1EDAE7268;
  if (!qword_1EDAE7268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7268);
  }

  return result;
}

unint64_t sub_1B01209E4()
{
  result = qword_1EDAE7270;
  if (!qword_1EDAE7270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7270);
  }

  return result;
}

unint64_t sub_1B0120A3C()
{
  result = qword_1EDAE7308;
  if (!qword_1EDAE7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7308);
  }

  return result;
}

unint64_t sub_1B0120A94()
{
  result = qword_1EDAE7310;
  if (!qword_1EDAE7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7310);
  }

  return result;
}

unint64_t sub_1B0120AEC()
{
  result = qword_1EDAE7338;
  if (!qword_1EDAE7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7338);
  }

  return result;
}

unint64_t sub_1B0120B44()
{
  result = qword_1EDAE7340;
  if (!qword_1EDAE7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7340);
  }

  return result;
}

unint64_t sub_1B0120B9C()
{
  result = qword_1EDAE7358;
  if (!qword_1EDAE7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7358);
  }

  return result;
}

unint64_t sub_1B0120BF4()
{
  result = qword_1EDAE7360;
  if (!qword_1EDAE7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7360);
  }

  return result;
}

unint64_t sub_1B0120C4C()
{
  result = qword_1EDAE7188;
  if (!qword_1EDAE7188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7188);
  }

  return result;
}

unint64_t sub_1B0120CA4()
{
  result = qword_1EDAE7190;
  if (!qword_1EDAE7190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7190);
  }

  return result;
}

unint64_t sub_1B0120CFC()
{
  result = qword_1EDAE7140;
  if (!qword_1EDAE7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7140);
  }

  return result;
}

unint64_t sub_1B0120D54()
{
  result = qword_1EDAE7148;
  if (!qword_1EDAE7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7148);
  }

  return result;
}

unint64_t sub_1B0120DAC()
{
  result = qword_1EDAE7168;
  if (!qword_1EDAE7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7168);
  }

  return result;
}

unint64_t sub_1B0120E04()
{
  result = qword_1EDAE7170;
  if (!qword_1EDAE7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7170);
  }

  return result;
}

unint64_t sub_1B0120E5C()
{
  result = qword_1EDAE7160;
  if (!qword_1EDAE7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7160);
  }

  return result;
}

unint64_t sub_1B0120EB4()
{
  result = qword_1EDAE7158;
  if (!qword_1EDAE7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7158);
  }

  return result;
}

unint64_t sub_1B0120F0C()
{
  result = qword_1EDAE7178;
  if (!qword_1EDAE7178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7178);
  }

  return result;
}

unint64_t sub_1B0120F64()
{
  result = qword_1EDAE7180;
  if (!qword_1EDAE7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7180);
  }

  return result;
}

unint64_t sub_1B0120FBC()
{
  result = qword_1EDAE7128;
  if (!qword_1EDAE7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7128);
  }

  return result;
}

unint64_t sub_1B0121014()
{
  result = qword_1EDAE7130;
  if (!qword_1EDAE7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7130);
  }

  return result;
}

unint64_t sub_1B012106C()
{
  result = qword_1EDAE7198;
  if (!qword_1EDAE7198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7198);
  }

  return result;
}

unint64_t sub_1B01210C4()
{
  result = qword_1EDAE71A0;
  if (!qword_1EDAE71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71A0);
  }

  return result;
}

unint64_t sub_1B012111C()
{
  result = qword_1EDAE7500;
  if (!qword_1EDAE7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7500);
  }

  return result;
}

unint64_t sub_1B0121174()
{
  result = qword_1EDAE7508;
  if (!qword_1EDAE7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7508);
  }

  return result;
}

unint64_t sub_1B01211CC()
{
  result = qword_1EDAE7520;
  if (!qword_1EDAE7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7520);
  }

  return result;
}

unint64_t sub_1B0121224()
{
  result = qword_1EDAE7528;
  if (!qword_1EDAE7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7528);
  }

  return result;
}

unint64_t sub_1B012127C()
{
  result = qword_1EDAE75A0;
  if (!qword_1EDAE75A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75A0);
  }

  return result;
}

unint64_t sub_1B01212D4()
{
  result = qword_1EDAE75A8;
  if (!qword_1EDAE75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75A8);
  }

  return result;
}

unint64_t sub_1B012132C()
{
  result = qword_1EDAE74E0;
  if (!qword_1EDAE74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74E0);
  }

  return result;
}

unint64_t sub_1B0121384()
{
  result = qword_1EDAE74E8;
  if (!qword_1EDAE74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74E8);
  }

  return result;
}

unint64_t sub_1B01213DC()
{
  result = qword_1EDAE7580;
  if (!qword_1EDAE7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7580);
  }

  return result;
}

unint64_t sub_1B0121434()
{
  result = qword_1EDAE7588;
  if (!qword_1EDAE7588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7588);
  }

  return result;
}

unint64_t sub_1B012148C()
{
  result = qword_1EDAE7550;
  if (!qword_1EDAE7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7550);
  }

  return result;
}

unint64_t sub_1B01214E4()
{
  result = qword_1EDAE7558;
  if (!qword_1EDAE7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7558);
  }

  return result;
}

unint64_t sub_1B012153C()
{
  result = qword_1EDAE7560;
  if (!qword_1EDAE7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7560);
  }

  return result;
}

unint64_t sub_1B0121594()
{
  result = qword_1EDAE7568;
  if (!qword_1EDAE7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7568);
  }

  return result;
}

unint64_t sub_1B01215EC()
{
  result = qword_1EDAE7510;
  if (!qword_1EDAE7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7510);
  }

  return result;
}

unint64_t sub_1B0121644()
{
  result = qword_1EDAE7518;
  if (!qword_1EDAE7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7518);
  }

  return result;
}

unint64_t sub_1B012169C()
{
  result = qword_1EDAE74D0;
  if (!qword_1EDAE74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74D0);
  }

  return result;
}

unint64_t sub_1B01216F4()
{
  result = qword_1EDAE74D8;
  if (!qword_1EDAE74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74D8);
  }

  return result;
}

unint64_t sub_1B012174C()
{
  result = qword_1EDAE7530;
  if (!qword_1EDAE7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7530);
  }

  return result;
}

unint64_t sub_1B01217A4()
{
  result = qword_1EDAE7538;
  if (!qword_1EDAE7538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7538);
  }

  return result;
}

unint64_t sub_1B01217FC()
{
  result = qword_1EDAE7490;
  if (!qword_1EDAE7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7490);
  }

  return result;
}

unint64_t sub_1B0121854()
{
  result = qword_1EDAE7498;
  if (!qword_1EDAE7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7498);
  }

  return result;
}

unint64_t sub_1B01218AC()
{
  result = qword_1EDAE7460;
  if (!qword_1EDAE7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7460);
  }

  return result;
}

unint64_t sub_1B0121904()
{
  result = qword_1EDAE7468;
  if (!qword_1EDAE7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7468);
  }

  return result;
}

unint64_t sub_1B012195C()
{
  result = qword_1EDAE7480;
  if (!qword_1EDAE7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7480);
  }

  return result;
}

unint64_t sub_1B01219B4()
{
  result = qword_1EDAE7488;
  if (!qword_1EDAE7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7488);
  }

  return result;
}

unint64_t sub_1B0121A0C()
{
  result = qword_1EDAE7470;
  if (!qword_1EDAE7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7470);
  }

  return result;
}

unint64_t sub_1B0121A64()
{
  result = qword_1EDAE7478;
  if (!qword_1EDAE7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7478);
  }

  return result;
}

unint64_t sub_1B0121ABC()
{
  result = qword_1EDAE75B0;
  if (!qword_1EDAE75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75B0);
  }

  return result;
}

unint64_t sub_1B0121B14()
{
  result = qword_1EDAE75B8;
  if (!qword_1EDAE75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75B8);
  }

  return result;
}

unint64_t sub_1B0121B6C()
{
  result = qword_1EDAE7590;
  if (!qword_1EDAE7590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7590);
  }

  return result;
}

unint64_t sub_1B0121BC4()
{
  result = qword_1EDAE7598;
  if (!qword_1EDAE7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7598);
  }

  return result;
}

unint64_t sub_1B0121C1C()
{
  result = qword_1EDAE7540;
  if (!qword_1EDAE7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7540);
  }

  return result;
}

unint64_t sub_1B0121C74()
{
  result = qword_1EDAE7548;
  if (!qword_1EDAE7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7548);
  }

  return result;
}

unint64_t sub_1B0121CCC()
{
  result = qword_1EDAE74C0;
  if (!qword_1EDAE74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74C0);
  }

  return result;
}

unint64_t sub_1B0121D24()
{
  result = qword_1EDAE74C8;
  if (!qword_1EDAE74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74C8);
  }

  return result;
}

unint64_t sub_1B0121D7C()
{
  result = qword_1EDAE74F0;
  if (!qword_1EDAE74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74F0);
  }

  return result;
}

unint64_t sub_1B0121DD4()
{
  result = qword_1EDAE74F8;
  if (!qword_1EDAE74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74F8);
  }

  return result;
}

unint64_t sub_1B0121E2C()
{
  result = qword_1EDAE74A0;
  if (!qword_1EDAE74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74A0);
  }

  return result;
}

unint64_t sub_1B0121E84()
{
  result = qword_1EDAE74A8;
  if (!qword_1EDAE74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74A8);
  }

  return result;
}

unint64_t sub_1B0121EDC()
{
  result = qword_1EDAE75D0;
  if (!qword_1EDAE75D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75D0);
  }

  return result;
}

unint64_t sub_1B0121F34()
{
  result = qword_1EDAE75D8;
  if (!qword_1EDAE75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75D8);
  }

  return result;
}

unint64_t sub_1B0121F8C()
{
  result = qword_1EDAE74B0;
  if (!qword_1EDAE74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74B0);
  }

  return result;
}

unint64_t sub_1B0121FE4()
{
  result = qword_1EDAE74B8;
  if (!qword_1EDAE74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE74B8);
  }

  return result;
}

unint64_t sub_1B012203C()
{
  result = qword_1EDAE7570;
  if (!qword_1EDAE7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7570);
  }

  return result;
}

unint64_t sub_1B0122094()
{
  result = qword_1EDAE7578;
  if (!qword_1EDAE7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7578);
  }

  return result;
}

unint64_t sub_1B01220EC()
{
  result = qword_1EDAE71B8;
  if (!qword_1EDAE71B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71B8);
  }

  return result;
}

unint64_t sub_1B0122144()
{
  result = qword_1EDAE71C0;
  if (!qword_1EDAE71C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71C0);
  }

  return result;
}

unint64_t sub_1B012219C()
{
  result = qword_1EDAE71C8;
  if (!qword_1EDAE71C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71C8);
  }

  return result;
}

unint64_t sub_1B01221F4()
{
  result = qword_1EDAE71D0;
  if (!qword_1EDAE71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71D0);
  }

  return result;
}

unint64_t sub_1B012224C()
{
  result = qword_1EDAE71E8;
  if (!qword_1EDAE71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71E8);
  }

  return result;
}

unint64_t sub_1B01222A4()
{
  result = qword_1EDAE71F0;
  if (!qword_1EDAE71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71F0);
  }

  return result;
}

unint64_t sub_1B01222FC()
{
  result = qword_1EDAE71D8;
  if (!qword_1EDAE71D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71D8);
  }

  return result;
}

unint64_t sub_1B0122354()
{
  result = qword_1EDAE71E0;
  if (!qword_1EDAE71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE71E0);
  }

  return result;
}

unint64_t sub_1B01223AC()
{
  result = qword_1EDAE6FA0;
  if (!qword_1EDAE6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FA0);
  }

  return result;
}

unint64_t sub_1B0122404()
{
  result = qword_1EDAE6FA8;
  if (!qword_1EDAE6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FA8);
  }

  return result;
}

unint64_t sub_1B012245C()
{
  result = qword_1EDAE6FE0;
  if (!qword_1EDAE6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FE0);
  }

  return result;
}

unint64_t sub_1B01224B4()
{
  result = qword_1EDAE6FE8;
  if (!qword_1EDAE6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FE8);
  }

  return result;
}

unint64_t sub_1B012250C()
{
  result = qword_1EDAE6FF0;
  if (!qword_1EDAE6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FF0);
  }

  return result;
}

unint64_t sub_1B0122564()
{
  result = qword_1EDAE6FF8;
  if (!qword_1EDAE6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FF8);
  }

  return result;
}

unint64_t sub_1B01225BC()
{
  result = qword_1EDAE6FD0;
  if (!qword_1EDAE6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FD0);
  }

  return result;
}

unint64_t sub_1B0122614()
{
  result = qword_1EDAE6FD8;
  if (!qword_1EDAE6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FD8);
  }

  return result;
}

unint64_t sub_1B012266C()
{
  result = qword_1EDAE6FC0;
  if (!qword_1EDAE6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FC0);
  }

  return result;
}

unint64_t sub_1B01226C4()
{
  result = qword_1EDAE6FC8;
  if (!qword_1EDAE6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FC8);
  }

  return result;
}

unint64_t sub_1B012271C()
{
  result = qword_1EDAE6F90;
  if (!qword_1EDAE6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F90);
  }

  return result;
}

unint64_t sub_1B0122774()
{
  result = qword_1EDAE6F98;
  if (!qword_1EDAE6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6F98);
  }

  return result;
}

unint64_t sub_1B01227CC()
{
  result = qword_1EB6C49C8;
  if (!qword_1EB6C49C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C49C8);
  }

  return result;
}

unint64_t sub_1B0122824()
{
  result = qword_1EB6C49D0;
  if (!qword_1EB6C49D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C49D0);
  }

  return result;
}

unint64_t sub_1B012287C()
{
  result = qword_1EDAE6FB0;
  if (!qword_1EDAE6FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FB0);
  }

  return result;
}

unint64_t sub_1B01228D4()
{
  result = qword_1EDAE6FB8;
  if (!qword_1EDAE6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6FB8);
  }

  return result;
}

unint64_t sub_1B012292C()
{
  result = qword_1EDAE75C0;
  if (!qword_1EDAE75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75C0);
  }

  return result;
}

unint64_t sub_1B0122984()
{
  result = qword_1EDAE75C8;
  if (!qword_1EDAE75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75C8);
  }

  return result;
}

unint64_t sub_1B01229DC()
{
  result = qword_1EDAE75E0;
  if (!qword_1EDAE75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75E0);
  }

  return result;
}

unint64_t sub_1B0122A34()
{
  result = qword_1EDAE75E8;
  if (!qword_1EDAE75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75E8);
  }

  return result;
}

unint64_t sub_1B0122A8C()
{
  result = qword_1EDAE75F0;
  if (!qword_1EDAE75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75F0);
  }

  return result;
}

unint64_t sub_1B0122AE4()
{
  result = qword_1EDAE75F8;
  if (!qword_1EDAE75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE75F8);
  }

  return result;
}

unint64_t sub_1B0122B3C()
{
  result = qword_1EDAE7608;
  if (!qword_1EDAE7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7608);
  }

  return result;
}

unint64_t sub_1B0122B94()
{
  result = qword_1EDAE7610;
  if (!qword_1EDAE7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7610);
  }

  return result;
}

unint64_t sub_1B0122BE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C49D8, &qword_1B0156510);
    v3 = sub_1B014D0CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1B00D1FFC(v5, v6);

      result = sub_1B013E148(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B0122CF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A08, &unk_1B0156548);
    v3 = sub_1B014D0CC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B013E0D0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B0122E04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65476567616D69 && a2 == 0xEF6E6F6974617265;
  if (v4 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x724379726F6D656DLL && a2 == 0xEE006E6F69746165 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74697277646E6168 && a2 == 0xEB00000000676E69 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73416D6574737973 && a2 == 0xEF746E6174736973 || (sub_1B014D25C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7845656369766564 && a2 == 0xEC00000074726570 || (sub_1B014D25C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x54676E6974697277 && a2 == 0xEC000000736C6F6FLL || (sub_1B014D25C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7065527472616D73 && a2 == 0xEC0000007365696CLL || (sub_1B014D25C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6547696A6F6D65 && a2 == 0xEF6E6F6974617265 || (sub_1B014D25C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B015D610 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x686769486C69616DLL && a2 == 0xEE0073746867696CLL || (sub_1B014D25C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B015D630 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B015D650 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B015D670 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B015D690 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x706150636967616DLL && a2 == 0xEA00000000007265 || (sub_1B014D25C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7373417466697773 && a2 == 0xEB00000000747369 || (sub_1B014D25C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6C43736F746F6870 && a2 == 0xED000070756E6165 || (sub_1B014D25C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B015D6B0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6874695769726973 && a2 == 0xEF54504774616843 || (sub_1B014D25C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B015D6D0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x41515069726973 && a2 == 0xE700000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B015D6F0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6553736F746F6870 && a2 == 0xEC00000068637261 || (sub_1B014D25C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B015D710 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B015D730 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x4D4C4C6B7361 && a2 == 0xE600000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x7463417472616D73 && a2 == 0xEC000000736E6F69 || (sub_1B014D25C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x61684365646F6378 && a2 == 0xE900000000000074 || (sub_1B014D25C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x65746F6E79656BLL && a2 == 0xE700000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x7365676170 && a2 == 0xE500000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x737265626D756ELL && a2 == 0xE700000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x6D726F6665657266 && a2 == 0xE800000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B015D750 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B015D770 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x6D756E4570696B73 && a2 == 0xE800000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x7261726F706D6574 && a2 == 0xE900000000000079 || (sub_1B014D25C() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 1953719668 && a2 == 0xE400000000000000)
  {

    return 36;
  }

  else
  {
    v6 = sub_1B014D25C();

    if (v6)
    {
      return 36;
    }

    else
    {
      return 37;
    }
  }
}

uint64_t sub_1B0123980(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242338 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656765746E69 && a2 == 0xE700000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7961727261 && a2 == 0xE500000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B014D25C();

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

uint64_t sub_1B0123B78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701603686 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C69665FLL && a2 == 0xE500000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F69647561 && a2 == 0xE500000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74697277646E6168 && a2 == 0xEB00000000676E69 || (sub_1B014D25C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x686374656B73 && a2 == 0xE600000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7865546567616D69 && a2 == 0xE900000000000074 || (sub_1B014D25C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6554686374656B73 && a2 == 0xEA00000000007478 || (sub_1B014D25C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6F43656372756F73 && a2 == 0xEA00000000006564 || (sub_1B014D25C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7275746375727473 && a2 == 0xEA00000000006465 || (sub_1B014D25C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7274536567616D69 && a2 == 0xEF64657275746375 || (sub_1B014D25C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B015D790 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974 || (sub_1B014D25C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7373654D6C69616DLL && a2 == 0xEB00000000656761 || (sub_1B014D25C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 1819112552 && a2 == 0xE400000000000000)
  {

    return 17;
  }

  else
  {
    v6 = sub_1B014D25C();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_1B0124124(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4465727574616566 && a2 == 0xED00006E69616D6FLL;
  if (v4 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49656C646E75625FLL && a2 == 0xE900000000000044 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B015D470 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B015D490 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B015D4B0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F436172747865 && a2 == 0xEC000000746E6574 || (sub_1B014D25C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEF746E65746E6F43 || (sub_1B014D25C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B015D4F0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973 || (sub_1B014D25C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x74736F6E67616964 && a2 == 0xEB00000000736369 || (sub_1B014D25C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B015D520 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7250686769487369 && a2 == 0xEE00797469726F69 || (sub_1B014D25C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7461756C6176655FLL && a2 == 0xED000044496E6F69 || (sub_1B014D25C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x73657250746E6573 && a2 == 0xED00006465746E65 || (sub_1B014D25C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6176457473726966 && a2 == 0xEF6E6F697461756CLL)
  {

    return 14;
  }

  else
  {
    v6 = sub_1B014D25C();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_1B0124618(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x705573626D756874 && a2 == 0xE800000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4473626D756874 && a2 == 0xEA00000000006E77 || (sub_1B014D25C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4374726F706572 && a2 == 0xED00006E7265636ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B014D25C();

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

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B0124820(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented;
  swift_beginAccess();
  *(v3 + v5) = 1;
  return v4(a1);
}

uint64_t sub_1B0124890(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A10, &qword_1B0156558);

  return sub_1B01168EC(a1, a2 & 1);
}

uint64_t sub_1B012491C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);

  return sub_1B00E4D5C(a1);
}

double static FBKSInteraction.AnnotatedContent.IconType.withString(value:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>, __n128 a4@<Q0>)
{
  v7 = a1 == 0x7373654D6C69616DLL && a2 == 0xEB00000000656761;
  if (v7 || (sub_1B014D25C() & 1) != 0)
  {
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    return a4.n128_f64[0];
  }

  if (a1 == 0x657268546C69616DLL && a2 == 0xEA00000000006461 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156780;
LABEL_11:
    *a3 = a4;
    return a4.n128_f64[0];
  }

  if (a1 == 0xD000000000000011 && 0x80000001B015D7E0 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156770;
    goto LABEL_11;
  }

  if (a1 == 0x654D656C676E6973 && a2 == 0xED00006567617373 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156760;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000010 && 0x80000001B015D800 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156750;
    goto LABEL_11;
  }

  if (a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156740;
    goto LABEL_11;
  }

  if (a1 == 0x6574746972776572 && a2 == 0xE90000000000006ELL || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156730;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000012 && 0x80000001B015D820 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156720;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000011 && 0x80000001B015D840 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156710;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000014 && 0x80000001B015D860 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156700;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000017 && 0x80000001B015D880 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B01566F0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000013 && 0x80000001B015D8A0 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B01566E0;
    goto LABEL_11;
  }

  if (a1 == 0x6163696669746F6ELL && a2 == 0xED0000736E6F6974 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B01566D0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000014 && 0x80000001B015D8C0 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B01566C0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000018 && 0x80000001B015D8E0 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B01566B0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000019 && 0x80000001B015D900 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B01566A0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000011 && 0x80000001B015D920 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156690;
    goto LABEL_11;
  }

  if (a1 == 0x6172546F69647561 && a2 == 0xEF7470697263736ELL || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156680;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000016 && 0x80000001B015D940 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156670;
    goto LABEL_11;
  }

  if (a1 == 0x6552697269536564 && a2 == 0xED00007473657571 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156660;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000012 && 0x80000001B015D960 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156650;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000013 && 0x80000001B015D980 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156640;
    goto LABEL_11;
  }

  if (a1 == 0x7571655269726973 && a2 == 0xEB00000000747365 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156630;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000010 && 0x80000001B015D9A0 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156620;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000011 && 0x80000001B015D9C0 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156610;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000012 && 0x80000001B015D9E0 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156600;
    goto LABEL_11;
  }

  if (a1 == 0x7265646C6F66 && a2 == 0xE600000000000000 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B01565F0;
    goto LABEL_11;
  }

  if (a1 == 0x74736F6E67616964 && a2 == 0xEB00000000736369 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B01511A0;
    goto LABEL_11;
  }

  if (a1 == 0x756F537466697773 && a2 == 0xEF656C6946656372 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B01565E0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000018 && 0x80000001B015DA00 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B01565D0;
    goto LABEL_11;
  }

  if (a1 == 0x6C6F467466697773 && a2 == 0xEB00000000726564 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B01565C0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000014 && 0x80000001B015DA20 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B01565B0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000012 && 0x80000001B015DA40 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B01565A0;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000011 && 0x80000001B015DA60 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156590;
    goto LABEL_11;
  }

  if (a1 == 0xD000000000000017 && 0x80000001B015DA80 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156580;
    goto LABEL_11;
  }

  if (a1 == 0xD00000000000001ALL && 0x80000001B015DAA0 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156570;
    goto LABEL_11;
  }

  if (a1 == 0xD00000000000001ALL && 0x80000001B015DAC0 == a2 || (sub_1B014D25C() & 1) != 0)
  {
    a4 = xmmword_1B0156560;
    goto LABEL_11;
  }

  a3->n128_u64[0] = a1;
  a3->n128_u64[1] = a2;

  return a4.n128_f64[0];
}

int *FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v18 = *a11;
  v19 = a11[1];
  v20 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v20 = a6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    v42 = a1;
    v44 = a11[1];
    v21 = *a11;
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v22 = sub_1B014CB5C();
    __swift_project_value_buffer(v22, qword_1EDAE7828);
    v23 = sub_1B014CB3C();
    v24 = sub_1B014CF5C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = a8;
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1B00C4000, v23, v24, "AnnotatedContent filename cannot be empty. It must have a name including the file extension.", v26, 2u);
      v27 = v26;
      a8 = v25;
      MEMORY[0x1B271F750](v27, -1, -1);
    }

    v18 = v21;
    a1 = v42;
    v19 = v44;
  }

  v28 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v28 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
    v43 = a1;
    v45 = v19;
    v41 = v18;
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v29 = sub_1B014CB5C();
    __swift_project_value_buffer(v29, qword_1EDAE7828);
    v30 = sub_1B014CB3C();
    v31 = sub_1B014CF5C();
    if (os_log_type_enabled(v30, v31))
    {
      v40 = a8;
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1B00C4000, v30, v31, "AnnotatedContent display name cannot be empty. It must be a localized user friendly string", v32, 2u);
      v33 = v32;
      a8 = v40;
      MEMORY[0x1B271F750](v33, -1, -1);
    }

    v18 = v41;
    a1 = v43;
    v19 = v45;
  }

  sub_1B0130234(a1, a9, type metadata accessor for FBKSInteraction.Content);
  result = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v35 = (a9 + result[5]);
  *v35 = a2;
  v35[1] = a3;
  v36 = (a9 + result[6]);
  *v36 = a4;
  v36[1] = a5;
  v37 = (a9 + result[7]);
  *v37 = a6;
  v37[1] = a7;
  v38 = (a9 + result[8]);
  *v38 = a8;
  v38[1] = a10;
  *(a9 + result[10]) = a12;
  v39 = (a9 + result[9]);
  *v39 = v18;
  v39[1] = v19;
  return result;
}

uint64_t type metadata accessor for FBKSInteraction.AnnotatedContent(uint64_t a1)
{
  result = qword_1EDAE77C0;
  if (!qword_1EDAE77C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t FBKSInteraction.AnnotatedContent.IconType.stringValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 0x7373654D6C69616DLL;
  switch(v2)
  {
    case 0uLL:
      break;
    case 1uLL:
    case 0xFuLL:
    case 0x13uLL:
    case 0x20uLL:
      v3 = 0xD000000000000012;
      break;
    case 2uLL:
      v3 = 0x657268546C69616DLL;
      break;
    case 3uLL:
      v3 = 0xD000000000000011;
      break;
    case 4uLL:
      v3 = 0x654D656C676E6973;
      break;
    case 5uLL:
    case 0xBuLL:
    case 0x1BuLL:
      v3 = 0xD000000000000014;
      break;
    case 6uLL:
    case 0x16uLL:
      v3 = 0xD000000000000010;
      break;
    case 7uLL:
    case 0x1DuLL:
      v3 = 0xD000000000000017;
      break;
    case 8uLL:
    case 0xAuLL:
      v3 = 0x6163696669746F6ELL;
      break;
    case 9uLL:
    case 0x14uLL:
      v3 = 0xD000000000000013;
      break;
    case 0xCuLL:
    case 0x19uLL:
      v3 = 0xD000000000000018;
      break;
    case 0xDuLL:
      v3 = 0xD000000000000019;
      break;
    case 0xEuLL:
      v3 = 0xD000000000000011;
      break;
    case 0x10uLL:
      v3 = 0x6172546F69647561;
      break;
    case 0x11uLL:
      v3 = 0xD000000000000016;
      break;
    case 0x12uLL:
      v3 = 0x6552697269536564;
      break;
    case 0x15uLL:
      v3 = 0x7571655269726973;
      break;
    case 0x17uLL:
      v3 = 0xD000000000000011;
      break;
    case 0x18uLL:
      v3 = 0x756F537466697773;
      break;
    case 0x1AuLL:
      v3 = 0x6C6F467466697773;
      break;
    case 0x1CuLL:
      v3 = 0xD000000000000011;
      break;
    case 0x1EuLL:
    case 0x1FuLL:
      v3 = 0xD00000000000001ALL;
      break;
    case 0x21uLL:
      v3 = 0x7265646C6F66;
      break;
    case 0x22uLL:
      v3 = 0x74736F6E67616964;
      break;
    case 0x23uLL:
      v3 = 0xD000000000000011;
      break;
    case 0x24uLL:
      v3 = 0x6574746972776572;
      break;
    case 0x25uLL:
      v3 = 1954047348;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_1B012E464(v1, v2);
  return v3;
}

unint64_t sub_1B0125BE4(char a1)
{
  result = 0x7373654D6C69616DLL;
  switch(a1)
  {
    case 1:
    case 15:
    case 19:
    case 32:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x657268546C69616DLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x654D656C676E6973;
      break;
    case 5:
    case 11:
    case 27:
      result = 0xD000000000000014;
      break;
    case 6:
    case 22:
      result = 0xD000000000000010;
      break;
    case 7:
    case 29:
      result = 0xD000000000000017;
      break;
    case 8:
    case 10:
      result = 0x6163696669746F6ELL;
      break;
    case 9:
    case 20:
      result = 0xD000000000000013;
      break;
    case 12:
    case 25:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x6172546F69647561;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0x6552697269536564;
      break;
    case 21:
      result = 0x7571655269726973;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 24:
      result = 0x756F537466697773;
      break;
    case 26:
      result = 0x6C6F467466697773;
      break;
    case 28:
      result = 0xD000000000000011;
      break;
    case 30:
    case 31:
      result = 0xD00000000000001ALL;
      break;
    case 33:
      result = 0x7265646C6F66;
      break;
    case 34:
      result = 0x74736F6E67616964;
      break;
    case 35:
      result = 0x7261726F706D6574;
      break;
    case 36:
      result = 0xD000000000000011;
      break;
    case 37:
      result = 0x6574746972776572;
      break;
    case 38:
      result = 1954047348;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B0125FCC(uint64_t a1)
{
  v2 = sub_1B012FC6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126008(uint64_t a1)
{
  v2 = sub_1B012FC6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126044(uint64_t a1)
{
  v2 = sub_1B012FC18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126080(uint64_t a1)
{
  v2 = sub_1B012FC18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01260C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0130784(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B01260F8(uint64_t a1)
{
  v2 = sub_1B012F4E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126134(uint64_t a1)
{
  v2 = sub_1B012F4E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126170(uint64_t a1)
{
  v2 = sub_1B012FBC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01261AC(uint64_t a1)
{
  v2 = sub_1B012FBC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01261E8(uint64_t a1)
{
  v2 = sub_1B012FB1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126224(uint64_t a1)
{
  v2 = sub_1B012FB1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126260(uint64_t a1)
{
  v2 = sub_1B012FB70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012629C(uint64_t a1)
{
  v2 = sub_1B012FB70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01262D8(uint64_t a1)
{
  v2 = sub_1B012F684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126314(uint64_t a1)
{
  v2 = sub_1B012F684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126350(uint64_t a1)
{
  v2 = sub_1B012F6D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012638C(uint64_t a1)
{
  v2 = sub_1B012F6D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01263C8(uint64_t a1)
{
  v2 = sub_1B012F8D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126404(uint64_t a1)
{
  v2 = sub_1B012F8D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126440(uint64_t a1)
{
  v2 = sub_1B012F978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012647C(uint64_t a1)
{
  v2 = sub_1B012F978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01264B8(uint64_t a1)
{
  v2 = sub_1B012F72C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01264F4(uint64_t a1)
{
  v2 = sub_1B012F72C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126530(uint64_t a1)
{
  v2 = sub_1B01301AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012656C(uint64_t a1)
{
  v2 = sub_1B01301AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01265A8(uint64_t a1)
{
  v2 = sub_1B0130158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01265E4(uint64_t a1)
{
  v2 = sub_1B0130158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126620(uint64_t a1)
{
  v2 = sub_1B0130104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012665C(uint64_t a1)
{
  v2 = sub_1B0130104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126698(uint64_t a1)
{
  v2 = sub_1B01300B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01266D4(uint64_t a1)
{
  v2 = sub_1B01300B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126710(uint64_t a1)
{
  v2 = sub_1B012FCC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012674C(uint64_t a1)
{
  v2 = sub_1B012FCC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126788(uint64_t a1)
{
  v2 = sub_1B012FD14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01267C4(uint64_t a1)
{
  v2 = sub_1B012FD14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126800(uint64_t a1)
{
  v2 = sub_1B012FFB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012683C(uint64_t a1)
{
  v2 = sub_1B012FFB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126878(uint64_t a1)
{
  v2 = sub_1B012FF60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01268B4(uint64_t a1)
{
  v2 = sub_1B012FF60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01268F0(uint64_t a1)
{
  v2 = sub_1B012FF0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012692C(uint64_t a1)
{
  v2 = sub_1B012FF0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126968(uint64_t a1)
{
  v2 = sub_1B012FEB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01269A4(uint64_t a1)
{
  v2 = sub_1B012FEB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01269E0(uint64_t a1)
{
  v2 = sub_1B012FE64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126A1C(uint64_t a1)
{
  v2 = sub_1B012FE64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126A58(uint64_t a1)
{
  v2 = sub_1B012FE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126A94(uint64_t a1)
{
  v2 = sub_1B012FE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126AD0(uint64_t a1)
{
  v2 = sub_1B012F588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126B0C(uint64_t a1)
{
  v2 = sub_1B012F588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126B48(uint64_t a1)
{
  v2 = sub_1B013005C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126B84(uint64_t a1)
{
  v2 = sub_1B013005C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126BC0(uint64_t a1)
{
  v2 = sub_1B0130008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126BFC(uint64_t a1)
{
  v2 = sub_1B0130008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126C38(uint64_t a1)
{
  v2 = sub_1B012FAC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126C74(uint64_t a1)
{
  v2 = sub_1B012FAC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126CB0(uint64_t a1)
{
  v2 = sub_1B012FA20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126CEC(uint64_t a1)
{
  v2 = sub_1B012FA20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126D28(uint64_t a1)
{
  v2 = sub_1B012FA74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126D64(uint64_t a1)
{
  v2 = sub_1B012FA74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126DA0(uint64_t a1)
{
  v2 = sub_1B012F780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126DDC(uint64_t a1)
{
  v2 = sub_1B012F780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126E18(uint64_t a1)
{
  v2 = sub_1B012F87C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126E54(uint64_t a1)
{
  v2 = sub_1B012F87C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126E90(uint64_t a1)
{
  v2 = sub_1B012F828();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126ECC(uint64_t a1)
{
  v2 = sub_1B012F828();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126F08(uint64_t a1)
{
  v2 = sub_1B012F7D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126F44(uint64_t a1)
{
  v2 = sub_1B012F7D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126F80(uint64_t a1)
{
  v2 = sub_1B012F924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0126FBC(uint64_t a1)
{
  v2 = sub_1B012F924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0126FF8(uint64_t a1)
{
  v2 = sub_1B012F9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0127034(uint64_t a1)
{
  v2 = sub_1B012F9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B012708C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001B015DB80 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B014D25C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B0127120(uint64_t a1)
{
  v2 = sub_1B012F630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012715C(uint64_t a1)
{
  v2 = sub_1B012F630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0127198(uint64_t a1)
{
  v2 = sub_1B012F534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01271D4(uint64_t a1)
{
  v2 = sub_1B012F534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0127210(uint64_t a1)
{
  v2 = sub_1B012F5DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012724C(uint64_t a1)
{
  v2 = sub_1B012F5DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0127288(uint64_t a1)
{
  v2 = sub_1B012FD68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01272C4(uint64_t a1)
{
  v2 = sub_1B012FD68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0127300(uint64_t a1)
{
  v2 = sub_1B012FDBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B012733C(uint64_t a1)
{
  v2 = sub_1B012FDBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSInteraction.AnnotatedContent.IconType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A18, &qword_1B0156790);
  v216 = *(v4 - 8);
  v217 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v215 = &v103 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A20, &qword_1B0156798);
  v213 = *(v6 - 8);
  v214 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v212 = &v103 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A28, &qword_1B01567A0);
  v210 = *(v8 - 8);
  v211 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v209 = &v103 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A30, &qword_1B01567A8);
  v207 = *(v10 - 8);
  v208 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v206 = &v103 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A38, &qword_1B01567B0);
  v204 = *(v12 - 8);
  v205 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v203 = &v103 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A40, &qword_1B01567B8);
  v201 = *(v14 - 8);
  v202 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v200 = &v103 - v15;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A48, &qword_1B01567C0);
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v197 = &v103 - v16;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A50, &qword_1B01567C8);
  v195 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v194 = &v103 - v17;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A58, &qword_1B01567D0);
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v191 = &v103 - v18;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A60, &qword_1B01567D8);
  v189 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v188 = &v103 - v19;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A68, &qword_1B01567E0);
  v186 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v185 = &v103 - v20;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A70, &qword_1B01567E8);
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v182 = &v103 - v21;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A78, &qword_1B01567F0);
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v179 = &v103 - v22;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A80, &qword_1B01567F8);
  v177 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v176 = &v103 - v23;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A88, &qword_1B0156800);
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v173 = &v103 - v24;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A90, &qword_1B0156808);
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v103 - v25;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A98, &qword_1B0156810);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v167 = &v103 - v26;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AA0, &qword_1B0156818);
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v164 = &v103 - v27;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AA8, &qword_1B0156820);
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v161 = &v103 - v28;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AB0, &qword_1B0156828);
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v158 = &v103 - v29;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AB8, &qword_1B0156830);
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v155 = &v103 - v30;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AC0, &qword_1B0156838);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v152 = &v103 - v31;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AC8, &qword_1B0156840);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v103 - v32;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AD0, &qword_1B0156848);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v146 = &v103 - v33;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AD8, &qword_1B0156850);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v103 - v34;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AE0, &qword_1B0156858);
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v103 - v35;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AE8, &qword_1B0156860);
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v103 - v36;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AF0, &qword_1B0156868);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v134 = &v103 - v37;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4AF8, &qword_1B0156870);
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v131 = &v103 - v38;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B00, &qword_1B0156878);
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v103 - v39;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B08, &qword_1B0156880);
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v103 - v40;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B10, &qword_1B0156888);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v103 - v41;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B18, &qword_1B0156890);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v103 - v42;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B20, &qword_1B0156898);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = &v103 - v43;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B28, &qword_1B01568A0);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v103 - v44;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B30, &qword_1B01568A8);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v103 - v45;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B38, &qword_1B01568B0);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v103 - v46;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B40, &qword_1B01568B8);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v48 = &v103 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B48, &qword_1B01568C0);
  v104 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v103 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4B50, &qword_1B01568C8);
  v53 = *(v52 - 8);
  v219 = v52;
  v220 = v53;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v103 - v54;
  v56 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B012F4E0();
  v218 = v55;
  sub_1B014D35C();
  switch(v56)
  {
    case 0:
      v222 = 0;
      sub_1B01301AC();
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      (*(v104 + 8))(v51, v49);
      goto LABEL_43;
    case 1:
      v222 = 1;
      sub_1B0130158();
      v78 = v218;
      v79 = v219;
      sub_1B014D19C();
      (*(v105 + 8))(v48, v106);
      return (*(v220 + 8))(v78, v79);
    case 2:
      v222 = 2;
      sub_1B0130104();
      v74 = v107;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v108 + 8);
      v64 = v74;
      v65 = &v141;
      goto LABEL_42;
    case 3:
      v222 = 3;
      sub_1B01300B0();
      v76 = v110;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v111 + 8);
      v64 = v76;
      v65 = &v144;
      goto LABEL_42;
    case 4:
      v222 = 4;
      sub_1B013005C();
      v69 = v113;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v114 + 8);
      v64 = v69;
      v65 = &v147;
      goto LABEL_42;
    case 5:
      v222 = 5;
      sub_1B0130008();
      v84 = v116;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v117 + 8);
      v64 = v84;
      v65 = &v150;
      goto LABEL_42;
    case 6:
      v222 = 6;
      sub_1B012FFB4();
      v87 = v119;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v120 + 8);
      v64 = v87;
      v65 = &v153;
      goto LABEL_42;
    case 7:
      v222 = 7;
      sub_1B012FF60();
      v77 = v122;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v123 + 8);
      v64 = v77;
      v65 = &v156;
      goto LABEL_42;
    case 8:
      v222 = 8;
      sub_1B012FF0C();
      v90 = v125;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v126 + 8);
      v64 = v90;
      v65 = &v159;
      goto LABEL_42;
    case 9:
      v222 = 9;
      sub_1B012FEB8();
      v71 = v128;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v129 + 8);
      v64 = v71;
      v65 = &v162;
      goto LABEL_42;
    case 10:
      v222 = 10;
      sub_1B012FE64();
      v89 = v131;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v132 + 8);
      v64 = v89;
      v65 = &v165;
      goto LABEL_42;
    case 11:
      v222 = 11;
      sub_1B012FE10();
      v68 = v134;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v135 + 8);
      v64 = v68;
      v65 = &v168;
      goto LABEL_42;
    case 12:
      v222 = 12;
      sub_1B012FDBC();
      v70 = v137;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v138 + 8);
      v64 = v70;
      v65 = &v171;
      goto LABEL_42;
    case 13:
      v222 = 13;
      sub_1B012FD68();
      v86 = v140;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v141 + 8);
      v64 = v86;
      v65 = &v174;
      goto LABEL_42;
    case 14:
      v222 = 14;
      sub_1B012FD14();
      v67 = v143;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v144 + 8);
      v64 = v67;
      v65 = &v177;
      goto LABEL_42;
    case 15:
      v222 = 15;
      sub_1B012FCC0();
      v75 = v146;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v147 + 8);
      v64 = v75;
      v65 = &v180;
      goto LABEL_42;
    case 16:
      v222 = 16;
      sub_1B012FC6C();
      v66 = v149;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v150 + 8);
      v64 = v66;
      v65 = &v183;
      goto LABEL_42;
    case 17:
      v222 = 17;
      sub_1B012FC18();
      v82 = v152;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v153 + 8);
      v64 = v82;
      v65 = &v186;
      goto LABEL_42;
    case 18:
      v222 = 18;
      sub_1B012FBC4();
      v88 = v155;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v156 + 8);
      v64 = v88;
      v65 = &v189;
      goto LABEL_42;
    case 19:
      v222 = 19;
      sub_1B012FB70();
      v94 = v158;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v159 + 8);
      v64 = v94;
      v65 = &v192;
      goto LABEL_42;
    case 20:
      v222 = 20;
      sub_1B012FB1C();
      v83 = v161;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v162 + 8);
      v64 = v83;
      v65 = &v195;
      goto LABEL_42;
    case 21:
      v222 = 21;
      sub_1B012FAC8();
      v85 = v164;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v165 + 8);
      v64 = v85;
      v65 = &v198;
      goto LABEL_42;
    case 22:
      v222 = 22;
      sub_1B012FA74();
      v93 = v167;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v168 + 8);
      v64 = v93;
      v65 = &v201;
      goto LABEL_42;
    case 23:
      v222 = 23;
      sub_1B012FA20();
      v95 = v170;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v171 + 8);
      v64 = v95;
      v65 = &v204;
      goto LABEL_42;
    case 24:
      v222 = 24;
      sub_1B012F9CC();
      v73 = v173;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v174 + 8);
      v64 = v73;
      v65 = &v207;
      goto LABEL_42;
    case 25:
      v222 = 25;
      sub_1B012F978();
      v72 = v176;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v177 + 8);
      v64 = v72;
      v65 = &v210;
      goto LABEL_42;
    case 26:
      v222 = 26;
      sub_1B012F924();
      v102 = v179;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v180 + 8);
      v64 = v102;
      v65 = &v213;
      goto LABEL_42;
    case 27:
      v222 = 27;
      sub_1B012F8D0();
      v62 = v182;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v183 + 8);
      v64 = v62;
      v65 = &v216;
      goto LABEL_42;
    case 28:
      v222 = 28;
      sub_1B012F87C();
      v96 = v185;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v186 + 8);
      v64 = v96;
      v65 = &v219;
      goto LABEL_42;
    case 29:
      v222 = 29;
      sub_1B012F828();
      v97 = v188;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v189 + 8);
      v64 = v97;
      v65 = &v221;
      goto LABEL_42;
    case 30:
      v222 = 30;
      sub_1B012F7D4();
      v91 = v191;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v192 + 8);
      v64 = v91;
      v65 = &v223;
      goto LABEL_42;
    case 31:
      v222 = 31;
      sub_1B012F780();
      v81 = v194;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v195 + 8);
      v64 = v81;
      v65 = &v224;
      goto LABEL_42;
    case 32:
      v222 = 32;
      sub_1B012F72C();
      v92 = v197;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v63 = *(v198 + 8);
      v64 = v92;
      v65 = &v225;
LABEL_42:
      v63(v64, *(v65 - 32));
      goto LABEL_43;
    case 33:
      v222 = 33;
      sub_1B012F6D8();
      v59 = v200;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v61 = v201;
      v60 = v202;
      goto LABEL_11;
    case 34:
      v222 = 34;
      sub_1B012F684();
      v59 = v203;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v61 = v204;
      v60 = v205;
      goto LABEL_11;
    case 35:
      v222 = 36;
      sub_1B012F5DC();
      v59 = v209;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v61 = v210;
      v60 = v211;
      goto LABEL_11;
    case 36:
      v222 = 37;
      sub_1B012F588();
      v59 = v212;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v61 = v213;
      v60 = v214;
      goto LABEL_11;
    case 37:
      v222 = 38;
      sub_1B012F534();
      v59 = v215;
      v58 = v218;
      v57 = v219;
      sub_1B014D19C();
      v61 = v216;
      v60 = v217;
LABEL_11:
      (*(v61 + 8))(v59, v60);
LABEL_43:
      result = (*(v220 + 8))(v58, v57);
      break;
    default:
      v222 = 35;
      sub_1B012F630();
      v98 = v206;
      v100 = v218;
      v99 = v219;
      sub_1B014D19C();
      v101 = v208;
      sub_1B014D1DC();
      (*(v207 + 8))(v98, v101);
      result = (*(v220 + 8))(v100, v99);
      break;
  }

  return result;
}

uint64_t FBKSInteraction.AnnotatedContent.IconType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v270 = a2;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4C88, &qword_1B01568D0);
  v265 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v264 = &v152 - v3;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4C90, &qword_1B01568D8);
  v229 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v263 = &v152 - v4;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4C98, &qword_1B01568E0);
  v226 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v262 = &v152 - v5;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4CA0, &qword_1B01568E8);
  v225 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v261 = &v152 - v6;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4CA8, &qword_1B01568F0);
  v223 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v260 = &v152 - v7;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4CB0, &qword_1B01568F8);
  v221 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v259 = &v152 - v8;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4CB8, &qword_1B0156900);
  v219 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v258 = &v152 - v9;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4CC0, &qword_1B0156908);
  v217 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v257 = &v152 - v10;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4CC8, &qword_1B0156910);
  v215 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v256 = &v152 - v11;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4CD0, &qword_1B0156918);
  v213 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v255 = &v152 - v12;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4CD8, &qword_1B0156920);
  v211 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v254 = &v152 - v13;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4CE0, &qword_1B0156928);
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v253 = &v152 - v14;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4CE8, &qword_1B0156930);
  v207 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v252 = &v152 - v15;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4CF0, &qword_1B0156938);
  v205 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v251 = &v152 - v16;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4CF8, &qword_1B0156940);
  v203 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v250 = &v152 - v17;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D00, &qword_1B0156948);
  v201 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v249 = &v152 - v18;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D08, &qword_1B0156950);
  v199 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v248 = &v152 - v19;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D10, &qword_1B0156958);
  v197 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v247 = &v152 - v20;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D18, &qword_1B0156960);
  v195 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v246 = &v152 - v21;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D20, &qword_1B0156968);
  v193 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v245 = &v152 - v22;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D28, &qword_1B0156970);
  v191 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v244 = &v152 - v23;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D30, &qword_1B0156978);
  v189 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v243 = &v152 - v24;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D38, &qword_1B0156980);
  v187 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v242 = &v152 - v25;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D40, &qword_1B0156988);
  v185 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v241 = &v152 - v26;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D48, &qword_1B0156990);
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v240 = &v152 - v27;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D50, &qword_1B0156998);
  v181 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v239 = &v152 - v28;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D58, &qword_1B01569A0);
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v238 = &v152 - v29;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D60, &qword_1B01569A8);
  v177 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v237 = &v152 - v30;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D68, &qword_1B01569B0);
  v175 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v234 = &v152 - v31;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D70, &qword_1B01569B8);
  v173 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v268 = &v152 - v32;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D78, &qword_1B01569C0);
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v267 = &v152 - v33;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D80, &qword_1B01569C8);
  v169 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v236 = &v152 - v34;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D88, &qword_1B01569D0);
  v167 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v235 = &v152 - v35;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D90, &qword_1B01569D8);
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v266 = &v152 - v36;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4D98, &qword_1B01569E0);
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v233 = &v152 - v37;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4DA0, &qword_1B01569E8);
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v232 = &v152 - v38;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4DA8, &qword_1B01569F0);
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v231 = &v152 - v39;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4DB0, &qword_1B01569F8);
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v41 = &v152 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4DB8, &qword_1B0156A00);
  v156 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v152 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4DC0, &unk_1B0156A08);
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v152 - v47;
  v49 = a1[3];
  v272 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v49);
  sub_1B012F4E0();
  v50 = v271;
  sub_1B014D34C();
  if (v50)
  {
LABEL_8:
    v69 = v272;
    return __swift_destroy_boxed_opaque_existential_0(v69);
  }

  v153 = v44;
  v152 = v42;
  v154 = v41;
  v51 = v266;
  v52 = v267;
  v53 = v268;
  v155 = 0;
  v55 = v269;
  v54 = v270;
  v271 = v46;
  v56 = sub_1B014D18C();
  v57 = (2 * *(v56 + 16)) | 1;
  v273 = v56;
  v274 = v56 + 32;
  v275 = 0;
  v276 = v57;
  v58 = sub_1B00D4B38();
  v59 = v48;
  if (v275 != v276 >> 1)
  {
LABEL_6:
    v65 = v45;
    v66 = sub_1B014D05C();
    swift_allocError();
    v68 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE8, &qword_1B014F3B0);
    *v68 = &type metadata for FBKSInteraction.AnnotatedContent.IconType;
    sub_1B014D0FC();
    sub_1B014D04C();
    (*(*(v66 - 8) + 104))(v68, *MEMORY[0x1E69E6AF8], v66);
    swift_willThrow();
    (*(v271 + 8))(v59, v65);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v60 = v265;
  switch(v58)
  {
    case 0:
      v277 = 0;
      sub_1B01301AC();
      v61 = v153;
      v62 = v155;
      sub_1B014D0EC();
      if (v62)
      {
        goto LABEL_85;
      }

      (*(v156 + 8))(v61, v152);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 0;
      goto LABEL_87;
    case 1:
      v277 = 1;
      sub_1B0130158();
      v110 = v154;
      v111 = v155;
      sub_1B014D0EC();
      if (v111)
      {
        goto LABEL_85;
      }

      (*(v157 + 8))(v110, v158);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 1;
      goto LABEL_87;
    case 2:
      v277 = 2;
      sub_1B0130104();
      v102 = v231;
      v103 = v155;
      sub_1B014D0EC();
      if (v103)
      {
        goto LABEL_85;
      }

      (*(v159 + 8))(v102, v160);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 2;
      goto LABEL_87;
    case 3:
      v277 = 3;
      sub_1B01300B0();
      v106 = v232;
      v107 = v155;
      sub_1B014D0EC();
      if (v107)
      {
        goto LABEL_85;
      }

      (*(v161 + 8))(v106, v162);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 3;
      goto LABEL_87;
    case 4:
      v277 = 4;
      sub_1B013005C();
      v93 = v233;
      v94 = v155;
      sub_1B014D0EC();
      if (v94)
      {
        goto LABEL_85;
      }

      (*(v163 + 8))(v93, v164);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 4;
      goto LABEL_87;
    case 5:
      v277 = 5;
      sub_1B0130008();
      v118 = v155;
      sub_1B014D0EC();
      if (v118)
      {
        goto LABEL_85;
      }

      (*(v165 + 8))(v51, v166);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 5;
      goto LABEL_87;
    case 6:
      v277 = 6;
      sub_1B012FFB4();
      v123 = v235;
      v124 = v155;
      sub_1B014D0EC();
      if (v124)
      {
        goto LABEL_85;
      }

      (*(v167 + 8))(v123, v168);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 6;
      goto LABEL_87;
    case 7:
      v277 = 7;
      sub_1B012FF60();
      v108 = v236;
      v109 = v155;
      sub_1B014D0EC();
      if (v109)
      {
        goto LABEL_85;
      }

      (*(v169 + 8))(v108, v170);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 7;
      goto LABEL_87;
    case 8:
      v277 = 8;
      sub_1B012FF0C();
      v129 = v155;
      sub_1B014D0EC();
      if (v129)
      {
        goto LABEL_85;
      }

      (*(v171 + 8))(v52, v172);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 8;
      goto LABEL_87;
    case 9:
      v277 = 9;
      sub_1B012FEB8();
      v97 = v155;
      sub_1B014D0EC();
      if (v97)
      {
        goto LABEL_85;
      }

      (*(v173 + 8))(v53, v174);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 9;
      goto LABEL_87;
    case 10:
      v277 = 10;
      sub_1B012FE64();
      v127 = v234;
      v128 = v155;
      sub_1B014D0EC();
      if (v128)
      {
        goto LABEL_85;
      }

      (*(v175 + 8))(v127, v176);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 10;
      goto LABEL_87;
    case 11:
      v277 = 11;
      sub_1B012FE10();
      v91 = v237;
      v92 = v155;
      sub_1B014D0EC();
      if (v92)
      {
        goto LABEL_85;
      }

      (*(v177 + 8))(v91, v178);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 11;
      goto LABEL_87;
    case 12:
      v277 = 12;
      sub_1B012FDBC();
      v95 = v238;
      v96 = v155;
      sub_1B014D0EC();
      if (v96)
      {
        goto LABEL_85;
      }

      (*(v179 + 8))(v95, v180);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 12;
      goto LABEL_87;
    case 13:
      v277 = 13;
      sub_1B012FD68();
      v121 = v239;
      v122 = v155;
      sub_1B014D0EC();
      if (v122)
      {
        goto LABEL_85;
      }

      (*(v181 + 8))(v121, v182);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 13;
      goto LABEL_87;
    case 14:
      v277 = 14;
      sub_1B012FD14();
      v87 = v240;
      v88 = v155;
      sub_1B014D0EC();
      if (v88)
      {
        goto LABEL_85;
      }

      (*(v183 + 8))(v87, v184);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 14;
      goto LABEL_87;
    case 15:
      v277 = 15;
      sub_1B012FCC0();
      v104 = v241;
      v105 = v155;
      sub_1B014D0EC();
      if (v105)
      {
        goto LABEL_85;
      }

      (*(v185 + 8))(v104, v186);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 15;
      goto LABEL_87;
    case 16:
      v277 = 16;
      sub_1B012FC6C();
      v85 = v242;
      v86 = v155;
      sub_1B014D0EC();
      if (v86)
      {
        goto LABEL_85;
      }

      (*(v187 + 8))(v85, v188);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 16;
      goto LABEL_87;
    case 17:
      v277 = 17;
      sub_1B012FC18();
      v114 = v243;
      v115 = v155;
      sub_1B014D0EC();
      if (v115)
      {
        goto LABEL_85;
      }

      (*(v189 + 8))(v114, v190);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 17;
      goto LABEL_87;
    case 18:
      v277 = 18;
      sub_1B012FBC4();
      v125 = v244;
      v126 = v155;
      sub_1B014D0EC();
      if (v126)
      {
        goto LABEL_85;
      }

      (*(v191 + 8))(v125, v192);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 18;
      goto LABEL_87;
    case 19:
      v277 = 19;
      sub_1B012FB70();
      v136 = v245;
      v137 = v155;
      sub_1B014D0EC();
      if (v137)
      {
        goto LABEL_85;
      }

      (*(v193 + 8))(v136, v194);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 19;
      goto LABEL_87;
    case 20:
      v277 = 20;
      sub_1B012FB1C();
      v116 = v246;
      v117 = v155;
      sub_1B014D0EC();
      if (v117)
      {
        goto LABEL_85;
      }

      (*(v195 + 8))(v116, v196);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 20;
      goto LABEL_87;
    case 21:
      v277 = 21;
      sub_1B012FAC8();
      v119 = v247;
      v120 = v155;
      sub_1B014D0EC();
      if (v120)
      {
        goto LABEL_85;
      }

      (*(v197 + 8))(v119, v198);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 21;
      goto LABEL_87;
    case 22:
      v277 = 22;
      sub_1B012FA74();
      v134 = v248;
      v135 = v155;
      sub_1B014D0EC();
      if (v135)
      {
        goto LABEL_85;
      }

      (*(v199 + 8))(v134, v200);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 22;
      goto LABEL_87;
    case 23:
      v277 = 23;
      sub_1B012FA20();
      v138 = v249;
      v139 = v155;
      sub_1B014D0EC();
      if (v139)
      {
        goto LABEL_85;
      }

      (*(v201 + 8))(v138, v202);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 23;
      goto LABEL_87;
    case 24:
      v277 = 24;
      sub_1B012F9CC();
      v100 = v250;
      v101 = v155;
      sub_1B014D0EC();
      if (v101)
      {
        goto LABEL_85;
      }

      (*(v203 + 8))(v100, v204);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 24;
      goto LABEL_87;
    case 25:
      v277 = 25;
      sub_1B012F978();
      v98 = v251;
      v99 = v155;
      sub_1B014D0EC();
      if (v99)
      {
        goto LABEL_85;
      }

      (*(v205 + 8))(v98, v206);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 25;
      goto LABEL_87;
    case 26:
      v277 = 26;
      sub_1B012F924();
      v146 = v252;
      v147 = v155;
      sub_1B014D0EC();
      if (v147)
      {
        goto LABEL_85;
      }

      (*(v207 + 8))(v146, v208);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 26;
      goto LABEL_87;
    case 27:
      v277 = 27;
      sub_1B012F8D0();
      v81 = v253;
      v82 = v155;
      sub_1B014D0EC();
      if (v82)
      {
        goto LABEL_85;
      }

      (*(v209 + 8))(v81, v210);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 27;
      goto LABEL_87;
    case 28:
      v277 = 28;
      sub_1B012F87C();
      v140 = v254;
      v141 = v155;
      sub_1B014D0EC();
      if (v141)
      {
        goto LABEL_85;
      }

      (*(v211 + 8))(v140, v212);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 28;
      goto LABEL_87;
    case 29:
      v277 = 29;
      sub_1B012F828();
      v142 = v255;
      v143 = v155;
      sub_1B014D0EC();
      if (v143)
      {
        goto LABEL_85;
      }

      (*(v213 + 8))(v142, v214);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 29;
      goto LABEL_87;
    case 30:
      v277 = 30;
      sub_1B012F7D4();
      v130 = v256;
      v131 = v155;
      sub_1B014D0EC();
      if (v131)
      {
        goto LABEL_85;
      }

      (*(v215 + 8))(v130, v216);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 30;
      goto LABEL_87;
    case 31:
      v277 = 31;
      sub_1B012F780();
      v112 = v257;
      v113 = v155;
      sub_1B014D0EC();
      if (v113)
      {
        goto LABEL_85;
      }

      (*(v217 + 8))(v112, v218);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 31;
      goto LABEL_87;
    case 32:
      v277 = 32;
      sub_1B012F72C();
      v132 = v258;
      v133 = v155;
      sub_1B014D0EC();
      if (v133)
      {
        goto LABEL_85;
      }

      (*(v219 + 8))(v132, v220);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 32;
      goto LABEL_87;
    case 33:
      v277 = 33;
      sub_1B012F6D8();
      v89 = v259;
      v90 = v155;
      sub_1B014D0EC();
      if (v90)
      {
        goto LABEL_85;
      }

      (*(v221 + 8))(v89, v222);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 33;
      goto LABEL_87;
    case 34:
      v277 = 34;
      sub_1B012F684();
      v83 = v260;
      v84 = v155;
      sub_1B014D0EC();
      if (v84)
      {
        goto LABEL_85;
      }

      (*(v223 + 8))(v83, v224);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 34;
      goto LABEL_87;
    case 35:
      v277 = 35;
      sub_1B012F630();
      v73 = v261;
      v74 = v155;
      sub_1B014D0EC();
      if (v74)
      {
        goto LABEL_85;
      }

      v75 = v59;
      v76 = v227;
      v77 = sub_1B014D13C();
      v78 = v271;
      v148 = v45;
      v149 = v77;
      v151 = v150;
      (*(v225 + 8))(v73, v76);
      (*(v78 + 8))(v75, v148);
      swift_unknownObjectRelease();
      v64 = v151;
      v63 = v149;
      goto LABEL_87;
    case 36:
      v277 = 36;
      sub_1B012F5DC();
      v79 = v262;
      v80 = v155;
      sub_1B014D0EC();
      if (v80)
      {
        goto LABEL_85;
      }

      (*(v226 + 8))(v79, v228);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 35;
      goto LABEL_87;
    case 37:
      v277 = 37;
      sub_1B012F588();
      v71 = v263;
      v72 = v155;
      sub_1B014D0EC();
      if (v72)
      {
        goto LABEL_85;
      }

      (*(v229 + 8))(v71, v230);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 36;
      goto LABEL_87;
    case 38:
      v277 = 38;
      sub_1B012F534();
      v144 = v264;
      v145 = v155;
      sub_1B014D0EC();
      if (v145)
      {
LABEL_85:
        (*(v271 + 8))(v59, v45);
        goto LABEL_7;
      }

      (*(v60 + 8))(v144, v55);
      (*(v271 + 8))(v59, v45);
      swift_unknownObjectRelease();
      v63 = 0;
      v64 = 37;
LABEL_87:
      v69 = v272;
      *v54 = v63;
      v54[1] = v64;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0(v69);
}