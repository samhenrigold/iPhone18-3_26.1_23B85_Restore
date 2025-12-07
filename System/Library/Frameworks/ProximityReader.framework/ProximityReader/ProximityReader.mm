uint64_t sub_23A63F008(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23A63F0C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A63F2F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23A63F338()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A63F370()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A63F44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_23A6DE294();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_23A63F4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_23A6DE294();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_23A63F540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23A63F5FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A63F6B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A63F6E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A63F73C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23A63F754()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A63F7A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8E8, &qword_23A6E1C60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A63F89C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23A63F8E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A63F91C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23A63F92C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A63F964()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_23A63F99C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A63FA6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_23A63FB40()
{
  v1 = sub_23A6DE2F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A63FCB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C988, &qword_23A6E2090);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A63FD88()
{
  v17 = sub_23A6DE574();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 16) & ~v2;
  v3 = (*(v1 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9A0, &unk_23A6E20A8);
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_23A6DE7F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v12 = v2 | v10 | v5;
  v13 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v15, v17);

  (*(v4 + 8))(v0 + v6, v16);
  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v13 + 10, v12 | 7);
}

uint64_t sub_23A63FFB8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A63FFF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A640044()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9B8, &qword_23A6E20D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_23A640154()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A640190()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A6401D0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A64021C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A640268()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A6402A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_23A6402F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A640330()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23A640380()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A640478()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A640560()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A640658()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A6406B8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_23A640850(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB68, &unk_23A6E4700);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23A64090C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB68, &unk_23A6E4700);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A640AB4(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr284D50EA1O8ResponseV15InternalStorageOMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A640B20(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr284D50EA1O8ResponseV15InternalStorageOMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A640B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A640BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A640C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A640CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A640D48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCD8, &qword_23A6E37A8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[11];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCE0, &qword_23A6E37B0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[12];

  return v18(v19, a2, v17);
}

uint64_t sub_23A640F34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCD8, &qword_23A6E37A8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCE0, &qword_23A6E37B0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[12];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_23A641120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CE68, &unk_23A6E3910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23A6411E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CE68, &unk_23A6E3910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23A6412AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23A641368(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A641418(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23A6414D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A641584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A6DE314();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23A641640(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23A6DE314();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23A6416F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A641764(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A6417D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_23A6DE314();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23A6418C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_23A6DE314();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23A6419C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23A641AFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23A641C38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A641C70(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAB0, &qword_23A6E25A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23A641D2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAB0, &qword_23A6E25A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A641DF4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A641E2C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAB0, &qword_23A6E25A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23A641EE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAB0, &qword_23A6E25A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A641F98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D168, &qword_23A6E4CC8);
  sub_23A6BAFF4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23A641FFC()
{
  v1 = (type metadata accessor for DiscoveryRotatedView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFE8, &qword_23A6E47C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23A6DF114();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23A642120(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A64218C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A6421FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A642268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A6422D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23A642414(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23A642550(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MobileDocumentDisplayRequest.Options(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23A6425FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MobileDocumentDisplayRequest.Options(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A6426A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE8C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A64270C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE8C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A64277C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A6427E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A642858(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23A642904(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A6429A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DEB24();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A642A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DEB24();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A642A84(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23A642B30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A642BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A642C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A642CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A642D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A642D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DEB24();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A642DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DEB24();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A642E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A6DE314();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23A642F8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23A6DE314();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23A6430B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A64311C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A64318C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A6431F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A643268(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DEB24();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A6432D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DEB24();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A643344(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A6433B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A643420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A6DE314();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23A6434DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23A6DE314();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23A643594(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A643600(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A643670(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A6436DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t StoreAndForwardBatchDeletionToken.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void *sub_23A644558@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_23A644564@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_23A644574()
{
  result = qword_27DF9C750;
  if (!qword_27DF9C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C750);
  }

  return result;
}

uint64_t sub_23A6445C8()
{
  sub_23A6DFCE4();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A64461C(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A644664(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23A6DFC04();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23A6446A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23A6446E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s15ProximityReader21PaymentCardReadResultV0D14EffectiveStateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A644808(uint64_t a1)
{
  v2 = *v1;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v2);
  return sub_23A6DFD14();
}

uint64_t PaymentCardReadResult.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PaymentCardReadResult.paymentCardData.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PaymentCardReadResult.generalCardData.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PaymentCardReadResult.applicationTypeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_23A644940@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, char a11, char a12, char *a13, char *a14)
{
  v14 = *a10;
  v15 = *a13;
  v16 = *a14;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v14;
  *(a9 + 65) = a11;
  *(a9 + 66) = a12;
  *(a9 + 67) = v15;
  *(a9 + 68) = v16;
  return result;
}

unint64_t sub_23A644988()
{
  result = qword_27DF9C758;
  if (!qword_27DF9C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C758);
  }

  return result;
}

unint64_t sub_23A6449E0()
{
  result = qword_27DF9C760;
  if (!qword_27DF9C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C760);
  }

  return result;
}

unint64_t sub_23A644A38()
{
  result = qword_27DF9C768;
  if (!qword_27DF9C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C768);
  }

  return result;
}

__n128 __swift_memcpy69_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23A644ABC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 69))
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

uint64_t sub_23A644B04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 69) = 1;
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

    *(result + 69) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaymentCardReadResult.ReadOutcome(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PaymentCardReadResult.ReadOutcome(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for StoreAndForwardBatch.StoredPaymentCardReadResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StoreAndForwardBatch.StoredPaymentCardReadResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t StoreAndForwardBatch.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t StoreAndForwardBatch.signature.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t StoreAndForwardBatch.leafCertificate.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

unint64_t sub_23A644F28()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000017;
  v4 = 0x747265436661656CLL;
  if (v1 != 4)
  {
    v4 = 0x73746E656D796170;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746E756F63;
  if (v1 != 1)
  {
    v5 = 0x727574616E676973;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23A644FE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23A645F9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23A645028(uint64_t a1)
{
  v2 = sub_23A645414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A645064(uint64_t a1)
{
  v2 = sub_23A645414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StoreAndForwardBatch.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C770, &qword_23A6E0D80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = v1[2];
  v20 = v1[3];
  v21 = v7;
  v8 = v1[4];
  v18 = v1[5];
  v19 = v8;
  v9 = v1[6];
  v16 = v1[7];
  v17 = v9;
  v15 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A645414();
  v10 = v3;
  sub_23A6DFD24();
  LOBYTE(v24) = 0;
  v11 = v22;
  sub_23A6DFBA4();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = v18;
  LOBYTE(v24) = 1;
  sub_23A6DFBB4();
  LOBYTE(v24) = 2;
  sub_23A6DFBA4();
  v24 = v12;
  v23 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C778, &qword_23A6E0D88);
  sub_23A645468();
  sub_23A6DFBC4();
  LOBYTE(v24) = 4;
  sub_23A6DFBA4();
  v24 = v15;
  v23 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C788, &qword_23A6E0D90);
  sub_23A64552C();
  sub_23A6DFBC4();
  return (*(v4 + 8))(v6, v10);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23A645414()
{
  result = qword_27DF9DB30;
  if (!qword_27DF9DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9DB30);
  }

  return result;
}

unint64_t sub_23A645468()
{
  result = qword_27DF9C780;
  if (!qword_27DF9C780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9C778, &qword_23A6E0D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C780);
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

unint64_t sub_23A64552C()
{
  result = qword_27DF9C790;
  if (!qword_27DF9C790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9C788, &qword_23A6E0D90);
    sub_23A6455B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C790);
  }

  return result;
}

unint64_t sub_23A6455B0()
{
  result = qword_27DF9C798;
  if (!qword_27DF9C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C798);
  }

  return result;
}

uint64_t sub_23A645604@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

uint64_t StoreAndForwardBatch.StoredPaymentCardReadResult.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t StoreAndForwardBatch.StoredPaymentCardReadResult.paymentCardData.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t StoreAndForwardBatch.StoredPaymentCardReadResult.generalCardData.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t StoreAndForwardBatch.StoredPaymentCardReadResult.signature.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_23A6456F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_23A64570C()
{
  v1 = 25705;
  v2 = 0x436C6172656E6567;
  if (*v0 != 2)
  {
    v2 = 0x727574616E676973;
  }

  if (*v0)
  {
    v1 = 0x43746E656D796170;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23A645798@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23A6461A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23A6457CC(uint64_t a1)
{
  v2 = sub_23A645A38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A645808(uint64_t a1)
{
  v2 = sub_23A645A38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StoreAndForwardBatch.StoredPaymentCardReadResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7A0, &qword_23A6E0D98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A645A38();
  sub_23A6DFD24();
  v16 = 0;
  v10 = v12[7];
  sub_23A6DFBA4();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_23A6DFBA4();
  v14 = 2;
  sub_23A6DFBA4();
  v13 = 3;
  sub_23A6DFBA4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23A645A38()
{
  result = qword_27DF9DB38[0];
  if (!qword_27DF9DB38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF9DB38);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23A645AC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_23A645B10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23A645B84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_23A645BCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoreAndForwardBatch.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StoreAndForwardBatch.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23A645D90()
{
  result = qword_27DF9DE40[0];
  if (!qword_27DF9DE40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF9DE40);
  }

  return result;
}

unint64_t sub_23A645DE8()
{
  result = qword_27DF9E050[0];
  if (!qword_27DF9E050[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF9E050);
  }

  return result;
}

unint64_t sub_23A645E40()
{
  result = qword_27DF9E160;
  if (!qword_27DF9E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9E160);
  }

  return result;
}

unint64_t sub_23A645E98()
{
  result = qword_27DF9E168[0];
  if (!qword_27DF9E168[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF9E168);
  }

  return result;
}

unint64_t sub_23A645EF0()
{
  result = qword_27DF9E1F0;
  if (!qword_27DF9E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9E1F0);
  }

  return result;
}

unint64_t sub_23A645F48()
{
  result = qword_27DF9E1F8[0];
  if (!qword_27DF9E1F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF9E1F8);
  }

  return result;
}

uint64_t sub_23A645F9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23A6DFC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_23A6DFC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065 || (sub_23A6DFC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023A6E76B0 == a2 || (sub_23A6DFC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x747265436661656CLL && a2 == 0xEF65746163696669 || (sub_23A6DFC04() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73746E656D796170 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_23A6DFC04();

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

uint64_t sub_23A6461A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23A6DFC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x43746E656D796170 && a2 == 0xEF61746144647261 || (sub_23A6DFC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x436C6172656E6567 && a2 == 0xEF61746144647261 || (sub_23A6DFC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_23A6DFC04();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23A646318()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6463B4, 0, 0);
}

uint64_t sub_23A6463B4()
{
  v1 = v0[3];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[3];
  if (v5 == 1)
  {
    sub_23A646DB0(v0[3], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v0[2];
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0x28656E696C636564, 0xE900000000000029, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v10 = v0[2];
  v11 = sub_23A6587D8();
  v12 = *v11;
  v0[4] = *v11;
  v13 = *(v10 + 32);
  v14 = *(v10 + 40);
  v15 = *(*v12 + 712);

  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  v0[5] = v16;
  *v16 = v0;
  v16[1] = sub_23A6465F4;

  return v18(v13, v14);
}

uint64_t sub_23A6465F4()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A64673C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23A64673C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A6467A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A646844, 0, 0);
}

uint64_t sub_23A646844()
{
  v1 = v0[4];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[4];
  if (v5 == 1)
  {
    sub_23A646DB0(v0[4], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v0[3];
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0x2928737574617473, 0xE800000000000000, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v10 = v0[3];
  v11 = sub_23A6587D8();
  v12 = *v11;
  v0[5] = *v11;
  v13 = *(v10 + 32);
  v14 = *(v10 + 40);
  v15 = *(*v12 + 704);

  v19 = (v15 + *v15);
  v16 = swift_task_alloc();
  v0[6] = v16;
  *v16 = v0;
  v16[1] = sub_23A646A88;
  v17 = v0[2];

  return v19(v17, v13, v14);
}

uint64_t sub_23A646A88()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A646BD0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23A646BD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A646C3C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7A8, &qword_23A6E12A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  swift_allocObject();
  v11 = *(a1 + 8);
  v12 = *(a1 + 9);
  v15 = *a1;
  v16 = v11;
  v17 = v12;
  sub_23A646D48(a2, v10, &qword_27DF9C7A8, &qword_23A6E12A0);
  v13 = sub_23A69499C(&v15, v10, a3, a4 & 1);
  sub_23A646DB0(a2, &qword_27DF9C7A8, &qword_23A6E12A0);
  return v13;
}

uint64_t sub_23A646D48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23A646DB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t StoreAndForwardPaymentCardReaderSession.__deallocating_deinit()
{
  PaymentCardReaderSession.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StoreAndForwardPaymentCardReaderSession(uint64_t a1)
{
  result = qword_27DF9E280;
  if (!qword_27DF9E280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of StoreAndForwardPaymentCardReaderSession.decline()()
{
  v4 = (*(*v0 + 232) + **(*v0 + 232));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23A647234;

  return v4();
}

uint64_t dispatch thunk of StoreAndForwardPaymentCardReaderSession.status()(uint64_t a1)
{
  v6 = (*(*v1 + 240) + **(*v1 + 240));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23A647140;

  return v6(a1);
}

uint64_t sub_23A647140()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t PaymentCardVerificationRequest.currencyCode.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PaymentCardVerificationRequest.userInterfaceLanguage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PaymentCardVerificationRequest(0) + 24);

  return sub_23A647304(v3, a1);
}

uint64_t type metadata accessor for PaymentCardVerificationRequest(uint64_t a1)
{
  result = qword_27DF9E390;
  if (!qword_27DF9E390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A647304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PaymentCardVerificationRequest.userInterfaceLanguage.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PaymentCardVerificationRequest(0) + 24);

  return sub_23A6473B8(a1, v3);
}

uint64_t sub_23A6473B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PaymentCardVerificationRequest.Reason.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t PaymentCardVerificationRequest.init(currencyCode:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = *(type metadata accessor for PaymentCardVerificationRequest(0) + 24);
  v9 = sub_23A6DE324();
  result = (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v7;
  return result;
}

unint64_t sub_23A64758C()
{
  result = qword_27DF9C7B8;
  if (!qword_27DF9C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C7B8);
  }

  return result;
}

void sub_23A647608(uint64_t a1)
{
  sub_23A64768C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23A64768C(uint64_t a1)
{
  if (!qword_27DF9C7C0)
  {
    sub_23A6DE324();
    v1 = sub_23A6DF954();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF9C7C0);
    }
  }
}

uint64_t sub_23A6476F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a2;
  v3 = sub_23A6DE014();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23A6DE784();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for PaymentCardReaderError(0);
  MEMORY[0x28223BE20](v69);
  v12 = (&v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v67 - v14);
  switch(sub_23A6DE3C4())
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:

      return swift_storeEnumTagMultiPayload();
    case 7:
      v34 = sub_23A6DE3D4();
      if (!v34)
      {
        goto LABEL_42;
      }

      v35 = v34;
      sub_23A6DE3E4();
      v36 = sub_23A6DE3A4();
      if (!*(v35 + 16))
      {

LABEL_43:
        v42 = 0;
        v43 = 0;
        goto LABEL_44;
      }

      v38 = sub_23A648D1C(v36, v37);
      v40 = v39;

      if ((v40 & 1) == 0)
      {

LABEL_42:

        goto LABEL_43;
      }

      sub_23A648D94(*(v35 + 56) + 32 * v38, v73);

      v41 = swift_dynamicCast();
      v42 = v71;
      v43 = v72;
      if (!v41)
      {
        v42 = 0;
        v43 = 0;
      }

LABEL_44:
      *v15 = v42;
      v15[1] = v43;
      swift_storeEnumTagMultiPayload();
      v65 = v15;
      return sub_23A6480C4(v65, v70);
    case 9:
      v25 = sub_23A6DE3D4();
      if (!v25)
      {
        goto LABEL_39;
      }

      v26 = v25;
      sub_23A6DE3E4();
      v27 = sub_23A6DE384();
      if (*(v26 + 16))
      {
        v29 = sub_23A648D1C(v27, v28);
        v31 = v30;

        if (v31)
        {
          sub_23A648D94(*(v26 + 56) + 32 * v29, v73);

          if (swift_dynamicCast())
          {
            v32 = v72;
            v33 = v70;
            *v70 = v71;
            v33[1] = v32;
            return swift_storeEnumTagMultiPayload();
          }
        }

        else
        {

LABEL_39:
        }
      }

      else
      {
      }

      v64 = v70;
      *v70 = 0;
      v64[1] = 0;
      return swift_storeEnumTagMultiPayload();
    case 14:
      v16 = sub_23A6DE3D4();
      if (!v16)
      {
        goto LABEL_37;
      }

      v17 = v16;
      sub_23A6DE3E4();
      v18 = sub_23A6DE3B4();
      if (*(v17 + 16))
      {
        v20 = sub_23A648D1C(v18, v19);
        v22 = v21;

        if (v22)
        {
          sub_23A648D94(*(v17 + 56) + 32 * v20, v73);

          if (swift_dynamicCast())
          {
            v23 = v70;
            sub_23A6DE274();

            v24 = sub_23A6DE294();
            (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
            return swift_storeEnumTagMultiPayload();
          }

LABEL_37:

          v62 = v70;
          v63 = sub_23A6DE294();
          (*(*(v63 - 8) + 56))(v62, 1, 1, v63);
          return swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
      }

      goto LABEL_37;
    case 29:
      v52 = sub_23A6DE3D4();
      if (!v52)
      {
        goto LABEL_50;
      }

      v53 = v52;
      sub_23A6DE3E4();
      v54 = sub_23A6DE3A4();
      if (*(v53 + 16))
      {
        v68 = sub_23A648D1C(v54, v55);
        v57 = v56;

        if (v57)
        {
          sub_23A648D94(*(v53 + 56) + 32 * v68, v73);

          if (swift_dynamicCast())
          {
            v58 = v71;
            sub_23A6DDFE4();
            v59 = sub_23A6DE004();
            (*(v4 + 8))(v6, v3);
            if (v59 == v58)
            {
              v60 = MEMORY[0x277D43848];
            }

            else
            {
              v60 = MEMORY[0x277D43840];
            }

            (*(v8 + 104))(v10, *v60, v7);
            v66 = sub_23A6DE774();

            (*(v8 + 8))(v10, v7);
LABEL_51:
            *v70 = v66;
            return swift_storeEnumTagMultiPayload();
          }

LABEL_50:
          (*(v8 + 104))(v10, *MEMORY[0x277D43838], v7);
          v66 = sub_23A6DE774();

          (*(v8 + 8))(v10, v7);
          goto LABEL_51;
        }
      }

      else
      {
      }

      goto LABEL_50;
    case 30:
      v44 = sub_23A6DE3D4();
      if (!v44)
      {
        goto LABEL_46;
      }

      v45 = v44;
      sub_23A6DE3E4();
      v46 = sub_23A6DE394();
      if (*(v45 + 16))
      {
        v48 = sub_23A648D1C(v46, v47);
        v50 = v49;

        if (v50)
        {
          sub_23A648D94(*(v45 + 56) + 32 * v48, v73);

          if (swift_dynamicCast())
          {

            v51 = v71;
            goto LABEL_47;
          }

LABEL_46:
          (*(v8 + 104))(v10, *MEMORY[0x277D43838], v7);
          v51 = sub_23A6DE774();

          (*(v8 + 8))(v10, v7);
LABEL_47:
          *v12 = v51;
          swift_storeEnumTagMultiPayload();
          v65 = v12;
          return sub_23A6480C4(v65, v70);
        }
      }

      else
      {
      }

      goto LABEL_46;
    default:
      goto LABEL_50;
  }
}

uint64_t type metadata accessor for PaymentCardReaderError(uint64_t a1)
{
  result = qword_27DF9E420;
  if (!qword_27DF9E420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6480C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentCardReaderError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t PaymentCardReaderError.errorDescription.getter()
{
  v1 = sub_23A6DE344();
  v25[0] = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23A6DE294();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7A8, &qword_23A6E12A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v25 - v12;
  v14 = type metadata accessor for PaymentCardReaderError(0);
  MEMORY[0x28223BE20](v14);
  v16 = (v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23A648DF0(v0, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x206B726F7774654ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_23A648E54(v16);
      result = 0xD000000000000028;
      break;
    case 2:
      sub_23A648EB0(v16, v13);
      sub_23A648F20(v13, v10);
      if ((*(v5 + 48))(v10, 1, v4) == 1)
      {
        sub_23A648F90(v10);
        sub_23A648F90(v13);
        result = 0xD00000000000002ALL;
      }

      else
      {
        (*(v5 + 32))(v7, v10, v4);
        sub_23A6DE334();
        v21 = sub_23A6DE264();
        v23 = v22;
        (*(v25[0] + 8))(v3, v1);
        v26 = 0;
        v27 = 0xE000000000000000;
        sub_23A6DFA84();
        MEMORY[0x23EE89BB0](0xD000000000000032, 0x800000023A6E7D60);
        MEMORY[0x23EE89BB0](v21, v23);

        MEMORY[0x23EE89BB0](93, 0xE100000000000000);
        v24 = v26;
        (*(v5 + 8))(v7, v4);
        sub_23A648F90(v13);
        result = v24;
      }

      break;
    case 3:
      v19 = *v16;
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_23A6DFA84();

      v26 = 0xD00000000000001ELL;
      v27 = 0x800000023A6E7750;
      v25[1] = v19;
      v20 = sub_23A6DFBD4();
      MEMORY[0x23EE89BB0](v20);

      MEMORY[0x23EE89BB0](11817, 0xE200000000000000);
      result = v26;
      break;
    case 4:
      result = 0xD000000000000075;
      break;
    case 5:
      result = 0xD00000000000005DLL;
      break;
    case 6:
      result = 0xD000000000000047;
      break;
    case 7:
      result = 0xD00000000000003CLL;
      break;
    case 8:
      result = 0xD000000000000038;
      break;
    case 9:
      result = 0xD000000000000040;
      break;
    case 10:
      return result;
    case 11:
      result = 0xD000000000000043;
      break;
    case 12:
      result = 0xD000000000000038;
      break;
    case 13:
      result = 0xD000000000000034;
      break;
    case 14:
      result = 0xD000000000000041;
      break;
    case 15:
    case 32:
      result = 0xD000000000000032;
      break;
    case 16:
      result = 0xD000000000000030;
      break;
    case 17:
      result = 0xD00000000000003ALL;
      break;
    case 18:
    case 25:
      result = 0xD00000000000002DLL;
      break;
    case 19:
      result = 0xD000000000000062;
      break;
    case 20:
      result = 0xD00000000000004CLL;
      break;
    case 21:
      result = 0xD00000000000005CLL;
      break;
    case 22:
      result = 0xD000000000000060;
      break;
    case 23:
      result = 0xD00000000000003ELL;
      break;
    case 24:
      result = 0xD000000000000052;
      break;
    case 26:
      result = 0xD000000000000053;
      break;
    case 27:
      result = 0xD000000000000038;
      break;
    case 28:
      result = 0xD000000000000026;
      break;
    case 29:
      result = 0xD000000000000025;
      break;
    case 30:
      result = 0xD00000000000002ALL;
      break;
    case 31:
      result = 0xD00000000000003BLL;
      break;
    default:
      if (v16[1])
      {
        result = *v16;
      }

      else
      {
        result = 0xD000000000000038;
      }

      break;
  }

  return result;
}

unint64_t PaymentCardReaderError.errorName.getter()
{
  v1 = type metadata accessor for PaymentCardReaderError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A648DF0(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x776F6C6C41746F6ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_23A648E54(v3);
      return 0x4665726170657270;
    case 2:
      sub_23A648E54(v3);
      return 0x6142656369766564;
    case 3:
      return 0x6E776F6E6B6E75;
    case 4:
      return result;
    case 5:
      v6 = 11;
      goto LABEL_30;
    case 6:
      return 0x726F707075736E75;
    case 7:
      v6 = 5;
      goto LABEL_30;
    case 8:
      return 0xD000000000000011;
    case 9:
      return 0xD000000000000010;
    case 10:
      return 0x456B726F7774656ELL;
    case 11:
      v6 = 10;
      goto LABEL_30;
    case 12:
      return 0xD000000000000016;
    case 13:
      return 0x7964616552746F6ELL;
    case 14:
      return 0xD000000000000010;
    case 15:
      return 0x4565726170657270;
    case 16:
      return 0x7078456E656B6F74;
    case 17:
      return 0xD000000000000010;
    case 18:
      return 0x7542726564616572;
    case 19:
      return 0xD000000000000010;
    case 20:
    case 21:
      return 0xD000000000000014;
    case 22:
      return 0xD000000000000022;
    case 23:
      return 0xD000000000000017;
    case 24:
    case 28:
      v6 = 9;
      goto LABEL_30;
    case 25:
      return 0x746E61686372656DLL;
    case 26:
    case 32:
      goto LABEL_31;
    case 27:
      return 0x4D64696C61766E69;
    case 29:
      v6 = 13;
LABEL_30:
      result = v6 | 0xD000000000000010;
      break;
    case 30:
    case 31:
      result = 0xD000000000000021;
      break;
    default:
      sub_23A648E54(v3);
LABEL_31:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

unint64_t sub_23A648D1C(uint64_t a1, uint64_t a2)
{
  sub_23A6DFCE4();
  sub_23A6DF684();
  v4 = sub_23A6DFD14();

  return sub_23A6491A8(a1, a2, v4);
}

uint64_t sub_23A648D94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23A648DF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentCardReaderError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A648E54(uint64_t a1)
{
  v2 = type metadata accessor for PaymentCardReaderError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A648EB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7A8, &qword_23A6E12A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A648F20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7A8, &qword_23A6E12A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A648F90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7A8, &qword_23A6E12A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23A649048(uint64_t a1)
{
  sub_23A6490D0();
  if (v1 <= 0x3F)
  {
    sub_23A649120(319);
    if (v2 <= 0x3F)
    {
      sub_23A649178();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_23A6490D0()
{
  if (!qword_27DF9C7C8)
  {
    v0 = sub_23A6DF954();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9C7C8);
    }
  }
}

void sub_23A649120(uint64_t a1)
{
  if (!qword_27DF9C7D0)
  {
    sub_23A6DE294();
    v1 = sub_23A6DF954();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF9C7D0);
    }
  }
}

uint64_t sub_23A649178()
{
  result = qword_27DF9C7D8;
  if (!qword_27DF9C7D8)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_27DF9C7D8);
  }

  return result;
}

unint64_t sub_23A6491A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23A6DFC04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23A649270(uint64_t a1)
{
  v2 = sub_23A6DFCD4();

  return sub_23A6492B4(a1, v2);
}

unint64_t sub_23A6492B4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_23A649320()
{
  result = sub_23A649344();
  byte_27DF9E438 = result & 1;
  return result;
}

uint64_t sub_23A649344()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  sub_23A6DEC84();
  v3 = sub_23A6DEC74();
  v4 = sub_23A6DCDF0();
  sub_23A646D48(v4, v2, &qword_27DF9D240, qword_23A6E1D30);
  v5 = sub_23A6DECC4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    sub_23A646DB0(v2, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = sub_23A6DECA4();
    v8 = sub_23A6DF8A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67240192;
      *(v9 + 4) = v3 & 1;
      _os_log_impl(&dword_23A63D000, v7, v8, "PaymentCardReader.isSupported: %{BOOL,public}d", v9, 8u);
      MEMORY[0x23EE8A960](v9, -1, -1);
    }

    (*(v6 + 8))(v2, v5);
  }

  return v3 & 1;
}

char *sub_23A64950C()
{
  if (qword_27DF9E430 != -1)
  {
    swift_once();
  }

  return &byte_27DF9E438;
}

uint64_t static PaymentCardReader.isSupported.getter()
{
  if (qword_27DF9E430 != -1)
  {
    swift_once();
  }

  return byte_27DF9E438;
}

uint64_t PaymentCardReader.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PaymentCardReader.events.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_events;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7E0, &unk_23A6E13A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaymentCardReader.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options + 8);
  v3 = *(v1 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options + 9);
  *a1 = *(v1 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t PaymentCardReader.Event.name.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x7250657461647075;
  }

  v1 = *v0;
  if (*v0 <= 4)
  {
    v6 = 0x7964616552746F6ELL;
    v7 = 0x6574654464726163;
    v8 = 0x614365766F6D6572;
    if (v1 != 3)
    {
      v8 = 0x706D6F4364616572;
    }

    if (v1 != 2)
    {
      v7 = v8;
    }

    if (v1)
    {
      v6 = 0x726F467964616572;
    }

    if (v1 <= 1)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    v3 = 0xD000000000000016;
    if (v1 == 9)
    {
      v3 = 0xD000000000000011;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (v1 == 6)
    {
      v4 = 0x636E614364616572;
    }

    if (v1 == 5)
    {
      v4 = 0x7274655264616572;
    }

    if (v1 <= 7)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t PaymentCardReader.UpdateEvent.name.getter()
{
  if (*(v0 + 8))
  {
    return 0x7964616552746F6ELL;
  }

  else
  {
    return 0x73736572676F7270;
  }
}

uint64_t PaymentCardReader.Options.vasMerchants.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

ProximityReader::PaymentCardReader::Options __swiftcall PaymentCardReader.Options.init()()
{
  *(v0 + 8) = 0;
  *v0 = MEMORY[0x277D84F90];
  return result;
}

ProximityReader::PaymentCardReader::Options __swiftcall PaymentCardReader.Options.init(vasMerchants:)(ProximityReader::PaymentCardReader::Options vasMerchants)
{
  *(v1 + 8) = 0;
  *v1 = vasMerchants.vasMerchants._rawValue;
  return vasMerchants;
}

uint64_t PaymentCardReader.Token.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PaymentCardReader.__allocating_init(options:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  PaymentCardReader.init(options:)(a1);
  return v2;
}

uint64_t PaymentCardReader.init(options:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v32 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7E8, &unk_23A6E13B0);
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v34 = &v32 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7E0, &unk_23A6E13A0);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v33 = &v32 - v7;
  v8 = sub_23A6DE2F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 9);
  sub_23A6DE2E4();
  v15 = sub_23A6DE2B4();
  v17 = v16;
  v18 = *(v9 + 8);
  v18(v11, v8);
  *(v2 + 16) = v15;
  *(v2 + 24) = v17;
  v19 = v2 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options;
  *v19 = v12;
  *(v19 + 8) = v13;
  v20 = v35;
  *(v19 + 9) = v14;
  sub_23A6DE2E4();
  v21 = sub_23A6DE2B4();
  v23 = v22;
  v18(v11, v8);
  v40 = v21;
  v41 = v23;
  (*(v36 + 104))(v34, *MEMORY[0x277D85778], v38);
  v24 = v33;
  sub_23A6DF804();
  (*(v37 + 32))(v2 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_events, v24, v39);
  v25 = (v2 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_uuid);
  *v25 = v21;
  v25[1] = v23;
  v26 = sub_23A6DCDF0();
  sub_23A646D48(v26, v20, &qword_27DF9D240, qword_23A6E1D30);
  v27 = sub_23A6DECC4();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v20, 1, v27) == 1)
  {
    sub_23A646DB0(v20, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {

    v29 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v2, 0x74706F2874696E69, 0xEE00293A736E6F69, v29, v30);

    (*(v28 + 8))(v20, v27);
  }

  return v2;
}

uint64_t sub_23A649E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_23A6DF7B4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  *(v15 + 5) = a3;
  (*(v7 + 32))(&v15[v14], v9, v6);

  sub_23A64A15C(0, 0, v12, &unk_23A6E1648, v15);

  return sub_23A6DF7C4();
}

uint64_t sub_23A64A02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_23A64A050, 0, 0);
}

uint64_t sub_23A64A050(uint64_t a1)
{
  v2 = sub_23A6587D8();
  v3 = *v2;
  v1[5] = *v2;
  v4 = *v3 + 560;
  v1[6] = *v4;
  v1[7] = v4 & 0xFFFFFFFFFFFFLL | 0x62A2000000000000;

  return MEMORY[0x2822009F8](sub_23A64A0EC, v3, 0);
}

uint64_t sub_23A64A0EC()
{
  (*(v0 + 48))(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A64A15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23A646D48(a3, v25 - v10, &qword_27DF9C7F0, &qword_23A6E25B0);
  v12 = sub_23A6DF7B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23A646DB0(v11, &qword_27DF9C7F0, &qword_23A6E25B0);
  }

  else
  {
    sub_23A6DF7A4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23A6DF754();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23A6DF654() + 32;
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

      sub_23A646DB0(a3, &qword_27DF9C7F0, &qword_23A6E25B0);

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

  sub_23A646DB0(a3, &qword_27DF9C7F0, &qword_23A6E25B0);
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

uint64_t sub_23A64A45C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C818, &unk_23A6E1650);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  (*(v6 + 16))(&v18 - v8, a1, v5, v7);
  LODWORD(a1) = (*(v6 + 88))(v9, v5);
  v10 = *MEMORY[0x277D85740];
  result = (*(v6 + 8))(v9, v5);
  if (a1 == v10)
  {
    v12 = sub_23A6DCDF0();
    sub_23A646D48(v12, v4, &qword_27DF9D240, qword_23A6E1D30);
    v13 = sub_23A6DECC4();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v4, 1, v13) == 1)
    {
      return sub_23A646DB0(v4, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v15 = sub_23A6DECA4();
      v16 = sub_23A6DF884();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_23A63D000, v15, v16, "events stream cancelled", v17, 2u);
        MEMORY[0x23EE8A960](v17, -1, -1);
      }

      return (*(v14 + 8))(v4, v13);
    }
  }

  return result;
}

uint64_t PaymentCardReader.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_23A6DCDF0();
  sub_23A646D48(v8, v7, &qword_27DF9D240, qword_23A6E1D30);
  v9 = sub_23A6DECC4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_23A646DB0(v7, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v11 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v1, 0x74696E696564, 0xE600000000000000, v11, v12);

    (*(v10 + 8))(v7, v9);
  }

  v14 = *(v1 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_uuid);
  v13 = *(v1 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_uuid + 8);
  v15 = sub_23A6DF7B4();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  v16[5] = v13;

  sub_23A64A15C(0, 0, v4, &unk_23A6E13C8, v16);

  v17 = OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_events;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7E0, &unk_23A6E13A0);
  (*(*(v18 - 8) + 8))(v1 + v17, v18);

  return v1;
}

uint64_t sub_23A64A9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_23A64A9C0, 0, 0);
}

uint64_t sub_23A64A9C0(uint64_t a1)
{
  v2 = sub_23A6587D8();
  v3 = *v2;
  v1[4] = *v2;
  v4 = *(*v3 + 568);

  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  v5[1] = sub_23A64AAFC;
  v7 = v1[2];
  v6 = v1[3];

  return v9(v7, v6);
}

uint64_t sub_23A64AAFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23A64AC0C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A647234;

  return sub_23A64A9A0(v4, v5, v6, v2, v3);
}

uint64_t PaymentCardReader.__deallocating_deinit()
{
  PaymentCardReader.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_23A64ACFC(uint64_t *a1)
{
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v4 = swift_task_alloc();
  v5 = *a1;
  v6 = a1[1];
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;

  return MEMORY[0x2822009F8](sub_23A64ADA4, 0, 0);
}

uint64_t sub_23A64ADA4(uint64_t a1)
{
  v2 = v1[5];
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v1[5];
  if (v6 == 1)
  {
    sub_23A646DB0(v1[5], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = v1[4];
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0xD000000000000017, 0x800000023A6E8380, v9, v10);

    (*(v5 + 8))(v7, v4);
  }

  v12 = v1[6];
  v11 = v1[7];
  v13 = sub_23A6587D8();
  v14 = *v13;
  v1[8] = *v13;
  v1[2] = v12;
  v1[3] = v11;
  v15 = *(*v14 + 624);

  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  v1[9] = v16;
  *v16 = v1;
  v16[1] = sub_23A64B000;

  return v18(v1 + 2);
}

uint64_t sub_23A64B000(char a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23A64B180, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1 & 1);
  }
}

uint64_t sub_23A64B180()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_23A64B1E8(uint64_t *a1)
{
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v4 = swift_task_alloc();
  v5 = *a1;
  v6 = a1[1];
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;

  return MEMORY[0x2822009F8](sub_23A64B290, 0, 0);
}

uint64_t sub_23A64B290(uint64_t a1)
{
  v2 = v1[5];
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v1[5];
  if (v6 == 1)
  {
    sub_23A646DB0(v1[5], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = v1[4];
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0xD000000000000013, 0x800000023A6E83A0, v9, v10);

    (*(v5 + 8))(v7, v4);
  }

  v12 = v1[6];
  v11 = v1[7];
  v13 = sub_23A6587D8();
  v14 = *v13;
  v1[8] = *v13;
  v1[2] = v12;
  v1[3] = v11;
  v15 = *(*v14 + 632);

  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  v1[9] = v16;
  *v16 = v1;
  v16[1] = sub_23A64B4F0;

  return (v18)(v1 + 2, 0);
}

uint64_t sub_23A64B4F0()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A64B654, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23A64B654()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A64B6B8(uint64_t *a1)
{
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v4 = swift_task_alloc();
  v5 = *a1;
  v6 = a1[1];
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;

  return MEMORY[0x2822009F8](sub_23A64B760, 0, 0);
}

uint64_t sub_23A64B760(uint64_t a1)
{
  v2 = v1[5];
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v1[5];
  if (v6 == 1)
  {
    sub_23A646DB0(v1[5], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = v1[4];
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0xD000000000000015, 0x800000023A6E83C0, v9, v10);

    (*(v5 + 8))(v7, v4);
  }

  v12 = v1[6];
  v11 = v1[7];
  v13 = sub_23A6587D8();
  v14 = *v13;
  v1[8] = *v13;
  v1[2] = v12;
  v1[3] = v11;
  v15 = *(*v14 + 632);

  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  v1[9] = v16;
  *v16 = v1;
  v16[1] = sub_23A64B9C0;

  return (v18)(v1 + 2, 1);
}

uint64_t sub_23A64B9C0()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A64EA7C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23A64BB24(_OWORD *a1)
{
  *(v2 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = *a1;

  return MEMORY[0x2822009F8](sub_23A64BBCC, 0, 0);
}

uint64_t sub_23A64BBCC(uint64_t a1)
{
  v2 = v1[5];
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v1[5];
  if (v6 == 1)
  {
    sub_23A646DB0(v1[5], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = v1[4];
    v9 = sub_23A6507C0();
    v10 = sub_23A6DCFB0();
    sub_23A6DCFBC(v9 & 1, v8, 0x6628737574617473, 0xEC000000293A726FLL, v10, v11);

    (*(v5 + 8))(v7, v4);
  }

  v13 = v1[6];
  v12 = v1[7];
  v14 = sub_23A6587D8();
  v15 = *v14;
  v1[8] = *v14;
  v1[2] = v13;
  v1[3] = v12;
  v16 = *(*v15 + 688);

  v19 = (v16 + *v16);
  v17 = swift_task_alloc();
  v1[9] = v17;
  *v17 = v1;
  v17[1] = sub_23A64BE34;

  return v19(v1 + 2);
}

uint64_t sub_23A64BE34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23A64B654, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_23A64BFB4()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A64C050, 0, 0);
}

uint64_t sub_23A64C050(uint64_t a1)
{
  v2 = v1[3];
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_23A646DB0(v1[3], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v1[2];
    v6 = v1[3];
    v8 = sub_23A6507C0();
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(v8 & 1, v7, 0x29287465736572, 0xE700000000000000, v9, v10);

    (*(v5 + 8))(v6, v4);
  }

  v11 = sub_23A6587D8();
  v12 = *v11;
  v1[4] = *v11;
  v13 = *v12 + 592;
  v1[5] = *v13;
  v1[6] = v13 & 0xFFFFFFFFFFFFLL | 0x9740000000000000;

  return MEMORY[0x2822009F8](sub_23A64C1F0, v12, 0);
}

uint64_t sub_23A64C1F0()
{
  (*(v0 + 40))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A64C264()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A64C300, 0, 0);
}

uint64_t sub_23A64C300(uint64_t a1)
{
  v2 = v1[3];
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_23A646DB0(v1[3], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v1[2];
    v6 = v1[3];
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0xD000000000000010, 0x800000023A6E83E0, v8, v9);

    (*(v5 + 8))(v6, v4);
  }

  v10 = sub_23A6587D8();
  v11 = *v10;
  v1[4] = *v10;
  v12 = *(*v11 + 608);

  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  v1[5] = v13;
  *v13 = v1;
  v13[1] = sub_23A64C534;

  return v15();
}

uint64_t sub_23A64C534(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v7 = sub_23A64673C;
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;
    v7 = sub_23A64C668;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23A64C668()
{

  v1 = v0[1];
  v3 = v0[7];
  v2 = v0[8];

  return v1(v2, v3);
}

uint64_t sub_23A64C6D8(uint64_t *a1)
{
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v4 = swift_task_alloc();
  v5 = *a1;
  v6 = a1[1];
  v2[7] = v4;
  v2[8] = v5;
  v2[9] = v6;

  return MEMORY[0x2822009F8](sub_23A64C780, 0, 0);
}

uint64_t sub_23A64C780(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = *(v1 + 56);
  if (v6 == 1)
  {
    sub_23A646DB0(*(v1 + 56), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = *(v1 + 48);
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0x2865726170657270, 0xEF293A676E697375, v9, v10);

    (*(v5 + 8))(v7, v4);
  }

  v12 = *(v1 + 64);
  v11 = *(v1 + 72);
  v13 = *(v1 + 48);
  v14 = sub_23A6587D8();
  v15 = *v14;
  *(v1 + 80) = *v14;
  *(v1 + 16) = v12;
  *(v1 + 24) = v11;
  v16 = *(v13 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options + 8);
  v17 = *(v13 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options + 9);
  *(v1 + 32) = *(v13 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options);
  *(v1 + 40) = v16;
  *(v1 + 41) = v17;
  v18 = *(*v15 + 648);

  v21 = (v18 + *v18);
  v19 = swift_task_alloc();
  *(v1 + 88) = v19;
  *v19 = v1;
  v19[1] = sub_23A64CA14;

  return v21(v1 + 16, v1 + 32);
}

uint64_t sub_23A64CA14(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23A64CB94, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_23A64CB94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A64CBF8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v6 = swift_task_alloc();
  v7 = *a1;
  v8 = a1[1];
  v4[9] = v6;
  v4[10] = v7;
  v4[11] = v8;

  return MEMORY[0x2822009F8](sub_23A64CCA4, 0, 0);
}

uint64_t sub_23A64CCA4(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = *(v1 + 72);
  if (v6 == 1)
  {
    sub_23A646DB0(*(v1 + 72), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = *(v1 + 64);
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0xD00000000000001DLL, 0x800000023A6E8400, v9, v10);

    (*(v5 + 8))(v7, v4);
  }

  v12 = *(v1 + 80);
  v11 = *(v1 + 88);
  v13 = *(v1 + 64);
  v14 = sub_23A6587D8();
  v15 = *v14;
  *(v1 + 96) = *v14;
  *(v1 + 16) = v12;
  *(v1 + 24) = v11;
  v16 = *(v13 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options + 8);
  v17 = *(v13 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options + 9);
  *(v1 + 32) = *(v13 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options);
  *(v1 + 40) = v16;
  *(v1 + 41) = v17;
  v18 = *(*v15 + 640);

  v23 = (v18 + *v18);
  v19 = swift_task_alloc();
  *(v1 + 104) = v19;
  *v19 = v1;
  v19[1] = sub_23A64CF3C;
  v20 = *(v1 + 48);
  v21 = *(v1 + 56);

  return v23(v1 + 16, v1 + 32, v20, v21);
}

uint64_t sub_23A64CF3C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 112) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23A64D0BC, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_23A64D0BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A64D120()
{
  *(v1 + 32) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A64D1BC, 0, 0);
}

uint64_t sub_23A64D1BC(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = *(v1 + 40);
  if (v6 == 1)
  {
    sub_23A646DB0(*(v1 + 40), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = *(v1 + 32);
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0xD000000000000018, 0x800000023A6E8420, v9, v10);

    (*(v5 + 8))(v7, v4);
  }

  v11 = *(v1 + 32);
  v12 = sub_23A6587D8();
  v13 = *v12;
  *(v1 + 48) = *v12;
  v14 = *(v11 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options + 8);
  v15 = *(v11 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options + 9);
  *(v1 + 16) = *(v11 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options);
  *(v1 + 24) = v14;
  *(v1 + 25) = v15;
  v16 = *(*v13 + 696);

  v19 = (v16 + *v16);
  v17 = swift_task_alloc();
  *(v1 + 56) = v17;
  *v17 = v1;
  v17[1] = sub_23A64D43C;

  return v19(v1 + 16);
}

uint64_t sub_23A64D43C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23A64D5D8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_23A64D5D8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23A64D63C()
{
  if (qword_27DF9E430 != -1)
  {
    swift_once();
  }

  if (byte_27DF9E438 == 1)
  {
    nullsub_1();
  }

  else
  {
    type metadata accessor for PaymentCardReaderError(0);
    sub_23A64D6FC();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

unint64_t sub_23A64D6FC()
{
  result = qword_27DF9C7F8;
  if (!qword_27DF9C7F8)
  {
    type metadata accessor for PaymentCardReaderError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C7F8);
  }

  return result;
}

unint64_t sub_23A64D758()
{
  result = qword_27DF9C800;
  if (!qword_27DF9C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C800);
  }

  return result;
}

uint64_t type metadata accessor for PaymentCardReader(uint64_t a1)
{
  result = qword_27DF9E5D0;
  if (!qword_27DF9E5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A64D800(uint64_t a1)
{
  sub_23A64E51C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PaymentCardReader.isAccountLinked(using:)(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23A64D9F4;

  return v6(a1);
}

uint64_t sub_23A64D9F4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of PaymentCardReader.linkAccount(using:)(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23A647140;

  return v6(a1);
}

uint64_t dispatch thunk of PaymentCardReader.relinkAccount(using:)(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23A647234;

  return v6(a1);
}

uint64_t dispatch thunk of PaymentCardReader.status(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23A64EA80;

  return v6(a1);
}

uint64_t dispatch thunk of PaymentCardReader.reset()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23A647140;

  return v4();
}

uint64_t dispatch thunk of PaymentCardReader.readerIdentifier.getter()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23A64E070;

  return v4();
}

uint64_t sub_23A64E070(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of PaymentCardReader.prepare(using:)(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23A64EA80;

  return v6(a1);
}

uint64_t dispatch thunk of PaymentCardReader.prepare(using:updateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 200) + **(*v3 + 200));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_23A64EA80;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of PaymentCardReader.prepareStoreAndForward()()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23A64D9F4;

  return v4();
}

void sub_23A64E51C()
{
  if (!qword_27DF9C808)
  {
    v0 = sub_23A6DF7F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9C808);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PaymentCardReader.UpdateEvent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PaymentCardReader.UpdateEvent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_23A64E5E0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A64E5FC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_23A64E640(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_23A64E688(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23A64E6E8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23A64E7E0;

  return v6(a1);
}

uint64_t sub_23A64E7E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23A64E8D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23A647234;

  return sub_23A64E6E8(a1, v4);
}

uint64_t sub_23A64E990()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23A647234;

  return sub_23A64A02C(v6, v7, v8, v4, v5, v0 + v3);
}

uint64_t StoreAndForwardStatus.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StoreAndForwardStatus(0) + 20);
  v4 = sub_23A6DE294();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for StoreAndForwardStatus(uint64_t a1)
{
  result = qword_27DF9E6E0;
  if (!qword_27DF9E6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static StoreAndForwardStatus.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(type metadata accessor for StoreAndForwardStatus(0) + 20);

  return MEMORY[0x28211DA98](a1 + v5, a2 + v5);
}

uint64_t StoreAndForwardStatus.hash(into:)(uint64_t a1)
{
  MEMORY[0x23EE8A1E0](*v1);
  type metadata accessor for StoreAndForwardStatus(0);
  sub_23A6DE294();
  sub_23A64EFBC(&qword_27DF9C820, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_23A6DF5E4();
}

uint64_t StoreAndForwardStatus.hashValue.getter()
{
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*v0);
  type metadata accessor for StoreAndForwardStatus(0);
  sub_23A6DE294();
  sub_23A64EFBC(&qword_27DF9C820, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A64ED08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for StoreAndForwardStatus(0) + 20);
  v6 = sub_23A6DE294();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_23A64ED8C()
{
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*v0);
  sub_23A6DE294();
  sub_23A64EFBC(&qword_27DF9C820, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A64EE38(uint64_t a1)
{
  MEMORY[0x23EE8A1E0](*v1);
  sub_23A6DE294();
  sub_23A64EFBC(&qword_27DF9C820, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_23A6DF5E4();
}

uint64_t sub_23A64EECC(uint64_t a1)
{
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*v1);
  sub_23A6DE294();
  sub_23A64EFBC(&qword_27DF9C820, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A64EFBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A64F004(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return MEMORY[0x28211DA98](a1 + *(a3 + 20), a2 + *(a3 + 20));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A64F054(uint64_t a1)
{
  result = sub_23A6DE294();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t PaymentCardTransactionRequest.currencyCode.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PaymentCardTransactionRequest.preferredAIDList.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t PaymentCardTransactionRequest.userInterfaceLanguage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PaymentCardTransactionRequest(0) + 32);

  return sub_23A647304(v3, a1);
}

uint64_t type metadata accessor for PaymentCardTransactionRequest(uint64_t a1)
{
  result = qword_27DF9E8F0;
  if (!qword_27DF9E8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PaymentCardTransactionRequest.userInterfaceLanguage.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PaymentCardTransactionRequest(0) + 32);

  return sub_23A6473B8(a1, v3);
}

uint64_t PaymentCardTransactionRequest.useISOCurrencySymbol.setter(char a1)
{
  result = type metadata accessor for PaymentCardTransactionRequest(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

__n128 PaymentCardTransactionRequest.transactionDescription.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PaymentCardTransactionRequest(0) + 40);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 PaymentCardTransactionRequest.transactionDescription.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for PaymentCardTransactionRequest(0) + 40);
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

double PaymentCardTransactionRequest.init(amount:currencyCode:for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a6;
  v14 = type metadata accessor for PaymentCardTransactionRequest(0);
  v15 = v14[8];
  v16 = sub_23A6DE324();
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  *(a7 + v14[9]) = 0;
  v17 = a7 + v14[10];
  result = 0.0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = -1;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = v13;
  *(a7 + 48) = MEMORY[0x277D84F90];
  return result;
}

uint64_t PaymentCardTransactionRequest.TransactionType.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t PaymentCardTransactionRequest.PaymentCycle.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

unint64_t sub_23A64F608()
{
  result = qword_27DF9C830;
  if (!qword_27DF9C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C830);
  }

  return result;
}

unint64_t sub_23A64F660()
{
  result = qword_27DF9C838;
  if (!qword_27DF9C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C838);
  }

  return result;
}

void sub_23A64F6DC(uint64_t a1)
{
  type metadata accessor for Decimal(319);
  if (v1 <= 0x3F)
  {
    sub_23A64F820(319, &qword_27DF9C840, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23A64768C(319);
      if (v3 <= 0x3F)
      {
        sub_23A64F820(319, &qword_27DF9C848, &type metadata for PaymentCardTransactionRequest.TransactionAmountDescription, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23A64F820(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PaymentCardTransactionRequest.TransactionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PaymentCardTransactionRequest.TransactionType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t initializeBufferWithCopyOfBuffer for PaymentCardTransactionRequest.TransactionAmountDescription(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PaymentCardTransactionRequest.TransactionAmountDescription(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for PaymentCardTransactionRequest.TransactionAmountDescription(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_23A64FAB0(uint64_t a1)
{
  if (*(a1 + 32) <= 4u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_23A64FAC8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_23A64FB08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A64FB28(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t ProximityReaderDiscovery.Topic.Payment.hashValue.getter()
{
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](0);
  return sub_23A6DFD14();
}

uint64_t sub_23A64FBD0()
{
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](0);
  return sub_23A6DFD14();
}

uint64_t sub_23A64FC3C(uint64_t a1)
{
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](0);
  return sub_23A6DFD14();
}

uint64_t ProximityReaderDiscovery.ContentError.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t ProximityReaderDiscovery.Content.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ProximityReaderDiscovery.Content.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_23A64FD74@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_23A64FD9C()
{
  v1 = sub_23A6825BC();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 224);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23A64FEC8;

  return v6();
}

uint64_t sub_23A64FEC8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23A650020, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_23A650020()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A6500A4()
{
  v1 = sub_23A6825BC();
  v2 = *v1;
  v0[3] = *v1;
  v3 = *(*v2 + 216);

  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_23A6501D8;
  v5 = v0[2];

  return v7(v5);
}

uint64_t sub_23A6501D8()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A650328, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t ProximityReaderDiscovery.presentContent(_:from:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 48) = a2;
  *(v2 + 56) = v3;
  *(v2 + 64) = *(a1 + 1);
  *(v2 + 80) = a1[3];
  return MEMORY[0x2822009F8](sub_23A650374, 0, 0);
}

uint64_t sub_23A650374()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v10 = *(v0 + 56);
  v3 = sub_23A6825BC();
  v4 = *v3;
  *(v0 + 88) = *v3;
  *(v0 + 16) = v10;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v5 = *(*v4 + 232);

  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_23A6504CC;
  v7 = *(v0 + 48);

  return v9(v0 + 16, v7);
}

uint64_t sub_23A6504CC()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A65061C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

unint64_t sub_23A650668()
{
  result = qword_27DF9C858;
  if (!qword_27DF9C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C858);
  }

  return result;
}

unint64_t sub_23A6506C0()
{
  result = qword_27DF9C860;
  if (!qword_27DF9C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C860);
  }

  return result;
}

unint64_t sub_23A650718()
{
  result = qword_27DF9C868;
  if (!qword_27DF9C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C868);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRUIPrefKey(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CRUIPrefKey(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23A6508D8(uint64_t a1, int a2)
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

uint64_t sub_23A650920(uint64_t result, int a2, int a3)
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

uint64_t sub_23A650978()
{
  type metadata accessor for IdentityReaderActor(0);
  v0 = swift_allocObject();
  result = sub_23A652228();
  qword_27DFA5E80 = v0;
  return result;
}

uint64_t sub_23A6509B8()
{
  v0 = swift_allocObject();
  sub_23A652228();
  return v0;
}

uint64_t *sub_23A6509F0()
{
  if (qword_27DF9EC80 != -1)
  {
    swift_once();
  }

  return &qword_27DFA5E80;
}

uint64_t sub_23A650A40@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23A6DECF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v62 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v54 - v7;
  MEMORY[0x28223BE20](v8);
  v64 = &v54 - v9;
  MEMORY[0x28223BE20](v10);
  v60 = &v54 - v11;
  v69 = sub_23A6DE424();
  v66 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v67 = &v54 - v14;
  MEMORY[0x28223BE20](v15);
  v61 = &v54 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v17 - 8);
  v68 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  v59 = sub_23A6DCDF0();
  sub_23A646D48(v59, v21, &qword_27DF9D240, qword_23A6E1D30);
  v22 = sub_23A6DECC4();
  v23 = *(v22 - 8);
  v58 = *(v23 + 48);
  v24 = v58(v21, 1, v22);
  v57 = v1;
  if (v24 == 1)
  {
    sub_23A646DB0(v21, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v56 = v22;
    v25 = sub_23A6507C0();
    v26 = sub_23A6DCFB0();
    v54 = a1;
    v22 = v56;
    sub_23A6DCFBC(v25 & 1, v1, 0xD000000000000014, 0x800000023A6E8650, v26, v27);
    a1 = v54;

    (*(v23 + 8))(v21, v22);
  }

  sub_23A6DED04();
  v28 = v64;
  v29 = v65;
  sub_23A6DECE4();
  if (v29)
  {
    v65 = v23;
    v30 = *(v4 + 32);
    v31 = v60;
    v30(v60, v28, v3);
    v32 = v63;
    v30(v63, v31, v3);
    (*(v4 + 16))(v62, v32, v3);
    v33 = v61;
    sub_23A6DE434();
    sub_23A654FFC(&qword_27DF9C870, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
    v34 = v32;
    v35 = v69;
    swift_willThrowTypedImpl();
    (*(v4 + 8))(v34, v3);
    (*(v66 + 32))(v67, v33, v35);
    v36 = v68;
    sub_23A646D48(v59, v68, &qword_27DF9D240, qword_23A6E1D30);
    if (v58(v36, 1, v22) == 1)
    {
      sub_23A646DB0(v68, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v40 = v66;
      v41 = v55;
      (*(v66 + 16))(v55, v67, v69);
      v42 = v40;
      v43 = sub_23A6DECA4();
      v44 = sub_23A6DF884();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v56 = v22;
        v47 = v46;
        v70 = v46;
        *v45 = 136446210;
        v48 = sub_23A6AF6FC();
        v50 = v49;
        (*(v42 + 8))(v41, v69);
        v51 = sub_23A657E78(v48, v50, &v70);

        *(v45 + 4) = v51;
        _os_log_impl(&dword_23A63D000, v43, v44, "An error occurred whilst performing this action: %{public}s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        v22 = v56;
        MEMORY[0x23EE8A960](v47, -1, -1);
        MEMORY[0x23EE8A960](v45, -1, -1);
      }

      else
      {

        (*(v42 + 8))(v41, v69);
      }

      (*(v65 + 8))(v68, v22);
    }

    sub_23A65244C();
    swift_allocError();
    v52 = v67;
    sub_23A6AF3DC(v53);
    swift_willThrow();
    return (*(v66 + 8))(v52, v69);
  }

  else
  {
    v37 = OBJC_IVAR____TtC15ProximityReader19IdentityReaderActor_connection;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C878, &qword_23A6E1B50);
    return (*(*(v38 - 8) + 16))(a1, v57 + v37, v38);
  }
}

uint64_t sub_23A65115C()
{
  v0 = sub_23A6DECF4();
  MEMORY[0x28223BE20](v0);
  MEMORY[0x28223BE20](v1);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v4 = sub_23A6DE424();
  MEMORY[0x28223BE20](v4);
  sub_23A6DED04();
  sub_23A6DECE4();
  return 1;
}

uint64_t sub_23A6513F8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C878, &qword_23A6E1B50);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6514C4, v1, 0);
}

uint64_t sub_23A6514C4()
{
  sub_23A650A40(v0[6]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_23A6515E0;
  v2 = v0[4];
  v3 = v0[2];

  return MEMORY[0x2821A5670](v3, sub_23A651808, 0, v2, &type metadata for MobileDocumentReader.Configuration);
}

uint64_t sub_23A6515E0()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_23A65178C;
  }

  else
  {
    v4 = sub_23A65170C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A65170C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23A65178C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

void sub_23A651808(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8F8, &qword_23A6E1C70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = sub_23A6DE574();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_23A6DE4E4();
  sub_23A6DE544();
  (*(v9 + 8))(v11, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, v7, v4);
  aBlock[4] = sub_23A6586B4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A658794;
  aBlock[3] = &block_descriptor_55;
  v15 = _Block_copy(aBlock);

  [v12 readerConfigurationWithCompletion_];
  _Block_release(v15);
}

void sub_23A651A64(void *a1, void *a2, uint64_t a3)
{
  v61 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A8, &unk_23A6E1C20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v56 - v11;
  v13 = sub_23A6DE424();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v60 = &v56 - v18;
  v19 = sub_23A6DE574();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DE4E4();
  sub_23A6DE524();
  (*(v20 + 8))(v22, v19);
  if (!a2)
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    sub_23A646DB0(v12, &qword_27DF9C8A8, &unk_23A6E1C20);
    if (a1)
    {
      v28 = a1;
      v29 = sub_23A6DE994();
      sub_23A69A44C(v29, v30, &v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8F8, &qword_23A6E1C70);
      sub_23A6DF774();

      return;
    }

    goto LABEL_12;
  }

  v62 = a2;
  v23 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  v24 = swift_dynamicCast();
  (*(v14 + 56))(v12, v24 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_23A646DB0(v12, &qword_27DF9C8A8, &unk_23A6E1C20);
    v25 = sub_23A6DCDF0();
    sub_23A646D48(v25, v7, &qword_27DF9D240, qword_23A6E1D30);
    v26 = sub_23A6DECC4();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v7, 1, v26) == 1)
    {
      sub_23A646DB0(v7, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v36 = a2;
      v37 = sub_23A6DECA4();
      v38 = sub_23A6DF884();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = a2;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_23A63D000, v37, v38, "Unknown error was returned from Identity service on read config request: [ %@ ]", v39, 0xCu);
        sub_23A646DB0(v40, &qword_27DF9C8B0, &qword_23A6E4ED0);
        MEMORY[0x23EE8A960](v40, -1, -1);
        MEMORY[0x23EE8A960](v39, -1, -1);
      }

      (*(v27 + 8))(v7, v26);
    }

LABEL_12:
    sub_23A65244C();
    v43 = swift_allocError();
    *v44 = 0;
    v62 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8F8, &qword_23A6E1C70);
    sub_23A6DF764();
    return;
  }

  v31 = v60;
  (*(v14 + 32))(v60, v12, v13);
  v32 = sub_23A6DCDF0();
  v33 = v59;
  sub_23A646D48(v32, v59, &qword_27DF9D240, qword_23A6E1D30);
  v34 = sub_23A6DECC4();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_23A646DB0(v33, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    (*(v14 + 16))(v16, v31, v13);
    v45 = sub_23A6DECA4();
    v46 = sub_23A6DF884();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v57 = v47;
      v58 = swift_slowAlloc();
      v62 = v58;
      *v47 = 136446210;
      v48 = sub_23A6AF6FC();
      v50 = v49;
      (*(v14 + 8))(v16, v13);
      v51 = sub_23A657E78(v48, v50, &v62);

      v52 = v57;
      *(v57 + 1) = v51;
      _os_log_impl(&dword_23A63D000, v45, v46, "An error occurred when retrieving the mobile document reader configuration: %{public}s", v52, 0xCu);
      v53 = v58;
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x23EE8A960](v53, -1, -1);
      MEMORY[0x23EE8A960](v52, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }

    (*(v35 + 8))(v33, v34);
    v31 = v60;
  }

  sub_23A65244C();
  v54 = swift_allocError();
  sub_23A6AF3DC(v55);
  v62 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8F8, &qword_23A6E1C70);
  sub_23A6DF764();
  (*(v14 + 8))(v31, v13);
}

uint64_t sub_23A652228()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C878, &qword_23A6E1B50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  swift_defaultActor_initialize();
  *(v1 + OBJC_IVAR____TtC15ProximityReader19IdentityReaderActor_service) = 0;
  sub_23A6DE664();
  v6 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v7 = sub_23A6DF614();

  v8 = [v6 initWithMachServiceName:v7 options:4096];

  sub_23A65244C();
  swift_allocError();
  *v9 = 0;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C888, qword_23A6E1B58);
  sub_23A6DEA04();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC15ProximityReader19IdentityReaderActor_connection, v5, v2);
  v11 = sub_23A6DEA14();
  v12 = [objc_opt_self() interfaceWithProtocol_];
  [v11 setRemoteObjectInterface_];

  v13 = sub_23A6DEA14();
  [v13 activate];

  return v1;
}

