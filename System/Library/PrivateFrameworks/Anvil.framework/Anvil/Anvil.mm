uint64_t sub_1DD8F9D10(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DDA13680();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DD8F9DBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DDA13680();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD8F9E60(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82830, &unk_1DDA16350);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1DD8F9F1C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82830, &unk_1DDA16350);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD8F9FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DD8FA0A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1DD8FA188(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DDA13680();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DD8FA234(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DDA13680();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD8FA2D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DDA13680();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DD8FA384(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DDA13680();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD8FA440()
{

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

uint64_t sub_1DD8FA498()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DD8FA614()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DD8FA65C()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1DD8FA6BC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1DD8FA6F4()
{
  v1 = sub_1DDA136B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 176) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_1DDA13F50();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_1DD8FA918()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD8FA964()
{
  v1 = sub_1DDA136B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 176) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_1DDA13F50();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_1DD8FAB6C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();

  v9 = sub_1DDA13F50();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x1EEE6BDD0](v0, v12 + v8, v11 | 7);
}

uint64_t sub_1DD8FAD3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DD8FAD84()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1DD8FADBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD8FAE34()
{
  v1 = sub_1DDA136B0();
  v2 = *(v1 - 8);
  v36 = *(v2 + 80);
  v3 = (v36 + 168) & ~v36;
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v35 = *(v5 + 80);
  v6 = (v4 + v35) & ~v35;
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8) - 8);
  v34 = *(v8 + 80);
  v9 = (v6 + v7 + v34) & ~v34;
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0) - 8);
  v33 = *(v11 + 80);
  v12 = (v9 + v10 + v33) & ~v33;
  v13 = *(v11 + 64);
  v30 = sub_1DDA13A80();
  v14 = *(v30 - 8);
  v32 = *(v14 + 80);
  v29 = (v12 + v13 + v32) & ~v32;
  v15 = (*(v14 + 64) + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998) - 8);
  v17 = *(v16 + 80);
  v18 = v15 + v17;
  v31 = *(v16 + 64);

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  (*(v2 + 8))(v0 + v3, v1);
  v19 = sub_1DDA13F50();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v0 + v6, 1, v19))
  {
    (*(v20 + 8))(v0 + v6, v19);
  }

  v21 = sub_1DDA13F30();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v0 + v9, 1, v21))
  {
    (*(v22 + 8))(v0 + v9, v21);
  }

  v23 = (v18 + 8) & ~v17;
  v24 = sub_1DDA13EE0();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v0 + v12, 1, v24))
  {
    (*(v25 + 8))(v0 + v12, v24);
  }

  (*(v14 + 8))(v0 + v29, v30);

  v26 = sub_1DDA14420();
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v0 + v23, 1, v26))
  {
    (*(v27 + 8))(v0 + v23, v26);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((((v31 + v23 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v36 | v35 | v34 | v33 | v32 | v17 | 7);
}

uint64_t sub_1DD8FB3E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DD8FB44C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD8FB4AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 34, 7);
}

uint64_t sub_1DD8FB4E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD8FB51C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DD8FB5A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DD8FB600()
{
  sub_1DD909D28(*(v0 + 16), *(v0 + 24));
  sub_1DD909D28(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DD8FB648()
{
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD8FB6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DDA136B0();
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

uint64_t sub_1DD8FB75C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DDA136B0();
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

uint64_t sub_1DD8FB818()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DD8FB870(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DDA13680();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DD8FB91C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DDA13680();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD8FB9C0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD834D8, &unk_1DDA1A788);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1DD8FBA7C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD834D8, &unk_1DDA1A788);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD8FBB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1DD8FBBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1DD8FBC34(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DDA134E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DD8FBCE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DDA134E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD8FBD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DDA134E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DD8FBE40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DDA134E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD8FBEE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1DD8FBF44()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1DD8FBF7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

uint64_t sub_1DD8FC05C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DD8FC0AC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DD8FC0F0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(type metadata accessor for Instrumentation(0) - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);

  v12 = v0 + v3;
  v13 = type metadata accessor for Credentials(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {

    v14 = *(v13 + 28);
    v15 = sub_1DDA13680();
    (*(*(v15 - 8) + 8))(v12 + v14, v15);
  }

  v16 = sub_1DDA13F50();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v0 + v7, 1, v16))
  {
    (*(v17 + 8))(v0 + v7, v16);
  }

  v18 = (((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;

  v19 = sub_1DDA136B0();
  (*(*(v19 - 8) + 8))(v0 + v18, v19);

  return MEMORY[0x1EEE6BDD0](v0, ((((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | v10 | 7);
}

uint64_t sub_1DD8FC424()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83648, &qword_1DDA1B1B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DD8FC4F4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD8FC52C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DD8FC580()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1DD8FC5C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD8FC600()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD8FC63C()
{
  v1 = sub_1DDA14180();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DD8FC710()
{
  v1 = sub_1DDA134E0();
  v2 = *(v1 - 8);
  v17 = *(v2 + 80);
  v3 = (v17 + 40) & ~v17;
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + ((((v4 + 87) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6;
  v16 = *(v5 + 64);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  v8 = *(v15 - 8);
  v9 = *(v8 + 80);
  v14 = *(v8 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + v4 + 40));

  v10 = sub_1DDA13F50();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v7, 1, v10))
  {
    (*(v11 + 8))(v0 + v7, v10);
  }

  v12 = (v16 + v9 + v7) & ~v9;
  (*(v8 + 8))(v0 + v12, v15);

  return MEMORY[0x1EEE6BDD0](v0, v12 + v14, v17 | v6 | v9 | 7);
}

uint64_t sub_1DD8FC9F0()
{
  v17 = sub_1DDA134E0();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 160) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v16 = *(v10 + 64);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  (*(v1 + 8))(v0 + v3, v17);
  (*(v6 + 8))(v0 + v8, v5);
  v13 = sub_1DDA13F50();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v12, 1, v13))
  {
    (*(v14 + 8))(v0 + v12, v13);
  }

  return MEMORY[0x1EEE6BDD0](v0, v12 + v16, v2 | v7 | v11 | 7);
}

uint64_t sub_1DD8FCC84()
{
  v1 = sub_1DDA134E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83810, &qword_1DDA1B488);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v5 + v9) & ~v9;
  v14 = v3 | v9;
  v11 = (*(v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  v12(v0 + v6, v1);
  (*(v8 + 8))(v0 + v10, v7);

  __swift_destroy_boxed_opaque_existential_1((v0 + v11 + 16));

  return MEMORY[0x1EEE6BDD0](v0, v11 + 57, v14 | 7);
}

uint64_t sub_1DD8FCE30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83858, &qword_1DDA1B4D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1DDA134E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 57) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + v5 + 16));
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DD8FD2B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DD8FD374(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD8FD424(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DDA134E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DD8FD4D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DDA134E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD8FD614(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DDA14810();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DD8FD6C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DDA14810();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD8FD764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DDA141D0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1DDA14050();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1DDA14060();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1DD8FD8A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DDA141D0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1DDA14050();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1DDA14060();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1DD8FD9F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DDA14810();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DD8FDA9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DDA14810();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD8FDB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1DD8FDBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1DD8FDCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = type metadata accessor for TextAnnotation(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1DD8FDD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = type metadata accessor for TextAnnotation(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1DD8FDE40(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DDA134E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DD8FDEEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DDA134E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD8FDFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for ChatChunk.Choice(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1DD8FE040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for ChatChunk.Choice(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1DD8FE0BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DD8FE178(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD8FE228(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DD8FE2E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD8FE394(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DDA13680();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1DD8FE4C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1DDA13680();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DD8FE5F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D10, &qword_1DDA185E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DD8FE66C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D10, &qword_1DDA185E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1DD8FE800(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007865646ELL;
  v4 = 0xEA00000000007865;
  v5 = 0x646E695F6D657469;
  if (v2 != 1)
  {
    v5 = 0x61746C6564;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x695F6563696F6863;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD8FE868()
{
  v1 = 0x646E695F6D657469;
  if (*v0 != 1)
  {
    v1 = 0x61746C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x695F6563696F6863;
  }
}

uint64_t sub_1DD8FE9D0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1DD8FEB78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    SessionResponse = type metadata accessor for CreateSessionResponse(0);
    v9 = *(*(SessionResponse - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, SessionResponse);
  }
}

uint64_t sub_1DD8FEC24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    SessionResponse = type metadata accessor for CreateSessionResponse(0);
    v8 = *(*(SessionResponse - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, SessionResponse);
  }

  return result;
}

uint64_t sub_1DD8FECD0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    SessionResponse = type metadata accessor for CreateSessionResponse(0);
    v9 = *(*(SessionResponse - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, SessionResponse);
  }
}

uint64_t sub_1DD8FED7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    SessionResponse = type metadata accessor for CreateSessionResponse(0);
    v8 = *(*(SessionResponse - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, SessionResponse);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Anvil9ChatChunkO16IncompleteDetailV0D6ReasonO_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DD8FEE48(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DD8FEEB0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1DD8FEF20()
{
  v1 = *v0;
  v2 = 0x656D614E72657375;
  v3 = 0x6553656369766564;
  if (v1 != 6)
  {
    v3 = 0x6E656B6F546469;
  }

  v4 = 0x6974617269707865;
  if (v1 != 4)
  {
    v4 = 7107700;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F54737365636361;
  if (v1 != 2)
  {
    v5 = 0x5468736572666572;
  }

  if (*v0)
  {
    v2 = 0x6C69616D65;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DD8FF034@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DD90A1A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DD8FF074(uint64_t a1)
{
  v2 = sub_1DD90CEB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD8FF0B0(uint64_t a1)
{
  v2 = sub_1DD90CEB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD8FF0EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829B8, &qword_1DDA16DD8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90CEB0();
  sub_1DDA15650();
  v8[15] = 0;
  sub_1DDA15340();
  if (!v1)
  {
    v8[14] = 1;
    sub_1DDA15340();
    v8[13] = 2;
    sub_1DDA15340();
    v8[12] = 3;
    sub_1DDA15340();
    type metadata accessor for UserCredentials(0);
    v8[11] = 4;
    sub_1DDA13680();
    sub_1DD909D7C(&qword_1ECD829A0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DDA15380();
    v8[10] = 5;
    sub_1DDA15320();
    v8[9] = 6;
    sub_1DDA15300();
    v8[8] = 7;
    sub_1DDA15300();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DD8FF3C8(uint64_t a1)
{
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  v2 = type metadata accessor for UserCredentials(0);
  sub_1DDA13680();
  sub_1DD909D7C(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DDA14AD0();
  v3 = (v1 + v2[9]);
  if (*(v3 + 8) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v4 = *v3;
    sub_1DDA15590();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1E12B8460](v5);
  }

  if (*(v1 + v2[10] + 8))
  {
    sub_1DDA15590();
    sub_1DDA14BC0();
  }

  else
  {
    sub_1DDA15590();
  }

  if (!*(v1 + v2[11] + 8))
  {
    return sub_1DDA15590();
  }

  sub_1DDA15590();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD8FF568@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_1DDA13680();
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829A8, &qword_1DDA16DD0);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v8 = &v35 - v7;
  v9 = type metadata accessor for UserCredentials(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1DD90CEB0();
  v43 = v8;
  sub_1DDA15620();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    v13 = v6;
    v15 = v40;
    v14 = v41;
    v38 = v9;
    v52 = 0;
    v16 = v42;
    *v11 = sub_1DDA15280();
    v11[1] = v17;
    v51 = 1;
    v11[2] = sub_1DDA15280();
    v11[3] = v18;
    v50 = 2;
    v37 = 0;
    v11[4] = sub_1DDA15280();
    v11[5] = v19;
    v49 = 3;
    v11[6] = sub_1DDA15280();
    v11[7] = v20;
    v48 = 4;
    sub_1DD909D7C(&qword_1ECD82990, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1DDA152C0();
    v21 = v13;
    v22 = v38;
    (*(v14 + 32))(v11 + *(v38 + 32), v21, v4);
    v47 = 5;
    v23 = sub_1DDA15240();
    v37 = 0;
    v24 = v11 + *(v22 + 36);
    *v24 = v23;
    v24[8] = v25 & 1;
    v46 = 6;
    v26 = sub_1DDA15220();
    v27 = (v11 + *(v22 + 40));
    *v27 = v26;
    v27[1] = v28;
    v45 = 7;
    v29 = sub_1DDA15220();
    v36 = v30;
    v31 = v29;
    v32 = (v11 + *(v38 + 44));
    (*(v15 + 8))(v43, v16);
    v33 = v36;
    *v32 = v31;
    v32[1] = v33;
    sub_1DD90CF04(v11, v39, type metadata accessor for UserCredentials);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return sub_1DD90CE50(v11, type metadata accessor for UserCredentials);
  }
}

uint64_t sub_1DD8FFB98(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1684627824;
  }

  else
  {
    v2 = 1701147238;
  }

  if (*a2)
  {
    v3 = 1684627824;
  }

  else
  {
    v3 = 1701147238;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1DDA15440();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1DD8FFC10@<X0>(char *a2@<X8>)
{
  v3 = sub_1DDA151E0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1DD8FFC70(uint64_t *a1@<X8>)
{
  v2 = 1701147238;
  if (*v1)
  {
    v2 = 1684627824;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_1DD8FFD48()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD8FFDB0(unsigned __int8 a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD8FFED8(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD8FFF24(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD8FFF88(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82970, &qword_1DDA16DB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90CCB4();
  sub_1DDA15650();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1DD90CDA8();
  sub_1DDA15380();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[13] = 1;
  sub_1DDA15340();
  v10[12] = 2;
  sub_1DDA15340();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DD900140()
{
  v1 = 0x656D614E6E616C70;
  if (*v0 != 1)
  {
    v1 = 0x636170736B726F77;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t sub_1DD9001A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DD90A544(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DD9001CC(uint64_t a1)
{
  v2 = sub_1DD90CCB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD900208(uint64_t a1)
{
  v2 = sub_1DD90CCB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD900244@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DD90A660(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1DD9002A4()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  sub_1DDA14BC0();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD900344(uint64_t a1)
{
  sub_1DDA14BC0();

  sub_1DDA14BC0();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9003D4(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  sub_1DDA14BC0();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD900470(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1DD90A448(v5, v7) & 1;
}

uint64_t sub_1DD9004BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82998, &qword_1DDA16DC8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90CDFC();
  sub_1DDA15650();
  v8[15] = 0;
  sub_1DDA15340();
  if (!v1)
  {
    v8[14] = 1;
    sub_1DDA15340();
    type metadata accessor for UserTokens(0);
    v8[13] = 2;
    sub_1DDA13680();
    sub_1DD909D7C(&qword_1ECD829A0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DDA15380();
    v8[12] = 3;
    sub_1DDA15320();
    v8[11] = 4;
    sub_1DDA15300();
    v8[10] = 5;
    sub_1DDA15300();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DD900758(uint64_t a1)
{
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  v2 = type metadata accessor for UserTokens(0);
  sub_1DDA13680();
  sub_1DD909D7C(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DDA14AD0();
  v3 = (v1 + v2[7]);
  if (*(v3 + 8) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v4 = *v3;
    sub_1DDA15590();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1E12B8460](v5);
  }

  if (*(v1 + v2[8] + 8))
  {
    sub_1DDA15590();
    sub_1DDA14BC0();
  }

  else
  {
    sub_1DDA15590();
  }

  if (!*(v1 + v2[9] + 8))
  {
    return sub_1DDA15590();
  }

  sub_1DDA15590();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9008E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_1DDA13680();
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82980, &qword_1DDA16DC0);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v8 = &v32 - v7;
  v9 = type metadata accessor for UserTokens(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1DD90CDFC();
  v38 = v8;
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v14 = v35;
  v13 = v36;
  v45 = 0;
  v15 = v37;
  *v11 = sub_1DDA15280();
  v11[1] = v17;
  v44 = 1;
  v18 = sub_1DDA15280();
  v33 = 0;
  v11[2] = v18;
  v11[3] = v19;
  v43 = 2;
  sub_1DD909D7C(&qword_1ECD82990, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v20 = v33;
  sub_1DDA152C0();
  if (v20)
  {
    (*(v14 + 8))(v38, v15);
    v33 = v20;
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    (*(v13 + 32))(v11 + v9[6], v6, v4);
    v42 = 3;
    v21 = sub_1DDA15240();
    v22 = v11 + v9[7];
    *v22 = v21;
    v22[8] = v23 & 1;
    v41 = 4;
    v24 = sub_1DDA15220();
    v25 = (v11 + v9[8]);
    *v25 = v24;
    v25[1] = v26;
    v40 = 5;
    v27 = sub_1DDA15220();
    v33 = 0;
    v28 = v27;
    v30 = v29;
    (*(v14 + 8))(v38, v15);
    v31 = (v11 + v9[9]);
    *v31 = v28;
    v31[1] = v30;
    sub_1DD90CF04(v11, v34, type metadata accessor for UserTokens);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return sub_1DD90CE50(v11, type metadata accessor for UserTokens);
  }
}

uint64_t sub_1DD900DC4()
{
  v1 = *v0;
  v2 = 0x6F54737365636361;
  v3 = 7107700;
  v4 = 0x6553656369766564;
  if (v1 != 4)
  {
    v4 = 0x6E656B6F546469;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x5468736572666572;
  if (v1 != 1)
  {
    v5 = 0x6974617269707865;
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

uint64_t sub_1DD900E9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DD90A9E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DD900EC4(uint64_t a1)
{
  v2 = sub_1DD90CDFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD900F00(uint64_t a1)
{
  v2 = sub_1DD90CDFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s5Anvil11BillingPlanV8CategoryO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD901030(uint64_t a1)
{
  v2 = *v1;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v2);
  return sub_1DDA155B0();
}

uint64_t SignOutFailure.hashValue.getter()
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](0);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9010F0()
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](0);
  return sub_1DDA155B0();
}

uint64_t sub_1DD901134(uint64_t a1)
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](0);
  return sub_1DDA155B0();
}

uint64_t Credentials.userName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Credentials.userName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Credentials.email.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Credentials.email.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Credentials.billingPlan.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

__n128 Credentials.billingPlan.setter(char *a1)
{
  v2 = *a1;
  v6 = *(a1 + 8);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);

  *(v1 + 32) = v2;
  result = v6;
  *(v1 + 40) = v6;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  return result;
}

uint64_t Credentials.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Credentials(0) + 28);
  v4 = sub_1DDA13680();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Credentials.expirationDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Credentials(0) + 28);
  v4 = sub_1DDA13680();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Credentials.credentialsID.getter()
{
  v1 = sub_1DDA148A0();
  *&v35 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DDA14890();
  v34 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v11 = *v0;
  v10 = v0[1];

  v12 = sub_1DD901910(v11, v10);
  v14 = v13;
  sub_1DD909D7C(&qword_1ECD82800, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1DDA14880();
  sub_1DD909CD4(v12, v14);
  sub_1DD909AF4(v12, v14, v3);
  sub_1DD909D28(v12, v14);
  sub_1DDA14870();
  sub_1DD909D28(v12, v14);
  (*(v35 + 8))(v3, v1);
  v15 = *(v34 + 16);
  v32 = v9;
  v15(v7, v9, v4);
  sub_1DD909D7C(&qword_1ECD82808, MEMORY[0x1E69663E0], MEMORY[0x1E69663F0]);
  v33 = v4;
  result = sub_1DDA14C70();
  v17 = v36;
  v18 = v37;
  v19 = *(v36 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v37 == v19)
  {
LABEL_2:
    (*(v34 + 8))(v32, v33);

    v36 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
    sub_1DD90D2A4(&qword_1ECD82820, &qword_1ECD82818, &qword_1DDA1A780, MEMORY[0x1E69E6310]);
    v21 = sub_1DDA14AE0();

    return v21;
  }

  else
  {
    v35 = xmmword_1DDA16320;
    v22 = v37;
    while ((v18 & 0x8000000000000000) == 0)
    {
      if (v22 >= *(v17 + 16))
      {
        goto LABEL_13;
      }

      v23 = *(v17 + 32 + v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82810, &unk_1DDA16340);
      v24 = swift_allocObject();
      *(v24 + 16) = v35;
      *(v24 + 56) = MEMORY[0x1E69E7508];
      *(v24 + 64) = MEMORY[0x1E69E7558];
      *(v24 + 32) = v23;
      v25 = sub_1DDA14B40();
      v27 = v26;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DD908634(0, *(v20 + 16) + 1, 1, v20);
        v20 = result;
      }

      v29 = *(v20 + 16);
      v28 = *(v20 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_1DD908634((v28 > 1), v29 + 1, 1, v20);
        v20 = result;
      }

      ++v22;
      *(v20 + 16) = v29 + 1;
      v30 = v20 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      if (v19 == v22)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD901910(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A70, &qword_1DDA16E80);
  if (swift_dynamicCast())
  {
    sub_1DD8FEEB0(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1DDA13380();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1DD90D378(__src, &qword_1ECD82A78, &qword_1DDA16E88);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1DDA150E0();
  }

  sub_1DD9094D4(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1DD90D028(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  v10 = sub_1DD90959C(sub_1DD90D3D8, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1DDA13540();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1DD909F34(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1DDA14C00();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1DDA14C30();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1DDA150E0();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1DD909F34(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1DDA14C10();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1DDA13550();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1DDA13550();
    sub_1DD90D440(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1DD90D440(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1DD909CD4(*&__src[0], *(&__src[0] + 1));

  sub_1DD909D28(v32, *(&v32 + 1));
  return v32;
}

uint64_t static BillingPlan.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v7 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return sub_1DDA15440();
}

uint64_t Credentials.hash(into:)(uint64_t a1)
{
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v1 + 32));
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  type metadata accessor for Credentials(0);
  sub_1DDA13680();
  sub_1DD909D7C(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  return sub_1DDA14AD0();
}

uint64_t Credentials.hashValue.getter()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v0 + 32));
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  type metadata accessor for Credentials(0);
  sub_1DDA13680();
  sub_1DD909D7C(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9020C4()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v0 + 32));
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA13680();
  sub_1DD909D7C(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9021C0(uint64_t a1)
{
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v1 + 32));
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA13680();
  sub_1DD909D7C(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  return sub_1DDA14AD0();
}

uint64_t sub_1DD9022A0(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v1 + 32));
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA13680();
  sub_1DD909D7C(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

BOOL RateLimitBudgets.isRateLimited.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82830, &unk_1DDA16350);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v39 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for RateLimitBudgets.Limits(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v39 - v17);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v39 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v24 = (&v39 - v23);
  if (*v0)
  {
    return 1;
  }

  v39 = v22;
  v42 = type metadata accessor for RateLimitBudgets(0);
  sub_1DD90ADB4(&v0[v42[5]], v12, &qword_1ECD82830, &unk_1DDA16350);
  v40 = *(v14 + 48);
  v26 = v40(v12, 1, v13);
  v41 = v4;
  if (v26 == 1)
  {
    sub_1DD90D378(v12, &qword_1ECD82830, &unk_1DDA16350);
  }

  else
  {
    sub_1DD90AD50(v12, v24);
    v28 = *v24;
    v27 = v24[1];
    sub_1DD90CE50(v24, type metadata accessor for RateLimitBudgets.Limits);
    if (v28 >= v27)
    {
      return 1;
    }
  }

  sub_1DD90ADB4(&v0[v42[6]], v10, &qword_1ECD82830, &unk_1DDA16350);
  v29 = v40;
  if (v40(v10, 1, v13) == 1)
  {
    sub_1DD90D378(v10, &qword_1ECD82830, &unk_1DDA16350);
    v30 = v41;
  }

  else
  {
    sub_1DD90AD50(v10, v21);
    v31 = *v21;
    v32 = v21[1];
    sub_1DD90CE50(v21, type metadata accessor for RateLimitBudgets.Limits);
    v33 = v31 < v32;
    v30 = v41;
    if (!v33)
    {
      return 1;
    }
  }

  sub_1DD90ADB4(&v0[v42[7]], v7, &qword_1ECD82830, &unk_1DDA16350);
  if (v29(v7, 1, v13) == 1)
  {
    sub_1DD90D378(v7, &qword_1ECD82830, &unk_1DDA16350);
  }

  else
  {
    sub_1DD90AD50(v7, v18);
    v34 = *v18;
    v35 = v18[1];
    sub_1DD90CE50(v18, type metadata accessor for RateLimitBudgets.Limits);
    if (v34 >= v35)
    {
      return 1;
    }
  }

  sub_1DD90ADB4(&v0[v42[8]], v30, &qword_1ECD82830, &unk_1DDA16350);
  if (v29(v30, 1, v13) == 1)
  {
    sub_1DD90D378(v30, &qword_1ECD82830, &unk_1DDA16350);
    return 0;
  }

  v36 = v39;
  sub_1DD90AD50(v30, v39);
  v37 = *v36;
  v38 = v36[1];
  sub_1DD90CE50(v36, type metadata accessor for RateLimitBudgets.Limits);
  return v37 >= v38;
}

uint64_t RateLimitBudgets.Limits.isReached.setter(char a1)
{
  result = type metadata accessor for RateLimitBudgets.Limits(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t RateLimitBudgets.Limits.isRestricted.setter(char a1)
{
  result = type metadata accessor for RateLimitBudgets.Limits(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t RateLimitBudgets.Limits.hash(into:)(uint64_t a1)
{
  v2 = sub_1DDA13680();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  MEMORY[0x1E12B8440](*v1);
  MEMORY[0x1E12B8440](v1[1]);
  v9 = type metadata accessor for RateLimitBudgets.Limits(0);
  sub_1DD90ADB4(v1 + *(v9 + 24), v8, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1DDA15590();
    sub_1DD909D7C(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1DDA14AD0();
    (*(v3 + 8))(v5, v2);
  }

  sub_1DDA15590();
  return sub_1DDA15590();
}

uint64_t RateLimitBudgets.hash(into:)(uint64_t a1)
{
  v2 = sub_1DDA13680();
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v74 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v65 = &v62 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v63 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v62 - v11;
  v12 = type metadata accessor for RateLimitBudgets.Limits(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v67 = (&v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v71 = (&v62 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v64 = (&v62 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v62 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82830, &unk_1DDA16350);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v72 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v70 = &v62 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v62 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v62 - v30;
  sub_1DDA15590();
  v75 = type metadata accessor for RateLimitBudgets(0);
  v32 = v75[5];
  v73 = v1;
  sub_1DD90ADB4(v1 + v32, v31, &qword_1ECD82830, &unk_1DDA16350);
  v33 = *(v13 + 48);
  if (v33(v31, 1, v12) == 1)
  {
    sub_1DDA15590();
    v35 = v68;
    v34 = v69;
  }

  else
  {
    sub_1DD90AD50(v31, v21);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](*v21);
    MEMORY[0x1E12B8440](v21[1]);
    v36 = v62;
    sub_1DD90ADB4(v21 + *(v12 + 24), v62, &qword_1ECD82838, &unk_1DDA185F0);
    v35 = v68;
    v34 = v69;
    if ((*(v68 + 48))(v36, 1, v69) == 1)
    {
      sub_1DDA15590();
    }

    else
    {
      v37 = *(v35 + 32);
      v38 = v33;
      v39 = v35;
      v40 = v74;
      v37(v74, v36, v34);
      sub_1DDA15590();
      sub_1DD909D7C(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1DDA14AD0();
      v41 = *(v39 + 8);
      v42 = v40;
      v35 = v39;
      v33 = v38;
      v41(v42, v34);
    }

    sub_1DDA15590();
    sub_1DDA15590();
    sub_1DD90CE50(v21, type metadata accessor for RateLimitBudgets.Limits);
  }

  v43 = v73;
  sub_1DD90ADB4(v73 + v75[6], v29, &qword_1ECD82830, &unk_1DDA16350);
  if (v33(v29, 1, v12) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v44 = v29;
    v45 = v64;
    sub_1DD90AD50(v44, v64);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](*v45);
    MEMORY[0x1E12B8440](v45[1]);
    v46 = v63;
    sub_1DD90ADB4(v45 + *(v12 + 24), v63, &qword_1ECD82838, &unk_1DDA185F0);
    if ((*(v35 + 48))(v46, 1, v34) == 1)
    {
      sub_1DDA15590();
    }

    else
    {
      v47 = v33;
      v48 = v74;
      (*(v35 + 32))(v74, v46, v34);
      sub_1DDA15590();
      sub_1DD909D7C(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1DDA14AD0();
      v49 = v48;
      v33 = v47;
      (*(v35 + 8))(v49, v34);
    }

    sub_1DDA15590();
    sub_1DDA15590();
    sub_1DD90CE50(v45, type metadata accessor for RateLimitBudgets.Limits);
  }

  v50 = v70;
  sub_1DD90ADB4(v43 + v75[7], v70, &qword_1ECD82830, &unk_1DDA16350);
  if (v33(v50, 1, v12) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v51 = v33;
    v52 = v71;
    sub_1DD90AD50(v50, v71);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](*v52);
    MEMORY[0x1E12B8440](v52[1]);
    v53 = v65;
    sub_1DD90ADB4(v52 + *(v12 + 24), v65, &qword_1ECD82838, &unk_1DDA185F0);
    if ((*(v35 + 48))(v53, 1, v34) == 1)
    {
      sub_1DDA15590();
    }

    else
    {
      v54 = v74;
      (*(v35 + 32))(v74, v53, v34);
      sub_1DDA15590();
      sub_1DD909D7C(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1DDA14AD0();
      (*(v35 + 8))(v54, v34);
    }

    v55 = v71;
    sub_1DDA15590();
    sub_1DDA15590();
    sub_1DD90CE50(v55, type metadata accessor for RateLimitBudgets.Limits);
    v33 = v51;
  }

  v56 = v72;
  sub_1DD90ADB4(v43 + v75[8], v72, &qword_1ECD82830, &unk_1DDA16350);
  if (v33(v56, 1, v12) == 1)
  {
    return sub_1DDA15590();
  }

  v58 = v34;
  v59 = v67;
  sub_1DD90AD50(v56, v67);
  sub_1DDA15590();
  MEMORY[0x1E12B8440](*v59);
  MEMORY[0x1E12B8440](v59[1]);
  v60 = v66;
  sub_1DD90ADB4(v59 + *(v12 + 24), v66, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v35 + 48))(v60, 1, v58) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v61 = v74;
    (*(v35 + 32))(v74, v60, v58);
    sub_1DDA15590();
    sub_1DD909D7C(&qword_1ECD82828, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1DDA14AD0();
    (*(v35 + 8))(v61, v58);
  }

  sub_1DDA15590();
  sub_1DDA15590();
  return sub_1DD90CE50(v59, type metadata accessor for RateLimitBudgets.Limits);
}

uint64_t sub_1DD903AA4(uint64_t (*a1)(void *))
{
  sub_1DDA15570();
  a1(v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD903B04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1DDA15570();
  a3(v5);
  return sub_1DDA155B0();
}

uint64_t sub_1DD903B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1DDA15570();
  a4(v6);
  return sub_1DDA155B0();
}

uint64_t BillingPlan.planName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t BillingPlan.workspaceID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t BillingPlan.hash(into:)(uint64_t a1)
{
  MEMORY[0x1E12B8440](*v1);
  sub_1DDA14BC0();

  return sub_1DDA14BC0();
}

uint64_t BillingPlan.hashValue.getter()
{
  v1 = *v0;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD903D54()
{
  v1 = *v0;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD903DD4(uint64_t a1)
{
  MEMORY[0x1E12B8440](*v1);
  sub_1DDA14BC0();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD903E44(uint64_t a1)
{
  v2 = *v1;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v2);
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD903EC0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v7 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return sub_1DDA15440();
}

uint64_t UserInfo.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserInfo.email.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UserInfo.AccountStatus.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DDA151E0();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DD904060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *(a1 + 16);
  v4 = v10;
  if (*(a1 + 40))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  sub_1DD90D2EC(&v10, &v9);

  result = sub_1DD90D348(a1);
  v8 = *(a1 + 48);
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8 & 1;
  return result;
}

uint64_t UserInfo.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  if (v2 == 1)
  {
    return sub_1DDA15590();
  }

  sub_1DDA15590();

  return sub_1DDA14BC0();
}

uint64_t UserInfo.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA15590();
  if (v1 != 1)
  {
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD90425C()
{
  v1 = *(v0 + 32);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA15590();
  if (v1 != 1)
  {
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD904314(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  if (v2 == 1)
  {
    return sub_1DDA15590();
  }

  sub_1DDA15590();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9043B8(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA15590();
  if (v2 != 1)
  {
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD904470(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82B78, &qword_1DDA17A90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90FD9C();
  sub_1DDA15650();
  v8[15] = 0;
  sub_1DDA15340();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1DDA15340();
  v8[13] = 2;
  sub_1DDA15340();
  v8[12] = 3;
  sub_1DDA15340();
  v8[11] = 4;
  sub_1DDA15300();
  v8[10] = 5;
  sub_1DDA15340();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DD904684(uint64_t a1)
{
  sub_1DDA14BC0();
}

unint64_t sub_1DD90479C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD90E1F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD9047CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006570;
  v4 = 0x79745F746E617267;
  v5 = 0xE900000000000064;
  v6 = 0x695F746E65696C63;
  v7 = 0xED00007465726365;
  v8 = 0x735F746E65696C63;
  if (v2 != 4)
  {
    v8 = 0x7463657269646572;
    v7 = 0xEC0000006972755FLL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1701080931;
  if (v2 != 1)
  {
    v10 = 0x7265765F65646F63;
    v9 = 0xED00007265696669;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1DD9048AC()
{
  v1 = *v0;
  v2 = 0x79745F746E617267;
  v3 = 0x695F746E65696C63;
  v4 = 0x735F746E65696C63;
  if (v1 != 4)
  {
    v4 = 0x7463657269646572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701080931;
  if (v1 != 1)
  {
    v5 = 0x7265765F65646F63;
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

unint64_t sub_1DD904988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD90E1F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9049B0(uint64_t a1)
{
  v2 = sub_1DD90FD9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9049EC(uint64_t a1)
{
  v2 = sub_1DD90FD9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD904A28@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DD90E23C(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_1DD904A8C()
{
  v1 = *(v0 + 72);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA15590();
  if (v1)
  {
    sub_1DDA14BC0();
  }

  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD904B7C(uint64_t a1)
{
  v2 = *(v1 + 72);
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA15590();
  if (v2)
  {
    sub_1DDA14BC0();
  }

  return sub_1DDA14BC0();
}

uint64_t sub_1DD904C60(uint64_t a1)
{
  v2 = *(v1 + 72);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA15590();
  if (v2)
  {
    sub_1DDA14BC0();
  }

  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD904D4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_1DD90B254(v9, v10) & 1;
}

uint64_t sub_1DD904DA8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82B58, &qword_1DDA17A80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90FC8C();
  sub_1DDA15650();
  v8[15] = 0;
  sub_1DDA15340();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1DDA15340();
  v8[13] = 2;
  sub_1DDA15300();
  v8[12] = 3;
  sub_1DDA15340();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DD904F74()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD905058(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD905128(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD905208@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD90E6D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD905238(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006570;
  v3 = 0x79745F746E617267;
  v4 = 0xED00007465726365;
  v5 = 0x735F746E65696C63;
  if (*v1 != 2)
  {
    v5 = 0x5F68736572666572;
    v4 = 0xED00006E656B6F74;
  }

  if (*v1)
  {
    v3 = 0x695F746E65696C63;
    v2 = 0xE900000000000064;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9052D8()
{
  v1 = 0x79745F746E617267;
  v2 = 0x735F746E65696C63;
  if (*v0 != 2)
  {
    v2 = 0x5F68736572666572;
  }

  if (*v0)
  {
    v1 = 0x695F746E65696C63;
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

unint64_t sub_1DD905374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD90E6D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD90539C(uint64_t a1)
{
  v2 = sub_1DD90FC8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9053D8(uint64_t a1)
{
  v2 = sub_1DD90FC8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD905414@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DD90E71C(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_1DD905470()
{
  v1 = *(v0 + 40);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA15590();
  if (v1)
  {
    sub_1DDA14BC0();
  }

  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD905534(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA15590();
  if (v2)
  {
    sub_1DDA14BC0();
  }

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9055DC(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA15590();
  if (v2)
  {
    sub_1DDA14BC0();
  }

  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD90569C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DDA15440() & 1) == 0 || (v2 != v7 || v4 != v6) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v3 == v9 && v5 == v8 || (sub_1DDA15440() & 1) != 0))
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_12:
  if (v13 == v10 && v14 == v11)
  {
    return 1;
  }

  return sub_1DDA15440();
}

uint64_t sub_1DD9057EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82B90, &qword_1DDA17AA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90FCE0();
  sub_1DDA15650();
  v8[15] = 0;
  sub_1DDA15340();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1DDA15340();
  v8[13] = 2;
  sub_1DDA15340();
  v8[12] = 3;
  sub_1DDA15340();
  v8[11] = 4;
  sub_1DDA15360();
  v8[10] = 5;
  sub_1DDA15340();
  v8[9] = 6;
  sub_1DDA15300();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DD905A0C(uint64_t a1)
{
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  v2 = *(v1 + 64);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1E12B8460](*&v2);
  sub_1DDA14BC0();
  if (!*(v1 + 96))
  {
    return sub_1DDA15590();
  }

  sub_1DDA15590();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD905AE8(uint64_t a1)
{
  sub_1DDA14BC0();
}

unint64_t sub_1DD905C20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD90EA0C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD905C50(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006E656B6FLL;
  v4 = 0x745F737365636361;
  v5 = 0x79745F6E656B6F74;
  v6 = 0xED00007465726365;
  if (v2 == 5)
  {
    v6 = 0xEA00000000006570;
  }

  else
  {
    v5 = 0x735F656369766564;
  }

  v7 = 0x65706F6373;
  v8 = 0xEA00000000006E69;
  if (v2 == 3)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v7 = 0x5F73657269707865;
  }

  if (*v1 > 4u)
  {
    v8 = v6;
  }

  else
  {
    v5 = v7;
  }

  v9 = 0xED00006E656B6F74;
  v10 = 0x5F68736572666572;
  if (v2 != 1)
  {
    v10 = 0x6E656B6F745F6469;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v8;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1DD905D50()
{
  v1 = *v0;
  v2 = 0x745F737365636361;
  v3 = 0x79745F6E656B6F74;
  if (v1 != 5)
  {
    v3 = 0x735F656369766564;
  }

  v4 = 0x65706F6373;
  if (v1 != 3)
  {
    v4 = 0x5F73657269707865;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x5F68736572666572;
  if (v1 != 1)
  {
    v5 = 0x6E656B6F745F6469;
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

unint64_t sub_1DD905E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD90EA0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD905E74(uint64_t a1)
{
  v2 = sub_1DD90FCE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD905EB0(uint64_t a1)
{
  v2 = sub_1DD90FCE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1DD905EEC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DD90EA58(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_1DD905F64()
{
  sub_1DDA15570();
  sub_1DD905A0C(v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD905FA8(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DD905A0C(v2);
  return sub_1DDA155B0();
}

uint64_t sub_1DD905FE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_1DD90B044(v11, v13) & 1;
}

uint64_t sub_1DD906050(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82B38, &qword_1DDA17A70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90FBE4();
  sub_1DDA15650();
  v8[15] = 0;
  sub_1DDA15340();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1DDA15340();
  v8[13] = 2;
  sub_1DDA15300();
  v8[12] = 3;
  sub_1DDA15300();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DD906210()
{
  sub_1DDA15570();
  v1 = *(v0 + 40);
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  if (!v1)
  {
    sub_1DDA15590();
    if (*(v0 + 56))
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1DDA15590();
    return sub_1DDA155B0();
  }

  sub_1DDA15590();
  sub_1DDA14BC0();
  if (!*(v0 + 56))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1DDA15590();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9062EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82BA0, &qword_1DDA17AB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90FC38();
  sub_1DDA15650();
  v8[15] = 0;
  sub_1DDA15340();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1DDA15340();
  v8[13] = 2;
  sub_1DDA15340();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DD906498()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD906574(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD90663C(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD906714@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD90EF50(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD906744(uint64_t *a1@<X8>)
{
  v2 = 0xEF746E69685F6570;
  v3 = 0x79745F6E656B6F74;
  v4 = 0xE900000000000064;
  v5 = 0x695F746E65696C63;
  if (*v1 != 2)
  {
    v5 = 0x735F746E65696C63;
    v4 = 0xED00007465726365;
  }

  if (*v1)
  {
    v3 = 0x6E656B6F74;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9067DC()
{
  v1 = 0x79745F6E656B6F74;
  v2 = 0x695F746E65696C63;
  if (*v0 != 2)
  {
    v2 = 0x735F746E65696C63;
  }

  if (*v0)
  {
    v1 = 0x6E656B6F74;
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

unint64_t sub_1DD906870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD90EF50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD906898(uint64_t a1)
{
  v2 = sub_1DD90FBE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9068D4(uint64_t a1)
{
  v2 = sub_1DD90FBE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD906910@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DD90EF9C(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_1DD906970(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 56);
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  if (!v2)
  {
    sub_1DDA15590();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_1DDA15590();
  }

  sub_1DDA15590();
  sub_1DDA14BC0();
  if (!v3)
  {
    return sub_1DDA15590();
  }

LABEL_3:
  sub_1DDA15590();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD906A4C(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 56);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  if (!v2)
  {
    sub_1DDA15590();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1DDA15590();
    return sub_1DDA155B0();
  }

  sub_1DDA15590();
  sub_1DDA14BC0();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1DDA15590();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD906B2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1DD90B16C(v7, v8) & 1;
}

uint64_t sub_1DD906B78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6E656B6F74;
  if (v2 != 1)
  {
    v4 = 0x6567617373656DLL;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x79745F6E656B6F74;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEF746E69685F6570;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6E656B6F74;
  if (*a2 != 1)
  {
    v8 = 0x6567617373656DLL;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x79745F6E656B6F74;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEF746E69685F6570;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD906C7C()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD906D28(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD906DC0(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD906E68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD90F290(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD906E98(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF746E69685F6570;
  v4 = 0xE500000000000000;
  v5 = 0x6E656B6F74;
  if (v2 != 1)
  {
    v5 = 0x6567617373656DLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x79745F6E656B6F74;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD906F00()
{
  v1 = 0x6E656B6F74;
  if (*v0 != 1)
  {
    v1 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79745F6E656B6F74;
  }
}

unint64_t sub_1DD906F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD90F290(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD906F8C(uint64_t a1)
{
  v2 = sub_1DD90FC38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD906FC8(uint64_t a1)
{
  v2 = sub_1DD90FC38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD907004@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DD90F2DC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1DD907060()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9070E4(uint64_t a1)
{
  sub_1DDA14BC0();
  sub_1DDA14BC0();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD907150(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9071D0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DDA15440() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1DDA15440();
}

uint64_t sub_1DD9072C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82BB8, &qword_1DDA17AC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90F870();
  sub_1DDA15650();
  v10[15] = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v10[14] = 1;
    sub_1DDA15340();
    v10[13] = 2;
    sub_1DDA15300();
    v10[12] = *(v3 + 48);
    v10[11] = 3;
    sub_1DD90FF28();
    sub_1DDA15330();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DD9074C8()
{
  sub_1DDA15570();
  v1 = *(v0 + 40);
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  if (!v1)
  {
    sub_1DDA15590();
    if (*(v0 + 48))
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1DDA15590();
    sub_1DDA14BC0();
    return sub_1DDA155B0();
  }

  sub_1DDA15590();
  sub_1DDA14BC0();
  if ((*(v0 + 48) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1DDA15590();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9075B0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82BB0, &qword_1DDA17AC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90FB90();
  sub_1DDA15650();
  v10[15] = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v10[14] = *(v3 + 16);
    v10[13] = 1;
    sub_1DD90CDA8();
    sub_1DDA15380();
    v10[12] = 2;
    sub_1DDA15340();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DD907754()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9077AC(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD90780C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DDA151E0();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DD907918()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9079D0(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD907A74(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD907B28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD90F528(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD907B58(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE500000000000000;
  v5 = 0x6C69616D65;
  if (*v1 != 2)
  {
    v5 = 0x5F746E756F636361;
    v4 = 0xEE00737574617473;
  }

  if (*v1)
  {
    v3 = 1701667182;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD907BCC()
{
  v1 = 25705;
  v2 = 0x6C69616D65;
  if (*v0 != 2)
  {
    v2 = 0x5F746E756F636361;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

unint64_t sub_1DD907C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD90F528(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD907C64(uint64_t a1)
{
  v2 = sub_1DD90F870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD907CA0(uint64_t a1)
{
  v2 = sub_1DD90F870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD907CDC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DD90F574(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1DD907D48(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  if (v2)
  {
    sub_1DDA15590();
    sub_1DDA14BC0();
    if (v3)
    {
      return sub_1DDA15590();
    }
  }

  else
  {
    sub_1DDA15590();
    if (v3)
    {
      return sub_1DDA15590();
    }
  }

  sub_1DDA15590();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD907E34(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  if (!v2)
  {
    sub_1DDA15590();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1DDA15590();
    sub_1DDA14BC0();
    return sub_1DDA155B0();
  }

  sub_1DDA15590();
  sub_1DDA14BC0();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1DDA15590();
  return sub_1DDA155B0();
}

uint64_t sub_1DD907F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1DD90AE84(v5, v7) & 1;
}

uint64_t sub_1DD907F78(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000011;
  v3 = *a1;
  v4 = 0x80000001DDA26270;
  if (v3 == 1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001DDA26270;
  }

  else
  {
    v6 = 0x80000001DDA26290;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v4 = 0x80000001DDA26290;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD908050()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9080F4(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD908184(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD908224@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD90F918(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD908254(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0x80000001DDA26270;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x80000001DDA26290;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1DD9082B4()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_1DD908310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD90F918(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD908338(uint64_t a1)
{
  v2 = sub_1DD90FB90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD908374(uint64_t a1)
{
  v2 = sub_1DD90FB90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9083B0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DD90F964(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1DD908410()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();

  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9084B0(uint64_t a1)
{
  sub_1DDA14BC0();
  sub_1DDA14BC0();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD908530(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();

  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9085CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1DD90AF48(v5, v7) & 1;
}

void *sub_1DD908618@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

char *sub_1DD908634(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A68, &qword_1DDA16E78);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1DD908740(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829C0, &unk_1DDA16DE0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829C8, &qword_1DDA1E380);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DD90889C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A08, &qword_1DDA16E28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DD9089B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829F0, &qword_1DDA16E10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DD908ADC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829E8, &qword_1DDA16E08);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DD908BE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A10, &qword_1DDA16E30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DD908D30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829F8, &qword_1DDA16E18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DD908E54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A00, &qword_1DDA16E20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DD908F70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A40, &qword_1DDA16E58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DD909064(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829E0, &qword_1DDA16E00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_1DD909160(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829D0, &qword_1DDA16DF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829D8, &qword_1DDA16DF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DD9092F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t *sub_1DD9094D4@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1DD90CF70(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1DDA13370();
      swift_allocObject();
      v8 = sub_1DDA13310();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1DDA13530();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_1DD90959C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1DD909D28(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1DD909D28(v7, v6);
    *v4 = xmmword_1DDA16330;
    sub_1DD909D28(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1DDA13320() && __OFSUB__(v7, sub_1DDA13350()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1DDA13370();
      swift_allocObject();
      v14 = sub_1DDA13300();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1DD909A40(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1DD909D28(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1DDA16330;
    sub_1DD909D28(0, 0xC000000000000000);
    sub_1DDA134F0();
    result = sub_1DD909A40(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_1DD909940@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1DD90CF70(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1DD90D0C8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1DD90D144(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1DD9099D4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1DD909A40(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1DDA13320();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1DDA13350();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1DDA13340();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1DD909AF4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1DDA148A0();
      sub_1DD909D7C(&qword_1ECD82800, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1DDA14860();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1DD909E54(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1DD909E54(v5, v6);
  }

  sub_1DDA148A0();
  sub_1DD909D7C(&qword_1ECD82800, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return sub_1DDA14860();
}

uint64_t sub_1DD909CD4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1DD909D28(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1DD909D7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD909E54(uint64_t a1, uint64_t a2)
{
  result = sub_1DDA13320();
  if (!result || (result = sub_1DDA13350(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1DDA13340();
      sub_1DDA148A0();
      sub_1DD909D7C(&qword_1ECD82800, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1DDA14860();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD909F34(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1DDA14C40();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E12B7AE0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1DD909FB0@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1DDA15080();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
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

BOOL sub_1DD90A000(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1DDA15440() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for UserCredentials(0);
  if ((sub_1DDA13650() & 1) == 0)
  {
    return 0;
  }

  v7 = v6[9];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 8);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = v6[10];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (!v16 || (*v13 != *v15 || v14 != v16) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = v6[11];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v20[1];
  if (v19)
  {
    return v21 && (*v18 == *v20 && v19 == v21 || (sub_1DDA15440() & 1) != 0);
  }

  return !v21;
}

uint64_t sub_1DD90A1A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E72657375 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DDA15440() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (sub_1DDA15440() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F54737365636361 && a2 == 0xEB000000006E656BLL || (sub_1DDA15440() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5468736572666572 && a2 == 0xEC0000006E656B6FLL || (sub_1DDA15440() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL || (sub_1DDA15440() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107700 && a2 == 0xE300000000000000 || (sub_1DDA15440() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6553656369766564 && a2 == 0xEC00000074657263 || (sub_1DDA15440() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E656B6F546469 && a2 == 0xE700000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1DDA15440();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1DD90A448(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = 1684627824;
  }

  else
  {
    v4 = 1701147238;
  }

  if (*a2)
  {
    v5 = 1684627824;
  }

  else
  {
    v5 = 1701147238;
  }

  if (v4 == v5)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v6 = sub_1DDA15440();
    swift_bridgeObjectRelease_n();
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  return sub_1DDA15440();
}

uint64_t sub_1DD90A544(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DDA15440() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6E616C70 && a2 == 0xE800000000000000 || (sub_1DDA15440() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636170736B726F77 && a2 == 0xEB00000000444965)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DDA15440();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DD90A660@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82958, &qword_1DDA16DB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90CCB4();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  sub_1DD90CD54();
  sub_1DDA152C0();
  v9 = v23;
  v21 = 1;
  v10 = sub_1DDA15280();
  v12 = v11;
  v19 = v10;
  v20 = 2;
  v13 = sub_1DDA15280();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  *(a2 + 8) = v19;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16;
  return result;
}

BOOL sub_1DD90A88C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for UserTokens(0);
  if ((sub_1DDA13650() & 1) == 0)
  {
    return 0;
  }

  v7 = v6[7];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 8);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = v6[8];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = *v13 == *v15 && v14 == v16;
    if (!v17 && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v18 = v6[9];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    return v22 && (*v19 == *v21 && v20 == v22 || (sub_1DDA15440() & 1) != 0);
  }

  return !v22;
}

uint64_t sub_1DD90A9E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F54737365636361 && a2 == 0xEB000000006E656BLL;
  if (v4 || (sub_1DDA15440() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5468736572666572 && a2 == 0xEC0000006E656B6FLL || (sub_1DDA15440() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL || (sub_1DDA15440() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107700 && a2 == 0xE300000000000000 || (sub_1DDA15440() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6553656369766564 && a2 == 0xEC00000074657263 || (sub_1DDA15440() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656B6F546469 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DDA15440();

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

uint64_t _s5Anvil11CredentialsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v7 = a1[7];
  v8 = a1[8];
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  if ((a1[5] != *(a2 + 40) || a1[6] != *(a2 + 48)) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if ((v7 != v9 || v8 != v10) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Credentials(0);

  return sub_1DDA13650();
}

uint64_t sub_1DD90AD50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RateLimitBudgets.Limits(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD90ADB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DD90AE1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DD90AE84(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7 || (a1[4] != *(a2 + 32) || v6 != v7) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (a1[6])
  {
    if (*(a2 + 48))
    {
      return 1;
    }
  }

  else if ((*(a2 + 48) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DD90AF48(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    v5 = 1684627824;
  }

  else
  {
    v5 = 1701147238;
  }

  if (*(a2 + 16))
  {
    v6 = 1684627824;
  }

  else
  {
    v6 = 1701147238;
  }

  if (v5 != v6)
  {
    v7 = sub_1DDA15440();
    swift_bridgeObjectRelease_n();
    if (v7)
    {
      goto LABEL_15;
    }

    return 0;
  }

  swift_bridgeObjectRelease_n();
LABEL_15:
  if (a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32))
  {
    return 1;
  }

  return sub_1DDA15440();
}

uint64_t sub_1DD90B044(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v4 || (sub_1DDA15440() & 1) != 0)
  {
    v5 = *(a1 + 2) == *(a2 + 16) && *(a1 + 3) == *(a2 + 24);
    if (v5 || (sub_1DDA15440()) && (*(a1 + 4) == *(a2 + 32) && *(a1 + 5) == *(a2 + 40) || (sub_1DDA15440()) && (*(a1 + 6) == *(a2 + 48) && *(a1 + 7) == *(a2 + 56) || (sub_1DDA15440()) && a1[8] == *(a2 + 64) && (*(a1 + 9) == *(a2 + 72) && *(a1 + 10) == *(a2 + 80) || (sub_1DDA15440()))
    {
      v6 = *(a1 + 12);
      v7 = *(a2 + 96);
      if (v6)
      {
        if (v7 && (*(a1 + 11) == *(a2 + 88) && v6 == v7 || (sub_1DDA15440() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DD90B16C(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || (a1[4] != a2[4] || v6 != v7) && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[7];
  v9 = a2[7];
  if (v8)
  {
    if (v9 && (a1[6] == a2[6] && v8 == v9 || (sub_1DDA15440() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DD90B254(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1DDA15440() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[9];
  v7 = a2[9];
  if (v6)
  {
    if (v7 && (a1[8] == a2[8] && v6 == v7 || (sub_1DDA15440() & 1) != 0))
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_22:
  if (a1[10] == a2[10] && a1[11] == a2[11])
  {
    return 1;
  }

  return sub_1DDA15440();
}

uint64_t _s5Anvil8UserInfoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_1DDA15440()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1DDA15440()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

BOOL _s5Anvil16RateLimitBudgetsV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for RateLimitBudgets.Limits(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82830, &unk_1DDA16350);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v69 = (&v61 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v70 = (&v61 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v61 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A50, &qword_1DDA16E68);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v61 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v27 = &v61 - v26;
  if (*a1 != *a2)
  {
    return 0;
  }

  v62 = v24;
  v63 = v25;
  v61 = v11;
  v65 = v7;
  v28 = v4;
  v29 = v5;
  v67 = type metadata accessor for RateLimitBudgets(0);
  v68 = v18;
  v30 = v67[5];
  v31 = *(v18 + 48);
  v64 = a1;
  sub_1DD90ADB4(&a1[v30], v27, &qword_1ECD82830, &unk_1DDA16350);
  v66 = a2;
  v32 = &a2[v30];
  v33 = v29;
  v34 = v28;
  sub_1DD90ADB4(v32, &v27[v31], &qword_1ECD82830, &unk_1DDA16350);
  v37 = *(v33 + 48);
  v36 = v33 + 48;
  v35 = v37;
  if (v37(v27, 1, v28) == 1)
  {
    if (v35(&v27[v31], 1, v28) == 1)
    {
      sub_1DD90D378(v27, &qword_1ECD82830, &unk_1DDA16350);
      v38 = v65;
      goto LABEL_9;
    }

LABEL_7:
    v39 = v27;
LABEL_29:
    sub_1DD90D378(v39, &qword_1ECD82A50, &qword_1DDA16E68);
    return 0;
  }

  sub_1DD90ADB4(v27, v17, &qword_1ECD82830, &unk_1DDA16350);
  if (v35(&v27[v31], 1, v28) == 1)
  {
    sub_1DD90CE50(v17, type metadata accessor for RateLimitBudgets.Limits);
    goto LABEL_7;
  }

  v40 = &v27[v31];
  v38 = v65;
  sub_1DD90AD50(v40, v65);
  v41 = _s5Anvil16RateLimitBudgetsV6LimitsV2eeoiySbAE_AEtFZ_0(v17, v38);
  sub_1DD90CE50(v38, type metadata accessor for RateLimitBudgets.Limits);
  sub_1DD90CE50(v17, type metadata accessor for RateLimitBudgets.Limits);
  sub_1DD90D378(v27, &qword_1ECD82830, &unk_1DDA16350);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v65 = v36;
  v42 = v67[6];
  v43 = *(v68 + 48);
  v44 = v64;
  sub_1DD90ADB4(&v64[v42], v23, &qword_1ECD82830, &unk_1DDA16350);
  sub_1DD90ADB4(&v66[v42], &v23[v43], &qword_1ECD82830, &unk_1DDA16350);
  if (v35(v23, 1, v34) == 1)
  {
    if (v35(&v23[v43], 1, v34) == 1)
    {
      sub_1DD90D378(v23, &qword_1ECD82830, &unk_1DDA16350);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v45 = v70;
  sub_1DD90ADB4(v23, v70, &qword_1ECD82830, &unk_1DDA16350);
  if (v35(&v23[v43], 1, v34) == 1)
  {
    sub_1DD90CE50(v45, type metadata accessor for RateLimitBudgets.Limits);
LABEL_14:
    v39 = v23;
    goto LABEL_29;
  }

  sub_1DD90AD50(&v23[v43], v38);
  v46 = v45;
  v47 = _s5Anvil16RateLimitBudgetsV6LimitsV2eeoiySbAE_AEtFZ_0(v45, v38);
  sub_1DD90CE50(v38, type metadata accessor for RateLimitBudgets.Limits);
  sub_1DD90CE50(v46, type metadata accessor for RateLimitBudgets.Limits);
  sub_1DD90D378(v23, &qword_1ECD82830, &unk_1DDA16350);
  if ((v47 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v48 = v67[7];
  v49 = *(v68 + 48);
  v50 = v63;
  sub_1DD90ADB4(&v44[v48], v63, &qword_1ECD82830, &unk_1DDA16350);
  v51 = v66;
  sub_1DD90ADB4(&v66[v48], v50 + v49, &qword_1ECD82830, &unk_1DDA16350);
  if (v35(v50, 1, v34) == 1)
  {
    if (v35((v50 + v49), 1, v34) != 1)
    {
LABEL_28:
      v39 = v50;
      goto LABEL_29;
    }

    sub_1DD90D378(v50, &qword_1ECD82830, &unk_1DDA16350);
LABEL_22:
    v56 = v67[8];
    v57 = *(v68 + 48);
    v50 = v62;
    sub_1DD90ADB4(&v44[v56], v62, &qword_1ECD82830, &unk_1DDA16350);
    sub_1DD90ADB4(&v51[v56], v50 + v57, &qword_1ECD82830, &unk_1DDA16350);
    if (v35(v50, 1, v34) == 1)
    {
      if (v35((v50 + v57), 1, v34) == 1)
      {
        sub_1DD90D378(v50, &qword_1ECD82830, &unk_1DDA16350);
        return 1;
      }

      goto LABEL_28;
    }

    v58 = v61;
    sub_1DD90ADB4(v50, v61, &qword_1ECD82830, &unk_1DDA16350);
    if (v35((v50 + v57), 1, v34) == 1)
    {
      v53 = v58;
      goto LABEL_27;
    }

    sub_1DD90AD50(v50 + v57, v38);
    v60 = _s5Anvil16RateLimitBudgetsV6LimitsV2eeoiySbAE_AEtFZ_0(v58, v38);
    sub_1DD90CE50(v38, type metadata accessor for RateLimitBudgets.Limits);
    sub_1DD90CE50(v58, type metadata accessor for RateLimitBudgets.Limits);
    sub_1DD90D378(v50, &qword_1ECD82830, &unk_1DDA16350);
    return (v60 & 1) != 0;
  }

  v52 = v69;
  sub_1DD90ADB4(v50, v69, &qword_1ECD82830, &unk_1DDA16350);
  if (v35((v50 + v49), 1, v34) == 1)
  {
    v53 = v52;
LABEL_27:
    sub_1DD90CE50(v53, type metadata accessor for RateLimitBudgets.Limits);
    goto LABEL_28;
  }

  sub_1DD90AD50(v50 + v49, v38);
  v54 = v52;
  v55 = _s5Anvil16RateLimitBudgetsV6LimitsV2eeoiySbAE_AEtFZ_0(v52, v38);
  sub_1DD90CE50(v38, type metadata accessor for RateLimitBudgets.Limits);
  sub_1DD90CE50(v54, type metadata accessor for RateLimitBudgets.Limits);
  sub_1DD90D378(v50, &qword_1ECD82830, &unk_1DDA16350);
  if (v55)
  {
    goto LABEL_22;
  }

  return 0;
}

uint64_t _s5Anvil16RateLimitBudgetsV6LimitsV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1DDA13680();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A58, &qword_1DDA16E70);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  if (*a1 != *a2)
  {
    goto LABEL_10;
  }

  v15 = v12;
  v26 = type metadata accessor for RateLimitBudgets.Limits(0);
  v16 = v26[6];
  v17 = *(v15 + 48);
  sub_1DD90ADB4(a1 + v16, v14, &qword_1ECD82838, &unk_1DDA185F0);
  v18 = a2 + v16;
  v19 = v5;
  v27 = v17;
  sub_1DD90ADB4(v18, &v14[v17], &qword_1ECD82838, &unk_1DDA185F0);
  v20 = *(v5 + 48);
  if (v20(v14, 1, v4) != 1)
  {
    sub_1DD90ADB4(v14, v10, &qword_1ECD82838, &unk_1DDA185F0);
    v21 = v27;
    if (v20(&v14[v27], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v21], v4);
      sub_1DD909D7C(&qword_1ECD82A60, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v22 = sub_1DDA14AF0();
      v23 = *(v19 + 8);
      v23(v7, v4);
      v23(v10, v4);
      sub_1DD90D378(v14, &qword_1ECD82838, &unk_1DDA185F0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1DD90D378(v14, &qword_1ECD82A58, &qword_1DDA16E70);
    goto LABEL_10;
  }

  if (v20(&v14[v27], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_1DD90D378(v14, &qword_1ECD82838, &unk_1DDA185F0);
LABEL_9:
  if (*(a1 + v26[7]) == *(a2 + v26[7]))
  {
    v24 = *(a1 + v26[8]) ^ *(a2 + v26[8]) ^ 1;
    return v24 & 1;
  }

LABEL_10:
  v24 = 0;
  return v24 & 1;
}

unint64_t sub_1DD90C03C()
{
  result = qword_1ECD82840;
  if (!qword_1ECD82840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82840);
  }

  return result;
}

unint64_t sub_1DD90C094()
{
  result = qword_1ECD82848;
  if (!qword_1ECD82848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82848);
  }

  return result;
}

unint64_t sub_1DD90C0EC()
{
  result = qword_1ECD82850;
  if (!qword_1ECD82850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82850);
  }

  return result;
}

unint64_t sub_1DD90C144()
{
  result = qword_1ECD82858;
  if (!qword_1ECD82858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82858);
  }

  return result;
}

unint64_t sub_1DD90C274()
{
  result = qword_1ECD82878;
  if (!qword_1ECD82878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82878);
  }

  return result;
}

unint64_t sub_1DD90C2CC()
{
  result = qword_1ECD82880;
  if (!qword_1ECD82880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82880);
  }

  return result;
}

unint64_t sub_1DD90C324()
{
  result = qword_1ECD82888;
  if (!qword_1ECD82888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82888);
  }

  return result;
}

unint64_t sub_1DD90C37C()
{
  result = qword_1ECD82890;
  if (!qword_1ECD82890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82890);
  }

  return result;
}

uint64_t sub_1DD90C454(uint64_t a1)
{
  result = sub_1DDA13680();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DD90C508(uint64_t a1)
{
  sub_1DD90C674(319, &qword_1ECD828A8, type metadata accessor for RateLimitBudgets.Limits);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DD90C5CC(uint64_t a1)
{
  sub_1DD90C674(319, &qword_1EE16F8F0, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DD90C674(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DDA14F50();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
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

uint64_t sub_1DD90C710(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1DD90C758(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD90C7E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD90C82C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DD90C8CC(uint64_t a1)
{
  sub_1DDA13680();
  if (v1 <= 0x3F)
  {
    sub_1DD90C9C0(319, &qword_1EE16F3A0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1DD90C9C0(319, &unk_1EE16F3B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD90C9C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DD90CA58(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD90CA90(uint64_t a1)
{
  sub_1DDA13680();
  if (v1 <= 0x3F)
  {
    sub_1DD90C9C0(319, &qword_1EE16F3A0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1DD90C9C0(319, &unk_1EE16F3B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1DD90CC1C()
{
  result = qword_1ECD82950;
  if (!qword_1ECD82950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82950);
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

unint64_t sub_1DD90CCB4()
{
  result = qword_1ECD82960;
  if (!qword_1ECD82960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82960);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

unint64_t sub_1DD90CD54()
{
  result = qword_1ECD82968;
  if (!qword_1ECD82968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82968);
  }

  return result;
}

unint64_t sub_1DD90CDA8()
{
  result = qword_1ECD82978;
  if (!qword_1ECD82978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82978);
  }

  return result;
}

unint64_t sub_1DD90CDFC()
{
  result = qword_1ECD82988;
  if (!qword_1ECD82988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82988);
  }

  return result;
}

uint64_t sub_1DD90CE50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DD90CEB0()
{
  result = qword_1ECD829B0;
  if (!qword_1ECD829B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD829B0);
  }

  return result;
}

uint64_t sub_1DD90CF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD90CF70(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
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

uint64_t sub_1DD90D028(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1DDA13370();
      swift_allocObject();
      sub_1DDA13330();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1DDA13530();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1DD90D0C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1DDA13370();
  swift_allocObject();
  result = sub_1DDA13310();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DDA13530();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1DD90D144(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1DDA13370();
  swift_allocObject();
  result = sub_1DDA13310();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DD90D1C8(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A30, &qword_1DDA16E50);
  v10 = sub_1DD90D2A4(&qword_1ECD82A38, &qword_1ECD82A30, &qword_1DDA16E50, MEMORY[0x1E6969E08]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1DD909940(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_1DD90D2A4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1DD90D378(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1DD90D3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1DD9099D4(sub_1DD90D454, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1DD90D440(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DD909D28(result, a2);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1DD90D490(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1DD90D4D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1DD90D56C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1DD90D5B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1DD90D654(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DD90D69C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD90D6F8(uint64_t a1, int a2)
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

uint64_t sub_1DD90D740(uint64_t result, int a2, int a3)
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

uint64_t sub_1DD90D7A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DD90D7E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DD90D85C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1DD90D8A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserCredentials.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserCredentials.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExternalPartnerModel.Category(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExternalPartnerModel.Category(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD90DBC8()
{
  result = qword_1ECD82A80;
  if (!qword_1ECD82A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82A80);
  }

  return result;
}

unint64_t sub_1DD90DC20()
{
  result = qword_1ECD82A88;
  if (!qword_1ECD82A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82A88);
  }

  return result;
}

unint64_t sub_1DD90DC78()
{
  result = qword_1ECD82A90;
  if (!qword_1ECD82A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82A90);
  }

  return result;
}

unint64_t sub_1DD90DCD0()
{
  result = qword_1ECD82A98;
  if (!qword_1ECD82A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82A98);
  }

  return result;
}

unint64_t sub_1DD90DD28()
{
  result = qword_1ECD82AA0;
  if (!qword_1ECD82AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AA0);
  }

  return result;
}

unint64_t sub_1DD90DD80()
{
  result = qword_1ECD82AA8;
  if (!qword_1ECD82AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AA8);
  }

  return result;
}

unint64_t sub_1DD90DDD8()
{
  result = qword_1ECD82AB0;
  if (!qword_1ECD82AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AB0);
  }

  return result;
}

unint64_t sub_1DD90DE30()
{
  result = qword_1ECD82AB8;
  if (!qword_1ECD82AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AB8);
  }

  return result;
}

unint64_t sub_1DD90DE88()
{
  result = qword_1ECD82AC0;
  if (!qword_1ECD82AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AC0);
  }

  return result;
}

unint64_t sub_1DD90DEE0()
{
  result = qword_1ECD82AC8;
  if (!qword_1ECD82AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AC8);
  }

  return result;
}

unint64_t sub_1DD90DF38()
{
  result = qword_1ECD82AD0;
  if (!qword_1ECD82AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AD0);
  }

  return result;
}

unint64_t sub_1DD90DF90()
{
  result = qword_1ECD82AD8;
  if (!qword_1ECD82AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AD8);
  }

  return result;
}

unint64_t sub_1DD90DFE8()
{
  result = qword_1ECD82AE0;
  if (!qword_1ECD82AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AE0);
  }

  return result;
}

unint64_t sub_1DD90E040()
{
  result = qword_1ECD82AE8;
  if (!qword_1ECD82AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AE8);
  }

  return result;
}

unint64_t sub_1DD90E098()
{
  result = qword_1ECD82AF0;
  if (!qword_1ECD82AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AF0);
  }

  return result;
}

unint64_t sub_1DD90E0F0()
{
  result = qword_1ECD82AF8;
  if (!qword_1ECD82AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82AF8);
  }

  return result;
}

unint64_t sub_1DD90E148()
{
  result = qword_1ECD82B00;
  if (!qword_1ECD82B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B00);
  }

  return result;
}

unint64_t sub_1DD90E19C()
{
  result = qword_1ECD82B08;
  if (!qword_1ECD82B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B08);
  }

  return result;
}

unint64_t sub_1DD90E1F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD90E23C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82B88, &qword_1DDA17A98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - v7;
  v9 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DD90FD9C();
  sub_1DDA15620();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
    v10 = v6;
    LOBYTE(v49[0]) = 0;
    v11 = sub_1DDA15280();
    v13 = v12;
    LOBYTE(v49[0]) = 1;
    v14 = sub_1DDA15280();
    v41 = v15;
    LOBYTE(v49[0]) = 2;
    v16 = v10;
    *&v40 = sub_1DDA15280();
    v39 = v14;
    *(&v40 + 1) = v17;
    LOBYTE(v49[0]) = 3;
    v18 = sub_1DDA15280();
    v20 = v19;
    v38 = v18;
    LOBYTE(v49[0]) = 4;
    v21 = sub_1DDA15220();
    v23 = v22;
    v37 = v21;
    v50 = 5;
    v24 = sub_1DDA15280();
    v25 = *(v16 + 8);
    v36 = v24;
    v26 = v8;
    v28 = v27;
    v25(v26, v5);
    *&v43 = v11;
    *(&v43 + 1) = v13;
    v29 = v39;
    *&v44 = v39;
    *(&v44 + 1) = v41;
    v30 = *(&v40 + 1);
    v45 = v40;
    *&v46 = v38;
    *(&v46 + 1) = v20;
    *&v47 = v37;
    *(&v47 + 1) = v23;
    *&v48 = v36;
    *(&v48 + 1) = v28;
    sub_1DD90FDF0(&v43, v49);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v49[0] = v11;
    v49[1] = v13;
    v49[2] = v29;
    v49[3] = v41;
    v49[4] = v40;
    v49[5] = v30;
    v49[6] = v38;
    v49[7] = v20;
    v49[8] = v37;
    v49[9] = v23;
    v49[10] = v36;
    v49[11] = v28;
    result = sub_1DD90FE28(v49);
    v32 = v46;
    a2[2] = v45;
    a2[3] = v32;
    v33 = v48;
    a2[4] = v47;
    a2[5] = v33;
    v34 = v44;
    *a2 = v43;
    a2[1] = v34;
  }

  return result;
}

unint64_t sub_1DD90E6D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD90E71C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82B98, &qword_1DDA17AA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90FC8C();
  sub_1DDA15620();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v9 = sub_1DDA15280();
    v11 = v10;
    v32 = v9;
    LOBYTE(v37[0]) = 1;
    v12 = sub_1DDA15280();
    v14 = v13;
    v31 = v12;
    LOBYTE(v37[0]) = 2;
    v15 = sub_1DDA15220();
    v17 = v16;
    v30 = v15;
    v38 = 3;
    v18 = sub_1DDA15280();
    v19 = *(v6 + 8);
    v29 = v18;
    v20 = v8;
    v22 = v21;
    v19(v20, v5);
    v23 = v32;
    *&v33 = v32;
    *(&v33 + 1) = v11;
    *&v34 = v31;
    *(&v34 + 1) = v14;
    v24 = v30;
    *&v35 = v30;
    *(&v35 + 1) = v17;
    *&v36 = v29;
    *(&v36 + 1) = v22;
    sub_1DD90FE58(&v33, v37);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v37[0] = v23;
    v37[1] = v11;
    v37[2] = v31;
    v37[3] = v14;
    v37[4] = v24;
    v37[5] = v17;
    v37[6] = v29;
    v37[7] = v22;
    result = sub_1DD90FE90(v37);
    v26 = v34;
    *a2 = v33;
    a2[1] = v26;
    v27 = v36;
    a2[2] = v35;
    a2[3] = v27;
  }

  return result;
}

unint64_t sub_1DD90EA0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD90EA58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82B68, &qword_1DDA17A88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90FCE0();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v46[0]) = 0;
  v9 = sub_1DDA15280();
  v38 = v10;
  LOBYTE(v46[0]) = 1;
  *&v37 = sub_1DDA15280();
  *(&v37 + 1) = v11;
  LOBYTE(v46[0]) = 2;
  v35 = sub_1DDA15280();
  v13 = v12;
  LOBYTE(v46[0]) = 3;
  v14 = sub_1DDA15280();
  v36 = v15;
  v32 = v14;
  LOBYTE(v46[0]) = 4;
  v34 = 0;
  sub_1DDA152A0();
  v17 = v16;
  LOBYTE(v46[0]) = 5;
  v31 = sub_1DDA15280();
  v33 = v18;
  v57 = 6;
  v19 = sub_1DDA15220();
  v20 = *(v6 + 8);
  v21 = v19;
  v34 = v22;
  v20(v8, v5);
  *&v39 = v9;
  v23 = v38;
  *(&v39 + 1) = v38;
  v40 = v37;
  *&v41 = v35;
  *(&v41 + 1) = v13;
  v24 = v36;
  *&v42 = v32;
  *(&v42 + 1) = v36;
  *&v43 = v17;
  *(&v43 + 1) = v31;
  *&v44 = v33;
  v25 = v34;
  *(&v44 + 1) = v21;
  v45 = v34;
  sub_1DD90FD34(&v39, v46);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v46[0] = v9;
  v46[1] = v23;
  v47 = v37;
  v48 = v35;
  v49 = v13;
  v50 = v32;
  v51 = v24;
  v52 = v17;
  v53 = v31;
  v54 = v33;
  v55 = v21;
  v56 = v25;
  result = sub_1DD90FD6C(v46);
  v27 = v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v27;
  *(a2 + 96) = v45;
  v28 = v40;
  *a2 = v39;
  *(a2 + 16) = v28;
  v29 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v29;
  return result;
}

unint64_t sub_1DD90EF50(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD90EF9C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82BA8, &qword_1DDA17AB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90FBE4();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29[0]) = 0;
  v9 = sub_1DDA15280();
  v24 = v10;
  LOBYTE(v29[0]) = 1;
  *&v23 = sub_1DDA15280();
  *(&v23 + 1) = v11;
  LOBYTE(v29[0]) = 2;
  *&v22 = sub_1DDA15220();
  *(&v22 + 1) = v12;
  v35 = 3;
  v13 = sub_1DDA15220();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  v16 = v24;
  *&v25 = v9;
  *(&v25 + 1) = v24;
  v17 = *(&v22 + 1);
  v18 = v23;
  v26 = v23;
  v27 = v22;
  *&v28 = v13;
  *(&v28 + 1) = v15;
  sub_1DD90FEC0(&v25, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29[0] = v9;
  v29[1] = v16;
  v30 = __PAIR128__(*(&v23 + 1), v18);
  v31 = v22;
  v32 = v17;
  v33 = v13;
  v34 = v15;
  result = sub_1DD90FEF8(v29);
  v20 = v26;
  *a2 = v25;
  a2[1] = v20;
  v21 = v28;
  a2[2] = v27;
  a2[3] = v21;
  return result;
}

unint64_t sub_1DD90F290(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD90F2DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82B48, &qword_1DDA17A78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90FC38();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_1DDA15280();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_1DDA15280();
  v21 = v12;
  v23 = 2;
  v13 = sub_1DDA15280();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_1DD90F528(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD90F574@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82B10, &qword_1DDA17A60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90F870();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v9 = sub_1DDA15280();
  v11 = v10;
  v23 = v9;
  v27 = 1;
  v21 = sub_1DDA15280();
  v22 = v12;
  v26 = 2;
  v19 = sub_1DDA15220();
  v20 = v13;
  v24 = 3;
  sub_1DD90F8C4();
  sub_1DDA15260();
  (*(v6 + 8))(v8, v5);
  v14 = v25;
  v15 = v20;

  v16 = v22;

  __swift_destroy_boxed_opaque_existential_1(a1);

  *a2 = v23;
  *(a2 + 8) = v11;
  *(a2 + 16) = v21;
  *(a2 + 24) = v16;
  *(a2 + 32) = v19;
  *(a2 + 40) = v15;
  *(a2 + 48) = v14;
  return result;
}

unint64_t sub_1DD90F870()
{
  result = qword_1ECD82B18;
  if (!qword_1ECD82B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B18);
  }

  return result;
}

unint64_t sub_1DD90F8C4()
{
  result = qword_1ECD82B20;
  if (!qword_1ECD82B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B20);
  }

  return result;
}

unint64_t sub_1DD90F918(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD90F964@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82B28, &qword_1DDA17A68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD90FB90();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v9 = sub_1DDA15280();
  v11 = v10;
  v12 = v9;
  v21 = 1;
  sub_1DD90CD54();
  sub_1DDA152C0();
  v19 = v22;
  v20 = 2;
  v13 = sub_1DDA15280();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v19;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16;
  return result;
}