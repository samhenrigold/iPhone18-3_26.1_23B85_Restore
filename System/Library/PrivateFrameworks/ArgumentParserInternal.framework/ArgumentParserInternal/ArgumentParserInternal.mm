uint64_t sub_240FDC158()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240FDC1A0()
{
  if (v0[2] >= 2uLL)
  {
  }

  if (v0[6])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_240FDC23C(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 104) = v3;
  return result;
}

uint64_t sub_240FDC280@<X0>(uint64_t *a1@<X8>)
{
  result = CommandConfiguration.groupedSubcommands.getter();
  *a1 = result;
  return result;
}

uint64_t sub_240FDC2E4(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 144) = v3;
  return result;
}

__n128 sub_240FDC3B0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_240FDC3C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = *(v4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = v5(AssociatedTypeWitness, v4);
  *a3 = result;
  a3[1] = v8;
  return result;
}

void sub_240FDC444(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
}

unint64_t sub_240FDC454@<X0>(uint64_t a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_240FEC7E8(a2, a3);
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

unint64_t sub_240FDC494@<X0>(uint64_t a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_240FED3E4(a2, a3);
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_240FDC4D8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240FDC520()
{
  if (*(v0 + 16) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240FDC57C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240FDC604()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240FDC63C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240FDC674()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 81) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v0 + 40))
  {
  }

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 16);
  if (v6 != 255)
  {
    sub_240FFB9C4(*(v0 + v5), *(v0 + v5 + 8), v6);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 17, v3 | 7);
}

uint64_t sub_240FDC768()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v0 + 32))
  {
  }

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 16);
  if (v6 != 255)
  {
    sub_240FFB9C4(*(v0 + v5), *(v0 + v5 + 8), v6);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 17, v3 | 7);
}

uint64_t sub_240FDC868()
{
  v1 = *(v0 + 16);
  v2 = *(sub_241046E58() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 81) & ~v3;
  v5 = *(v2 + 64) + v4 + 7;
  if (*(v0 + 40))
  {
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v0 + v4, 1, v1))
  {
    (*(v7 + 8))(v0 + v4, v1);
  }

  v8 = *(v0 + v6 + 16);
  if (v8 != 255)
  {
    sub_240FFB9C4(*(v0 + v6), *(v0 + v6 + 8), v8);
  }

  return MEMORY[0x2821FE8E8](v0, v6 + 17, v3 | 7);
}

uint64_t sub_240FDC9CC()
{
  v1 = *(v0 + 16);
  v2 = *(sub_241046E58() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64) + v4 + 7;
  if (*(v0 + 32))
  {
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v0 + v4, 1, v1))
  {
    (*(v7 + 8))(v0 + v4, v1);
  }

  v8 = *(v0 + v6 + 16);
  if (v8 != 255)
  {
    sub_240FFB9C4(*(v0 + v6), *(v0 + v6 + 8), v8);
  }

  return MEMORY[0x2821FE8E8](v0, v6 + 17, v3 | 7);
}

uint64_t sub_240FDCB34()
{
  if (*(v0 + 40))
  {
  }

  v1 = *(v0 + 112);
  if (v1 != 255)
  {
    sub_240FFB9C4(*(v0 + 96), *(v0 + 104), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_240FDCB9C()
{
  if (*(v0 + 32))
  {
  }

  v1 = *(v0 + 120);
  if (v1 != 255)
  {
    sub_240FFB9C4(*(v0 + 104), *(v0 + 112), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t sub_240FDCC84()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 90) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + 48))
  {
  }

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 16);
  if (v6 != 255)
  {
    sub_240FFB9C4(*(v0 + v5), *(v0 + v5 + 8), v6);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 17, v3 | 7);
}

uint64_t sub_240FDCD80()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + 40))
  {
  }

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 16);
  if (v6 != 255)
  {
    sub_240FFB9C4(*(v0 + v5), *(v0 + v5 + 8), v6);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 17, v3 | 7);
}

uint64_t sub_240FDCE84()
{
  v1 = *(v0 + 16);
  v2 = *(sub_241046E58() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 90) & ~v3;
  v5 = *(v2 + 64) + v4 + 7;

  if (*(v0 + 48))
  {
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v0 + v4, 1, v1))
  {
    (*(v7 + 8))(v0 + v4, v1);
  }

  v8 = *(v0 + v6 + 16);
  if (v8 != 255)
  {
    sub_240FFB9C4(*(v0 + v6), *(v0 + v6 + 8), v8);
  }

  return MEMORY[0x2821FE8E8](v0, v6 + 17, v3 | 7);
}

uint64_t sub_240FDCFF0()
{
  v1 = *(v0 + 16);
  v2 = *(sub_241046E58() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64) + v4 + 7;

  if (*(v0 + 40))
  {
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v0 + v4, 1, v1))
  {
    (*(v7 + 8))(v0 + v4, v1);
  }

  v8 = *(v0 + v6 + 16);
  if (v8 != 255)
  {
    sub_240FFB9C4(*(v0 + v6), *(v0 + v6 + 8), v8);
  }

  return MEMORY[0x2821FE8E8](v0, v6 + 17, v3 | 7);
}

uint64_t sub_240FDD160()
{

  if (*(v0 + 48))
  {
  }

  v1 = *(v0 + 120);
  if (v1 != 255)
  {
    sub_240FFB9C4(*(v0 + 104), *(v0 + 112), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t sub_240FDD1D0()
{

  if (*(v0 + 40))
  {
  }

  v1 = *(v0 + 128);
  if (v1 != 255)
  {
    sub_240FFB9C4(*(v0 + 112), *(v0 + 120), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 129, 7);
}

uint64_t sub_240FDD2C8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 sub_240FDD34C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t *sub_240FDD360@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_240FDD3BC()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_240FDD410()
{
  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 82, 7);
}

uint64_t sub_240FDD4BC()
{
  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_240FDD510()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_240FDD5D4()
{
  v1 = *(v0 + 16);
  v2 = *(sub_241046E58() - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 24) & ~v3;
  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v0 + v5, 1, v1))
  {
    (*(v6 + 8))(v0 + v5, v1);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 24, v3 | 7);
}

uint64_t sub_240FDD718()
{
  v1 = *(v0 + 16);
  v2 = *(sub_241046E58() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1, v1))
  {
    (*(v6 + 8))(v0 + v4, v1);
  }

  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 50, v3 | 7);
}

