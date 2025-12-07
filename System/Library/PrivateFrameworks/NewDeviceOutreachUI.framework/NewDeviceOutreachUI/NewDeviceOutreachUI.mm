uint64_t sub_25BD8F214()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25BD8F25C()
{
  v1 = sub_25BDDF408();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25BD8F2E4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25BD8F334()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25BD8F37C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD8F3B4()
{
  v1 = sub_25BDDF408();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25BD8F4AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD8F4E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD8F520()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD8F598()
{
  MEMORY[0x25F87C990](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD8F5D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD8F608()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD8F640()
{
  v1 = *(type metadata accessor for NDOSignpost(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);

  if (*(v0 + 24))
  {
  }

  v4 = (v2 + 40) & ~v2;
  v5 = sub_25BDDF638();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_25BD8F720()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD8F758()
{
  v1 = sub_25BDDF408();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25BD8F874()
{
  v1 = sub_25BDDF408();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25BD8F974()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD8F9BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD8FA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25BDDF638();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25BD8FAC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25BDDF638();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_25BD8FC74()
{
  MEMORY[0x25F87C990](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD8FCAC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD8FCEC()
{
  v1 = (type metadata accessor for CoverageCentralSectionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v19 = sub_25BDDFA98();
  v5 = *(v19 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_25BDDFA88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v18 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  (*(*(v14 - 8) + 8))(v0 + v3, v14);
  v15 = v1[7];
  v16 = sub_25BDDF6E8();
  (*(*(v16 - 8) + 8))(v0 + v3 + v15, v16);
  (*(v5 + 8))(v0 + v7, v19);
  (*(v10 + 8))(v0 + v12, v9);

  return MEMORY[0x2821FE8E8](v0, v12 + v18, v13 | 7);
}

uint64_t sub_25BD8FF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_25BDDF6E8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25BD90024(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_25BDDF6E8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_25BD90134()
{
  v1 = (type metadata accessor for CoverageCentralSectionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_25BDDF6E8();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25BD90268()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD902A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD902D8()
{
  v1 = *(type metadata accessor for NDOSignpost(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_25BDDF638();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25BD903AC()
{
  MEMORY[0x25F87C990](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD903E4()
{
  v1 = sub_25BDDF408();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25BD904BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD904F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD9052C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD9056C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_25BD905A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD905F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD668, qword_25BDE2DA8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25BD906FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD668, qword_25BDE2DA8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_25BD90814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6A8, &qword_25BDE2DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BD90884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD6A8, &qword_25BDE2DF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BD908EC()
{
  v1 = type metadata accessor for CoverageCentralMainView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD658, &unk_25BDE2D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_25BDDF5D8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25BD90A50()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD90A9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD90AD4()
{
  MEMORY[0x25F87C990](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD90B0C()
{
  v1 = sub_25BDDF558();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25BD90BE4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD90C1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD90C54()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25BD90C9C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25BD90CDC()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25BD90D2C()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25BD90D98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25BD90E10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25BD90E90()
{
  v1 = *(type metadata accessor for DeviceWarrantyMainView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25BD90F70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD90FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_25BDDF778();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25BD910B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD7D8, &qword_25BDE2F30);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_25BDDF778();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_25BD911C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD9120C()
{
  MEMORY[0x25F87C990](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD91244()
{
  v1 = *(type metadata accessor for NDOSignpost(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_25BDDF638();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25BD91318()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD91350()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD91390()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BD913CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_25BDDF408();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_25BD91574()
{
  v1 = sub_25BDDF6E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25BD91640()
{
  v1 = sub_25BDDF6E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_25BDDFA88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_25BD91798()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_25BD93C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 8u);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_25BD95134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25BD95E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25BD9816C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_25BD9A5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25BD9C674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25BD9D7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25BD9DCD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_25BD9F35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void sub_25BDA2160(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25BDA23D4(uint64_t a1@<X8>, unsigned __int8 a2@<W0>)
{
  sub_25BDB4690(a2, a1);
  sub_25BDE0048();
  v3 = *(a1 + *(type metadata accessor for NDOSignpost(0) + 20));
  v4 = sub_25BDB4754(v3);
  sub_25BDB47FC(v3);
  sub_25BDDF618();
}

uint64_t sub_25BDA2488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D2D0C0]) init];
  v8 = swift_allocObject();
  v8[2] = v7;
  type metadata accessor for AMSPresenter();
  v8[4] = 0;
  v8[5] = 0;
  v8[3] = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_25BDA6D3C;
  *(v9 + 24) = v8;
  qword_27FBDDA40 = v9;

  swift_unknownObjectRelease();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  v11 = sub_25BDA4DBC();
  v12 = sub_25BDD4B8C();
  sub_25BDD28A8(v11, v12, a2, v9, sub_25BDA6D6C, v10);

  return swift_unknownObjectRelease();
}

uint64_t sub_25BDA25C8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  type metadata accessor for AMSPresenter();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_25BDA8658;
  *(v9 + 24) = v8;
  v10 = a2;
  v11 = a1;
  sub_25BDA6D70(a3, a4);
  return v9;
}

uint64_t sub_25BDA2664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_allocWithZone(MEMORY[0x277D2D0C0]) init];
  v13 = swift_allocObject();
  v13[2] = v12;
  type metadata accessor for AMSPresenter();
  v13[4] = 0;
  v13[5] = 0;
  v13[3] = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_25BDA8658;
  *(v14 + 24) = v13;
  qword_27FBDDA40 = v14;
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD070, &qword_25BDE2210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BDE21F0;
  strcpy((inited + 32), "X-source-type");
  *(inited + 46) = -4864;
  *(inited + 48) = a3;
  *(inited + 56) = a4;

  v16 = sub_25BDA6C28(inited);
  swift_setDeallocating();
  sub_25BDA8554(inited + 32, &qword_27FBDD078, qword_25BDE2218);
  v17 = qword_27FBDDA40;
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  swift_unknownObjectRetain();

  v19 = sub_25BDA865C();
  v20 = sub_25BDD4B8C();
  sub_25BDD2D24(a1, a2, v19, v20, v16, v17, sub_25BDA869C, v18);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void (*sub_25BDA2860(void *a1, uint64_t a2, void *a3))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a3;
  v6[4] = a2;
  v7 = a1;
  v8 = a3;
  swift_unknownObjectRetain();
  return sub_25BDA6E34;
}

void sub_25BDA28E4()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_25BDDF3C8();
    sub_25BDA6E40(MEMORY[0x277D84F90]);
    v3 = sub_25BDDFDF8();

    [v1 openSensitiveURL:v2 withOptions:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_25BDA29B8(uint64_t a1)
{
  v2 = sub_25BDDF668();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_25BDDF408();
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v35);
  v7 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = objc_opt_self();
  v11 = [v10 sharedApplication];
  v12 = sub_25BDDF3C8();
  v13 = [v11 canOpenURL_];

  if (v13)
  {
    v14 = [v10 sharedApplication];
    v15 = sub_25BDDF3C8();
    v16 = v35;
    (*(v4 + 16))(v9, a1, v35);
    v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v18 = swift_allocObject();
    (*(v4 + 32))(v18 + v17, v9, v16);
    aBlock[4] = sub_25BDA6FBC;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDA3168;
    aBlock[3] = &block_descriptor;
    v19 = _Block_copy(aBlock);

    [v14 openURL:v15 withCompletionHandler:v19];
    _Block_release(v19);
  }

  else
  {
    v20 = sub_25BDB7ADC();
    v22 = v32;
    v21 = v33;
    (*(v32 + 16))(v34, v20, v33);
    (*(v4 + 16))(v7, a1, v35);
    v23 = sub_25BDDF648();
    v24 = sub_25BDDFFC8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136315138;
      sub_25BDA7F44(&unk_27FBDD0E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v27 = v35;
      v28 = sub_25BDE01A8();
      v30 = v29;
      (*(v4 + 8))(v7, v27);
      v31 = sub_25BDA6444(v28, v30, aBlock);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_25BD8D000, v23, v24, "URL can not be openend: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x25F87C8F0](v26, -1, -1);
      MEMORY[0x25F87C8F0](v25, -1, -1);

      (*(v22 + 8))(v34, v33);
    }

    else
    {

      (*(v4 + 8))(v7, v35);
      (*(v22 + 8))(v34, v21);
    }
  }
}

uint64_t sub_25BDA2E38(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_25BDA2E7C(char a1, uint64_t a2)
{
  v4 = sub_25BDDF408();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25BDDF668();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v13 = sub_25BDB7ADC();
    (*(v9 + 16))(v12, v13, v8);
    (*(v5 + 16))(v7, a2, v4);
    v14 = sub_25BDDF648();
    v15 = sub_25BDDFFC8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v25 = v16;
      v26 = swift_slowAlloc();
      v27 = v26;
      *v16 = 136315138;
      sub_25BDA7F44(&unk_27FBDD0E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v17 = sub_25BDE01A8();
      v19 = v18;
      (*(v5 + 8))(v7, v4);
      v20 = sub_25BDA6444(v17, v19, &v27);

      v21 = v25;
      *(v25 + 1) = v20;
      v22 = v21;
      _os_log_impl(&dword_25BD8D000, v14, v15, "Failed to open url: %s", v21, 0xCu);
      v23 = v26;
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x25F87C8F0](v23, -1, -1);
      MEMORY[0x25F87C8F0](v22, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_25BDA3168(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t (*sub_25BDA31BC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a2;
  v11 = a1;
  v12 = a3;

  swift_unknownObjectRetain();
  return sub_25BDA7044;
}

uint64_t sub_25BDA3254(uint64_t a1, unint64_t a2, uint64_t (*a3)(void, void), uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = a7;
  v42 = a5;
  v43 = a6;
  v14 = sub_25BDDF668();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_opt_self();
  v19 = sub_25BDDFE38();
  LODWORD(v18) = [v18 isValidPath_];

  if (!v18)
  {
    return a3(0, 0);
  }

  v39 = a9;
  v40 = a3;
  v20 = sub_25BDB7ADC();
  (*(v15 + 16))(v17, v20, v14);

  v21 = sub_25BDDF648();
  v22 = sub_25BDDFFB8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v38 = a8;
    v25 = v24;
    v44 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_25BDA6444(a1, a2, &v44);
    _os_log_impl(&dword_25BD8D000, v21, v22, "Creating universal AMSUI view controller with path: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v26 = v25;
    a8 = v38;
    MEMORY[0x25F87C8F0](v26, -1, -1);
    MEMORY[0x25F87C8F0](v23, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  v27 = swift_allocObject();
  v28 = v42;
  v29 = v43;
  v27[2] = v42;
  v27[3] = v29;
  v27[4] = v41;
  v27[5] = a8;
  type metadata accessor for AMSPresenter();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_25BDA8658;
  *(v30 + 24) = v27;
  qword_27FBDDA48 = v30;
  v31 = v28;
  v32 = v29;

  swift_unknownObjectRelease();
  v33 = swift_allocObject();
  v33[2] = v40;
  v33[3] = a4;
  v33[4] = v32;
  v34 = v32;

  v35 = sub_25BDA247C();
  sub_25BDD23E8(a1, a2, v31, v39, v35, v30, sub_25BDA8038, v33);
}

void sub_25BDA35A0(void *a1, char a2, void (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  v10 = sub_25BDDF668();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a2)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = a1;
      v15 = objc_allocWithZone(NDOAMSUILoadingViewController);
      aBlock[4] = sub_25BDA8044;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25BDA6394;
      aBlock[3] = &block_descriptor_80;
      v16 = _Block_copy(aBlock);
      v17 = a1;
      v18 = [v15 initWithCreateAMSViewController_];
      _Block_release(v16);

      [v18 setPresenter_];
      sub_25BDA8054(v18, a5);
      a3(0, 1);
    }

    else
    {
      v23 = a1;

      sub_25BDA76A4(v23, a3, a4);
    }
  }

  else
  {
    v19 = sub_25BDB7ADC();
    (*(v11 + 16))(v13, v19, v10);
    v20 = sub_25BDDF648();
    v21 = sub_25BDDFFC8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_25BD8D000, v20, v21, "Cannot create AMS view controller", v22, 2u);
      MEMORY[0x25F87C8F0](v22, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    a3(0, 0);
  }
}

void sub_25BDA388C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v82 = a6;
  v73 = a4;
  v74 = a5;
  v9 = sub_25BDDF408();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v78 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v64[-v13];
  v15 = sub_25BDDF668();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v75 = &v64[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v20 = &v64[-v19];
  v21 = sub_25BDB7ADC();
  v83 = v16;
  v22 = *(v16 + 16);
  v69 = v21;
  v68 = v22;
  v22(v20);
  v23 = *(v10 + 16);
  v77 = a1;
  v71 = v23;
  v72 = v10 + 16;
  v23(v14, a1, v9);

  v24 = sub_25BDDF648();
  v25 = sub_25BDDFFE8();
  v70 = a3;

  v26 = os_log_type_enabled(v24, v25);
  v80 = v9;
  v81 = a2;
  v79 = v10;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v67 = v15;
    v28 = v9;
    v29 = v27;
    v66 = swift_slowAlloc();
    aBlock[0] = v66;
    *v29 = 136315650;
    sub_25BDA7F44(&unk_27FBDD0E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v65 = v25;
    v30 = sub_25BDE01A8();
    v32 = v31;
    v33 = v28;
    v15 = v67;
    (*(v10 + 8))(v14, v33);
    v34 = sub_25BDA6444(v30, v32, aBlock);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = sub_25BDDFE18();
    v37 = sub_25BDA6444(v35, v36, aBlock);

    *(v29 + 14) = v37;
    *(v29 + 22) = 2080;
    v38 = v70;
    v39 = sub_25BDDFE18();
    v41 = sub_25BDA6444(v39, v40, aBlock);

    *(v29 + 24) = v41;
    _os_log_impl(&dword_25BD8D000, v24, v65, "OpenAMS action handler for url:%s, headers: %s, body: %s", v29, 0x20u);
    v42 = v66;
    swift_arrayDestroy();
    MEMORY[0x25F87C8F0](v42, -1, -1);
    MEMORY[0x25F87C8F0](v29, -1, -1);

    v43 = *(v83 + 8);
    v43(v20, v15);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
    v43 = *(v83 + 8);
    v43(v20, v15);
    v38 = v70;
  }

  v44 = swift_allocObject();
  v46 = v73;
  v45 = v74;
  v44[2] = v73;
  v44[3] = v45;
  type metadata accessor for AMSPresenter();
  v44[4] = 0;
  v44[5] = 0;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_25BDA8658;
  *(v47 + 24) = v44;
  qword_27FBDDA40 = v47;
  v48 = v46;
  v74 = v45;
  swift_unknownObjectRelease();
  v49 = v75;
  v68(v75, v69, v15);
  v50 = sub_25BDDF648();
  v51 = sub_25BDDFFE8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_25BD8D000, v50, v51, "OpenAMS action handler. Making AMS controller", v52, 2u);
    MEMORY[0x25F87C8F0](v52, -1, -1);
  }

  v43(v49, v15);
  v53 = v78;
  v54 = v80;
  v71(v78, v77, v80);
  v55 = v79;
  v56 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v57 = (v76 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v59 = v82;
  *(v58 + 16) = v48;
  *(v58 + 24) = v59;
  (*(v55 + 32))(v58 + v56, v53, v54);
  *(v58 + v57) = v81;
  *(v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8)) = v38;
  v60 = objc_allocWithZone(NDOAMSUILoadingViewController);
  aBlock[4] = sub_25BDA81EC;
  aBlock[5] = v58;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BDA6394;
  aBlock[3] = &block_descriptor_110;
  v61 = _Block_copy(aBlock);

  v62 = v48;
  swift_unknownObjectRetain();
  v63 = [v60 initWithCreateAMSViewController_];
  _Block_release(v61);

  [v63 setPresenter_];
  sub_25BDA8054(v63, v74);
}

uint64_t sub_25BDA3F74(unint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(void, void, void), uint64_t a6)
{
  v88 = a6;
  v81 = a3;
  v10 = sub_25BDDF668();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v84 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v93 = &v80 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v86 = &v80 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v80 - v18;
  v20 = sub_25BDB7ADC();
  v21 = *(v11 + 16);
  v90 = v20;
  v91 = v21;
  (v21)(v19);

  v22 = sub_25BDDF648();
  v23 = sub_25BDDFFE8();

  v24 = os_log_type_enabled(v22, v23);
  v92 = a5;
  if (v24)
  {
    v85 = v11;
    v83 = v10;
    v89 = a4;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 134218242;
    v82 = a1;
    *(v25 + 4) = a1;
    *(v25 + 12) = 2080;
    if (!a2)
    {
      sub_25BDA7300(MEMORY[0x277D84F90]);
    }

    v27 = sub_25BDDFE18();
    v29 = v28;

    v30 = sub_25BDA6444(v27, v29, aBlock);

    *(v25 + 14) = v30;
    _os_log_impl(&dword_25BD8D000, v22, v23, "Got message from ams. Status: %lu params:%s", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x25F87C8F0](v26, -1, -1);
    MEMORY[0x25F87C8F0](v25, -1, -1);

    v11 = v85;
    v31 = *(v85 + 8);
    v10 = v83;
    v31(v19, v83);
    a4 = v89;
    a5 = v92;
    a1 = v82;
  }

  else
  {

    v31 = *(v11 + 8);
    v31(v19, v10);
  }

  v32 = v93;
  v87 = a2;
  if (!a2)
  {
    goto LABEL_16;
  }

  aBlock[6] = 0xD00000000000001CLL;
  aBlock[7] = 0x800000025BDE4EC0;
  sub_25BDE0108();
  if (!*(a2 + 16) || (v33 = sub_25BDA6A64(aBlock), v34 = v86, (v35 & 1) == 0))
  {
    sub_25BDA8490(aBlock);
LABEL_16:
    v95 = 0u;
    v96 = 0u;
    goto LABEL_17;
  }

  sub_25BDA71F0(*(a2 + 56) + 32 * v33, &v95);
  sub_25BDA8490(aBlock);
  if (!*(&v96 + 1))
  {
LABEL_17:
    sub_25BDA8554(&v95, &qword_27FBDD1B0, &qword_25BDE23F0);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD1B8, &qword_25BDE23F8);
  if (swift_dynamicCast())
  {
    if (*(aBlock[0] + 16))
    {
      v85 = v11;
      v36 = aBlock[0];
      v91(v34, v90, v10);

      v37 = sub_25BDDF648();
      v38 = sub_25BDDFFE8();
      v89 = v36;
      v39 = v38;

      if (os_log_type_enabled(v37, v39))
      {
        v40 = swift_slowAlloc();
        v83 = v10;
        v41 = v40;
        v42 = swift_slowAlloc();
        v82 = v31;
        v43 = a1;
        v44 = v42;
        aBlock[0] = v42;
        *v41 = 136315138;
        v45 = MEMORY[0x25F87BC80](v89, MEMORY[0x277D837D0]);
        v47 = a4;
        v48 = sub_25BDA6444(v45, v46, aBlock);

        *(v41 + 4) = v48;
        a4 = v47;
        v32 = v93;
        _os_log_impl(&dword_25BD8D000, v37, v39, "Found follow ups to dismiss. Dismissing %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        v49 = v44;
        a1 = v43;
        v31 = v82;
        a5 = v92;
        MEMORY[0x25F87C8F0](v49, -1, -1);
        v50 = v41;
        v10 = v83;
        MEMORY[0x25F87C8F0](v50, -1, -1);
      }

      v31(v86, v10);
      v51 = v89;
      v52 = sub_25BDDFEC8();
      v53 = swift_allocObject();
      *(v53 + 16) = v51;
      aBlock[4] = sub_25BDA84E4;
      aBlock[5] = v53;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25BDA4BA4;
      aBlock[3] = &block_descriptor_135;
      v54 = _Block_copy(aBlock);

      [v81 dismissFollowUps:v52 completion:v54];
      _Block_release(v54);
    }

    else
    {
    }
  }

LABEL_18:
  v55 = swift_allocObject();
  *(v55 + 16) = a4;
  if (a1 < 2)
  {
    v82 = v31;
    v91(v32, v90, v10);
    v56 = a4;
    v57 = sub_25BDDF648();
    v58 = v10;
    v59 = sub_25BDDFFE8();
    if (os_log_type_enabled(v57, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v89 = a4;
      v62 = v61;
      aBlock[0] = v61;
      *v60 = 136315138;
      if (a1)
      {
        v63 = 0x7373696D736964;
      }

      else
      {
        v63 = 0x6C65636E6163;
      }

      if (a1)
      {
        v64 = 0xE700000000000000;
      }

      else
      {
        v64 = 0xE600000000000000;
      }

      v65 = sub_25BDA6444(v63, v64, aBlock);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_25BD8D000, v57, v59, "Dismissing AMS UI due to %s signal", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      v66 = v62;
      a4 = v89;
      MEMORY[0x25F87C8F0](v66, -1, -1);
      MEMORY[0x25F87C8F0](v60, -1, -1);

      v67 = v93;
    }

    else
    {

      v67 = v32;
    }

    v82(v67, v58);
    if (a4)
    {
      [v56 dismissViewControllerAnimated:1 completion:0];
    }

    qword_27FBDDA40 = 0;
    swift_unknownObjectRelease();
    qword_27FBDDA48 = 0;
    swift_unknownObjectRelease();
    if (v92)
    {
      v92(v87, 0, 0);
    }
  }

  if (a1 != 2)
  {
    v72 = a4;
  }

  if (a5)
  {
    v68 = swift_allocObject();
    *(v68 + 16) = sub_25BDA841C;
    *(v68 + 24) = v55;
    v69 = a4;
    v70 = v88;
    sub_25BDA6D70(a5, v88);

    a5(v87, sub_25BDA8478, v68);

    return sub_25BDA8480(a5, v70);
  }

  else
  {
    v73 = v84;
    v91(v84, v90, v10);
    v74 = a4;
    v75 = sub_25BDDF648();
    v76 = sub_25BDDFFE8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = a4;
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_25BD8D000, v75, v76, "Dismissing AMS UI due to done signal", v78, 2u);
      v79 = v78;
      a4 = v77;
      MEMORY[0x25F87C8F0](v79, -1, -1);
    }

    v31(v73, v10);
    if (a4)
    {
      [v74 dismissViewControllerAnimated:1 completion:0];
    }

    qword_27FBDDA40 = 0;
    swift_unknownObjectRelease();
    qword_27FBDDA48 = 0;

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_25BDA493C(void *a1, uint64_t a2)
{
  v4 = sub_25BDDF668();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    v10 = sub_25BDB7ADC();
    (*(v5 + 16))(v8, v10, v4);
    v11 = a1;

    v12 = sub_25BDDF648();
    v13 = sub_25BDDFFC8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v14 = 136315394;
      v16 = MEMORY[0x25F87BC80](a2, MEMORY[0x277D837D0]);
      v18 = sub_25BDA6444(v16, v17, &v23);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2112;
      v19 = a1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v20;
      *v15 = v20;
      _os_log_impl(&dword_25BD8D000, v12, v13, "Failed dismissing %s. Error:%@", v14, 0x16u);
      sub_25BDA8554(v15, &unk_27FBDD1D0, &unk_25BDE2410);
      MEMORY[0x25F87C8F0](v15, -1, -1);
      v21 = v22;
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x25F87C8F0](v21, -1, -1);
      MEMORY[0x25F87C8F0](v14, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void sub_25BDA4BA4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_25BDA4C10(uint64_t (*a1)(uint64_t))
{
  v2 = sub_25BDDF668();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25BDB7ADC();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_25BDDF648();
  v8 = sub_25BDDFFE8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_25BD8D000, v7, v8, "Dismissing AMS UI due to done signal", v9, 2u);
    MEMORY[0x25F87C8F0](v9, -1, -1);
  }

  v10 = (*(v3 + 8))(v5, v2);
  return a1(v10);
}

uint64_t sub_25BDA4D7C(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

id sub_25BDA4DBC()
{
  v0 = objc_allocWithZone(MEMORY[0x277D2D0C0]);

  return [v0 init];
}

id sub_25BDA4DF4()
{
  v0 = [objc_opt_self() makePropertiesProvider];

  return v0;
}

uint64_t sub_25BDA4E34(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  qword_27FBDDA40 = a6;
  swift_unknownObjectRelease();
  v16 = swift_allocObject();
  *(v16 + 16) = a7;
  *(v16 + 24) = a8;
  swift_unknownObjectRetain();

  sub_25BDD1DD0(a1, a5, a2, a3, a4, a6, sub_25BDA7074, v16);
}

uint64_t sub_25BDA4F14(char a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = a3;
  v9 = sub_25BDDFDC8();
  v25 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25BDDFDE8();
  v12 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BDA7EE8();
  v15 = sub_25BDE0018();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  v17 = v23;
  *(v16 + 24) = a2;
  *(v16 + 32) = v17;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  aBlock[4] = sub_25BDA7F34;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BDA2E38;
  aBlock[3] = &block_descriptor_67;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  v20 = a5;

  sub_25BDDFDD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25BDA7F44(&qword_27FBDD178, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD180, "\\b");
  sub_25BDA7F8C();
  sub_25BDE00C8();
  MEMORY[0x25F87BDC0](0, v14, v11, v18);
  _Block_release(v18);

  (*(v25 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v24);
}

uint64_t sub_25BDA51F8(char a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = sub_25BDDF668();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v13 = sub_25BDB7ADC();
    (*(v10 + 16))(v12, v13, v9);
    v14 = a2;
    v15 = sub_25BDDF648();
    v16 = sub_25BDDFFC8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = a5;
      v18 = v17;
      v27 = swift_slowAlloc();
      v29 = a2;
      v30 = v27;
      *v18 = 136315138;
      v19 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD190, &unk_25BDE23D0);
      v20 = sub_25BDDFE68();
      v22 = a3;
      v23 = sub_25BDA6444(v20, v21, &v30);

      *(v18 + 4) = v23;
      a3 = v22;
      _os_log_impl(&dword_25BD8D000, v15, v16, "ams container failed with error: %s", v18, 0xCu);
      v24 = v27;
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x25F87C8F0](v24, -1, -1);
      v25 = v18;
      a5 = v28;
      MEMORY[0x25F87C8F0](v25, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }

  return a3(a5);
}

void sub_25BDA5420(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_25BDA54AC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {

    v4 = v2;
    v2 = sub_25BDDF428();
    v6 = v5;
  }

  else
  {

    v6 = 0xF000000000000000;
  }

  v3(v2, v6);
  sub_25BDA7298(v2, v6);
}

uint64_t sub_25BDA5568()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_25BDA5684;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD160, &unk_25BDE23C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25BDA5788;
  v0[13] = &block_descriptor_49;
  v0[14] = v2;
  [v1 getLocalDeviceListWithReply_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25BDA5684()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_25BDA5788(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    a2 = sub_25BDDF428();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v7 = *(*(v3 + 64) + 40);
  *v7 = a2;
  v7[1] = v6;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_25BDA582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = *v6;
  v11[4] = a1;
  v11[5] = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_25BDA54AC;
  v11[3] = a5;
  v9 = _Block_copy(v11);

  [v8 *a6];
  _Block_release(v9);
}

uint64_t sub_25BDA58FC()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_25BDA8698;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD160, &unk_25BDE23C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25BDA5788;
  v0[13] = &block_descriptor_43;
  v0[14] = v2;
  [v1 getRemoteDeviceListWithReply_];

  return MEMORY[0x282200938](v0 + 2);
}

void sub_25BDA5A18(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *v3;
  if (a3 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_25BDDF418();
  }

  v7 = v6;
  [v5 removePromoSectionWithHashValue:a1 andAckData:?];
}

uint64_t sub_25BDA5A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = sub_25BDDFE38();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_25BDA54AC;
  v11[3] = &block_descriptor_40;
  v9 = _Block_copy(v11);

  [v7 getLocalDeviceWarrantyForSerialNumber:v8 withReply:v9];
  _Block_release(v9);
}

uint64_t sub_25BDA5B5C(uint64_t a1, uint64_t a2)
{
  v3[20] = a1;
  v3[21] = a2;
  v3[22] = *v2;
  return MEMORY[0x2822009F8](sub_25BDA5B84, 0, 0);
}

uint64_t sub_25BDA5B84()
{
  v1 = v0[22];
  v2 = sub_25BDDFE38();
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_25BDA5CBC;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD160, &unk_25BDE23C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25BDA5788;
  v0[13] = &block_descriptor_37;
  v0[14] = v3;
  [v1 getLocalDeviceWarrantyForSerialNumber:v2 withReply:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25BDA5CBC()
{
  v5 = *v0;
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 152);

  v3 = *(v5 + 8);

  return v3(v1, v2);
}

uint64_t sub_25BDA5DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = sub_25BDDFE38();
  v10 = sub_25BDDFDF8();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_25BDA54AC;
  v13[3] = &block_descriptor_34;
  v11 = _Block_copy(v13);

  [v8 getRemoteDeviceWarrantyForSerialNumber:v9 withAdditionalHeaders:v10 withReply:v11];
  _Block_release(v11);
}

uint64_t sub_25BDA5EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a1;
  v4[21] = a2;
  v5 = *v3;
  v4[22] = a3;
  v4[23] = v5;
  return MEMORY[0x2822009F8](sub_25BDA5F0C, 0, 0);
}

uint64_t sub_25BDA5F0C()
{
  v1 = v0[23];
  v2 = sub_25BDDFE38();
  v0[24] = v2;
  v3 = sub_25BDDFDF8();
  v0[25] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_25BDA606C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD160, &unk_25BDE23C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25BDA5788;
  v0[13] = &block_descriptor_31;
  v0[14] = v4;
  [v1 getRemoteDeviceWarrantyForSerialNumber:v2 withAdditionalHeaders:v3 withReply:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25BDA606C()
{
  v1 = *(*v0 + 192);
  v6 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 152);

  v4 = *(v6 + 8);

  return v4(v2, v3);
}

uint64_t sub_25BDA61B0()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_25BDA61E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_25BDA635C()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_25BDA6394(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_25BDA8148, v4);
}

void *sub_25BDA6428@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_25BDA6444(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25BDA6510(v11, 0, 0, 1, a1, a2);
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
    sub_25BDA71F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25BDA6510(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25BDA661C(a5, a6);
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
    result = sub_25BDE0148();
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

void *sub_25BDA661C(uint64_t a1, unint64_t a2)
{
  v3 = sub_25BDA6668(a1, a2);
  sub_25BDA6798(&unk_286D6F6A8);
  return v3;
}

void *sub_25BDA6668(uint64_t a1, unint64_t a2)
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

  v6 = sub_25BDA6884(v5, 0);
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

  result = sub_25BDE0148();
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
        v10 = sub_25BDDFEA8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25BDA6884(v10, 0);
        result = sub_25BDE0118();
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

uint64_t sub_25BDA6798(uint64_t result)
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

  result = sub_25BDA68F8(result, v11, 1, v3);
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

void *sub_25BDA6884(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD198, &unk_25BDE2730);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25BDA68F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD198, &unk_25BDE2730);
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

unint64_t sub_25BDA69EC(uint64_t a1, uint64_t a2)
{
  sub_25BDE0238();
  sub_25BDDFE88();
  v4 = sub_25BDE0258();

  return sub_25BDA6AA8(a1, a2, v4);
}

unint64_t sub_25BDA6A64(uint64_t a1)
{
  v2 = sub_25BDE00E8();

  return sub_25BDA6B60(a1, v2);
}

unint64_t sub_25BDA6AA8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25BDE01C8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25BDA6B60(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25BDA85B4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F87BE90](v9, a1);
      sub_25BDA8490(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25BDA6C28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD9B0, "L\"");
    v3 = sub_25BDE0198();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_25BDA69EC(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25BDA6D70(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
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

void sub_25BDA6DC8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (a1)
  {
    v4 = a1;
    sub_25BDA743C(v4, v2, v3);
  }

  else
  {
    (v2)();
  }
}

unint64_t sub_25BDA6E40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD1A0, &qword_25BDE23E0);
    v3 = sub_25BDE0198();
    v4 = a1 + 32;

    while (1)
    {
      sub_25BDA84EC(v4, &v13, &qword_27FBDD1A8, &qword_25BDE23E8);
      v5 = v13;
      v6 = v14;
      result = sub_25BDA69EC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25BDA818C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
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

uint64_t sub_25BDA6FBC(char a1)
{
  v3 = *(sub_25BDDF408() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25BDA2E7C(a1, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25BDA7074(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (a1)
  {

    v7 = a1;
    sub_25BDA7C00(v7, v2, v3);

    v5 = v7;
  }

  else
  {
    type metadata accessor for NDOErrors(0);
    sub_25BDA7F44(&qword_27FBDD168, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v2(0, v6);
    v5 = v6;
  }
}

void type metadata accessor for NDOAppleCareViewPresentationCompletionStatus()
{
  if (!qword_27FBDD158)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FBDD158);
    }
  }
}

uint64_t sub_25BDA71F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25BDA7298(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25BDA72AC(a1, a2);
  }

  return a1;
}

uint64_t sub_25BDA72AC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_25BDA7300(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD1C0, &qword_25BDE2400);
    v3 = sub_25BDE0198();
    v4 = a1 + 32;

    while (1)
    {
      sub_25BDA84EC(v4, v13, &unk_27FBDD9C0, &qword_25BDE2408);
      result = sub_25BDA6A64(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_25BDA818C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_25BDA743C(void *a1, void (*a2)(void *), uint64_t a3)
{
  v6 = sub_25BDDF668();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 loadAMSUIView];
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = a1;
    aBlock[4] = sub_25BDA8660;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDA5420;
    aBlock[3] = &block_descriptor_90;
    v13 = _Block_copy(aBlock);
    v14 = v11;

    v15 = a1;

    [v14 addFinishBlock_];
    _Block_release(v13);
  }

  else
  {
    v16 = sub_25BDB7ADC();
    (*(v7 + 16))(v9, v16, v6);
    v17 = sub_25BDDF648();
    v18 = sub_25BDDFFC8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_25BD8D000, v17, v18, "Unable to get promise to preload ams container", v19, 2u);
      MEMORY[0x25F87C8F0](v19, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    a2(a1);
  }
}

void sub_25BDA76A4(void *a1, void (*a2)(void *, void), uint64_t a3)
{
  v6 = sub_25BDDF668();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  v11 = [a1 loadAMSUIView];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    v13[2] = sub_25BDA815C;
    v13[3] = v10;
    v13[4] = a1;
    aBlock[4] = sub_25BDA8660;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDA5420;
    aBlock[3] = &block_descriptor_100;
    v14 = _Block_copy(aBlock);
    v15 = v12;

    v16 = a1;

    [v15 addFinishBlock_];
    _Block_release(v14);
  }

  else
  {
    v17 = sub_25BDB7ADC();
    (*(v7 + 16))(v9, v17, v6);
    v18 = sub_25BDDF648();
    v19 = sub_25BDDFFC8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_25BD8D000, v18, v19, "Unable to get promise to preload ams container", v20, 2u);
      MEMORY[0x25F87C8F0](v20, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    a2(a1, 0);
  }
}

void sub_25BDA7954(void *a1, void (*a2)(void *), uint64_t a3)
{
  v6 = sub_25BDDF668();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  v11 = [a1 loadAMSUIView];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    v13[2] = sub_25BDA83B4;
    v13[3] = v10;
    v13[4] = a1;
    aBlock[4] = sub_25BDA8660;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDA5420;
    aBlock[3] = &block_descriptor_123;
    v14 = _Block_copy(aBlock);
    v15 = v12;

    v16 = a1;

    [v15 addFinishBlock_];
    _Block_release(v14);
  }

  else
  {
    v17 = sub_25BDB7ADC();
    (*(v7 + 16))(v9, v17, v6);
    v18 = sub_25BDDF648();
    v19 = sub_25BDDFFC8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_25BD8D000, v18, v19, "Unable to get promise to preload ams container", v20, 2u);
      MEMORY[0x25F87C8F0](v20, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    a2(a1);
  }
}

void sub_25BDA7C00(void *a1, void (*a2)(void *, void), uint64_t a3)
{
  v6 = sub_25BDDF668();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  v11 = [a1 loadAMSUIView];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    v13[2] = sub_25BDA7EB0;
    v13[3] = v10;
    v13[4] = a1;
    aBlock[4] = sub_25BDA7EDC;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDA5420;
    aBlock[3] = &block_descriptor_61;
    v14 = _Block_copy(aBlock);
    v15 = v12;

    v16 = a1;

    [v15 addFinishBlock_];
    _Block_release(v14);
  }

  else
  {
    v17 = sub_25BDB7ADC();
    (*(v7 + 16))(v9, v17, v6);
    v18 = sub_25BDDF648();
    v19 = sub_25BDDFFC8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_25BD8D000, v18, v19, "Unable to get promise to preload ams container", v20, 2u);
      MEMORY[0x25F87C8F0](v20, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    a2(a1, 0);
  }
}

unint64_t sub_25BDA7EE8()
{
  result = qword_27FBDD170;
  if (!qword_27FBDD170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBDD170);
  }

  return result;
}

uint64_t sub_25BDA7F44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25BDA7F8C()
{
  result = qword_27FBDD188;
  if (!qword_27FBDD188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD180, "\\b");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD188);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_25BDA8054(void *a1, void *a2)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1 || v5 == 6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  [a1 setModalInPresentation_];
  [a1 setModalPresentationStyle_];
  v8 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [a2 presentViewController:v8 animated:1 completion:0];
}

_OWORD *sub_25BDA818C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25BDA81EC(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_25BDDF408() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = qword_27FBDDA40;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  swift_unknownObjectRetain();

  sub_25BDD1DD0(v8, v9, v2 + v6, v10, v11, v12, sub_25BDA8328, v13);

  return swift_unknownObjectRelease();
}

void sub_25BDA8328(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (a1)
  {

    v5 = a1;
    sub_25BDA7954(v5, v2, v3);
  }

  else
  {
    (v2)();
  }
}

uint64_t objectdestroy_57Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25BDA841C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 dismissViewControllerAnimated:1 completion:0];
  }

  qword_27FBDDA40 = 0;
  swift_unknownObjectRelease();
  qword_27FBDDA48 = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_25BDA8480(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25BDA84EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25BDA8554(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static NDOCoverageCentralViewController.pathKey.getter()
{
  swift_beginAccess();
  v0 = xmmword_27FBDD240;

  return v0;
}

uint64_t static NDOCoverageCentralViewController.pathKey.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *&xmmword_27FBDD240 = a1;
  *(&xmmword_27FBDD240 + 1) = a2;
}

Swift::Void __swiftcall NDOCoverageCentralViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v1.super_class = NDOCoverageCentralViewController;
  objc_msgSendSuper2(&v1, sel_viewDidAppear_, 1);
  sub_25BDA8954();
}

uint64_t sub_25BDA8954()
{
  v1 = v0;
  v2 = sub_25BDDF408();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  sub_25BDDF3F8();
  sub_25BDA84EC(v11, v9, &unk_27FBDD9A0, &unk_25BDE2670);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_25BDA8554(v11, &unk_27FBDD9A0, &unk_25BDE2670);
    v11 = v9;
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    v12 = sub_25BDDFE38();
    v13 = sub_25BDABB00(0xD000000000000014, 0x800000025BDE5130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD430, &unk_25BDE2490);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25BDE2430;
    *(v14 + 32) = sub_25BDABB00(0x6C6172656E6547, 0xE700000000000000);
    sub_25BDABD64(0, &qword_27FBDD288, 0x277CCAEB8);
    v15 = sub_25BDDFEC8();

    v16 = sub_25BDDF3C8();
    [v1 pe:v12 emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:v13 title:v15 localizedNavigationComponents:v16 deepLink:?];

    (*(v3 + 8))(v5, v2);
  }

  return sub_25BDA8554(v11, &unk_27FBDD9A0, &unk_25BDE2670);
}

Swift::Void __swiftcall NDOCoverageCentralViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_25BDDF668();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.receiver = v2;
  v33.super_class = NDOCoverageCentralViewController;
  objc_msgSendSuper2(&v33, sel_viewWillAppear_, a1);
  if (([v2 firstLoadRequestStarted] & 1) == 0)
  {
    [v2 setFirstLoadRequestStarted_];
    if ([objc_opt_self() isSignedIntoAppleAccount])
    {
      v9 = [v2 specifier];
      if (v9)
      {
        v10 = v9;
        *&v30 = v9;
        swift_getKeyPath();
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v12 + 24) = ObjectType;
        v13 = sub_25BDDF3A8();

        [v2 setPathObserver_];

        v14 = [v2 specifier];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 userInfo];

          if (v16)
          {
            sub_25BDE00B8();
            swift_unknownObjectRelease();
          }

          else
          {
            v28 = 0u;
            v29 = 0u;
          }

          v30 = v28;
          v31 = v29;
          if (*(&v29 + 1))
          {
            sub_25BDABD64(0, &qword_27FBDD250, 0x277CBEAC0);
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_24:
              sub_25BDA9A08(0, 0, 0, 0);
              sub_25BDC07B4(0, 0);
              return;
            }

            v21 = v27;
            swift_beginAccess();
            v28 = xmmword_27FBDD240;

            v22 = [v21 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v22)
            {
              sub_25BDE00B8();
              swift_unknownObjectRelease();
            }

            else
            {
              v28 = 0u;
              v29 = 0u;
            }

            v30 = v28;
            v31 = v29;
            if (*(&v29 + 1))
            {
              if (swift_dynamicCast())
              {
                v23 = HIBYTE(v26) & 0xF;
                if ((v26 & 0x2000000000000000) == 0)
                {
                  v23 = v25 & 0xFFFFFFFFFFFFLL;
                }

                if (v23)
                {
                  sub_25BDA96E8(v25, v26);

                  sub_25BDC07B4(1, 0);

                  return;
                }
              }

              else
              {
              }

              goto LABEL_24;
            }
          }

          sub_25BDA8554(&v30, &qword_27FBDD1B0, &qword_25BDE23F0);
          goto LABEL_24;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v17 = sub_25BDB7ADC();
    (*(v6 + 16))(v8, v17, v5);
    v18 = sub_25BDDF648();
    v19 = sub_25BDDFFC8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_25BD8D000, v18, v19, "Not loading coverage central due to no signed in account", v20, 2u);
      MEMORY[0x25F87C8F0](v20, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    *(&v31 + 1) = sub_25BDDFB58();
    v32 = MEMORY[0x277D74D18];
    __swift_allocate_boxed_opaque_existential_1(&v30);
    sub_25BDC42D8();
    sub_25BDE0008();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

double sub_25BDA91E8@<D0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  if ([*a1 userInfo])
  {
    sub_25BDE00B8();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_25BDA9258(uint64_t a1, void **a2)
{
  sub_25BDA84EC(a1, v11, &qword_27FBDD1B0, &qword_25BDE23F0);
  v3 = *a2;
  v4 = v12;
  if (v12)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x28223BE20](v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_25BDE01B8();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
  }

  [v3 setUserInfo_];
  return swift_unknownObjectRelease();
}

void sub_25BDA93A8(id *a1, uint64_t a2)
{
  v3 = sub_25BDDF668();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*a1 userInfo])
  {
    sub_25BDE00B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (!*(&v23 + 1))
  {
    goto LABEL_20;
  }

  sub_25BDABD64(0, &qword_27FBDD250, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v7 = v21;
  swift_beginAccess();
  v22 = xmmword_27FBDD240;

  v8 = [v7 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v8)
  {
    sub_25BDE00B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (!*(&v23 + 1))
  {

LABEL_20:
    sub_25BDA8554(&v24, &qword_27FBDD1B0, &qword_25BDE23F0);
    return;
  }

  if (swift_dynamicCast())
  {
    v10 = v19;
    v9 = v20;
    v11 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v11 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = sub_25BDB7ADC();
      (*(v4 + 16))(v6, v12, v3);
      v13 = sub_25BDDF648();
      v14 = sub_25BDDFFE8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_25BD8D000, v13, v14, "Handling deeplink while already loaded", v15, 2u);
        MEMORY[0x25F87C8F0](v15, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
        sub_25BDA96E8(v10, v9);
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

id sub_25BDA96E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25BDDF668();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = sub_25BDDFB58();
  v24[4] = MEMORY[0x277D74D18];
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_25BDDFB48();
  sub_25BDE0008();
  v10 = [v2 embeddedController];
  if (v10)
  {
    v11 = v10;
    [v10 willMoveToParentViewController_];
    result = [v11 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v13 = result;
    [result removeFromSuperview];

    [v11 removeFromParentViewController];
    [v3 setEmbeddedController_];
  }

  v23 = a1;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v15 = sub_25BDA865C();
  v16 = sub_25BDA8664();
  v17 = sub_25BDA31BC(v15, v16, v3, sub_25BDAB5B8, v14);

  swift_unknownObjectRelease();
  v18 = sub_25BDB7ADC();
  (*(v7 + 16))(v9, v18, v6);
  v19 = sub_25BDDF648();
  v20 = sub_25BDDFFE8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_25BD8D000, v19, v20, "Invoking link handler link handler", v21, 2u);
    MEMORY[0x25F87C8F0](v21, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();

  (v17)(v23, a2, sub_25BDAB734, v22);
}

uint64_t sub_25BDA9A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for NDOSignpost(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  v38[3] = sub_25BDDFB58();
  v38[4] = MEMORY[0x277D74D18];
  __swift_allocate_boxed_opaque_existential_1(v38);
  sub_25BDDFB48();
  sub_25BDE0008();
  v17 = MEMORY[0x277D84F98];
  v38[0] = MEMORY[0x277D84F98];
  if (a2)
  {
    v18 = [v5 authTokenHeaderKey];
    v19 = sub_25BDDFE48();
    v36 = v5;
    v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = a3;
    v21 = a4;
    v22 = v11;
    v23 = v19;
    v24 = a1;
    v25 = v16;
    v27 = v26;

    v28 = v24;
    v29 = v23;
    v11 = v22;
    a4 = v21;
    a3 = v20;
    v5 = v36;
    v14 = v37;
    v30 = v27;
    v16 = v25;
    sub_25BDAAE80(v28, a2, v29, v30);
    v17 = v38[0];
  }

  sub_25BDA23D4(v16, 0);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_25BDAB79C(v16, v14);
  v32 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v33 = swift_allocObject();
  v33[2] = v31;
  v33[3] = a3;
  v33[4] = a4;
  sub_25BDAB800(v14, v33 + v32);

  sub_25BDA6D70(a3, a4);
  sub_25BDA2488(v5, v17, sub_25BDAB864, v33);

  sub_25BDAB92C(v16);
}

Swift::Void __swiftcall NDOCoverageCentralViewController.viewDidLoad()()
{
  v4.super_class = NDOCoverageCentralViewController;
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemGroupedBackgroundColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t NDOCoverageCentralViewController.handleURL(_:withCompletion:)(uint64_t a1, void (*a2)(uint64_t), void *a3)
{
  v4 = v3;
  v8 = sub_25BDDF668();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v52 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v58 = v52 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = v52 - v18;
  v20 = [objc_opt_self() isSignedIntoAppleAccount];
  v21 = sub_25BDB7ADC();
  v22 = *(v9 + 16);
  if (v20)
  {
    v56 = v9 + 16;
    v57 = v15;
    v52[1] = a3;
    v53 = a2;
    v54 = v21;
    v55 = v22;
    (v22)(v19);

    v23 = sub_25BDDF648();
    v24 = sub_25BDDFFE8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v52[0] = swift_slowAlloc();
      v62[0] = v52[0];
      *v25 = 136315138;
      v61[0] = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD258, &qword_25BDE2488);
      v26 = sub_25BDDFE68();
      v28 = v4;
      v29 = v8;
      v30 = v9;
      v31 = sub_25BDA6444(v26, v27, v62);

      *(v25 + 4) = v31;
      v9 = v30;
      v8 = v29;
      v4 = v28;
      _os_log_impl(&dword_25BD8D000, v23, v24, "Handling URL dictionary: %s", v25, 0xCu);
      v32 = v52[0];
      __swift_destroy_boxed_opaque_existential_0(v52[0]);
      MEMORY[0x25F87C8F0](v32, -1, -1);
      MEMORY[0x25F87C8F0](v25, -1, -1);
    }

    v33 = *(v9 + 8);
    result = v33(v19, v8);
    v35 = v58;
    if (!a1)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v59 = 1752457584;
    v60 = 0xE400000000000000;
    sub_25BDE0108();
    if (*(a1 + 16) && (v36 = sub_25BDA6A64(v62), (v37 & 1) != 0))
    {
      sub_25BDA71F0(*(a1 + 56) + 32 * v36, v61);
      sub_25BDA8490(v62);
      result = swift_dynamicCast();
      if (result)
      {
        v39 = v59;
        v38 = v60;
        v55(v35, v54, v8);

        v40 = sub_25BDDF648();
        v41 = sub_25BDDFFE8();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v62[0] = v43;
          *v42 = 136315138;
          *(v42 + 4) = sub_25BDA6444(v39, v38, v62);
          _os_log_impl(&dword_25BD8D000, v40, v41, "Found path: %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x25F87C8F0](v43, -1, -1);
          MEMORY[0x25F87C8F0](v42, -1, -1);

          v44 = v58;
        }

        else
        {

          v44 = v35;
        }

        v33(v44, v8);
        v48 = v53;
        [v4 setFirstLoadRequestStarted_];
        sub_25BDA96E8(v39, v38);
        v55(v57, v54, v8);
        v49 = sub_25BDDF648();
        v50 = sub_25BDDFFE8();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_25BD8D000, v49, v50, "Calling completion", v51, 2u);
          MEMORY[0x25F87C8F0](v51, -1, -1);
        }

        result = v33(v57, v8);
        if (v48)
        {
          v48(result);
        }

        goto LABEL_21;
      }
    }

    else
    {
      return sub_25BDA8490(v62);
    }
  }

  else
  {
    v22(v12, v21, v8);
    v45 = sub_25BDDF648();
    v46 = sub_25BDDFFC8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_25BD8D000, v45, v46, "Not handling universal link due to no signed in account", v47, 2u);
      MEMORY[0x25F87C8F0](v47, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v62[3] = sub_25BDDFB58();
    v62[4] = MEMORY[0x277D74D18];
    __swift_allocate_boxed_opaque_existential_1(v62);
    sub_25BDC42D8();
    return sub_25BDE0008();
  }

  return result;
}

void sub_25BDAA580(void *a1, char a2, uint64_t a3)
{
  v5 = sub_25BDDF668();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if ((a2 & 1) == 0)
    {
      if (a1)
      {
        v14 = a1;
        v15 = sub_25BDB7ADC();
        (*(v6 + 16))(v9, v15, v5);
        v16 = sub_25BDDF648();
        v17 = sub_25BDDFFE8();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_25BD8D000, v16, v17, "Presenting universal link in context", v18, 2u);
          MEMORY[0x25F87C8F0](v18, -1, -1);
        }

        (*(v6 + 8))(v9, v5);
        v19 = v14;
        sub_25BDAA830(a1);

        v13 = v19;
      }

      else
      {
        v20 = sub_25BDB7ADC();
        (*(v6 + 16))(v11, v20, v5);
        v21 = sub_25BDDF648();
        v22 = sub_25BDDFFC8();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_25BD8D000, v21, v22, "Universal link presentation was not handled, but there was no provided view controller - falling back to coverage central", v23, 2u);
          MEMORY[0x25F87C8F0](v23, -1, -1);
        }

        (*(v6 + 8))(v11, v5);
        sub_25BDA9A08(0, 0, 0, 0);
      }
    }
  }
}

void sub_25BDAA830(void *a1)
{
  v2 = v1;
  v4 = sub_25BDDF668();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v54 = a1;
    v8 = [v54 view];
    if (v8)
    {
      v9 = v8;
      [v8 setTranslatesAutoresizingMaskIntoConstraints_];

      [v2 addChildViewController_];
      v10 = [v2 view];
      if (v10)
      {
        v11 = v10;
        v12 = [v54 view];
        if (v12)
        {
          v13 = v12;
          [v11 addSubview_];

          v57 = 0;
          v55 = 0u;
          v56 = 0u;
          sub_25BDE0008();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD430, &unk_25BDE2490);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_25BDE2440;
          v15 = [v54 view];
          if (v15)
          {
            v16 = v15;
            v17 = [v15 topAnchor];

            v18 = [v2 view];
            if (v18)
            {
              v19 = v18;
              v20 = [v18 topAnchor];

              v21 = [v17 constraintEqualToAnchor_];
              *(v14 + 32) = v21;
              v22 = [v54 view];
              if (v22)
              {
                v23 = v22;
                v24 = [v22 bottomAnchor];

                v25 = [v2 view];
                if (v25)
                {
                  v26 = v25;
                  v27 = [v25 bottomAnchor];

                  v28 = [v24 constraintEqualToAnchor_];
                  *(v14 + 40) = v28;
                  v29 = [v54 view];
                  if (v29)
                  {
                    v30 = v29;
                    v31 = [v29 leadingAnchor];

                    v32 = [v2 view];
                    if (v32)
                    {
                      v33 = v32;
                      v34 = [v32 safeAreaLayoutGuide];

                      v35 = [v34 leadingAnchor];
                      v36 = [v31 constraintEqualToAnchor_];

                      *(v14 + 48) = v36;
                      v37 = [v54 view];
                      if (v37)
                      {
                        v38 = v37;
                        v39 = [v37 trailingAnchor];

                        v40 = [v2 view];
                        if (v40)
                        {
                          v41 = v40;
                          v42 = objc_opt_self();
                          v43 = [v41 safeAreaLayoutGuide];

                          v44 = [v43 trailingAnchor];
                          v45 = [v39 constraintEqualToAnchor_];

                          *(v14 + 56) = v45;
                          sub_25BDABD64(0, &qword_27FBDD280, 0x277CCAAD0);
                          v46 = sub_25BDDFEC8();

                          [v42 activateConstraints_];

                          [v54 didMoveToParentViewController_];
                          [v2 setEmbeddedController_];
                          v47 = v54;

                          return;
                        }

LABEL_29:
                        __break(1u);
                        return;
                      }

LABEL_28:
                      __break(1u);
                      goto LABEL_29;
                    }

LABEL_27:
                    __break(1u);
                    goto LABEL_28;
                  }

LABEL_26:
                  __break(1u);
                  goto LABEL_27;
                }

LABEL_25:
                __break(1u);
                goto LABEL_26;
              }

LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  v48 = sub_25BDB7ADC();
  (*(v5 + 16))(v7, v48, v4);
  v49 = sub_25BDDF648();
  v50 = sub_25BDDFFC8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_25BD8D000, v49, v50, "Unable to embed nil view controller, displaying error state", v51, 2u);
    MEMORY[0x25F87C8F0](v51, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(&v56 + 1) = sub_25BDDFB58();
  v57 = MEMORY[0x277D74D18];
  __swift_allocate_boxed_opaque_existential_1(&v55);

  sub_25BDC4414(sub_25BDAB73C, v52);

  sub_25BDE0008();
}

uint64_t sub_25BDAAE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_25BDAB430(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_25BDA69EC(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_25BDAB988();
        v16 = v18;
      }

      result = sub_25BDAB280(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_25BDAAFC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD9B0, "L\"");
  v37 = v4;
  result = sub_25BDE0188();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_25BDE0238();
      sub_25BDDFE88();
      result = sub_25BDE0258();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25BDAB280(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25BDE00D8() + 1) & ~v5;
    do
    {
      sub_25BDE0238();

      sub_25BDDFE88();
      v9 = sub_25BDE0258();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25BDAB430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25BDA69EC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_25BDAAFC0(v18, a5 & 1);
      v13 = sub_25BDA69EC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_25BDE01E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_25BDAB988();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_25BDAB5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if (a1)
    {
      v8 = [result authTokenHeaderKey];
      v9 = sub_25BDDFE48();
      v11 = v10;

      *&v19 = v9;
      *(&v19 + 1) = v11;
      sub_25BDE0108();
      if (*(a1 + 16))
      {
        v12 = sub_25BDA6A64(v18);
        if (v13)
        {
          sub_25BDA71F0(*(a1 + 56) + 32 * v12, &v19);
          sub_25BDA8490(v18);
          if (*(&v20 + 1))
          {
            v14 = swift_dynamicCast();
            v15 = v14 == 0;
            if (v14)
            {
              v16 = v18[0];
            }

            else
            {
              v16 = 0;
            }

            if (v15)
            {
              v17 = 0;
            }

            else
            {
              v17 = v18[1];
            }

            goto LABEL_15;
          }

LABEL_14:
          sub_25BDA8554(&v19, &qword_27FBDD1B0, &qword_25BDE23F0);
          v16 = 0;
          v17 = 0;
LABEL_15:
          sub_25BDA9A08(v16, v17, a2, a3);
        }
      }

      sub_25BDA8490(v18);
    }

    v19 = 0u;
    v20 = 0u;
    goto LABEL_14;
  }

  return result;
}

void sub_25BDAB73C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_25BDA9A08(0, 0, 0, 0);
  }
}

uint64_t sub_25BDAB79C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSignpost(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BDAB800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSignpost(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25BDAB864(void *a1)
{
  v2 = v1;
  type metadata accessor for NDOSignpost(0);
  v4 = *(v2 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_25BDAA830(a1);
    if (v4)
    {
      v4();
    }

    sub_25BDB4990();
  }
}

uint64_t sub_25BDAB92C(uint64_t a1)
{
  v2 = type metadata accessor for NDOSignpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_25BDAB988()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD9B0, "L\"");
  v2 = *v0;
  v3 = sub_25BDE0178();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_25BDABB00(uint64_t a1, uint64_t a2)
{
  v2 = sub_25BDDF408();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25BDDF468();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() currentLocale];
  sub_25BDDF458();

  type metadata accessor for NDOCoverageCentralViewController(v11);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = [v13 bundleURL];

  sub_25BDDF3E8();
  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v16 = sub_25BDDFE38();
  v17 = sub_25BDDF448();
  v18 = sub_25BDDF3C8();
  v19 = [v15 initWithKey:v16 table:0 locale:v17 bundleURL:v18];

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  return v19;
}

uint64_t sub_25BDABD64(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_25BDABDB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id, void), uint64_t a7)
{
  v26 = a7;
  v27 = a6;
  v24 = a3;
  v25 = a4;
  v10 = sub_25BDDF408();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a2, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  (*(v11 + 32))(v17 + v14, v13, v10);
  v18 = v25;
  *(v17 + v15) = v24;
  *(v17 + v16) = v18;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v19 = objc_allocWithZone(NDOAMSUILoadingViewController);
  aBlock[4] = sub_25BDAC910;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BDA6394;
  aBlock[3] = &block_descriptor_16;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  swift_unknownObjectRetain();
  v22 = [v19 initWithCreateAMSViewController_];
  _Block_release(v20);

  [v22 setPresenter_];
  v23 = v22;
  v27(v22, 0);
}

void sub_25BDAC21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_25BDDF398();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

NDOAMSUIComposition __swiftcall NDOAMSUIComposition.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_25BDAC334(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a8;
  v42 = a5;
  v39 = a4;
  v40 = a9;
  v46 = sub_25BDDFDC8();
  v49 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25BDDFDE8();
  v47 = *(v15 - 8);
  v48 = v15;
  MEMORY[0x28223BE20](v15);
  v43 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25BDDF408();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a6;
  *(v21 + 24) = a7;
  v22 = v21;
  v41 = v21;

  v37 = sub_25BDA25C8(a1, a3, sub_25BDAC7A0, v22);
  sub_25BDABD64(0, &qword_27FBDD170, 0x277D85C78);
  v38 = sub_25BDE0018();
  (*(v18 + 16))(v20, a2, v17);
  v23 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v24 = (v19 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  (*(v18 + 32))(v27 + v23, v20, v17);
  v28 = v40;
  *(v27 + v24) = v39;
  *(v27 + v25) = v42;
  *(v27 + v26) = v37;
  v29 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v29 = v44;
  v29[1] = v28;
  aBlock[4] = sub_25BDAC7E8;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BDA2E38;
  aBlock[3] = &block_descriptor_0;
  v30 = _Block_copy(aBlock);
  v31 = a1;

  swift_unknownObjectRetain();

  v32 = v43;
  sub_25BDDFDD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25BDAC8B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD180, "\\b");
  sub_25BDA7F8C();
  v34 = v45;
  v33 = v46;
  sub_25BDE00C8();
  v35 = v38;
  MEMORY[0x25F87BDC0](0, v32, v34, v30);
  _Block_release(v30);

  swift_unknownObjectRelease();

  (*(v49 + 8))(v34, v33);
  return (*(v47 + 8))(v32, v48);
}

uint64_t sub_25BDAC7A0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = (*(v2 + 16))(a1);
  if (a2)
  {
    return a2(result);
  }

  return result;
}

void sub_25BDAC7E8()
{
  v1 = *(sub_25BDDF408() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_25BDABDB8(v6, v0 + v2, v7, v8, v9, v11, v12);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25BDAC8B8()
{
  result = qword_27FBDD178;
  if (!qword_27FBDD178)
  {
    sub_25BDDFDC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD178);
  }

  return result;
}

uint64_t sub_25BDAC910(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_25BDDF408() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  v14 = sub_25BDA4DF4();
  sub_25BDA4E34(v9, v2 + v6, v10, v11, v14, v12, sub_25BDA83B4, v13);
  swift_unknownObjectRelease();
}

uint64_t sub_25BDACA58@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D2B6D0];
  v3 = sub_25BDDF7D8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25BDACB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BDDF7D8();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 208))(v6);
}

uint64_t sub_25BDACC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25BDDF7D8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_25BDACCC8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 640))();

  v3 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__state;
  swift_beginAccess();
  v4 = sub_25BDDF7D8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_25BDACD94(uint64_t a1)
{
  swift_getKeyPath();
  v5 = v1;
  v6 = a1;
  (*(*v1 + 648))();

  v3 = sub_25BDDF7D8();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t sub_25BDACE6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BDDF7D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__state;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

uint64_t (*sub_25BDACFAC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 640))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDB4550(&qword_27FBDD290, type metadata accessor for DeviceWarrantyViewModel, &protocol conformance descriptor for DeviceWarrantyViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDACACC(v4);
  return sub_25BDAD0FC;
}

uint64_t type metadata accessor for DeviceWarrantyViewModel(uint64_t a1)
{
  result = qword_27FBDDD20;
  if (!qword_27FBDDD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BDAD210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_25BDA84EC(a1, &v8 - v5, &qword_27FBDD298, &unk_25BDE2B20);
  return (*(**a2 + 256))(v6);
}

uint64_t sub_25BDAD340(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-v4];
  v6 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataDate;
  swift_beginAccess();
  sub_25BDA84EC(v1 + v6, v5, &qword_27FBDD298, &unk_25BDE2B20);
  v7 = sub_25BDB3108(v5, a1);
  sub_25BDA8554(v5, &qword_27FBDD298, &unk_25BDE2B20);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    *&v11[-16] = v1;
    *&v11[-8] = a1;
    (*(*v1 + 648))(v9, sub_25BDB3428);
  }

  else
  {
    sub_25BDA84EC(a1, v5, &qword_27FBDD298, &unk_25BDE2B20);
    swift_beginAccess();
    sub_25BDB388C(v5, v1 + v6, &qword_27FBDD298, &unk_25BDE2B20);
    swift_endAccess();
  }

  return sub_25BDA8554(a1, &qword_27FBDD298, &unk_25BDE2B20);
}

uint64_t (*sub_25BDAD528(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 640))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDB4550(&qword_27FBDD290, type metadata accessor for DeviceWarrantyViewModel, &protocol conformance descriptor for DeviceWarrantyViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDAD16C(v4);
  return sub_25BDAD678;
}

uint64_t sub_25BDAD6E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_25BDAD7C8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 640))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDB4550(&qword_27FBDD290, type metadata accessor for DeviceWarrantyViewModel, &protocol conformance descriptor for DeviceWarrantyViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDAD684(v4);
  return sub_25BDAD918;
}

uint64_t sub_25BDAD984@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25BDADA48(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*(*v2 + 640))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_25BDADAF8(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 & 1;
  v7 = *a2;
  result = swift_beginAccess();
  if (*(v4 + v7) == v6)
  {
    *(v4 + v7) = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath);
    v11 = v4;
    v12 = v6;
    (*(*v4 + 648))(v10, a4);
  }

  return result;
}

uint64_t (*sub_25BDADBF4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 640))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDB4550(&qword_27FBDD290, type metadata accessor for DeviceWarrantyViewModel, &protocol conformance descriptor for DeviceWarrantyViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDAD924(v4);
  return sub_25BDADD44;
}

uint64_t sub_25BDADD68@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_25BDADE88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A0, &qword_25BDE2548);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_25BDA84EC(a1, &v8 - v5, &qword_27FBDD2A0, &qword_25BDE2548);
  return (*(**a2 + 400))(v6);
}

uint64_t sub_25BDADFB8@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  (*(*v5 + 640))();

  v10 = *a2;
  swift_beginAccess();
  return sub_25BDA84EC(v5 + v10, a5, a3, a4);
}

uint64_t sub_25BDAE064(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A0, &qword_25BDE2548);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-v4];
  v6 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  sub_25BDA84EC(v1 + v6, v5, &qword_27FBDD2A0, &qword_25BDE2548);
  v7 = sub_25BDB356C(v5, a1);
  sub_25BDA8554(v5, &qword_27FBDD2A0, &qword_25BDE2548);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    *&v11[-16] = v1;
    *&v11[-8] = a1;
    (*(*v1 + 648))(v9, sub_25BDB38F4);
  }

  else
  {
    sub_25BDA84EC(a1, v5, &qword_27FBDD2A0, &qword_25BDE2548);
    swift_beginAccess();
    sub_25BDB388C(v5, v1 + v6, &qword_27FBDD2A0, &qword_25BDE2548);
    swift_endAccess();
  }

  return sub_25BDA8554(a1, &qword_27FBDD2A0, &qword_25BDE2548);
}

uint64_t sub_25BDAE24C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - v11;
  sub_25BDA84EC(a2, &v15 - v11, a3, a4);
  v13 = *a5;
  swift_beginAccess();
  sub_25BDB388C(v12, a1 + v13, a3, a4);
  return swift_endAccess();
}

