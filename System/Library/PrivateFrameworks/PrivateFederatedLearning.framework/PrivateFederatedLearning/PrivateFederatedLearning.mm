uint64_t sub_21A3C40C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21A3C4118()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21A3C4150@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_21A3C41A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a2 = v4;
  a2[1] = v5;
  return sub_21A3F74C8(v4, v5);
}

uint64_t sub_21A3C41F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_21A3C426C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21A3C42C0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v1 = sub_21A451414();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21A3C43B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21A3C43EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21A3C442C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_21A3C446C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A404854();
  *a1 = result;
  return result;
}

uint64_t sub_21A3C4498(void *a1, uint64_t a2)
{
  *(*a2 + 64) = *a1;
}

void *sub_21A3C44DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A404940();
  *a1 = result;
  return result;
}

uint64_t sub_21A3C4508(void *a1, uint64_t a2)
{
  *(*a2 + 72) = *a1;
}

uint64_t sub_21A3C454C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A409348();
  *a1 = result;
  return result;
}

void *sub_21A3C4578(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 32) = *result;
  *(v2 + 40) = 0;
  return result;
}

uint64_t sub_21A3C458C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A4094A0();
  *a1 = result;
  return result;
}

uint64_t sub_21A3C45B8(void *a1, uint64_t a2)
{
  *(*a2 + 64) = *a1;
}

uint64_t sub_21A3C45FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A40956C();
  *a1 = result;
  return result;
}

uint64_t sub_21A3C4628(void *a1, uint64_t a2)
{
  *(*a2 + 72) = *a1;
}

uint64_t sub_21A3C466C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A409638();
  *a1 = result;
  return result;
}

void *sub_21A3C4698(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 80) = *result;
  *(v2 + 88) = 0;
  return result;
}

uint64_t sub_21A3C48DC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_21A3C4918()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21A3C4974()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21A3C49D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483641)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 6;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for PFLDecodableTaskParameters(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_21A3C4A8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483641)
  {
    *(result + 8) = (a2 + 5);
  }

  else
  {
    v7 = type metadata accessor for PFLDecodableTaskParameters(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A3C4B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A450D14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 52));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21A3C4BF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A450D14();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21A3C4CB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A440DA4();
  *a1 = result;
  return result;
}

void *sub_21A3C4CDC(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 24) = *result;
  *(v2 + 32) = 0;
  return result;
}