unint64_t sub_23A65244C()
{
  result = qword_27DF9C880;
  if (!qword_27DF9C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C880);
  }

  return result;
}

uint64_t sub_23A6524A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C878, &qword_23A6E1B50);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC15ProximityReader19IdentityReaderActor_connection;
  (*(v3 + 16))(&v11 - v5, v1 + OBJC_IVAR____TtC15ProximityReader19IdentityReaderActor_connection, v2, v4);
  v8 = sub_23A6DEA14();
  v9 = *(v3 + 8);
  v9(v6, v2);
  [v8 invalidate];

  v9((v1 + v7), v2);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_23A6525F0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C878, &qword_23A6E1B50);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6526C0, v2, 0);
}

uint64_t sub_23A6526C0()
{
  sub_23A650A40(v0[8]);
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[9] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = type metadata accessor for MobileDocumentReaderSession();
  *v4 = v0;
  v4[1] = sub_23A652810;
  v6 = v0[6];

  return MEMORY[0x2821A5670](v0 + 2, sub_23A652CE8, v3, v6, v5);
}

uint64_t sub_23A652810()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 40);

  if (v0)
  {
    v4 = sub_23A6529E0;
  }

  else
  {
    v4 = sub_23A652958;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A652958()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[2];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_23A6529E0()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

void sub_23A652A5C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8F0, &qword_23A6E1C68);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = sub_23A6DE574();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  sub_23A6DE4B4();
  sub_23A6DE544();
  (*(v12 + 8))(v14, v11);
  if (a4)
  {
    v15 = sub_23A6DF614();
  }

  else
  {
    v15 = 0;
  }

  (*(v8 + 16))(v10, a2, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v16, v10, v7);
  aBlock[4] = sub_23A65859C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65373C;
  aBlock[3] = &block_descriptor_49;
  v18 = _Block_copy(aBlock);

  [v20 prepareUsing:v15 completion:{v18, v19}];
  _Block_release(v18);
}