uint64_t (*sub_25BDAE320(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 640))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDB4550(&qword_27FBDD290, type metadata accessor for DeviceWarrantyViewModel, &protocol conformance descriptor for DeviceWarrantyViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDADDDC(v4);
  return sub_25BDAE470;
}

uint64_t sub_25BDAE484@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 640))();

  v3 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataProvider;
  swift_beginAccess();
  return sub_25BDB39C4(v1 + v3, a1);
}

uint64_t sub_25BDAE520@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 640))();

  v4 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataProvider;
  swift_beginAccess();
  return sub_25BDB39C4(v3 + v4, a2);
}

uint64_t sub_25BDAE5C0(uint64_t a1, uint64_t *a2)
{
  sub_25BDB39C4(a1, v7);
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v7;
  (*(*v3 + 648))(KeyPath, sub_25BDB42FC, v6, MEMORY[0x277D84F78] + 8);

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_25BDAE684@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_25BDAE68C()
{
  swift_getKeyPath();
  (*(*v0 + 640))();

  v1 = *(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber);

  return v1;
}

uint64_t sub_25BDAE70C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 640))();

  v4 = *(v3 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber);
  a2[1] = v4;
}

uint64_t sub_25BDAE7A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_25BDAE7E0(v1, v2);
}