uint64_t sub_21A3C4CF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_21A3C4D40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_21A3C4D90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_21A3C4DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A450D14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21A3C4E9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A450D14();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21A3C4F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A450BE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21A3C5000(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A450BE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A3C50A4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21A3C50DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_21A3CE410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PFLPrivatize(float *a1, vDSP_Length __N)
{
  vDSP_vclr(a1, 1, __N);
  v2 = +[_PFLLog framework];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    PFLPrivatize_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return 0;
}

uint64_t PFLPrivatizeCustomNorm(float *a1, vDSP_Length __N)
{
  vDSP_vclr(a1, 1, __N);
  v2 = +[_PFLLog framework];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    PFLPrivatizeCustomNorm_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return 0;
}

uint64_t PFLPrivatizeCustomNormWithLowerEpsilon(float *a1, vDSP_Length __N)
{
  vDSP_vclr(a1, 1, __N);
  v2 = +[_PFLLog framework];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    PFLPrivatizeCustomNormWithLowerEpsilon_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return 0;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_21A3D1810(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A3D1830(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 168) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21A3D18A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A3D18C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_21A3D1908(uint64_t a1, id *a2)
{
  result = sub_21A451064();
  *a2 = 0;
  return result;
}

uint64_t sub_21A3D1980(uint64_t a1, id *a2)
{
  v3 = sub_21A451074();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21A3D1A00@<X0>(uint64_t *a1@<X8>)
{
  sub_21A451084();
  v2 = sub_21A451054();

  *a1 = v2;
  return result;
}

uint64_t sub_21A3D1A44()
{
  v0 = sub_21A451084();
  v1 = MEMORY[0x21CED9950](v0);

  return v1;
}

uint64_t sub_21A3D1A80(uint64_t a1)
{
  sub_21A451084();
  sub_21A451144();
}

uint64_t sub_21A3D1AD4(uint64_t a1)
{
  sub_21A451084();
  sub_21A451B04();
  sub_21A451144();
  v1 = sub_21A451B24();

  return v1;
}

uint64_t sub_21A3D1B48(void *a1, uint64_t *a2)
{
  v2 = sub_21A451084();
  v4 = v3;
  if (v2 == sub_21A451084() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21A4519B4();
  }

  return v7 & 1;
}

uint64_t sub_21A3D1BD0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21A451054();

  *a2 = v3;
  return result;
}

uint64_t sub_21A3D1C18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A451084();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21A3D1C44(uint64_t a1)
{
  v2 = sub_21A3D1DB8(&qword_27CD282D8, &unk_21A455D40);
  v3 = sub_21A3D1DB8(&unk_27CD282E0, &unk_21A455CE0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void sub_21A3D1D04(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_21A3D1DB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A3D1E30()
{
  v2 = v1;
  v3 = v0;
  v4 = v0[2];
  swift_beginAccess();
  v5 = *(v4 + 32);
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v6 = sub_21A3DCA2C(0x6D726F4E78616DLL, 0xE700000000000000);
  if ((v7 & 1) == 0)
  {

    goto LABEL_18;
  }

  sub_21A3D3B94(*(v5 + 56) + 32 * v6, v141);

  v8 = sub_21A3D3CDC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v21 = sub_21A450F24();
    __swift_project_value_buffer(v21, qword_27CD28C90);

    v22 = sub_21A450F04();
    v23 = sub_21A451584();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v141[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_21A3E2554(0x6D726F4E78616DLL, 0xE700000000000000, v141);
      *(v24 + 12) = 2080;

      v26 = sub_21A450F74();
      v28 = v27;

      v29 = sub_21A3E2554(v26, v28, v141);

      *(v24 + 14) = v29;
      _os_log_impl(&dword_21A3C2000, v22, v23, "cannot get %s from recipe %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEDB220](v25, -1, -1);
      MEMORY[0x21CEDB220](v24, -1, -1);
    }

    goto LABEL_23;
  }

  [v140[0] doubleValue];
  v10 = v9;

  v11 = *(v4 + 32);
  if (!*(v11 + 16))
  {
    goto LABEL_25;
  }

  v12 = sub_21A3DCA2C(0xD00000000000001DLL, 0x800000021A45BB60);
  if ((v13 & 1) == 0)
  {

    goto LABEL_25;
  }

  sub_21A3D3B94(*(v11 + 56) + 32 * v12, v141);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v32 = sub_21A450F24();
    __swift_project_value_buffer(v32, qword_27CD28C90);

    v33 = sub_21A450F04();
    v34 = sub_21A451584();

    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_30;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v141[0] = v36;
    *v35 = 136315138;

    v37 = sub_21A450F74();
    v39 = v38;

    v40 = sub_21A3E2554(v37, v39, v141);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_21A3C2000, v33, v34, "cannot get recipeLocalDPParams from recipe %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x21CEDB220](v36, -1, -1);
    goto LABEL_29;
  }

  v14 = v140[0];
  if (!*(v140[0] + 2))
  {
    goto LABEL_61;
  }

  v15 = sub_21A3DCA2C(0x73696E616863656DLL, 0xE90000000000006DLL);
  if ((v16 & 1) == 0)
  {
    goto LABEL_61;
  }

  sub_21A3D3B94(*(v140[0] + 7) + 32 * v15, v141);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_61;
  }

  if ((v140[0] != 0x6E61697373756167 || v140[1] != 0xE800000000000000) && (sub_21A4519B4() & 1) == 0)
  {

LABEL_61:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v75 = sub_21A450F24();
    __swift_project_value_buffer(v75, qword_27CD28C90);
    v33 = sub_21A450F04();
    v51 = sub_21A451584();
    if (!os_log_type_enabled(v33, v51))
    {
      goto LABEL_30;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v52 = "Only gaussian is supported as DP mechanism";
LABEL_65:
    _os_log_impl(&dword_21A3C2000, v33, v51, v52, v35, 2u);
LABEL_29:
    MEMORY[0x21CEDB220](v35, -1, -1);
LABEL_30:

LABEL_23:
    sub_21A3D3C88();
    swift_allocError();
    *v30 = 0;
    return swift_willThrow();
  }

  if (*(v140[0] + 2) && (v17 = sub_21A3DCA2C(0x6E6F6C69737065, 0xE700000000000000), (v18 & 1) != 0) && (sub_21A3D3B94(*(v140[0] + 7) + 32 * v17, v141), (swift_dynamicCast() & 1) != 0))
  {
    [v140[0] doubleValue];
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (*(v140[0] + 2) && (v41 = sub_21A3DCA2C(0x61746C6564, 0xE500000000000000), (v42 & 1) != 0) && (sub_21A3D3B94(*(v140[0] + 7) + 32 * v41, v141), (swift_dynamicCast() & 1) != 0))
  {
    [v140[0] doubleValue];
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  v3[3] = v10;
  if (!v14[2] || (v45 = sub_21A3DCA2C(0xD00000000000001BLL, 0x800000021A45BB80), (v46 & 1) == 0) || (sub_21A3D3B94(v14[7] + 32 * v45, v141), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_27CD28170 == -1)
    {
LABEL_42:
      v50 = sub_21A450F24();
      __swift_project_value_buffer(v50, qword_27CD28C90);
      v33 = sub_21A450F04();
      v51 = sub_21A451584();
      if (!os_log_type_enabled(v33, v51))
      {
        goto LABEL_30;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v52 = "Moments accountant parameter is missing!";
      goto LABEL_65;
    }

LABEL_114:
    swift_once();
    goto LABEL_42;
  }

  v131 = v140[0];
  v47 = sub_21A3E4F6C(MEMORY[0x277D84F90]);
  v48 = 6;
  v49 = &unk_282B3F818;
  while (1)
  {
    v134 = v48;
    v135 = v47;
    v55 = *(v49 - 1);
    v54 = *v49;
    v133 = v49;
    v56 = v131[2];

    v138 = v55;
    if (!v56 || (v57 = sub_21A3DCA2C(v55, v54), (v58 & 1) == 0) || (sub_21A3D3B94(v131[7] + 32 * v57, v141), (swift_dynamicCast() & 1) == 0))
    {

      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v76 = sub_21A450F24();
      __swift_project_value_buffer(v76, qword_27CD28C90);

      v77 = v54;
      v78 = sub_21A450F04();
      v79 = sub_21A451584();

      if (!os_log_type_enabled(v78, v79))
      {

        goto LABEL_105;
      }

      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v141[0] = v81;
      *v80 = 136315138;
      v82 = sub_21A3E2554(v138, v77, v141);

      *(v80 + 4) = v82;
      v83 = "Moments accountant parameter %s is malformed.";
      v84 = v79;
      v85 = v78;
      v86 = v80;
      v87 = 12;
LABEL_103:
      _os_log_impl(&dword_21A3C2000, v85, v84, v83, v86, v87);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x21CEDB220](v81, -1, -1);
      v120 = v80;
LABEL_104:
      MEMORY[0x21CEDB220](v120, -1, -1);
      goto LABEL_105;
    }

    v59 = v54;
    v60 = v140[0];
    v142 = v8;
    v141[0] = v140[0];
    sub_21A3D3B38(v141, v140);
    v132 = v60;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v136 = v59;
    v63 = sub_21A3DCA2C(v55, v59);
    v64 = v135[2];
    v65 = (v62 & 1) == 0;
    v66 = v64 + v65;
    if (__OFADD__(v64, v65))
    {
      __break(1u);
      goto LABEL_114;
    }

    v67 = v62;
    if (v135[3] < v66)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v70 = v55;
      if ((v62 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      sub_21A3E3DD8();
      v70 = v55;
      if ((v67 & 1) == 0)
      {
LABEL_56:
        v47 = v135;
        v135[(v63 >> 6) + 8] |= 1 << v63;
        v71 = (v135[6] + 16 * v63);
        *v71 = v70;
        v71[1] = v136;
        sub_21A3D3B38(v140, (v135[7] + 32 * v63));

        v72 = v135[2];
        v73 = __OFADD__(v72, 1);
        v74 = v72 + 1;
        if (v73)
        {
          __break(1u);
          goto LABEL_116;
        }

        v135[2] = v74;
        goto LABEL_45;
      }
    }

LABEL_44:

    v47 = v135;
    v53 = (v135[7] + 32 * v63);
    __swift_destroy_boxed_opaque_existential_0(v53);
    sub_21A3D3B38(v140, v53);

LABEL_45:
    v49 = v133 + 2;
    v48 = v134 - 1;
    if (v134 == 1)
    {

      if (*(v47 + 16))
      {
        v88 = sub_21A3DCA2C(0x64724F69796E6552, 0xEA00000000007265);
        if (v89)
        {
          v90 = v47;
          sub_21A3D3B94(*(v47 + 56) + 32 * v88, v141);
          if (swift_dynamicCast())
          {
            v91 = v140[0];
            v92 = [v140[0] integerValue];

            if ((v92 - 33) >= 0xFFFFFFFFFFFFFFE1)
            {
              if (!*(v90 + 16) || (v93 = sub_21A3DCA2C(0x61726574496D754ELL, 0xED0000736E6F6974), (v94 & 1) == 0) || (sub_21A3D3B94(*(v90 + 56) + 32 * v93, v141), (swift_dynamicCast() & 1) == 0) || (v95 = v140[0], v96 = [v140[0] integerValue], v95, v96 < 1))
              {
                if (qword_27CD28170 != -1)
                {
                  swift_once();
                }

                v122 = sub_21A450F24();
                __swift_project_value_buffer(v122, qword_27CD28C90);
                v123 = sub_21A450F04();
                v124 = sub_21A451584();
                if (os_log_type_enabled(v123, v124))
                {
                  v125 = swift_slowAlloc();
                  v126 = swift_slowAlloc();
                  v141[0] = v126;
                  *v125 = 136315138;
                  *(v125 + 4) = sub_21A3E2554(0x61726574496D754ELL, 0xED0000736E6F6974, v141);
                  _os_log_impl(&dword_21A3C2000, v123, v124, "Moments accountant parameter %s must be greater than 0.", v125, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v126);
                  MEMORY[0x21CEDB220](v126, -1, -1);
                  MEMORY[0x21CEDB220](v125, -1, -1);
                }

                goto LABEL_106;
              }

              isUniquelyReferenced_nonNull_native = 0x726F686F4378614DLL;
              v67 = "atabase execute error: %s";
              if (*(v90 + 16))
              {
                v97 = sub_21A3DCA2C(0x726F686F4378614DLL, 0xED0000657A695374);
                if (v98)
                {
                  sub_21A3D3B94(*(v90 + 56) + 32 * v97, v141);
                  if (swift_dynamicCast())
                  {
                    v99 = v140[0];
                    v100 = [v140[0] integerValue];

                    if (*(v90 + 16))
                    {
                      v101 = sub_21A3DCA2C(0xD000000000000011, 0x800000021A45B8F0);
                      if (v102)
                      {
                        sub_21A3D3B94(*(v90 + 56) + 32 * v101, v141);
                        if (swift_dynamicCast())
                        {
                          v103 = v140[0];
                          v139 = [v140[0] integerValue];

                          if (*(v90 + 16))
                          {
                            v104 = sub_21A3DCA2C(0x6974616C75706F50, 0xEE00657A69536E6FLL);
                            if (v105)
                            {
                              sub_21A3D3B94(*(v90 + 56) + 32 * v104, v141);
                              if (swift_dynamicCast())
                              {
                                v106 = v140[0];
                                v137 = [v140[0] integerValue];

                                if (v100 >= 1 && v139 >= 1 && v137 >= 1 && v100 >= v139 && v137 >= v100)
                                {
                                  if (*(v90 + 16))
                                  {
                                    v107 = sub_21A3DCA2C(0x695374726F686F43, 0xEB00000000616D67);
                                    if (v108)
                                    {
                                      sub_21A3D3B94(*(v90 + 56) + 32 * v107, v141);
                                      if (swift_dynamicCast())
                                      {
                                        v109 = v140[0];
                                        [v140[0] doubleValue];
                                        v111 = v110;
                                        v112 = v110;

                                        if ((v112 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                                        {
                                          v3[4] = v111;
                                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
                                          v113 = swift_allocObject();
                                          *(v113 + 16) = xmmword_21A455DF0;
                                          *(v113 + 32) = 0x73696E616863654DLL;
                                          *(v113 + 40) = 0xE90000000000006DLL;
                                          *(v113 + 48) = 0xD000000000000011;
                                          *(v113 + 56) = 0x800000021A45BBA0;
                                          *(v113 + 72) = MEMORY[0x277D837D0];
                                          strcpy((v113 + 80), "OverallEpsilon");
                                          *(v113 + 95) = -18;
                                          v114 = MEMORY[0x277D839F8];
                                          *(v113 + 96) = v20;
                                          *(v113 + 120) = v114;
                                          strcpy((v113 + 128), "OverallDelta");
                                          *(v113 + 141) = 0;
                                          *(v113 + 142) = -5120;
                                          *(v113 + 144) = v44;
                                          *(v113 + 168) = v114;
                                          *(v113 + 176) = 0xD000000000000014;
                                          *(v113 + 184) = 0x800000021A45BBC0;
                                          v115 = v3[3];
                                          *(v113 + 216) = v114;
                                          *(v113 + 192) = v115;
                                          v116 = sub_21A3E4F6C(v113);
                                          swift_setDeallocating();
                                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
                                          swift_arrayDestroy();
                                          swift_deallocClassInstance();

                                          v117 = swift_isUniquelyReferenced_nonNull_native();
                                          v141[0] = v116;
                                          sub_21A3D3D28(v90, sub_21A3EC9F8, 0, v117, v141);
                                          if (v2)
                                          {
                                            goto LABEL_121;
                                          }

                                          v3[5] = v141[0];
                                        }
                                      }
                                    }
                                  }

LABEL_106:
                                  sub_21A3D3C88();
                                  swift_allocError();
                                  *v121 = 0;
                                  swift_willThrow();
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

LABEL_116:
              if (qword_27CD28170 != -1)
              {
                swift_once();
              }

              v127 = sub_21A450F24();
              __swift_project_value_buffer(v127, qword_27CD28C90);
              v78 = sub_21A450F04();
              v128 = sub_21A451584();
              if (os_log_type_enabled(v78, v128))
              {
                v129 = swift_slowAlloc();
                v130 = swift_slowAlloc();
                v141[0] = v130;
                *v129 = 136315650;
                *(v129 + 4) = sub_21A3E2554(0xD000000000000011, v67 | 0x8000000000000000, v141);
                *(v129 + 12) = 2080;
                *(v129 + 14) = sub_21A3E2554(isUniquelyReferenced_nonNull_native, 0xED0000657A695374, v141);
                *(v129 + 22) = 2080;
                *(v129 + 24) = sub_21A3E2554(0x6974616C75706F50, 0xEE00657A69536E6FLL, v141);
                _os_log_impl(&dword_21A3C2000, v78, v128, "Moments accountant parameters require 0 < %s <= %s <= %s", v129, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x21CEDB220](v130, -1, -1);
                v120 = v129;
                goto LABEL_104;
              }

LABEL_105:

              goto LABEL_106;
            }
          }
        }
      }

      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v118 = sub_21A450F24();
      __swift_project_value_buffer(v118, qword_27CD28C90);
      v78 = sub_21A450F04();
      v119 = sub_21A451584();
      if (!os_log_type_enabled(v78, v119))
      {
        goto LABEL_105;
      }

      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v141[0] = v81;
      *v80 = 136315650;
      *(v80 + 4) = sub_21A3E2554(0x64724F69796E6552, 0xEA00000000007265, v141);
      *(v80 + 12) = 2048;
      *(v80 + 14) = 2;
      *(v80 + 22) = 2048;
      *(v80 + 24) = 32;
      v83 = "Moments accountant parameter %s must be between %ld and %ld.";
      v84 = v119;
      v85 = v78;
      v86 = v80;
      v87 = 32;
      goto LABEL_103;
    }
  }

  sub_21A3E2A88(v66, isUniquelyReferenced_nonNull_native);
  v68 = sub_21A3DCA2C(v55, v136);
  if ((v67 & 1) == (v69 & 1))
  {
    v63 = v68;
    v70 = v55;
    if ((v67 & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_44;
  }

  sub_21A451A94();
  __break(1u);
LABEL_121:

  __break(1u);
  return result;
}

unint64_t sub_21A3D31FC(uint64_t a1, double a2)
{
  v5 = v2[4];
  if (a1 != 1)
  {
    v5 = v5 * v2[3] / a2;
  }

  v6 = v2[5];
  v7 = MEMORY[0x277D839F8];
  v19 = MEMORY[0x277D839F8];
  v18[0] = v5;
  sub_21A3D3B38(v18, v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21A403008(v17, 0xD000000000000015, 0x800000021A45BB20, isUniquelyReferenced_nonNull_native);
  v19 = v7;
  v18[0] = a2;
  sub_21A3D3B38(v18, v17);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_21A403008(v17, 0x676E697070696C43, 0xED0000646E756F42, v9);
  v19 = MEMORY[0x277D83B88];
  *&v18[0] = a1;
  sub_21A3D3B38(v18, v17);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_21A403008(v17, 0x6B6E7568436D754ELL, 0xE900000000000073, v10);
  v11 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A455E00;
  *(inited + 32) = sub_21A451084();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v13;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v14 = sub_21A3E4F6C(inited);
  swift_setDeallocating();
  sub_21A3D3BF0(inited + 32, &qword_27CD28438, &unk_21A455EA0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  v18[0] = v11;
  sub_21A3D3B38(v18, v17);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_21A403008(v17, 0xD000000000000013, 0x800000021A45BB40, v15);
  return v14;
}

unint64_t sub_21A3D3450(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28420, &unk_21A458D20);
    v2 = sub_21A451874();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_21A3D3B38(&v22, v24);
        sub_21A3D3B38(v24, v25);
        sub_21A3D3B38(v25, &v23);
        result = sub_21A3DCA2C(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_21A3D3B38(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_21A3D3B38(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21A3D36A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28428, &unk_21A455E90);
    v2 = sub_21A451874();
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
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21A3D3B94(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_21A3D3B38(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_21A3D3B38(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_21A3D3B38(v31, v32);
    result = sub_21A4516D4();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_21A3D3B38(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21A3D3970()
{

  return swift_deallocClassInstance();
}

unint64_t sub_21A3D3A28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28410, &qword_21A455E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A455E00;
  *(inited + 32) = sub_21A451084();
  *(inited + 40) = v1;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v2 = sub_21A3E509C(inited);
  swift_setDeallocating();
  sub_21A3D3BF0(inited + 32, &qword_27CD28418, &unk_21A455E80);
  v3 = sub_21A3D3450(v2);

  return v3;
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

_OWORD *sub_21A3D3B38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
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

uint64_t sub_21A3D3B94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21A3D3BF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_21A3D3C88()
{
  result = qword_27CD28448;
  if (!qword_27CD28448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28448);
  }

  return result;
}

unint64_t sub_21A3D3CDC()
{
  result = qword_27CD28450;
  if (!qword_27CD28450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD28450);
  }

  return result;
}

unint64_t sub_21A3D3D28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_21A3ECAD4(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_21A3D3B38(v44, v42);
  v14 = *a5;
  result = sub_21A3DCA2C(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_21A3E2A88(v20, a4 & 1);
    result = sub_21A3DCA2C(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_21A451A94();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_21A3E3DD8();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_21A3D3B38(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_21A3D3B38(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_21A3ECAD4(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_21A3D3B38(v44, v42);
        v32 = *a5;
        result = sub_21A3DCA2C(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_21A3E2A88(v36, 1);
          result = sub_21A3DCA2C(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v31);
          sub_21A3D3B38(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_21A3D3B38(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_21A3ECAD4(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_21A3C5104(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

float sub_21A3D40B0@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = a1;
  *a2 = a1;
  return result;
}

void sub_21A3D40BC(void *a1@<X0>, float *a2@<X8>)
{
  sub_21A4514B4();
  v5 = v4;

  *a2 = v5;
}

uint64_t sub_21A3D4178(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a3 <= 0x7FFFFFFF)
  {
    return a4(a3, result, 1, a2, 1);
  }

  __break(1u);
  return result;
}

double sub_21A3D41FC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = a1;
  *a2 = a1;
  return result;
}

void sub_21A3D4208(void *a1@<X0>, double *a2@<X8>)
{
  sub_21A4514A4();
  v5 = v4;

  *a2 = v5;
}

uint64_t sub_21A3D4260(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a3 <= 0x7FFFFFFF)
  {
    return a6(a3, result, 1, a2, 1);
  }

  __break(1u);
  return result;
}

__int16 Float16.init(_:)@<H0>(void *a1@<X0>)
{
  [a1 floatValue];
  _S8 = v2;

  __asm { FCVT            H0, S8 }

  return result;
}

short float sub_21A3D4334@<H0>(uint64_t a1@<X0>, short float *a2@<X8>)
{
  result = a1;
  *a2 = a1;
  return result;
}

__int16 sub_21A3D4340@<H0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  [a1 floatValue];
  _S8 = v4;

  __asm { FCVT            H0, S8 }

  *a2 = result;
  return result;
}

char **_sSf24PrivateFederatedLearningE10inplaceSubyySaySfGz_ACtFZ_0(char **result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 2);
  if (v3 >> 31)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21A407D80(0, v3, 0, v2);
    }

    *v4 = v2;

    return cblas_saxpy_NEWLAPACK();
  }

  return result;
}

uint64_t _sSf24PrivateFederatedLearningE10inplaceDivyySaySfGz_SftFZ_0(char **a1, float a2)
{
  v9 = *MEMORY[0x277D85DE8];
  __B = a2;
  v3 = *a1;
  v4 = *(*a1 + 2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_21A407D80(0, v4, 0, v3);
  }

  *a1 = v6;
  vDSP_vsdiv(v3 + 8, 1, &__B, v6 + 8, 1, v4);
}

uint64_t _sSd24PrivateFederatedLearningE10inplaceSubyySaySdGz_ACtFZ_0(char **a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, __n128 a6)
{
  v6 = *a1;
  v7 = *(*a1 + 2);
  if (v7 >> 31)
  {
    __break(1u);
  }

  else
  {
    v8 = a2;
    v9 = a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_21A407E84(0, v7, 0, v6);
    }

    *v9 = v6;
    a6.n128_u64[0] = -1.0;
    a2 = v8 + 32;
    a4 = v6 + 32;
    a1 = v7;
    a3 = 1;
    a5 = 1;
  }

  return MEMORY[0x282108850](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_21A3D4578(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, void, uint64_t), void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *a1;
  v9 = *(*a1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = a3(0, v9, 0, v8);
  }

  *a1 = v11;
  a4(v8 + 32, 1, a2 + 32, 1, v11 + 32, 1, v9);
}

uint64_t _sSd24PrivateFederatedLearningE10inplaceDivyySaySdGz_SdtFZ_0(char **a1, double a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = a2;
  v3 = *a1;
  v4 = *(*a1 + 2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_21A407E84(0, v4, 0, v3);
  }

  *a1 = v6;
  vDSP_vsdivD(v3 + 4, 1, v8, v6 + 4, 1, v4);
}

uint64_t _ss7Float16V24PrivateFederatedLearningE10inplaceSubyySayABGz_AEtFZ_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  v5 = *(*result + 16);
  if (v5 >= 8)
  {
    v7 = 0;
    v8 = *(a2 + 16);
    do
    {
      v9 = v7;
      v10 = *(v4 + 16);
      v11 = v9 + 8;
      if (v10 < v9 || v10 < v11)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (v8 < v11)
      {
        goto LABEL_35;
      }

      v13 = (v4 + 2 * v9);
      v27 = v13[23];
      v29 = v13[22];
      v31 = v13[21];
      v32 = v13[20];
      v33 = v13[19];
      v14 = v13[18];
      v15 = v13[17];
      v16 = v13[16];
      v17 = (a2 + 2 * v9);
      v26 = v17[23];
      v28 = v17[22];
      v30 = v17[21];
      v18 = v17[20];
      v19 = v17[19];
      v20 = v17[18];
      v21 = v17[17];
      v22 = v17[16];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21A410F7C(v4);
        v4 = result;
      }

      v23 = *(v4 + 16);
      if (v9 >= v23)
      {
        goto LABEL_36;
      }

      v24 = (v4 + 2 * v9);
      v24[16] = v16 - v22;
      if (v9 + 1 >= v23)
      {
        goto LABEL_37;
      }

      v24[17] = v15 - v21;
      if (v9 + 2 >= v23)
      {
        goto LABEL_38;
      }

      v24[18] = v14 - v20;
      if (v9 + 3 >= v23)
      {
        goto LABEL_39;
      }

      v24[19] = v33 - v19;
      if (v9 + 4 >= v23)
      {
        goto LABEL_40;
      }

      v24[20] = v32 - v18;
      if (v9 + 5 >= v23)
      {
        goto LABEL_41;
      }

      v24[21] = v31 - v30;
      if (v9 + 6 >= v23)
      {
        goto LABEL_42;
      }

      v24[22] = v29 - v28;
      if (v9 + 7 >= v23)
      {
        goto LABEL_43;
      }

      v24[23] = v27 - v26;
      if (__OFADD__(v9, 16))
      {
        goto LABEL_44;
      }

      v7 = v9 + 8;
    }

    while (v5 >= v9 + 16);
    v6 = v9 + 8;
    *v3 = v4;
    if (v9 + 8 >= v5)
    {
      return result;
    }
  }

  else
  {
    if (!v5)
    {
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_45:
      result = sub_21A410F7C(v4);
      v4 = result;
    }

    v6 = 0;
  }

  v25 = *(a2 + 16);
  if (v6 > v25)
  {
    v25 = v6;
  }

  do
  {
    if (v25 == v6)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v6 >= *(v4 + 16))
    {
      goto LABEL_33;
    }

    *(v4 + 2 * v6 + 32) = *(v4 + 2 * v6 + 32) - *(a2 + 32 + 2 * v6);
    ++v6;
  }

  while (v6 < v5);
  *v3 = v4;
  return result;
}

char *_ss7Float16V24PrivateFederatedLearningE4copy4from2to5countySPyABG_SpyABGSitFZ_0(char *result, char *a2, uint64_t a3)
{
  if (a3 >= 8)
  {
    v3 = 0;
    v4 = result;
    v5 = a2;
    do
    {
      v3 += 8;
      *v5 = *v4;
      if (__OFADD__(v3, 8))
      {
        __break(1u);
        return result;
      }

      v5 += 16;
      v4 += 16;
    }

    while (v3 + 8 <= a3);
    if (v3 >= a3)
    {
      return result;
    }
  }

  else
  {
    if (a3 <= 0)
    {
      return result;
    }

    v3 = 0;
  }

  if (a3 <= v3 + 1)
  {
    v6 = v3 + 1;
  }

  else
  {
    v6 = a3;
  }

  v7 = v6 - v3;
  if (v7 < 4)
  {
    v9 = v3;
    goto LABEL_26;
  }

  if ((a2 - result) < 0x20)
  {
    v9 = v3;
    goto LABEL_26;
  }

  if (v7 < 0x10)
  {
    v8 = 0;
    goto LABEL_21;
  }

  v8 = v7 & 0xFFFFFFFFFFFFFFF0;
  v10 = 2 * v3 + 16;
  v11 = &result[v10];
  v12 = &a2[v10];
  v13 = v7 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v14 = *v11;
    *(v12 - 1) = *(v11 - 1);
    *v12 = v14;
    v11 += 32;
    v12 += 32;
    v13 -= 16;
  }

  while (v13);
  if (v7 != v8)
  {
    if ((v7 & 0xC) == 0)
    {
      v9 = v3 + v8;
      goto LABEL_26;
    }

LABEL_21:
    v9 = v3 + (v7 & 0xFFFFFFFFFFFFFFFCLL);
    v15 = v8 - (v7 & 0xFFFFFFFFFFFFFFFCLL);
    v16 = 2 * (v3 + v8);
    v17 = &result[v16];
    v18 = &a2[v16];
    do
    {
      v19 = *v17;
      v17 += 8;
      *v18 = v19;
      v18 += 8;
      v15 += 4;
    }

    while (v15);
    if (v7 == (v7 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

    do
    {
LABEL_26:
      *&a2[2 * v9] = *&result[2 * v9];
      ++v9;
    }

    while (v9 < a3);
  }

  return result;
}

uint64_t _ss7Float16V24PrivateFederatedLearningE10inplaceAddyySayABGz_AEtFZ_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  v5 = *(*result + 16);
  if (v5 >= 8)
  {
    v7 = 0;
    v8 = *(a2 + 16);
    do
    {
      v9 = v7;
      v10 = *(v4 + 16);
      v11 = v9 + 8;
      if (v10 < v9 || v10 < v11)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (v8 < v11)
      {
        goto LABEL_35;
      }

      v13 = (v4 + 2 * v9);
      v14 = v13[16];
      v15 = v13[17];
      v16 = v13[18];
      v33 = v13[19];
      v32 = v13[20];
      v31 = v13[21];
      v29 = v13[22];
      v27 = v13[23];
      v17 = (a2 + 2 * v9);
      v18 = v17[16];
      v19 = v17[17];
      v20 = v17[18];
      v21 = v17[19];
      v22 = v17[20];
      v30 = v17[21];
      v28 = v17[22];
      v26 = v17[23];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21A410F7C(v4);
        v4 = result;
      }

      v23 = *(v4 + 16);
      if (v9 >= v23)
      {
        goto LABEL_36;
      }

      v24 = (v4 + 2 * v9);
      v24[16] = v14 + v18;
      if (v9 + 1 >= v23)
      {
        goto LABEL_37;
      }

      v24[17] = v15 + v19;
      if (v9 + 2 >= v23)
      {
        goto LABEL_38;
      }

      v24[18] = v16 + v20;
      if (v9 + 3 >= v23)
      {
        goto LABEL_39;
      }

      v24[19] = v33 + v21;
      if (v9 + 4 >= v23)
      {
        goto LABEL_40;
      }

      v24[20] = v32 + v22;
      if (v9 + 5 >= v23)
      {
        goto LABEL_41;
      }

      v24[21] = v31 + v30;
      if (v9 + 6 >= v23)
      {
        goto LABEL_42;
      }

      v24[22] = v29 + v28;
      if (v9 + 7 >= v23)
      {
        goto LABEL_43;
      }

      v24[23] = v27 + v26;
      if (__OFADD__(v9, 16))
      {
        goto LABEL_44;
      }

      v7 = v9 + 8;
    }

    while (v5 >= v9 + 16);
    v6 = v9 + 8;
    *v3 = v4;
    if (v9 + 8 >= v5)
    {
      return result;
    }
  }

  else
  {
    if (!v5)
    {
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_45:
      result = sub_21A410F7C(v4);
      v4 = result;
    }

    v6 = 0;
  }

  v25 = *(a2 + 16);
  if (v6 > v25)
  {
    v25 = v6;
  }

  do
  {
    if (v25 == v6)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v6 >= *(v4 + 16))
    {
      goto LABEL_33;
    }

    *(v4 + 2 * v6 + 32) = *(a2 + 32 + 2 * v6) + *(v4 + 2 * v6 + 32);
    ++v6;
  }

  while (v6 < v5);
  *v3 = v4;
  return result;
}

uint64_t _ss7Float16V24PrivateFederatedLearningE10inplaceDivyySayABGz_ABtFZ_0(uint64_t result, __n128 a2)
{
  v2 = *a2.n128_u16;
  v3 = result;
  v4 = *result;
  v5 = *(*result + 16);
  if (v5 < 8)
  {
    if (!v5)
    {
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_4:
      v6 = 0;
      goto LABEL_24;
    }

LABEL_39:
    result = sub_21A410F7C(v4);
    v4 = result;
    goto LABEL_4;
  }

  v7 = 0;
  do
  {
    v8 = v7;
    v9 = *(v4 + 16);
    if (v9 < v8 || v9 < v8 + 8)
    {
      goto LABEL_29;
    }

    v11 = (v4 + 2 * v8);
    v12 = v11[16];
    v13 = v11[17];
    v14 = v11[18];
    v15 = v11[19];
    v16 = v11[20];
    v17 = v11[21];
    v18 = v11[22];
    v21 = v11[23];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21A410F7C(v4);
      v4 = result;
    }

    v19 = *(v4 + 16);
    if (v8 >= v19)
    {
      goto LABEL_30;
    }

    v20 = (v4 + 2 * v8);
    v20[16] = v12 / v2;
    if (v8 + 1 >= v19)
    {
      goto LABEL_31;
    }

    v20[17] = v13 / v2;
    if (v8 + 2 >= v19)
    {
      goto LABEL_32;
    }

    v20[18] = v14 / v2;
    if (v8 + 3 >= v19)
    {
      goto LABEL_33;
    }

    v20[19] = v15 / v2;
    if (v8 + 4 >= v19)
    {
      goto LABEL_34;
    }

    v20[20] = v16 / v2;
    if (v8 + 5 >= v19)
    {
      goto LABEL_35;
    }

    v20[21] = v17 / v2;
    if (v8 + 6 >= v19)
    {
      goto LABEL_36;
    }

    v20[22] = v18 / v2;
    if (v8 + 7 >= v19)
    {
      goto LABEL_37;
    }

    v20[23] = v21 / v2;
    if (__OFADD__(v8, 16))
    {
      goto LABEL_38;
    }

    v7 = v8 + 8;
  }

  while (v5 >= v8 + 16);
  v6 = v8 + 8;
  *v3 = v4;
  if (v8 + 8 >= v5)
  {
    return result;
  }

  do
  {
LABEL_24:
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    *(v4 + 2 * v6 + 32) = *(v4 + 2 * v6 + 32) / v2;
    ++v6;
  }

  while (v6 < v5);
  *v3 = v4;
  return result;
}

uint64_t dispatch thunk of VectorArithmetic.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 32))(a1, a2);
}

{
  return (*(a3 + 40))(a1, a2);
}

uint64_t sub_21A3D5028()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v0 + 16);
  swift_beginAccess();
  v5 = *(v4 + 32);
  if (!*(v5 + 16))
  {
    goto LABEL_15;
  }

  v6 = sub_21A3DCA2C(0xD000000000000012, 0x800000021A45BC40);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_21A3D3B94(*(v5 + 56) + 32 * v6, v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    sub_21A3D3C88();
    swift_allocError();
    *v25 = 17;
    return swift_willThrow();
  }

  v8 = v28;
  v9 = sub_21A451084();
  if (!*(v8 + 16))
  {
    goto LABEL_19;
  }

  v11 = sub_21A3DCA2C(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_21A3D3B94(*(v8 + 56) + 32 * v11, v27);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v14 = v28;
  v15 = *(v4 + 32);
  v16 = sub_21A451084();
  v18 = v17;
  if (!*(v15 + 16) || (v19 = v16, v26 = v14, , v20 = sub_21A3DCA2C(v19, v18), v22 = v21, , (v22 & 1) == 0))
  {

LABEL_19:

LABEL_14:

    goto LABEL_15;
  }

  sub_21A3D3B94(*(v15 + 56) + 32 * v20, v27);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v23 = v28;
  sub_21A3D8F38(v8);

  if (v2)
  {
  }

  else
  {
    sub_21A3D9470(v26);
    sub_21A3D70C0(v23);
    *(v3 + 48) = v23;

    *(v3 + 40) = v26;
  }
}

unint64_t sub_21A3D5304(uint64_t a1, double a2)
{
  v5 = *(v2 + 16);
  swift_beginAccess();
  v6 = *(v5 + 32);
  if (!*(v6 + 16))
  {
    goto LABEL_13;
  }

  v7 = v2;

  v2 = v6;
  v8 = sub_21A3DCA2C(0xD000000000000012, 0x800000021A45BC40);
  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_21A3D3B94(*(v6 + 56) + 32 * v8, &v117);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    sub_21A3D3C88();
    swift_allocError();
    *v38 = 17;
    swift_willThrow();
    return v2;
  }

  v2 = *&v116[0];
  v11 = sub_21A451084();
  if (!*(*&v116[0] + 16))
  {

LABEL_12:

    goto LABEL_13;
  }

  v13 = sub_21A3DCA2C(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_21A3D3B94(*(*&v116[0] + 56) + 32 * v13, &v117);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v16 = *&v116[0];
  v17 = sub_21A451084();
  v19 = v18;
  v20 = *(v7 + 48);
  if (!*(v20 + 16))
  {
    v26 = v7;

    goto LABEL_20;
  }

  v21 = v17;

  v22 = sub_21A3DCA2C(v21, v19);
  v24 = v23;

  if ((v24 & 1) == 0)
  {

    goto LABEL_19;
  }

  sub_21A3D3B94(*(v20 + 56) + 32 * v22, &v117);

  v25 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v26 = v7;
LABEL_20:
    v40 = *(v26 + 32);
    if (a1 != 1)
    {
      v40 = v40 * *(v26 + 24) / a2;
    }

    v41 = *(v26 + 48);
    v42 = sub_21A451084();
    v44 = v43;
    v45 = MEMORY[0x277D839F8];
    v118 = MEMORY[0x277D839F8];
    *&v117 = v40;
    sub_21A3D3B38(&v117, v116);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119 = v41;
    sub_21A403008(v116, v42, v44, isUniquelyReferenced_nonNull_native);

    v47 = v119;
    v48 = sub_21A451084();
    v50 = v49;
    v118 = v45;
    *&v117 = a2;
    sub_21A3D3B38(&v117, v116);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v47;
    sub_21A403008(v116, v48, v50, v51);

    v52 = v119;
    v53 = sub_21A451084();
    v55 = v54;
    v118 = MEMORY[0x277D83B88];
    *&v117 = a1;
    sub_21A3D3B38(&v117, v116);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v52;
    sub_21A403008(v116, v53, v55, v56);

    v57 = v119;
    v58 = sub_21A451084();
    v60 = v59;
    v118 = v10;
    *&v117 = v57;
    sub_21A3D3B38(&v117, v116);

    v61 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v16;
    sub_21A403008(v116, v58, v60, v61);

    v62 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A455F10;
    *(inited + 32) = sub_21A451084();
    *(inited + 40) = v64;
    *(inited + 48) = sub_21A451084();
    *(inited + 56) = v65;
    *(inited + 64) = sub_21A451084();
    *(inited + 72) = v66;
    *(inited + 80) = sub_21A451084();
    *(inited + 88) = v67;
    *(inited + 96) = sub_21A451084();
    *(inited + 104) = v68;
    v69 = sub_21A4242FC(inited);
    swift_setDeallocating();
    swift_arrayDestroy();

    v71 = sub_21A3D5FE8(v70);

    LOBYTE(inited) = sub_21A3D85E8(v71, v69);

    if (inited)
    {
      v72 = swift_initStackObject();
      *(v72 + 16) = xmmword_21A455F20;
      *(v72 + 32) = sub_21A451084();
      *(v72 + 40) = v73;
      *(v72 + 48) = sub_21A451084();
      *(v72 + 56) = v74;
      *(v72 + 64) = sub_21A451084();
      *(v72 + 72) = v75;
      *(v72 + 80) = sub_21A451084();
      *(v72 + 88) = v76;
      *(v72 + 96) = sub_21A451084();
      *(v72 + 104) = v77;
      *(v72 + 112) = sub_21A451084();
      *(v72 + 120) = v78;
      *(v72 + 128) = sub_21A451084();
      *(v72 + 136) = v79;
      *(v72 + 144) = sub_21A451084();
      *(v72 + 152) = v80;
      *(v72 + 160) = sub_21A451084();
      *(v72 + 168) = v81;
      *(v72 + 176) = sub_21A451084();
      *(v72 + 184) = v82;
      *(v72 + 192) = sub_21A451084();
      *(v72 + 200) = v83;
      v84 = sub_21A4242FC(v72);
      swift_setDeallocating();
      v85 = MEMORY[0x277D837D0];
      swift_arrayDestroy();

      v87 = sub_21A3D5FE8(v86);

      v88 = sub_21A3D85E8(v87, v84);

      if (v88)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_21A455F00;
        *(v89 + 32) = sub_21A451084();
        *(v89 + 72) = v85;
        *(v89 + 40) = v90;
        *(v89 + 48) = 3157554;
        *(v89 + 56) = 0xE300000000000000;
        *(v89 + 80) = sub_21A451084();
        *(v89 + 88) = v91;
        *(v89 + 120) = v10;
        *(v89 + 96) = v62;
        v2 = sub_21A3E4F6C(v89);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
        swift_arrayDestroy();
        swift_deallocClassInstance();

        return v2;
      }

      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v103 = sub_21A450F24();
      v2 = __swift_project_value_buffer(v103, qword_27CD28C90);

      v93 = sub_21A450F04();
      v104 = sub_21A451584();

      if (os_log_type_enabled(v93, v104))
      {
        v2 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *&v117 = v105;
        *v2 = 136315394;

        v106 = sub_21A4514C4();
        v108 = v107;

        v109 = sub_21A3E2554(v106, v108, &v117);

        *(v2 + 4) = v109;
        *(v2 + 12) = 2080;
        v110 = sub_21A450F84();
        v112 = v111;

        v113 = sub_21A3E2554(v110, v112, &v117);

        *(v2 + 14) = v113;
        _os_log_impl(&dword_21A3C2000, v93, v104, "Required keys for DPConfig: %s, but got %s", v2, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CEDB220](v105, -1, -1);
        MEMORY[0x21CEDB220](v2, -1, -1);
        goto LABEL_34;
      }
    }

    else
    {

      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v92 = sub_21A450F24();
      v2 = __swift_project_value_buffer(v92, qword_27CD28C90);

      v93 = sub_21A450F04();
      v94 = sub_21A451584();

      if (os_log_type_enabled(v93, v94))
      {
        v2 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        *&v117 = v115;
        *v2 = 136315394;

        v95 = sub_21A4514C4();
        v97 = v96;

        v98 = sub_21A3E2554(v95, v97, &v117);

        *(v2 + 4) = v98;
        *(v2 + 12) = 2080;
        v99 = sub_21A450F84();
        v101 = v100;

        v102 = sub_21A3E2554(v99, v101, &v117);

        *(v2 + 14) = v102;
        _os_log_impl(&dword_21A3C2000, v93, v94, "Required keys for DPConfig: %s, but got %s", v2, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CEDB220](v115, -1, -1);
        MEMORY[0x21CEDB220](v2, -1, -1);
LABEL_34:

        sub_21A3D3C88();
        swift_allocError();
        *v114 = 17;
        swift_willThrow();

        return v2;
      }
    }

    goto LABEL_34;
  }

  v26 = v7;
  v27 = sub_21A3D8190(*&v116[0], *(&v116[0] + 1));

  if ((v27 & 1) == 0)
  {
    goto LABEL_20;
  }

  v119 = *(v7 + 48);
  v28 = sub_21A451084();
  v30 = v29;

  sub_21A402EB8(v28, v30, &v117);

  sub_21A3D3BF0(&v117, &qword_27CD28468, &unk_21A455FB0);
  v31 = sub_21A451084();
  v33 = v32;
  v118 = v10;
  *&v117 = v119;
  sub_21A3D3B38(&v117, v116);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  sub_21A403008(v116, v31, v33, v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_21A455F00;
  *(v35 + 32) = sub_21A451084();
  *(v35 + 72) = v25;
  *(v35 + 40) = v36;
  *(v35 + 48) = 3157554;
  *(v35 + 56) = 0xE300000000000000;
  *(v35 + 80) = sub_21A451084();
  *(v35 + 88) = v37;
  *(v35 + 120) = v10;
  *(v35 + 96) = v16;
  v2 = sub_21A3E4F6C(v35);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v2;
}

uint64_t sub_21A3D5FE8(uint64_t a1)
{
  result = MEMORY[0x21CED9BE0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_21A3D8498(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

NSObject *sub_21A3D6104()
{
  v2 = *(v0 + 16);
  swift_beginAccess();
  v3 = *(v2 + 32);
  if (!v3[2].isa)
  {
    goto LABEL_14;
  }

  v4 = sub_21A3DCA2C(0xD000000000000012, 0x800000021A45BC40);
  if ((v5 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_21A3D3B94(v3[7].isa + 32 * v4, &v79);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_21A3D3C88();
    swift_allocError();
    *v16 = 17;
    swift_willThrow();
    return v3;
  }

  v3 = *&v78[0];
  v7 = sub_21A451084();
  if (!*(*&v78[0] + 16))
  {
    goto LABEL_12;
  }

  v9 = sub_21A3DCA2C(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_21A3D3B94(*(*&v78[0] + 56) + 32 * v9, &v79);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = *&v78[0];
  if (!*(*&v78[0] + 16) || (v13 = sub_21A3DCA2C(0xD00000000000001BLL, 0x800000021A45BC60), (v14 & 1) == 0) || (sub_21A3D3B94(*(*&v78[0] + 56) + 32 * v13, &v79), sub_21A3D3CDC(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_12:

LABEL_13:

    goto LABEL_14;
  }

  v15 = *&v78[0];
  sub_21A3D8F38(*&v78[0]);
  if (v1)
  {

LABEL_30:

    return v3;
  }

  v77 = *&v78[0];
  if (!*(*&v78[0] + 16) || (v18 = sub_21A3DCA2C(0xD000000000000019, 0x800000021A45BC80), (v19 & 1) == 0))
  {

    goto LABEL_21;
  }

  sub_21A3D3B94(*(*&v78[0] + 56) + 32 * v18, &v79);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v76 = sub_21A451084();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28478, &qword_21A455FD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A455E00;
    *(inited + 32) = sub_21A451084();
    *(inited + 40) = v35;
    [v15 doubleValue];
    *(inited + 48) = v36;
    v37 = sub_21A3E51B0(inited);
    swift_setDeallocating();
    v31 = &off_21A455000;
    sub_21A3D3BF0(inited + 32, &qword_27CD28480, &qword_21A455FD8);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28488, &unk_21A455FE0);
    *&v79 = v37;
    sub_21A3D3B38(&v79, v78);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v12;
    sub_21A403008(v78, v76, v33, isUniquelyReferenced_nonNull_native);

    v30 = v81;
    goto LABEL_22;
  }

  v20 = *&v78[0];
  v21 = sub_21A451084();
  v73 = v22;
  v75 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_21A455F00;
  *(v23 + 32) = sub_21A451084();
  *(v23 + 40) = v24;
  [v15 doubleValue];
  *(v23 + 72) = MEMORY[0x277D839F8];
  *(v23 + 48) = v25;
  *(v23 + 80) = sub_21A451084();
  *(v23 + 88) = v26;
  v27 = [v20 unsignedIntValue];
  *(v23 + 120) = MEMORY[0x277D84CC0];
  *(v23 + 96) = v27;
  v28 = sub_21A3E4F6C(v23);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
  swift_arrayDestroy();
  v80 = v6;
  *&v79 = v28;
  sub_21A3D3B38(&v79, v78);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v12;
  sub_21A403008(v78, v75, v73, v29);

  v30 = v81;
  v31 = &off_21A455000;
LABEL_22:
  v74 = sub_21A451084();
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28410, &qword_21A455E78);
  v41 = swift_initStackObject();
  *(v41 + 16) = *(v31 + 224);
  *(v41 + 32) = sub_21A451084();
  *(v41 + 40) = v42;
  *(v41 + 48) = sub_21A451084();
  *(v41 + 56) = v43;
  v44 = sub_21A3E509C(v41);
  swift_setDeallocating();
  sub_21A3D3BF0(v41 + 32, &qword_27CD28418, &unk_21A455E80);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28470, &qword_21A458CC0);
  *&v79 = v44;
  sub_21A3D3B38(&v79, v78);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v81 = v30;
  sub_21A403008(v78, v74, v40, v45);

  v46 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_21A455F10;
  *(v47 + 32) = sub_21A451084();
  *(v47 + 40) = v48;
  *(v47 + 48) = sub_21A451084();
  *(v47 + 56) = v49;
  *(v47 + 64) = sub_21A451084();
  *(v47 + 72) = v50;
  *(v47 + 80) = sub_21A451084();
  *(v47 + 88) = v51;
  *(v47 + 96) = sub_21A451084();
  *(v47 + 104) = v52;
  v53 = sub_21A4242FC(v47);
  swift_setDeallocating();
  v54 = MEMORY[0x277D837D0];
  swift_arrayDestroy();

  v56 = sub_21A3D5FE8(v55);
  LOBYTE(v44) = sub_21A3D85E8(v56, v53);

  if ((v44 & 1) == 0)
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v60 = sub_21A450F24();
    __swift_project_value_buffer(v60, qword_27CD28C90);

    v3 = sub_21A450F04();
    v61 = sub_21A451584();

    if (os_log_type_enabled(v3, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v79 = v63;
      *v62 = 136315394;
      v64 = sub_21A4514C4();
      v66 = v65;

      v67 = sub_21A3E2554(v64, v66, &v79);

      *(v62 + 4) = v67;
      *(v62 + 12) = 2080;
      v68 = sub_21A450F84();
      v70 = v69;

      v71 = sub_21A3E2554(v68, v70, &v79);

      *(v62 + 14) = v71;
      _os_log_impl(&dword_21A3C2000, v3, v61, "Required keys for DPConfig: %s, but got %s", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEDB220](v63, -1, -1);
      MEMORY[0x21CEDB220](v62, -1, -1);
    }

    else
    {
    }

    v15 = v77;
    sub_21A3D3C88();
    swift_allocError();
    *v72 = 17;
    swift_willThrow();
    goto LABEL_30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
  v57 = swift_initStackObject();
  *(v57 + 16) = xmmword_21A455F00;
  *(v57 + 32) = sub_21A451084();
  *(v57 + 72) = v54;
  *(v57 + 40) = v58;
  *(v57 + 48) = 3157554;
  *(v57 + 56) = 0xE300000000000000;
  *(v57 + 80) = sub_21A451084();
  *(v57 + 88) = v59;
  *(v57 + 120) = v6;
  *(v57 + 96) = v46;
  v3 = sub_21A3E4F6C(v57);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
  swift_arrayDestroy();

  return v3;
}

NSObject *sub_21A3D6A68()
{
  v2 = *(v0 + 16);
  swift_beginAccess();
  isa = v2[4].isa;
  if (!*(isa + 2))
  {
    goto LABEL_11;
  }

  v4 = sub_21A3DCA2C(0xD000000000000012, 0x800000021A45BC40);
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_21A3D3B94(*(isa + 7) + 32 * v4, &v51);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_21A3D3C88();
    swift_allocError();
    *v11 = 17;
    swift_willThrow();
    return v2;
  }

  v6 = sub_21A451084();
  if (!*(*&v50[0] + 16))
  {

LABEL_10:

    goto LABEL_11;
  }

  v8 = sub_21A3DCA2C(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_21A3D3B94(*(*&v50[0] + 56) + 32 * v8, &v51);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v53 = *&v50[0];
  sub_21A3D8F38(*&v50[0]);
  if (!v1)
  {

    v13 = sub_21A451084();
    sub_21A402EB8(v13, v14, &v51);

    sub_21A3D3BF0(&v51, &qword_27CD28468, &unk_21A455FB0);
    v15 = sub_21A451084();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28410, &qword_21A455E78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A455E00;
    *(inited + 32) = sub_21A451084();
    *(inited + 40) = v19;
    *(inited + 48) = sub_21A451084();
    *(inited + 56) = v20;
    v21 = sub_21A3E509C(inited);
    swift_setDeallocating();
    sub_21A3D3BF0(inited + 32, &qword_27CD28418, &unk_21A455E80);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28470, &qword_21A458CC0);
    *&v51 = v21;
    sub_21A3D3B38(&v51, v50);
    v22 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21A403008(v50, v15, v17, isUniquelyReferenced_nonNull_native);

    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_21A455DF0;
    *(v25 + 32) = sub_21A451084();
    *(v25 + 40) = v26;
    *(v25 + 48) = sub_21A451084();
    *(v25 + 56) = v27;
    *(v25 + 64) = sub_21A451084();
    *(v25 + 72) = v28;
    *(v25 + 80) = sub_21A451084();
    *(v25 + 88) = v29;
    v30 = sub_21A4242FC(v25);
    swift_setDeallocating();
    v31 = MEMORY[0x277D837D0];
    swift_arrayDestroy();

    v33 = sub_21A3D5FE8(v32);
    v34 = sub_21A3D85E8(v33, v30);

    if (v34)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
      v35 = swift_initStackObject();
      *(v35 + 16) = xmmword_21A455F00;
      *(v35 + 32) = sub_21A451084();
      *(v35 + 72) = v31;
      *(v35 + 40) = v36;
      *(v35 + 48) = 3157554;
      *(v35 + 56) = 0xE300000000000000;
      *(v35 + 80) = sub_21A451084();
      *(v35 + 88) = v37;
      *(v35 + 120) = v2;
      *(v35 + 96) = v24;
      v2 = sub_21A3E4F6C(v35);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
      swift_arrayDestroy();
      return v2;
    }

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v38 = sub_21A450F24();
    __swift_project_value_buffer(v38, qword_27CD28C90);

    v2 = sub_21A450F04();
    v39 = sub_21A451584();

    if (os_log_type_enabled(v2, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v51 = v41;
      *v40 = 136315394;
      v42 = sub_21A4514C4();
      v44 = v43;

      v45 = sub_21A3E2554(v42, v44, &v51);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2080;
      v46 = sub_21A450F84();
      v48 = v47;

      v49 = sub_21A3E2554(v46, v48, &v51);

      *(v40 + 14) = v49;
      _os_log_impl(&dword_21A3C2000, v2, v39, "Required keys for DPConfig: %s, but got %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEDB220](v41, -1, -1);
      MEMORY[0x21CEDB220](v40, -1, -1);
    }

    else
    {
    }

    goto LABEL_11;
  }

  return v2;
}

void sub_21A3D70C0(uint64_t a1)
{
  v3 = v1;
  v5 = sub_21A451084();
  if (!*(a1 + 16))
  {

LABEL_14:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v18 = sub_21A450F24();
    __swift_project_value_buffer(v18, qword_27CD28C90);
    v19 = sub_21A450F04();
    v20 = sub_21A451584();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_19;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Invalid value for Mechanism";
    goto LABEL_18;
  }

  v7 = sub_21A3DCA2C(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v7, v113);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (sub_21A3D8190(v111, v112))
  {

    v10 = sub_21A451084();
    if (*(a1 + 16))
    {
      sub_21A3DCA2C(v10, v11);
      v13 = v12;

      if (v13)
      {
        sub_21A3D7FAC(a1);
        if (!v2)
        {
          if (qword_27CD28170 != -1)
          {
            swift_once();
          }

          v14 = sub_21A450F24();
          __swift_project_value_buffer(v14, qword_27CD28C90);
          v15 = sub_21A450F04();
          v16 = sub_21A451574();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 0;
            _os_log_impl(&dword_21A3C2000, v15, v16, "Using None Mechanism for results.", v17, 2u);
            MEMORY[0x21CEDB220](v17, -1, -1);
          }
        }

        return;
      }
    }

    else
    {
    }

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v60 = sub_21A450F24();
    __swift_project_value_buffer(v60, qword_27CD28C90);

    v61 = sub_21A450F04();
    v62 = sub_21A451584();

    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_56;
    }

    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v113[0] = v64;
    *v63 = 136315394;
    v65 = sub_21A451084();
    v67 = sub_21A3E2554(v65, v66, v113);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2080;
    v68 = sub_21A450F84();
    v70 = sub_21A3E2554(v68, v69, v113);

    *(v63 + 14) = v70;
    _os_log_impl(&dword_21A3C2000, v61, v62, "Required keys for DPConfig: %s, but got %s", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEDB220](v64, -1, -1);
    v71 = v63;
    goto LABEL_54;
  }

  if (v111 == sub_21A451084() && v112 == v24)
  {
  }

  else
  {
    v26 = sub_21A4519B4();

    if ((v26 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A455F30;
  *(inited + 32) = sub_21A451084();
  *(inited + 40) = v28;
  *(inited + 48) = sub_21A451084();
  *(inited + 56) = v29;
  *(inited + 64) = sub_21A451084();
  *(inited + 72) = v30;
  *(inited + 80) = sub_21A451084();
  *(inited + 88) = v31;
  *(inited + 96) = sub_21A451084();
  *(inited + 104) = v32;
  *(inited + 112) = sub_21A451084();
  *(inited + 120) = v33;
  *(inited + 128) = sub_21A451084();
  *(inited + 136) = v34;
  *(inited + 144) = sub_21A451084();
  *(inited + 152) = v35;
  *(inited + 160) = sub_21A451084();
  *(inited + 168) = v36;
  v37 = sub_21A4242FC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  v39 = sub_21A3D5FE8(v38);
  v40 = sub_21A3D85E8(v39, v37);

  if ((v40 & 1) == 0)
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v72 = sub_21A450F24();
    __swift_project_value_buffer(v72, qword_27CD28C90);

    v61 = sub_21A450F04();
    v73 = sub_21A451584();

    if (!os_log_type_enabled(v61, v73))
    {

      goto LABEL_56;
    }

    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v113[0] = v75;
    *v74 = 136315394;
    v76 = sub_21A4514C4();
    v78 = v77;

    v79 = sub_21A3E2554(v76, v78, v113);

    *(v74 + 4) = v79;
    *(v74 + 12) = 2080;
    v80 = sub_21A450F84();
    v82 = sub_21A3E2554(v80, v81, v113);

    *(v74 + 14) = v82;
    _os_log_impl(&dword_21A3C2000, v61, v73, "Required keys for DPConfig: %s, but got %s", v74, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEDB220](v75, -1, -1);
    v71 = v74;
LABEL_54:
    MEMORY[0x21CEDB220](v71, -1, -1);
LABEL_56:

    goto LABEL_20;
  }

  sub_21A3D7FAC(a1);
  if (v2)
  {
    return;
  }

  v41 = sub_21A451084();
  if (!*(a1 + 16))
  {

LABEL_58:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v83 = sub_21A450F24();
    __swift_project_value_buffer(v83, qword_27CD28C90);
    v19 = sub_21A450F04();
    v20 = sub_21A451584();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_19;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Invalid value for SigmaAfterNormalizing";
    goto LABEL_18;
  }

  v43 = sub_21A3DCA2C(v41, v42);
  v45 = v44;

  if ((v45 & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v43, v113);
  sub_21A3D3CDC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_58;
  }

  [v111 doubleValue];
  v47 = v46;
  v48 = v46;

  if ((v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_58;
  }

  *(v3 + 32) = v47;
  v49 = sub_21A451084();
  if (!*(a1 + 16))
  {

LABEL_63:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v84 = sub_21A450F24();
    __swift_project_value_buffer(v84, qword_27CD28C90);
    v19 = sub_21A450F04();
    v20 = sub_21A451584();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_19;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Invalid value for MaxCohortSize";
LABEL_18:
    _os_log_impl(&dword_21A3C2000, v19, v20, v22, v21, 2u);
    MEMORY[0x21CEDB220](v21, -1, -1);
LABEL_19:

LABEL_20:
    sub_21A3D3C88();
    swift_allocError();
    *v23 = 17;
    swift_willThrow();
    return;
  }

  v51 = sub_21A3DCA2C(v49, v50);
  v53 = v52;

  if ((v53 & 1) == 0)
  {
    goto LABEL_63;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v51, v113);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_63;
  }

  if ([v111 integerValue] < 1)
  {

    goto LABEL_63;
  }

  v54 = sub_21A451084();
  if (!*(a1 + 16))
  {

    goto LABEL_69;
  }

  v56 = sub_21A3DCA2C(v54, v55);
  v58 = v57;

  if ((v58 & 1) == 0)
  {
    goto LABEL_69;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v56, v113);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_69;
  }

  if ([v111 integerValue] < 1 || (v59 = objc_msgSend(v111, sel_integerValue), objc_msgSend(v111, sel_integerValue) < v59))
  {

LABEL_69:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v85 = sub_21A450F24();
    __swift_project_value_buffer(v85, qword_27CD28C90);
    v86 = sub_21A450F04();
    v87 = sub_21A451584();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_21A3C2000, v86, v87, "Invalid value for PopulationSize", v88, 2u);
      MEMORY[0x21CEDB220](v88, -1, -1);
    }

    sub_21A3D3C88();
    swift_allocError();
    *v89 = 17;
    swift_willThrow();

    return;
  }

  v90 = sub_21A451084();
  if (!*(a1 + 16))
  {

LABEL_84:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v100 = sub_21A450F24();
    __swift_project_value_buffer(v100, qword_27CD28C90);
    v101 = sub_21A450F04();
    v102 = sub_21A451584();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_21A3C2000, v101, v102, "Invalid value for NumIterations", v103, 2u);
      MEMORY[0x21CEDB220](v103, -1, -1);
    }

    sub_21A3D3C88();
    swift_allocError();
    *v104 = 17;
    swift_willThrow();

    return;
  }

  v92 = sub_21A3DCA2C(v90, v91);
  v94 = v93;

  if ((v94 & 1) == 0)
  {
    goto LABEL_84;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v92, v113);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_84;
  }

  if ([v111 integerValue] < 1)
  {

    goto LABEL_84;
  }

  v95 = sub_21A451084();
  if (*(a1 + 16))
  {
    v97 = sub_21A3DCA2C(v95, v96);
    v99 = v98;

    if (v99)
    {
      sub_21A3D3B94(*(a1 + 56) + 32 * v97, v113);
      if (swift_dynamicCast())
      {
        if ([v111 integerValue] >= 2)
        {
          v110 = [v111 integerValue];

          if (v110 <= 32)
          {

            return;
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v105 = sub_21A450F24();
  __swift_project_value_buffer(v105, qword_27CD28C90);
  v106 = sub_21A450F04();
  v107 = sub_21A451584();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&dword_21A3C2000, v106, v107, "Invalid value for RenyiOrder", v108, 2u);
    MEMORY[0x21CEDB220](v108, -1, -1);
  }

  sub_21A3D3C88();
  swift_allocError();
  *v109 = 17;
  swift_willThrow();
}

void sub_21A3D7FAC(uint64_t a1)
{
  v3 = sub_21A451084();
  if (*(a1 + 16))
  {
    v5 = v1;
    v6 = sub_21A3DCA2C(v3, v4);
    v8 = v7;

    if (v8)
    {
      sub_21A3D3B94(*(a1 + 56) + 32 * v6, &v18);
      sub_21A3D3CDC();
      if (swift_dynamicCast())
      {
        v9 = v19;
        [v19 doubleValue];
        v11 = v10;
        v12 = v10;

        if ((v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          *(v5 + 24) = v11;
          return;
        }
      }
    }
  }

  else
  {
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v13 = sub_21A450F24();
  __swift_project_value_buffer(v13, qword_27CD28C90);
  v14 = sub_21A450F04();
  v15 = sub_21A451584();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_21A3C2000, v14, v15, "Invalid value for OverallClippingBound", v16, 2u);
    MEMORY[0x21CEDB220](v16, -1, -1);
  }

  sub_21A3D3C88();
  swift_allocError();
  *v17 = 17;
  swift_willThrow();
}

uint64_t sub_21A3D8190(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PFLTaskPreferences(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 16) + OBJC_IVAR____TtC24PrivateFederatedLearning7PFLTask_taskPreferences;
  if (*(v8 + *(v5 + 24)) != 1)
  {
    goto LABEL_10;
  }

  sub_21A3D83D8(v8, v7);
  if (v7[*(v5 + 24)] != 1)
  {
    sub_21A3D843C(v7);
    goto LABEL_10;
  }

  v9 = &v7[*(v5 + 20)];
  LOBYTE(v9) = v9[*(type metadata accessor for PFLDecodableTaskParameters(0) + 44)];
  sub_21A3D843C(v7);
  if ((v9 & 1) == 0)
  {
LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  if (sub_21A451084() == a1 && v10 == a2)
  {

    v12 = 1;
  }

  else
  {
    v12 = sub_21A4519B4();
  }

  return v12 & 1;
}

uint64_t sub_21A3D82DC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21A3D83D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PFLTaskPreferences(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A3D843C(uint64_t a1)
{
  v2 = type metadata accessor for PFLTaskPreferences(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A3D8498(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21A451B04();
  sub_21A451144();
  v8 = sub_21A451B24();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21A4519B4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_21A3D8A24(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21A3D85E8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v21 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v21 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v21);
          ++v11;
        }

        while (!v7);
        v11 = v21;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      sub_21A451B04();

      sub_21A451144();
      v15 = sub_21A451B24();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = ~v16;
      while (1)
      {
        v19 = (*(a1 + 48) + 16 * v17);
        v20 = *v19 == v14 && v19[1] == v13;
        if (v20 || (sub_21A4519B4() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

uint64_t sub_21A3D87C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28460, &unk_21A455FA0);
  result = sub_21A4516F4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_21A451B04();
      sub_21A451144();
      result = sub_21A451B24();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21A3D8A24(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21A3D87C4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21A3D8BA4();
      goto LABEL_16;
    }

    sub_21A3D8D00(v8 + 1);
  }

  v10 = *v4;
  sub_21A451B04();
  sub_21A451144();
  result = sub_21A451B24();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21A4519B4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21A451A84();
  __break(1u);
  return result;
}

void *sub_21A3D8BA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28460, &unk_21A455FA0);
  v2 = *v0;
  v3 = sub_21A4516E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_21A3D8D00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28460, &unk_21A455FA0);
  result = sub_21A4516F4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_21A451B04();

      sub_21A451144();
      result = sub_21A451B24();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21A3D8F38(uint64_t a1)
{
  v2 = sub_21A451084();
  if (!*(a1 + 16))
  {

LABEL_8:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v8 = sub_21A450F24();
    __swift_project_value_buffer(v8, qword_27CD28C90);
    v9 = sub_21A450F04();
    v10 = sub_21A451584();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21A3C2000, v9, v10, "Invalid version for DediscoV2, expect 2.0", v11, 2u);
      MEMORY[0x21CEDB220](v11, -1, -1);
    }

    sub_21A3D3C88();
    swift_allocError();
    *v12 = 17;
    return swift_willThrow();
  }

  v4 = sub_21A3DCA2C(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v4, v16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v14 == 3157554 && v15 == 0xE300000000000000)
  {
  }

  v13 = sub_21A4519B4();

  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_21A3D9128(uint64_t a1)
{
  v2 = sub_21A451084();
  if (*(a1 + 16))
  {
    v4 = sub_21A3DCA2C(v2, v3);
    v6 = v5;

    if (v6)
    {
      sub_21A3D3B94(*(a1 + 56) + 32 * v4, v25);
      sub_21A3D3CDC();
      if (swift_dynamicCast())
      {
        [v24 doubleValue];
        if (v7 > 0.0)
        {
          v8 = sub_21A451084();
          if (*(a1 + 16))
          {
            v10 = sub_21A3DCA2C(v8, v9);
            v12 = v11;

            if (v12)
            {
              sub_21A3D3B94(*(a1 + 56) + 32 * v10, v25);
              if (swift_dynamicCast())
              {
                v13 = [v24 integerValue];

                if (v13 > 0)
                {
LABEL_23:

                  return;
                }
              }
            }
          }

          else
          {
          }

          if (qword_27CD28170 != -1)
          {
            swift_once();
          }

          v19 = sub_21A450F24();
          __swift_project_value_buffer(v19, qword_27CD28C90);
          v20 = sub_21A450F04();
          v21 = sub_21A451584();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 0;
            _os_log_impl(&dword_21A3C2000, v20, v21, "Invalid value for FractionalBitCount", v22, 2u);
            MEMORY[0x21CEDB220](v22, -1, -1);
          }

          sub_21A3D3C88();
          swift_allocError();
          *v23 = 17;
          swift_willThrow();
          goto LABEL_23;
        }
      }
    }
  }

  else
  {
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v14 = sub_21A450F24();
  __swift_project_value_buffer(v14, qword_27CD28C90);
  v15 = sub_21A450F04();
  v16 = sub_21A451584();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21A3C2000, v15, v16, "Invalid value for L2NormBoundWithNoise", v17, 2u);
    MEMORY[0x21CEDB220](v17, -1, -1);
  }

  sub_21A3D3C88();
  swift_allocError();
  *v18 = 17;
  swift_willThrow();
}

uint64_t sub_21A3D9470(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A455DF0;
  *(inited + 32) = sub_21A451084();
  *(inited + 40) = v4;
  *(inited + 48) = sub_21A451084();
  *(inited + 56) = v5;
  *(inited + 64) = sub_21A451084();
  *(inited + 72) = v6;
  *(inited + 80) = sub_21A451084();
  *(inited + 88) = v7;
  v8 = sub_21A4242FC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  v10 = sub_21A3D5FE8(v9);

  v11 = sub_21A3D85E8(v10, v8);

  if ((v11 & 1) == 0)
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v36 = sub_21A450F24();
    __swift_project_value_buffer(v36, qword_27CD28C90);

    v37 = sub_21A450F04();
    v38 = sub_21A451584();

    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_17;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v76[0] = v40;
    *v39 = 136315394;

    v41 = sub_21A4514C4();
    v43 = v42;

    v44 = sub_21A3E2554(v41, v43, v76);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2080;
    v45 = sub_21A450F84();
    v47 = sub_21A3E2554(v45, v46, v76);

    *(v39 + 14) = v47;
    _os_log_impl(&dword_21A3C2000, v37, v38, "Required keys for DPConfig: %s, but got %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEDB220](v40, -1, -1);
    v48 = v39;
    goto LABEL_16;
  }

  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_21A455F00;
  *(v12 + 32) = sub_21A451084();
  *(v12 + 40) = v13;
  *(v12 + 48) = sub_21A451084();
  *(v12 + 56) = v14;
  v15 = sub_21A4242FC(v12);
  swift_setDeallocating();
  swift_arrayDestroy();

  v16 = sub_21A451084();
  if (!*(a1 + 16))
  {

LABEL_20:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v50 = sub_21A450F24();
    __swift_project_value_buffer(v50, qword_27CD28C90);
    v51 = sub_21A450F04();
    v52 = sub_21A451584();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v76[0] = v54;
      *v53 = 136315138;

      v55 = sub_21A4514C4();
      v57 = v56;

      v58 = sub_21A3E2554(v55, v57, v76);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_21A3C2000, v51, v52, "Invalid keys for DediscoServerConfiguration, expect %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x21CEDB220](v54, -1, -1);
      MEMORY[0x21CEDB220](v53, -1, -1);
    }

    sub_21A3D3C88();
    swift_allocError();
    *v59 = 17;
    swift_willThrow();
  }

  v18 = sub_21A3DCA2C(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v18, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v21 = sub_21A3D5FE8(v77);

  v22 = sub_21A3D85E8(v21, v15);

  if ((v22 & 1) == 0)
  {
    goto LABEL_20;
  }

  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_21A455F00;
  *(v23 + 32) = sub_21A451084();
  *(v23 + 40) = v24;
  *(v23 + 48) = sub_21A451084();
  *(v23 + 56) = v25;
  v26 = sub_21A4242FC(v23);
  swift_setDeallocating();
  swift_arrayDestroy();

  v27 = sub_21A451084();
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  v29 = sub_21A3DCA2C(v27, v28);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v29, v76);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v32 = v77;

  v34 = sub_21A3D5FE8(v33);

  v35 = sub_21A3D85E8(v34, v26);

  if ((v35 & 1) == 0)
  {
LABEL_26:

LABEL_27:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v61 = sub_21A450F24();
    __swift_project_value_buffer(v61, qword_27CD28C90);
    v37 = sub_21A450F04();
    v62 = sub_21A451584();
    if (!os_log_type_enabled(v37, v62))
    {
      goto LABEL_17;
    }

    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v76[0] = v64;
    *v63 = 136315138;

    v65 = sub_21A4514C4();
    v67 = v66;

    v68 = sub_21A3E2554(v65, v67, v76);

    *(v63 + 4) = v68;
    _os_log_impl(&dword_21A3C2000, v37, v62, "Invalid keys for VDAFConfig: expect %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x21CEDB220](v64, -1, -1);
    v48 = v63;
LABEL_16:
    MEMORY[0x21CEDB220](v48, -1, -1);
LABEL_17:

LABEL_18:
    sub_21A3D3C88();
    swift_allocError();
    *v49 = 17;
    swift_willThrow();
  }

  sub_21A3D9128(v32);
  if (v1)
  {
  }

  v69 = sub_21A451084();
  if (!*(a1 + 16))
  {

    goto LABEL_18;
  }

  v71 = sub_21A3DCA2C(v69, v70);
  v73 = v72;

  if ((v73 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v71, v76);
  sub_21A3D3CDC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v74 = v77;
  v75 = [v77 integerValue];

  if (v75 <= 0)
  {
    goto LABEL_18;
  }
}

uint64_t sub_21A3D9D50(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CED9BE0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_21A3D8498(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t Data.toArray<A>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21A4513B4();
  sub_21A450C44();
  return v4;
}

uint64_t sub_21A3D9E60@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (!result)
  {
    goto LABEL_5;
  }

  v5 = *(*(a3 - 8) + 72);
  if (v5)
  {
    if (a2 - result != 0x8000000000000000 || v5 != -1)
    {
LABEL_5:
      sub_21A451034();
      swift_getWitnessTable();
      result = sub_21A4513C4();
      *a4 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Data.toUnsafeBufferPointer<A>()(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v4 = 0;
    if (v3 != 2)
    {
      goto LABEL_10;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v4 = v5 - v6;
    if (!v7)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v4 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v4) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_16;
  }

  v4 = v4;
LABEL_10:
  v8 = *(*(a3 - 8) + 72);
  if (v8)
  {
    if (v4 != 0x8000000000000000 || v8 != -1)
    {
      MEMORY[0x28223BE20](result);
      sub_21A451034();
      sub_21A450C44();
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_21A3DA070@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (!result)
  {
    goto LABEL_5;
  }

  v6 = *(*(a4 - 8) + 72);
  if (v6)
  {
    if (a2 - result != 0x8000000000000000 || v6 != -1)
    {
LABEL_5:
      sub_21A451014();
      result = sub_21A451024();
      *a5 = result;
      a5[1] = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21A3DA16C(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    v6 = 0;
    return a3(result, v6);
  }

  v5 = *(*(a5 - 8) + 72);
  if (v5)
  {
    if (a2 - result != 0x8000000000000000 || v5 != -1)
    {
      v6 = (a2 - result) / v5;
      return a3(result, v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array.toData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a2;
  sub_21A3DA2A0(sub_21A3DA26C, v9, a1, a2, MEMORY[0x277CC9318], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], a8);
  return v9[4];
}

uint64_t sub_21A3DA26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MEMORY[0x21CED93A0](a1, a2, *(v3 + 16));
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_21A3DA2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21A3DA4DC(v12, v15, v16, v17, v18, v19, v20, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a6);
  }

  return result;
}

uint64_t Array.toData(noCopy:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 & 1) == 0)
  {
    return Array.toData()(a2, a3, a2, a3, a5, a6, a7, a8);
  }

  sub_21A451304();
  return v9;
}

uint64_t sub_21A3DA3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_21A450C24();
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v7 + 104))(v9, *MEMORY[0x277CC92A8]);
    result = sub_21A439E78(a1, a2 - a1, v9);
  }

  else
  {
    result = 0;
    v11 = 0xC000000000000000;
  }

  *a3 = result;
  a3[1] = v11;
  return result;
}

uint64_t sub_21A3DA4DC(uint64_t (*a1)(unint64_t, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a8;
  v28 = a2;
  v29 = a1;
  v13 = *(a6 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    v25 = v30;
    result = sub_21A3DA728(v29, v28, a3, a4, a5, a6, a7, v18);
    v16 = v18;
    if (v25)
    {
      return (*(v13 + 32))(v27, v16, a6);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType())
    {
      v19 = ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v19 = a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80));
    }

    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      sub_21A411734(a3);
      v22 = sub_21A451844();
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v21 = a3 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v21 = a3;
      }

      v22 = *(v21 + 16);
    }

    v23 = v30;
    result = v29(v19, v22, v16);
    if (v23)
    {
      return (*(v13 + 32))(v27, v16, a6);
    }
  }

  return result;
}

uint64_t sub_21A3DA728(uint64_t (*a1)(unint64_t, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v11 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21A3DA880(v14, v15);
  v17 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v18 = v16[2];

  v19 = v23;
  result = a1(v16 + v17, v18, v13);
  if (v19)
  {
    return (*(v11 + 32))(v22, v13, a6);
  }

  return result;
}

void *sub_21A3DA880(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      sub_21A4517B4();
      swift_getWitnessTable();
      v4 = sub_21A451A54();

      objc_setAssociatedObject(v2, MEMORY[0x277D84F90], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t DType.hashValue.getter()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1);
  return sub_21A451B24();
}

uint64_t sub_21A3DAA18()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1);
  return sub_21A451B24();
}

uint64_t sub_21A3DAA8C(uint64_t a1)
{
  v2 = *v1;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v2);
  return sub_21A451B24();
}

unint64_t sub_21A3DAAD4()
{
  result = qword_27CD28490;
  if (!qword_27CD28490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28490);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A3DAC88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  if (v1 <= 0xE)
  {
    return sub_21A3DBEF8((a1 + 32), (a1 + 32 + v1));
  }

  sub_21A450A44();
  swift_allocObject();
  sub_21A4509E4();
  if (v1 < 0x7FFFFFFF)
  {
    return v1 << 32;
  }

  sub_21A450C34();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v1;
  return result;
}

void *sub_21A3DAD38(void *result)
{
  v1 = result[2];
  if (v1 >> 61)
  {
    __break(1u);
  }

  else
  {
    v2 = 4 * v1;
    if (4 * v1)
    {
      if (v2 <= 14)
      {
        return sub_21A3DBEF8(result + 32, result + v2 + 32);
      }

      else
      {
        sub_21A450A44();
        swift_allocObject();
        sub_21A4509E4();
        if (v2 >= 0x7FFFFFFF)
        {
          sub_21A450C34();
          result = swift_allocObject();
          result[2] = 0;
          result[3] = v2;
        }

        else
        {
          return (v1 << 34);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21A3DAE00(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    v4 = sub_21A3DCA2C(0x65676E6172, 0xE500000000000000);
    if (v5)
    {
      sub_21A3D3B94(*(a1 + 56) + 32 * v4, v22);
      sub_21A3D3CDC();
      if (swift_dynamicCast())
      {
        v6 = v23;
        if (*(a1 + 16))
        {
          v7 = sub_21A3DCA2C(0x736D657469, 0xE500000000000000);
          if (v8)
          {
            sub_21A3D3B94(*(a1 + 56) + 32 * v7, v22);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A8, &unk_21A458EE0);
            if (swift_dynamicCast())
            {
              v9 = v23[2];

              if (v9)
              {
                *(v2 + 24) = a1;
                v10 = [v6 BOOLValue];

                *(v2 + 16) = v10;
                return v2;
              }
            }
          }
        }
      }
    }
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v11 = sub_21A450F24();
  __swift_project_value_buffer(v11, qword_27CD28C90);

  v12 = sub_21A450F04();
  v13 = sub_21A451584();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22[0] = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_21A3E2554(0x65676E6172, 0xE500000000000000, v22);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_21A3E2554(0x736D657469, 0xE500000000000000, v22);
    *(v14 + 22) = 2080;
    v16 = sub_21A450F74();
    v18 = v17;

    v19 = sub_21A3E2554(v16, v18, v22);

    *(v14 + 24) = v19;
    _os_log_impl(&dword_21A3C2000, v12, v13, "%s or %s not found in %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CEDB220](v15, -1, -1);
    MEMORY[0x21CEDB220](v14, -1, -1);
  }

  else
  {
  }

  sub_21A3D3C88();
  swift_allocError();
  *v20 = 2;
  swift_willThrow();
  type metadata accessor for DediscoCategoricalMetadataEncoder();
  swift_deallocPartialClassInstance();
  return v2;
}

unint64_t sub_21A3DB140(uint64_t a1, uint64_t a2, size_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (a3)
  {
    v3 = sub_21A451344();
    *(v3 + 16) = a3;
    bzero((v3 + 32), a3);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v8 = *(v4 + 24);
  if (!*(v8 + 16))
  {
LABEL_12:
    if (qword_27CD28170 == -1)
    {
LABEL_13:
      v13 = sub_21A450F24();
      __swift_project_value_buffer(v13, qword_27CD28C90);
      v14 = sub_21A450F04();
      v15 = sub_21A451584();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_21A3C2000, v14, v15, "Failed to find categorical items, return all false", v16, 2u);
        MEMORY[0x21CEDB220](v16, -1, -1);
      }

      goto LABEL_16;
    }

LABEL_18:
    swift_once();
    goto LABEL_13;
  }

  v9 = sub_21A3DCA2C(0x736D657469, 0xE500000000000000);
  if ((v10 & 1) == 0)
  {

    goto LABEL_12;
  }

  sub_21A3D3B94(*(v8 + 56) + 32 * v9, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v11 = sub_21A3DBFB0(a1, a2, v18, a3);

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v3 + 16))
  {
    *(v3 + v11 + 32) = 1;
LABEL_16:
    v17 = sub_21A3DAC88(v3);

    return v17;
  }

  __break(1u);
  return result;
}

unint64_t sub_21A3DB360(size_t a1, float a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a1;
    v7 = a2;
    v6 = MEMORY[0x277D84F90];
    if (a1)
    {
      v2 = sub_21A451344();
      *(v2 + 16) = v4;
      bzero((v2 + 32), v4);
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    if ((~LODWORD(v7) & 0x7F800000) == 0 && (LODWORD(v7) & 0x7FFFFF) != 0)
    {
      goto LABEL_43;
    }

    v8 = *(v3 + 24);
    if (!*(v8 + 16))
    {
      goto LABEL_43;
    }

    v9 = sub_21A3DCA2C(0x736D657469, 0xE500000000000000);
    if ((v10 & 1) == 0)
    {
      goto LABEL_42;
    }

    sub_21A3D3B94(*(v8 + 56) + 32 * v9, v35);

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_43:
      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v29 = sub_21A450F24();
      __swift_project_value_buffer(v29, qword_27CD28C90);
      v30 = sub_21A450F04();
      v31 = sub_21A451584();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_21A3C2000, v30, v31, "Failed to find categorical items or contains NaN, return all false", v32, 2u);
        MEMORY[0x21CEDB220](v32, -1, -1);
      }

      goto LABEL_48;
    }

    v5 = v34;
    if (!(v34 >> 62))
    {
      v11 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_12;
      }

LABEL_24:

      v14 = MEMORY[0x277D84F90];
      v21 = *(MEMORY[0x277D84F90] + 16);
      if (!v21)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }
  }

  v11 = sub_21A451844();
  if (!v11)
  {
    goto LABEL_24;
  }

LABEL_12:
  v35[0] = v6;
  result = sub_21A3E48BC(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    goto LABEL_51;
  }

  v13 = 0;
  v14 = v35[0];
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x21CED9EA0](v13, v5);
    }

    else
    {
      v15 = *(v5 + 8 * v13 + 32);
    }

    v16 = v15;
    [v15 floatValue];
    v18 = v17;

    v35[0] = v14;
    v20 = *(v14 + 16);
    v19 = *(v14 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_21A3E48BC((v19 > 1), v20 + 1, 1);
      v14 = v35[0];
    }

    ++v13;
    *(v14 + 16) = v20 + 1;
    *(v14 + 4 * v20 + 32) = v18;
  }

  while (v11 != v13);

  v21 = *(v14 + 16);
  if (v21)
  {
LABEL_25:
    v22 = 0;
    while (1)
    {
      v23 = *(v14 + 4 * v22 + 32);
      v24 = ~v23 & 0x7F800000;
      v25 = v23 & 0x7FFFFF;
      if (!v24 && v25 != 0)
      {
        break;
      }

      if (v21 == ++v22)
      {
        v27 = 0;
        while (vabds_f32(*(v14 + 32 + 4 * v27), v7) > 0.00000011921)
        {
          if (v21 == ++v27)
          {
            goto LABEL_35;
          }
        }

        goto LABEL_36;
      }
    }

LABEL_42:

    goto LABEL_43;
  }

LABEL_35:
  v27 = -1;
LABEL_36:

  if (v27 < (v4 - 1))
  {
    v28 = v27 + 1;
  }

  else
  {
    v28 = 0;
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v28 < *(v2 + 16))
  {
    *(v2 + v28 + 32) = 1;
LABEL_48:
    v33 = sub_21A3DAC88(v2);

    return v33;
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

unint64_t sub_21A3DB70C(uint64_t a1, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a2)
  {
    v2 = sub_21A451344();
    *(v2 + 16) = a2;
    bzero((v2 + 32), a2);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v6 = *(v3 + 24);
  if (*(v6 + 16))
  {

    v7 = sub_21A3DCA2C(0x736D657469, 0xE500000000000000);
    if (v8)
    {
      sub_21A3D3B94(*(v6 + 56) + 32 * v7, v28);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
      if (swift_dynamicCast())
      {
        v9 = *(a1 + 16);
        if (!v9)
        {
LABEL_24:

          goto LABEL_30;
        }

        v10 = 0;
        v25 = a2 - 1;
        v26 = a1 + 32;
        v11 = *(v27 + 16);
        while (1)
        {
          if (v11)
          {
            v12 = 0;
            v13 = (v26 + 16 * v10);
            v14 = *v13;
            v15 = v13[1];
            v16 = (v27 + 40);
            while (1)
            {
              v17 = *(v16 - 1) == v14 && *v16 == v15;
              if (v17 || (sub_21A4519B4() & 1) != 0)
              {
                break;
              }

              ++v12;
              v16 += 2;
              if (v11 == v12)
              {
                goto LABEL_18;
              }
            }

            v18 = v12 < v25 ? v12 + 1 : 0;
          }

          else
          {
LABEL_18:
            v18 = 0;
          }

          if (v18 >= *(v2 + 16))
          {
            break;
          }

          ++v10;
          *(v2 + 32 + v18) = 1;
          if (v10 == v9)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_32;
      }
    }

    else
    {
    }
  }

  if (qword_27CD28170 != -1)
  {
LABEL_33:
    swift_once();
  }

  v19 = sub_21A450F24();
  __swift_project_value_buffer(v19, qword_27CD28C90);
  v20 = sub_21A450F04();
  v21 = sub_21A451584();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_21A3C2000, v20, v21, "Failed to find categorical items, return all false", v22, 2u);
    MEMORY[0x21CEDB220](v22, -1, -1);
  }

LABEL_30:
  v23 = sub_21A3DAC88(v2);

  return v23;
}

char *sub_21A3DB9AC(uint64_t a1, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v4 = a2;
  v5 = a1;
  v7 = MEMORY[0x277D84F90];
  if (!a2)
  {
    v2 = MEMORY[0x277D84F90];
    v8 = *(a1 + 16);
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_6:
    v9 = (v5 + 32);
    while (1)
    {
      v10 = *v9++;
      v11 = v10 & 0x7FFFFF;
      if ((~v10 & 0x7F800000) == 0 && v11 != 0)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_13;
      }
    }

LABEL_54:
    if (qword_27CD28170 != -1)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

  v2 = sub_21A451344();
  *(v2 + 16) = v4;
  bzero((v2 + 32), v4);
  v8 = *(v5 + 16);
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_13:
  v13 = *(v3 + 24);
  if (!*(v13 + 16))
  {
    goto LABEL_54;
  }

  v14 = sub_21A3DCA2C(0x736D657469, 0xE500000000000000);
  if ((v15 & 1) == 0)
  {
    goto LABEL_53;
  }

  sub_21A3D3B94(*(v13 + 56) + 32 * v14, v44);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_54;
  }

  v6 = v43;
  if (!(v43 >> 62))
  {
    v16 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  v16 = sub_21A451844();
  if (v16)
  {
LABEL_18:
    v42 = v5;
    v44[0] = v7;
    result = sub_21A3E48BC(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      return result;
    }

    v18 = 0;
    v19 = v44[0];
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x21CED9EA0](v18, v6);
      }

      else
      {
        v20 = *(v6 + 8 * v18 + 32);
      }

      v21 = v20;
      [v20 floatValue];
      v23 = v22;

      v44[0] = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21A3E48BC((v24 > 1), v25 + 1, 1);
        v19 = v44[0];
      }

      ++v18;
      *(v19 + 16) = v25 + 1;
      *(v19 + 4 * v25 + 32) = v23;
    }

    while (v16 != v18);

    v5 = v42;
    v26 = *(v19 + 16);
    if (!v26)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }

LABEL_30:

  v19 = MEMORY[0x277D84F90];
  v26 = *(MEMORY[0x277D84F90] + 16);
  if (v26)
  {
LABEL_31:
    v27 = 32;
    v28 = v26;
    while (1)
    {
      v29 = *(v19 + v27);
      v30 = ~v29 & 0x7F800000;
      v31 = v29 & 0x7FFFFF;
      if (!v30 && v31 != 0)
      {
        break;
      }

      v27 += 4;
      if (!--v28)
      {
        goto LABEL_38;
      }
    }

LABEL_53:

    goto LABEL_54;
  }

LABEL_38:
  v33 = *(v5 + 16);
  if (!v33)
  {
LABEL_52:

    goto LABEL_58;
  }

  v34 = 0;
  while (v26)
  {
    v35 = 0;
    while (vabds_f32(*(v19 + 32 + 4 * v35), *(v5 + 32 + 4 * v34)) > 0.00000011921)
    {
      if (v26 == ++v35)
      {
        goto LABEL_44;
      }
    }

    if (v35 < (v4 - 1))
    {
      goto LABEL_47;
    }

LABEL_49:
    v36 = 0;
LABEL_50:
    if (v36 >= *(v2 + 16))
    {
      goto LABEL_60;
    }

    ++v34;
    *(v2 + 32 + v36) = 1;
    if (v34 == v33)
    {
      goto LABEL_52;
    }
  }

LABEL_44:
  if (!v4)
  {
    goto LABEL_49;
  }

  v35 = -1;
LABEL_47:
  if (v35 >= -1)
  {
    v36 = v35 + 1;
    goto LABEL_50;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  swift_once();
LABEL_55:
  v37 = sub_21A450F24();
  __swift_project_value_buffer(v37, qword_27CD28C90);
  v38 = sub_21A450F04();
  v39 = sub_21A451584();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_21A3C2000, v38, v39, "Failed to find categorical items or contains NaN, return all false", v40, 2u);
    MEMORY[0x21CEDB220](v40, -1, -1);
  }

LABEL_58:
  v41 = sub_21A3DAC88(v2);

  return v41;
}

uint64_t sub_21A3DBDBC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_21A3DBEA8(size_t a1)
{
  v1 = sub_21A413204(0, a1);
  v2 = sub_21A3DAC88(v1);

  return v2;
}

uint64_t sub_21A3DBEF8(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_21A3DBFB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = result;
    v8 = 0;
    v9 = (a3 + 40);
    while (1)
    {
      result = *(v9 - 1);
      if (result == v7 && *v9 == a2)
      {
        break;
      }

      result = sub_21A4519B4();
      if (result)
      {
        break;
      }

      ++v8;
      v9 += 2;
      if (v5 == v8)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v8 = -1;
  }

  if (__OFSUB__(a4, 1))
  {
    __break(1u);
  }

  else if (v8 < a4 - 1)
  {
    return v8 + 1;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t static E5Utils.calculateModelUpdates<A>(weightNames:initialWeights:updatedWeights:weightNameSuffix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a4;
  v64 = a5;
  v10 = a1;
  v58 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v53 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v12;
  v52 = *(v12 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50[1] = v50 - v13;
  v14 = *(v10 + 16);
  v54 = v10;
  v15 = (v10 + 40);
  v62 = v14;
  v16 = v14 + 1;
  while (--v16)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_19;
    }

    v17 = *(v15 - 1);
    v10 = *v15;

    sub_21A3DCA2C(v17, v10);
    if ((v18 & 1) == 0)
    {
      goto LABEL_18;
    }

    v68 = v17;
    v69 = v10;

    MEMORY[0x21CED98B0](v63, v64);
    if (!*(a3 + 16))
    {

LABEL_18:

LABEL_19:
      sub_21A3DCAA4();
      swift_allocError();
      *v31 = 44;
      swift_willThrow();
      return v10;
    }

    v15 += 2;
    sub_21A3DCA2C(v68, v69);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v50[0] = v6;
  v59 = a6;
  v21 = sub_21A4513B4();
  v70 = sub_21A450F34();
  v10 = v62;
  v57 = v21;
  if (!v62)
  {
    v60 = 0;
LABEL_22:
    v32 = v59;
    swift_getAssociatedConformanceWitness();
    sub_21A451A64();
    v33 = v53;
    sub_21A451994();
    v10 = sub_21A3DCD0C(v33, v60, v32);
    (*(v58 + 8))(v33, v32);
    v66 = v10;
    v67 = 0;
    v34 = v50[0];
    v35 = v62;
    if (v62)
    {
      v36 = 0;
      v37 = (v54 + 40);
      while (1)
      {
        v62 = v35;
        v10 = *v37;
        v38 = v70;
        v68 = *(v37 - 1);
        v69 = v10;

        sub_21A450FA4();

        v39 = v65;
        if (!v65)
        {

          sub_21A3DCAF8();
          swift_allocError();
          *v49 = 5;
          swift_willThrow();
          goto LABEL_35;
        }

        v64 = v38;
        v40 = v59;
        v41 = sub_21A451374();
        sub_21A451324();
        v42 = v66;
        v43 = (_swift_isClassOrObjCExistentialType() & 1) != 0 ? v42 & 0xFFFFFFFFFFFFFF8 : v42;
        v44 = *(v43 + 16);
        v45 = (_swift_isClassOrObjCExistentialType() & 1) != 0 ? v42 & 0xFFFFFFFFFFFFFF8 : v42;
        v46 = v45 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
        v68 = v46;
        v69 = v44;
        sub_21A3DC724(&v68, v39, &v67, v41, v40, v61, &v65);
        if (v34)
        {
          break;
        }

        v34 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
        sub_21A3DC9D4(&v68, v46, v44, &v66, v40);

        v47 = __OFADD__(v36, v41);
        v36 += v41;
        if (v47)
        {
          goto LABEL_43;
        }

        v67 = v36;
        v37 += 2;
        v35 = v62 - 1;
        if (v62 == 1)
        {
          v10 = v66;
          goto LABEL_35;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
      sub_21A3DC9D4(&v68, v46, v44, &v66, v40);
      v10 = v66;
    }

LABEL_35:

    return v10;
  }

  v60 = 0;
  v22 = (v54 + 40);
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_39;
    }

    v23 = *(v22 - 1);
    v24 = *v22;

    sub_21A3DCA2C(v23, v24);
    if ((v25 & 1) == 0)
    {
      goto LABEL_38;
    }

    v68 = v23;
    v69 = v24;

    MEMORY[0x21CED98B0](v63, v64);
    if (!*(a3 + 16))
    {

LABEL_37:

LABEL_38:

LABEL_39:
      sub_21A3DCAF8();
      swift_allocError();
      *v48 = 5;
      swift_willThrow();
      goto LABEL_35;
    }

    v56 = v23;
    sub_21A3DCA2C(v68, v69);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      goto LABEL_37;
    }

    v55 = v22;

    v28 = v59;
    v29 = sub_21A4397E8(v59, v59);
    result = sub_21A451374();
    if (__OFADD__(v60, result))
    {
      break;
    }

    v60 += result;
    v66 = sub_21A4397E8(v28, v28);
    static PFLUtils.inplaceSub<A>(_:_:)(&v66, v29, v28, v61);

    v65 = v66;
    v68 = v56;
    v69 = v24;
    sub_21A450F94();
    sub_21A450FB4();

    v22 = v55 + 2;
    if (!--v10)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_21A3DC724(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v13 = sub_21A451614();
  if (!v13)
  {
    sub_21A3DCAF8();
    v17 = swift_allocError();
    *v18 = 0;
    result = swift_willThrow();
    *a7 = v17;
    return result;
  }

  v14 = v13;
  v15 = *a3;

  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a2 < 0 || (a2 & 0x4000000000000000) != 0))
  {
    if (sub_21A451374())
    {
      sub_21A4517B4();
      swift_getWitnessTable();
      v20 = sub_21A4513C4();
      nullsub_1();
      swift_unknownObjectRetain();
      v16 = MEMORY[0x21CEDA060](v20, a5);

      goto LABEL_14;
    }

    v16 = 0;
  }

  else
  {

    if (_swift_isClassOrObjCExistentialType())
    {
      v16 = ((*(*(a5 - 8) + 80) + 32) & ~*(*(a5 - 8) + 80)) + (a2 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v16 = a2 + ((*(*(a5 - 8) + 80) + 32) & ~*(*(a5 - 8) + 80));
    }
  }

  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a2 < 0 || (a2 & 0x4000000000000000) != 0))
  {
    sub_21A411734(a2);
    swift_unknownObjectRetain();
    if (v16)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  _swift_isClassOrObjCExistentialType();

  if (!v16)
  {
LABEL_13:
    v16 = (~*(*(a5 - 8) + 80) | 0xFFFFFF00);
  }

LABEL_14:
  static PFLUtils.copy<A>(from:to:count:)(v16, v14 + *(*(a5 - 8) + 72) * v15, a4, a5, a6);
  return swift_unknownObjectRelease();
}

void sub_21A3DC9D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1)
  {
    if (*a1 == a2)
    {
      if (a1[1] == a3)
      {
        sub_21A4513B4();
        nullsub_1();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t sub_21A3DCA2C(uint64_t a1, uint64_t a2)
{
  sub_21A451B04();
  sub_21A451144();
  v4 = sub_21A451B24();

  return sub_21A3DCB90(a1, a2, v4);
}

unint64_t sub_21A3DCAA4()
{
  result = qword_27CD28CB0;
  if (!qword_27CD28CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28CB0);
  }

  return result;
}

unint64_t sub_21A3DCAF8()
{
  result = qword_27CD28CD0;
  if (!qword_27CD28CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28CD0);
  }

  return result;
}

unint64_t sub_21A3DCB4C(uint64_t a1)
{
  v2 = sub_21A4515D4();

  return sub_21A3DCC48(a1, v2);
}

unint64_t sub_21A3DCB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21A4519B4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21A3DCC48(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_21A3DCF08();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21A4515E4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_21A3DCD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A451334();
  v14 = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = v7;
      v9 = *(a3 - 8);
      v10 = *(v9 + 16);
      v10(v7, a1, a3);
      v11 = a2 - 1;
      if (v11)
      {
        v12 = *(v9 + 72);
        v13 = v8 + v12;
        do
        {
          v10(v13, a1, a3);
          v13 += v12;
          --v11;
        }

        while (v11);
      }
    }

    sub_21A4513B4();
    nullsub_1();
    return v14;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for E5Utils(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for E5Utils(_WORD *result, int a2, int a3)
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

unint64_t sub_21A3DCF08()
{
  result = qword_27CD284B8;
  if (!qword_27CD284B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD284B8);
  }

  return result;
}

uint64_t sub_21A3DCF54(uint64_t result)
{
  if (result)
  {
    v1 = result;
    EspressoError.init(rawValue:)(result + 9150);
    v2 = v8;
    if (v8 == 48)
    {
      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v3 = sub_21A450F24();
      __swift_project_value_buffer(v3, qword_27CD28C90);
      v4 = sub_21A450F04();
      v5 = sub_21A451584();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 67109120;
        *(v6 + 4) = v1;
        _os_log_impl(&dword_21A3C2000, v4, v5, "Unknown E5 code: %u", v6, 8u);
        MEMORY[0x21CEDB220](v6, -1, -1);
      }

      v2 = 27;
    }

    sub_21A3DCAA4();
    swift_allocError();
    *v7 = v2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21A3DD0F4(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v7 = MEMORY[0x277D84F90];
    if (result)
    {
      v13 = MEMORY[0x277D84F90];
      sub_21A3E48FC(0, result, 0);
      v7 = v13;
      v8 = *(v13 + 16);
      v9 = v6;
      do
      {
        v10 = *(v13 + 24);
        if (v8 >= v10 >> 1)
        {
          sub_21A3E48FC((v10 > 1), v8 + 1, 1);
        }

        *(v13 + 16) = v8 + 1;
        *(v13 + 8 * v8++ + 32) = 0;
        --v9;
      }

      while (v9);
    }

    v11 = *(a2 + 40);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_21A408AA4(0, *(v7 + 2), 0, v7);
    }

    v12 = a3(v11, v6, (v7 + 32));
    sub_21A3DCF54(v12);
    if (v3)
    {
    }

    return v7;
  }

  return result;
}

void *EspressoE5Trainer.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  v2[4] = 1;
  v2[5] = v3;
  v2[6] = v3;
  v2[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284C0, &qword_21A456150);
  swift_allocObject();
  v2[3] = sub_21A3DE548(0x676E696E7261656CLL, 0xEF305F657461725FLL, 1953066601, 0xE400000000000000);
  return v2;
}

void *EspressoE5Trainer.init(_:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v1[4] = 1;
  v1[5] = v2;
  v1[6] = v2;
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284C0, &qword_21A456150);
  swift_allocObject();
  v1[3] = sub_21A3DE548(0x676E696E7261656CLL, 0xEF305F657461725FLL, 1953066601, 0xE400000000000000);
  return v1;
}

uint64_t sub_21A3DD368(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a3;
  v6[5] = a4;

  v6[6] = a5;
  v81 = a4;

  v6[4] = v9;
  if ((v9 - 1) > 2)
  {
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    v10 = *(&off_278253710 + v9 - 1);
  }

  v11 = *(v10 + 16);
  v78 = a5;

  v84 = v11;
  if (!v11)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v12 = 0;
  v79 = v11 - 1;
  v13 = MEMORY[0x277D84F90];
  while (2)
  {
    v14 = (v10 + 40 + 16 * v12);
    v15 = v12;
    while (1)
    {
      if (v15 >= *(v10 + 16))
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        result = sub_21A451A94();
        __break(1u);
        return result;
      }

      v16 = *(v14 - 1);
      v17 = *v14;
      if (v16 != 1953066601 || v17 != 0xE400000000000000)
      {
        v11 = v84;
        if ((sub_21A4519B4() & 1) == 0)
        {
          break;
        }
      }

      ++v15;
      v14 += 2;
      if (v11 == v15)
      {
        goto LABEL_21;
      }
    }

    v19 = v13;
    v86 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21A3E48DC(0, *(v13 + 16) + 1, 1);
      v19 = v13;
    }

    v21 = *(v19 + 16);
    v20 = *(v19 + 24);
    v22 = v19;
    v11 = v84;
    if (v21 >= v20 >> 1)
    {
      sub_21A3E48DC((v20 > 1), v21 + 1, 1);
      v11 = v84;
      v22 = v86;
    }

    v12 = v15 + 1;
    *(v22 + 16) = v21 + 1;
    v23 = v22 + 16 * v21;
    *(v23 + 32) = v16;
    *(v23 + 40) = v17;
    v13 = v22;
    if (v79 != v15)
    {
      continue;
    }

    break;
  }

LABEL_21:
  v83 = v10;
  v24 = sub_21A3E56A4(MEMORY[0x277D84F90], &qword_27CD28558, &unk_21A4575A0);
  v80 = *(v13 + 16);
  if (v80)
  {
    v25 = 0;
    v26 = (v13 + 40);
    do
    {
      if (v25 >= *(v13 + 16))
      {
        goto LABEL_71;
      }

      v28 = *(v26 - 1);
      v27 = *v26;

      v29 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = sub_21A3DCA2C(v28, v27);
      v33 = v29[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_72;
      }

      v36 = v31;
      if (v29[3] >= v35)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v24 = v29;
          if (v31)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_21A3E4410(&qword_27CD28558, &unk_21A4575A0);
          v24 = v29;
          if (v36)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        sub_21A3E3588(v35, isUniquelyReferenced_nonNull_native, &qword_27CD28558, &unk_21A4575A0);
        v37 = sub_21A3DCA2C(v28, v27);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_78;
        }

        v32 = v37;
        v24 = v29;
        if (v36)
        {
LABEL_23:
          *(v24[7] + 8 * v32) = v81;

          goto LABEL_24;
        }
      }

      v24[(v32 >> 6) + 8] |= 1 << v32;
      v39 = (v24[6] + 16 * v32);
      *v39 = v28;
      v39[1] = v27;
      *(v24[7] + 8 * v32) = v81;
      v40 = v24[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_76;
      }

      v24[2] = v42;

LABEL_24:
      ++v25;
      v26 += 2;
    }

    while (v80 != v25);
  }

  v82 = v24;

  v43 = v84;
  if (v84)
  {
    v44 = 0;
    v45 = MEMORY[0x277D84F90];
    do
    {
      v46 = (v83 + 40 + 16 * v44);
      v47 = v44;
      while (1)
      {
        if (v47 >= *(v83 + 16))
        {
          goto LABEL_73;
        }

        v48 = *(v46 - 1);
        v49 = *v46;
        if (v48 != 1953066601 || v49 != 0xE400000000000000)
        {
          v51 = sub_21A4519B4();
          v43 = v84;
          if ((v51 & 1) == 0)
          {
            break;
          }
        }

        ++v47;
        v46 += 2;
        if (v43 == v47)
        {
          goto LABEL_54;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21A3E48DC(0, v45[2] + 1, 1);
      }

      v53 = v45[2];
      v52 = v45[3];
      v43 = v84;
      if (v53 >= v52 >> 1)
      {
        sub_21A3E48DC((v52 > 1), v53 + 1, 1);
        v43 = v84;
      }

      v44 = v47 + 1;
      v45[2] = v53 + 1;
      v54 = &v45[2 * v53];
      v54[4] = v48;
      v54[5] = v49;
    }

    while (v84 - 1 != v47);
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

LABEL_54:
  v55 = sub_21A3E56A4(MEMORY[0x277D84F90], &qword_27CD28558, &unk_21A4575A0);
  v85 = v45[2];
  if (v85)
  {
    v56 = 0;
    v57 = v45 + 5;
    while (1)
    {
      if (v56 >= v45[2])
      {
        goto LABEL_74;
      }

      v59 = *(v57 - 1);
      v58 = *v57;

      v60 = swift_isUniquelyReferenced_nonNull_native();
      v61 = sub_21A3DCA2C(v59, v58);
      v63 = v55[2];
      v64 = (v62 & 1) == 0;
      v41 = __OFADD__(v63, v64);
      v65 = v63 + v64;
      if (v41)
      {
        goto LABEL_75;
      }

      v66 = v62;
      if (v55[3] < v65)
      {
        break;
      }

      if (v60)
      {
        goto LABEL_64;
      }

      v71 = v61;
      sub_21A3E4410(&qword_27CD28558, &unk_21A4575A0);
      v61 = v71;
      if (v66)
      {
LABEL_56:
        *(v55[7] + 8 * v61) = v78;

        goto LABEL_57;
      }

LABEL_65:
      v55[(v61 >> 6) + 8] |= 1 << v61;
      v68 = (v55[6] + 16 * v61);
      *v68 = v59;
      v68[1] = v58;
      *(v55[7] + 8 * v61) = v78;
      v69 = v55[2];
      v41 = __OFADD__(v69, 1);
      v70 = v69 + 1;
      if (v41)
      {
        goto LABEL_77;
      }

      v55[2] = v70;

LABEL_57:
      ++v56;
      v57 += 2;
      if (v85 == v56)
      {
        goto LABEL_69;
      }
    }

    sub_21A3E3588(v65, v60, &qword_27CD28558, &unk_21A4575A0);
    v61 = sub_21A3DCA2C(v59, v58);
    if ((v66 & 1) != (v67 & 1))
    {
      goto LABEL_78;
    }

LABEL_64:
    if (v66)
    {
      goto LABEL_56;
    }

    goto LABEL_65;
  }

LABEL_69:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284C8, &qword_21A456158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A455F00;
  *(inited + 32) = 0x6E69617274;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = a6;
  *(inited + 56) = 0x64726177726F66;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = a6;
  swift_bridgeObjectRetain_n();
  v73 = sub_21A3E56A4(inited, &qword_27CD28558, &unk_21A4575A0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284D0, &qword_21A456160);
  swift_arrayDestroy();
  sub_21A3DE664(a1, a2, v83, v82, v55, v73, &unk_282B3F958);

  return sub_21A3E52C8(&off_282B3F978);
}

uint64_t sub_21A3DDB5C(uint64_t a1, unint64_t a2)
{

  v6 = sub_21A3E49FC(v5);

  v7 = sub_21A3E5BA8(v6, v2, a1);

  sub_21A3DF0E4(v7, a2 | ((HIDWORD(a2) & 1) << 32));
}

uint64_t sub_21A3DDC1C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v3 = *(a1 + 40);

  v4 = sub_21A3E5594(MEMORY[0x277D84F90]);
  v5 = *(v3 + 16);
  if (!v5)
  {
LABEL_16:

    *a3 = v4;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 40);
  while (v6 < *(v3 + 16))
  {
    v9 = *(v7 - 1);
    v8 = *v7;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_21A3DCA2C(v9, v8);
    v13 = v4[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_18;
    }

    v17 = v12;
    if (v4[3] < v16)
    {
      sub_21A3E301C(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_21A3DCA2C(v9, v8);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v22 = v11;
    sub_21A3E4118();
    v11 = v22;
    if (v17)
    {
LABEL_3:
      *(v4[7] + 8 * v11) = a2;

      goto LABEL_4;
    }

LABEL_12:
    v4[(v11 >> 6) + 8] |= 1 << v11;
    v19 = (v4[6] + 16 * v11);
    *v19 = v9;
    v19[1] = v8;
    *(v4[7] + 8 * v11) = a2;
    v20 = v4[2];
    v15 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v15)
    {
      goto LABEL_19;
    }

    v4[2] = v21;
LABEL_4:
    ++v6;
    v7 += 2;
    if (v5 == v6)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_21A451A94();
  __break(1u);
  return result;
}

uint64_t sub_21A3DDDE0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);
  v4 = *(v3 + 80);
  v5 = *(v3 + 120);

  if (v2 == 2)
  {
    v6 = 0x6E69617274;
    v7 = 0xE500000000000000;
  }

  else
  {
    v6 = 0x64726177726F66;
    v7 = 0xE700000000000000;
  }

  v8 = sub_21A3E647C(v6, v7, v4, v5);

  return v8;
}

void *sub_21A3DDE84(uint64_t *a1)
{
  v5 = *a1;
  v1 = sub_21A3DE164(&v5);
  v3 = sub_21A3DF500(v1, v2);

  return v3;
}

void *sub_21A3DE0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[4];
  if (v4)
  {
    if (v4 == 1)
    {
      v8 = 1852399981;
    }

    else
    {
      v8 = 0x64726177726F66;
    }

    if (v4 == 1)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    v3 = sub_21A3E0BB4(v8, v9, a1, a2, a3);
  }

  else
  {
    sub_21A3DCAA4();
    swift_allocError();
    *v5 = 47;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_21A3DE164(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);
  if ((*a1 & ~v3) == 0)
  {
    result = 0x6E69617274;
    if (v3 == v2)
    {
      if (v2 == 2)
      {
        return result;
      }

      if (v2 == 1)
      {
        return 1852399981;
      }
    }

    else
    {
      if (v2 == 2)
      {
        return result;
      }

      if (v2 == 1)
      {
        return 0x64726177726F66;
      }
    }
  }

  sub_21A3DCAA4();
  swift_allocError();
  *v5 = 47;
  return swift_willThrow();
}

void *EspressoE5Trainer.deinit()
{

  return v0;
}

uint64_t EspressoE5Trainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21A3DE2B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for EspressoE5Trainer();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  v4[4] = 1;
  v4[5] = v5;
  v4[6] = v5;
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284C0, &qword_21A456150);
  swift_allocObject();
  result = sub_21A3DE548(0x676E696E7261656CLL, 0xEF305F657461725FLL, 1953066601, 0xE400000000000000);
  v4[3] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_21A3DE3C8(uint64_t a1, unint64_t a2)
{
  v5 = *v2;

  v7 = sub_21A3E49FC(v6);

  v8 = sub_21A3E5BA8(v7, v5, a1);

  sub_21A3DF0E4(v8, a2 | ((HIDWORD(a2) & 1) << 32));
}

uint64_t sub_21A3DE548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 60) = 1;
  v9 = MEMORY[0x277D84F90];
  *(v4 + 64) = sub_21A3E56A4(MEMORY[0x277D84F90], &qword_27CD28558, &unk_21A4575A0);
  *(v4 + 72) = sub_21A3E56A4(v9, &qword_27CD28558, &unk_21A4575A0);
  *(v4 + 80) = sub_21A3E56A4(v9, &qword_27CD28558, &unk_21A4575A0);
  *(v4 + 88) = sub_21A3E56A4(v9, &qword_27CD28558, &unk_21A4575A0);
  *(v4 + 96) = sub_21A3E5498(v9, &qword_27CD28520, &unk_21A456220);
  *(v4 + 104) = sub_21A3E56A4(v9, &qword_27CD28528, &qword_21A456230);
  *(v4 + 112) = 0;
  *(v4 + 120) = sub_21A3E5498(v9, &qword_27CD28CF0, &unk_21A459110);
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