uint64_t sub_23A652CF0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v80 = a4;
  v76 = a1;
  v77 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v74 - v9;
  MEMORY[0x28223BE20](v11);
  v75 = &v74 - v12;
  MEMORY[0x28223BE20](v13);
  v79 = &v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A8, &unk_23A6E1C20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v74 - v16;
  v18 = sub_23A6DE424();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v78 = &v74 - v23;
  v24 = sub_23A6DE574();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DE4B4();
  sub_23A6DE524();
  (*(v25 + 8))(v27, v24);
  if (a3)
  {
    v81 = a3;
    v28 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    v29 = swift_dynamicCast();
    (*(v19 + 56))(v17, v29 ^ 1u, 1, v18);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_23A646DB0(v17, &qword_27DF9C8A8, &unk_23A6E1C20);
      v30 = sub_23A6DCDF0();
      v31 = v75;
      sub_23A646D48(v30, v75, &qword_27DF9D240, qword_23A6E1D30);
      v32 = sub_23A6DECC4();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v31, 1, v32) == 1)
      {
        sub_23A646DB0(v31, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v45 = a3;
        v46 = sub_23A6DECA4();
        v47 = sub_23A6DF884();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138412290;
          v50 = a3;
          v51 = _swift_stdlib_bridgeErrorToNSError();
          *(v48 + 4) = v51;
          *v49 = v51;
          _os_log_impl(&dword_23A63D000, v46, v47, "Unknown error was returned from Identity service on prepare request: [ %@ ]", v48, 0xCu);
          sub_23A646DB0(v49, &qword_27DF9C8B0, &qword_23A6E4ED0);
          MEMORY[0x23EE8A960](v49, -1, -1);
          MEMORY[0x23EE8A960](v48, -1, -1);
        }

        (*(v33 + 8))(v31, v32);
      }