uint64_t sub_25BDAE7E0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber);
  v6 = *(v2 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber) == a1 && *(v2 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber + 8) == a2;
  if (v6 || (sub_25BDE01C8() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 648))(v9, sub_25BDB42B0);
  }
}

uint64_t sub_25BDAE934()
{
  swift_getKeyPath();
  (*(*v0 + 640))();
}

uint64_t sub_25BDAE9B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 640))();

  *a2 = *(v3 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__additionalHeaders);
}

uint64_t sub_25BDAEA6C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__additionalHeaders;

  v5 = sub_25BDB2F64(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v1;
    v10 = a1;
    (*(*v1 + 648))(v8, sub_25BDB426C);
  }
}

uint64_t sub_25BDAEC08()
{
  swift_getKeyPath();
  (*(*v0 + 640))();

  v1 = (v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__openAMSHandler);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_25BDAECA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + 584))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_25BDB4520;
  a2[1] = result;
  return result;
}

uint64_t sub_25BDAED30(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + 592);

  return v6(sub_25BDB44E4, v5);
}

uint64_t sub_25BDAEDE0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v6 = v2;
  v7 = a1;
  v8 = a2;
  (*(*v2 + 648))();
}

uint64_t (*sub_25BDAEE90(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 640))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_25BDB4550(&qword_27FBDD290, type metadata accessor for DeviceWarrantyViewModel, &protocol conformance descriptor for DeviceWarrantyViewModel);
  sub_25BDDF4A8();

  v4[7] = sub_25BDAEBA8(v4);
  return sub_25BDAEFE0;
}