uint64_t sub_240FDD8BC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240FDD938()
{
  sub_240FDEE54(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_240FDEE64(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_240FDD990()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_240FDD9E4()
{

  if (*(v0 + 32))
  {
  }

  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_240FFB9C4(*(v0 + 80), *(v0 + 88), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_240FDDA4C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240FDDA94()
{
  if (*(v0 + 16) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_240FDDB58()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240FDDB90()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_240FDDBD8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(sub_241046E58() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  if (*(v0 + 32) >= 2uLL)
  {
  }

  v6 = *(AssociatedTypeWitness - 8);
  if (!(*(v6 + 48))(v0 + v4, 1, AssociatedTypeWitness))
  {
    (*(v6 + 8))(v0 + v4, AssociatedTypeWitness);
  }

  return MEMORY[0x2821FE8E8](v0, ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 24, v3 | 7);
}

uint64_t sub_240FDDD60()
{

  if (v0[9])
  {

    if (v0[14])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 129, 7);
}

uint64_t sub_240FDDDE4()
{

  if (v0[9])
  {

    if (v0[14])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
    }
  }

  if (v0[19])
  {

    if (v0[24])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 21);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 209, 7);
}

uint64_t sub_240FDDE9C()
{

  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_240FDDF10(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 96) = v3;
  return result;
}

uint64_t sub_240FDDF54(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_240FDE04C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F300, &qword_241047D08);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v24 - v3;
  v25 = a1;
  swift_getMetatypeMetadata();
  v5 = sub_241046AF8();
  v7 = sub_240FE58B8(95, 0xE100000000000000, v5, v6);
  v9 = v8;

  v25 = v7;
  v26 = v9;
  v24[0] = 0x736E6F6974706F5FLL;
  v24[1] = 0xE800000000000000;
  v10 = sub_2410469B8();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_240FE05E8();
  sub_241046EF8();
  v12 = v11;
  v14 = v13;
  sub_240FE07E8(v4, &qword_27E51F300, &qword_241047D08);
  if ((v14 & 1) == 0)
  {
    v15 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v15 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v12 >> 14 == 4 * v15)
    {
      v16 = sub_241046C78();
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v7 = MEMORY[0x245CD7040](v16, v18, v20, v22);
    }
  }

  return v7;
}

uint64_t sub_240FDE248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for OptionGroup(0, *(a1 + 16), *(a1 + 24), a2);

  return OptionGroup.wrappedValue.getter(v4, a3, v5, v6);
}

uint64_t sub_240FDE288(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_241047428();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_240FDE308()
{
  sub_2410475A8();
  MEMORY[0x245CD7AE0](0);
  return sub_2410475E8();
}

uint64_t sub_240FDE34C(uint64_t a1)
{
  sub_2410475A8();
  MEMORY[0x245CD7AE0](0);
  return sub_2410475E8();
}

uint64_t sub_240FDE3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240FDE288(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_240FDE3E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_240FDE300();
  *a1 = result & 1;
  return result;
}

uint64_t sub_240FDE414(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240FDE468(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_240FDE4F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v23 = a4;
  v8 = type metadata accessor for OptionGroup(0, a2, a3, a5);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v27 = &v23 - v9;
  type metadata accessor for _WrappedParsableCommand.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable();
  v28 = sub_2410472C8();
  v24 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v12 = &v23 - v11;
  v30 = type metadata accessor for _WrappedParsableCommand(0, a2, a3, v13);
  v14 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v16 = &v23 - v15;
  v31 = 0;
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, &v31, a2, a3, &v23 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v29;
  sub_241047628();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return (*(v14 + 8))(v16, v30);
  }

  else
  {
    v18 = v24;
    v19 = v25;
    v20 = v26;
    swift_getWitnessTable();
    sub_2410472B8();
    (*(v18 + 8))(v12, v28);
    (*(v19 + 40))(v16, v27, v20);
    v21 = v30;
    (*(v14 + 16))(v23, v16, v30);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return (*(v14 + 8))(v16, v21);
  }
}

uint64_t sub_240FDE870(uint64_t a1, uint64_t a2)
{
  if (!swift_conformsToProtocol2() || !v2)
  {
    v2 = type metadata accessor for _WrappedParsableCommand(0, a1, a2, v5);
    swift_getWitnessTable();
  }

  return v2;
}

void *static ParsableArguments.parse(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a4;
  v51 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v15 = type metadata accessor for _WrappedParsableCommand(0, v12, v13, v14);
  v50 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v48 - v19;
  sub_240FDE870(a2, a3);
  v21 = v64;
  result = static ParsableCommand.parseAsRoot(_:)(a1, v22, v63);
  if (!v21)
  {
    v24 = v50;
    v48 = a3;
    v25 = v51;
    v64 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E0, &unk_241047C00);
    if (swift_dynamicCast())
    {
      v26 = v56;
      v27 = v57;
      v28 = v58;
      v29 = v59;
      v30 = v60;
      v31 = v61;
      v32 = v62;
      sub_240FDEE00();
      swift_allocError();
      *v33 = v32;
      *(v33 + 1) = v52;
      v35 = v54;
      v34 = *v55;
      v36 = *&v55[15];
      *(v33 + 17) = v53;
      *(v33 + 64) = v36;
      *(v33 + 49) = v34;
      *(v33 + 33) = v35;
      *(v33 + 80) = 0;
      swift_willThrow();
      sub_240FDEE54(v26, v27, v28);
      sub_240FDEE64(v29, v30, v31);

      return __swift_destroy_boxed_opaque_existential_1Tm(v63);
    }

    if (swift_dynamicCast())
    {
      (*(v24 + 32))(v18, v20, v15);
      v38 = type metadata accessor for OptionGroup(0, *(v15 + 16), *(v15 + 24), v37);
      OptionGroup.wrappedValue.getter(v38, v49, v39, v40);
      (*(v24 + 8))(v18, v15);
      return __swift_destroy_boxed_opaque_existential_1Tm(v63);
    }

    if (swift_dynamicCast())
    {
      v41 = *(v25 + 32);
      v41(v9, v11, a2);
      v42 = v64;
      (*(v48 + 24))(a2);
      v64 = v42;
      if (!v42)
      {
        v41(v49, v9, a2);
        return __swift_destroy_boxed_opaque_existential_1Tm(v63);
      }

      sub_240FDEE00();
      swift_allocError();
      *v43 = v64;
      *(v43 + 8) = v52;
      v44 = v53;
      v45 = v54;
      v46 = *v55;
      *(v43 + 72) = *&v55[16];
      *(v43 + 56) = v46;
      *(v43 + 40) = v45;
      *(v43 + 24) = v44;
      *(v43 + 80) = 13;
      swift_willThrow();
      (*(v25 + 8))(v9, a2);
      return __swift_destroy_boxed_opaque_existential_1Tm(v63);
    }

    else
    {
      sub_240FDEE00();
      swift_allocError();
      *v47 = 3;
      *(v47 + 8) = 0u;
      *(v47 + 24) = 0u;
      *(v47 + 40) = 0u;
      *(v47 + 56) = 0u;
      *(v47 + 72) = 0;
      *(v47 + 80) = 15;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1Tm(v63);
    }
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

unint64_t sub_240FDEE00()
{
  result = qword_280CC2080;
  if (!qword_280CC2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC2080);
  }

  return result;
}

uint64_t sub_240FDEE54(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_240FDEE64(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t static ParsableArguments.message(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245CD7E90](a1, a2);
  sub_241007EE4(a1, v3, a3, 0, 1, v13);
  v6 = v13[0];
  v7 = v13[1];
  if (v14 && v14 == 1)
  {
    v9 = v13[4];
    v8 = v13[5];
    v11 = v13[2];
    v10 = v13[3];

    sub_240FDEF1C(v6, v7, v11, v10, v9, v8, 1);
  }

  return v6;
}

void sub_240FDEF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (!a7 || a7 == 2)
  {
  }

  else
  {
    if (a7 != 1)
    {
      return;
    }
  }
}

uint64_t static ParsableArguments.fullMessage(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  MEMORY[0x245CD7E90](a1, a2);
  sub_241007EE4(a1, v4, a3, 0, 1, v13);
  v9 = v13[0];
  v10 = v13[1];
  v11 = v13[2];
  v12 = v14;
  v7 = sub_241009384(v4, a3);
  sub_240FDEF1C(v9, *(&v9 + 1), v10, *(&v10 + 1), v11, *(&v11 + 1), v12);
  return v7;
}

uint64_t static ParsableArguments.fullMessage(for:columns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3;
  MEMORY[0x245CD7E90](a1, a2, a3, a4);
  sub_241007EE4(a1, v6, a5, a2, v8 & 1, v17);
  v13 = v17[0];
  v14 = v17[1];
  v15 = v17[2];
  v16 = v18;
  v11 = sub_241009384(v6, a5);
  sub_240FDEF1C(v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16);
  return v11;
}

uint64_t static ParsableArguments.helpMessage(includeHidden:columns:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_241047BF0;
  *(v10 + 32) = sub_240FDE870(a4, a5);
  *(v10 + 40) = v11;
  v14 = a1;
  sub_24100140C(v10, &v14, v15);

  v12 = sub_240FFCFBC(a2, a3 & 1);
  sub_240FE0170(v15);
  return v12;
}

uint64_t static ParsableArguments._dumpHelp()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_241047BF0;
  *(v4 + 32) = sub_240FDE870(a1, a2);
  *(v4 + 40) = v5;
  sub_240FF88D0(v4, v8 + 1);
  *&v8[0] = 0;
  v6 = sub_240FF7610();
  v9[2] = v8[2];
  v9[3] = v8[3];
  v9[4] = v8[4];
  v9[5] = v8[5];
  v9[0] = v8[0];
  v9[1] = v8[1];
  sub_240FE01C4(v9);
  return v6;
}

void static ParsableArguments.exitCode(for:)(uint64_t a1@<X0>, uint64_t a2@<X2>, int *a3@<X8>)
{
  MEMORY[0x245CD7E90]();
  sub_241007EE4(a1, v3, a2, 0, 1, v9);
  if (v14 == 1)
  {
    v7 = 64;
  }

  else
  {
    v7 = v10;
  }

  if (v14)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  sub_240FDEF1C(v9[0], v9[1], v10, v11, v12, v13, v14);
  *a3 = v8;
}

uint64_t static ParsableArguments.completionScript(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_240FDE870(a2, a3);

  v3 = sub_240FF2954();

  return v3;
}

void static ParsableArguments.exit(withError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    MEMORY[0x245CD7E90](a1, a2);
    MEMORY[0x245CD7E90](v5);
    sub_241007EE4(v5, v3, a3, 0, 1, &v15);
    v6 = v17;
    v14 = v16;
    v7 = sub_241009384(v3, a3);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v10 = v7;
      v11 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2F0, &qword_241047C10);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_241047BF0;
      *(v12 + 56) = MEMORY[0x277D837D0];
      *(v12 + 32) = v10;
      *(v12 + 40) = v11;
      if (!v6)
      {
        sub_241047598();

        exit(0);
      }

      sub_240FE0218();
      sub_241047588();
    }

    if (v6 == 1)
    {
      v13 = 64;
    }

    else
    {
      v13 = v14;
    }

    if (v6)
    {
      LODWORD(a1) = v13;
    }

    else
    {
      LODWORD(a1) = 0;
    }
  }

  exit(a1);
}

unint64_t static ParsableArguments.usageString(includeHidden:)(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241047BF0;
  *(inited + 32) = sub_240FDE870(a2, a3);
  *(inited + 40) = v7;
  v10 = a1;
  sub_24100140C(inited, &v10, v11);

  v8 = v11[3];

  sub_240FE0170(v11);
  return v8;
}

