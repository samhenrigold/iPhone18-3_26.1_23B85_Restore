uint64_t sub_242A13420()
{
  v1 = sub_242A1A1F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_242A134DC()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_242A13534()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242A1356C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8998, &qword_242A1A920);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

Swift::Void __swiftcall Daemon.main()()
{
  v2 = v1;
  v3 = v0;
  v4 = MEMORY[0x245D1FA70]();
  (*(v2 + 40))(v3, v2);
  (*(v2 + 32))(v3, v2);
  objc_autoreleasePoolPop(v4);
  v5 = [objc_opt_self() currentRunLoop];
  [v5 run];
}

uint64_t _s14CallsUtilities6DaemonPAAE12enterSandboxyyF_0(uint64_t a1, uint64_t a2)
{
  if (qword_281368B00 != -1)
  {
    swift_once();
  }

  v4 = sub_242A1A1F4();
  __swift_project_value_buffer(v4, qword_281368B08);
  v5 = sub_242A1A1D4();
  v6 = sub_242A1A344();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_242A12000, v5, v6, "Entering sandbox", v7, 2u);
    MEMORY[0x245D1FD20](v7, -1, -1);
  }

  (*(a2 + 8))(a1, a2);
  (*(a2 + 16))(a1, a2);
  sub_242A14040();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_242A138C0(unsigned __int8 a1)
{
  if (qword_281368B00 != -1)
  {
    swift_once();
  }

  v2 = sub_242A1A1F4();
  __swift_project_value_buffer(v2, qword_281368B08);
  v3 = sub_242A1A1D4();
  v4 = sub_242A1A324();
  if (!os_log_type_enabled(v3, v4))
  {
LABEL_29:

    _exit(a1);
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v15 = v6;
  *v5 = 136315138;
  if (a1 > 3u)
  {
    v9 = "h parameters failed";
    if (a1 == 6)
    {
      v10 = 0xD00000000000001BLL;
    }

    else
    {
      v9 = ": %s";
      v10 = 0xD000000000000023;
    }

    v11 = "confstr cache dir failure";
    if (a1 == 4)
    {
      v12 = 0xD000000000000018;
    }

    else
    {
      v11 = "set user dir suffix failure";
      v12 = 0xD000000000000019;
    }

    if (a1 <= 5u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v9;
    }

    if (a1 <= 5u)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v13 = "cannot create base directory";
    }

    else
    {
      v13 = "confstr temp dir failure";
    }

    if (a1 == 2)
    {
      v8 = 0xD00000000000001DLL;
    }

    else
    {
      v8 = 0xD00000000000001CLL;
    }
  }

  else
  {
    if (!a1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x73736563637573;
LABEL_28:
      v14 = sub_242A19520(v8, v7, &v15);

      *(v5 + 4) = v14;
      _os_log_impl(&dword_242A12000, v3, v4, "Exiting with reason: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x245D1FD20](v6, -1, -1);
      MEMORY[0x245D1FD20](v5, -1, -1);
      goto LABEL_29;
    }

    v8 = 0xD000000000000020;
    v13 = "cannot resolve home directory";
  }

  v7 = v13 | 0x8000000000000000;
  goto LABEL_28;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_242A13B18@<X0>(char *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = sub_242A1A2B4();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_242A13B7C(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v19 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      v15 = a2;
      sub_242A143CC(v6, v5);
      *v16 = v6;
      *&v16[8] = v5;
      v16[10] = BYTE2(v5);
      v16[11] = BYTE3(v5);
      v16[12] = BYTE4(v5);
      v16[13] = BYTE5(v5);
      v16[14] = BYTE6(v5);
      result = sub_242A13B18(v16, v15, &v17);
      if (!v2)
      {
        result = v17;
      }

      v9 = *&v16[8] | ((*&v16[12] | (v16[14] << 16)) << 32);
      *a1 = *v16;
      a1[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_242A143CC(v6, v5);
    *a1 = xmmword_242A1A7C0;
    sub_242A143CC(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (sub_242A1A124() && __OFSUB__(v6, sub_242A1A154()))
      {
LABEL_24:
        __break(1u);
      }

      sub_242A1A164();
      swift_allocObject();
      v13 = sub_242A1A114();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_242A13EEC(v6, v6 >> 32, v11, v3);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *a1 = v6;
        a1[1] = v10;
        return v14;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v7 == 2)
  {

    sub_242A143CC(v6, v5);
    v17 = v6;
    v18 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_242A1A7C0;
    sub_242A143CC(0, 0xC000000000000000);
    sub_242A1A174();
    v6 = v17;
    result = sub_242A13EEC(*(v17 + 16), *(v17 + 24), v18, v3);
    v10 = v18 | 0x8000000000000000;
    if (!v2)
    {
      *a1 = v17;
      a1[1] = v10;
      return result;
    }

LABEL_19:
    *a1 = v6;
    a1[1] = v10;
    return result;
  }

  memset(v16, 0, 15);
  result = sub_242A13B18(v16, a2, &v17);
  if (!v2)
  {
    return v17;
  }

  return result;
}

uint64_t sub_242A13EEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = sub_242A1A124();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = sub_242A1A154();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_242A1A144();
  result = sub_242A13B18((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

uint64_t sub_242A13F98(int *a1, int a2)
{
  result = sub_242A1A184();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_242A1A124();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_242A1A154();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_242A1A144();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

uint64_t sub_242A14040()
{
  sub_242A1A294();
  v0 = _set_user_dir_suffix();

  if (!v0)
  {
    if (qword_281368B00 != -1)
    {
      swift_once();
    }

    v15 = sub_242A1A1F4();
    __swift_project_value_buffer(v15, qword_281368B08);
    v16 = sub_242A1A1D4();
    v17 = sub_242A1A334();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_242A12000, v16, v17, "Sandbox: _set_user_dir_suffix returned nil", v18, 2u);
      MEMORY[0x245D1FD20](v18, -1, -1);
    }

    sub_242A138C0(6u);
  }

  v1 = NSTemporaryDirectory();
  v2 = sub_242A1A264();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    if (qword_281368B00 != -1)
    {
      swift_once();
    }

    v19 = sub_242A1A1F4();
    __swift_project_value_buffer(v19, qword_281368B08);
    v20 = sub_242A1A1D4();
    v21 = sub_242A1A334();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_242A12000, v20, v21, "Unable to create temp directory", v22, 2u);
      MEMORY[0x245D1FD20](v22, -1, -1);
    }

    sub_242A138C0(3u);
  }

  sub_242A1A164();
  swift_allocObject();
  v23 = 0x40000000000;
  v24 = sub_242A1A134();
  sub_242A13F98(&v23, 0);
  v24 |= 0x4000000000000000uLL;
  sub_242A13B7C(&v23, 65537);
  v7 = v6;
  sub_242A143CC(v23, v24);
  if (!v7 || (v8 = sub_242A1A294(), , v9 = realpath_DARWIN_EXTSN((v8 + 32), 0), , !v9))
  {
    if (qword_281368B00 != -1)
    {
      swift_once();
    }

    v11 = sub_242A1A1F4();
    __swift_project_value_buffer(v11, qword_281368B08);
    v12 = sub_242A1A1D4();
    v13 = sub_242A1A334();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_242A12000, v12, v13, "Sandbox: confstr(_CS_DARWIN_USER_TEMP_DIR) failed", v14, 2u);
      MEMORY[0x245D1FD20](v14, -1, -1);
    }

    sub_242A138C0(4u);
  }

  sub_242A1A2B4();
  MEMORY[0x245D1FD20](v9, -1, -1);
}