char *sub_21A3DE664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v105 = *MEMORY[0x277D85DE8];
  type metadata accessor for E5Library();
  swift_allocObject();

  result = E5Library.init(modelPath:devices:cachePath:functions:)(a1, a2, a7, 0, 0, a3);
  if (v8)
  {
    return result;
  }

  v88 = a3;
  v98 = result;
  v101 = 0;
  v9[8] = a4;

  v9[9] = a5;

  v9[10] = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28558, &unk_21A4575A0);
  v18 = sub_21A451854();
  v19 = v18;
  v20 = 0;
  v21 = *(a6 + 64);
  v89 = a6 + 64;
  v22 = 1 << *(a6 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v92 = a6;
  v93 = v18 + 64;
  v99 = v9;
  v90 = v25;
  v91 = v18;
  if ((v23 & v21) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v27 = v20;
  while (1)
  {
    v20 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v20 >= v25)
    {
      break;
    }

    v28 = *(v89 + 8 * v20);
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v24 = (v28 - 1) & v28;
      while (2)
      {
        v29 = v26 | (v20 << 6);
        v30 = (*(a6 + 48) + 16 * v29);
        v32 = *v30;
        v31 = v30[1];
        v33 = *(*(a6 + 56) + 8 * v29);
        v34 = *(v33 + 16);
        if (v34)
        {
          v96 = *v30;
          v97 = v29;
          v100 = v24;
          v102 = MEMORY[0x277D84F90];
          v95 = v31;

          sub_21A3E48DC(0, v34, 0);
          v35 = v33;
          v36 = v102;
          v94 = v35;
          v37 = (v35 + 40);
          do
          {
            v38 = *v37;
            v103 = *(v37 - 1);
            v104 = v38;
            swift_bridgeObjectRetain_n();
            MEMORY[0x21CED98B0](0x646574616470755FLL, 0xE800000000000000);

            v39 = v103;
            v102 = v36;
            v41 = *(v36 + 16);
            v40 = *(v36 + 24);
            if (v41 >= v40 >> 1)
            {
              sub_21A3E48DC((v40 > 1), v41 + 1, 1);
              v36 = v102;
            }

            *(v36 + 16) = v41 + 1;
            v42 = v36 + 16 * v41;
            *(v42 + 32) = v39;
            *(v42 + 40) = v38;
            v37 += 2;
            --v34;
          }

          while (v34);

          v9 = v99;
          v24 = v100;
          v19 = v91;
          a6 = v92;
          v25 = v90;
          v32 = v96;
          v29 = v97;
          v43 = v95;
        }

        else
        {

          v36 = MEMORY[0x277D84F90];
        }

        *(v93 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v44 = (v19[6] + 16 * v29);
        *v44 = v32;
        v44[1] = v43;
        *(v19[7] + 8 * v29) = v36;
        v45 = v19[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (!v46)
        {
          v19[2] = v47;
          if (!v24)
          {
            goto LABEL_6;
          }

LABEL_5:
          v26 = __clz(__rbit64(v24));
          v24 &= v24 - 1;
          continue;
        }

        break;
      }

LABEL_69:
      __break(1u);
      __break(1u);
LABEL_70:
      __break(1u);
    }
  }

  v9[11] = v19;

  v48 = *(v88 + 16);
  if (v48)
  {
    v49 = 0;
    v50 = v88 + 40;
    v51 = MEMORY[0x277D84F90];
    do
    {
      v52 = (v50 + 16 * v49);
      v53 = v49;
      while (1)
      {
        if (v53 >= v48)
        {
          goto LABEL_66;
        }

        v49 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_67;
        }

        v54 = *(v52 - 1);
        v55 = *v52;
        v56 = v54 == v9[4] && v55 == v9[5];
        if (!v56 && (sub_21A4519B4() & 1) == 0)
        {
          break;
        }

        ++v53;
        v52 += 2;
        if (v49 == v48)
        {
          goto LABEL_39;
        }
      }

      v103 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21A3E48DC(0, *(v51 + 16) + 1, 1);
        v51 = v103;
      }

      v57 = v51;
      v58 = *(v51 + 16);
      v59 = *(v57 + 24);
      if (v58 >= v59 >> 1)
      {
        sub_21A3E48DC((v59 > 1), v58 + 1, 1);
        v57 = v103;
      }

      *(v57 + 16) = v58 + 1;
      v60 = v57 + 16 * v58;
      *(v60 + 32) = v54;
      *(v60 + 40) = v55;
      v51 = v57;
    }

    while (v49 != v48);
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
  }