void sub_25BDAEFEC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_25BDDF498();

  free(v3);
}

uint64_t DeviceWarrantyViewModel.__allocating_init(serialNumber:additionalHeaders:dataProvider:openAMS:openPath:startWeb:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v41 = a3;
  v42 = a5;
  v43 = a9;
  v44 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v41 - v16;
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__state;
  v20 = *MEMORY[0x277D2B6D0];
  v21 = sub_25BDDF7D8();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  v22 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataDate;
  v23 = sub_25BDDF438();
  (*(*(v23 - 8) + 56))(v18 + v22, 1, 1, v23);
  *(v18 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__showLastUpdatedMessage) = 0;
  *(v18 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__showLoadingSpinner) = 0;
  v24 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__appendSettingsNavigationPath;
  v25 = sub_25BDDF5D8();
  (*(*(v25 - 8) + 56))(v18 + v24, 1, 1, v25);
  sub_25BDDF4B8();
  v26 = (v18 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber);
  *v26 = a1;
  v26[1] = a2;
  *(v18 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__additionalHeaders) = v41;
  sub_25BDB39C4(a4, v18 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataProvider);
  v27 = (v18 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__openAMSHandler);
  *v27 = v42;
  v27[1] = a6;
  v28 = (v18 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel_openPathHandler);
  v29 = v43;
  *v28 = v44;
  v28[1] = a8;
  v30 = (v18 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel_startWebHandler);
  *v30 = v29;
  v30[1] = a10;
  v31 = objc_opt_self();

  if ([v31 isSignedIntoAppleAccount])
  {
    sub_25BDDFF58();
    v32 = sub_25BDDFF88();
    (*(*(v32 - 8) + 56))(v17, 0, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v18;

    v34 = &unk_25BDE25C0;
    v35 = v17;
    v36 = v33;
  }

  else
  {
    v37 = sub_25BDDFF88();
    (*(*(v37 - 8) + 56))(v17, 1, 1, v37);
    sub_25BDDFF48();

    v38 = sub_25BDDFF38();
    v36 = swift_allocObject();
    v39 = MEMORY[0x277D85700];
    v36[2] = v38;
    v36[3] = v39;
    v36[4] = v18;
    v34 = &unk_25BDE25B0;
    v35 = v17;
  }

  sub_25BDAFA6C(0, 0, v35, v34, v36);

  __swift_destroy_boxed_opaque_existential_0(a4);
  return v18;
}

uint64_t DeviceWarrantyViewModel.init(serialNumber:additionalHeaders:dataProvider:openAMS:openPath:startWeb:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v43 = a3;
  v44 = a5;
  v45 = a9;
  v46 = a7;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v43 - v18;
  v20 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__state;
  v21 = *MEMORY[0x277D2B6D0];
  v22 = sub_25BDDF7D8();
  (*(*(v22 - 8) + 104))(v11 + v20, v21, v22);
  v23 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataDate;
  v24 = sub_25BDDF438();
  (*(*(v24 - 8) + 56))(v11 + v23, 1, 1, v24);
  *(v11 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__showLastUpdatedMessage) = 0;
  *(v11 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__showLoadingSpinner) = 0;
  v25 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__appendSettingsNavigationPath;
  v26 = sub_25BDDF5D8();
  (*(*(v26 - 8) + 56))(v11 + v25, 1, 1, v26);
  sub_25BDDF4B8();
  v27 = (v11 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber);
  *v27 = a1;
  v27[1] = a2;
  v28 = a4;
  *(v11 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__additionalHeaders) = v43;
  sub_25BDB39C4(a4, v11 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataProvider);
  v29 = (v11 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__openAMSHandler);
  *v29 = v44;
  v29[1] = a6;
  v30 = (v11 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel_openPathHandler);
  v31 = v45;
  *v30 = v46;
  v30[1] = a8;
  v32 = (v11 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel_startWebHandler);
  *v32 = v31;
  v32[1] = a10;
  v33 = objc_opt_self();

  if ([v33 isSignedIntoAppleAccount])
  {
    sub_25BDDFF58();
    v34 = sub_25BDDFF88();
    (*(*(v34 - 8) + 56))(v19, 0, 1, v34);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v11;

    v36 = &unk_25BDE25D0;
    v37 = v19;
    v38 = v35;
  }

  else
  {
    v39 = sub_25BDDFF88();
    (*(*(v39 - 8) + 56))(v19, 1, 1, v39);
    sub_25BDDFF48();

    v40 = sub_25BDDFF38();
    v38 = swift_allocObject();
    v41 = MEMORY[0x277D85700];
    v38[2] = v40;
    v38[3] = v41;
    v38[4] = v11;
    v36 = &unk_25BDE25C8;
    v37 = v19;
  }

  sub_25BDAFA6C(0, 0, v37, v36, v38);

  __swift_destroy_boxed_opaque_existential_0(v28);
  return v11;
}

uint64_t sub_25BDAF864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_25BDDF7D8();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_25BDDFF48();
  v4[6] = sub_25BDDFF38();
  v7 = sub_25BDDFF28();

  return MEMORY[0x2822009F8](sub_25BDAF958, v7, v6);
}