LABEL_26:
      sub_23A65244C();
      v72 = swift_allocError();
      *v73 = 0;
      v81 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8F0, &qword_23A6E1C68);
      return sub_23A6DF764();
    }

    v40 = v78;
    (*(v19 + 32))(v78, v17, v18);
    v41 = sub_23A6DCDF0();
    v42 = v79;
    sub_23A646D48(v41, v79, &qword_27DF9D240, qword_23A6E1D30);
    v43 = sub_23A6DECC4();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v42, 1, v43) == 1)
    {
      sub_23A646DB0(v42, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      (*(v19 + 16))(v21, v40, v18);
      v52 = sub_23A6DECA4();
      v53 = sub_23A6DF884();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v81 = v77;
        *v54 = 136446210;
        v55 = sub_23A6AF6FC();
        v57 = v56;
        (*(v19 + 8))(v21, v18);
        v58 = sub_23A657E78(v55, v57, &v81);
        v42 = v79;

        *(v54 + 4) = v58;
        _os_log_impl(&dword_23A63D000, v52, v53, "An error occurred whilst preparing the device for mobile document reading: %{public}s", v54, 0xCu);
        v59 = v77;
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
        MEMORY[0x23EE8A960](v59, -1, -1);
        v60 = v54;
        v40 = v78;
        MEMORY[0x23EE8A960](v60, -1, -1);
      }

      else
      {

        (*(v19 + 8))(v21, v18);
      }

      (*(v44 + 8))(v42, v43);
    }

    sub_23A65244C();
    v67 = swift_allocError();
    sub_23A6AF3DC(v68);
    v81 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8F0, &qword_23A6E1C68);
    sub_23A6DF764();
    return (*(v19 + 8))(v40, v18);
  }

  else
  {
    v34 = v76;
    (*(v19 + 56))(v17, 1, 1, v18);
    sub_23A646DB0(v17, &qword_27DF9C8A8, &unk_23A6E1C20);
    v35 = v77;
    if (!v77)
    {
      v61 = sub_23A6DCDF0();
      sub_23A646D48(v61, v10, &qword_27DF9D240, qword_23A6E1D30);
      v62 = sub_23A6DECC4();
      v63 = *(v62 - 8);
      if ((*(v63 + 48))(v10, 1, v62) == 1)
      {
        sub_23A646DB0(v10, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v69 = sub_23A6DECA4();
        v70 = sub_23A6DF884();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&dword_23A63D000, v69, v70, "Invalid session was returned on prepare request", v71, 2u);
          MEMORY[0x23EE8A960](v71, -1, -1);
        }

        (*(v63 + 8))(v10, v62);
      }

      goto LABEL_26;
    }

    type metadata accessor for MobileDocumentReaderSession();

    v81 = sub_23A69A998(v34, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8F0, &qword_23A6E1C68);
    sub_23A6DF774();
    v36 = sub_23A6DCDF0();
    sub_23A646D48(v36, v7, &qword_27DF9D240, qword_23A6E1D30);
    v37 = sub_23A6DECC4();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v7, 1, v37) == 1)
    {
      return sub_23A646DB0(v7, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v64 = sub_23A6DECA4();
      v65 = sub_23A6DF874();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_23A63D000, v64, v65, "Returning a new MobileDocumentReaderSession", v66, 2u);
        MEMORY[0x23EE8A960](v66, -1, -1);
      }

      return (*(v38 + 8))(v7, v37);
    }
  }
}