LABEL_39:
  v61 = sub_21A3E5498(MEMORY[0x277D84F90], &qword_27CD28520, &unk_21A456220);
  v96 = *(v51 + 16);
  if (v96)
  {
    v97 = v51;
    if (*(v51 + 16))
    {
      type metadata accessor for E5Function();
      swift_allocObject();
      v103 = 0;

      v62 = e5rt_execution_stream_create();
      sub_21A3DCF54(v62);

      if (v101)
      {
      }

      else
      {
        sub_21A3DCAF8();
        swift_allocError();
        *v84 = 6;
        swift_willThrow();
      }

      swift_deallocPartialClassInstance();
    }

LABEL_68:
    __break(1u);
    __break(1u);
    goto LABEL_69;
  }

  v9[12] = v61;

  v64 = v9[4];
  v65 = v9[5];
  v103 = v64;
  v104 = v65;
  MEMORY[0x28223BE20](v63);
  v87[2] = &v103;
  v66 = v101;
  if (sub_21A4412B8(sub_21A3E7614, v87, v88))
  {
    v67 = v65;
    v68 = v98;
    v69 = sub_21A44BF20(v64, v67);
    v70 = v66;
    if (v66)
    {
    }

    v9[14] = v69;
  }

  else
  {
    v70 = v66;
    v68 = v98;
  }

  v9[6] = v68;

  v71 = v9[14];
  if (!v71)
  {
  }

  v72 = sub_21A404940();
  v73 = v72;
  v101 = v72[2];
  if (!v101)
  {
LABEL_54:

    v82 = sub_21A3E536C(MEMORY[0x277D84F90]);
    v83 = sub_21A40765C(v82);
    if (v70)
    {
    }

    else
    {
      v85 = v83;

      v99[15] = v85;
    }
  }

  v74 = 0;
  v75 = v72 + 5;
  while (1)
  {
    if (v74 >= v73[2])
    {
      goto LABEL_70;
    }

    v76 = *(v75 - 1);
    v77 = *v75;
    v103 = 0;
    sub_21A4510E4();

    v78 = e5rt_execution_stream_operation_retain_output_port();

    sub_21A3DCF54(v78);
    if (v70)
    {
    }

    v79 = v103;
    if (!v103)
    {
      break;
    }

    LOBYTE(v103) = 0;
    type metadata accessor for IOPort();
    swift_allocObject();
    v80 = sub_21A425138(v79, &v103);
    ++v74;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = *(v71 + 56);
    *(v71 + 56) = 0x8000000000000000;
    sub_21A403158(v80, v76, v77, isUniquelyReferenced_nonNull_native);

    *(v71 + 56) = v102;
    swift_endAccess();

    v75 += 2;
    if (v101 == v74)
    {
      goto LABEL_54;
    }
  }

  sub_21A3DCAF8();
  swift_allocError();
  *v86 = 6;
  swift_willThrow();
}