uint64_t sub_242A143CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t static ErrorHandling.tryOrLog<A>(_:_:logger:function:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v31 = a8;
  v32 = a2;
  v28 = a6;
  v29 = a3;
  v30 = a1;
  v33 = a9;
  v27 = a10;
  v13 = sub_242A1A1F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a5, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v14 + 32))(v20 + v17, v16, v13);
  v21 = (v20 + v18);
  v22 = v29;
  *v21 = v28;
  v21[1] = a7;
  *(v20 + v19) = v31;
  v23 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v22;
  v23[1] = a4;
  v24 = v27;
  v34 = v27;
  v35 = v30;
  v36 = v32;

  static ErrorHandling.tryOrLog<A>(_:errorHandler:)(sub_242A149C0, v24, v33);
}

void sub_242A14600(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{

  MEMORY[0x245D1FC60](a1);
  v26[0] = sub_242A1A1D4();
  v13 = sub_242A1A334();

  if (os_log_type_enabled(v26[0], v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315906;
    *(v14 + 4) = sub_242A19520(a3, a4, &v28);
    *(v14 + 12) = 2048;
    *(v14 + 14) = a5;
    *(v14 + 22) = 2082;
    *(v14 + 24) = sub_242A19520(a6, a7, &v28);
    *(v14 + 32) = 2080;
    swift_getErrorValue();
    v16 = v27;
    v17 = sub_242A1A354();
    v18 = *(v17 - 8);
    MEMORY[0x28223BE20](v17);
    v20 = v26 - v19;
    v21 = *(v27 - 8);
    (*(v21 + 16))(v26 - v19, v26[1], v27);
    (*(v21 + 56))(v20, 0, 1, v16);
    v22 = sub_242A19BAC(v20, v16);
    v24 = v23;
    (*(v18 + 8))(v20, v17);
    v25 = sub_242A19520(v22, v24, &v28);

    *(v14 + 34) = v25;
    _os_log_impl(&dword_242A12000, v26[0], v13, "%s:%ld %{public}s Error: %s", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x245D1FD20](v15, -1, -1);
    MEMORY[0x245D1FD20](v14, -1, -1);
  }

  else
  {
  }
}

void sub_242A14904(void *a1)
{
  v3 = *(sub_242A1A1F4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  sub_242A14600(a1, v1 + v4, v8, v9, v10, v12, v13);
}

uint64_t static ErrorHandling.tryOrLog<A>(_:errorHandler:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  a1();
  v5 = *(*(a2 - 8) + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t getEnumTagSinglePayload for ErrorHandling(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ErrorHandling(_WORD *result, int a2, int a3)
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

void *ABCReporter.__allocating_init(domain:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v8[6] = a4;
  return v8;
}

void *ABCReporter.init(domain:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
  return v4;
}

Swift::OpaquePointer_optional __swiftcall ABCReporter.signature(subType:context:process:)(Swift::String subType, Swift::String context, Swift::String process)
{
  v4 = *(v3 + 16);
  v5 = sub_242A1A254();
  v6 = sub_242A1A254();
  v7 = sub_242A1A254();
  v8 = sub_242A1A254();
  v9 = sub_242A1A254();
  v10 = [v4 signatureWithDomain:v5 type:v6 subType:v7 subtypeContext:v8 detectedProcess:v9 triggerThresholdValues:0];

  if (v10)
  {
    sub_242A1A214();
  }

  v12 = 0;
  result.value._rawValue = v12;
  result.is_nil = v11;
  return result;
}

uint64_t ABCReporter.report(with:duration:)(uint64_t a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 32) = a2;
  *(v3 + 24) = a1;
  return MEMORY[0x2822009F8](sub_242A14DC8, 0, 0);
}

uint64_t sub_242A14DC8()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_242A14ED4;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000016, 0x8000000242A1B0A0, sub_242A15204, v4, &type metadata for ReportResponseWrapper);
}

uint64_t sub_242A14ED4()
{

  return MEMORY[0x2822009F8](sub_242A14FEC, 0, 0);
}

void sub_242A15004(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8998, &qword_242A1A920);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - v9;
  v11 = *(a2 + 16);
  v12 = sub_242A1A204();
  (*(v8 + 16))(v10, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v10, v7);
  aBlock[4] = sub_242A172FC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_242A15270;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  [v11 snapshotWithSignature:v12 duration:0 event:0 payload:v15 reply:a4];
  _Block_release(v15);
}

uint64_t sub_242A15210(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8998, &qword_242A1A920);
  return sub_242A1A2E4();
}

uint64_t sub_242A15270(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_242A1A224();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t ABCReporter.deinit()
{

  return v0;
}

uint64_t ABCReporter.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

id sub_242A15378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  v10[2] = result;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  *a5 = v10;
  return result;
}

uint64_t sub_242A15418(uint64_t a1, double a2)
{
  *(v3 + 32) = a2;
  *(v3 + 24) = a1;
  *(v3 + 40) = *v2;
  return MEMORY[0x2822009F8](sub_242A15444, 0, 0);
}

uint64_t sub_242A15444()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_242A15550;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000016, 0x8000000242A1B0A0, sub_242A17390, v4, &type metadata for ReportResponseWrapper);
}