uint64_t sub_23A65373C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_23A6DF624();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_23A6537D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_23A653800, v6, 0);
}

uint64_t sub_23A653800()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v12 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v12;
  *(v5 + 48) = v4;
  *(v5 + 56) = v1;
  v6 = sub_23A654FFC(&qword_27DF9C890, type metadata accessor for IdentityReaderActor, &unk_23A6E1B80);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v7 = v0;
  v7[1] = sub_23A653974;
  v9 = *(v0 + 64);
  v10 = *(v0 + 16);

  return MEMORY[0x282200830](v10, &unk_23A6E1B78, v5, sub_23A654FF4, v9, v1, v6, AssociatedTypeWitness);
}

uint64_t sub_23A653974()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[8];

    return MEMORY[0x2822009F8](sub_23A653AB0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_23A653AB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A653B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[33] = a5;
  v7[34] = a6;
  v7[31] = a3;
  v7[32] = a4;
  v7[29] = a1;
  v7[30] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v7[35] = swift_task_alloc();
  v7[36] = swift_getAssociatedTypeWitness();
  v10 = sub_23A6DF954();
  v7[37] = v10;
  v7[38] = *(v10 - 8);
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C878, &qword_23A6E1B50);
  v7[41] = v11;
  v7[42] = *(v11 - 8);
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = *(a6 - 8);
  v7[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A653D20, a5, 0);
}