uint64_t sub_240FDF5E4(uint64_t result, unsigned __int8 a2)
{
  v2 = result;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v44 = result + 32;
  v7 = result + 56;
  v43 = MEMORY[0x277D84F90];
  v8 = 2 - a2;
  v42 = v8;
  while (1)
  {
    if (v5)
    {
      v9 = *(v5 + 16);
      if (v3 != v9)
      {
        goto LABEL_13;
      }
    }

    v10 = *(v2 + 16);
    if (v6 == v10)
    {
      goto LABEL_21;
    }

    if (v6 >= v10)
    {
      break;
    }

    v11 = 16 * v6;
    v12 = (v44 + 16 * v6);
    v14 = *v12;
    v13 = v12[1];

    result = sub_240FE0950(v5, v4);
    ++v6;
    v15 = (v7 + v11);
    v5 = v14;
    if (!v14)
    {
      goto LABEL_8;
    }

LABEL_7:
    v9 = *(v5 + 16);
    if (!v9)
    {
LABEL_8:
      while (1)
      {
        v16 = *(v2 + 16);
        if (v6 == v16)
        {
          break;
        }

        if (v6 >= v16)
        {
          goto LABEL_22;
        }

        v18 = *(v15 - 1);
        v17 = *v15;

        result = sub_240FE0950(v5, v13);
        ++v6;
        v15 += 2;
        v13 = v17;
        v5 = v18;
        if (v18)
        {
          goto LABEL_7;
        }
      }

      v4 = v13;
LABEL_21:

      sub_240FE0950(v5, v4);
      return v43;
    }

    v3 = 0;
    v4 = v13;
    v8 = v42;
LABEL_13:
    if (v3 >= v9)
    {
      goto LABEL_23;
    }

    v19 = (v5 + 192 * v3);
    v20 = v19[2];
    v21 = v19[3];
    v22 = v19[5];
    v48 = v19[4];
    v49 = v22;
    v46 = v20;
    v47 = v21;
    v23 = v19[6];
    v24 = v19[7];
    v25 = v19[9];
    v52 = v19[8];
    v53 = v25;
    v50 = v23;
    v51 = v24;
    v26 = v19[10];
    v27 = v19[11];
    v28 = v19[13];
    v56 = v19[12];
    v57 = v28;
    v54 = v26;
    v55 = v27;
    ++v3;
    if (2 - BYTE8(v52) >= v8)
    {
      sub_240FE0990(&v46, v45);
      result = swift_isUniquelyReferenced_nonNull_native();
      v29 = v43;
      v58 = v43;
      if ((result & 1) == 0)
      {
        result = sub_240FE4160(0, *(v43 + 16) + 1, 1);
        v29 = v58;
      }

      v31 = *(v29 + 16);
      v30 = *(v29 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_240FE4160((v30 > 1), v31 + 1, 1);
        v29 = v58;
      }

      *(v29 + 16) = v31 + 1;
      v43 = v29;
      v32 = (v29 + 192 * v31);
      v33 = v46;
      v34 = v47;
      v35 = v49;
      v32[4] = v48;
      v32[5] = v35;
      v32[2] = v33;
      v32[3] = v34;
      v36 = v50;
      v37 = v51;
      v38 = v53;
      v32[8] = v52;
      v32[9] = v38;
      v32[6] = v36;
      v32[7] = v37;
      v39 = v54;
      v40 = v55;
      v41 = v57;
      v32[12] = v56;
      v32[13] = v41;
      v32[10] = v39;
      v32[11] = v40;
      v8 = v42;
    }
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_240FDF86C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a6;
  v65 = a4;
  v10 = sub_241047618();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *a3;
  v14 = *(a2 + 16);
  *(&v81 + 1) = a1;
  *&v82 = a2;
  __swift_allocate_boxed_opaque_existential_1Tm(&v80);
  v14(a1, a2);
  v15 = *(&v81 + 1);
  v16 = __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
  *(&v79[0] + 1) = v15;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v78);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1Tm, v16, v15);
  sub_2410475F8();
  __swift_destroy_boxed_opaque_existential_1Tm(&v80);
  v18 = sub_241047608();
  (*(v11 + 8))(v13, v10);
  v61 = v18;
  v68 = sub_241047118();
  sub_241047238();
  if (*(&v82 + 1))
  {
    v67 = xmmword_241047BF0;
    v19 = MEMORY[0x277D84F90];
    v63 = a5;
    while (1)
    {
      v78 = v80;
      v79[0] = v81;
      v79[1] = v82;
      sub_240FE088C(&v78, &v76, &qword_27E51F310, &qword_241047D10);
      v20 = *(&v76 + 1);
      if (*(&v76 + 1))
      {
        v21 = v76;
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
        sub_240FE088C(&v78, &v76, &qword_27E51F310, &qword_241047D10);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F318, &qword_241047D18);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v72 = 0;
          v71 = 0u;
          v70 = 0u;
          sub_240FE07E8(&v70, &qword_27E51F320, &unk_241047D20);
          sub_240FE078C(v79, &v76);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
          swift_dynamicCast();
          v24 = v74;
          sub_240FE07E8(v73, &qword_27E51F328, &qword_241048720);
          v64 = v19;
          if (v24)
          {
            sub_240FE078C(v79, &v76);
          }

          else
          {
            v76 = 0u;
            v77[0] = 0u;
          }

          v25 = v65;
          sub_240FE0848(v65, a5, v66);
          v26 = sub_2410390E8(v21, v20, v25, a5);
          v28 = v27;
          v30 = v29;
          sub_240FE088C(&v76, v73, &qword_27E51F328, &qword_241048720);
          v31 = v74 != 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
          v32 = swift_allocObject();
          *(v32 + 16) = v67;
          *(v32 + 32) = v26;
          *(v32 + 40) = v28;
          *(v32 + 48) = v30;

          v33 = swift_allocObject();
          v33[2] = sub_24102CCD0;
          v33[3] = 0;
          v33[4] = v26;
          v33[5] = v28;
          v33[6] = v30;
          sub_240FE088C(v73, &v70, &qword_27E51F328, &qword_241048720);
          v34 = swift_allocObject();
          *(v34 + 16) = 1;
          v35 = v71;
          *(v34 + 24) = v70;
          *(v34 + 40) = v35;
          *(v34 + 56) = v26;
          *(v34 + 64) = v28;
          *(v34 + 72) = v30;

          sub_240FE07E8(&v76, &qword_27E51F328, &qword_241048720);
          v69 = 1;
          sub_240FE07E8(v73, &qword_27E51F328, &qword_241048720);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
          v36 = swift_allocObject();
          *(v36 + 16) = v67;
          *(v36 + 32) = 1;
          *(v36 + 40) = v31;
          *(v36 + 48) = 0;
          *(v36 + 56) = 0;
          *(v36 + 64) = v32;
          *(v36 + 72) = MEMORY[0x277D84F90];
          *(v36 + 80) = 0;
          *(v36 + 88) = 0;
          *(v36 + 96) = 0xE000000000000000;
          *(v36 + 104) = 0;
          *(v36 + 112) = 0xE000000000000000;
          *(v36 + 120) = 0;
          *(v36 + 128) = 0xE000000000000000;
          *(v36 + 136) = 2;
          *(v36 + 144) = 0;
          *(v36 + 152) = 0xE000000000000000;
          *(v36 + 160) = 0;
          *(v36 + 168) = 0;
          *(v36 + 176) = 4;
          *(v36 + 184) = sub_240FE08F4;
          *(v36 + 192) = v33;
          *(v36 + 200) = 1;
          *(v36 + 208) = sub_240FE0928;
          *(v36 + 216) = v34;
          v37 = sub_240FF9C90(v36);
          v39 = v38;
          sub_240FE07E8(&v78, &qword_27E51F310, &qword_241047D10);
          v19 = v64;
          goto LABEL_29;
        }

        sub_240FDDF54(&v70, v73);
        v22 = v74;
        v23 = v75;
        __swift_project_boxed_opaque_existential_1(v73, v74);
        (*(v23 + 16))(&v76, v22, v23);
        if (v62)
        {
          if (v62 != 1 || ((4u >> (v76 & 7)) & 1) == 0)
          {
LABEL_16:
            if ((v20 & 0x2000000000000000) != 0)
            {
              v40 = HIBYTE(v20) & 0xF;
            }

            else
            {
              v40 = v21 & 0xFFFFFFFFFFFFLL;
            }

            sub_240FE0848(v65, a5, v66);
            if (v40)
            {
              if (sub_241046C48() == 95 && v41 == 0xE100000000000000)
              {

                goto LABEL_24;
              }

              v42 = sub_241047428();

              if (v42)
              {
LABEL_24:
                v43 = sub_241039038(1uLL, v21, v20);
                v45 = v44;
                v47 = v46;
                v49 = v48;

                v21 = MEMORY[0x245CD7040](v43, v45, v47, v49);
                v20 = v50;
              }
            }

            if (a5)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
              v51 = swift_allocObject();
              *(v51 + 16) = v67;
              *(v51 + 32) = v65;
              *(v51 + 40) = a5;
              *&v76 = v66;
              sub_240FE2060(v51);
              v52 = v76;
            }

            else
            {
              v52 = MEMORY[0x277D84F90];
            }

            v53 = v74;
            v54 = v75;
            __swift_project_boxed_opaque_existential_1(v73, v74);
            v37 = (*(v54 + 8))(v21, v20, v52, v53, v54);
            v39 = v55;

            sub_240FE07E8(&v78, &qword_27E51F310, &qword_241047D10);
            __swift_destroy_boxed_opaque_existential_1Tm(v73);
LABEL_29:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_240FE31C4(0, *(v19 + 2) + 1, 1, v19);
            }

            a5 = v63;
            v57 = *(v19 + 2);
            v56 = *(v19 + 3);
            if (v57 >= v56 >> 1)
            {
              v19 = sub_240FE31C4((v56 > 1), v57 + 1, 1, v19);
            }

            *(v19 + 2) = v57 + 1;
            v58 = &v19[16 * v57];
            *(v58 + 4) = v37;
            *(v58 + 5) = v39;
            goto LABEL_4;
          }
        }

        else if (((6u >> (v76 & 7)) & 1) == 0)
        {
          goto LABEL_16;
        }

        sub_240FE07E8(&v78, &qword_27E51F310, &qword_241047D10);
        __swift_destroy_boxed_opaque_existential_1Tm(v73);
      }

      else
      {
        sub_240FE07E8(&v78, &qword_27E51F310, &qword_241047D10);
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
      }

LABEL_4:
      sub_241047238();
      if (!*(&v82 + 1))
      {
        goto LABEL_35;
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_35:

  sub_240FE06FC(v65, a5, v66);

  v59 = sub_240FDF5E4(v19, v62);
  return sub_240FF9C90(v59);
}

unint64_t sub_240FE0218()
{
  result = qword_27E51F2F8;
  if (!qword_27E51F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F2F8);
  }

  return result;
}