uint64_t sub_242A15550()
{

  return MEMORY[0x2822009F8](sub_242A17398, 0, 0);
}

uint64_t Task<>.reportFailure(on:function:process:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8980, &qword_242A1A818);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v20 - v15;
  v17 = sub_242A1A304();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_242A16634(a1, v21);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a7;
  v18[5] = a6;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;
  v18[9] = a5;
  sub_242A16698(v21, (v18 + 10));

  sub_242A16894(0, 0, v16, &unk_242A1A828, v18);

  sub_242A16B34(v16);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_242A15828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v12;
  v8[14] = v13;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v8[15] = *(v13 - 8);
  v8[16] = swift_task_alloc();
  v9 = sub_242A1A1C4();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242A15958, 0, 0);
}

uint64_t sub_242A15958()
{
  sub_242A1A1B4();
  v1 = swift_task_alloc();
  v0[21] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8988, &qword_242A1A910);
  *v1 = v0;
  v1[1] = sub_242A15A20;
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[8];
  v6 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v3, v5, v4, v2, v6);
}

uint64_t sub_242A15A20()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_242A15BD8;
  }

  else
  {
    (*(v2[15] + 8))(v2[16], v2[14]);
    v3 = sub_242A15B4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_242A15B4C()
{
  (*(v0[18] + 8))(v0[20], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_242A15BD8()
{
  v68 = v0;
  if (qword_27ECD8968 != -1)
  {
    swift_once();
  }

  v1 = sub_242A1A1F4();
  v0[23] = __swift_project_value_buffer(v1, qword_27ECD89B0);

  v2 = sub_242A1A1D4();
  v3 = sub_242A1A334();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[9];
    v4 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v67 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_242A19520(v5, v4, &v67);
    _os_log_impl(&dword_242A12000, v2, v3, "Detected failure on function %s. Reporting!", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x245D1FD20](v7, -1, -1);
    MEMORY[0x245D1FD20](v6, -1, -1);
  }

  if (v0[12])
  {
    v63 = v0[12];
    v62 = v0[11];
  }

  else
  {
    v8 = [objc_opt_self() mainBundle];
    v9 = [v8 bundleIdentifier];

    if (!v9)
    {

      v45 = sub_242A1A1D4();
      v46 = sub_242A1A334();

      v47 = os_log_type_enabled(v45, v46);
      v48 = v0[22];
      v49 = v0[20];
      v51 = v0[17];
      v50 = v0[18];
      if (v47)
      {
        v66 = v0[20];
        v53 = v0[10];
        v52 = v0[11];
        v54 = v0[9];
        v64 = v0[17];
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v67 = v56;
        *v55 = 136315394;
        *(v55 + 4) = sub_242A19520(v54, v53, &v67);
        *(v55 + 12) = 2080;
        v0[5] = v52;
        v0[6] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8990, &qword_242A1A918);
        v57 = sub_242A1A274();
        v59 = sub_242A19520(v57, v58, &v67);

        *(v55 + 14) = v59;
        _os_log_impl(&dword_242A12000, v45, v46, "Can't report failure on function %s because of missing processName %s", v55, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D1FD20](v56, -1, -1);
        MEMORY[0x245D1FD20](v55, -1, -1);

        (*(v50 + 8))(v66, v64);
      }

      else
      {

        (*(v50 + 8))(v49, v51);
      }

      goto LABEL_22;
    }

    v62 = sub_242A1A264();
    v63 = v10;
  }

  v11 = v0[13];
  v13 = v0[9];
  v12 = v0[10];
  v15 = v11[3];
  v14 = v11[4];
  v61 = v11;
  __swift_project_boxed_opaque_existential_1(v11, v15);
  swift_getErrorValue();

  v16 = sub_242A1A3C4();
  v18 = (*(v14 + 16))(v13, v12, v16, v17, v62, v63, v15, v14);
  v0[24] = v18;

  if (v18)
  {

    v19 = sub_242A1A1D4();
    v20 = sub_242A1A344();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v67 = v22;
      *v21 = 136315138;
      v23 = sub_242A1A234();
      v25 = sub_242A19520(v23, v24, &v67);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_242A12000, v19, v20, "Reporting signature %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x245D1FD20](v22, -1, -1);
      MEMORY[0x245D1FD20](v21, -1, -1);
    }

    v26 = v0[19];
    v27 = v0[17];
    v28 = v0[18];
    v29 = v61[3];
    v30 = v61[4];
    __swift_project_boxed_opaque_existential_1(v0[13], v29);
    sub_242A1A1B4();
    sub_242A1A1A4();
    v32 = v31;
    v33 = *(v28 + 8);
    v0[25] = v33;
    v0[26] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33(v26, v27);
    v65 = (*(v30 + 24) + **(v30 + 24));
    v34 = swift_task_alloc();
    v0[27] = v34;
    *v34 = v0;
    v34[1] = sub_242A16318;
    v35.n128_u64[0] = v32;

    return v65(v18, v29, v30, v35);
  }

  v37 = sub_242A1A1D4();
  v38 = sub_242A1A334();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v0[22];
  v41 = v0[20];
  v42 = v0[17];
  v43 = v0[18];
  if (v39)
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_242A12000, v37, v38, "Failed to convert signature payload", v44, 2u);
    MEMORY[0x245D1FD20](v44, -1, -1);
  }

  else
  {
  }

  (*(v43 + 8))(v41, v42);