uint64_t sub_23A653D20()
{
  (*(*(v0 + 360) + 16))(*(v0 + 368), *(v0 + 240), *(v0 + 272));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8C0, &qword_23A6E1C38);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 352);
    v2 = *(v0 + 256);
    v3 = *(v0 + 248);
    sub_23A63F73C((v0 + 16), v0 + 176);
    v4 = *(v0 + 200);
    v5 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v4);
    v6 = sub_23A6B589C(v3, v2, v4, v5);
    *(v0 + 376) = v6;
    sub_23A650A40(v1);
    v18 = swift_allocObject();
    *(v0 + 384) = v18;
    *(v18 + 16) = v6;
    v19 = v6;
    v20 = swift_task_alloc();
    *(v0 + 392) = v20;
    v21 = sub_23A6DEBD4();
    *v20 = v0;
    v20[1] = sub_23A654228;
    v22 = *(v0 + 328);
    v23 = sub_23A65848C;
    v24 = v0 + 224;
LABEL_13:

    return MEMORY[0x2821A5670](v24, v23, v18, v22, v21);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8C8, &qword_23A6E1C40);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 344);
    v8 = *(v0 + 256);
    v9 = *(v0 + 248);
    sub_23A63F73C((v0 + 56), v0 + 96);
    v10 = *(v0 + 120);
    v11 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v10);
    sub_23A6AF7AC(v9, v8, v10, v11);
    v13 = v12;
    *(v0 + 408) = v12;
    sub_23A650A40(v7);
    v18 = swift_allocObject();
    *(v0 + 416) = v18;
    *(v18 + 16) = v13;
    v32 = v13;
    v33 = swift_task_alloc();
    *(v0 + 424) = v33;
    v21 = sub_23A6DEBA4();
    *v33 = v0;
    v33[1] = sub_23A654788;
    v22 = *(v0 + 328);
    v23 = sub_23A658420;
    v24 = v0 + 216;
    goto LABEL_13;
  }

  v14 = *(v0 + 280);
  v15 = sub_23A6DCDF0();
  sub_23A646D48(v15, v14, &qword_27DF9D240, qword_23A6E1D30);
  v16 = sub_23A6DECC4();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_23A646DB0(*(v0 + 280), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v25 = sub_23A6DECA4();
    v26 = sub_23A6DF884();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_23A63D000, v25, v26, "Unknown identity read request type", v27, 2u);
      MEMORY[0x23EE8A960](v27, -1, -1);
    }

    v28 = *(v0 + 280);

    (*(v17 + 8))(v28, v16);
  }

  sub_23A65244C();
  swift_allocError();
  *v29 = 9;
  swift_willThrow();
  (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 272));

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_23A654228()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 264);

  if (v0)
  {
    v4 = sub_23A654698;
  }

  else
  {
    v4 = sub_23A654370;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A654370()
{
  (*(v0[42] + 8))(v0[44], v0[41]);
  v1 = v0[28];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
  DynamicType = swift_getDynamicType();
  v3 = v0[26];
  swift_getAssociatedTypeWitness();
  swift_task_alloc();
  (*(v3 + 40))(v1, DynamicType, v3);
  v4 = swift_dynamicCast();
  v5 = v0[47];
  v6 = v0[40];
  if (v4)
  {
    v7 = v0[36];
    v8 = v0[29];

    v9 = *(v7 - 8);
    (*(v9 + 56))(v6, 0, 1, v7);
    (*(v9 + 32))(v8, v6, v7);
  }

  else
  {
    v11 = v0[37];
    v12 = v0[38];
    (*(*(v0[36] - 8) + 56))(v0[40], 1, 1);
    (*(v12 + 8))(v6, v11);

    sub_23A65244C();
    swift_allocError();
    *v13 = 10;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  (*(v0[45] + 8))(v0[46], v0[34]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_23A654698()
{
  (*(*(v0 + 336) + 8))(*(v0 + 352), *(v0 + 328));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 272));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A654788()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 264);

  if (v0)
  {
    v4 = sub_23A654D24;
  }

  else
  {
    v4 = sub_23A6548D0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A6548D0()
{
  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
  v1 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  DynamicType = swift_getDynamicType();
  v3 = *(v0 + 128);
  v4 = *(v3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_23A6DF954();
  v7 = *(v6 - 8);
  v8 = swift_task_alloc();
  v22 = v1;
  v4(v1, DynamicType, v3);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v8, v6);

    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
  }

  else
  {
    *(v0 + 160) = AssociatedTypeWitness;
    *(v0 + 168) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    (*(v9 + 32))(boxed_opaque_existential_1, v8, AssociatedTypeWitness);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8D0, &qword_23A6E1C48);
  v11 = swift_dynamicCast();
  v12 = *(v0 + 408);
  v13 = *(v0 + 312);
  if (v11)
  {
    v14 = *(v0 + 288);
    v15 = *(v0 + 232);

    v16 = *(v14 - 8);
    (*(v16 + 56))(v13, 0, 1, v14);
    (*(v16 + 32))(v15, v13, v14);
  }

  else
  {
    v19 = *(v0 + 296);
    v18 = *(v0 + 304);
    (*(*(*(v0 + 288) - 8) + 56))(*(v0 + 312), 1, 1);
    (*(v18 + 8))(v13, v19);
    sub_23A65244C();
    swift_allocError();
    *v20 = 10;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 272));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_23A654D24()
{
  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 272));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A654E14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23A647140;

  return sub_23A653B14(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_23A654EE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_23A6DF7B4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_23A6554A0(0, 0, v4, &unk_23A6E1C08, v6);
}

uint64_t sub_23A654FFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for IdentityReaderActor(uint64_t a1)
{
  result = qword_27DF9ED20;
  if (!qword_27DF9ED20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A655090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C878, &qword_23A6E1B50);
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A655160, a4, 0);
}

uint64_t sub_23A655160()
{
  sub_23A650A40(v0[5]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_23A655278;
  v2 = v0[3];
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821A5670](v1, sub_23A657180, 0, v2, v3);
}

uint64_t sub_23A655278()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_23A655424;
  }

  else
  {
    v4 = sub_23A6553A4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23A6553A4()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23A655424()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23A6554A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23A646D48(a3, v22 - v9, &qword_27DF9C7F0, &qword_23A6E25B0);
  v11 = sub_23A6DF7B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23A646DB0(v10, &qword_27DF9C7F0, &qword_23A6E25B0);
  }

  else
  {
    sub_23A6DF7A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23A6DF754();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23A6DF654() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_23A646DB0(a3, &qword_27DF9C7F0, &qword_23A6E25B0);

      return v20;
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

  sub_23A646DB0(a3, &qword_27DF9C7F0, &qword_23A6E25B0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_23A655750(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = aBlock - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8D8, &unk_23A6E1C50);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = aBlock - v11;
  v13 = *a1;
  if (sub_23A6DEB54())
  {
    v14 = sub_23A6DCDF0();
    sub_23A646D48(v14, v8, &qword_27DF9D240, qword_23A6E1D30);
    v15 = sub_23A6DECC4();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v8, 1, v15) == 1)
    {
      sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v20 = sub_23A6DECA4();
      v21 = sub_23A6DF884();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_23A63D000, v20, v21, "Error Mobile document request is empty", v22, 2u);
        MEMORY[0x23EE8A960](v22, -1, -1);
      }

      (*(v16 + 8))(v8, v15);
    }

    sub_23A65244C();
    v23 = swift_allocError();
    *v24 = 9;
    aBlock[0] = v23;
    sub_23A6DF764();
  }

  else
  {
    (*(v10 + 16))(v12, a2, v9);
    v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v18 = swift_allocObject();
    (*(v10 + 32))(v18 + v17, v12, v9);
    aBlock[4] = sub_23A658494;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A658794;
    aBlock[3] = &block_descriptor_37;
    v19 = _Block_copy(aBlock);

    [v13 performDisplayRequest:a3 completion:v19];
    _Block_release(v19);
  }
}