uint64_t sub_240FE02EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for OptionGroup(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_240FE035C(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 0x10)
  {
    v3 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v6 = ((v3 + 10) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = v6 & 0xFFFFFFF8;
  v8 = a2 - 2147483646;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10 == 4)
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  else if (v10 == 2)
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = *(a1 + v6);
    if (!v11)
    {
LABEL_5:
      v4 = *(((a1 + v3 + 10) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v4 >= 0xFFFFFFFF)
      {
        LODWORD(v4) = -1;
      }

      return (v4 + 1);
    }
  }

  v12 = v11 - 1;
  if (v7)
  {
    v12 = 0;
    LODWORD(v7) = *a1;
  }

  return (v7 | v12) ^ 0x80000000;
}

int *sub_240FE043C(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (v4 <= 0x10)
  {
    v4 = 16;
  }

  v5 = ((v4 + 10) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v7 = a3 - 2147483646;
    if (((v4 + 10) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v9 = a2 & 0x7FFFFFFF;
    if (((v4 + 10) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 1;
    }

    if (((v4 + 10) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v11 = result;
      bzero(result, v5);
      result = v11;
      *v11 = v9;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(result + v5) = v10;
      }

      else
      {
        *(result + v5) = v10;
      }
    }

    else if (v6)
    {
      *(result + v5) = v10;
    }

    return result;
  }

  v6 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v6 <= 1)
  {
    if (v6)
    {
      *(result + v5) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v6 == 2)
  {
    *(result + v5) = 0;
    goto LABEL_28;
  }

  *(result + v5) = 0;
  if (a2)
  {
LABEL_29:
    *(((result + v4 + 10) & 0xFFFFFFFFFFFFFFF8) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_240FE0570(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_240FE05AC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_240FE05E8()
{
  result = qword_27E51F308;
  if (!qword_27E51F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F308);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_240FE06FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_240FE078C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_240FE07E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_240FE0848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_240FE088C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_240FE0950(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolInfoHeader.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ToolInfoHeader.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t static EnumerableFlag.name(for:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_240FE0C08(&unk_2852DA648);
  sub_240FE0DB0(&unk_2852DA668);

  *a1 = v2;
  return result;
}

double static EnumerableFlag.help(for:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_240FE0C08(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = result + 48;
  v4 = MEMORY[0x277D84F90];
  v14 = result + 48;
  do
  {
    v15 = v4;
    v5 = (v3 + 24 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 2);
      v7 = *(v5 - 1);
      v9 = *v5;
      sub_240FE0E2C(v8, v7, *v5);
      sub_240FE0E2C(v8, v7, v9);
      v10 = sub_241031C1C(v16, v8, v7, v9);
      sub_240FE0E3C(v16[0], v16[1], v17);
      if (v10)
      {
        break;
      }

      result = sub_240FE0E3C(v8, v7, v9);
      v5 += 24;
      if (v2 == v1)
      {
        return v15;
      }
    }

    v4 = v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    v18 = v15;
    if ((result & 1) == 0)
    {
      result = sub_240FE4128(0, *(v15 + 16) + 1, 1);
      v4 = v18;
    }

    v12 = *(v4 + 16);
    v11 = *(v4 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_240FE4128((v11 > 1), v12 + 1, 1);
      v4 = v18;
    }

    *(v4 + 16) = v12 + 1;
    v13 = v4 + 24 * v12;
    *(v13 + 32) = v8;
    *(v13 + 40) = v7;
    *(v13 + 48) = v9;
    v3 = v14;
  }

  while (v2 != v1);
  return v4;
}

uint64_t sub_240FE0E2C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t sub_240FE0E3C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t CommandConfiguration.commandName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CommandConfiguration.commandName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CommandConfiguration._superCommandName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CommandConfiguration._superCommandName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CommandConfiguration.abstract.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CommandConfiguration.abstract.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t CommandConfiguration.usage.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t CommandConfiguration.usage.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t CommandConfiguration.discussion.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t CommandConfiguration.discussion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t CommandConfiguration.version.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t CommandConfiguration.version.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

void CommandConfiguration.subcommands.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_20:

    sub_240FE1E80(v5);
    return;
  }

  v3 = 0;
  v4 = (v1 + 48);
  v5 = MEMORY[0x277D84F90];
  while (v3 < *(v1 + 16))
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_22;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v5 + 3) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_240FE2D64(isUniquelyReferenced_nonNull_native, v11, 1, v5);
      if (*(v6 + 16))
      {
LABEL_15:
        v12 = *(v5 + 2);
        if ((*(v5 + 3) >> 1) - v12 < v7)
        {
          goto LABEL_24;
        }

        memcpy(&v5[16 * v12 + 32], (v6 + 32), 16 * v7);

        if (v7)
        {
          v13 = *(v5 + 2);
          v14 = __OFADD__(v13, v7);
          v15 = v13 + v7;
          if (v14)
          {
            goto LABEL_25;
          }

          *(v5 + 2) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v3;
    v4 += 3;
    if (v2 == v3)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_240FE134C(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 112) = MEMORY[0x277D84F90];

  *(a2 + 104) = v3;
  return result;
}

uint64_t CommandConfiguration.subcommands.setter(uint64_t a1)
{

  *(v1 + 112) = MEMORY[0x277D84F90];

  *(v1 + 104) = a1;
  return result;
}

uint64_t (*CommandConfiguration.subcommands.modify(void *a1))()
{
  v3 = *(v1 + 104);
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = *(v1 + 112);
  CommandConfiguration.subcommands.getter();
  *a1 = v4;
  return sub_240FE1474;
}

uint64_t sub_240FE1474(void *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {

    v4 = MEMORY[0x277D84F90];
    *(v3 + 104) = v2;
    *(v3 + 112) = v4;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
    *(v3 + 104) = v2;
    *(v3 + 112) = v6;
  }

  return result;
}

uint64_t CommandConfiguration.ungroupedSubcommands.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t (*CommandConfiguration.ungroupedSubcommands.modify(void *a1))()
{
  v3 = *(v1 + 104);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_240FE158C;
}

uint64_t sub_240FE158C(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *(v2 + 104) = v3;
  }

  else
  {

    *(v2 + 104) = v3;
  }

  return result;
}

uint64_t CommandConfiguration.groupedSubcommands.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v14 = MEMORY[0x277D84F90];
  result = sub_240FE4258(0, v2, 0);
  v5 = 0;
  v3 = v14;
  v6 = (v1 + 48);
  v13 = v2;
  while (v5 < *(v1 + 16))
  {
    v8 = *(v6 - 2);
    v7 = *(v6 - 1);
    v9 = *v6;
    v11 = *(v14 + 16);
    v10 = *(v14 + 24);

    if (v11 >= v10 >> 1)
    {
      result = sub_240FE4258((v10 > 1), v11 + 1, 1);
    }

    ++v5;
    *(v14 + 16) = v11 + 1;
    v12 = (v14 + 24 * v11);
    v12[4] = v8;
    v12[5] = v7;
    v12[6] = v9;
    v6 += 3;
    if (v13 == v5)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t CommandConfiguration.groupedSubcommands.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v17 = MEMORY[0x277D84F90];
    result = sub_240FE42F8(0, v3, 0);
    v5 = 0;
    v6 = v17;
    v7 = (a1 + 48);
    v8 = a1;
    v16 = v3;
    while (v5 < *(v8 + 16))
    {
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      v13 = *(v17 + 16);
      v12 = *(v17 + 24);

      if (v13 >= v12 >> 1)
      {
        result = sub_240FE42F8((v12 > 1), v13 + 1, 1);
      }

      ++v5;
      *(v17 + 16) = v13 + 1;
      v14 = (v17 + 24 * v13);
      v14[4] = v9;
      v14[5] = v10;
      v14[6] = v11;
      v7 += 3;
      if (v16 == v5)
      {

        v1 = v15;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
LABEL_9:

    *(v1 + 112) = v6;
  }

  return result;
}

uint64_t (*CommandConfiguration.groupedSubcommands.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = CommandConfiguration.groupedSubcommands.getter();
  return sub_240FE18D4;
}

uint64_t sub_240FE18D4(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return CommandConfiguration.groupedSubcommands.setter(*a1);
  }

  CommandConfiguration.groupedSubcommands.setter(v2);
}

uint64_t CommandConfiguration.defaultSubcommand.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2;
  return result;
}

uint64_t CommandConfiguration.helpNames.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 136) = v2;
  return result;
}

uint64_t CommandConfiguration.aliases.setter(uint64_t a1)
{

  *(v1 + 144) = a1;
  return result;
}

uint64_t (*CommandConfiguration.aliases.modify(void *a1))()
{
  v3 = *(v1 + 144);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_240FE1A38;
}

uint64_t sub_240FE1A38(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *(v2 + 144) = v3;
  }

  else
  {

    *(v2 + 144) = v3;
  }

  return result;
}

uint64_t CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16)
{
  v17 = *a16;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  *(a9 + 96) = a12;
  *(a9 + 120) = a14;
  *(a9 + 128) = a15;

  v19 = MEMORY[0x277D84F90];
  *(a9 + 104) = a13;
  *(a9 + 112) = v19;
  *(a9 + 136) = v17;
  *(a9 + 144) = v19;
  return result;
}

uint64_t CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t a18)
{
  v24 = *a17;

  v25 = *(a14 + 16);
  if (v25)
  {
    v36 = a4;
    v37 = a5;
    v38 = a6;
    v39 = a7;
    v40 = a8;
    v41 = a9;
    v45 = *(a14 + 16);
    v46 = MEMORY[0x277D84F90];
    result = sub_240FE42F8(0, v25, 0);
    v27 = 0;
    v28 = v46;
    v29 = (a14 + 48);
    while (v27 < *(a14 + 16))
    {
      v31 = *(v29 - 2);
      v30 = *(v29 - 1);
      v32 = *v29;
      v33 = *(v46 + 16);
      v34 = *(v46 + 24);

      if (v33 >= v34 >> 1)
      {
        result = sub_240FE42F8((v34 > 1), v33 + 1, 1);
      }

      ++v27;
      *(v46 + 16) = v33 + 1;
      v35 = (v46 + 24 * v33);
      v35[4] = v31;
      v35[5] = v30;
      v35[6] = v32;
      v29 += 3;
      if (v45 == v27)
      {

        a8 = v40;
        a9 = v41;
        a6 = v38;
        a7 = v39;
        a5 = v37;
        a4 = v36;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
LABEL_9:
    *a9 = a1;
    *(a9 + 8) = a2;
    *(a9 + 16) = 0;
    *(a9 + 24) = 0;
    *(a9 + 32) = a3;
    *(a9 + 40) = a4;
    *(a9 + 48) = a5;
    *(a9 + 56) = a6;
    *(a9 + 64) = a7;
    *(a9 + 72) = a8;
    *(a9 + 80) = a10;
    *(a9 + 88) = a11;
    *(a9 + 96) = a12 & 1;
    *(a9 + 104) = a13;
    *(a9 + 112) = v28;
    *(a9 + 120) = a15;
    *(a9 + 128) = a16;
    *(a9 + 136) = v24;
    *(a9 + 144) = a18;
  }

  return result;
}

__n128 CommandConfiguration.init(commandName:_superCommandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12, unsigned __int8 a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t *a17)
{
  v27.n128_u64[0] = a3;
  v27.n128_u64[1] = a4;
  v22 = *a17;
  swift_bridgeObjectRelease_n();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  a9[6].n128_u8[0] = a13;
  v24 = MEMORY[0x277D84F90];
  a9[6].n128_u64[1] = a14;
  a9[7].n128_u64[0] = v24;
  a9[7].n128_u64[1] = a15;
  a9[8].n128_u64[0] = a16;
  a9[8].n128_u64[1] = v22;
  a9[9].n128_u64[0] = v24;
  a9[1] = v27;
  return result;
}

double CommandConfiguration.init(commandName:abstract:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  v20 = *a14;

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  result = 0.0;
  *(a9 + 48) = xmmword_241047F10;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  v22 = MEMORY[0x277D84F90];
  *(a9 + 104) = a11;
  *(a9 + 112) = v22;
  *(a9 + 120) = a12;
  *(a9 + 128) = a13;
  *(a9 + 136) = v20;
  *(a9 + 144) = v22;
  return result;
}

uint64_t sub_240FE1E80(uint64_t result)
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

  result = sub_240FE2D64(result, v11, 1, v3);
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

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

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

uint64_t sub_240FE1F6C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_240FE32D0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_240FE2060(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_240FE2E68(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_240FE2154(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_240FE35EC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_240FE224C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_240FE30A8(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_240FE2344(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_240FE3938(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_240FE243C(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 16);
  if (v6 < a1 || v6 < a2)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v12 = *(v4 + 2);
    a4 = v120;
    v14 = v122;
    if (v122 == v120)
    {
      sub_240FE5898(&__dst);
      v25 = a4;
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v10 = a2 - a1;
  v4 = *v5;
  v11 = *(*v5 + 2);
  v12 = v11 + a2 - a1;
  if (__OFADD__(v11, a2 - a1))
  {
    goto LABEL_19;
  }

  v14 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v16 = *(v4 + 3) >> 1, v16 < v12))
  {
    if (v11 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v11;
    }

    v4 = sub_240FE3A5C(isUniquelyReferenced_nonNull_native, v17, 1, v4);
    v16 = *(v4 + 3) >> 1;
  }

  v18 = *(v4 + 2);
  v19 = (v16 - v18);
  v20 = sub_240FE569C(&v119, &v4[192 * v18 + 32], v16 - v18, a1, a2, v14, a4);
  if (v20 < v10)
  {
    goto LABEL_20;
  }

  if (v20 < 1)
  {
LABEL_17:
    if (v20 != v19)
    {
LABEL_18:

      *v5 = v4;
      return result;
    }

    goto LABEL_21;
  }

  v21 = *(v4 + 2);
  v22 = __OFADD__(v21, v20);
  v23 = v20 + v21;
  if (!v22)
  {
    *(v4 + 2) = v23;
    goto LABEL_17;
  }

  __break(1u);
LABEL_24:
  v26 = v121;
  v27 = sub_240FF9704(v70, v14, v119, a4, v121);
  v29 = v28[2];
  v31 = *v28;
  v30 = v28[1];
  v98 = v28[3];
  v97 = v29;
  v95 = v31;
  v96 = v30;
  v32 = v28[6];
  v34 = v28[4];
  v33 = v28[5];
  v102 = v28[7];
  v101 = v32;
  v99 = v34;
  v100 = v33;
  v35 = v28[10];
  v37 = v28[8];
  v36 = v28[9];
  v106 = v28[11];
  v105 = v35;
  v103 = v37;
  v104 = v36;
  memmove(&__dst, v28, 0xC0uLL);
  sub_240FE0990(&v95, &v83);
  result = (v27)(v70, 0);
  if (v14 < *(v26 + 16))
  {
    v25 = v14 + 1;
    nullsub_1();
    while (1)
    {
LABEL_27:
      v103 = v115;
      v104 = v116;
      v105 = v117;
      v106 = v118;
      v99 = v111;
      v100 = v112;
      v101 = v113;
      v102 = v114;
      v95 = __dst;
      v96 = v108;
      v97 = v109;
      v98 = v110;
      if (sub_240FE5818(&v95) == 1)
      {
        v91 = v115;
        v92 = v116;
        v93 = v117;
        v94 = v118;
        v87 = v111;
        v88 = v112;
        v89 = v113;
        v90 = v114;
        v83 = __dst;
        v84 = v108;
        v85 = v109;
        v86 = v110;
        sub_240FE5830(&v83);
        goto LABEL_18;
      }

      v38 = *(v4 + 3);
      v39 = v38 >> 1;
      if ((v38 >> 1) < v12 + 1)
      {
        v4 = sub_240FE3A5C((v38 > 1), v12 + 1, 1, v4);
        v39 = *(v4 + 3) >> 1;
      }

      v79 = v115;
      v80 = v116;
      v81 = v117;
      v82 = v118;
      v75 = v111;
      v76 = v112;
      v77 = v113;
      v78 = v114;
      __src = __dst;
      v72 = v108;
      v73 = v109;
      v74 = v110;
      v91 = v115;
      v92 = v116;
      v93 = v117;
      v94 = v118;
      v87 = v111;
      v88 = v112;
      v89 = v113;
      v90 = v114;
      v83 = __dst;
      v84 = v108;
      v85 = v109;
      v86 = v110;
      if (sub_240FE5818(&v83) != 1 && v12 < v39)
      {
        break;
      }

LABEL_26:
      *(v4 + 2) = v12;
    }

    v54 = v119;
    v40 = v121;
    while (1)
    {
      v41 = &v4[192 * v12 + 32];
      v42 = v12 + 1;
      while (1)
      {
        v12 = v42;
        v69[8] = v115;
        v69[9] = v116;
        v69[10] = v117;
        v69[11] = v118;
        v69[4] = v111;
        v69[5] = v112;
        v69[6] = v113;
        v69[7] = v114;
        v69[0] = __dst;
        v69[1] = v108;
        v69[2] = v109;
        v69[3] = v110;
        v70[8] = v79;
        v70[9] = v80;
        v70[10] = v81;
        v70[11] = v82;
        v70[4] = v75;
        v70[5] = v76;
        v70[6] = v77;
        v70[7] = v78;
        v70[0] = __src;
        v70[1] = v72;
        v70[2] = v73;
        v70[3] = v74;
        sub_240FE0990(v70, &v57);
        sub_240FE5830(v69);
        memmove(v41, &__src, 0xC0uLL);
        if (v25 != a4)
        {
          break;
        }

        sub_240FE5898(&v57);
        v115 = v65;
        v116 = v66;
        v117 = v67;
        v118 = v68;
        v111 = v61;
        v112 = v62;
        v113 = v63;
        v114 = v64;
        __dst = v57;
        v108 = v58;
        v109 = v59;
        v110 = v60;
        v79 = v65;
        v80 = v66;
        v81 = v67;
        v82 = v68;
        v75 = v61;
        v76 = v62;
        v77 = v63;
        v78 = v64;
        __src = v57;
        v72 = v58;
        v73 = v59;
        v74 = v60;
        v91 = v65;
        v92 = v66;
        v93 = v67;
        v94 = v68;
        v87 = v61;
        v88 = v62;
        v89 = v63;
        v90 = v64;
        v83 = v57;
        v84 = v58;
        v85 = v59;
        v86 = v60;
        if (sub_240FE5818(&v83) == 1)
        {
          v25 = a4;
          *(v4 + 2) = v12;
          goto LABEL_27;
        }

        v41 += 192;
        v42 = v12 + 1;
        if (v12 >= v39)
        {
          v25 = a4;
          *(v4 + 2) = v12;
          goto LABEL_27;
        }
      }

      v43 = sub_240FF9704(v56, v25, v54, a4, v40);
      v45 = v44[3];
      v47 = *v44;
      v46 = v44[1];
      v59 = v44[2];
      v60 = v45;
      v57 = v47;
      v58 = v46;
      v48 = v44[7];
      v50 = v44[4];
      v49 = v44[5];
      v63 = v44[6];
      v64 = v48;
      v61 = v50;
      v62 = v49;
      v51 = v44[11];
      v53 = v44[8];
      v52 = v44[9];
      v67 = v44[10];
      v68 = v51;
      v65 = v53;
      v66 = v52;
      memmove(&__dst, v44, 0xC0uLL);
      sub_240FE0990(&v57, v55);
      result = (v43)(v56, 0);
      if (v25 >= *(v40 + 16))
      {
        break;
      }

      ++v25;
      nullsub_1();
      v79 = v115;
      v80 = v116;
      v81 = v117;
      v82 = v118;
      v75 = v111;
      v76 = v112;
      v77 = v113;
      v78 = v114;
      __src = __dst;
      v72 = v108;
      v73 = v109;
      v74 = v110;
      v91 = v115;
      v92 = v116;
      v93 = v117;
      v94 = v118;
      v87 = v111;
      v88 = v112;
      v89 = v113;
      v90 = v114;
      v83 = __dst;
      v84 = v108;
      v85 = v109;
      v86 = v110;
      if (sub_240FE5818(&v83) == 1 || v12 >= v39)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_240FE2B68(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_240FE33DC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_240FE2C5C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_240FE3FE0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3C8, &unk_241047FF0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_240FE2D64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_240FE2E68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_240FE2F74(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3D8, &unk_241048000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3E0, &unk_241048710);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE30A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3E8, &qword_241048010);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE31C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F400, &qword_241048030);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE32D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F498, &qword_2410480D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE33DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F410, &unk_241048040);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE34E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3F0, &qword_241048018);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_240FE35EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F408, &qword_241048038);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE3714(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F4A0, &qword_2410480D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_240FE3818(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F478, &unk_2410480B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE3938(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F470, &qword_2410480A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE3A5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE3B7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F450, &qword_241048088);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_240FE3C9C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F440, &qword_241048078);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE3DD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F480, &qword_241048140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_240FE3ED4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F438, &qword_241048070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_240FE3FE0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3D0, &qword_24104CC30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3C8, &unk_241047FF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE4128(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FE48E8(a1, a2, a3, *v3, &qword_27E51F430, &qword_241049DC0, &type metadata for NameSpecification.Element);
  *v3 = result;
  return result;
}

char *sub_240FE4160(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FE4448(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_240FE4180(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FE4568(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_240FE41A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FE46B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_240FE41C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FE47C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_240FE41E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FE4A04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_240FE4200(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FE4B2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_240FE4220(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FE48E8(a1, a2, a3, *v3, &qword_27E51F3E8, &qword_241048010, &type metadata for Name);
  *v3 = result;
  return result;
}

char *sub_240FE4258(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FE4C74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_240FE4278(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FE4D94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_240FE4298(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FE4EB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_240FE42B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FE4FC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_240FE42D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FE50EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_240FE42F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FE5300(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_240FE434C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240FE4394(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_240FE4408(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FE5448(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_240FE4428(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FE5568(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_240FE4448(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_240FE4568(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F4A8, &qword_2410480E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F4B0, &qword_2410480E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE46B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE47C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F498, &qword_2410480D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE48E8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_240FE4A04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F408, &qword_241048038);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_240FE4B2C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F488, &qword_2410480C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F490, &qword_2410480C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE4C74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F428, &unk_241048060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE4D94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F470, &qword_2410480A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE4EB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F410, &unk_241048040);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE4FC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F468, &qword_2410480A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE50EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_240FE51F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3F8, &unk_241048020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_240FE5300(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F418, &qword_241048050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F420, &qword_241048058);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FE5448(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F458, &unk_241048090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_240FE5568(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3D8, &unk_241048000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3E0, &unk_241048710);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *sub_240FE569C(uint64_t *result, char *__dst, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = result;
  if (!__dst)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_10:
    v12 = a4;
    goto LABEL_11;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a5 <= a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = a5;
    }

    if (a5 == a4)
    {
      v12 = a5;
      v10 = a5 - a4;
LABEL_11:
      *v9 = a4;
      v9[1] = a5;
      v9[2] = a6;
      v9[3] = a7;
      v9[4] = v12;
      return v10;
    }

    v13 = __dst;
    v25 = a5 - a4;
    v26 = a5;
    v27 = a7;
    v14 = 0;
    v15 = v11 - a4;
    v16 = a3 - 1;
    v17 = a4 - a5;
    v18 = (a6 + 192 * a4 + 32);
    while (v15 != v14)
    {
      if (a4 < 0)
      {
        goto LABEL_21;
      }

      if ((a4 + v14) >= *(a6 + 16))
      {
        goto LABEL_22;
      }

      v19 = v18[9];
      v29[8] = v18[8];
      v29[9] = v19;
      v20 = v18[11];
      v29[10] = v18[10];
      v29[11] = v20;
      v21 = v18[5];
      v29[4] = v18[4];
      v29[5] = v21;
      v22 = v18[7];
      v29[6] = v18[6];
      v29[7] = v22;
      v23 = v18[1];
      v29[0] = *v18;
      v29[1] = v23;
      v24 = v18[3];
      v29[2] = v18[2];
      v29[3] = v24;
      memmove(v13, v18, 0xC0uLL);
      if (v16 == v14)
      {
        sub_240FE0990(v29, v28);
        v12 = a4 + v14 + 1;
        a5 = v26;
        a7 = v27;
        goto LABEL_11;
      }

      v13 += 192;
      result = sub_240FE0990(v29, v28);
      ++v14;
      v18 += 12;
      if (!(v17 + v14))
      {
        v10 = v25;
        a5 = v26;
        v12 = v26;
        a7 = v27;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_240FE5818(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_240FE5830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F460, &unk_24104AF30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_240FE5898(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_240FE58B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v54 = a2;
  v55 = a1;
  v59 = sub_241047678();
  MEMORY[0x28223BE20](v59);
  v58 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 0;
  }

  v62 = 0;
  v63 = 0xE000000000000000;
  v9 = 4 * v8;
  v57 = (v6 + 8);

  v10 = 1;
  v53[1] = a3;
  v56 = v9;
  while (1)
  {
    v14 = sub_241046B68();
    v15 = sub_241046B68();
    result = sub_241046C48();
    v18 = (v17 & 0x2000000000000000) != 0 ? HIBYTE(v17) & 0xF : result & 0xFFFFFFFFFFFFLL;
    if (!v18)
    {
      break;
    }

    v19 = result;
    v20 = v17;
    if ((v17 & 0x1000000000000000) != 0)
    {
      v25 = sub_241046B28();
    }

    else
    {
      if ((v17 & 0x2000000000000000) != 0)
      {
        v22 = result;
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          v21 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v21 = sub_2410470B8();
        }

        v22 = *v21;
      }

      v23 = v22;
      v24 = (__clz(~v22) - 24) << 16;
      if (v23 < 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = 65541;
      }
    }

    v26 = 4 * v18;
    if (4 * v18 == v25 >> 14)
    {
      result = sub_241017D28(v19, v20);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_83;
      }

      v27 = v58;
      sub_241047688();
      v28 = sub_241047658();
      (*v57)(v27, v59);
      v9 = v56;
      if (v28)
      {
        goto LABEL_36;
      }
    }

    if ((sub_241046A68() & 1) == 0)
    {
      goto LABEL_33;
    }

    if ((v20 & 0x1000000000000000) != 0)
    {
      if (v26 == sub_241046B28() >> 14)
      {
LABEL_29:
        result = sub_241017D28(v19, v20);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_85;
        }

        v29 = v58;
        sub_241047688();
        v30 = sub_241047668();
        (*v57)(v29, v59);
        if (v30)
        {
          goto LABEL_36;
        }
      }
    }

    else if (v26 == ((4 * sub_241047038()) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_29;
    }

    if (sub_241046A68() & 1) != 0 && (sub_241046A58())
    {
LABEL_33:
      if (v19 != v55 || v20 != v54)
      {
        v10 = sub_241047428() ^ 1;
        goto LABEL_7;
      }

      goto LABEL_6;
    }

LABEL_36:
    if (v10)
    {
      v31 = v62 & 0xFFFFFFFFFFFFLL;
      if ((v63 & 0x2000000000000000) != 0)
      {
        v31 = HIBYTE(v63) & 0xF;
      }

      if (v31)
      {
        v60 = 0;
        v61 = 0xE000000000000000;
        sub_241046A98();
        MEMORY[0x245CD70E0](v60, v61);
      }
    }

    if (v9 <= v15 >> 14)
    {
      goto LABEL_6;
    }

    result = sub_241046C48();
    if ((v32 & 0x2000000000000000) != 0)
    {
      v33 = HIBYTE(v32) & 0xF;
    }

    else
    {
      v33 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v33)
    {
      goto LABEL_82;
    }

    v34 = result;
    v35 = v32;
    if ((v32 & 0x1000000000000000) != 0)
    {
      v36 = sub_241046B28();
    }

    else
    {
      v36 = sub_241047038() << 16;
    }

    v37 = 4 * v33;
    if (4 * v33 == v36 >> 14)
    {
      result = sub_241017D28(v34, v35);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_84;
      }

      v38 = v58;
      sub_241047688();
      v39 = sub_241047658();
      (*v57)(v38, v59);
      if (v39)
      {
LABEL_63:

        goto LABEL_64;
      }
    }

    if ((sub_241046A68() & 1) == 0)
    {

LABEL_56:
      v10 = 0;
      v9 = v56;
      goto LABEL_7;
    }

    v40 = sub_241017E78(0xFuLL, v34, v35);
    if ((v35 & 0x1000000000000000) != 0)
    {
      if (v37 != sub_241046B28() >> 14)
      {
        goto LABEL_60;
      }
    }

    else if (v37 != ((4 * (sub_241047038() + (v40 >> 16))) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_60;
    }

    result = sub_241017D28(v34, v35);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_87;
    }

    v41 = v58;
    sub_241047688();
    v42 = sub_241047668();
    (*v57)(v41, v59);
    if (v42)
    {
      goto LABEL_63;
    }

LABEL_60:
    if ((sub_241046A68() & 1) == 0)
    {
      goto LABEL_63;
    }

    v43 = sub_241046A58();

    if (v43)
    {
      goto LABEL_56;
    }

LABEL_64:
    v44 = sub_241046B68();
    v9 = v56;
    if (v56 <= v44 >> 14)
    {
      goto LABEL_6;
    }

    sub_241046B68();
    v45 = sub_241046C48();
    v47 = v46;
    if (sub_241046A78())
    {
      result = sub_241017D28(v45, v47);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_86;
      }

      v48 = v58;
      sub_241047688();
      v49 = sub_241047648();
      (*v57)(v48, v59);
      if (v49)
      {
LABEL_74:

        v10 = 1;
        goto LABEL_7;
      }
    }

    if ((sub_241046A58() & 1) == 0)
    {

LABEL_6:
      v10 = 0;
      goto LABEL_7;
    }

    if (sub_241046A78())
    {
      result = sub_241017D28(v45, v47);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_88;
      }

      v50 = v58;
      sub_241047688();
      v51 = sub_241047668();
      (*v57)(v50, v59);
      if (v51)
      {
        goto LABEL_74;
      }
    }

    if ((sub_241046A68() & 1) == 0)
    {
      goto LABEL_74;
    }

    v52 = sub_241046A58();

    v10 = v52 ^ 1;
LABEL_7:
    v11 = sub_241046A28();
    v13 = v12;

    MEMORY[0x245CD70E0](v11, v13);

    if (v9 == v14 >> 14)
    {

      return v62;
    }
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_240FE5F94@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;

  v3 = MEMORY[0x277D84F90];
  *(a1 + 104) = MEMORY[0x277D84F90];
  *(a1 + 112) = v3;
  *(a1 + 136) = 0;
  *(a1 + 144) = v3;
  return result;
}

uint64_t static ParsableCommand.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;

  v3 = MEMORY[0x277D84F90];
  *(a1 + 104) = MEMORY[0x277D84F90];
  *(a1 + 112) = v3;
  *(a1 + 136) = 0;
  *(a1 + 144) = v3;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ParsableCommand.run()()
{
  v2 = v0;
  v9 = v0;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v8);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1Tm, v1, v2);
  sub_240FE62FC();
  swift_allocError();
  v5 = v4;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  DynamicType = swift_getDynamicType();
  v7 = v10;
  *v5 = DynamicType;
  *(v5 + 8) = v7;
  *(v5 + 16) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  swift_willThrow();
}

uint64_t static ParsableCommand.parseAsRoot(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v23 = sub_241028388(v4, a2);
  v24 = v7;
  v25 = v8;
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    if (qword_280CC1EE8 != -1)
    {
      swift_once();
    }

    v9 = qword_280CC23F8;
    v10 = *(qword_280CC23F8 + 16);
    if (v10)
    {
      sub_240FE6EA4(qword_280CC23F8, qword_280CC23F8 + 32, 1, (2 * v10) | 1);
      v9 = v13;
    }

    else
    {
    }
  }

  sub_241025B1C(v9, v20);

  if (v22)
  {
    v17 = v20[2];
    v18 = v20[3];
    *v19 = *v21;
    *&v19[9] = *&v21[9];
    v15 = v20[0];
    v16 = v20[1];
    sub_240FE71F8();
    swift_willThrowTypedImpl();
    *v14 = *v19;
    *&v14[9] = *&v19[9];
    swift_allocError();
    *v11 = v15;
    v11[1] = v16;
    *(v11 + 73) = *&v19[9];
    v11[3] = v18;
    v11[4] = *v14;
    v11[2] = v17;
  }

  else
  {

    return sub_240FDDF54(v20, a3);
  }
}

unint64_t sub_240FE62FC()
{
  result = qword_27E51F4B8;
  if (!qword_27E51F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F4B8);
  }

  return result;
}

uint64_t sub_240FE6354(uint64_t *a1, uint64_t *a2)
{

  memset(v8, 0, sizeof(v8));
  v9 = 0;
  v10 = 0xE000000000000000;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0xE000000000000000;
  v15 = 0;
  v16 = 0xE000000000000000;
  v17 = 1;
  v18 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = MEMORY[0x277D84F90];
  sub_240FE724C(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = sub_241046AF8();
  v6 = sub_240FE58B8(45, 0xE100000000000000, v4, v5);

  return v6;
}

uint64_t static ParsableCommand._commandName.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v7);
  v2 = v7[0];
  v3 = v7[1];

  sub_240FE724C(v7);
  if (!v3)
  {
    swift_getMetatypeMetadata();
    v4 = sub_241046AF8();
    v2 = sub_240FE58B8(45, 0xE100000000000000, v4, v5);
  }

  return v2;
}

char *static ParsableCommand.helpMessage(for:includeHidden:columns:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_241028388(v7, a7);
  v13 = sub_24100A058(v12, a1);
  v14 = v13;
  if (!(v13 >> 62))
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_15:

    v19 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v15 = sub_241046F88();
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_3:
  v26[0] = MEMORY[0x277D84F90];
  result = sub_240FE42D8(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = a5;
    v18 = 0;
    v19 = v26[0];
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x245CD75C0](v18, v14);
      }

      else
      {
      }

      v24 = *(v20 + 16);

      v26[0] = v19;
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_240FE42D8((v21 > 1), v22 + 1, 1);
        v19 = v26[0];
      }

      ++v18;
      *(v19 + 16) = v22 + 1;
      *(v19 + 16 * v22 + 32) = v24;
    }

    while (v15 != v18);

    a5 = v17;
    if (*(v19 + 16))
    {
      goto LABEL_13;
    }

LABEL_12:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_241047BF0;
    *(v19 + 32) = *(v12 + 1);
LABEL_13:

    v25 = a3 & 1;
    sub_24100140C(v19, &v25, v26);

    v23 = sub_240FFCFBC(a4, a5 & 1);
    sub_240FE0170(v26);
    return v23;
  }

  __break(1u);
  return result;
}

char *static ParsableCommand.usageString(for:includeHidden:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_241028388(v5, a5);
  v9 = sub_24100A058(v8, a1);
  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_15:

    v15 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = sub_241046F88();
  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_3:
  v22[0] = MEMORY[0x277D84F90];
  result = sub_240FE42D8(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = a3;
    v14 = 0;
    v15 = v22[0];
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x245CD75C0](v14, v10);
      }

      else
      {
      }

      v20 = *(v16 + 16);

      v22[0] = v15;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_240FE42D8((v17 > 1), v18 + 1, 1);
        v15 = v22[0];
      }

      ++v14;
      *(v15 + 16) = v18 + 1;
      *(v15 + 16 * v18 + 32) = v20;
    }

    while (v11 != v14);

    a3 = v13;
    if (*(v15 + 16))
    {
      goto LABEL_13;
    }

LABEL_12:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_241047BF0;
    *(v15 + 32) = *(v8 + 1);
LABEL_13:

    v21 = a3 & 1;
    sub_24100140C(v15, &v21, v22);

    v19 = v22[3];

    sub_240FE0170(v22);
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t static ParsableCommand.main(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  static ParsableCommand.parseAsRoot(_:)(a1, a3, v6);
  v3 = v7;
  v4 = v8;
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 32))(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

BOOL sub_240FE6A1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v15 = 2;
  v4 = sub_240FDF86C(v2, v3, &v15, 0, 0, 0);
  v5 = (v4 + 177);
  v6 = *(v4 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v8 = *(v5 - 137);
    v9 = *(v5 - 145);
    v5 += 192;
    v10 = v8 & 2;
    v11 = v9 || v10 == 0;
  }

  while (v11 || v7 != 4);
  v13 = v6 != 0;

  return v13;
}

BOOL sub_240FE6AB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v15 = 2;
  v4 = sub_240FDF86C(v2, v3, &v15, 0, 0, 0);
  v5 = (v4 + 177);
  v6 = *(v4 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v8 = *(v5 - 137);
    v9 = *(v5 - 145);
    v5 += 192;
    v10 = v8 & 2;
    v11 = v9 || v10 == 0;
  }

  while (v11 || v7 != 6);
  v13 = v6 != 0;

  return v13;
}

BOOL sub_240FE6B54(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v5, a1);
  v2 = sub_240FE724C(v5);
  return v5[15] && sub_240FE6A1C(v2, v5[16]);
}

uint64_t sub_240FE6BB4()
{
  if (qword_280CC1E58 != -1)
  {
    swift_once();
  }

  if (*(&xmmword_280CC2360 + 1))
  {
    v0 = xmmword_280CC2360;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F4C8, "zy");
    v1 = sub_241046AF8();
    v0 = sub_240FE58B8(45, 0xE100000000000000, v1, v2);
  }

  return v0;
}

uint64_t sub_240FE6D30(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v17 = a2;
  v16 = a1;
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v14[0] = v6;
  v14[1] = v7;
  v15 = v8;
  sub_240FE62FC();
  swift_allocError();
  v10 = v9;
  __swift_project_boxed_opaque_existential_1(v14, a1);
  DynamicType = swift_getDynamicType();
  v12 = v17;
  *v10 = DynamicType;
  *(v10 + 8) = v12;
  *(v10 + 16) = 0;
  a3(v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return swift_willThrow();
}

char *sub_240FE6DF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = sub_240FE7054(*(a1 + 16), 0);
  v6 = sub_241024BFC(&v8, v5 + 32, v2, a1, a2);

  if (v6 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v5;
}

void sub_240FE6EA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_240FE6F7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F498, &qword_2410480D0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 + 31;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 6);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_240FE7054(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_240FE70E4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F480, &qword_241048140);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_240FE7168(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3F8, &unk_241048020);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

unint64_t sub_240FE71F8()
{
  result = qword_27E51F4C0;
  if (!qword_27E51F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F4C0);
  }

  return result;
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

uint64_t sub_240FE7340(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_240FE7350(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_240FE7380(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_241046E18();
  if (!v19)
  {
    return sub_241046D38();
  }

  v41 = v19;
  v45 = sub_2410470E8();
  v32 = sub_2410470F8();
  sub_2410470C8();
  result = sub_241046E08();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_241046E48();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_2410470D8();
      result = sub_241046E28();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void static ExpressibleByArgument.defaultCompletionKind.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
}

uint64_t static ExpressibleByArgument<>.allValueStrings.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v14[-v8];
  sub_241047068();
  v15 = a1;
  v16 = a2;
  v17 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = sub_240FE7380(sub_240FE7A68, v14, AssociatedTypeWitness, MEMORY[0x277D837D0], MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v11);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v12;
}

uint64_t sub_240FE7998@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_241046AF8();
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t static ExpressibleByArgument<>.defaultCompletionKind.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(a1 + 24))();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t static ExpressibleByArgument<>.allValueStrings.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v19[-v12];
  sub_241047068();
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  KeyPath = swift_getKeyPath();
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = KeyPath;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = sub_240FE7380(sub_240FE7C74, v19, AssociatedTypeWitness, MEMORY[0x277D837D0], MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v16);

  (*(v11 + 8))(v13, AssociatedTypeWitness);
  return v17;
}

uint64_t ExpressibleByArgument<>.defaultValueDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v11 - v7;
  sub_241046CD8();
  v9 = (*(a4 + 16))(AssociatedTypeWitness, a4);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return v9;
}

uint64_t sub_240FE7DCC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t RawRepresentable<>.init(argument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v36 = a2;
  v37 = a6;
  v10 = sub_241046E58();
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x28223BE20](v10);
  v35 = &v31 - v11;
  v34 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_241046E58();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  (*(a5 + 8))(a1, v36, AssociatedTypeWitness, a5);
  if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v14 + 8))(v17, v13);
    v24 = *(a3 - 8);
  }

  else
  {
    (*(v18 + 32))(v23, v17, AssociatedTypeWitness);
    (*(v18 + 16))(v21, v23, AssociatedTypeWitness);
    v25 = v35;
    sub_241046CE8();
    (*(v18 + 8))(v23, AssociatedTypeWitness);
    v24 = *(a3 - 8);
    v26 = v24;
    if (!(*(v24 + 48))(v25, 1, a3))
    {
      v30 = v37;
      (*(v24 + 32))(v37, v25, a3);
      v28 = v30;
      v27 = 0;
      return (*(v26 + 56))(v28, v27, 1, a3);
    }

    (*(v32 + 8))(v25, v33);
  }

  v26 = v24;
  v27 = 1;
  v28 = v37;
  return (*(v26 + 56))(v28, v27, 1, a3);
}