uint64_t sub_25BDAF958()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  v5 = *MEMORY[0x277D2B758];
  v6 = sub_25BDDF9A8();
  (*(*(v6 - 8) + 104))(v1, v5, v6);
  (*(v3 + 104))(v1, *MEMORY[0x277D2B6C0], v2);
  (*(*v4 + 208))(v1);

  v7 = v0[1];

  return v7();
}

uint64_t sub_25BDAFA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A8, &qword_25BDE25A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25BDA84EC(a3, v25 - v10, &qword_27FBDD2A8, &qword_25BDE25A0);
  v12 = sub_25BDDFF88();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25BDA8554(v11, &qword_27FBDD2A8, &qword_25BDE25A0);
  }

  else
  {
    sub_25BDDFF78();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25BDDFF28();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25BDDFE78() + 32;
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

      sub_25BDA8554(a3, &qword_27FBDD2A8, &qword_25BDE25A0);

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

  sub_25BDA8554(a3, &qword_27FBDD2A8, &qword_25BDE25A0);
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

uint64_t sub_25BDAFD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a4 + 616) + **(*a4 + 616));
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_25BDAFE88;

  return v7();
}

uint64_t sub_25BDAFE88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25BDAFF7C()
{
  v1[10] = v0;
  v2 = sub_25BDDF668();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2B0, &qword_25BDE25E0);
  v1[14] = swift_task_alloc();
  v3 = sub_25BDDFA28();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v4 = sub_25BDDF7D8();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_25BDDFF48();
  v1[22] = sub_25BDDFF38();
  v6 = sub_25BDDFF28();
  v1[23] = v6;
  v1[24] = v5;

  return MEMORY[0x2822009F8](sub_25BDB016C, v6, v5);
}

uint64_t sub_25BDB016C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  (*(**(v0 + 80) + 200))();
  v4 = (*(v3 + 88))(v1, v2);
  v5 = *MEMORY[0x277D2B6C0];
  (*(v3 + 8))(v1, v2);
  if (v4 == v5)
  {
    v6 = *(v0 + 160);
    v7 = *(v0 + 80);
    (*(*(v0 + 152) + 104))(v6, *MEMORY[0x277D2B6D0], *(v0 + 144));
    (*(*v7 + 208))(v6);
  }

  v8 = *(v0 + 80);
  KeyPath = swift_getKeyPath();
  v10 = *(*v8 + 640);
  (v10)(KeyPath);

  v11 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataProvider;
  swift_beginAccess();
  sub_25BDB39C4(v8 + v11, v0 + 16);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v12);
  swift_getKeyPath();
  v10();

  v14 = v8 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber;
  v15 = *(v8 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber);
  v16 = *(v14 + 8);
  *(v0 + 200) = v16;

  v17 = swift_task_alloc();
  *(v0 + 208) = v17;
  *v17 = v0;
  v17[1] = sub_25BDB03D4;

  return MEMORY[0x28218AB90](v15, v16, v12, v13);
}

uint64_t sub_25BDB03D4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = a2;

  v5 = *(v3 + 192);
  v6 = *(v3 + 184);

  return MEMORY[0x2822009F8](sub_25BDB0520, v6, v5);
}

uint64_t sub_25BDB0520()
{
  v1 = v0[28];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v1 >> 60 != 15)
  {
    v3 = v0[27];
    v2 = v0[28];
    sub_25BDDF358();
    swift_allocObject();
    sub_25BDB3C24(v3, v2);
    sub_25BDDF348();
    sub_25BDB4550(&qword_27FBDD2B8, MEMORY[0x277D2B780], MEMORY[0x277D2B788]);
    sub_25BDDF338();
    v5 = v0[27];
    v4 = v0[28];
    v21 = v0[16];
    v20 = v0[17];
    v23 = v0[14];
    v22 = v0[15];

    (*(v21 + 56))(v23, 0, 1, v22);
    (*(v21 + 32))(v20, v23, v22);
    v24 = *(sub_25BDDFA18() + 16);

    v25 = sub_25BDA7298(v5, v4);
    v26 = v0[17];
    if (v24)
    {
      v27 = v0[10];
      MEMORY[0x25F87BB50](v25, 0.5, 0.85, 0.0);
      v28 = swift_task_alloc();
      *(v28 + 16) = v27;
      *(v28 + 24) = v26;
      sub_25BDDFB88();

      v29 = (*(*v27 + 624) + **(*v27 + 624));
      v17 = swift_task_alloc();
      v0[29] = v17;
      *v17 = v0;
      v18 = sub_25BDB09E8;
      goto LABEL_6;
    }

    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];
  v9 = sub_25BDB7ADC();
  (*(v7 + 16))(v6, v9, v8);
  v10 = sub_25BDDF648();
  v11 = sub_25BDDFFC8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25BD8D000, v10, v11, "Local device warranty failed", v12, 2u);
    MEMORY[0x25F87C8F0](v12, -1, -1);
  }

  v14 = v0[12];
  v13 = v0[13];
  v16 = v0[10];
  v15 = v0[11];

  (*(v14 + 8))(v13, v15);
  v29 = (*(*v16 + 624) + **(*v16 + 624));
  v17 = swift_task_alloc();
  v0[30] = v17;
  *v17 = v0;
  v18 = sub_25BDB0BCC;
LABEL_6:
  v17[1] = v18;

  return v29();
}

uint64_t sub_25BDB09E8()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_25BDB0B08, v3, v2);
}

uint64_t sub_25BDB0B08()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_25BDA7298(v0[27], v0[28]);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25BDB0BCC()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_25BDB0CEC, v3, v2);
}

uint64_t sub_25BDB0CEC()
{
  v1 = v0[27];
  v2 = v0[28];

  sub_25BDA7298(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_25BDB0D94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_25BDDF7D8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = sub_25BDDFA18();
  (*(v6 + 104))(v8, *MEMORY[0x277D2B6C8], v5);
  (*(*a1 + 208))(v8);
  sub_25BDDFA08();
  (*(*a1 + 256))(v4);
  (*(*a1 + 352))(1);
  return (*(*a1 + 304))(1);
}

uint64_t sub_25BDB0FB8()
{
  v1[11] = v0;
  v2 = sub_25BDDF7D8();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v3 = sub_25BDDF668();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  sub_25BDDFF48();
  v1[20] = sub_25BDDFF38();
  v5 = sub_25BDDFF28();
  v1[21] = v5;
  v1[22] = v4;

  return MEMORY[0x2822009F8](sub_25BDB1120, v5, v4);
}

uint64_t sub_25BDB1120()
{
  v1 = v0[11];
  swift_getKeyPath();
  v2 = (*v1 + 640);
  v3 = *v2;
  (*v2)();

  v4 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataProvider;
  swift_beginAccess();
  sub_25BDB39C4(v1 + v4, (v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v5);
  swift_getKeyPath();
  v3();

  v7 = *(v1 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber);
  v8 = *(v1 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber + 8);
  v0[23] = v8;
  KeyPath = swift_getKeyPath();

  (v3)(KeyPath);

  v10 = *(v1 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__additionalHeaders);
  v0[24] = v10;

  v11 = swift_task_alloc();
  v0[25] = v11;
  *v11 = v0;
  v11[1] = sub_25BDB12F0;

  return MEMORY[0x28218AB98](v7, v8, v10, v5, v6);
}

uint64_t sub_25BDB12F0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = a2;

  v5 = *(v3 + 176);
  v6 = *(v3 + 168);

  return MEMORY[0x2822009F8](sub_25BDB1458, v6, v5);
}

uint64_t sub_25BDB1458()
{
  v1 = v0[27];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v1 >> 60 != 15)
  {
    v3 = v0[26];
    v2 = v0[27];
    sub_25BDDF358();
    swift_allocObject();
    sub_25BDB3C24(v3, v2);
    sub_25BDDF348();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2C0, &unk_25BDE3010);
    sub_25BDB3CA4();
    sub_25BDDF338();

    v35 = v0[10];
    v37 = v0[26];
    v36 = v0[27];
    if (*(v35 + 16))
    {
      v38 = v0[11];
      v39 = sub_25BDA7298(v0[26], v0[27]);
      MEMORY[0x25F87BB50](v39, 0.5, 0.85, 0.0);
      v40 = swift_task_alloc();
      *(v40 + 16) = v38;
      *(v40 + 24) = v35;
      sub_25BDDFB88();
      sub_25BDA7298(v37, v36);

      goto LABEL_10;
    }

    sub_25BDA7298(v37, v36);
  }

  v4 = v0[19];
  v5 = v0[17];
  v6 = sub_25BDB7ADC();
  v41 = *(v5 + 16);
  v42 = v6;
  v41(v4);
  v7 = sub_25BDDF648();
  v8 = sub_25BDDFFC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_25BD8D000, v7, v8, "Remote device warranty failed", v9, 2u);
    MEMORY[0x25F87C8F0](v9, -1, -1);
  }

  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[17];
  v13 = v0[15];
  v15 = v0[12];
  v14 = v0[13];
  v16 = v0[11];

  v17 = *(v12 + 8);
  v18 = v17(v10, v11);
  (*(*v16 + 200))(v18);
  LODWORD(v16) = (*(v14 + 88))(v13, v15);
  LODWORD(v10) = *MEMORY[0x277D2B6D0];
  (*(v14 + 8))(v13, v15);
  if (v16 == v10)
  {
    (v41)(v0[18], v42, v0[16]);
    v19 = sub_25BDDF648();
    v20 = sub_25BDDFFC8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_25BD8D000, v19, v20, "Displaying error state", v21, 2u);
      MEMORY[0x25F87C8F0](v21, -1, -1);
    }

    v22 = v0[18];
    v23 = v0[16];
    v25 = v0[13];
    v24 = v0[14];
    v26 = v0[11];
    v27 = v0[12];

    v17(v22, v23);
    v28 = *MEMORY[0x277D2B750];
    v29 = sub_25BDDF9A8();
    (*(*(v29 - 8) + 104))(v24, v28, v29);
    (*(v25 + 104))(v24, *MEMORY[0x277D2B6C0], v27);
    (*(*v26 + 208))(v24);
  }

  v31 = v0[26];
  v30 = v0[27];
  v32 = v0[11];
  (*(*v32 + 352))(0);
  (*(*v32 + 304))(1);
  sub_25BDA7298(v31, v30);
LABEL_10:

  v33 = v0[1];

  return v33();
}

uint64_t sub_25BDB1960(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_25BDDF7D8();
  MEMORY[0x28223BE20](v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = a2;
  (*(v10 + 104))(v9, *MEMORY[0x277D2B6C8]);
  v11 = *(*a1 + 208);

  v11(v9);
  v12 = sub_25BDDF438();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  (*(*a1 + 256))(v6);
  (*(*a1 + 352))(0);
  return (*(*a1 + 304))(0);
}

uint64_t sub_25BDB1BA4(char *a1)
{
  v151 = a1;
  v1 = sub_25BDDF668();
  v152 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v131 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v142 = &v131 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v136 = &v131 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v144 = &v131 - v10;
  MEMORY[0x28223BE20](v9);
  v139 = &v131 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDD9A0, &unk_25BDE2670);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v135 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v143 = &v131 - v16;
  MEMORY[0x28223BE20](v15);
  v138 = &v131 - v17;
  v18 = sub_25BDDF408();
  v146 = *(v18 - 8);
  v147 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v133 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v137 = &v131 - v22;
  MEMORY[0x28223BE20](v21);
  v134 = &v131 - v23;
  v24 = sub_25BDDF818();
  v25 = *(v24 - 8);
  v149 = v24;
  v150 = v25;
  v26 = MEMORY[0x28223BE20](v24);
  v140 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v145 = &v131 - v29;
  MEMORY[0x28223BE20](v28);
  v141 = &v131 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2D8, &qword_25BDE2990);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v131 - v32;
  v34 = sub_25BDDFA98();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v131 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v131 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v131 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v131 - v44;
  v47 = v46;
  sub_25BDA84EC(v151, v33, &qword_27FBDD2D8, &qword_25BDE2990);
  if ((*(v47 + 48))(v33, 1, v34) == 1)
  {
    sub_25BDA8554(v33, &qword_27FBDD2D8, &qword_25BDE2990);
    v48 = sub_25BDB7ADC();
    v49 = v152;
    (*(v152 + 16))(v4, v48, v1);
    v50 = sub_25BDDF648();
    v51 = sub_25BDDFFC8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_25BD8D000, v50, v51, "Unable to handle nil action", v52, 2u);
      MEMORY[0x25F87C8F0](v52, -1, -1);
    }

    return (*(v49 + 8))(v4, v1);
  }

  v132 = v1;
  v54 = v152;
  (*(v47 + 32))(v45, v33, v34);
  v55 = *(v47 + 16);
  v55(v43, v45, v34);
  v56 = (*(v47 + 88))(v43, v34);
  v57 = v45;
  if (v56 == *MEMORY[0x277D2B7F0])
  {
    v151 = v45;
    v58 = v148;
    v59 = *(v47 + 96);
    v140 = v34;
    v59(v43, v34);
    v60 = v150;
    v61 = v145;
    v62 = v43;
    v63 = v149;
    (v150[4])(v145, v62, v149);
    sub_25BDDF808();
    if (v64)
    {
      v65 = v143;
      sub_25BDDF3F8();

      v67 = v146;
      v66 = v147;
      if ((*(v146 + 48))(v65, 1, v147) != 1)
      {
        v108 = v137;
        (*(v67 + 32))(v137, v65, v66);
        (*(v58 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel_startWebHandler))(v108);
        (*(v67 + 8))(v108, v66);
        goto LABEL_27;
      }

      sub_25BDA8554(v65, &unk_27FBDD9A0, &unk_25BDE2670);
    }

    v68 = sub_25BDB7ADC();
    v69 = v54;
    v70 = *(v54 + 16);
    v71 = v144;
    v72 = v132;
    v70(v144, v68, v132);
    v73 = sub_25BDDF648();
    v74 = sub_25BDDFFC8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = v63;
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_25BD8D000, v73, v74, "Can't start web. No url", v76, 2u);
      MEMORY[0x25F87C8F0](v76, -1, -1);

      (*(v69 + 8))(v71, v72);
      (v60[1])(v61, v75);
      return (*(v47 + 8))(v151, v140);
    }

    (*(v69 + 8))(v71, v72);
LABEL_27:
    (v60[1])(v61, v63);
    return (*(v47 + 8))(v151, v140);
  }

  if (v56 == *MEMORY[0x277D2B7E8])
  {
    v151 = v45;
    v77 = v148;
    v78 = v47;
    v79 = *(v47 + 96);
    v140 = v34;
    v79(v43, v34);
    v80 = v141;
    (v150[4])(v141, v43, v149);
    sub_25BDDF808();
    v81 = v132;
    if (v82)
    {
      v83 = v138;
      sub_25BDDF3F8();

      v84 = v146;
      v85 = v147;
      if ((*(v146 + 48))(v83, 1, v147) != 1)
      {
        v125 = v134;
        v126 = (*(v84 + 32))(v134, v83, v85);
        v127 = (*(*v77 + 584))(v126);
        v128 = sub_25BDDF7F8();
        v129 = sub_25BDDF7E8();
        v127(v125, v128, v129);

        (*(v84 + 8))(v125, v85);
LABEL_32:
        (v150[1])(v80, v149);
        return (*(v78 + 8))(v151, v140);
      }

      sub_25BDA8554(v83, &unk_27FBDD9A0, &unk_25BDE2670);
    }

    v86 = sub_25BDB7ADC();
    v87 = v139;
    (*(v54 + 16))(v139, v86, v81);
    v88 = sub_25BDDF648();
    v89 = sub_25BDDFFC8();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_25BD8D000, v88, v89, "Cannot open AMS. No url!", v90, 2u);
      MEMORY[0x25F87C8F0](v90, -1, -1);
    }

    (*(v54 + 8))(v87, v81);
    goto LABEL_32;
  }

  v91 = v54;
  v92 = v132;
  if (v56 == *MEMORY[0x277D2B7E0])
  {
    v93 = v57;
    v94 = v148;
    v95 = v47;
    v96 = v34;
    (*(v47 + 96))(v43, v34);
    v97 = v43;
    v98 = v149;
    (v150[4])(v140, v97, v149);
    sub_25BDDF808();
    if (v99)
    {
      v100 = v135;
      sub_25BDDF3F8();

      v102 = v146;
      v101 = v147;
      if ((*(v146 + 48))(v100, 1, v147) != 1)
      {
        v130 = v133;
        (*(v102 + 32))(v133, v100, v101);
        (*(v94 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel_openPathHandler))(v130);
        (*(v102 + 8))(v130, v101);
LABEL_36:
        (v150[1])(v140, v98);
        return (*(v95 + 8))(v93, v96);
      }

      sub_25BDA8554(v100, &unk_27FBDD9A0, &unk_25BDE2670);
    }

    v103 = sub_25BDB7ADC();
    v104 = v136;
    (*(v91 + 16))(v136, v103, v92);
    v105 = sub_25BDDF648();
    v106 = sub_25BDDFFC8();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_25BD8D000, v105, v106, "Can't open path. No url", v107, 2u);
      MEMORY[0x25F87C8F0](v107, -1, -1);
    }

    (*(v91 + 8))(v104, v92);
    goto LABEL_36;
  }

  v109 = sub_25BDB7ADC();
  v110 = *(v91 + 16);
  v111 = v92;
  v110(v142, v109, v92);
  v55(v40, v57, v34);
  v140 = v34;
  v151 = v57;
  v112 = sub_25BDDF648();
  v113 = sub_25BDDFFE8();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v148 = v114;
    v150 = swift_slowAlloc();
    v153 = v150;
    *v114 = 136315138;
    LODWORD(v149) = v113;
    v115 = v140;
    v55(v37, v40, v140);
    v116 = sub_25BDDFE68();
    v117 = v152;
    v119 = v118;
    v120 = *(v47 + 8);
    v120(v40, v115);
    v121 = sub_25BDA6444(v116, v119, &v153);

    v122 = v148;
    *(v148 + 1) = v121;
    v123 = v122;
    _os_log_impl(&dword_25BD8D000, v112, v149, "Not handling action: %s", v122, 0xCu);
    v124 = v150;
    __swift_destroy_boxed_opaque_existential_0(v150);
    MEMORY[0x25F87C8F0](v124, -1, -1);
    MEMORY[0x25F87C8F0](v123, -1, -1);

    (*(v117 + 8))(v142, v132);
  }

  else
  {

    v120 = *(v47 + 8);
    v115 = v140;
    v120(v40, v140);
    (*(v152 + 8))(v142, v111);
  }

  v120(v151, v115);
  return (v120)(v43, v115);
}