uint64_t sub_23A655AB8(void *a1, void *a2, uint64_t a3)
{
  v72 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v68 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - v12;
  MEMORY[0x28223BE20](v14);
  v71 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A8, &unk_23A6E1C20);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v68 - v17;
  v19 = sub_23A6DE424();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v68 - v25;
  if (a2)
  {
    v73 = a2;
    v27 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    v28 = swift_dynamicCast();
    (*(v20 + 56))(v18, v28 ^ 1u, 1, v19);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_23A646DB0(v18, &qword_27DF9C8A8, &unk_23A6E1C20);
      v29 = sub_23A6DCDF0();
      sub_23A646D48(v29, v13, &qword_27DF9D240, qword_23A6E1D30);
      v30 = sub_23A6DECC4();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v13, 1, v30) == 1)
      {
        sub_23A646DB0(v13, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v40 = a2;
        v41 = sub_23A6DECA4();
        v42 = sub_23A6DF884();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          v45 = a2;
          v46 = _swift_stdlib_bridgeErrorToNSError();
          *(v43 + 4) = v46;
          *v44 = v46;
          _os_log_impl(&dword_23A63D000, v41, v42, "Unknown error was returned from Identity service on read request: [ %@ ]", v43, 0xCu);
          sub_23A646DB0(v44, &qword_27DF9C8B0, &qword_23A6E4ED0);
          MEMORY[0x23EE8A960](v44, -1, -1);
          MEMORY[0x23EE8A960](v43, -1, -1);
        }

        (*(v31 + 8))(v13, v30);
      }

LABEL_27:
      sub_23A65244C();
      v66 = swift_allocError();
      *v67 = 0;
      v73 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8D8, &unk_23A6E1C50);
      return sub_23A6DF764();
    }

    (*(v20 + 32))(v26, v18, v19);
    v36 = sub_23A6DCDF0();
    v37 = v71;
    sub_23A646D48(v36, v71, &qword_27DF9D240, qword_23A6E1D30);
    v38 = sub_23A6DECC4();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v37, 1, v38) == 1)
    {
      sub_23A646DB0(v37, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      (*(v20 + 16))(v22, v26, v19);
      v47 = sub_23A6DECA4();
      v48 = sub_23A6DF884();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v73 = v70;
        *v49 = 136446210;
        v69 = sub_23A6AF6FC();
        v51 = v50;
        (*(v20 + 8))(v22, v19);
        v52 = sub_23A657E78(v69, v51, &v73);

        *(v49 + 4) = v52;
        _os_log_impl(&dword_23A63D000, v47, v48, "An error occurred during the mobile document request: %{public}s", v49, 0xCu);
        v53 = v70;
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x23EE8A960](v53, -1, -1);
        v37 = v71;
        MEMORY[0x23EE8A960](v49, -1, -1);
      }

      else
      {

        (*(v20 + 8))(v22, v19);
      }

      (*(v39 + 8))(v37, v38);
    }

    sub_23A65244C();
    v61 = swift_allocError();
    sub_23A6AF3DC(v62);
    v73 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8D8, &unk_23A6E1C50);
    sub_23A6DF764();
    return (*(v20 + 8))(v26, v19);
  }

  else
  {
    (*(v20 + 56))(v18, 1, 1, v19, v24);
    sub_23A646DB0(v18, &qword_27DF9C8A8, &unk_23A6E1C20);
    if (!a1)
    {
      v54 = sub_23A6DCDF0();
      sub_23A646D48(v54, v10, &qword_27DF9D240, qword_23A6E1D30);
      v55 = sub_23A6DECC4();
      v56 = *(v55 - 8);
      if ((*(v56 + 48))(v10, 1, v55) == 1)
      {
        sub_23A646DB0(v10, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v63 = sub_23A6DECA4();
        v64 = sub_23A6DF884();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_23A63D000, v63, v64, "Error on completion call while reading a document", v65, 2u);
          MEMORY[0x23EE8A960](v65, -1, -1);
        }

        (*(v56 + 8))(v10, v55);
      }

      goto LABEL_27;
    }

    v32 = a1;
    v33 = sub_23A6DCDF0();
    sub_23A646D48(v33, v7, &qword_27DF9D240, qword_23A6E1D30);
    v34 = sub_23A6DECC4();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v7, 1, v34) == 1)
    {
      sub_23A646DB0(v7, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v57 = sub_23A6DECA4();
      v58 = sub_23A6DF8A4();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_23A63D000, v57, v58, "Document read response received", v59, 2u);
        MEMORY[0x23EE8A960](v59, -1, -1);
      }

      (*(v35 + 8))(v7, v34);
    }

    v73 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8D8, &unk_23A6E1C50);
    return sub_23A6DF774();
  }
}

void sub_23A65642C(id *a1, uint64_t a2, void *a3)
{
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8E8, &qword_23A6E1C60);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = sub_23A6DE574();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  if (sub_23A6DEAF4())
  {
    v16 = sub_23A6DCDF0();
    sub_23A646D48(v16, v7, &qword_27DF9D240, qword_23A6E1D30);
    v17 = sub_23A6DECC4();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v7, 1, v17) == 1)
    {
      sub_23A646DB0(v7, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v20 = sub_23A6DECA4();
      v21 = sub_23A6DF884();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_23A63D000, v20, v21, "Error Mobile document request is empty", v22, 2u);
        MEMORY[0x23EE8A960](v22, -1, -1);
      }

      (*(v18 + 8))(v7, v17);
    }

    sub_23A65244C();
    v23 = swift_allocError();
    *v24 = 9;
    aBlock[0] = v23;
    sub_23A6DF764();
  }

  else
  {
    v19 = (v13 + 8);
    if (sub_23A6DEAE4())
    {
      sub_23A6DE4F4();
    }

    else
    {
      sub_23A6DE4D4();
    }

    sub_23A6DE544();
    (*v19)(v15, v12);
    (*(v9 + 16))(v11, v30, v8);
    v25 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = a3;
    (*(v9 + 32))(v26 + v25, v11, v8);
    aBlock[4] = sub_23A65850C;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A658794;
    aBlock[3] = &block_descriptor_43;
    v27 = _Block_copy(aBlock);
    v28 = a3;

    [v29 performDataRequest:v28 completion:v27];
    _Block_release(v27);
  }
}

uint64_t sub_23A65686C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v63 = a1;
  v64 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v60 - v9;
  MEMORY[0x28223BE20](v10);
  v61 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A8, &unk_23A6E1C20);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v60 - v13;
  v15 = sub_23A6DE424();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v62 = &v60 - v20;
  v21 = sub_23A6DE574();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = (v22 + 8);
  if (sub_23A6DEAE4())
  {
    sub_23A6DE4F4();
  }

  else
  {
    sub_23A6DE4D4();
  }

  sub_23A6DE524();
  (*v25)(v24, v21);
  if (a2)
  {
    v65 = a2;
    v26 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    v27 = swift_dynamicCast();
    (*(v16 + 56))(v14, v27 ^ 1u, 1, v15);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v28 = v62;
      (*(v16 + 32))(v62, v14, v15);
      v29 = sub_23A6DCDF0();
      v30 = v61;
      sub_23A646D48(v29, v61, &qword_27DF9D240, qword_23A6E1D30);
      v31 = sub_23A6DECC4();
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v30, 1, v31) == 1)
      {
        sub_23A646DB0(v30, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        (*(v16 + 16))(v18, v28, v15);
        v45 = sub_23A6DECA4();
        v46 = sub_23A6DF884();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v65 = v63;
          *v47 = 136446210;
          v48 = sub_23A6AF6FC();
          v50 = v49;
          (*(v16 + 8))(v18, v15);
          v51 = sub_23A657E78(v48, v50, &v65);
          v30 = v61;

          *(v47 + 4) = v51;
          _os_log_impl(&dword_23A63D000, v45, v46, "An error occurred during the mobile document request: %{public}s", v47, 0xCu);
          v52 = v63;
          __swift_destroy_boxed_opaque_existential_1Tm(v63);
          MEMORY[0x23EE8A960](v52, -1, -1);
          MEMORY[0x23EE8A960](v47, -1, -1);
        }

        else
        {

          (*(v16 + 8))(v18, v15);
        }

        (*(v32 + 8))(v30, v31);
        v28 = v62;
      }

      sub_23A65244C();
      v58 = swift_allocError();
      sub_23A6AF3DC(v59);
      v65 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8E8, &qword_23A6E1C60);
      sub_23A6DF764();
      return (*(v16 + 8))(v28, v15);
    }
  }

  else
  {
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  sub_23A646DB0(v14, &qword_27DF9C8A8, &unk_23A6E1C20);
  if (v63)
  {
    v33 = v63;
    v34 = sub_23A6DCDF0();
    sub_23A646D48(v34, v7, &qword_27DF9D240, qword_23A6E1D30);
    v35 = sub_23A6DECC4();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v7, 1, v35) == 1)
    {
      sub_23A646DB0(v7, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v41 = sub_23A6DECA4();
      v42 = sub_23A6DF8A4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_23A63D000, v41, v42, "Document read response received", v43, 2u);
        MEMORY[0x23EE8A960](v43, -1, -1);
      }

      (*(v36 + 8))(v7, v35);
    }

    v65 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8E8, &qword_23A6E1C60);
    return sub_23A6DF774();
  }

  else
  {
    v37 = sub_23A6DCDF0();
    v38 = v60;
    sub_23A646D48(v37, v60, &qword_27DF9D240, qword_23A6E1D30);
    v39 = sub_23A6DECC4();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v38, 1, v39) == 1)
    {
      sub_23A646DB0(v38, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v53 = sub_23A6DECA4();
      v54 = sub_23A6DF884();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_23A63D000, v53, v54, "Error on completion call while reading a document", v55, 2u);
        MEMORY[0x23EE8A960](v55, -1, -1);
      }

      (*(v40 + 8))(v38, v39);
    }

    sub_23A65244C();
    v56 = swift_allocError();
    *v57 = 0;
    v65 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8E8, &qword_23A6E1C60);
    return sub_23A6DF764();
  }
}

void sub_23A6570F4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_23A657180(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = *a1;
  (*(v5 + 16))(aBlock - v7, a2, v4, v6);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_23A657DE4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A657BC8;
  aBlock[3] = &block_descriptor;
  v12 = _Block_copy(aBlock);

  [v9 cancelReadWithCompletion_];
  _Block_release(v12);
}

uint64_t sub_23A657334(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v57 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A8, &unk_23A6E1C20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v57 - v14;
  v16 = sub_23A6DE424();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v57 - v22;
  if (a1)
  {
    v62 = a1;
    v24 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    v25 = swift_dynamicCast();
    (*(v17 + 56))(v15, v25 ^ 1u, 1, v16);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_23A646DB0(v15, &qword_27DF9C8A8, &unk_23A6E1C20);
      v26 = sub_23A6DCDF0();
      sub_23A646D48(v26, v9, &qword_27DF9D240, qword_23A6E1D30);
      v27 = sub_23A6DECC4();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v9, 1, v27) == 1)
      {
        sub_23A646DB0(v9, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v40 = a1;
        v41 = sub_23A6DECA4();
        v42 = sub_23A6DF884();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          v45 = a1;
          v46 = _swift_stdlib_bridgeErrorToNSError();
          *(v43 + 4) = v46;
          *v44 = v46;
          _os_log_impl(&dword_23A63D000, v41, v42, "Unknown error was returned from Identity service: [ %@ ]", v43, 0xCu);
          sub_23A646DB0(v44, &qword_27DF9C8B0, &qword_23A6E4ED0);
          MEMORY[0x23EE8A960](v44, -1, -1);
          MEMORY[0x23EE8A960](v43, -1, -1);
        }

        (*(v28 + 8))(v9, v27);
      }

      sub_23A65244C();
      v47 = swift_allocError();
      *v48 = 0;
      v62 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
      return sub_23A6DF764();
    }

    else
    {
      (*(v17 + 32))(v23, v15, v16);
      v32 = sub_23A6DCDF0();
      sub_23A646D48(v32, v12, &qword_27DF9D240, qword_23A6E1D30);
      v33 = sub_23A6DECC4();
      v34 = *(v33 - 8);
      v35 = (*(v34 + 48))(v12, 1, v33);
      v61 = a2;
      if (v35 == 1)
      {
        sub_23A646DB0(v12, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v58 = *(v17 + 16);
        v58(v19, v23, v16);
        v49 = sub_23A6DECA4();
        v59 = sub_23A6DF884();
        v60 = v49;
        if (os_log_type_enabled(v49, v59))
        {
          v50 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *v50 = 138412290;
          sub_23A654FFC(&qword_27DF9C870, MEMORY[0x277D436E0], MEMORY[0x277D436E8]);
          swift_allocError();
          v58(v51, v19, v16);
          v52 = _swift_stdlib_bridgeErrorToNSError();
          (*(v17 + 8))(v19, v16);
          *(v50 + 4) = v52;
          v53 = v57;
          *v57 = v52;
          v54 = v60;
          _os_log_impl(&dword_23A63D000, v60, v59, "Could not cancel read due to: [ %@ ]", v50, 0xCu);
          sub_23A646DB0(v53, &qword_27DF9C8B0, &qword_23A6E4ED0);
          MEMORY[0x23EE8A960](v53, -1, -1);
          MEMORY[0x23EE8A960](v50, -1, -1);
        }

        else
        {

          (*(v17 + 8))(v19, v16);
        }

        (*(v34 + 8))(v12, v33);
      }

      sub_23A65244C();
      v55 = swift_allocError();
      sub_23A6AF3DC(v56);
      v62 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
      sub_23A6DF764();
      return (*(v17 + 8))(v23, v16);
    }
  }

  else
  {
    (*(v17 + 56))(v15, 1, 1, v16, v21);
    sub_23A646DB0(v15, &qword_27DF9C8A8, &unk_23A6E1C20);
    v29 = sub_23A6DCDF0();
    sub_23A646D48(v29, v6, &qword_27DF9D240, qword_23A6E1D30);
    v30 = sub_23A6DECC4();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v6, 1, v30) == 1)
    {
      sub_23A646DB0(v6, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v36 = sub_23A6DECA4();
      v37 = sub_23A6DF8A4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_23A63D000, v36, v37, "Requesting to cancel current read", v38, 2u);
        MEMORY[0x23EE8A960](v38, -1, -1);
      }

      (*(v31 + 8))(v6, v30);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
    return sub_23A6DF774();
  }
}