uint64_t LosslessStringConvertible<>.init(argument:)@<X0>(uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v7 = sub_241046E58();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  sub_241047408();
  v11 = *(a3 - 8);
  if ((*(v11 + 48))(v10, 1, a3))
  {
    (*(v8 + 8))(v10, v7);
    v12 = 1;
  }

  else
  {
    (*(v11 + 32))(a5, v10, a3);
    v12 = 0;
  }

  return (*(v11 + 56))(a5, v12, 1, a3);
}

unint64_t sub_240FE8384@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_240FEBEB8(a2, a3);
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

unint64_t sub_240FE83B4@<X0>(uint64_t a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_240FEC1E4(a2, a3);
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

unint64_t sub_240FE83E4@<X0>(uint64_t a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_240FEC510(a2, a3);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_240FE8414@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_240FECAE4(a2, a3);
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_240FE8444(uint64_t a1)
{
  BYTE8(v3) = 0;
  *&v3 = *v1;
  sub_241047128();
  return *(&v3 + 1);
}

unint64_t sub_240FE8494@<X0>(uint64_t a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_240FECDF8(a2, a3);
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_240FE84C4(uint64_t a1)
{
  WORD4(v3) = 0;
  *&v3 = *v1;
  sub_241047128();
  return *(&v3 + 2);
}

unint64_t sub_240FE8514@<X0>(uint64_t a1@<X8>, unint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_240FED10C(a2, a3);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_240FE8544(uint64_t a1)
{
  v3 = *v1;
  sub_241047128();
  return HIDWORD(v3);
}

unint64_t sub_240FE85E4@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_240FE8DD0(a2, a3);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_240FE8614(uint64_t a1)
{
  v3 = *v1;
  sub_241047128();
  return HIDWORD(v3);
}

uint64_t sub_240FE8664@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_240FE8BC8(a2, a3);
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_240FE86E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_240FEBCB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_240FE875C(uint64_t a1, unint64_t a2)
{
  v2 = sub_241046C78();
  v6 = sub_240FE87DC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_240FE87DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_241046E98();
    if (!v9 || (v10 = v9, v11 = sub_240FE8934(v9, 0), v12 = sub_240FE89A8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_241046B38();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_241046B38();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2410470B8();
LABEL_4:

  return sub_241046B38();
}

void *sub_240FE8934(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F4E0, &qword_2410482C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_240FE89A8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_24100BF78(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_241046C08();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2410470B8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_24100BF78(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_241046BE8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_240FE8BC8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    sub_241047018();

    v6 = v9;
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = (v3 > 0x20u || ((0x100003E01uLL >> v3) & 1) == 0) && (v7 = _swift_stdlib_strtod_clocale()) != 0 && *v7 == 0;
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v5 = v3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = sub_2410470B8();
      }

      v6 = sub_240FE8D70(v4, v5, sub_240FEBDA4);
    }
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240FE8D70(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  if (a1)
  {
    a3(&var2, a1, a2);
    if (!v3)
    {
      v4 = var2;
    }
  }

  else
  {
    a3((&var2 + 1), 0, 0);
    if (!v3)
    {
      v4 = BYTE1(var2);
    }
  }

  return v4 & 1;
}

unint64_t sub_240FE8DD0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    sub_241047018();

    v6 = v9;
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = (v3 > 0x20u || ((0x100003E01uLL >> v3) & 1) == 0) && (v7 = _swift_stdlib_strtof_clocale()) != 0 && *v7 == 0;
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v5 = v3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = sub_2410470B8();
      }

      v6 = sub_240FE8D70(v4, v5, sub_240FED6E0);
    }
  }

  return ((v6 & 1) == 0) << 32;
}

unsigned __int8 *sub_240FE8F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a1;
  v75 = a2;

  result = sub_241046C68();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE875C(result, v5);
    v42 = v41;

    v5 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2410470B8();
      v7 = v73;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v26 = result + 1;
            v27 = a3;
            v16 = 1;
            do
            {
              v28 = *v26;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_126;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v13 * v27;
              v31 = (v13 * v27);
              if (v31 != v30)
              {
                goto LABEL_125;
              }

              v13 = v31 + (v28 + v29);
              if (v13 != v13)
              {
                goto LABEL_125;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v16 = 0;
            v19 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v19 = 0;
        v16 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        LOBYTE(v32) = 0;
        v33 = a3 + 48;
        v34 = a3 + 55;
        v35 = a3 + 87;
        if (a3 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        v36 = a3;
        v16 = 1;
        while (1)
        {
          v37 = *result;
          if (v37 < 0x30 || v37 >= v33)
          {
            if (v37 < 0x41 || v37 >= v34)
            {
              v19 = 0;
              if (v37 < 0x61 || v37 >= v35)
              {
                goto LABEL_126;
              }

              v38 = -87;
            }

            else
            {
              v38 = -55;
            }
          }

          else
          {
            v38 = -48;
          }

          v39 = v32 * v36;
          v40 = (v32 * v36);
          if (v40 != v39)
          {
            goto LABEL_125;
          }

          v32 = v40 + (v37 + v38);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = a3;
          v16 = 1;
          while (1)
          {
            v17 = *v14;
            if (v17 < 0x30 || v17 >= v10)
            {
              if (v17 < 0x41 || v17 >= v11)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v12)
                {
                  goto LABEL_126;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v13 * v15;
            v21 = (v13 * v15);
            if (v21 != v20)
            {
              goto LABEL_125;
            }

            v13 = v21 - (v17 + v18);
            if (v13 != v13)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v19 = 0;
        v16 = 0;
LABEL_126:

        return (v19 | (v16 << 8));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v43 = HIBYTE(v5) & 0xF;
  v74 = v6;
  v75 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        LOBYTE(v32) = 0;
        v64 = a3 + 55;
        v65 = a3 + 87;
        v66 = a3 + 48;
        if (a3 > 10)
        {
          v66 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v67 = &v74;
        v68 = a3;
        v16 = 1;
        while (1)
        {
          v69 = *v67;
          if (v69 < 0x30 || v69 >= v66)
          {
            if (v69 < 0x41 || v69 >= v64)
            {
              v19 = 0;
              if (v69 < 0x61 || v69 >= v65)
              {
                goto LABEL_126;
              }

              v70 = -87;
            }

            else
            {
              v70 = -55;
            }
          }

          else
          {
            v70 = -48;
          }

          v71 = v32 * v68;
          v72 = (v32 * v68);
          if (v72 != v71)
          {
            goto LABEL_125;
          }

          v32 = v72 + (v69 + v70);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          v67 = (v67 + 1);
          if (!--v43)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        LOBYTE(v32) = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v74 + 1;
        v49 = a3;
        v16 = 1;
        while (1)
        {
          v50 = *v48;
          if (v50 < 0x30 || v50 >= v45)
          {
            if (v50 < 0x41 || v50 >= v46)
            {
              v19 = 0;
              if (v50 < 0x61 || v50 >= v47)
              {
                goto LABEL_126;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * v49;
          v53 = (v32 * v49);
          if (v53 != v52)
          {
            goto LABEL_125;
          }

          v32 = v53 - (v50 + v51);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          ++v48;
          if (!--v44)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      LOBYTE(v32) = 0;
      v55 = a3 + 48;
      v56 = a3 + 55;
      v57 = a3 + 87;
      if (a3 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v74 + 1;
      v59 = a3;
      v16 = 1;
      do
      {
        v60 = *v58;
        if (v60 < 0x30 || v60 >= v55)
        {
          if (v60 < 0x41 || v60 >= v56)
          {
            v19 = 0;
            if (v60 < 0x61 || v60 >= v57)
            {
              goto LABEL_126;
            }

            v61 = -87;
          }

          else
          {
            v61 = -55;
          }
        }

        else
        {
          v61 = -48;
        }

        v62 = v32 * v59;
        v63 = (v32 * v59);
        if (v63 != v62)
        {
          goto LABEL_125;
        }

        v32 = v63 + (v60 + v61);
        if (v32 != v32)
        {
          goto LABEL_125;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_124:
      v16 = 0;
      v19 = v32;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

unsigned __int8 *sub_240FE9564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a1;
  v75 = a2;

  result = sub_241046C68();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE875C(result, v5);
    v42 = v41;

    v5 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2410470B8();
      v7 = v73;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v26 = result + 1;
            v27 = a3;
            v16 = 1;
            do
            {
              v28 = *v26;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_126;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v13 * v27;
              v31 = (v13 * v27);
              if (v31 != v30)
              {
                goto LABEL_125;
              }

              v13 = v31 + (v28 + v29);
              if (v13 != v13)
              {
                goto LABEL_125;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v16 = 0;
            v19 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v19 = 0;
        v16 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        LOWORD(v32) = 0;
        v33 = a3 + 48;
        v34 = a3 + 55;
        v35 = a3 + 87;
        if (a3 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        v36 = a3;
        v16 = 1;
        while (1)
        {
          v37 = *result;
          if (v37 < 0x30 || v37 >= v33)
          {
            if (v37 < 0x41 || v37 >= v34)
            {
              v19 = 0;
              if (v37 < 0x61 || v37 >= v35)
              {
                goto LABEL_126;
              }

              v38 = -87;
            }

            else
            {
              v38 = -55;
            }
          }

          else
          {
            v38 = -48;
          }

          v39 = v32 * v36;
          v40 = (v32 * v36);
          if (v40 != v39)
          {
            goto LABEL_125;
          }

          v32 = v40 + (v37 + v38);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = a3;
          v16 = 1;
          while (1)
          {
            v17 = *v14;
            if (v17 < 0x30 || v17 >= v10)
            {
              if (v17 < 0x41 || v17 >= v11)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v12)
                {
                  goto LABEL_126;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v13 * v15;
            v21 = (v13 * v15);
            if (v21 != v20)
            {
              goto LABEL_125;
            }

            v13 = v21 - (v17 + v18);
            if (v13 != v13)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v19 = 0;
        v16 = 0;
LABEL_126:

        return (v19 | (v16 << 16));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v43 = HIBYTE(v5) & 0xF;
  v74 = v6;
  v75 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        LOWORD(v32) = 0;
        v64 = a3 + 55;
        v65 = a3 + 87;
        v66 = a3 + 48;
        if (a3 > 10)
        {
          v66 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v67 = &v74;
        v68 = a3;
        v16 = 1;
        while (1)
        {
          v69 = *v67;
          if (v69 < 0x30 || v69 >= v66)
          {
            if (v69 < 0x41 || v69 >= v64)
            {
              v19 = 0;
              if (v69 < 0x61 || v69 >= v65)
              {
                goto LABEL_126;
              }

              v70 = -87;
            }

            else
            {
              v70 = -55;
            }
          }

          else
          {
            v70 = -48;
          }

          v71 = v32 * v68;
          v72 = (v32 * v68);
          if (v72 != v71)
          {
            goto LABEL_125;
          }

          v32 = v72 + (v69 + v70);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          v67 = (v67 + 1);
          if (!--v43)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        LOWORD(v32) = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v74 + 1;
        v49 = a3;
        v16 = 1;
        while (1)
        {
          v50 = *v48;
          if (v50 < 0x30 || v50 >= v45)
          {
            if (v50 < 0x41 || v50 >= v46)
            {
              v19 = 0;
              if (v50 < 0x61 || v50 >= v47)
              {
                goto LABEL_126;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * v49;
          v53 = (v32 * v49);
          if (v53 != v52)
          {
            goto LABEL_125;
          }

          v32 = v53 - (v50 + v51);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          ++v48;
          if (!--v44)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      LOWORD(v32) = 0;
      v55 = a3 + 48;
      v56 = a3 + 55;
      v57 = a3 + 87;
      if (a3 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v74 + 1;
      v59 = a3;
      v16 = 1;
      do
      {
        v60 = *v58;
        if (v60 < 0x30 || v60 >= v55)
        {
          if (v60 < 0x41 || v60 >= v56)
          {
            v19 = 0;
            if (v60 < 0x61 || v60 >= v57)
            {
              goto LABEL_126;
            }

            v61 = -87;
          }

          else
          {
            v61 = -55;
          }
        }

        else
        {
          v61 = -48;
        }

        v62 = v32 * v59;
        v63 = (v32 * v59);
        if (v63 != v62)
        {
          goto LABEL_125;
        }

        v32 = v63 + (v60 + v61);
        if (v32 != v32)
        {
          goto LABEL_125;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_124:
      v16 = 0;
      v19 = v32;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

unsigned __int8 *sub_240FE9B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_241046C68();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE875C(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2410470B8();
      v7 = v68;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_126;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_125;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_125;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v18 = 0;
        v15 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = 0;
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        v15 = 1;
        while (1)
        {
          v35 = *result;
          if (v35 < 0x30 || v35 >= v32)
          {
            if (v35 < 0x41 || v35 >= v33)
            {
              v18 = 0;
              if (v35 < 0x61 || v35 >= v34)
              {
                goto LABEL_126;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v37 = v31 * a3;
          if (v37 != v37)
          {
            goto LABEL_125;
          }

          v38 = v35 + v36;
          v21 = __OFADD__(v37, v38);
          v31 = v37 + v38;
          if (v21)
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_126;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_125;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v18 = 0;
        v15 = 0;
LABEL_126:

        LOBYTE(v69) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v41 = HIBYTE(v5) & 0xF;
  v69 = v6;
  v70 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v31 = 0;
        v60 = a3 + 55;
        v61 = a3 + 87;
        v62 = a3 + 48;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v63 = &v69;
        v15 = 1;
        while (1)
        {
          v64 = *v63;
          if (v64 < 0x30 || v64 >= v62)
          {
            if (v64 < 0x41 || v64 >= v60)
            {
              v18 = 0;
              if (v64 < 0x61 || v64 >= v61)
              {
                goto LABEL_126;
              }

              v65 = -87;
            }

            else
            {
              v65 = -55;
            }
          }

          else
          {
            v65 = -48;
          }

          v66 = v31 * a3;
          if (v66 != v66)
          {
            goto LABEL_125;
          }

          v67 = v64 + v65;
          v21 = __OFADD__(v66, v67);
          v31 = v66 + v67;
          if (v21)
          {
            goto LABEL_125;
          }

          v63 = (v63 + 1);
          if (!--v41)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v31 = 0;
        v43 = a3 + 48;
        v44 = a3 + 55;
        v45 = a3 + 87;
        if (a3 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        v46 = &v69 + 1;
        v15 = 1;
        while (1)
        {
          v47 = *v46;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              v18 = 0;
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_126;
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          v49 = v31 * a3;
          if (v49 != v49)
          {
            goto LABEL_125;
          }

          v50 = v47 + v48;
          v21 = __OFSUB__(v49, v50);
          v31 = v49 - v50;
          if (v21)
          {
            goto LABEL_125;
          }

          ++v46;
          if (!--v42)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      v31 = 0;
      v52 = a3 + 48;
      v53 = a3 + 55;
      v54 = a3 + 87;
      if (a3 > 10)
      {
        v52 = 58;
      }

      else
      {
        v54 = 97;
        v53 = 65;
      }

      v55 = &v69 + 1;
      v15 = 1;
      do
      {
        v56 = *v55;
        if (v56 < 0x30 || v56 >= v52)
        {
          if (v56 < 0x41 || v56 >= v53)
          {
            v18 = 0;
            if (v56 < 0x61 || v56 >= v54)
            {
              goto LABEL_126;
            }

            v57 = -87;
          }

          else
          {
            v57 = -55;
          }
        }

        else
        {
          v57 = -48;
        }

        v58 = v31 * a3;
        if (v58 != v58)
        {
          goto LABEL_125;
        }

        v59 = v56 + v57;
        v21 = __OFADD__(v58, v59);
        v31 = v58 + v59;
        if (v21)
        {
          goto LABEL_125;
        }

        ++v55;
        --v51;
      }

      while (v51);
LABEL_124:
      v15 = 0;
      v18 = v31;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}