LABEL_22:

  v60 = v0[1];

  return v60();
}

uint64_t sub_242A16318(uint64_t a1)
{
  *(*v1 + 224) = a1;

  return MEMORY[0x2822009F8](sub_242A16438, 0, 0);
}

uint64_t sub_242A16438()
{
  v19 = v0;

  v1 = sub_242A1A1D4();
  v2 = sub_242A1A344();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[20];
  v7 = v0[17];
  if (v3)
  {
    v17 = v0[25];
    v8 = swift_slowAlloc();
    v16 = v6;
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = sub_242A1A234();
    v12 = v11;

    v13 = sub_242A19520(v10, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_242A12000, v1, v2, "Received reporting response: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245D1FD20](v9, -1, -1);
    MEMORY[0x245D1FD20](v8, -1, -1);

    v17(v16, v7);
  }

  else
  {

    v4(v6, v7);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_242A16634(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_242A16698(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_242A166B0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_242A167A0;

  return sub_242A15828(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_242A167A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_242A16894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8980, &qword_242A1A818);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_242A16EE8(a3, v25 - v10);
  v12 = sub_242A1A304();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_242A16B34(v11);
  }

  else
  {
    sub_242A1A2F4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_242A1A2D4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_242A1A294() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_242A16B34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8980, &qword_242A1A818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242A16BA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242A16BF0(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of ABCReporterProtocol.report(with:duration:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v12 = (*(a3 + 24) + **(a3 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_242A16D9C;
  v10.n128_f64[0] = a4;

  return v12(a1, a2, a3, v10);
}

uint64_t sub_242A16D9C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_242A16EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8980, &qword_242A1A818);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242A16F58(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_242A17050;

  return v6(a1);
}

uint64_t sub_242A17050()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_242A17148(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_242A17394;

  return sub_242A16F58(a1, v4);
}

uint64_t sub_242A17200(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_242A167A0;

  return sub_242A16F58(a1, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_242A172FC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8998, &qword_242A1A920);

  return sub_242A15210(a1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id static DefaultsProvider.standardUserDefaults.getter@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() standardUserDefaults];
  *a1 = result;
  return result;
}

void __swiftcall DefaultsProvider.init(suiteName:)(CallsUtilities::DefaultsProvider_optional *__return_ptr retstr, Swift::String_optional suiteName)
{
  if (suiteName.value._object)
  {
    v3 = sub_242A1A254();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];

  retstr->value.userDefaults.super.isa = v4;
}

void DefaultsProvider.set<A>(codable:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = sub_242A1A3B4();
  v7 = sub_242A1A254();
  [v5 setObject:v6 forKey:v7];
  swift_unknownObjectRelease();
}

Swift::Bool __swiftcall DefaultsProvider.BOOL(forKey:)(Swift::String forKey)
{
  v2 = *v1;
  v3 = sub_242A1A254();
  LOBYTE(v2) = [v2 BOOLForKey_];

  return v2;
}

Swift::Void __swiftcall DefaultsProvider.remove(key:)(Swift::String key)
{
  v2 = *v1;
  v3 = sub_242A1A254();
  [v2 removeObjectForKey_];
}

id sub_242A1766C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_242A1A254();
  v5 = [v3 BOOLForKey_];

  return v5;
}

void sub_242A176B4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_242A1A254();
  [v3 removeObjectForKey_];
}

uint64_t NSUserDefaults.get<A>(_:forKey:)@<X0>(uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = sub_242A1A354();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  v12 = sub_242A1A254();
  v13 = [v5 valueForKey_];

  if (v13)
  {
    sub_242A1A364();
    swift_unknownObjectRelease();
    sub_242A179F8(v19, v20);
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD89A0, &qword_242A1A9D0);
  v14 = swift_dynamicCast();
  v15 = *(*(a3 - 8) + 56);
  if (v14)
  {
    v16 = *(a3 - 8);
    v15(v11, 0, 1, a3);
    (*(v16 + 32))(a4, v11, a3);
    v17 = 0;
  }

  else
  {
    v17 = 1;
    v15(v11, 1, 1, a3);
    (*(v9 + 8))(v11, v8);
  }

  return (v15)(a4, v17, 1, a3);
}

_OWORD *sub_242A179F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t NSUserDefaults.get<A>(_:forKey:defaultValue:)@<X0>(uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = sub_242A1A354();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  NSUserDefaults.get<A>(_:forKey:)(a4, &v15 - v10);
  v12 = *(a4 - 8);
  v13 = *(v12 + 48);
  if (v13(v11, 1, a4) != 1)
  {
    return (*(v12 + 32))(a5, v11, a4);
  }

  (*(v12 + 16))(a5, a3, a4);
  result = (v13)(v11, 1, a4);
  if (result != 1)
  {
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t NSUserDefaults.getAll<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_242A1A0D4();
  swift_allocObject();
  sub_242A1A0C4();
  v5 = [v4 dictionaryRepresentation];
  sub_242A1A224();

  v6 = sub_242A1A244();

  return v6;
}

uint64_t NSUserDefaults.getAll<A>(of:)(uint64_t a1, uint64_t a2)
{
  v3 = [v2 dictionaryRepresentation];
  sub_242A1A224();

  v4 = sub_242A1A244();

  return v4;
}

Swift::Void __swiftcall NSUserDefaults.remove(key:)(Swift::String key)
{
  v2 = sub_242A1A254();
  [v1 removeObjectForKey_];
}

uint64_t NSUserDefaults.set<A>(codable:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33[2] = a3;
  v33[5] = a6;
  v33[1] = a2;
  v8 = sub_242A1A1F4();
  v34 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v33 - v12;
  v14 = sub_242A1A354();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v33 - v16;
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_242A1A384();

  v35 = 0xD000000000000018;
  v36 = 0x8000000242A1B120;
  v18 = *(a4 - 8);
  v19 = *(v18 + 16);
  v33[4] = a1;
  v19(v17, a1, a4);
  (*(v18 + 56))(v17, 0, 1, a4);
  v20 = sub_242A19BAC(v17, a4);
  v22 = v21;
  (*(v15 + 8))(v17, v14);
  MEMORY[0x245D1F8E0](v20, v22);

  if (qword_27ECD8978 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v8, qword_27ECD89E0);
  v24 = v34;
  v25 = *(v34 + 16);
  v25(v13, v23, v8);
  v25(v11, v13, v8);
  sub_242A1A104();
  swift_allocObject();
  sub_242A1A0F4();
  v26 = sub_242A1A0E4();
  v28 = v27;

  v29 = *(v24 + 8);
  v29(v11, v8);
  v29(v13, v8);
  v30 = sub_242A1A194();
  v31 = sub_242A1A254();
  [v33[3] setObject:v30 forKey:v31];

  return sub_242A143CC(v26, v28);
}

uint64_t NSUserDefaults.get<A>(codable:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v7 = v6;
  v62 = a5;
  v11 = sub_242A1A354();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v71 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v66 = &v59 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v59 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  v22 = sub_242A1A254();
  v23 = [v7 valueForKey_];

  if (v23)
  {
    v60 = a1;
    v65 = a6;
    sub_242A1A364();
    swift_unknownObjectRelease();
    sub_242A19B28(v76, v74);
    v24 = swift_dynamicCast();
    v25 = *(a4 - 8);
    v67 = *(v25 + 56);
    v68 = v25 + 56;
    v67(v21, v24 ^ 1u, 1, a4);
    v63 = *(v12 + 16);
    v63(v19, v21, v11);
    v26 = *(v25 + 48);
    v27 = v26(v19, 1, a4);
    v59 = v12;
    v69 = *(v12 + 8);
    v70 = v12 + 8;
    v69(v19, v11);
    v28 = v71;
    v64 = v21;
    if (v27 == 1)
    {
      sub_242A19B28(v76, v74);
      if (swift_dynamicCast())
      {
        v61 = v11;
        v29 = v73[0];
        v30 = v73[1];
        sub_242A1A0D4();
        swift_allocObject();
        sub_242A1A0C4();
        sub_242A1A0B4();
        sub_242A143CC(v29, v30);

        v31 = v66;
        v67(v66, 0, 1, a4);
        v21 = v64;
        v11 = v61;
        (*(v59 + 40))(v64, v31, v61);
      }

      else
      {
        v21 = v64;
      }
    }

    v63(v28, v21, v11);
    if (v26(v28, 1, a4) == 1)
    {
      v61 = v11;
      v69(v28, v11);
      if (qword_27ECD8970 != -1)
      {
        swift_once();
      }

      v34 = sub_242A1A1F4();
      __swift_project_value_buffer(v34, qword_27ECD89C8);
      sub_242A19B28(v76, v74);
      v35 = sub_242A1A1D4();
      v36 = sub_242A1A334();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v73[0] = v71;
        *v37 = 136315394;
        v38 = v75;
        v39 = __swift_project_boxed_opaque_existential_1(v74, v75);
        v40 = sub_242A1A354();
        v66 = &v59;
        v41 = *(v40 - 8);
        MEMORY[0x28223BE20](v40);
        v43 = &v59 - v42;
        v44 = *(v38 - 8);
        (*(v44 + 16))(&v59 - v42, v39, v38);
        (*(v44 + 56))(v43, 0, 1, v38);
        v45 = sub_242A19BAC(v43, v38);
        v47 = v46;
        (*(v41 + 8))(v43, v40);
        __swift_destroy_boxed_opaque_existential_0(v74);
        v48 = sub_242A19520(v45, v47, v73);

        *(v37 + 4) = v48;
        *(v37 + 12) = 2080;
        v72 = v60;
        MetatypeMetadata = swift_getMetatypeMetadata();
        v50 = sub_242A19BAC(&v72, MetatypeMetadata);
        v52 = sub_242A19520(v50, v51, v73);

        *(v37 + 14) = v52;
        _os_log_impl(&dword_242A12000, v35, v36, "Failed to cast value: %s to type: %s", v37, 0x16u);
        v53 = v71;
        swift_arrayDestroy();
        MEMORY[0x245D1FD20](v53, -1, -1);
        MEMORY[0x245D1FD20](v37, -1, -1);

        v54 = v76;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v76);
        v54 = v74;
      }

      __swift_destroy_boxed_opaque_existential_0(v54);
      v58 = v64;
      v67(v65, 1, 1, a4);
      v56 = v58;
      v57 = v61;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v76);
      v55 = v65;
      (*(v25 + 32))(v65, v28, a4);
      v67(v55, 0, 1, a4);
      v56 = v21;
      v57 = v11;
    }

    return (v69)(v56, v57);
  }

  else
  {
    v32 = *(*(a4 - 8) + 56);

    return v32(a6, 1, 1, a4);
  }
}

uint64_t NSUserDefaults.get<A>(codable:forKey:defaultValue:)@<X0>(uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = sub_242A1A354();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  NSUserDefaults.get<A>(_:forKey:)(a4, &v15 - v10);
  v12 = *(a4 - 8);
  v13 = *(v12 + 48);
  if (v13(v11, 1, a4) != 1)
  {
    return (*(v12 + 32))(a5, v11, a4);
  }

  (*(v12 + 16))(a5, a3, a4);
  result = (v13)(v11, 1, a4);
  if (result != 1)
  {
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_242A18DCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34[3] = a2;
  v34[4] = a5;
  v34[2] = a3;
  v45 = a1;
  v38 = sub_242A1A354();
  v8 = *(v38 - 8);
  v9 = MEMORY[0x28223BE20](v38);
  v36 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v40 = v34 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v34 - v13;
  v15 = *(a4 - 8);
  v16 = *(v15 + 56);
  v34[1] = v15 + 56;
  v16(a6, 1, 1, a4);
  v39 = v8[1];
  v17 = v38;
  v39(a6, v38);
  sub_242A19B28(v45, v44);
  v18 = swift_dynamicCast();
  v35 = v16;
  v16(v14, v18 ^ 1u, 1, a4);
  v19 = v8 + 4;
  v20 = v8[4];
  v20(a6, v14, v17);
  v21 = v8[2];
  v22 = v40;
  v37 = a6;
  v21(v40, a6, v17);
  v23 = v22;
  v24 = (*(v15 + 48))(v22, 1, a4);
  v25 = v17;
  v26 = v39;
  LODWORD(v22) = v24;
  result = (v39)(v23, v25);
  if (v22 == 1)
  {
    sub_242A19B28(v45, v44);
    result = swift_dynamicCast();
    if (result)
    {
      v45 = v19;
      v28 = v42;
      v29 = v43;
      v30 = v36;
      v31 = v41;
      sub_242A1A0B4();
      if (v31)
      {

        sub_242A143CC(v28, v29);
        v32 = v37;
        v26(v37, v25);
        v33 = 1;
      }

      else
      {
        v41 = v28;
        v32 = v37;
        v26(v37, v25);
        sub_242A143CC(v41, v29);
        v33 = 0;
      }

      v35(v30, v33, 1, a4);
      return (v20)(v32, v30, v25);
    }
  }

  return result;
}

uint64_t sub_242A19178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_242A1A354();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-v8];
  sub_242A19B28(a1, v15);
  v10 = swift_dynamicCast();
  v11 = *(*(a2 - 8) + 56);
  if (v10)
  {
    v12 = *(a2 - 8);
    v11(v9, 0, 1, a2);
    (*(v12 + 32))(a3, v9, a2);
    v13 = 0;
  }

  else
  {
    v13 = 1;
    v11(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
  }

  return v11(a3, v13, 1, a2);
}

uint64_t sub_242A19450(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_242A194C4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_242A19520(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_242A19520(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_242A195EC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_242A19B28(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_242A195EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_242A196F8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_242A1A394();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_242A196F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_242A19744(a1, a2);
  sub_242A19874(&unk_285538D98);
  return v3;
}

void *sub_242A19744(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_242A19960(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_242A1A394();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_242A1A2C4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_242A19960(v10, 0);
        result = sub_242A1A374();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_242A19874(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_242A199D4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_242A19960(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD89A8, &qword_242A1A9F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_242A199D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD89A8, &qword_242A1A9F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_242A19AC8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_242A19AD8(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_242A19AF8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_242A19B28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_242A19BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_242A1A354();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v9 + 48))(v8, 1, a2) == 1)
  {
    (*(v5 + 8))(v8, v4);
    return 7104878;
  }

  else
  {
    (*(v9 + 32))(v14, v8, a2);
    (*(v9 + 16))(v12, v14, a2);
    v16 = sub_242A1A284();
    (*(v9 + 8))(v14, a2);
    return v16;
  }
}

uint64_t sub_242A19E60()
{
  v0 = sub_242A1A1F4();
  __swift_allocate_value_buffer(v0, qword_27ECD89C8);
  __swift_project_value_buffer(v0, qword_27ECD89C8);
  return sub_242A1A1E4();
}

uint64_t sub_242A19F04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_242A1A1F4();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_242A19FC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_242A1A1F4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_242A1A1E4();
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