void sub_23A657BC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_23A657C48(uint64_t a1)
{
  sub_23A657CEC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23A657CEC(uint64_t a1)
{
  if (!qword_27DF9C898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9C888, qword_23A6E1B58);
    v1 = sub_23A6DEA24();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF9C898);
    }
  }
}

uint64_t sub_23A657D50()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A647234;

  return sub_23A655090(v3, v4, v5, v2);
}

uint64_t sub_23A657DE4(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23A657334(a1, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23A657E78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23A657F44(v11, 0, 0, 1, a1, a2);
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
    sub_23A648D94(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_23A657F44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23A658050(a5, a6);
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
    result = sub_23A6DFAA4();
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

void *sub_23A658050(uint64_t a1, unint64_t a2)
{
  v3 = sub_23A65809C(a1, a2);
  sub_23A6581CC(&unk_284D52110);
  return v3;
}

void *sub_23A65809C(uint64_t a1, unint64_t a2)
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

  v6 = sub_23A6582B8(v5, 0);
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

  result = sub_23A6DFAA4();
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
        v10 = sub_23A6DF6D4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23A6582B8(v10, 0);
        result = sub_23A6DFA74();
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

uint64_t sub_23A6581CC(uint64_t result)
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

  result = sub_23A65832C(result, v11, 1, v3);
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

void *sub_23A6582B8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8E0, &qword_23A6E20C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23A65832C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8E0, &qword_23A6E20C0);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
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

uint64_t sub_23A65850C(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8E8, &qword_23A6E1C60) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_23A65686C(a1, a2, v6, v7);
}

uint64_t sub_23A65859C(uint64_t a1, void *a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8F0, &qword_23A6E1C68) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_23A652CF0(a1, a2, a3, v8);
}

uint64_t objectdestroy_21Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_23A6586DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

void *sub_23A658798()
{
  type metadata accessor for PaymentCardReaderActor(0);
  v0 = swift_allocObject();
  result = sub_23A65891C();
  qword_27DFA5E88 = v0;
  return result;
}

uint64_t *sub_23A6587D8()
{
  if (qword_27DF9ED30 != -1)
  {
    swift_once();
  }

  return &qword_27DFA5E88;
}

uint64_t sub_23A658828()
{
  v0 = sub_23A6DE2F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  sub_23A6DE2E4();
  v5 = sub_23A6DE2B4();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  *(v4 + 16) = v5;
  *(v4 + 24) = v7;
  return v4;
}

void *sub_23A65891C()
{
  v1 = v0;
  v2 = sub_23A6DE2F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v0[14] = 0;
  v0[15] = 0;
  v6 = MEMORY[0x277D84F90];
  v0[16] = sub_23A675560(MEMORY[0x277D84F90]);
  v0[17] = 0;
  active = type metadata accessor for UIForegroundActiveArbiter();
  v8 = sub_23A6B1FE8();
  v1[21] = active;
  v1[22] = &off_284D54638;
  v1[18] = v8;
  type metadata accessor for PaymentCardReaderForegroundObserver();
  v9 = swift_allocObject();
  sub_23A6DE2E4();
  v10 = sub_23A6DE2B4();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  *(v9 + 16) = v10;
  *(v9 + 24) = v12;
  v1[23] = v9;
  *(v1 + 96) = 5;
  *(v1 + 194) = 0;
  v1[25] = 0;
  v1[26] = 0;
  (*(v3 + 56))(v1 + OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_lastCardReadTransactionID, 1, 1, v2);
  *(v1 + OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_backgroundAllowed) = 0;
  v13 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_eventHandlers;
  *(v1 + v13) = sub_23A67577C(v6, &qword_27DF9C990, &qword_23A6E2098);
  v14 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_updateHandlers;
  *(v1 + v14) = sub_23A67577C(v6, &qword_27DF9C9B0, &qword_23A6E20B8);
  *(v1 + OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning) = 0;
  v15 = v1[21];
  v16 = v1[22];
  v17 = __swift_project_boxed_opaque_existential_1(v1 + 18, v15);
  v18 = *(v15 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v28[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v19);
  LOBYTE(v16) = (*(v16 + 8))(v15, v16);
  (*(v18 + 8))(v21, v15);
  *(v1 + 192) = v16;
  sub_23A675890((v1 + 18), v28);
  v22 = v29;
  v23 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v24 = *(v23 + 24);

  v24(v25, &off_284D524A8, v22, v23);

  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v1;
}

uint64_t sub_23A658C44()
{
  sub_23A675890(v0 + 144, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v3 = *(v2 + 32);

  v3(v4, &off_284D524A8, v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v6);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));

  sub_23A646DB0(v0 + OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_lastCardReadTransactionID, &qword_27DF9C900, &qword_23A6E1D20);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23A658D60()
{
  sub_23A658C44();

  return swift_defaultActor_deallocate();
}

uint64_t sub_23A658D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C908, &qword_23A6E1D28);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_23A6DCDF0();
  sub_23A646D48(v14, v13, &qword_27DF9D240, qword_23A6E1D30);
  v15 = sub_23A6DECC4();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_23A646DB0(v13, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v17 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v4, 0x2870757472617473, 0xED0000293A5F3A5FLL, v17, v18);

    (*(v16 + 8))(v13, v15);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v20 = *(v19 - 8);
  (*(v20 + 16))(v10, a3, v19);
  (*(v20 + 56))(v10, 0, 1, v19);
  swift_beginAccess();

  sub_23A659048(v10, a1, a2);
  swift_endAccess();
  return sub_23A65A218(a1, a2);
}

uint64_t sub_23A659048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C908, &qword_23A6E1D28);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_23A646DB0(a1, &qword_27DF9C908, &qword_23A6E1D28);
    sub_23A674140(a2, a3, v9);

    return sub_23A646DB0(v9, &qword_27DF9C908, &qword_23A6E1D28);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_23A674D74(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_23A659228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_23A674F00(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native, &qword_27DF9C990, &qword_23A6E2098);

    *v4 = v17;
  }

  else
  {
    v12 = sub_23A648D1C(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_23A6753F0(&qword_27DF9C990, &qword_23A6E2098);
        v16 = v18;
      }

      result = sub_23A674BC4(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_23A659350(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C908, &qword_23A6E1D28);
  v3[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6594E0, v2, 0);
}

uint64_t sub_23A6594E0(uint64_t a1)
{
  v2 = v1[18];
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v2, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v2, 1, v4);
  v8 = v1[18];
  if (v7 == 1)
  {
    sub_23A646DB0(v1[18], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v9 = v1[10];
    v10 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v9, 0x2870756E61656C63, 0xEB00000000293A5FLL, v10, v11);

    (*(v5 + 8))(v8, v4);
  }

  v12 = v1[10];
  swift_beginAccess();
  v13 = *(v12 + 128);
  if (*(v13 + 16))
  {
    v15 = v1[8];
    v14 = v1[9];

    v16 = sub_23A648D1C(v15, v14);
    if (v17)
    {
      v19 = v1[15];
      v18 = v1[16];
      v20 = v1[13];
      v21 = v1[14];
      v22 = v1[12];
      v23 = v1[9];
      v24 = v1[8];
      (*(v21 + 16))(v19, *(v13 + 56) + *(v21 + 72) * v16, v20);

      (*(v21 + 32))(v18, v19, v20);
      sub_23A6DF7E4();
      (*(v21 + 56))(v22, 1, 1, v20);
      swift_beginAccess();

      sub_23A659048(v22, v24, v23);
      swift_endAccess();
      sub_23A65A56C(v24, v23);
      (*(v21 + 8))(v18, v20);
      goto LABEL_14;
    }
  }

  v25 = v1[17];
  sub_23A646D48(v3, v25, &qword_27DF9D240, qword_23A6E1D30);
  if (v6(v25, 1, v4) == 1)
  {
    sub_23A646DB0(v1[17], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v26 = sub_23A6DECA4();
    v27 = sub_23A6DF884();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_23A63D000, v26, v27, "reader delayed cleanup scheduled", v28, 2u);
      MEMORY[0x23EE8A960](v28, -1, -1);
    }

    v29 = v1[17];

    (*(v5 + 8))(v29, v4);
  }

  v30 = v1[10];
  v31 = v1[11];
  v33 = v1[8];
  v32 = v1[9];
  v34 = sub_23A6DF7B4();
  (*(*(v34 - 8) + 56))(v31, 1, 1, v34);
  v35 = sub_23A6781B0(&qword_27DF9C910, type metadata accessor for PaymentCardReaderActor, &unk_23A6E1E88);
  v36 = swift_allocObject();
  v36[2] = v30;
  v36[3] = v35;
  v36[4] = v30;
  v36[5] = v33;
  v36[6] = v32;
  swift_retain_n();

  sub_23A64A15C(0, 0, v31, &unk_23A6E1D58, v36);

LABEL_14:

  v37 = v1[1];

  return v37();
}

uint64_t sub_23A6599A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C908, &qword_23A6E1D28);
  v6[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v9 = sub_23A6DFB14();
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A659B5C, a4, 0);
}

uint64_t sub_23A659B5C()
{
  sub_23A6DFC84();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_23A659C28;

  return sub_23A673C88(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_23A659C28()
{
  v2 = *v1;

  v3 = v2[20];
  v4 = v2[19];
  v5 = v2[18];
  v6 = v2[8];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v7 = sub_23A678254;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v7 = sub_23A659DD4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_23A659DD4()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (*(v2 + 16))
  {
    v4 = v0[9];
    v3 = v0[10];

    v5 = sub_23A648D1C(v4, v3);
    if (v6)
    {
      v8 = v0[16];
      v7 = v0[17];
      v9 = v0[14];
      v10 = v0[15];
      v11 = v0[13];
      (*(v10 + 16))(v8, *(v2 + 56) + *(v10 + 72) * v5, v9);

      (*(v10 + 32))(v7, v8, v9);
      v12 = sub_23A6DCDF0();
      sub_23A646D48(v12, v11, &qword_27DF9D240, qword_23A6E1D30);
      v13 = sub_23A6DECC4();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v11, 1, v13) == 1)
      {
        sub_23A646DB0(v0[13], &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v23 = sub_23A6DECA4();
        v24 = sub_23A6DF8A4();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_23A63D000, v23, v24, "reader delayed cleanup success", v25, 2u);
          MEMORY[0x23EE8A960](v25, -1, -1);
        }

        v26 = v0[13];

        (*(v14 + 8))(v26, v13);
      }

      v27 = v0[17];
      v28 = v0[14];
      v29 = v0[15];
      v31 = v0[10];
      v30 = v0[11];
      v32 = v0[9];
      sub_23A6DF7E4();
      (*(v29 + 56))(v30, 1, 1, v28);
      swift_beginAccess();

      sub_23A659048(v30, v32, v31);
      swift_endAccess();
      sub_23A65A56C(v32, v31);
      (*(v29 + 8))(v27, v28);
      goto LABEL_15;
    }
  }

  v15 = v0[12];
  v16 = sub_23A6DCDF0();
  sub_23A646D48(v16, v15, &qword_27DF9D240, qword_23A6E1D30);
  v17 = sub_23A6DECC4();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_23A646DB0(v0[12], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v19 = sub_23A6DECA4();
    v20 = sub_23A6DF884();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23A63D000, v19, v20, "reader delayed cleanup failed ", v21, 2u);
      MEMORY[0x23EE8A960](v21, -1, -1);
    }

    v22 = v0[12];

    (*(v18 + 8))(v22, v17);
  }

LABEL_15:

  v33 = v0[1];

  return v33();
}

uint64_t sub_23A65A218(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_23A6DCDF0();
  sub_23A646D48(v10, v9, &qword_27DF9D240, qword_23A6E1D30);
  v11 = sub_23A6DECC4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) == 1)
  {
    result = sub_23A646DB0(v9, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v26 = v11;
    v15 = sub_23A6507C0();
    v16 = sub_23A6DCFB0();
    v11 = v26;
    sub_23A6DCFBC(v15 & 1, v3, 0xD000000000000013, 0x800000023A6E8ED0, v16, v17);

    result = (*(v12 + 8))(v9, v11);
  }

  v18 = *(v3 + 136);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 136) = v20;
    sub_23A646D48(v10, v6, &qword_27DF9D240, qword_23A6E1D30);
    if (v13(v6, 1, v11) == 1)
    {
      return sub_23A646DB0(v6, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v21 = v28;

      v22 = sub_23A6DECA4();
      v23 = sub_23A6DF874();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v29 = v25;
        *v24 = 136315394;
        *(v24 + 4) = sub_23A657E78(v27, v21, &v29);
        *(v24 + 12) = 2048;
        *(v24 + 14) = *(v3 + 136);

        _os_log_impl(&dword_23A63D000, v22, v23, "reader [%s], [%ld]", v24, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x23EE8A960](v25, -1, -1);
        MEMORY[0x23EE8A960](v24, -1, -1);
      }

      else
      {
      }

      return (*(v12 + 8))(v6, v11);
    }
  }

  return result;
}