uint64_t sub_21A3DF0E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;

  swift_beginAccess();
  *(v2 + 56) = a2;
  v47 = v2;
  *(v2 + 60) = BYTE4(a2) & 1;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
LABEL_5:
  while (v7)
  {
LABEL_10:
    v12 = 0;
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = *(*(a1 + 56) + ((v10 << 9) | (8 * v13)));
    v15 = 1 << *(v14 + 32);
    v16 = (v15 + 63) >> 6;
    v17 = 64;
    while (1)
    {
      v18 = *(v14 + v17);
      if (v18)
      {
        break;
      }

      v12 -= 64;
      v17 += 8;
      if (!--v16)
      {
        goto LABEL_5;
      }
    }

    v19 = __clz(__rbit64(v18));
    if (v19 - v15 != v12)
    {
      result = sub_21A4116E4(v19 - v12, *(v14 + 36), 0, v14);
      v20 = 0;
      if (v15 < 64)
      {
        v21 = ~(-1 << v15);
      }

      else
      {
        v21 = -1;
      }

      v22 = *(v14 + 64) & v21;
      while (v22)
      {
        v23 = v20;
LABEL_25:
        v24 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        if (*(*(v14 + 56) + ((v23 << 9) | (8 * v24))) != result)
        {
          sub_21A3DCAA4();
          swift_allocError();
          *v25 = 46;
          swift_willThrow();
        }
      }

      while (1)
      {
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v23 >= ((v15 + 63) >> 6))
        {
          goto LABEL_5;
        }

        v22 = *(v14 + 64 + 8 * v23);
        ++v20;
        if (v22)
        {
          v20 = v23;
          goto LABEL_25;
        }
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(a1 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  v26 = v47;
  v27 = *(v47 + 96);
  v28 = v27 + 64;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v27 + 64);
  v32 = (v29 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v33 = 0;
  v48 = v27;
  while (v31)
  {
    v34 = v31;
LABEL_38:
    v31 = (v34 - 1) & v34;
    v36 = *(v26 + 104);
    if (*(v36 + 16))
    {
      v49 = (v34 - 1) & v34;
      v37 = __clz(__rbit64(v34)) | (v33 << 6);
      v38 = (*(v27 + 48) + 16 * v37);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(*(v27 + 56) + 8 * v37);

      v42 = sub_21A3DCA2C(v40, v39);
      if (v43)
      {
        v44 = *(*(v36 + 56) + 8 * v42);

        v45 = sub_21A3E18F4(v41, v40, v39, v44);
        if (v50)
        {
        }

        v46 = v45;

        v27 = v48;
        if (*(v46 + 16))
        {
          sub_21A404DB4(v46);
        }

        v26 = v47;
      }

      else
      {
        v27 = v48;
      }

      v31 = v49;
    }
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v32)
    {

      return sub_21A3E2418();
    }

    v34 = *(v28 + 8 * v35);
    ++v33;
    if (v34)
    {
      v33 = v35;
      goto LABEL_38;
    }
  }

LABEL_50:
  __break(1u);
  return result;
}

void *sub_21A3DF500(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21A450C24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 96);
  if (!*(v10 + 16))
  {
    return sub_21A3E56A4(MEMORY[0x277D84F90], &qword_27CD28510, &qword_21A456210);
  }

  v11 = sub_21A3DCA2C(a1, a2);
  if ((v12 & 1) == 0)
  {

    return sub_21A3E56A4(MEMORY[0x277D84F90], &qword_27CD28510, &qword_21A456210);
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  v14 = *(v3 + 72);
  if (!*(v14 + 16))
  {
LABEL_31:

    return sub_21A3E56A4(MEMORY[0x277D84F90], &qword_27CD28510, &qword_21A456210);
  }

  v15 = sub_21A3DCA2C(a1, a2);
  if ((v16 & 1) == 0)
  {

    goto LABEL_31;
  }

  v17 = *(*(v14 + 56) + 8 * v15);

  v18 = sub_21A3E56A4(MEMORY[0x277D84F90], &qword_27CD28510, &qword_21A456210);
  v19 = *(v17 + 16);
  if (!v19)
  {
    goto LABEL_28;
  }

  v20 = 0;
  v64 = (v7 + 8);
  v65 = (v7 + 104);
  v63 = *MEMORY[0x277CC92A8];
  v21 = v17 + 40;
  v61 = v19 - 1;
  v62 = v17 + 40;
  v66 = v6;
  while (2)
  {
    v22 = (v21 + 16 * v20);
    v23 = v20;
    while (1)
    {
      if (v23 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v24 = *(v22 - 1);
      v25 = *v22;
      swift_beginAccess();
      v26 = *(v13 + 56);
      if (*(v26 + 16))
      {
        break;
      }

LABEL_8:
      ++v23;
      v22 += 2;
      if (v19 == v23)
      {
        goto LABEL_28;
      }
    }

    v27 = sub_21A3DCA2C(v24, v25);
    if ((v28 & 1) == 0)
    {

      goto LABEL_8;
    }

    v29 = *(*(v26 + 56) + 8 * v27);

    v30 = *(v29 + 32);
    v32 = *(v30 + 24);
    v31 = *(v30 + 32);
    v57[3] = v29;
    v58 = v32;
    v67 = v31;
    v33 = v66;
    (*v65)(v9, v63, v66);

    v59 = v30;

    v34 = sub_21A450C14();
    v60 = v35;
    if (v67)
    {
      v57[2] = v34;
      sub_21A450A44();
      v57[1] = swift_allocObject();

      v36 = sub_21A4509D4();
      v37 = sub_21A450A34();
      *v38 |= 0x8000000000000000;
      v37(&v68, 0);
      v58 = sub_21A439D94(v36, v67);
      v67 = v39;
    }

    else
    {
      v40 = sub_21A450C14();
      v40(v58, 0);

      v58 = 0;
      v67 = 0xC000000000000000;
    }

    (*v64)(v9, v33);
    v41 = v58;
    v60 = sub_21A44D62C(v58, v67);
    sub_21A3E759C(v41, v67);

    LODWORD(v67) = swift_isUniquelyReferenced_nonNull_native();
    v68 = v18;
    v43 = sub_21A3DCA2C(v24, v25);
    v44 = v18[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v18[3] >= v46)
    {
      if (v67)
      {
        v18 = v68;
        if ((v42 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        LODWORD(v67) = v42;
        v51 = v43;
        sub_21A3E4410(&qword_27CD28510, &qword_21A456210);
        v43 = v51;
        v18 = v68;
        if ((v67 & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v47 = v42;
      sub_21A3E3588(v46, v67, &qword_27CD28510, &qword_21A456210);
      v48 = sub_21A3DCA2C(v24, v25);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_37;
      }

      v43 = v48;
      v50 = v47;
      v18 = v68;
      if ((v50 & 1) == 0)
      {
LABEL_25:
        v18[(v43 >> 6) + 8] |= 1 << v43;
        v52 = (v18[6] + 16 * v43);
        *v52 = v24;
        v52[1] = v25;
        *(v18[7] + 8 * v43) = v60;
        v53 = v18[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (!v54)
        {
          v18[2] = v55;

          goto LABEL_27;
        }

LABEL_36:
        __break(1u);
LABEL_37:
        result = sub_21A451A94();
        __break(1u);
        return result;
      }
    }

    *(v18[7] + 8 * v43) = v60;

    swift_bridgeObjectRelease_n();

LABEL_27:
    v20 = v23 + 1;
    v21 = v62;
    if (v61 != v23)
    {
      continue;
    }

    break;
  }

LABEL_28:

  return v18;
}

uint64_t sub_21A3DFA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7, char a8)
{
  v10 = v8;
  v160 = *MEMORY[0x277D85DE8];
  v11 = v8[12];
  if (!*(v11 + 16))
  {
    goto LABEL_12;
  }

  v18 = sub_21A3DCA2C(a1, a2);
  if ((v19 & 1) == 0)
  {

LABEL_12:
    sub_21A3DCAA4();
    swift_allocError();
    *v34 = 18;
    return swift_willThrow();
  }

  v157 = *(*(v11 + 56) + 8 * v18);

  v20 = v10[13];
  if (!*(v20 + 16))
  {
LABEL_14:
    sub_21A3DCAA4();
    swift_allocError();
    v36 = 46;
LABEL_20:
    *v35 = v36;
    swift_willThrow();
  }

  v21 = sub_21A3DCA2C(a1, a2);
  if ((v22 & 1) == 0)
  {

    goto LABEL_14;
  }

  v155 = a7;
  v23 = *(*(v20 + 56) + 8 * v21);

  v24 = v10[10];
  if (!*(v24 + 16))
  {
LABEL_19:

    sub_21A3DCAA4();
    swift_allocError();
    v36 = 44;
    goto LABEL_20;
  }

  v25 = sub_21A3DCA2C(a1, a2);
  if ((v26 & 1) == 0 || (v154 = v23, v27 = *(*(v24 + 56) + 8 * v25), , , v28 = v10[11], !*(v28 + 16)))
  {
LABEL_18:

    goto LABEL_19;
  }

  v153 = v27;

  v29 = sub_21A3DCA2C(a1, a2);
  if ((v30 & 1) == 0)
  {

    goto LABEL_18;
  }

  v31 = *(*(v28 + 56) + 8 * v29);

  v32 = sub_21A3E70C8(v154);
  if (v9)
  {
  }

  v146 = v31;
  v37 = v32;
  result = sub_21A3E71C0(a3, a4, a5, v154, v157, v32);
  if (!v37)
  {
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  if (a5 == 0x8000000000000000 && v37 == -1)
  {
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    return result;
  }

  v120 = v37;
  v133 = a5 / v37;
  v38 = sub_21A4113F8(0, a5 / v37, 1);
  if (a8)
  {
    v39 = v10[10];
    v40 = v10[15];

    v131 = sub_21A3E647C(a1, a2, v39, v40);
  }

  else
  {
    v131 = MEMORY[0x277D84F90];
  }

  result = a3;
  if (!a6)
  {

    goto LABEL_133;
  }

  if (v133 < 0)
  {
    goto LABEL_165;
  }

  v41 = 0;
  v129 = MEMORY[0x277D84F90];
  while (1)
  {
    v118 = v41;
    if (a8)
    {

      v42 = *(v131 + 16);
      if (v42)
      {
        v43 = sub_21A451344();
        *(v43 + 16) = v42;
        v129 = v43;
        bzero((v43 + 32), 4 * v42);
      }

      else
      {
        v129 = MEMORY[0x277D84F90];
      }

      result = a3;
    }

    if (v155)
    {
      v44 = *(v38 + 16);
      v45 = v44 - 2;
      if (v44 >= 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_21A410FA4(v38);
        }

        v46 = 0;
        v140 = v38 + 32;
        v143 = v38;
        v147 = v44 - 2;
        do
        {
          v48 = v46;
          __B = 0;
          MEMORY[0x21CEDB240](&__B, 8);
          v49 = (__B * v44) >> 64;
          if (v44 > __B * v44)
          {
            v50 = -v44 % v44;
            if (v50 > __B * v44)
            {
              do
              {
                __B = 0;
                MEMORY[0x21CEDB240](&__B, 8);
              }

              while (v50 > __B * v44);
              v49 = (__B * v44) >> 64;
            }

            v45 = v147;
          }

          v51 = __OFADD__(v48, v49);
          v52 = v48 + v49;
          result = a3;
          if (v51)
          {
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
          }

          if (v48 != v52)
          {
            v53 = *(v143 + 16);
            if (v48 >= v53)
            {
              goto LABEL_149;
            }

            if (v52 >= v53)
            {
              goto LABEL_150;
            }

            v47 = *(v140 + 8 * v48);
            *(v140 + 8 * v48) = *(v140 + 8 * v52);
            *(v140 + 8 * v52) = v47;
          }

          --v44;
          v46 = v48 + 1;
        }

        while (v48 != v45);
        v38 = v143;
      }
    }

    if (v133)
    {
      v54 = 0;
      v123 = v38 + 32;
      v144 = v38;
      while (1)
      {
        v127 = v54;
        v119 = v54 + 1;
        v55 = 1 << *(result + 32);
        v56 = v55 < 64 ? ~(-1 << v55) : -1;
        v57 = v56 & *(result + 64);
        v58 = (v55 + 63) >> 6;

        v59 = 0;
        v124 = v58;
        v60 = a3 + 64;
        if (v57)
        {
          break;
        }

LABEL_62:
        v61 = a3;
        while (1)
        {
          v62 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            __break(1u);
          }

          if (v62 >= v58)
          {
            break;
          }

          v57 = *(v60 + 8 * v62);
          ++v59;
          if (v57)
          {
            v59 = v62;
            goto LABEL_67;
          }
        }

        v74 = sub_21A3E536C(MEMORY[0x277D84F90]);
        v75 = sub_21A40765C(v74);

        v38 = v144;
        if (a8)
        {
          v76 = v10[11];

          v77 = sub_21A3E647C(a1, a2, v76, v75);

          v78 = *(v77 + 16);
          if (v78 >> 31)
          {
            goto LABEL_172;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = sub_21A407D80(0, v78, 0, v77);
          }

          cblas_saxpy_NEWLAPACK();
          v149 = *(v129 + 16);

          v79 = v129;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v79 = sub_21A407D80(0, v149, 0, v129);
          }

          MEMORY[0x21CEDB360](v129 + 32, 1, v77 + 32, 1, v79 + 32, 1, v149);

          v129 = v79;
          v38 = v144;
        }

        else
        {
          v80 = v153;
          v125 = *(v153 + 16);
          if (v125)
          {
            v81 = 0;
            v82 = 0;
            v122 = v75;
            while (1)
            {
              if (v82 >= *(v80 + 16))
              {
                goto LABEL_160;
              }

              v83 = *(v146 + 16);
              if (v82 == v83)
              {
                goto LABEL_107;
              }

              if (v82 >= v83)
              {
                goto LABEL_161;
              }

              v138 = v82;
              if (!v75[2])
              {

                goto LABEL_146;
              }

              v135 = *(v80 + v81 + 32);
              v128 = v81;
              v84 = *(v146 + v81 + 32);
              v85 = *(v146 + v81 + 40);
              v141 = *(v80 + v81 + 40);

              v86 = sub_21A3DCA2C(v84, v85);
              v150 = v87;

              if ((v150 & 1) == 0)
              {

                goto LABEL_145;
              }

              v88 = *(v10[15] + 16);
              v151 = *(v75[7] + 8 * v86);

              if (!v88)
              {
                break;
              }

              sub_21A3DCA2C(v135, v141);
              v136 = v89;

              if ((v136 & 1) == 0)
              {
                break;
              }

              v90 = *(v151 + 32);
              if (v90 < 0xFFFFFFFDFFFFFFFDLL)
              {
                goto LABEL_162;
              }

              if (v90 > 0x1FFFFFFFFLL)
              {
                goto LABEL_163;
              }

              cblas_scopy_NEWLAPACK();

              v82 = v138 + 1;

              v81 = v128 + 16;
              v80 = v153;
              v38 = v144;
              v75 = v122;
              if (v125 == v138 + 1)
              {
                goto LABEL_107;
              }
            }

LABEL_145:

LABEL_146:

            sub_21A3DCAA4();
            swift_allocError();
            *v117 = 44;
            swift_willThrow();
          }

LABEL_107:
        }

        v54 = v119;
        result = a3;
        if (v119 == v133)
        {
          goto LABEL_109;
        }
      }

      while (1)
      {
        v61 = a3;
LABEL_67:
        v134 = v57;
        v63 = (*(v61 + 48) + ((v59 << 10) | (16 * __clz(__rbit64(v57)))));
        v64 = *v63;
        v65 = *(v61 + 16);
        v148 = v63[1];

        if (!v65 || (sub_21A3DCA2C(v64, v148), (v66 & 1) == 0))
        {

          sub_21A3DCAA4();
          swift_allocError();
          *v113 = 10;
          swift_willThrow();
        }

        swift_beginAccess();
        v67 = *(*(v157 + 48) + 16);

        if (!v67)
        {
          goto LABEL_137;
        }

        sub_21A3DCA2C(v64, v148);
        if ((v68 & 1) == 0)
        {
          break;
        }

        if (!*(a4 + 16) || (v69 = sub_21A3DCA2C(v64, v148), (v70 & 1) == 0))
        {
          sub_21A3DCAA4();
          swift_allocError();
          *v114 = 10;
          swift_willThrow();

          goto LABEL_138;
        }

        v71 = *(*(a4 + 56) + 8 * v69);
        result = v64;
        if (*(v154 + 16) && (v121 = v71, result = sub_21A3DCA2C(v64, v148), v71 = v121, (v72 & 1) != 0))
        {
          if (v127 >= *(v144 + 16))
          {
            goto LABEL_166;
          }

          v73 = *(v123 + 8 * v127);
          if ((v121 * v73) >> 64 != (v121 * v73) >> 63)
          {
            goto LABEL_167;
          }

          if ((v121 * v73 * v120) >> 64 != (v121 * v73 * v120) >> 63)
          {
            goto LABEL_168;
          }

          result = v121 * v120;
          if ((v121 * v120) >> 64 != (v121 * v120) >> 63)
          {
            goto LABEL_169;
          }

          if (result < 0xFFFFFFFF80000000)
          {
            goto LABEL_170;
          }

          if (result > 0x7FFFFFFF)
          {
            goto LABEL_171;
          }
        }

        else
        {
          if (v127 >= *(v144 + 16))
          {
            goto LABEL_156;
          }

          if ((v71 * *(v123 + 8 * v127)) >> 64 != (v71 * *(v123 + 8 * v127)) >> 63)
          {
            goto LABEL_157;
          }

          if (v71 < 0xFFFFFFFF80000000)
          {
            goto LABEL_158;
          }

          if (v71 > 0x7FFFFFFF)
          {
            goto LABEL_159;
          }
        }

        cblas_scopy_NEWLAPACK();
        v57 = (v134 - 1) & v134;

        v58 = v124;
        v60 = a3 + 64;
        if (!v57)
        {
          goto LABEL_62;
        }
      }

LABEL_137:
      sub_21A3DCAA4();
      swift_allocError();
      *v115 = 10;
      swift_willThrow();

LABEL_138:
    }

LABEL_109:
    if (a8)
    {
      break;
    }

    v112 = v118;
LABEL_130:
    v41 = v112 + 1;
    if (v41 == a6)
    {

LABEL_133:

      goto LABEL_141;
    }
  }

  v145 = v38;
  *&__B = v133;
  v91 = *(v129 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93 = v129;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v93 = sub_21A407D80(0, v91, 0, v129);
  }

  v126 = v93;
  vDSP_vsdiv((v129 + 32), 1, &__B, v93 + 8, 1, v91);

  v94 = v131;
  v95 = *(v131 + 16);

  v96 = swift_isUniquelyReferenced_nonNull_native();
  v97 = v131;
  if ((v96 & 1) == 0)
  {
    v98 = sub_21A407D80(0, v95, 0, v131);
    v97 = v131;
    v94 = v98;
  }

  MEMORY[0x21CEDB360](v97 + 32, 1, v126 + 32, 1, v94 + 32, 1, v95);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21A410F90(v94);
    v94 = result;
  }

  v99 = 0;
  v130 = v94;
  v100 = v153;
  v132 = -*(v153 + 16);
  v101 = -1;
  v152 = (v153 + 40);
  while (1)
  {
    if (v132 + v101 == -1)
    {
      v129 = v126;
      v131 = v94;
      result = a3;
      v112 = v118;
      v38 = v145;
      goto LABEL_130;
    }

    v102 = v101 + 1;
    if (v102 >= *(v100 + 16))
    {
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    v139 = v102;
    v142 = v99;
    v103 = v10[15];
    if (!*(v103 + 16))
    {
      goto LABEL_140;
    }

    v104 = *(v152 - 1);
    v105 = *v152;

    v106 = sub_21A3DCA2C(v104, v105);
    v137 = v107;

    if ((v137 & 1) == 0)
    {
      break;
    }

    v108 = *(*(v103 + 56) + 8 * v106);

    v109 = *(v108 + 32);
    v110 = v109 + 3;
    if (v109 >= 0)
    {
      v110 = *(v108 + 32);
    }

    if (v109 < 0xFFFFFFFDFFFFFFFDLL)
    {
      goto LABEL_152;
    }

    if (v109 > 0x1FFFFFFFFLL)
    {
      goto LABEL_153;
    }

    v152 += 2;
    v111 = v110 >> 2;
    cblas_scopy_NEWLAPACK();

    v51 = __OFADD__(v142, v111);
    v99 = v142 + v111;
    v100 = v153;
    v94 = v130;
    v101 = v139;
    if (v51)
    {
      goto LABEL_154;
    }
  }

LABEL_140:
  sub_21A3DCAA4();
  swift_allocError();
  *v116 = 44;
  swift_willThrow();

LABEL_141:
}

void *sub_21A3E0BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v9 = *(v5 + 96);
  if (!*(v9 + 16))
  {
    goto LABEL_12;
  }

  v7 = a1;

  v14 = sub_21A3DCA2C(v7, a2);
  if ((v15 & 1) == 0)
  {

LABEL_12:
    sub_21A3DCAA4();
    swift_allocError();
    *v23 = 19;
    swift_willThrow();
    return v7;
  }

  v16 = *(*(v9 + 56) + 8 * v14);

  v17 = *(v8 + 104);
  if (!*(v17 + 16))
  {
LABEL_14:
    sub_21A3DCAA4();
    swift_allocError();
    *v24 = 46;
    swift_willThrow();
    goto LABEL_15;
  }

  v18 = sub_21A3DCA2C(v7, a2);
  if ((v19 & 1) == 0)
  {

    goto LABEL_14;
  }

  v111 = a4;
  v20 = *(*(v17 + 56) + 8 * v18);

  v21 = sub_21A3E70C8(v20);
  if (v6)
  {

    goto LABEL_15;
  }

  v22 = v21;
  if (!v21)
  {
    __break(1u);
LABEL_112:
    v95 = v21;

    sub_21A404DB4(v95);
LABEL_128:

    sub_21A3E2418();

    return v102;
  }

  if (a5 == 0x8000000000000000 && v21 == -1)
  {
    __break(1u);
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  sub_21A3E71C0(a3, v111, a5, v20, v16, v21);
  v26 = a5 / v22;
  if (a5 / v22 < 0)
  {
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v98 = v7;
  v99 = a2;
  v106 = v16;
  v107 = a3;
  v108 = v20;
  v101 = v22;
  v97 = a5 / v22;
  if (v26)
  {
    v27 = 0;
    v7 = MEMORY[0x277D84F90];
    v28 = a3 + 64;
    v104 = a3 + 64;
LABEL_20:
    v102 = v7;
    v109 = v27;
    v100 = v27 + 1;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v7 = v30 & *(a3 + 64);
    v31 = (v29 + 63) >> 6;

    v32 = 0;
    v103 = v31;
    while (v7)
    {
LABEL_28:
      if (!*(a3 + 16))
      {
        goto LABEL_73;
      }

      v34 = (*(a3 + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v7)))));
      v36 = *v34;
      v35 = v34[1];

      v112 = v35;
      sub_21A3DCA2C(v36, v35);
      if ((v37 & 1) == 0)
      {
LABEL_72:

        goto LABEL_73;
      }

      swift_beginAccess();
      v38 = *(*(v16 + 48) + 16);

      if (!v38)
      {
        goto LABEL_75;
      }

      sub_21A3DCA2C(v36, v112);
      if ((v39 & 1) == 0)
      {

        goto LABEL_75;
      }

      if (!*(v111 + 16) || (v40 = sub_21A3DCA2C(v36, v112), (v41 & 1) == 0))
      {

LABEL_75:
        sub_21A3DCAA4();
        swift_allocError();
        *v72 = 10;
        swift_willThrow();

        goto LABEL_15;
      }

      v42 = *(*(v111 + 56) + 8 * v40);
      v43 = (v42 * v109) >> 64;
      if (*(v108 + 16) && (sub_21A3DCA2C(v36, v112), (v44 & 1) != 0))
      {
        if (v43 != (v42 * v109) >> 63)
        {
          goto LABEL_123;
        }

        v16 = v106;
        v31 = v103;
        if ((v42 * v109 * v101) >> 64 != (v42 * v109 * v101) >> 63)
        {
          goto LABEL_124;
        }

        v45 = v42 * v101;
        if ((v42 * v101) >> 64 != (v42 * v101) >> 63)
        {
          goto LABEL_125;
        }

        a3 = v107;
        if (v45 < 0xFFFFFFFF80000000)
        {
          goto LABEL_126;
        }

        if (v45 > 0x7FFFFFFF)
        {
          goto LABEL_127;
        }

        cblas_scopy_NEWLAPACK();
      }

      else
      {
        if (v43 != (v42 * v109) >> 63)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:

LABEL_119:
          sub_21A3DCAA4();
          swift_allocError();
          *v96 = 10;
          swift_willThrow();

          goto LABEL_15;
        }

        v16 = v106;
        v31 = v103;
        if (v42 < 0xFFFFFFFF80000000)
        {
          goto LABEL_116;
        }

        if (v42 > 0x7FFFFFFF)
        {
          goto LABEL_117;
        }

        cblas_scopy_NEWLAPACK();
        a3 = v107;
      }

      v7 &= v7 - 1;

      v28 = v104;
    }

    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v31)
      {

        v46 = sub_21A3E536C(MEMORY[0x277D84F90]);
        sub_21A40765C(v46);

        v47 = sub_21A3DF500(v98, v99);
        v7 = v102;
        v20 = v108;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_21A4082B4(0, v102[2] + 1, 1, v102);
        }

        v26 = v97;
        v28 = v104;
        v49 = *(v7 + 16);
        v48 = *(v7 + 24);
        if (v49 >= v48 >> 1)
        {
          v50 = sub_21A4082B4((v48 > 1), v49 + 1, 1, v7);
          v28 = v104;
          v26 = v97;
          v7 = v50;
        }

        *(v7 + 16) = v49 + 1;
        *(v7 + 8 * v49 + 32) = v47;
        v27 = v100;
        v22 = v101;
        a3 = v107;
        if (v100 != v26)
        {
          goto LABEL_20;
        }

        goto LABEL_55;
      }

      v7 = *(v28 + 8 * v33);
      ++v32;
      if (v7)
      {
        v32 = v33;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_104:

    v92 = sub_21A3E536C(MEMORY[0x277D84F90]);
    sub_21A40765C(v92);
LABEL_106:

    v77 = sub_21A3DF500(v98, v99);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_107;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_55:
  v113 = a5 - v26 * v22;
  if (v113 < 1)
  {
  }

  else
  {
    v102 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28540, &unk_21A456250);
    v51 = sub_21A451854();
    v52 = v51;
    v53 = 0;
    v54 = v20 + 64;
    v55 = 1 << *(v20 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & *(v20 + 64);
    v58 = (v55 + 63) >> 6;
    v59 = v51 + 64;
    while (v57)
    {
      v60 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
LABEL_65:
      v63 = v60 | (v53 << 6);
      v64 = (*(v108 + 48) + 16 * v63);
      v66 = *v64;
      v65 = v64[1];
      *(v59 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
      v67 = (v52[6] + 16 * v63);
      *v67 = v66;
      v67[1] = v65;
      *(v52[7] + 8 * v63) = v113;
      v68 = v52[2];
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (v69)
      {
        goto LABEL_121;
      }

      v52[2] = v70;
    }

    v61 = v53;
    while (1)
    {
      v53 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
        goto LABEL_106;
      }

      if (v53 >= v58)
      {
        break;
      }

      v62 = *(v54 + 8 * v53);
      ++v61;
      if (v62)
      {
        v60 = __clz(__rbit64(v62));
        v57 = (v62 - 1) & v62;
        goto LABEL_65;
      }
    }

    v73 = sub_21A3E18F4(v16, v98, v99, v52);

    sub_21A404DB4(v73);

    sub_21A3E2418();
    v74 = v107;
    v75 = 1 << *(v107 + 32);
    v76 = -1;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    v7 = v76 & *(v107 + 64);

    swift_beginAccess();
    v77 = 0;
    v78 = (v75 + 63) >> 6;
    v79 = v111;
    v105 = v78;
    if (!v7)
    {
LABEL_79:
      while (1)
      {
        v80 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          break;
        }

        if (v80 >= v78)
        {
          goto LABEL_104;
        }

        v7 = *(v107 + 64 + 8 * v80);
        ++v77;
        if (v7)
        {
          v77 = v80;
          goto LABEL_83;
        }
      }

      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      v102 = sub_21A4082B4(0, v102[2] + 1, 1, v102);
LABEL_107:
      v94 = v102[2];
      v93 = v102[3];
      if (v94 >= v93 >> 1)
      {
        v102 = sub_21A4082B4((v93 > 1), v94 + 1, 1, v102);
      }

      v102[2] = v94 + 1;
      v102[v94 + 4] = v77;
      v21 = sub_21A3E18F4(v106, v98, v99, v108);
      goto LABEL_112;
    }

LABEL_83:
    while (*(v74 + 16))
    {
      v81 = (*(v74 + 48) + ((v77 << 10) | (16 * __clz(__rbit64(v7)))));
      v83 = *v81;
      v82 = v81[1];

      v110 = v82;
      sub_21A3DCA2C(v83, v82);
      if ((v84 & 1) == 0)
      {
        goto LABEL_72;
      }

      v85 = *(*(v16 + 48) + 16);

      if (!v85)
      {
        goto LABEL_119;
      }

      sub_21A3DCA2C(v83, v110);
      if ((v86 & 1) == 0)
      {
        goto LABEL_118;
      }

      if (!*(v79 + 16) || (v87 = sub_21A3DCA2C(v83, v110), (v88 & 1) == 0))
      {

        goto LABEL_119;
      }

      v89 = *(*(v79 + 56) + 8 * v87);
      if (*(v108 + 16) && (sub_21A3DCA2C(v83, v110), (v90 & 1) != 0))
      {
        if ((v89 * v97) >> 64 != (v89 * v97) >> 63)
        {
          goto LABEL_133;
        }

        if ((v89 * v97 * v101) >> 64 != (v89 * v97 * v101) >> 63)
        {
          goto LABEL_134;
        }

        v91 = v89 * v113;
        if ((v89 * v113) >> 64 != (v89 * v113) >> 63)
        {
          goto LABEL_135;
        }

        if (v91 < 0xFFFFFFFF80000000)
        {
          goto LABEL_136;
        }

        if (v91 > 0x7FFFFFFF)
        {
          goto LABEL_137;
        }

        cblas_scopy_NEWLAPACK();
        v16 = v106;
      }

      else
      {
        if ((v89 * v97) >> 64 != (v89 * v97) >> 63)
        {
          goto LABEL_130;
        }

        if (v89 < 0xFFFFFFFF80000000)
        {
          goto LABEL_131;
        }

        if (v89 > 0x7FFFFFFF)
        {
          goto LABEL_132;
        }

        cblas_scopy_NEWLAPACK();
      }

      v7 &= v7 - 1;

      v74 = v107;
      v79 = v111;
      v78 = v105;
      if (!v7)
      {
        goto LABEL_79;
      }
    }

LABEL_73:

    sub_21A3DCAA4();
    swift_allocError();
    *v71 = 10;
    swift_willThrow();

LABEL_15:
  }

  return v7;
}