uint64_t DeviceWarrantyViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__state;
  v2 = sub_25BDDF7D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_25BDA8554(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataDate, &qword_27FBDD298, &unk_25BDE2B20);
  sub_25BDA8554(v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__appendSettingsNavigationPath, &qword_27FBDD2A0, &qword_25BDE2548);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataProvider));

  v3 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel___observationRegistrar;
  v4 = sub_25BDDF4C8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t DeviceWarrantyViewModel.__deallocating_deinit()
{
  DeviceWarrantyViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25BDB2D74(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25BDB2E6C;

  return v6(a1);
}

uint64_t sub_25BDB2E6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25BDB2F64(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_25BDA69EC(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_25BDE01C8();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BDB3108(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BDDF438();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD300, &qword_25BDE2758);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_25BDA84EC(a1, &v21 - v13, &qword_27FBDD298, &unk_25BDE2B20);
  sub_25BDA84EC(a2, &v14[v15], &qword_27FBDD298, &unk_25BDE2B20);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_25BDA84EC(v14, v10, &qword_27FBDD298, &unk_25BDE2B20);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_25BDB4550(&qword_27FBDD308, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v18 = sub_25BDDFE28();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_25BDA8554(v14, &qword_27FBDD298, &unk_25BDE2B20);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_25BDA8554(v14, &qword_27FBDD300, &qword_25BDE2758);
    v17 = 1;
    return v17 & 1;
  }

  sub_25BDA8554(v14, &qword_27FBDD298, &unk_25BDE2B20);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_25BDB34AC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_25BDB3504(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25BDB356C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BDDF5D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2A0, &qword_25BDE2548);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2F0, &qword_25BDE2750);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_25BDA84EC(a1, &v21 - v13, &qword_27FBDD2A0, &qword_25BDE2548);
  sub_25BDA84EC(a2, &v14[v15], &qword_27FBDD2A0, &qword_25BDE2548);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_25BDA84EC(v14, v10, &qword_27FBDD2A0, &qword_25BDE2548);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_25BDB4550(&qword_27FBDD2F8, MEMORY[0x277D402D0], MEMORY[0x277D402D8]);
      v18 = sub_25BDDFE28();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_25BDA8554(v14, &qword_27FBDD2A0, &qword_25BDE2548);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_25BDA8554(v14, &qword_27FBDD2F0, &qword_25BDE2750);
    v17 = 1;
    return v17 & 1;
  }

  sub_25BDA8554(v14, &qword_27FBDD2A0, &qword_25BDE2548);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_25BDB388C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_25BDB3938(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25BDB3950()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__openAMSHandler);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

uint64_t sub_25BDB39C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25BDB3A28()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25BDB45AC;

  return sub_25BDAF864(v3, v4, v5, v2);
}

uint64_t sub_25BDB3ABC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25BDB45AC;

  return sub_25BDAFD6C(v3, v4, v5, v2);
}

uint64_t sub_25BDB3B50()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25BDAFE88;

  return sub_25BDAF864(v3, v4, v5, v2);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25BDB3C24(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_25BDB3CA4()
{
  result = qword_27FBDD2C8;
  if (!qword_27FBDD2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD2C0, &unk_25BDE3010);
    sub_25BDB4550(&qword_27FBDD2D0, MEMORY[0x277D2B688], MEMORY[0x277D2B690]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD2C8);
  }

  return result;
}

void sub_25BDB3D8C(uint64_t a1)
{
  sub_25BDDF7D8();
  if (v1 <= 0x3F)
  {
    sub_25BDB4218(319, &qword_27FBDD2E0, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_25BDB4218(319, &qword_27FBDD2E8, MEMORY[0x277D402D0]);
      if (v3 <= 0x3F)
      {
        sub_25BDDF4C8();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_25BDB4218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25BDE00A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25BDB426C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__additionalHeaders) = *(v0 + 24);
}

uint64_t sub_25BDB42B0()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__serialNumber);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_25BDB42FC()
{
  v1 = *(v0 + 16);
  sub_25BDB39C4(*(v0 + 24), v4);
  v2 = OBJC_IVAR____TtC19NewDeviceOutreachUI23DeviceWarrantyViewModel__dataProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v2));
  sub_25BDB3938(v4, v1 + v2);
  return swift_endAccess();
}

uint64_t sub_25BDB4374(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25BDB45AC;

  return sub_25BDB2D74(a1, v4);
}

uint64_t sub_25BDB442C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25BDAFE88;

  return sub_25BDB2D74(a1, v4);
}

uint64_t sub_25BDB44E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6 = a3;
  v7 = a2;
  return v4(a1, &v7, &v6);
}

uint64_t sub_25BDB4550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25BDB45B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25BDDF638();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for NDOSignpost(uint64_t a1)
{
  result = qword_27FBDDE50;
  if (!qword_27FBDDE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BDB4690@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 2u)
  {
    if (qword_27FBDDD30 != -1)
    {
      swift_once();
    }

    v4 = &qword_27FBDDD38;
  }

  else
  {
    if (qword_27FBDDD40 != -1)
    {
      swift_once();
    }

    v4 = &qword_27FBDDD48;
  }

  v5 = *v4;
  sub_25BDDF628();
  result = type metadata accessor for NDOSignpost(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

id sub_25BDB4754(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (qword_27FBDDD30 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FBDDD38;
  }

  else
  {
    if (qword_27FBDDD40 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FBDDD48;
  }

  v2 = *v1;

  return v2;
}

const char *sub_25BDB47FC(char a1)
{
  if (!a1)
  {
    return "loadCoverageCentral";
  }

  if (a1 == 1)
  {
    return "loadCoverage";
  }

  return "getCachedCoverageDetails";
}

uint64_t sub_25BDB487C(unsigned __int8 a1)
{
  sub_25BDE0238();
  MEMORY[0x25F87BFE0](a1);
  return sub_25BDE0258();
}

uint64_t sub_25BDB48D8()
{
  v1 = *v0;
  sub_25BDE0238();
  MEMORY[0x25F87BFE0](v1);
  return sub_25BDE0258();
}

uint64_t sub_25BDB494C(uint64_t a1)
{
  v2 = *v1;
  sub_25BDE0238();
  MEMORY[0x25F87BFE0](v2);
  return sub_25BDE0258();
}

void sub_25BDB4990()
{
  sub_25BDE0038();
  if (*(v0 + *(type metadata accessor for NDOSignpost(0) + 20)) >= 2u)
  {
    if (qword_27FBDDD30 != -1)
    {
      swift_once();
    }

    v1 = qword_27FBDDD38;
  }

  else
  {
    if (qword_27FBDDD40 != -1)
    {
      swift_once();
    }

    v1 = qword_27FBDDD48;
  }

  v2 = v1;
  sub_25BDDF618();
}

uint64_t sub_25BDB4AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_25BDB4DC0();
  sub_25BDB7AD0();

  result = sub_25BDE0098();
  *a4 = result;
  return result;
}

unint64_t sub_25BDB4B60()
{
  result = qword_27FBDD310;
  if (!qword_27FBDD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD310);
  }

  return result;
}

uint64_t sub_25BDB4BDC(uint64_t a1)
{
  result = sub_25BDDF638();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDOSignpost.Event(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDOSignpost.Event(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25BDB4DC0()
{
  result = qword_27FBDD318;
  if (!qword_27FBDD318)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBDD318);
  }

  return result;
}

unint64_t NDOErrors.localizedDescription.getter()
{
  v1 = v0;
  v2 = sub_25BDDF408();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NDOErrors(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25BDB54C8(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x2065726F6D206F6ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v13 = *v8;
      v14 = v8[1];
      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      sub_25BDE0128();

      v15 = 0x800000025BDE5480;
      v16 = 0xD000000000000022;
      goto LABEL_19;
    case 2:
      v13 = *v8;
      v14 = v8[1];
      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      sub_25BDE0128();

      strcpy(v22, "invalid data: ");
      HIBYTE(v22[1]) = -18;
      goto LABEL_20;
    case 3:
      v13 = *v8;
      v14 = v8[1];
      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      sub_25BDE0128();

      v15 = 0x800000025BDE53C0;
      v16 = 0xD000000000000014;
      goto LABEL_19;
    case 4:
      v17 = *v8;
      v18 = v8[1];
      strcpy(v22, "parsing: ");
      WORD1(v22[1]) = 0;
      HIDWORD(v22[1]) = -385875968;
      v19 = v18;
      goto LABEL_24;
    case 5:
      v13 = *v8;
      v14 = v8[1];
      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      sub_25BDE0128();

      v15 = 0x800000025BDE5350;
      v16 = 0xD000000000000015;
      goto LABEL_19;
    case 6:
      v13 = *v8;
      v14 = v8[1];
      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      sub_25BDE0128();

      v15 = 0x800000025BDE5330;
      v16 = 0xD000000000000017;
LABEL_19:
      v22[0] = v16;
      v22[1] = v15;
LABEL_20:
      MEMORY[0x25F87BC30](v13, v14);
      goto LABEL_25;
    case 7:
      v20 = *v8;
      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      sub_25BDE0128();

      v22[0] = 0xD00000000000001ALL;
      v22[1] = 0x800000025BDE5310;
      v21[1] = v20;
      v17 = sub_25BDE01A8();
LABEL_24:
      MEMORY[0x25F87BC30](v17, v19);
LABEL_25:

      result = v22[0];
      break;
    case 8:
    case 25:
      result = 0xD000000000000018;
      break;
    case 9:
      return result;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
    case 18:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x69206769666E6F63;
      break;
    case 14:
      result = 0xD00000000000001ELL;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000024;
      break;
    case 17:
    case 26:
      result = 0xD000000000000025;
      break;
    case 19:
      result = 0xD000000000000029;
      break;
    case 20:
      result = 0xD000000000000016;
      break;
    case 21:
      result = 0xD00000000000002DLL;
      break;
    case 22:
      result = 0xD000000000000017;
      break;
    case 23:
      result = 0xD000000000000013;
      break;
    case 24:
      result = 0xD000000000000026;
      break;
    case 27:
      result = 0xD000000000000023;
      break;
    case 28:
      result = 0xD00000000000001ALL;
      break;
    case 29:
      result = 0x206E776F6E6B6E75;
      break;
    case 30:
      result = 0xD000000000000012;
      break;
    default:
      (*(v3 + 32))(v5, v8, v2);
      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      sub_25BDE0128();

      v22[0] = 0xD000000000000014;
      v22[1] = 0x800000025BDE54B0;
      v11 = sub_25BDDF3B8();
      MEMORY[0x25F87BC30](v11);

      v12 = v22[0];
      (*(v3 + 8))(v5, v2);
      result = v12;
      break;
  }

  return result;
}

uint64_t type metadata accessor for NDOErrors(uint64_t a1)
{
  result = qword_27FBDDF60;
  if (!qword_27FBDDF60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BDB54C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOErrors(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s19NewDeviceOutreachUI9NDOErrorsO2eeoiySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  v57 = a2;
  v3 = sub_25BDDF408();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NDOErrors(0);
  v6 = MEMORY[0x28223BE20](v5);
  v53 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v52 - v9);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v52 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v52 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v52 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v52 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v52 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = &v52 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD320, &unk_25BDE2910);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v52 + *(v29 + 56) - v30;
  v32 = a1;
  v33 = &v52 - v30;
  sub_25BDB54C8(v32, &v52 - v30);
  v56 = v31;
  sub_25BDB54C8(v57, v31);
  v57 = v33;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_25BDB54C8(v57, v25);
      v42 = *v25;
      v41 = v25[1];
      v43 = v56;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_53;
      }

      if (v42 == *v43 && v41 == v43[1])
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    case 2u:
      sub_25BDB54C8(v57, v22);
      v36 = *v22;
      v35 = v22[1];
      v37 = v56;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 3u:
      sub_25BDB54C8(v57, v19);
      v36 = *v19;
      v35 = v19[1];
      v37 = v56;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 4u:
      sub_25BDB54C8(v57, v16);
      v36 = *v16;
      v35 = v16[1];
      v37 = v56;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 5u:
      sub_25BDB54C8(v57, v13);
      v36 = *v13;
      v35 = v13[1];
      v37 = v56;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_41;
      }

      goto LABEL_53;
    case 6u:
      sub_25BDB54C8(v57, v10);
      v36 = *v10;
      v35 = v10[1];
      v37 = v56;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
LABEL_53:

        goto LABEL_54;
      }

LABEL_41:
      if (v36 == *v37 && v35 == v37[1])
      {
LABEL_47:
      }

      else
      {
LABEL_45:
        v46 = sub_25BDE01C8();

        if ((v46 & 1) == 0)
        {
          sub_25BDB5DB8(v57);
          goto LABEL_55;
        }
      }

LABEL_75:
      sub_25BDB5DB8(v57);
      v40 = 1;
      break;
    case 7u:
      v38 = v53;
      sub_25BDB54C8(v57, v53);
      v39 = v56;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_54;
      }

      v40 = *v38 == *v39;
      goto LABEL_78;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x14u:
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x15u:
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x16u:
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x17u:
      if (swift_getEnumCaseMultiPayload() == 23)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x18u:
      if (swift_getEnumCaseMultiPayload() == 24)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x19u:
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Au:
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Bu:
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Cu:
      if (swift_getEnumCaseMultiPayload() == 28)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Du:
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Eu:
      if (swift_getEnumCaseMultiPayload() == 30)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    default:
      sub_25BDB54C8(v57, v27);
      v34 = v56;
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v54 + 8))(v27, v55);
LABEL_54:
        sub_25BDB5D50(v57);
LABEL_55:
        v40 = 0;
      }

      else
      {
        v49 = v54;
        v48 = v55;
        v50 = v52;
        (*(v54 + 32))(v52, v34, v55);
        v40 = sub_25BDDF3D8();
        v51 = *(v49 + 8);
        v51(v50, v48);
        v51(v27, v48);
LABEL_78:
        sub_25BDB5DB8(v57);
      }

      break;
  }

  return v40 & 1;
}

uint64_t sub_25BDB5CD4(uint64_t a1)
{
  result = sub_25BDDF408();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25BDB5D50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD320, &unk_25BDE2910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BDB5DB8(uint64_t a1)
{
  v2 = type metadata accessor for NDOErrors(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25BDB5E1C(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000011;
    }

    else
    {
      v2 = 0xD000000000000014;
    }

    if (a2 == 1)
    {
      v3 = "followupDisplayCount";
    }

    else
    {
      v3 = "com.apple.newdeviceoutreach.";
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    v3 = "coverage.viewload";
  }

  MEMORY[0x25F87BC30](v2, v3 | 0x8000000000000000);

  return 0xD00000000000001CLL;
}

unint64_t sub_25BDB5ECC(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD328, &qword_25BDE2920);
      inited = swift_initStackObject();
      v3 = inited;
      *(inited + 16) = xmmword_25BDE21F0;
      *(inited + 32) = 0x72656D75736E6F63;
      v4 = inited + 32;
      v5 = 0xE800000000000000;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD328, &qword_25BDE2920);
      inited = swift_initStackObject();
      v3 = inited;
      *(inited + 16) = xmmword_25BDE21F0;
      *(inited + 32) = 7368801;
      v4 = inited + 32;
      v5 = 0xE300000000000000;
    }

    *(inited + 40) = v5;
    v6 = sub_25BDDFF98();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD328, &qword_25BDE2920);
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_25BDE21F0;
    *(v3 + 32) = 0x6173726576696E75;
    v4 = v3 + 32;
    *(v3 + 40) = 0xED00006B6E694C6CLL;
    v6 = sub_25BDDFF18();
  }

  *(v3 + 48) = v6;
  v7 = sub_25BDB6014(v3);
  swift_setDeallocating();
  sub_25BDB6118(v4);
  return v7;
}

unint64_t sub_25BDB6014(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD338, "@h");
    v3 = sub_25BDE0198();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_25BDA69EC(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25BDB6118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD330, qword_25BDE2928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NDOAnalytic(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NDOAnalytic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t NDOAMSUILoadingViewController.presenter.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id sub_25BDB64B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 presenter];
  *a2 = result;
  return result;
}

uint64_t NDOAMSUILoadingViewController.supportedInterfaceOrientations.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

id NDOAMSUILoadingViewController.init(createAMSViewController:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_25BDA6394;
  v8[3] = &block_descriptor_1;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithCreateAMSViewController_];
  _Block_release(v5);

  return v6;
}

{
  *&v2[OBJC_IVAR___NDOAMSUILoadingViewController_amsViewController] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR___NDOAMSUILoadingViewController_createAMSViewController];
  *v5 = a1;
  *(v5 + 1) = a2;
  v7.receiver = v2;
  v7.super_class = NDOAMSUILoadingViewController;
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_25BDB67D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_25BDB688C;
  v7[3] = &block_descriptor_7;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

void sub_25BDB688C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id NDOAMSUILoadingViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void NDOAMSUILoadingViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR___NDOAMSUILoadingViewController_amsViewController) = 0;
  swift_unknownObjectWeakInit();
  sub_25BDE0158();
  __break(1u);
}

Swift::Void __swiftcall NDOAMSUILoadingViewController.loadView()()
{
  v4.super_class = NDOAMSUILoadingViewController;
  objc_msgSendSuper2(&v4, sel_loadView);
  v1 = [v0 navigationItem];
  sub_25BDABD64(0, &qword_27FBDD358, 0x277D751E0);
  sub_25BDABD64(0, &qword_27FBDD360, 0x277D750C8);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_25BDE0058();
  v3 = sub_25BDDFFF8();
  [v1 setRightBarButtonItem_];
}

id sub_25BDB6B78()
{
  v1 = v0;
  v2 = sub_25BDDF668();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25BDB7ADC();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_25BDDF648();
  v8 = sub_25BDDFFE8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_25BD8D000, v7, v8, "Cancel button tapped", v9, 2u);
    MEMORY[0x25F87C8F0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = [v1 amsViewController];
  if (!v10 || (v11 = v10, v12 = [v10 presenter], v11, !v12))
  {
    result = [v1 presenter];
    if (!result)
    {
      return result;
    }

    v12 = result;
  }

  [v12 amsUIViewFinishedWithCompletion_];
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall NDOAMSUILoadingViewController.viewDidLoad()()
{
  v0.super_class = NDOAMSUILoadingViewController;
  objc_msgSendSuper2(&v0, sel_viewDidLoad);
  sub_25BDB6DD0();
}

uint64_t sub_25BDB6DD0()
{
  v7 = sub_25BDDFB58();
  v8 = MEMORY[0x277D74D18];
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_25BDDFB48();
  sub_25BDE0008();
  v1 = [v0 createAMSViewController];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = sub_25BDB79F0;
  v9 = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_25BDB688C;
  v7 = &block_descriptor_14;
  v3 = _Block_copy(v6);
  v4 = v1[2];
  swift_retain_n();
  v4(v1, v3);
  _Block_release(v1);

  _Block_release(v3);
}

Swift::Void __swiftcall NDOAMSUILoadingViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor_];

    v5 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
    [v5 configureWithTransparentBackground];
    v6 = [v1 navigationItem];
    v7 = v5;
    [v6 setScrollEdgeAppearance_];

    v8 = [v1 navigationItem];
    [v8 setStandardAppearance_];

    v9 = [v1 navigationItem];
    [v9 setCompactAppearance_];
  }

  else
  {
    __break(1u);
  }
}

id NDOAMSUILoadingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_25BDDFE38();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

void sub_25BDB72D8(void *a1, uint64_t a2)
{
  v3 = sub_25BDDF668();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      v9 = a1;
      [v8 setAmsViewController_];
      v10 = [v9 view];
      if (v10)
      {
        v11 = v10;
        [v10 setTranslatesAutoresizingMaskIntoConstraints_];

        [v8 addChildViewController_];
        v12 = [v8 view];
        if (v12)
        {
          v13 = v12;
          v14 = [v9 view];
          if (v14)
          {
            v15 = v14;
            [v13 addSubview_];

            v58 = 0;
            v56 = 0u;
            v57 = 0u;
            sub_25BDE0008();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD430, &unk_25BDE2490);
            v16 = swift_allocObject();
            *(v16 + 16) = xmmword_25BDE2440;
            v17 = [v9 view];
            if (v17)
            {
              v18 = v17;
              v19 = [v17 topAnchor];

              v20 = [v8 view];
              if (v20)
              {
                v21 = v20;
                v22 = [v20 topAnchor];

                v23 = [v19 constraintEqualToAnchor_];
                *(v16 + 32) = v23;
                v24 = [v9 view];
                if (v24)
                {
                  v25 = v24;
                  v26 = [v24 bottomAnchor];

                  v27 = [v8 view];
                  if (v27)
                  {
                    v28 = v27;
                    v29 = [v27 bottomAnchor];

                    v30 = [v26 constraintEqualToAnchor_];
                    *(v16 + 40) = v30;
                    v31 = [v9 view];
                    if (v31)
                    {
                      v32 = v31;
                      v33 = [v31 leadingAnchor];

                      v34 = [v8 view];
                      if (v34)
                      {
                        v35 = v34;
                        v36 = [v34 safeAreaLayoutGuide];

                        v37 = [v36 leadingAnchor];
                        v38 = [v33 constraintEqualToAnchor_];

                        *(v16 + 48) = v38;
                        v39 = [v9 view];
                        if (v39)
                        {
                          v40 = v39;
                          v41 = [v39 trailingAnchor];

                          v42 = [v8 view];
                          if (v42)
                          {
                            v43 = v42;
                            v44 = objc_opt_self();
                            v45 = [v43 safeAreaLayoutGuide];

                            v46 = [v45 trailingAnchor];
                            v47 = [v41 constraintEqualToAnchor_];

                            *(v16 + 56) = v47;
                            sub_25BDABD64(0, &qword_27FBDD280, 0x277CCAAD0);
                            v48 = sub_25BDDFEC8();

                            [v44 activateConstraints_];

                            [v9 didMoveToParentViewController_];
                            return;
                          }

                          goto LABEL_29;
                        }

LABEL_28:
                        __break(1u);
LABEL_29:
                        __break(1u);
                        return;
                      }

LABEL_27:
                      __break(1u);
                      goto LABEL_28;
                    }

LABEL_26:
                    __break(1u);
                    goto LABEL_27;
                  }

LABEL_25:
                  __break(1u);
                  goto LABEL_26;
                }

LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_21;
    }

    v49 = sub_25BDB7ADC();
    (*(v4 + 16))(v6, v49, v3);
    v50 = sub_25BDDF648();
    v51 = sub_25BDDFFC8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_25BD8D000, v50, v51, "Unable to create ams view controller, displaying error state", v52, 2u);
      MEMORY[0x25F87C8F0](v52, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(&v57 + 1) = sub_25BDDFB58();
    v58 = MEMORY[0x277D74D18];
    __swift_allocate_boxed_opaque_existential_1(&v56);
    v54 = v8;

    sub_25BDC4414(sub_25BDB79F8, v53);

    sub_25BDE0008();
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25BDB7950()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_25BDB6B78();
  }
}

void sub_25BDB79F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_25BDB6DD0();
  }
}

uint64_t sub_25BDB7A60()
{
  v0 = sub_25BDDF668();
  __swift_allocate_value_buffer(v0, qword_27FBDE520);
  __swift_project_value_buffer(v0, qword_27FBDE520);
  return sub_25BDDF658();
}

uint64_t sub_25BDB7ADC()
{
  if (qword_27FBDDF78 != -1)
  {
    swift_once();
  }

  v0 = sub_25BDDF668();

  return __swift_project_value_buffer(v0, qword_27FBDE520);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25BDB7B78@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FBDDF78 != -1)
  {
    swift_once();
  }

  v2 = sub_25BDDF668();
  v3 = __swift_project_value_buffer(v2, qword_27FBDE520);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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

uint64_t sub_25BDB7CB0(uint64_t a1)
{
  type metadata accessor for CoverageCentralViewModel(0);
  sub_25BDBC0E4(&qword_27FBDD438, type metadata accessor for CoverageCentralViewModel, &protocol conformance descriptor for CoverageCentralViewModel);

  return sub_25BDDFD88();
}

uint64_t sub_25BDB7D3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  sub_25BDDFD58();
  return v1;
}

uint64_t (*sub_25BDB7DB8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  *(v3 + 32) = sub_25BDDFD48();
  return sub_25BDB7E44;
}

void sub_25BDB7E44(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_25BDB7E90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);

  return sub_25BDDFD78();
}

uint64_t sub_25BDB7ED8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CoverageCentralSectionView(0) + 20);
  v4 = sub_25BDDF6E8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CoverageCentralSectionView(uint64_t a1)
{
  result = qword_27FBDE000;
  if (!qword_27FBDE000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BDB7FA0(uint64_t a1)
{
  v3 = *(type metadata accessor for CoverageCentralSectionView(0) + 20);
  v4 = sub_25BDDF6E8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_25BDB8064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v204[1] = a2;
  v156 = sub_25BDDF668();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v154 = v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD448, &qword_25BDE2988);
  MEMORY[0x28223BE20](v157);
  v159 = v147 - v4;
  v161 = sub_25BDDF7C8();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v158 = v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD2D8, &qword_25BDE2990);
  MEMORY[0x28223BE20](v6 - 8);
  v153 = v147 - v7;
  v165 = sub_25BDDFA98();
  v164 = *(v165 - 8);
  v8 = MEMORY[0x28223BE20](v165);
  v152 = v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v9;
  MEMORY[0x28223BE20](v8);
  v163 = v147 - v10;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD450, &qword_25BDE2998);
  MEMORY[0x28223BE20](v177);
  v162 = v147 - v11;
  v172 = sub_25BDDF858();
  v171 = *(v172 - 8);
  v12 = MEMORY[0x28223BE20](v172);
  v169 = v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v170 = v147 - v14;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD458, &qword_25BDE29A0);
  MEMORY[0x28223BE20](v173);
  v174 = v147 - v15;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD460, &qword_25BDE29A8);
  MEMORY[0x28223BE20](v201);
  v176 = v147 - v16;
  v175 = sub_25BDDF8B8();
  v168 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v167 = v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_25BDDF8F8();
  v182 = *(v183 - 8);
  v18 = MEMORY[0x28223BE20](v183);
  v166 = v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v181 = v147 - v20;
  v190 = sub_25BDDF718();
  v180 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v179 = v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_25BDDF7A8();
  v186 = *(v187 - 8);
  v22 = MEMORY[0x28223BE20](v187);
  v178 = v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v185 = v147 - v24;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD468, &qword_25BDE29B0);
  MEMORY[0x28223BE20](v206);
  v208 = v147 - v25;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD470, &qword_25BDE29B8);
  MEMORY[0x28223BE20](v197);
  v199 = v147 - v26;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD478, &qword_25BDE29C0);
  MEMORY[0x28223BE20](v189);
  v191 = v147 - v27;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD480, &qword_25BDE29C8);
  MEMORY[0x28223BE20](v198);
  v192 = (v147 - v28);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD488, &qword_25BDE29D0);
  MEMORY[0x28223BE20](v205);
  v200 = v147 - v29;
  v30 = type metadata accessor for CoverageCentralSectionView(0);
  v194 = *(v30 - 8);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v149 = v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = v32;
  MEMORY[0x28223BE20](v31);
  v34 = v147 - v33;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD490, &qword_25BDE29D8);
  MEMORY[0x28223BE20](v188);
  v184 = v147 - v35;
  v36 = sub_25BDDF898();
  v203 = *(v36 - 8);
  v204[0] = v36;
  v37 = MEMORY[0x28223BE20](v36);
  v39 = v147 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v202 = v147 - v40;
  v41 = sub_25BDDFA88();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](v41);
  v148 = v147 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v44);
  v47 = v147 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = v147 - v48;
  v50 = *(v42 + 16);
  v207 = a1;
  v50(v147 - v48, a1, v41);
  v51 = (*(v42 + 88))(v49, v41);
  v52 = *MEMORY[0x277D2B7B0];
  v195 = v34;
  if (v51 == v52)
  {
    (*(v42 + 96))(v49, v41);
    v53 = v39;
    v147[1] = v39;
    v54 = v203;
    v55 = v202;
    v56 = v204[0];
    (*(v203 + 4))();
    (*(v54 + 2))(v53, v55, v56);
    v57 = v195;
    sub_25BDBB588(v196, v195);
    v50(v47, v207, v41);
    v58 = (*(v194 + 80) + 16) & ~*(v194 + 80);
    v59 = (v193 + *(v42 + 80) + v58) & ~*(v42 + 80);
    v60 = swift_allocObject();
    sub_25BDBB5EC(v57, v60 + v58);
    (*(v42 + 32))(v60 + v59, v47, v41);
    v61 = v184;
    sub_25BDDF828();
    v62 = [objc_opt_self() labelColor];
    *(v61 + *(v188 + 36)) = sub_25BDDFD08();
    sub_25BDA84EC(v61, v191, &qword_27FBDD490, &qword_25BDE29D8);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9F60();
    sub_25BDBC0E4(&qword_27FBDD4C8, MEMORY[0x277D2B680], MEMORY[0x277D2B678]);
    v63 = v192;
    sub_25BDDFC18();
    sub_25BDA84EC(v63, v199, &qword_27FBDD480, &qword_25BDE29C8);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9EA4();
    sub_25BDBA048();
    v64 = v200;
    sub_25BDDFC18();
    sub_25BDA8554(v63, &qword_27FBDD480, &qword_25BDE29C8);
    sub_25BDA84EC(v64, v208, &qword_27FBDD488, &qword_25BDE29D0);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9E18();
    sub_25BDDFC18();
    sub_25BDA8554(v64, &qword_27FBDD488, &qword_25BDE29D0);
    sub_25BDA8554(v61, &qword_27FBDD490, &qword_25BDE29D8);
    return (*(v203 + 1))(v202, v204[0]);
  }

  v150 = v43;
  v203 = v47;
  v204[0] = v50;
  v66 = v42;
  v67 = v207;
  if (v51 == *MEMORY[0x277D2B7A0])
  {
    v68 = v41;
    (*(v42 + 96))(v49, v41);
    v69 = v186;
    v70 = v185;
    v71 = v49;
    v72 = v187;
    (*(v186 + 32))(v185, v71, v187);
    (*(v69 + 16))(v178, v70, v72);
    v73 = v195;
    sub_25BDBB588(v196, v195);
    v74 = v203;
    (v204[0])(v203, v67, v68);
    v75 = (*(v194 + 80) + 16) & ~*(v194 + 80);
    v76 = (v193 + *(v66 + 80) + v75) & ~*(v66 + 80);
    v77 = swift_allocObject();
    sub_25BDBB5EC(v73, v77 + v75);
    (*(v66 + 32))(v77 + v76, v74, v68);
    v78 = v179;
    sub_25BDDF708();
    v79 = v180;
    v80 = v190;
    (*(v180 + 16))(v191, v78, v190);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9F60();
    sub_25BDBC0E4(&qword_27FBDD4C8, MEMORY[0x277D2B680], MEMORY[0x277D2B678]);
    v81 = v192;
    sub_25BDDFC18();
    sub_25BDA84EC(v81, v199, &qword_27FBDD480, &qword_25BDE29C8);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9EA4();
    sub_25BDBA048();
    v82 = v200;
    sub_25BDDFC18();
    sub_25BDA8554(v81, &qword_27FBDD480, &qword_25BDE29C8);
    sub_25BDA84EC(v82, v208, &qword_27FBDD488, &qword_25BDE29D0);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9E18();
    sub_25BDDFC18();
    sub_25BDA8554(v82, &qword_27FBDD488, &qword_25BDE29D0);
    (*(v79 + 8))(v78, v80);
    v83 = *(v186 + 8);
    v84 = v185;
    v85 = &v211;
    return v83(v84, *(v85 - 32));
  }

  if (v51 == *MEMORY[0x277D2B7B8])
  {
    v86 = v207;
    (*(v42 + 96))(v49, v41);
    v87 = v182;
    (*(v182 + 32))(v181, v49, v183);
    (*(v87 + 16))();
    v88 = v195;
    sub_25BDBB588(v196, v195);
    v89 = v203;
    (v204[0])(v203, v86, v41);
    v90 = (*(v194 + 80) + 16) & ~*(v194 + 80);
    v91 = (v193 + *(v66 + 80) + v90) & ~*(v66 + 80);
    v92 = swift_allocObject();
    sub_25BDBB5EC(v88, v92 + v90);
    (*(v66 + 32))(v92 + v91, v89, v41);
    v93 = v167;
    sub_25BDDF8A8();
    v94 = v168;
    v95 = v175;
    (*(v168 + 16))(v174, v93, v175);
    swift_storeEnumTagMultiPayload();
    sub_25BDBC0E4(&qword_27FBDD4D8, MEMORY[0x277D2B710], MEMORY[0x277D2B708]);
    sub_25BDBA104();
    v96 = v176;
    sub_25BDDFC18();
    sub_25BDA84EC(v96, v199, &qword_27FBDD460, &qword_25BDE29A8);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9EA4();
    sub_25BDBA048();
    v97 = v200;
    sub_25BDDFC18();
    sub_25BDA8554(v96, &qword_27FBDD460, &qword_25BDE29A8);
    sub_25BDA84EC(v97, v208, &qword_27FBDD488, &qword_25BDE29D0);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9E18();
    sub_25BDDFC18();
    sub_25BDA8554(v97, &qword_27FBDD488, &qword_25BDE29D0);
    (*(v94 + 8))(v93, v95);
    v83 = *(v182 + 8);
    v84 = v181;
    v85 = &v210;
    return v83(v84, *(v85 - 32));
  }

  v98 = v51 == *MEMORY[0x277D2B7A8];
  v147[0] = v41;
  if (v98)
  {
    (*(v42 + 96))(v49, v147[0]);
    v99 = v171;
    v100 = v170;
    v101 = v172;
    (*(v171 + 32))();
    v102 = v153;
    sub_25BDDF838();
    v103 = v164;
    v104 = v165;
    if ((*(v164 + 48))(v102, 1, v165) == 1)
    {
      sub_25BDA8554(v102, &qword_27FBDD2D8, &qword_25BDE2990);
      (*(v99 + 16))(v169, v100, v101);
      v105 = v195;
      sub_25BDBB588(v196, v195);
      v106 = v203;
      v107 = v147[0];
      (v204[0])(v203, v67, v147[0]);
      v108 = (*(v194 + 80) + 16) & ~*(v194 + 80);
      v109 = (v193 + *(v66 + 80) + v108) & ~*(v66 + 80);
      v110 = swift_allocObject();
      sub_25BDBB5EC(v105, v110 + v108);
      (*(v66 + 32))(v110 + v109, v106, v107);
      v111 = v158;
      sub_25BDDF7B8();
      v112 = v160;
      v113 = v161;
      (*(v160 + 16))(v159, v111, v161);
      swift_storeEnumTagMultiPayload();
      sub_25BDBC0E4(&qword_27FBDD4E8, MEMORY[0x277D2B6B8], MEMORY[0x277D2B6B0]);
      v114 = v162;
      sub_25BDDFC18();
      (*(v112 + 8))(v111, v113);
    }

    else
    {
      v192 = *(v103 + 32);
      v202 = (v103 + 32);
      v192(v163, v102, v104);
      (*(v99 + 16))(v169, v100, v101);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
      v124 = v196;
      v125 = sub_25BDDFD58();
      LODWORD(v191) = (*(*v209 + 336))(v125);

      v126 = v195;
      sub_25BDBB588(v124, v195);
      v127 = v203;
      (v204[0])(v203, v67, v147[0]);
      v128 = *(v194 + 80);
      v129 = (v128 + 16) & ~v128;
      v190 = v129 + v193;
      v130 = *(v66 + 80);
      v131 = (v129 + v193 + v130) & ~v130;
      v193 = v128 | v130 | 7;
      v132 = swift_allocObject();
      v194 = v132;
      sub_25BDBB5EC(v126, v132 + v129);
      v195 = *(v66 + 32);
      v133 = v147[0];
      v195(v132 + v131, v127, v147[0]);
      v134 = v149;
      sub_25BDBB588(v124, v149);
      v135 = v164;
      v136 = v152;
      v137 = v165;
      (*(v164 + 16))(v152, v163, v165);
      v138 = v148;
      (v204[0])(v148, v207, v133);
      v139 = (v190 + *(v135 + 80)) & ~*(v135 + 80);
      v140 = (v151 + v130 + v139) & ~v130;
      v141 = swift_allocObject();
      sub_25BDBB5EC(v134, v141 + v129);
      v192((v141 + v139), v136, v137);
      v195(v141 + v140, v138, v147[0]);
      v142 = v158;
      sub_25BDDF7B8();
      v143 = v160;
      v144 = v161;
      (*(v160 + 16))(v159, v142, v161);
      swift_storeEnumTagMultiPayload();
      sub_25BDBC0E4(&qword_27FBDD4E8, MEMORY[0x277D2B6B8], MEMORY[0x277D2B6B0]);
      v114 = v162;
      sub_25BDDFC18();
      (*(v143 + 8))(v142, v144);
      (*(v135 + 8))(v163, v137);
    }

    v115 = v199;
    sub_25BDA84EC(v114, v174, &qword_27FBDD450, &qword_25BDE2998);
    swift_storeEnumTagMultiPayload();
    sub_25BDBC0E4(&qword_27FBDD4D8, MEMORY[0x277D2B710], MEMORY[0x277D2B708]);
    sub_25BDBA104();
    v145 = v176;
    sub_25BDDFC18();
    sub_25BDA84EC(v145, v115, &qword_27FBDD460, &qword_25BDE29A8);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9EA4();
    sub_25BDBA048();
    v146 = v200;
    sub_25BDDFC18();
    sub_25BDA8554(v145, &qword_27FBDD460, &qword_25BDE29A8);
    sub_25BDA84EC(v146, v208, &qword_27FBDD488, &qword_25BDE29D0);
    swift_storeEnumTagMultiPayload();
    sub_25BDB9E18();
    sub_25BDDFC18();
    sub_25BDA8554(v146, &qword_27FBDD488, &qword_25BDE29D0);
    sub_25BDA8554(v114, &qword_27FBDD450, &qword_25BDE2998);
    v83 = *(v171 + 8);
    v84 = v170;
    v85 = v204;
    return v83(v84, *(v85 - 32));
  }

  v116 = sub_25BDB7ADC();
  v117 = v155;
  v118 = v154;
  v119 = v156;
  (*(v155 + 16))(v154, v116, v156);
  v120 = sub_25BDDF648();
  v121 = sub_25BDDFFC8();
  if (os_log_type_enabled(v120, v121))
  {
    v123 = swift_slowAlloc();
    *v123 = 0;
    _os_log_impl(&dword_25BD8D000, v120, v121, "Should not hit unknown default case", v123, 2u);
    MEMORY[0x25F87C8F0](v123, -1, -1);
  }

  (*(v117 + 8))(v118, v119);
  swift_storeEnumTagMultiPayload();
  sub_25BDB9E18();
  sub_25BDDFC18();
  return (*(v66 + 8))(v49, v147[0]);
}

unint64_t sub_25BDB9E18()
{
  result = qword_27FBDD498;
  if (!qword_27FBDD498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD488, &qword_25BDE29D0);
    sub_25BDB9EA4();
    sub_25BDBA048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD498);
  }

  return result;
}

unint64_t sub_25BDB9EA4()
{
  result = qword_27FBDD4A0;
  if (!qword_27FBDD4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD480, &qword_25BDE29C8);
    sub_25BDB9F60();
    sub_25BDBC0E4(&qword_27FBDD4C8, MEMORY[0x277D2B680], MEMORY[0x277D2B678]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD4A0);
  }

  return result;
}

unint64_t sub_25BDB9F60()
{
  result = qword_27FBDD4A8;
  if (!qword_27FBDD4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD490, &qword_25BDE29D8);
    sub_25BDBC0E4(&qword_27FBDD4B0, MEMORY[0x277D2B6F0], MEMORY[0x277D2B6E8]);
    sub_25BDBC1A0(&qword_27FBDD4B8, &qword_27FBDD4C0, &qword_25BDE29E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD4A8);
  }

  return result;
}

unint64_t sub_25BDBA048()
{
  result = qword_27FBDD4D0;
  if (!qword_27FBDD4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD460, &qword_25BDE29A8);
    sub_25BDBC0E4(&qword_27FBDD4D8, MEMORY[0x277D2B710], MEMORY[0x277D2B708]);
    sub_25BDBA104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD4D0);
  }

  return result;
}

unint64_t sub_25BDBA104()
{
  result = qword_27FBDD4E0;
  if (!qword_27FBDD4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD450, &qword_25BDE2998);
    sub_25BDBC0E4(&qword_27FBDD4E8, MEMORY[0x277D2B6B8], MEMORY[0x277D2B6B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD4E0);
  }

  return result;
}

uint64_t sub_25BDBA1B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BDDFA98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  sub_25BDDFD58();
  v8 = v11[1];
  sub_25BDDFA68();
  v9 = *(type metadata accessor for CoverageCentralSectionView(0) + 20);
  (*(*v8 + 528))(v7, a2, a1 + v9);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25BDBA318()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD4F0, &qword_25BDE29E8);
  MEMORY[0x28223BE20](v1);
  v3 = &v11[-v2];
  v12 = v0;
  type metadata accessor for CoverageCentralSectionView(0);
  v4 = sub_25BDDF6D8();
  if (v5)
  {
    v13 = v4;
    v14 = v5;
    sub_25BDBBE6C();
    v6 = sub_25BDDFC98();
    v9 = v8 & 1;
  }

  else
  {
    v6 = 0;
    v9 = 0;
    v7 = 0;
  }

  v13 = v6;
  v14 = v5;
  v15 = v9;
  v16 = v7;
  sub_25BDBA67C(v0, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD4F8, &qword_25BDE29F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD500, &qword_25BDE29F8);
  sub_25BDBBA68();
  sub_25BDBBAE4();
  sub_25BDBBBF4();
  return sub_25BDDFD38();
}

uint64_t sub_25BDBA494(uint64_t a1)
{
  v2 = type metadata accessor for CoverageCentralSectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_25BDDF6B8();
  swift_getKeyPath();
  sub_25BDBB588(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_25BDBB5EC(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5E8, qword_25BDE2B68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD520, &qword_25BDE2A00);
  sub_25BDBC1A0(&qword_27FBDD5F0, &qword_27FBDD5E8, qword_25BDE2B68, MEMORY[0x277D83980]);
  sub_25BDBBB68();
  return sub_25BDDFD18();
}

uint64_t sub_25BDBA650@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BDDFA78();
  *a1 = result;
  return result;
}

uint64_t sub_25BDBA67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD578, &qword_25BDE30D0);
  MEMORY[0x28223BE20](v4);
  v6 = v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5A0, &qword_25BDE2AC8);
  MEMORY[0x28223BE20](v7);
  v9 = v36 - v8;
  type metadata accessor for CoverageCentralSectionView(0);
  v10 = sub_25BDDF6C8();
  if (v11)
  {
    *&v38 = v10;
    *(&v38 + 1) = v11;
    sub_25BDBBE6C();
    v12 = sub_25BDDFC98();
    v14 = v13;
    v16 = v15;
    v37 = a2;
    sub_25BDDFC68();
    v36[1] = v4;
    v17 = sub_25BDDFC88();
    v19 = v18;
    v36[0] = v7;
    v21 = v20;
    v23 = v22;

    sub_25BDBC080(v12, v14, v16 & 1);

    sub_25BDDFDA8();
    sub_25BDDFB98();
    v45 = v21 & 1;
    KeyPath = swift_getKeyPath();
    *v9 = v17;
    *(v9 + 1) = v19;
    v9[16] = v21 & 1;
    *(v9 + 3) = v23;
    v25 = v43;
    *(v9 + 6) = v42;
    *(v9 + 7) = v25;
    *(v9 + 8) = v44;
    v26 = v39;
    *(v9 + 2) = v38;
    *(v9 + 3) = v26;
    v27 = v41;
    *(v9 + 4) = v40;
    *(v9 + 5) = v27;
    *(v9 + 18) = KeyPath;
    v9[152] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD548, &qword_25BDE2A10);
    sub_25BDBBD30();
    sub_25BDBC1A0(&qword_27FBDD570, &qword_27FBDD578, &qword_25BDE30D0, MEMORY[0x277CE1138]);
    v28 = v37;
    sub_25BDDFC18();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD538, &qword_25BDE2A08);
    return (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  }

  else if (sub_25BDDF698() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980), v31 = sub_25BDDFD58(), v32 = (*(*v38 + 288))(v31), , (v32))
  {
    *v6 = sub_25BDDFBF8();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5A8, &qword_25BDE2AD0);
    sub_25BDBAB48(a1, &v6[*(v33 + 44)]);
    sub_25BDA84EC(v6, v9, &qword_27FBDD578, &qword_25BDE30D0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD548, &qword_25BDE2A10);
    sub_25BDBBD30();
    sub_25BDBC1A0(&qword_27FBDD570, &qword_27FBDD578, &qword_25BDE30D0, MEMORY[0x277CE1138]);
    sub_25BDDFC18();
    sub_25BDA8554(v6, &qword_27FBDD578, &qword_25BDE30D0);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD538, &qword_25BDE2A08);
    return (*(*(v34 - 8) + 56))(a2, 0, 1, v34);
  }

  else
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD538, &qword_25BDE2A08);
    return (*(*(v35 - 8) + 56))(a2, 1, 1, v35);
  }
}

uint64_t sub_25BDBAB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_25BDDFC38();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5B0, &qword_25BDE2E00);
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v53 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5B8, &unk_25BDE2B10);
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5C0, &unk_25BDE3200);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v65 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v52 - v12;
  v59 = sub_25BDDF988();
  v13 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD298, &unk_25BDE2B20);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v52 - v17;
  v19 = sub_25BDDF438();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v52 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5C8, &qword_25BDE3210);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v60 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v52 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  v61 = a1;
  v31 = sub_25BDDFD58();
  (*(*v67 + 240))(v31);

  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_25BDA8554(v18, &qword_27FBDD298, &unk_25BDE2B20);
    v32 = 1;
    v33 = v59;
  }

  else
  {
    (*(v20 + 32))(v25, v18, v19);
    (*(v20 + 16))(v23, v25, v19);
    sub_25BDDF978();
    (*(v20 + 8))(v25, v19);
    v34 = v59;
    (*(v13 + 32))(v30, v15, v59);
    v32 = 0;
    v33 = v34;
  }

  (*(v13 + 56))(v30, v32, 1, v33);
  v35 = sub_25BDDFD58();
  v36 = (*(*v67 + 336))(v35);

  v37 = 1;
  v38 = v63;
  v39 = v64;
  v40 = v62;
  if (v36)
  {
    v41 = v53;
    sub_25BDDFB78();
    v42 = v56;
    sub_25BDDFC28();
    sub_25BDBC1A0(&qword_27FBDD5D8, &qword_27FBDD5B0, &qword_25BDE2E00, MEMORY[0x277CDD7F8]);
    sub_25BDBC0E4(&qword_27FBDD5E0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    v43 = v52;
    v44 = v55;
    v45 = v58;
    sub_25BDDFCD8();
    (*(v57 + 8))(v42, v45);
    (*(v54 + 8))(v41, v44);
    (*(v40 + 32))(v39, v43, v38);
    v37 = 0;
  }

  (*(v40 + 56))(v39, v37, 1, v38);
  v46 = v60;
  sub_25BDA84EC(v30, v60, &qword_27FBDD5C8, &qword_25BDE3210);
  v47 = v65;
  sub_25BDA84EC(v39, v65, &qword_27FBDD5C0, &unk_25BDE3200);
  v48 = v66;
  sub_25BDA84EC(v46, v66, &qword_27FBDD5C8, &qword_25BDE3210);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD5D0, &qword_25BDE2B30);
  v50 = v48 + *(v49 + 48);
  *v50 = 0;
  *(v50 + 8) = 1;
  sub_25BDA84EC(v47, v48 + *(v49 + 64), &qword_27FBDD5C0, &unk_25BDE3200);
  sub_25BDA8554(v39, &qword_27FBDD5C0, &unk_25BDE3200);
  sub_25BDA8554(v30, &qword_27FBDD5C8, &qword_25BDE3210);
  sub_25BDA8554(v47, &qword_27FBDD5C0, &unk_25BDE3200);
  return sub_25BDA8554(v46, &qword_27FBDD5C8, &qword_25BDE3210);
}

uint64_t sub_25BDBB314@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for CoverageCentralViewModel(0);
  sub_25BDBC0E4(&qword_27FBDD438, type metadata accessor for CoverageCentralViewModel, &protocol conformance descriptor for CoverageCentralViewModel);
  sub_25BDDFD88();
  v5 = *(type metadata accessor for CoverageCentralSectionView(0) + 20);
  v6 = sub_25BDDF6E8();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t sub_25BDBB410()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD4F0, &qword_25BDE29E8);
  MEMORY[0x28223BE20](v1);
  v3 = &v11[-v2];
  v12 = v0;
  v4 = sub_25BDDF6D8();
  if (v5)
  {
    v13 = v4;
    v14 = v5;
    sub_25BDBBE6C();
    v6 = sub_25BDDFC98();
    v9 = v8 & 1;
  }

  else
  {
    v6 = 0;
    v9 = 0;
    v7 = 0;
  }

  v13 = v6;
  v14 = v5;
  v15 = v9;
  v16 = v7;
  sub_25BDBA67C(v0, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD4F8, &qword_25BDE29F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD500, &qword_25BDE29F8);
  sub_25BDBBA68();
  sub_25BDBBAE4();
  sub_25BDBBBF4();
  return sub_25BDDFD38();
}

uint64_t sub_25BDBB588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoverageCentralSectionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BDBB5EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoverageCentralSectionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BDBB650()
{
  v1 = *(type metadata accessor for CoverageCentralSectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_25BDDFA88() - 8);
  return sub_25BDBA1B8(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_25BDBB710()
{
  v1 = v0;
  v2 = (type metadata accessor for CoverageCentralSectionView(0) - 8);
  v3 = (*(*v2 + 80) + 16) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = *(sub_25BDDFA98() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_25BDDFA88() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  sub_25BDDFD58();
  (*(*v11 + 528))(v1 + v6, v1 + v9, v1 + v3 + v2[7]);
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for CoverageCentralSectionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25BDDFA88();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD440, &qword_25BDE2980);
  (*(*(v11 - 8) + 8))(v0 + v3, v11);
  v12 = v1[7];
  v13 = sub_25BDDF6E8();
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

unint64_t sub_25BDBBA68()
{
  result = qword_27FBDD508;
  if (!qword_27FBDD508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD4F8, &qword_25BDE29F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD508);
  }

  return result;
}

unint64_t sub_25BDBBAE4()
{
  result = qword_27FBDD510;
  if (!qword_27FBDD510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD500, &qword_25BDE29F8);
    sub_25BDBBB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD510);
  }

  return result;
}

unint64_t sub_25BDBBB68()
{
  result = qword_27FBDD518;
  if (!qword_27FBDD518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD520, &qword_25BDE2A00);
    sub_25BDB9E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD518);
  }

  return result;
}

unint64_t sub_25BDBBBF4()
{
  result = qword_27FBDD528;
  if (!qword_27FBDD528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD4F0, &qword_25BDE29E8);
    sub_25BDBBC78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD528);
  }

  return result;
}

unint64_t sub_25BDBBC78()
{
  result = qword_27FBDD530;
  if (!qword_27FBDD530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD538, &qword_25BDE2A08);
    sub_25BDBBD30();
    sub_25BDBC1A0(&qword_27FBDD570, &qword_27FBDD578, &qword_25BDE30D0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD530);
  }

  return result;
}

unint64_t sub_25BDBBD30()
{
  result = qword_27FBDD540;
  if (!qword_27FBDD540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD548, &qword_25BDE2A10);
    sub_25BDBBDE8();
    sub_25BDBC1A0(&qword_27FBDD560, &qword_27FBDD568, &unk_25BDE2A20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD540);
  }

  return result;
}

unint64_t sub_25BDBBDE8()
{
  result = qword_27FBDD550;
  if (!qword_27FBDD550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD558, &qword_25BDE2A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD550);
  }

  return result;
}

unint64_t sub_25BDBBE6C()
{
  result = qword_27FBDD580;
  if (!qword_27FBDD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD580);
  }

  return result;
}

void sub_25BDBBF04(uint64_t a1)
{
  sub_25BDBBF88(319);
  if (v1 <= 0x3F)
  {
    sub_25BDDF6E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25BDBBF88(uint64_t a1)
{
  if (!qword_27FBDD588)
  {
    type metadata accessor for CoverageCentralViewModel(255);
    v1 = sub_25BDDFD98();
    if (!v2)
    {
      atomic_store(v1, &qword_27FBDD588);
    }
  }
}

unint64_t sub_25BDBBFE0()
{
  result = qword_27FBDD590;
  if (!qword_27FBDD590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDD598, &qword_25BDE2AC0);
    sub_25BDBBA68();
    sub_25BDBBAE4();
    sub_25BDBBBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDD590);
  }

  return result;
}

uint64_t sub_25BDBC080(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25BDBC090@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BDDFBB8();
  *a1 = result;
  return result;
}

uint64_t sub_25BDBC0E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25BDBC1A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

NDODeviceCoverageDetailsUI __swiftcall NDODeviceCoverageDetailsUI.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_25BDBC40C(void *a1)
{
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  [v1 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;
  result = [a1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result;
  [v5 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDD430, &unk_25BDE2490);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BDE2440;
  result = [a1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = result;
  v9 = [result topAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = result;
  v11 = [result topAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v7 + 32) = v12;
  result = [a1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = result;
  v14 = [result bottomAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = result;
  v16 = [result bottomAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v7 + 40) = v17;
  result = [a1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = result;
  v19 = [result leadingAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = result;
  v21 = [result safeAreaLayoutGuide];

  v22 = [v21 leadingAnchor];
  v23 = [v19 constraintEqualToAnchor_];

  *(v7 + 48) = v23;
  result = [a1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = result;
  v25 = [result trailingAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = objc_opt_self();
  v28 = [v26 safeAreaLayoutGuide];

  v29 = [v28 trailingAnchor];
  v30 = [v25 constraintEqualToAnchor_];

  *(v7 + 56) = v30;
  sub_25BDABD64(0, &qword_27FBDD280, 0x277CCAAD0);
  v31 = sub_25BDDFEC8();

  [v27 activateConstraints_];

  return [a1 didMoveToParentViewController_];
}