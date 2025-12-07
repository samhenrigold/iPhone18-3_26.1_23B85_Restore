uint64_t sub_1D95E1A08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D966E5B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1D95E1B40(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D966E5B8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1D95E1CE4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D95E1D1C()
{
  v1 = sub_1D966E3F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D95E1E44()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D95E20E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D95E2150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D95E21D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuthAuthorizationContext(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D95E223C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuthAuthorizationContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D95E22B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21330, &qword_1D9672470);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D95E236C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21330, &qword_1D9672470);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D95E241C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D95E24D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D95E25A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_1D960FBC8(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D95E25E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallSheetContext(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D95E264C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallSheetContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D95E26BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D966E5B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D95E2788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D966E5B8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1D95E284C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D966E5B8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D95E28F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D966E5B8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D95E29A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for InstallSheetContext.Source(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D95E2A54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for InstallSheetContext.Source(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D95E2AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D95E2BB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D95E2C64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D95E2D20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D95E2DD0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D95E2E8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D95E2F58()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1D95E2F8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D96396CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D95E2FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetPublicDataRequest.Request(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D95E3038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetPublicDataRequest.Request(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D95E30B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D966E618();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D966E5B8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[8] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_1D966E6B8();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[9];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[11];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1D95E327C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D966E618();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1D966E5B8();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
    return result;
  }

  v16 = sub_1D966E6B8();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[11];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1D95E348C()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D95E34D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D95E36F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D966E5B8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 92);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D95E3828(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D966E5B8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 92);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D95E3A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D966E5B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D95E3B90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D966E5B8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D95E3CC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D95E3D04()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D95E3D3C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D95E3D84()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D95E3DF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D95E3E40()
{

  sub_1D965ED5C(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1D95E3E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LicenseResolutionContext(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D95E3F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LicenseResolutionContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D95E3F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D95E3FE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D95E4054()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 52, 7);
}

uint64_t sub_1D95E4094()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D95E40D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSheetContext(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D95E413C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSheetContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D95E41B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D966E5B8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D95E4260(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D966E5B8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D95E4304()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23200, &qword_1D967FCA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D95E4398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D966E5B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D95E44CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D966E5B8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D95E4600(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D966E5F8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ExceptionRequestMetadata(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D95E4724(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D966E5F8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ExceptionRequestMetadata(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D95E48E0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1D95E49B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D966E8E8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1D966E8D8();
}

uint64_t sub_1D95E4A4C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D966E8E8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D95E4AF4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D95E4B14(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppVersion(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AppVersion(uint64_t result, int a2, int a3)
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

uint64_t sub_1D95E4C74(uint64_t a1, uint64_t a2)
{
  sub_1D966F078();
  swift_getWitnessTable();
  sub_1D966E698();
  return sub_1D966F0C8();
}

uint64_t sub_1D95E4CDC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1D966E688();
}

uint64_t sub_1D95E4DB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

uint64_t sub_1D95E4E64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D95E4E84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_1D95E4EC0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t AppVersion.init(appleItemID:appleVersionID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t AppVersion.description.getter()
{
  v2 = sub_1D966EFA8();
  MEMORY[0x1DA7338E0](58, 0xE100000000000000);
  v0 = sub_1D966EFA8();
  MEMORY[0x1DA7338E0](v0);

  return v2;
}

uint64_t sub_1D95E4FB8()
{
  v1 = *v0;
  sub_1D966F078();
  MEMORY[0x1DA733F80](v1);
  return sub_1D966F0C8();
}

uint64_t sub_1D95E5000()
{
  v1 = *v0;
  sub_1D966F078();
  MEMORY[0x1DA733F80](v1);
  return sub_1D966F0C8();
}

uint64_t sub_1D95E5044()
{
  if (*v0)
  {
    return 0x726556656C707061;
  }

  else
  {
    return 0x657449656C707061;
  }
}

uint64_t sub_1D95E5094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726556656C707061 && a2 == 0xEE0044496E6F6973)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D95E5188(uint64_t a1)
{
  v2 = sub_1D95E541C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95E51C4(uint64_t a1)
{
  v2 = sub_1D95E541C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20830, &qword_1D966FFF0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D95E541C();
  sub_1D966F118();
  v11 = 0;
  sub_1D966EF88();
  if (!v2)
  {
    v10 = 1;
    sub_1D966EF88();
  }

  return (*(v5 + 8))(v7, v4);
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

unint64_t sub_1D95E541C()
{
  result = qword_1ECB20838;
  if (!qword_1ECB20838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20838);
  }

  return result;
}

uint64_t AppVersion.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20840, &qword_1D966FFF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D95E541C();
  sub_1D966F0F8();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_1D966EEA8();
    v13 = 1;
    v10 = sub_1D966EEA8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
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

uint64_t AutomaticUpdate.alternativeDistributionPackage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AutomaticUpdate(0) + 20);
  v4 = sub_1D966E5B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AutomaticUpdate(uint64_t a1)
{
  result = qword_1ECB20878;
  if (!qword_1ECB20878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AutomaticUpdate.account.getter()
{
  v1 = *(v0 + *(type metadata accessor for AutomaticUpdate(0) + 24));

  return v1;
}

uint64_t AutomaticUpdate.installVerificationToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for AutomaticUpdate(0) + 28));

  return v1;
}

uint64_t AutomaticUpdate.appShareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AutomaticUpdate(0) + 32);

  return sub_1D95E5820(v3, a1);
}

uint64_t sub_1D95E5820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AutomaticUpdate.appShareURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AutomaticUpdate(0) + 32);

  return sub_1D95E58D4(a1, v3);
}

uint64_t sub_1D95E58D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AutomaticUpdate.init(appleItemID:alternativeDistributionPackage:account:installVerificationToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v13 = type metadata accessor for AutomaticUpdate(0);
  v14 = v13[8];
  v15 = sub_1D966E5B8();
  v16 = *(v15 - 8);
  v21 = *(v16 + 56);
  v21(&a7[v14], 1, 1, v15);
  *a7 = a1;
  (*(v16 + 32))(&a7[v13[5]], a2, v15);
  v17 = &a7[v13[6]];
  *v17 = a3;
  *(v17 + 1) = a4;
  v18 = &a7[v13[7]];
  *v18 = a5;
  *(v18 + 1) = a6;
  sub_1D95EA898(&a7[v14], &qword_1ECB20848, &qword_1D9670000);

  return (v21)(&a7[v14], 1, 1, v15);
}

unint64_t sub_1D95E5AE4()
{
  v1 = *v0;
  v2 = 0x657449656C707061;
  v3 = 0x746E756F636361;
  v4 = 0x6572616853707061;
  if (v1 == 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ELL;
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

uint64_t sub_1D95E5B94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D95E9260(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D95E5BC8(uint64_t a1)
{
  v2 = sub_1D95E5E84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95E5C04(uint64_t a1)
{
  v2 = sub_1D95E5E84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomaticUpdate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20850, &qword_1D9670008);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D95E5E84();
  sub_1D966F118();
  v13 = 0;
  sub_1D966EF88();
  if (!v1)
  {
    type metadata accessor for AutomaticUpdate(0);
    v12 = 1;
    sub_1D966E5B8();
    sub_1D95E63E8(&qword_1ECB20860, MEMORY[0x1E6968FB8]);
    sub_1D966EF68();
    v11 = 2;
    sub_1D966EF38();
    v10 = 3;
    sub_1D966EF38();
    v9 = 4;
    sub_1D966EF18();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D95E5E84()
{
  result = qword_1ECB20858;
  if (!qword_1ECB20858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20858);
  }

  return result;
}

uint64_t AutomaticUpdate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = v30 - v4;
  v5 = sub_1D966E5B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20868, &qword_1D9670010);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - v10;
  v12 = type metadata accessor for AutomaticUpdate(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = *(v6 + 56);
  v37 = *(v13 + 32);
  v38 = (v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15(v38 + v37, 1, 1, v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D95E5E84();
  v35 = v11;
  v16 = v36;
  sub_1D966F0F8();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D95EA898(v38 + v37, &qword_1ECB20848, &qword_1D9670000);
  }

  else
  {
    v17 = v8;
    v36 = a1;
    v43 = 0;
    v18 = v34;
    v19 = sub_1D966EEA8();
    v20 = v38;
    *v38 = v19;
    v42 = 1;
    v21 = sub_1D95E63E8(&qword_1ECB20870, MEMORY[0x1E6968FD0]);
    sub_1D966EE88();
    v30[1] = v21;
    (*(v6 + 32))(v20 + v12[5], v17, v5);
    v41 = 2;
    v22 = sub_1D966EE58();
    v23 = (v20 + v12[6]);
    *v23 = v22;
    v23[1] = v24;
    v40 = 3;
    v25 = sub_1D966EE58();
    v26 = v36;
    v27 = (v20 + v12[7]);
    *v27 = v25;
    v27[1] = v28;
    v39 = 4;
    sub_1D966EE38();
    (*(v33 + 8))(v35, v18);
    sub_1D95E58D4(v32, v20 + v37);
    sub_1D95E642C(v20, v31);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return sub_1D95E6490(v20);
  }
}

uint64_t sub_1D95E63E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D966E5B8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D95E642C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomaticUpdate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D95E6490(uint64_t a1)
{
  v2 = type metadata accessor for AutomaticUpdate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id MarketplaceAppExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for _MarketplaceExtensionConfiguration.ExportedObject(0, a1, a2, a4);
  result = sub_1D95E9504(v4, type metadata accessor for _MarketplaceExtensionConfiguration.ExportedObject, type metadata accessor for _MarketplaceExtensionConfiguration.ExportedObject);
  *a3 = result;
  return result;
}

uint64_t sub_1D95E6578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v28 = a2;
  v29 = a3;
  v27 = *v5;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = sub_1D966E3F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_1D966EAE8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  v19 = v27;
  *(v18 + 4) = *((v7 & v27) + 0x50);
  *(v18 + 5) = *((v7 & v19) + 0x58);
  *(v18 + 6) = v5;
  (*(v9 + 32))(&v18[v16], v11, v8);
  v20 = &v18[v17];
  v21 = v29;
  *v20 = v28;
  v20[1] = v21;
  v22 = &v18[(v17 + 23) & 0xFFFFFFFFFFFFFFF8];
  v23 = v31;
  *v22 = v30;
  v22[1] = v23;
  v24 = v5;

  sub_1D9664FDC(0, 0, v14, &unk_1D9670628, v18);
}

uint64_t sub_1D95E67E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v18;
  v12 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x58);
  v13 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x50);
  v16 = (*(v12 + 16) + **(v12 + 16));
  v14 = swift_task_alloc();
  v8[4] = v14;
  *v14 = v8;
  v14[1] = sub_1D95E697C;

  return v16(a5, a6, a7, v13, v12);
}

uint64_t sub_1D95E697C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D95E6A7C, 0, 0);
}

uint64_t sub_1D95E6A7C()
{
  (*(v0 + 16))(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D95E6B24(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1D966E948();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1D95E6BBC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x58);
  v10 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x50);
  v13 = (*(v9 + 32) + **(v9 + 32));
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_1D95E6D34;

  return v13(a5, v10, v9);
}

uint64_t sub_1D95E6D34(char a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D95E6E34, 0, 0);
}

uint64_t sub_1D95E6E34()
{
  (*(v0 + 16))(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D95E6EF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v9 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x58);
  v10 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x50);
  v13 = (*(v9 + 40) + **(v9 + 40));
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_1D95E7068;

  return v13(a5, v10, v9);
}

uint64_t sub_1D95E7068(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D95E7168, 0, 0);
}

uint64_t sub_1D95E7168()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B08, &qword_1D96705D8);
  sub_1D95EAAA0();
  sub_1D95EAB54();
  v1 = sub_1D966E738();
  v2 = v0[3];
  v3 = v1;
  v5 = v4;

  v2(v3, v5);
  sub_1D95EA55C(v3, v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1D95E72E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v8[9] = *MEMORY[0x1E69E7D40] & *a6;
  v8[10] = type metadata accessor for MarketplaceKitError(0);
  v8[11] = swift_task_alloc();
  v8[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AC0, &qword_1D96705B0);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D95E7400, 0, 0);
}

uint64_t sub_1D95E7400()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AC8, &qword_1D96705B8);
  sub_1D95EA77C(&qword_1ECB20AD0, sub_1D95EA728, MEMORY[0x1E69E6330]);
  sub_1D95EA77C(&qword_1ECB20AE0, sub_1D95EA7F4, MEMORY[0x1E69E6300]);
  sub_1D966E728();
  v1 = v0[9];
  v2 = v0[2];
  v0[15] = v2;
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1D95E7644;

  return v7(v2, v4, v3);
}

uint64_t sub_1D95E7644(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_1D95E7924;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_1D95E7788;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D95E7788()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  *v1 = *(v0 + 144);
  swift_storeEnumTagMultiPayload();
  sub_1D95EA95C(v1, v2);
  v3 = *(v0 + 136);
  sub_1D95EA848(&qword_1ECB20AF8, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D95EA848(&qword_1ECB20B00, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  v4 = sub_1D966E738();
  if (v3)
  {

    return MEMORY[0x1EEE6C130](v3, "MarketplaceKit/MarketplaceExtension.swift", 41, 1, 128);
  }

  else
  {
    v6 = *(v0 + 112);
    v7 = v4;
    v8 = v5;
    (*(v0 + 56))();
    sub_1D95EA55C(v7, v8);
    sub_1D95EA898(v6, &qword_1ECB20AC0, &qword_1D96705B0);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1D95E7924()
{
  v1 = *(v0 + 136);
  *(v0 + 24) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AF0, &qword_1D96705C0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  if (v3)
  {
    v6 = *(v0 + 88);

    sub_1D95EA8F8(v6, v5);
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  sub_1D95EA848(&qword_1ECB20AF8, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D95EA848(&qword_1ECB20B00, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  v7 = sub_1D966E738();
  v8 = *(v0 + 112);
  v9 = v7;
  v11 = v10;
  (*(v0 + 56))();
  sub_1D95EA55C(v9, v11);
  sub_1D95EA898(v8, &qword_1ECB20AC0, &qword_1D96705B0);

  v12 = *(v0 + 8);

  return v12();
}

id MarketplaceExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for _MarketplaceExtensionLegacyConfiguration.ExportedObject(0, a1, a2, a4);
  result = sub_1D95E9504(v4, type metadata accessor for _MarketplaceExtensionLegacyConfiguration.ExportedObject, type metadata accessor for _MarketplaceExtensionLegacyConfiguration.ExportedObject);
  *a3 = result;
  return result;
}

uint64_t sub_1D95E7C14(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  [a1 resume];
  return 1;
}

uint64_t sub_1D95E7CB0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  (*(*((*MEMORY[0x1E69E7D40] & *v4) + 0x58) + 16))(a1, a2, a3, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50));
  a4();
}

uint64_t sub_1D95E7D98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = sub_1D966E3F8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a5);
  sub_1D966E3E8();
  v17 = sub_1D966E9A8();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  v21 = a1;
  a8(v15, v17, v19, a7, v20);

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1D95E7F20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_1D966EAE8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v5;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v15 = v5;
  v16 = a1;

  sub_1D9664FDC(0, 0, v12, a5, v14);
}

uint64_t sub_1D95E8044(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = *MEMORY[0x1E69E7D40] & *a4;
  return MEMORY[0x1EEE6DFA0](sub_1D95E80A0, 0, 0);
}

uint64_t sub_1D95E80A0()
{
  v1 = v0[4];
  v2 = (*(*(v0[6] + 88) + 32))(v0[3], *(v0[6] + 80));
  v1(v2 & 1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D95E8190(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t sub_1D95E8258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_1D966EAE8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v5;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v15 = v5;

  sub_1D9664FDC(0, 0, v12, a5, v14);
}

uint64_t sub_1D95E8380(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[7] = *MEMORY[0x1E69E7D40] & *a4;
  return MEMORY[0x1EEE6DFA0](sub_1D95E83DC, 0, 0);
}

uint64_t sub_1D95E83DC()
{
  v1 = (*(*(v0[7] + 88) + 24))(v0[4], *(v0[7] + 80));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v0[2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B08, &qword_1D96705D8);
  sub_1D95EAAA0();
  sub_1D95EAB54();
  v3 = sub_1D966E738();
  v4 = v0[5];
  v5 = v3;
  v7 = v6;

  v4(v5, v7);
  sub_1D95EA55C(v5, v7);
  v8 = v0[1];

  return v8();
}

uint64_t sub_1D95E8588(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = sub_1D966EA38();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = a1;
  a7(v11, a6, v12);
}

uint64_t sub_1D95E8660(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_1D966EAE8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = v6;
  v16[7] = a3;
  v16[8] = a4;
  sub_1D95EA68C(a1, a2);
  v17 = v6;

  sub_1D9664FDC(0, 0, v14, a6, v16);
}

uint64_t sub_1D95E8794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v8[9] = *MEMORY[0x1E69E7D40] & *a6;
  v8[10] = type metadata accessor for MarketplaceKitError(0);
  v8[11] = swift_task_alloc();
  v8[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AC0, &qword_1D96705B0);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D95E88B0, 0, 0);
}

uint64_t sub_1D95E88B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AC8, &qword_1D96705B8);
  sub_1D95EA77C(&qword_1ECB20AD0, sub_1D95EA728, MEMORY[0x1E69E6330]);
  sub_1D95EA77C(&qword_1ECB20AE0, sub_1D95EA7F4, MEMORY[0x1E69E6300]);
  sub_1D966E728();
  v1 = v0[9];
  v2 = v0[2];
  v0[15] = v2;
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  v7 = (*(v3 + 40) + **(v3 + 40));
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1D95E8AF4;

  return v7(v2, v4, v3);
}

uint64_t sub_1D95E8AF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_1D95E8DD4;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_1D95E8C38;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D95E8C38()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  *v1 = *(v0 + 144);
  swift_storeEnumTagMultiPayload();
  sub_1D95EA95C(v1, v2);
  v3 = *(v0 + 136);
  sub_1D95EA848(&qword_1ECB20AF8, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D95EA848(&qword_1ECB20B00, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  v4 = sub_1D966E738();
  if (v3)
  {

    return MEMORY[0x1EEE6C130](v3, "MarketplaceKit/MarketplaceExtension.swift", 41, 1, 204);
  }

  else
  {
    v6 = *(v0 + 112);
    v7 = v4;
    v8 = v5;
    (*(v0 + 56))();
    sub_1D95EA55C(v7, v8);
    sub_1D95EA898(v6, &qword_1ECB20AC0, &qword_1D96705B0);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1D95E8DD4()
{
  v1 = *(v0 + 136);
  *(v0 + 24) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AF0, &qword_1D96705C0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  if (v3)
  {
    v6 = *(v0 + 88);

    sub_1D95EA8F8(v6, v5);
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  sub_1D95EA848(&qword_1ECB20AF8, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D95EA848(&qword_1ECB20B00, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  v7 = sub_1D966E738();
  v8 = *(v0 + 112);
  v9 = v7;
  v11 = v10;
  (*(v0 + 56))();
  sub_1D95EA55C(v9, v11);
  sub_1D95EA898(v8, &qword_1ECB20AC0, &qword_1D96705B0);

  v12 = *(v0 + 8);

  return v12();
}

void sub_1D95E9034(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = a3;
  v17 = a1;
  v13 = sub_1D966E5E8();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  a7(v13, v15, a6, v16);

  sub_1D95EA55C(v13, v15);
}

id sub_1D95E9184(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1D95E9260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D96804F0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E756F636361 && a2 == 0xE700000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D9680510 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6572616853707061 && a2 == 0xEB000000004C5255)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

id sub_1D95E9428(uint64_t a1, uint64_t (*a2)(void, uint64_t, void))
{
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  (*(*(v6 - 8) + 16))(&v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0x60)], a1, v6);
  v7 = a2(0, v6, *((v5 & v4) + 0x58));
  v9.receiver = v2;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_1D95E9590(uint64_t a1)
{
  sub_1D966E5B8();
  if (v1 <= 0x3F)
  {
    sub_1D95E9634(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D95E9634(uint64_t a1)
{
  if (!qword_1EDCF6668)
  {
    sub_1D966E5B8();
    v1 = sub_1D966EC18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCF6668);
    }
  }
}

uint64_t dispatch thunk of MarketplaceAppExtension.additionalHeaders(for:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D95EB35C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MarketplaceAppExtension.automaticUpdates(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D95E98F4;

  return v9(a1, a2, a3);
}

uint64_t sub_1D95E98F4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of MarketplaceAppExtension.requestFailed(response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D95E9B18;

  return v9(a1, a2, a3);
}

uint64_t sub_1D95E9B18(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of MarketplaceAppExtension.availableAppVersions(forAppleItemIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D95E9B18;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MarketplaceExtension.automaticUpdates(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D95EB354;

  return v9(a1, a2, a3);
}

uint64_t sub_1D95E9EB8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_witness_table_14MarketplaceKit0A12AppExtensionRzlAA01_aD13ConfigurationVyxG0D10Foundation0cdE0HPyHCTm(void *a1, uint64_t (*a2)(uint64_t, void, void), uint64_t a3)
{
  a2(255, *a1, a1[1]);

  return swift_getWitnessTable();
}

uint64_t sub_1D95E9FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D95EA028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for AutomaticUpdate.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AutomaticUpdate.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AppVersion.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppVersion.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D95EA314()
{
  result = qword_1ECB20A88;
  if (!qword_1ECB20A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20A88);
  }

  return result;
}

unint64_t sub_1D95EA36C()
{
  result = qword_1ECB20A90;
  if (!qword_1ECB20A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20A90);
  }

  return result;
}

uint64_t sub_1D95EA3C0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D95EA400()
{
  result = qword_1ECB20A98;
  if (!qword_1ECB20A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20A98);
  }

  return result;
}

unint64_t sub_1D95EA458()
{
  result = qword_1ECB20AA0;
  if (!qword_1ECB20AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20AA0);
  }

  return result;
}

unint64_t sub_1D95EA4B0()
{
  result = qword_1ECB20AA8;
  if (!qword_1ECB20AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20AA8);
  }

  return result;
}

unint64_t sub_1D95EA508()
{
  result = qword_1ECB20AB0;
  if (!qword_1ECB20AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20AB0);
  }

  return result;
}

uint64_t sub_1D95EA55C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1D95EA5B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D95EB350;

  return sub_1D95E8794(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D95EA68C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
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

unint64_t sub_1D95EA728()
{
  result = qword_1ECB20AD8;
  if (!qword_1ECB20AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20AD8);
  }

  return result;
}

uint64_t sub_1D95EA77C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB20AC8, &qword_1D96705B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D95EA7F4()
{
  result = qword_1ECB20AE8;
  if (!qword_1ECB20AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20AE8);
  }

  return result;
}

uint64_t sub_1D95EA848(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB20AC0, &qword_1D96705B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D95EA898(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D95EA8F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketplaceKitError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D95EA95C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AC0, &qword_1D96705B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D95EA9CC(uint64_t a1)
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
  v10[1] = sub_1D95EB350;

  return sub_1D95E8380(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1D95EAAA0()
{
  result = qword_1ECB20B10;
  if (!qword_1ECB20B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB20B08, &qword_1D96705D8);
    sub_1D95EA77C(&qword_1ECB20AD0, sub_1D95EA728, MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20B10);
  }

  return result;
}

unint64_t sub_1D95EAB54()
{
  result = qword_1ECB20B18;
  if (!qword_1ECB20B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB20B08, &qword_1D96705D8);
    sub_1D95EA77C(&qword_1ECB20AE0, sub_1D95EA7F4, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20B18);
  }

  return result;
}

uint64_t sub_1D95EAC08(uint64_t a1)
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
  v10[1] = sub_1D95EB350;

  return sub_1D95E8044(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();
  sub_1D95EA55C(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D95EAD50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D95EB350;

  return sub_1D95E72E4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_31Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D95EAE7C(uint64_t a1)
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
  v10[1] = sub_1D95EAF50;

  return sub_1D95E6EF0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D95EAF50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_35Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D95EB094(uint64_t a1)
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
  v10[1] = sub_1D95EB350;

  return sub_1D95E6BBC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D95EB168(uint64_t a1)
{
  v3 = *(sub_1D966E3F8() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v6);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1D95EB350;

  return sub_1D95E67E4(a1, v7, v8, v9, v1 + v4, v11, v12, v13);
}

void sub_1D95EB2C8()
{
  v1 = *(v0 + 16);
  v2 = sub_1D966E5D8();
  (*(v1 + 16))(v1, v2);
}

uint64_t InstallRequirements.minimumSystemVersion.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InstallRequirements.minimumSystemVersion.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InstallRequirements.requiredDeviceCapabilities.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t InstallRequirements.ageRatingRank.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t InstallRequirements.expectedInstallSize.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

double InstallRequirements.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  return result;
}

Swift::Bool __swiftcall InstallRequirements.satisfiedByDevice()()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v5 = *(v0 + 32);
  v6 = *(v0 + 48);
  if (!(*(&v4[0] + 1) | v1) && (v5 & 1) != 0 && (v6 & 1) != 0)
  {
    v2 = 1;
  }

  else
  {
    if (qword_1EDCF6860 != -1)
    {
      swift_once();
    }

    v2 = sub_1D95EB6A0(v4, sub_1D95EB5C4, 0);
  }

  return v2 & 1;
}

void sub_1D95EB5C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_19;
  v9 = _Block_copy(v10);

  [a1 checkDeviceCabilityForADPInstallation:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D95EB6A0(__int128 *a1, void (*a2)(uint64_t, void, unint64_t, uint64_t (*)(), uint64_t), uint64_t a3)
{
  v30 = a3;
  v31 = a2;
  v29 = *v3;
  v6 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BB8, &qword_1D9670850);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = a1[1];
  v34 = *a1;
  v35 = v12;
  v36 = a1[2];
  v37 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BC0, &qword_1D9670858);
  swift_allocObject();
  v13 = sub_1D966E718();
  v14 = sub_1D966E748();
  aBlock[4] = sub_1D95ED790;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_13;
  v15 = _Block_copy(aBlock);

  v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v15);

  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(v33, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (!swift_dynamicCast())
  {
    v21 = sub_1D966E6E8();
    sub_1D95ED634(&qword_1ECB20B80, MEMORY[0x1E696F038], MEMORY[0x1E696F040]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x1E696F030], v21);
    swift_willThrow();
LABEL_5:

    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v17 = v38;
  sub_1D95ED7BC();
  sub_1D95ED810();
  v18 = sub_1D966E738();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
    swift_unknownObjectRelease();
  }

  v23 = v19;
  v28 = v6;
  v24 = v18;
  v25 = swift_allocObject();
  v26 = v29;
  *(v25 + 16) = v13;
  *(v25 + 24) = v26;

  v29 = v17;
  v31(v17, v24, v23, sub_1D95ED864, v25);

  sub_1D966E6F8();
  v31 = v24;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95EA8F8(v11, v8);
    sub_1D95ED634(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    swift_willThrowTypedImpl();
    swift_allocError();
    sub_1D95EA8F8(v8, v27);
    swift_unknownObjectRelease();
    sub_1D95EA55C(v31, v23);
    goto LABEL_5;
  }

  swift_unknownObjectRelease();
  sub_1D95EA55C(v31, v23);

  __swift_destroy_boxed_opaque_existential_1(v33);
  return *v11;
}

uint64_t sub_1D95EBB94@<X0>(__int128 *a1@<X0>, void (*a2)(uint64_t, void, unint64_t, uint64_t (*)(), uint64_t)@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v35 = a3;
  v36 = a2;
  v7 = *v4;
  v33 = a4;
  v34 = v7;
  v8 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BA8, &qword_1D9670840);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v32 - v12;
  v14 = a1[1];
  v39 = *a1;
  v40 = v14;
  v41 = a1[2];
  v42 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BB0, &qword_1D9670848);
  swift_allocObject();
  v15 = sub_1D966E718();
  v16 = sub_1D966E748();
  aBlock[4] = sub_1D95ED67C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_7;
  v17 = _Block_copy(aBlock);

  v18 = [v16 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v17);

  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(v38, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (!swift_dynamicCast())
  {
    v23 = sub_1D966E6E8();
    sub_1D95ED634(&qword_1ECB20B80, MEMORY[0x1E696F038], MEMORY[0x1E696F040]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x1E696F030], v23);
    swift_willThrow();
LABEL_5:

    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v19 = v43;
  sub_1D95ED6A8();
  sub_1D95ED6FC();
  v20 = sub_1D966E738();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
    swift_unknownObjectRelease();
  }

  v25 = v21;
  v32[1] = v8;
  v26 = v20;
  v27 = swift_allocObject();
  v28 = v34;
  *(v27 + 16) = v15;
  *(v27 + 24) = v28;

  v34 = v19;
  v36(v19, v26, v25, sub_1D95ED750, v27);

  sub_1D966E6F8();
  v36 = v26;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95EA8F8(v13, v10);
    sub_1D95ED634(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    swift_willThrowTypedImpl();
    swift_allocError();
    sub_1D95EA8F8(v10, v29);
    swift_unknownObjectRelease();
    sub_1D95EA55C(v36, v25);
    goto LABEL_5;
  }

  swift_unknownObjectRelease();
  sub_1D95EA55C(v36, v25);

  result = __swift_destroy_boxed_opaque_existential_1(v38);
  v30 = v13[16];
  v31 = v33;
  *v33 = *v13;
  *(v31 + 16) = v30;
  return result;
}

uint64_t sub_1D95EC0A0(__int128 *a1, void (*a2)(uint64_t, void, unint64_t, uint64_t (*)(), uint64_t), uint64_t a3)
{
  v30 = a3;
  v31 = a2;
  v29 = *v3;
  v6 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B68, &qword_1D9670818);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = a1[1];
  v34 = *a1;
  v35 = v12;
  v36 = a1[2];
  v37 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B70, &unk_1D9670820);
  swift_allocObject();
  v13 = sub_1D966E718();
  v14 = sub_1D966E748();
  aBlock[4] = sub_1D95ED4AC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v15);

  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(v33, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (!swift_dynamicCast())
  {
    v21 = sub_1D966E6E8();
    sub_1D95ED634(&qword_1ECB20B80, MEMORY[0x1E696F038], MEMORY[0x1E696F040]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x1E696F030], v21);
    swift_willThrow();
LABEL_5:

    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v17 = v38;
  sub_1D95ED54C();
  sub_1D95ED5A0();
  v18 = sub_1D966E738();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
    swift_unknownObjectRelease();
  }

  v23 = v19;
  v28 = v6;
  v24 = v18;
  v25 = swift_allocObject();
  v26 = v29;
  *(v25 + 16) = v13;
  *(v25 + 24) = v26;

  v29 = v17;
  v31(v17, v24, v23, sub_1D95ED5F4, v25);

  sub_1D966E6F8();
  v31 = v24;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95EA8F8(v11, v8);
    sub_1D95ED634(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    swift_willThrowTypedImpl();
    swift_allocError();
    sub_1D95EA8F8(v8, v27);
    swift_unknownObjectRelease();
    sub_1D95EA55C(v31, v23);
    goto LABEL_5;
  }

  swift_unknownObjectRelease();
  sub_1D95EA55C(v31, v23);

  __swift_destroy_boxed_opaque_existential_1(v33);
  return *v11;
}

unint64_t sub_1D95EC594()
{
  v1 = 0x6E69746152656761;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ALL;
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D95EC61C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D95ED338(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D95EC644(uint64_t a1)
{
  v2 = sub_1D95ECC14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95EC680(uint64_t a1)
{
  v2 = sub_1D95ECC14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InstallRequirements.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B20, &qword_1D9670650);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v7;
  v16 = *(v1 + 32);
  v11 = *(v1 + 40);
  v10[1] = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D95ECC14();
  sub_1D966F118();
  v20 = 0;
  v8 = v14;
  sub_1D966EEE8();
  if (!v8)
  {
    v15 = v13;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B30, &qword_1D9670658);
    sub_1D95ECC68(&qword_1ECB20B38, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1D966EF18();
    v18 = 2;
    sub_1D966EF08();
    v17 = 3;
    sub_1D966EF28();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t InstallRequirements.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B40, &qword_1D9670660);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D95ECC14();
  sub_1D966F0F8();
  if (!v2)
  {
    v29 = 0;
    v9 = sub_1D966EE08();
    v12 = v11;
    v23 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B30, &qword_1D9670658);
    v28 = 1;
    sub_1D95ECC68(&qword_1ECB20B48, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    sub_1D966EE38();
    v13 = v24;
    v27 = 2;
    v14 = sub_1D966EE28();
    v25 = v15;
    v22 = v14;
    v26 = 3;
    v16 = sub_1D966EE48();
    v17 = v8;
    v19 = v18;
    (*(v6 + 8))(v17, v5);
    v20 = v22;
    *a2 = v23;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v20;
    *(a2 + 32) = v25 & 1;
    *(a2 + 40) = v16;
    *(a2 + 48) = v19 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D95ECC14()
{
  result = qword_1ECB20B28;
  if (!qword_1ECB20B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20B28);
  }

  return result;
}

uint64_t sub_1D95ECC68(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB20B30, &qword_1D9670658);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

uint64_t sub_1D95ECCF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D95ECD4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InstallRequirements.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InstallRequirements.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D95ECF14()
{
  result = qword_1ECB20B50;
  if (!qword_1ECB20B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20B50);
  }

  return result;
}

unint64_t sub_1D95ECF6C()
{
  result = qword_1ECB20B58;
  if (!qword_1ECB20B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20B58);
  }

  return result;
}

unint64_t sub_1D95ECFC4()
{
  result = qword_1ECB20B60;
  if (!qword_1ECB20B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20B60);
  }

  return result;
}

uint64_t sub_1D95ED018(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v29 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = sub_1D966E8E8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D966E888();
  v14 = a1;
  v15 = sub_1D966E8C8();
  v16 = sub_1D966EBA8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28 = v4;
    v20 = v19;
    *v18 = 138543362;
    v21 = a1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_1D95E0000, v15, v16, "Error fetching synchronous remote object proxy: %{public}@", v18, 0xCu);
    sub_1D95EA898(v20, &qword_1ECB20BA0, &qword_1D9670DD0);
    v23 = v20;
    v4 = v28;
    MEMORY[0x1DA734680](v23, -1, -1);
    v24 = v18;
    v5 = v27;
    MEMORY[0x1DA734680](v24, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  type metadata accessor for MarketplaceKitError(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1D966E708();
  return sub_1D95EA898(v9, v5, v4);
}

uint64_t sub_1D95ED278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v16 - v13;
  a7(a1, a2);
  sub_1D966E708();
  return sub_1D95EA898(v14, a5, a6);
}

uint64_t sub_1D95ED338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001D9680670 == a2;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D9680690 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69746152656761 && a2 == 0xED00006B6E615267 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D96806B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D95ED4F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1D95ED54C()
{
  result = qword_1ECB20B88;
  if (!qword_1ECB20B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20B88);
  }

  return result;
}

unint64_t sub_1D95ED5A0()
{
  result = qword_1ECB20B90;
  if (!qword_1ECB20B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20B90);
  }

  return result;
}

uint64_t sub_1D95ED634(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D95ED6A8()
{
  result = qword_1EDCF66C0;
  if (!qword_1EDCF66C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF66C0);
  }

  return result;
}

unint64_t sub_1D95ED6FC()
{
  result = qword_1EDCF66C8;
  if (!qword_1EDCF66C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF66C8);
  }

  return result;
}

unint64_t sub_1D95ED7BC()
{
  result = qword_1ECB20BC8;
  if (!qword_1ECB20BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20BC8);
  }

  return result;
}

unint64_t sub_1D95ED810()
{
  result = qword_1ECB20BD0;
  if (!qword_1ECB20BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20BD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketplaceSceneConnectionOptionDefinition(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MarketplaceSceneConnectionOptionDefinition(_WORD *result, int a2, int a3)
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

uint64_t LocalizedStringsRequest.LocalizedString.key.getter()
{
  v1 = *v0;

  return v1;
}

MarketplaceKit::LocalizedStringsRequest::LocalizedString __swiftcall LocalizedStringsRequest.LocalizedString.init(key:replacementTokens:)(Swift::String key, Swift::OpaquePointer replacementTokens)
{
  *v2 = key;
  *(v2 + 16) = replacementTokens;
  result.field1D968820C = key;
  result.field1D9688218 = replacementTokens;
  return result;
}

uint64_t sub_1D95ED9E8()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1D95EDA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9680720 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D95EDB04(uint64_t a1)
{
  v2 = sub_1D95EDD48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95EDB40(uint64_t a1)
{
  v2 = sub_1D95EDD48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocalizedStringsRequest.LocalizedString.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BD8, &unk_1D9670890);
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D95EDD48();
  sub_1D966F118();
  v13 = 0;
  sub_1D966EF38();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BE8, &qword_1D9671060);
    sub_1D95EDFE4(&qword_1ECB20BF0, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1D966EF68();
  }

  return (*(v10 + 8))(v6, v4);
}

unint64_t sub_1D95EDD48()
{
  result = qword_1ECB20BE0;
  if (!qword_1ECB20BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20BE0);
  }

  return result;
}

uint64_t LocalizedStringsRequest.LocalizedString.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BF8, &qword_1D96708A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D95EDD48();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_1D966EE58();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BE8, &qword_1D9671060);
  v16 = 1;
  sub_1D95EDFE4(&qword_1ECB20C00, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1D966EE88();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D95EDFE4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB20BE8, &qword_1D9671060);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LocalizedStringsRequest.run()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 96) = a1;
  *(v2 + 104) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D95EE0B4, 0, 0);
}

uint64_t sub_1D95EE0B4()
{
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0x1000000000000000;
  *(v0 + 64) = 1;
  v1 = qword_1EDCF6860;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1D95EE1E0;

  return sub_1D95EEF68(v0 + 72, v0 + 16, sub_1D962B900, 0);
}

uint64_t sub_1D95EE1E0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D95EE528;
  }

  else
  {
    v2 = sub_1D95EE2F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D95EE2F4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);
  if (v2 == 8)
  {

LABEL_16:
    **(v0 + 96) = v1;
    v18 = *(v0 + 8);

    return v18();
  }

  v4 = *(v0 + 80);
  v5 = *(v3 + 16);
  if (v5)
  {
    v19 = *(v0 + 80);
    v20 = *(v0 + 88);
    v21 = *(v0 + 72);
    v22 = MEMORY[0x1E69E7CC0];
    sub_1D95FD1A4(0, v5, 0);
    v6 = v22;
    v7 = *(v22 + 16);
    v8 = 32 * v7 + 56;
    v9 = (v3 + 40);
    do
    {
      v10 = v7;
      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = *(v22 + 24);
      ++v7;
      swift_bridgeObjectRetain_n();
      if (v10 >= v13 >> 1)
      {
        sub_1D95FD1A4((v13 > 1), v7, 1);
      }

      *(v22 + 16) = v7;
      v14 = (v22 + v8);
      *(v14 - 3) = v11;
      *(v14 - 2) = v12;
      v8 += 32;
      v9 += 3;
      *(v14 - 1) = v11;
      *v14 = v12;
      --v5;
    }

    while (v5);
    v1 = v21;
    LOBYTE(v2) = v20;
    v4 = v19;
    goto LABEL_10;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20C08, &unk_1D9672460);
    v15 = sub_1D966EDC8();
    goto LABEL_11;
  }

  v15 = MEMORY[0x1E69E7CC8];
LABEL_11:
  v16 = *(v0 + 120);
  v23 = v15;
  sub_1D95FCE58(v6, 1, sub_1D95EE58C);
  if (!v16)
  {

    sub_1D95FD1C4(v1, v4, v2);
    v1 = v23;
    goto LABEL_16;
  }
}

uint64_t sub_1D95EE528()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D95EE58C@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t sub_1D95EE5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73676E69727473 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D95EE654(uint64_t a1)
{
  v2 = sub_1D95FD224();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95EE690(uint64_t a1)
{
  v2 = sub_1D95FD224();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocalizedStringsRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20C10, &qword_1D96708C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D95FD224();

  sub_1D966F118();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20C20, &qword_1D96708C8);
  sub_1D95FD2CC(&qword_1ECB20C28, sub_1D95FD278, MEMORY[0x1E69E6300]);
  sub_1D966EF68();

  return (*(v4 + 8))(v6, v3);
}

uint64_t LocalizedStringsRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20C38, &qword_1D96708D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D95FD224();
  sub_1D966F0F8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20C20, &qword_1D96708C8);
    sub_1D95FD2CC(&qword_1ECB20C40, sub_1D95FD344, MEMORY[0x1E69E6330]);
    sub_1D966EE88();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D95EEA50()
{
  sub_1D966F078();
  MEMORY[0x1DA733F80](0);
  return sub_1D966F0C8();
}

uint64_t sub_1D95EEA94()
{
  sub_1D966F078();
  MEMORY[0x1DA733F80](0);
  return sub_1D966F0C8();
}

uint64_t sub_1D95EEAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001D9680740 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D966EFB8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D95EEB84(uint64_t a1)
{
  v2 = sub_1D95FD398();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95EEBC0(uint64_t a1)
{
  v2 = sub_1D95FD398();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocalizedStringsResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20C50, &qword_1D96708D8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D95FD398();

  sub_1D966F118();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BE8, &qword_1D9671060);
  sub_1D95EDFE4(&qword_1ECB20BF0, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1D966EF68();

  return (*(v4 + 8))(v6, v3);
}

uint64_t LocalizedStringsResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20C60, &qword_1D96708E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D95FD398();
  sub_1D966F0F8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BE8, &qword_1D9671060);
    sub_1D95EDFE4(&qword_1ECB20C00, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1D966EE88();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D95EEF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = v4;
  *(v5 + 72) = a1;
  *(v5 + 80) = a3;
  *(v5 + 104) = *v4;
  v6 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = *(a2 + 48);
  return MEMORY[0x1EEE6DFA0](sub_1D95EEFCC, 0, 0);
}

uint64_t sub_1D95EEFCC()
{
  sub_1D95ED6A8();
  sub_1D95ED6FC();
  v1 = sub_1D966E738();
  *(v0 + 112) = v1;
  *(v0 + 120) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 104);
  v11 = *(v0 + 80);
  v6 = sub_1D966E748();
  *(v0 + 128) = v6;
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_1D95EF174;
  v9 = *(v0 + 72);

  return MEMORY[0x1EEE6DE38](v9, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FF090, v7, &type metadata for FetchDataResponse);
}

uint64_t sub_1D95EF174()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1D95EF2FC;
  }

  else
  {

    v3 = sub_1D95EF298;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D95EF298()
{
  sub_1D95EA55C(v0[14], v0[15]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1D95EF2FC()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);

  sub_1D95EA55C(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D95EF380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1D95EF3CC, 0, 0);
}

uint64_t sub_1D95EF3CC()
{
  type metadata accessor for ManifestValidationRequest(0);
  sub_1D95FF030(&qword_1ECB20F38, type metadata accessor for ManifestValidationRequest, &protocol conformance descriptor for ManifestValidationRequest);
  sub_1D95FF030(&qword_1ECB20F40, type metadata accessor for ManifestValidationRequest, &protocol conformance descriptor for ManifestValidationRequest);
  v1 = sub_1D966E738();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 48);
  v11 = *(v0 + 24);
  v6 = sub_1D966E748();
  *(v0 + 72) = v6;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB0, &qword_1D9670DA8);
  *v8 = v0;
  v8[1] = sub_1D95EF5E4;

  return MEMORY[0x1EEE6DE38](v0 + 104, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FF078, v7, v9);
}

uint64_t sub_1D95EF5E4()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1D95FF354;
  }

  else
  {

    v3 = sub_1D95FF3E0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D95EF708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a1;
  v8[7] = a6;
  v8[10] = *v7;
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D95EF75C, 0, 0);
}

uint64_t sub_1D95EF75C()
{
  sub_1D95FEE10();
  sub_1D95FEE64();
  v1 = sub_1D966E738();
  *(v0 + 88) = v1;
  *(v0 + 96) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 80);
  v11 = *(v0 + 56);
  v6 = sub_1D966E748();
  *(v0 + 104) = v6;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_1D95EF904;
  v9 = *(v0 + 48);

  return MEMORY[0x1EEE6DE38](v9, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FEEB8, v7, &type metadata for SKTransactionReportTokenResponse);
}

uint64_t sub_1D95EF904()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1D95EFA8C;
  }

  else
  {

    v3 = sub_1D95EFA28;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D95EFA28()
{
  sub_1D95EA55C(v0[11], v0[12]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1D95EFA8C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  sub_1D95EA55C(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D95EFB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;
  *(v4 + 72) = a2;
  *(v4 + 96) = *v3;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = *(a1 + 48);
  return MEMORY[0x1EEE6DFA0](sub_1D95EFB74, 0, 0);
}

uint64_t sub_1D95EFB74()
{
  sub_1D95ED54C();
  sub_1D95ED5A0();
  v1 = sub_1D966E738();
  *(v0 + 104) = v1;
  *(v0 + 112) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 96);
  v11 = *(v0 + 72);
  v6 = sub_1D966E748();
  *(v0 + 120) = v6;
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB0, &qword_1D9670DA8);
  *v8 = v0;
  v8[1] = sub_1D95EFD2C;

  return MEMORY[0x1EEE6DE38](v0 + 65, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FEDF8, v7, v9);
}

uint64_t sub_1D95EFD2C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1D95EFEB8;
  }

  else
  {

    v3 = sub_1D95EFE50;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D95EFE50()
{
  sub_1D95EA55C(*(v0 + 104), *(v0 + 112));
  v1 = *(v0 + 65);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D95EFEB8()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);

  sub_1D95EA55C(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D95EFF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[6] = a4;
  v6[9] = *v5;
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D95EFF90, 0, 0);
}

uint64_t sub_1D95EFF90()
{
  sub_1D95FEC40();
  sub_1D95FEC94();
  v1 = sub_1D966E738();
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 72);
  v11 = *(v0 + 48);
  v6 = sub_1D966E748();
  *(v0 + 96) = v6;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B08, &qword_1D96705D8);
  *v8 = v0;
  v8[1] = sub_1D95F0148;

  return MEMORY[0x1EEE6DE38](v0 + 40, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FECE8, v7, v9);
}

uint64_t sub_1D95F0148()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1D95F02D4;
  }

  else
  {

    v3 = sub_1D95F026C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D95F026C()
{
  sub_1D95EA55C(v0[10], v0[11]);
  v1 = v0[5];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1D95F02D4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);

  sub_1D95EA55C(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D95F0358(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 40) = *v3;
  *(v4 + 97) = a1 & 1;
  return MEMORY[0x1EEE6DFA0](sub_1D95F03AC, 0, 0);
}

uint64_t sub_1D95F03AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB0, &qword_1D9670DA8);
  sub_1D95FEBBC(&qword_1ECB20EB8, MEMORY[0x1E69E7400], MEMORY[0x1E69E7C88]);
  sub_1D95FEBBC(&qword_1ECB20EC0, MEMORY[0x1E69E73E8], MEMORY[0x1E69E7C70]);
  v2 = sub_1D966E738();
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  v4 = v2;
  v5 = v3;
  v6 = *(v0 + 40);
  v11 = *(v0 + 16);
  v7 = sub_1D966E748();
  *(v0 + 64) = v7;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v11;
  *(v8 + 40) = v4;
  *(v8 + 48) = v5;
  *(v8 + 56) = v6;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_1D95F05AC;

  return MEMORY[0x1EEE6DE38](v0 + 96, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FEC28, v8, v1);
}

uint64_t sub_1D95F05AC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1D95FF36C;
  }

  else
  {

    v3 = sub_1D95FF3E8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D95F06D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 40) = a4;
  *(v6 + 64) = *v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D95F0724, 0, 0);
}

uint64_t sub_1D95F0724()
{
  sub_1D95FEAFC();
  sub_1D95FEB50();
  v1 = sub_1D966E738();
  *(v0 + 72) = v1;
  *(v0 + 80) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 64);
  v11 = *(v0 + 40);
  v6 = sub_1D966E748();
  *(v0 + 88) = v6;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB0, &qword_1D9670DA8);
  *v8 = v0;
  v8[1] = sub_1D95F08DC;

  return MEMORY[0x1EEE6DE38](v0 + 33, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FEBA4, v7, v9);
}

uint64_t sub_1D95F08DC()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1D95FF368;
  }

  else
  {

    v3 = sub_1D95FF3E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D95F0A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[4] = a3;
  v5[7] = *v4;
  v5[2] = a1;
  v5[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D95F0A50, 0, 0);
}

uint64_t sub_1D95F0A50()
{
  sub_1D95FE944();
  sub_1D95FE998();
  v1 = sub_1D966E738();
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 56);
  v11 = *(v0 + 32);
  v6 = sub_1D966E748();
  *(v0 + 80) = v6;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB0, &qword_1D9670DA8);
  *v8 = v0;
  v8[1] = sub_1D95F0C08;

  return MEMORY[0x1EEE6DE38](v0 + 112, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FE9EC, v7, v9);
}

uint64_t sub_1D95F0C08()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1D95F0D94;
  }

  else
  {

    v3 = sub_1D95F0D2C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D95F0D2C()
{
  sub_1D95EA55C(*(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 112);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D95F0D94()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  sub_1D95EA55C(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D95F0E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[3] = a2;
  v4[6] = *v3;
  v4[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D95F0E68, 0, 0);
}

uint64_t sub_1D95F0E68()
{
  sub_1D95FE884();
  sub_1D95FE8D8();
  v1 = sub_1D966E738();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 48);
  v11 = *(v0 + 24);
  v6 = sub_1D966E748();
  *(v0 + 72) = v6;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB0, &qword_1D9670DA8);
  *v8 = v0;
  v8[1] = sub_1D95F1020;

  return MEMORY[0x1EEE6DE38](v0 + 104, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FE92C, v7, v9);
}

uint64_t sub_1D95F1020()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1D95F11AC;
  }

  else
  {

    v3 = sub_1D95F1144;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D95F1144()
{
  sub_1D95EA55C(*(v0 + 56), *(v0 + 64));
  v1 = *(v0 + 104);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D95F11AC()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  sub_1D95EA55C(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D95F1230(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = v6;
  *(v7 + 40) = a1;
  *(v7 + 48) = a5;
  *(v7 + 72) = *v6;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D95F1284, 0, 0);
}

uint64_t sub_1D95F1284()
{
  sub_1D95FE6CC();
  sub_1D95FE720();
  v1 = sub_1D966E738();
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 72);
  v12 = *(v0 + 48);
  v6 = sub_1D966E748();
  *(v0 + 96) = v6;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v12;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20E58, &qword_1D9670EE0);
  *v8 = v0;
  v8[1] = sub_1D95F143C;
  v10 = *(v0 + 40);

  return MEMORY[0x1EEE6DE38](v10, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FE774, v7, v9);
}

uint64_t sub_1D95F143C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1D95FF358;
  }

  else
  {

    v3 = sub_1D95FF35C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D95F1560(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 80) = a2;
  *(v4 + 104) = *v3;
  v5 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  v6 = a1[3];
  *(v4 + 48) = a1[2];
  *(v4 + 64) = v6;
  return MEMORY[0x1EEE6DFA0](sub_1D95F15BC, 0, 0);
}

uint64_t sub_1D95F15BC()
{
  sub_1D95FE60C();
  sub_1D95FE660();
  v1 = sub_1D966E738();
  *(v0 + 112) = v1;
  *(v0 + 120) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 104);
  v11 = *(v0 + 80);
  v6 = sub_1D966E748();
  *(v0 + 128) = v6;
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB0, &qword_1D9670DA8);
  *v8 = v0;
  v8[1] = sub_1D95F1774;

  return MEMORY[0x1EEE6DE38](v0 + 160, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FE6B4, v7, v9);
}

uint64_t sub_1D95F1774()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1D95EF2FC;
  }

  else
  {

    v3 = sub_1D95F1898;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D95F1898()
{
  sub_1D95EA55C(*(v0 + 112), *(v0 + 120));
  v1 = *(v0 + 160);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D95F1900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a1;
  *(v8 + 56) = a6;
  *(v8 + 80) = *v7;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D95F1958, 0, 0);
}

uint64_t sub_1D95F1958()
{
  sub_1D95FE510();
  sub_1D95FE564();
  v1 = sub_1D966E738();
  *(v0 + 88) = v1;
  *(v0 + 96) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 80);
  v11 = *(v0 + 56);
  v6 = sub_1D966E748();
  *(v0 + 104) = v6;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_1D95EF904;
  v9 = *(v0 + 48);

  return MEMORY[0x1EEE6DE38](v9, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FE5B8, v7, &type metadata for PerformPrivateActionResponse);
}

uint64_t sub_1D95F1B00(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  *(v5 + 48) = *v4;
  *(v5 + 104) = a2 & 1;
  return MEMORY[0x1EEE6DFA0](sub_1D95F1B54, 0, 0);
}

uint64_t sub_1D95F1B54()
{
  sub_1D95FE358();
  sub_1D95FE3AC();
  v1 = sub_1D966E738();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 48);
  v11 = *(v0 + 24);
  v6 = sub_1D966E748();
  *(v0 + 72) = v6;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_1D95F1CFC;
  v9 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v9, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FE400, v7, &type metadata for FetchDataResponse);
}

uint64_t sub_1D95F1CFC()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1D95F11AC;
  }

  else
  {

    v3 = sub_1D95F1E20;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D95F1E20()
{
  sub_1D95EA55C(v0[7], v0[8]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1D95F1E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1D95F1ED0, 0, 0);
}

uint64_t sub_1D95F1ED0()
{
  type metadata accessor for SetPublicDataRequest(0);
  sub_1D95FF030(&qword_1ECB20DD0, type metadata accessor for SetPublicDataRequest, &protocol conformance descriptor for SetPublicDataRequest);
  sub_1D95FF030(&qword_1ECB20DD8, type metadata accessor for SetPublicDataRequest, &protocol conformance descriptor for SetPublicDataRequest);
  v1 = sub_1D966E738();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 48);
  v11 = *(v0 + 24);
  v6 = sub_1D966E748();
  *(v0 + 72) = v6;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB0, &qword_1D9670DA8);
  *v8 = v0;
  v8[1] = sub_1D95F1020;

  return MEMORY[0x1EEE6DE38](v0 + 104, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FE340, v7, v9);
}

uint64_t sub_1D95F20E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1D95F2134, 0, 0);
}

uint64_t sub_1D95F2134()
{
  type metadata accessor for AppInstallRequest(0);
  sub_1D95FF030(&qword_1ECB20DC0, type metadata accessor for AppInstallRequest, &protocol conformance descriptor for AppInstallRequest);
  sub_1D95FF030(&qword_1ECB20DC8, type metadata accessor for AppInstallRequest, &protocol conformance descriptor for AppInstallRequest);
  v1 = sub_1D966E738();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 48);
  v11 = *(v0 + 24);
  v6 = sub_1D966E748();
  *(v0 + 72) = v6;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB0, &qword_1D9670DA8);
  *v8 = v0;
  v8[1] = sub_1D95EF5E4;

  return MEMORY[0x1EEE6DE38](v0 + 104, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FE328, v7, v9);
}

uint64_t sub_1D95F234C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = v6;
  *(v7 + 40) = a1;
  *(v7 + 48) = a5;
  *(v7 + 72) = *v6;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4 & 1;
  return MEMORY[0x1EEE6DFA0](sub_1D95F23A4, 0, 0);
}

uint64_t sub_1D95F23A4()
{
  sub_1D95FDF04();
  sub_1D95FDF58();
  v1 = sub_1D966E738();
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 72);
  v11 = *(v0 + 48);
  v6 = sub_1D966E748();
  *(v0 + 96) = v6;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_1D95F254C;
  v9 = *(v0 + 40);

  return MEMORY[0x1EEE6DE38](v9, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FDFAC, v7, &type metadata for PerformActionResponse);
}

uint64_t sub_1D95F254C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1D95F02D4;
  }

  else
  {

    v3 = sub_1D95F2670;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D95F2670()
{
  sub_1D95EA55C(v0[10], v0[11]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1D95F26D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[3] = a2;
  v4[6] = *v3;
  v4[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D95F2724, 0, 0);
}

uint64_t sub_1D95F2724()
{
  v1 = sub_1D966E738();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 48);
  v11 = *(v0 + 24);
  v6 = sub_1D966E748();
  *(v0 + 72) = v6;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB0, &qword_1D9670DA8);
  *v8 = v0;
  v8[1] = sub_1D95EF5E4;

  return MEMORY[0x1EEE6DE38](v0 + 104, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FDEEC, v7, v9);
}

uint64_t sub_1D95F28D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[5] = a4;
  v6[8] = *v5;
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D95F292C, 0, 0);
}

uint64_t sub_1D95F292C()
{
  sub_1D95FDD34();
  sub_1D95FDD88();
  v1 = sub_1D966E738();
  *(v0 + 72) = v1;
  *(v0 + 80) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 64);
  v11 = *(v0 + 40);
  v6 = sub_1D966E748();
  *(v0 + 88) = v6;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_1D95F2AD8;
  v9 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 120, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FDDDC, v7, v9);
}

uint64_t sub_1D95F2AD8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1D95F2C64;
  }

  else
  {

    v3 = sub_1D95F2BFC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D95F2BFC()
{
  sub_1D95EA55C(*(v0 + 72), *(v0 + 80));
  v1 = *(v0 + 120);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D95F2C64()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  sub_1D95EA55C(v2, v1);

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_1D95F2CEC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 40) = a4;
  *(v6 + 64) = *v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D95F2D40, 0, 0);
}

uint64_t sub_1D95F2D40()
{
  sub_1D95FDC74();
  sub_1D95FDCC8();
  v1 = sub_1D966E738();
  *(v0 + 72) = v1;
  *(v0 + 80) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 64);
  v11 = *(v0 + 40);
  v6 = sub_1D966E748();
  *(v0 + 88) = v6;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB0, &qword_1D9670DA8);
  *v8 = v0;
  v8[1] = sub_1D95F2EF8;

  return MEMORY[0x1EEE6DE38](v0 + 33, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FDD1C, v7, v9);
}

uint64_t sub_1D95F2EF8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1D95F3084;
  }

  else
  {

    v3 = sub_1D95F301C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D95F301C()
{
  sub_1D95EA55C(*(v0 + 72), *(v0 + 80));
  v1 = *(v0 + 33);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D95F3084()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  sub_1D95EA55C(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D95F3108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a1;
  v7[6] = a5;
  v7[9] = *v6;
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D95F315C, 0, 0);
}

uint64_t sub_1D95F315C()
{
  sub_1D95FDA54();
  sub_1D95FDAA8();
  v1 = sub_1D966E738();
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 72);
  v12 = *(v0 + 48);
  v6 = sub_1D966E748();
  *(v0 + 96) = v6;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v12;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  v9 = type metadata accessor for SecureButtonActionResponse(0);
  *v8 = v0;
  v8[1] = sub_1D95F254C;
  v10 = *(v0 + 40);

  return MEMORY[0x1EEE6DE38](v10, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FDAFC, v7, v9);
}

uint64_t sub_1D95F3308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a1;
  v6[5] = a4;
  v6[8] = *v5;
  v6[2] = a2;
  v6[3] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D95F3358, 0, 0);
}

uint64_t sub_1D95F3358()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CD8, &qword_1D9670DE0);
  sub_1D95FD8C0(&qword_1EDCF6208, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
  sub_1D95FD8C0(&qword_1EDCF6210, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
  v1 = sub_1D966E738();
  *(v0 + 72) = v1;
  *(v0 + 80) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 64);
  v12 = *(v0 + 40);
  v6 = sub_1D966E748();
  *(v0 + 88) = v6;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v12;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CE0, &qword_1D9670DE8);
  *v8 = v0;
  v8[1] = sub_1D95F356C;
  v10 = *(v0 + 32);

  return MEMORY[0x1EEE6DE38](v10, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FD92C, v7, v9);
}

uint64_t sub_1D95F356C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1D95F3084;
  }

  else
  {

    v3 = sub_1D95F3690;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D95F3690()
{
  sub_1D95EA55C(v0[9], v0[10]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1D95F36F4(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 40) = *v3;
  *(v4 + 97) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D95F3744, 0, 0);
}

uint64_t sub_1D95F3744()
{
  v1 = sub_1D966E738();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 40);
  v11 = *(v0 + 16);
  v6 = sub_1D966E748();
  *(v0 + 64) = v6;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v11;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB0, &qword_1D9670DA8);
  *v8 = v0;
  v8[1] = sub_1D95F38F8;

  return MEMORY[0x1EEE6DE38](v0 + 96, 0, 0, 0xD000000000000020, 0x80000001D9680760, sub_1D95FD890, v7, v9);
}

uint64_t sub_1D95F38F8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1D95F3A84;
  }

  else
  {

    v3 = sub_1D95F3A1C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D95F3A1C()
{
  sub_1D95EA55C(*(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D95F3A84()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_1D95EA55C(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D95F3B08(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20DF0, &unk_1D9670E98);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FF3CC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_262;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FF364, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F3E5C(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB8, &unk_1D9670DB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FF3C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_251;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FF360, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F41B0(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F10, &qword_1D9670F58);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FEED0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_240;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FEEE4, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F4504(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB8, &unk_1D9670DB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FF3C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_229;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FF360, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F4858(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20ED8, &qword_1D9670F30);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FED00;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_218;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FED14, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F4BAC(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB8, &unk_1D9670DB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FF3C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_207;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FF360, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F4F00(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB8, &unk_1D9670DB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FF3C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_196;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FF360, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F5254(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB8, &unk_1D9670DB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FEA04;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_185;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FEA18, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F55A8(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB8, &unk_1D9670DB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FF3C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_174;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FF360, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F58FC(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20E60, &qword_1D9670EE8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FE78C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_163;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FE7A0, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F5C50(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB8, &unk_1D9670DB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FF3C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_152;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FF360, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F5FA4(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20E10, &qword_1D9670EB8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FE5D0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_141;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FE5E4, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F62F8(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20DF0, &unk_1D9670E98);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FE418;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_130;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FE42C, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F664C(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB8, &unk_1D9670DB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FF3C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_119;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FF360, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F69A0(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB8, &unk_1D9670DB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FF3C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_108;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FF360, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F6CF4(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20D90, &qword_1D9670E60);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FDFC4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_97;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FDFD8, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F7048(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB8, &unk_1D9670DB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FF3C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_86;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FF360, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F739C(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20D58, &qword_1D9670E38);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FDDF4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_75;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FDE08, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F76F0(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB8, &unk_1D9670DB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FF3C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_64;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FF360, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F7A44(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20D10, &qword_1D9670E10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FDB14;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_53;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FDB28, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F7D98(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CE8, &qword_1D9670DF0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FD95C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_42;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FD970, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F80EC(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB8, &unk_1D9670DB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(v10 + 16);
  v33 = a1;
  v27 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_1D95FF3C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D95F86A0;
  aBlock[3] = &block_descriptor_0;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B78, &unk_1D9670830);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_1D95FF360, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_1D966EA88();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_1D95F8440(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = sub_1D966E8E8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D966E888();
  v11 = a1;
  v12 = sub_1D966E8C8();
  v13 = sub_1D966EBA8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21[0] = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    v17 = a1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_1D95E0000, v12, v13, "Error fetching remote object proxy: %{public}@", v15, 0xCu);
    sub_1D95EA898(v16, &qword_1ECB20BA0, &qword_1D9670DD0);
    MEMORY[0x1DA734680](v16, -1, -1);
    a3 = v21[0];
    MEMORY[0x1DA734680](v15, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  type metadata accessor for MarketplaceKitError(0);
  sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
  v19 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  v21[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_1D966EA88();
}

void sub_1D95F86A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1D95F8708(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20E18, &qword_1D9670EC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  sub_1D95FA5BC(a2, &v7 - v4);
  sub_1D95FC698(v5, &qword_1ECB20E18, &qword_1D9670EC0, &qword_1ECB20E10, &qword_1D9670EB8);
  return sub_1D95EA898(v5, &qword_1ECB20E18, &qword_1D9670EC0);
}

uint64_t sub_1D95F87D8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20D98, &qword_1D9670E68);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  sub_1D95FAA68(a2, &v7 - v4);
  sub_1D95FC698(v5, &qword_1ECB20D98, &qword_1D9670E68, &qword_1ECB20D90, &qword_1D9670E60);
  return sub_1D95EA898(v5, &qword_1ECB20D98, &qword_1D9670E68);
}

uint64_t sub_1D95F88A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t), void (*a8)(char *))
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v18 - v15;
  a7(a1, a2);
  a8(v16);
  return sub_1D95EA898(v16, a5, a6);
}

uint64_t sub_1D95F8974@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[3] = a2;
  v17 = a3;
  v3 = sub_1D966E8E8();
  v15[1] = *(v3 - 8);
  v15[2] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v15[0] = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v5);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BB8, &qword_1D9670850);
  MEMORY[0x1EEE9AC00](v16);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F58, &unk_1D9670F90);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - v12;
  sub_1D95FF23C(&qword_1ECB20F60, &qword_1ECB20F58, &unk_1D9670F90, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D95FF23C(&qword_1ECB20F68, &qword_1ECB20F58, &unk_1D9670F90, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D966E728();
  sub_1D95FF284(v13, v11, &qword_1ECB20F58, &unk_1D9670F90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  else
  {
    *v7 = *v11;
  }

  swift_storeEnumTagMultiPayload();
  return sub_1D95FF284(v7, v17, &qword_1ECB20BB8, &qword_1D9670850);
}

uint64_t sub_1D95F8E28@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[3] = a2;
  v18 = a3;
  v3 = sub_1D966E8E8();
  v16[1] = *(v3 - 8);
  v16[2] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v16[0] = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v5);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BA8, &qword_1D9670840);
  MEMORY[0x1EEE9AC00](v17);
  v7 = v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20DF8, &qword_1D9670EA8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - v12;
  sub_1D95FF23C(&qword_1EDCF66F0, &qword_1ECB20DF8, &qword_1D9670EA8, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D95FF23C(&qword_1EDCF66F8, &qword_1ECB20DF8, &qword_1D9670EA8, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D966E728();
  sub_1D95FF284(v13, v11, &qword_1ECB20DF8, &qword_1D9670EA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  else
  {
    v14 = v11[16];
    *v7 = *v11;
    v7[16] = v14;
  }

  swift_storeEnumTagMultiPayload();
  return sub_1D95FF284(v7, v18, &qword_1ECB20BA8, &qword_1D9670840);
}

uint64_t sub_1D95F92E4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[3] = a2;
  v17 = a3;
  v3 = sub_1D966E8E8();
  v15[1] = *(v3 - 8);
  v15[2] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v15[0] = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v5);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B68, &qword_1D9670818);
  MEMORY[0x1EEE9AC00](v16);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CC0, &unk_1D9670DC0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - v12;
  sub_1D95FF23C(&qword_1ECB20CC8, &qword_1ECB20CC0, &unk_1D9670DC0, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D95FF23C(&qword_1ECB20CD0, &qword_1ECB20CC0, &unk_1D9670DC0, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D966E728();
  sub_1D95FF284(v13, v11, &qword_1ECB20CC0, &unk_1D9670DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  else
  {
    *v7 = *v11;
  }

  swift_storeEnumTagMultiPayload();
  return sub_1D95FF284(v7, v17, &qword_1ECB20B68, &qword_1D9670818);
}

uint64_t sub_1D95F9798@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[3] = a2;
  v18 = a3;
  v3 = sub_1D966E8E8();
  v16[1] = *(v3 - 8);
  v16[2] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v16[0] = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v5);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F18, &qword_1D9670F60);
  MEMORY[0x1EEE9AC00](v17);
  v7 = (v16 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F20, &qword_1D9670F68);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - v12;
  sub_1D95FF23C(&qword_1ECB20F28, &qword_1ECB20F20, &qword_1D9670F68, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D95FF23C(&qword_1ECB20F30, &qword_1ECB20F20, &qword_1D9670F68, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D966E728();
  sub_1D95FF284(v13, v11, &qword_1ECB20F20, &qword_1D9670F68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  else
  {
    v14 = v11[1];
    *v7 = *v11;
    v7[1] = v14;
  }

  swift_storeEnumTagMultiPayload();
  return sub_1D95FF284(v7, v18, &qword_1ECB20F18, &qword_1D9670F60);
}

uint64_t sub_1D95F9C4C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[3] = a2;
  v17 = a3;
  v3 = sub_1D966E8E8();
  v15[1] = *(v3 - 8);
  v15[2] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v15[0] = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v5);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20EE0, &qword_1D9670F38);
  MEMORY[0x1EEE9AC00](v16);
  v7 = (v15 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20EE8, &qword_1D9670F40);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - v12;
  sub_1D95FF23C(&qword_1ECB20EF0, &qword_1ECB20EE8, &qword_1D9670F40, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D95FF23C(&qword_1ECB20EF8, &qword_1ECB20EE8, &qword_1D9670F40, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D966E728();
  sub_1D95FF284(v13, v11, &qword_1ECB20EE8, &qword_1D9670F40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  else
  {
    *v7 = *v11;
  }

  swift_storeEnumTagMultiPayload();
  return sub_1D95FF284(v7, v17, &qword_1ECB20EE0, &qword_1D9670F38);
}

uint64_t sub_1D95FA100@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[3] = a2;
  v19 = a3;
  v3 = sub_1D966E8E8();
  v17[1] = *(v3 - 8);
  v17[2] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v17[0] = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v5);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20E68, &qword_1D9670EF0);
  MEMORY[0x1EEE9AC00](v18);
  v7 = (v17 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20E70, &qword_1D9670EF8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  sub_1D95FF23C(&qword_1ECB20E78, &qword_1ECB20E70, &qword_1D9670EF8, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D95FF23C(&qword_1ECB20E80, &qword_1ECB20E70, &qword_1D9670EF8, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D966E728();
  sub_1D95FF284(v13, v11, &qword_1ECB20E70, &qword_1D9670EF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  else
  {
    v14 = v11[1];
    *v7 = *v11;
    v7[1] = v14;
    v15 = v11[3];
    v7[2] = v11[2];
    v7[3] = v15;
  }

  swift_storeEnumTagMultiPayload();
  return sub_1D95FF284(v7, v19, &qword_1ECB20E68, &qword_1D9670EF0);
}

uint64_t sub_1D95FA5BC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[3] = a2;
  v17 = a3;
  v3 = sub_1D966E8E8();
  v15[1] = *(v3 - 8);
  v15[2] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v15[0] = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v5);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20E18, &qword_1D9670EC0);
  MEMORY[0x1EEE9AC00](v16);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20E20, &qword_1D9670EC8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - v12;
  sub_1D95FF23C(&qword_1ECB20E28, &qword_1ECB20E20, &qword_1D9670EC8, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D95FF23C(&qword_1ECB20E30, &qword_1ECB20E20, &qword_1D9670EC8, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D966E728();
  sub_1D95FF284(v13, v11, &qword_1ECB20E20, &qword_1D9670EC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  swift_storeEnumTagMultiPayload();
  return sub_1D95FF284(v7, v17, &qword_1ECB20E18, &qword_1D9670EC0);
}

uint64_t sub_1D95FAA68@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[3] = a2;
  v17 = a3;
  v3 = sub_1D966E8E8();
  v15[1] = *(v3 - 8);
  v15[2] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v15[0] = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v5);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20D98, &qword_1D9670E68);
  MEMORY[0x1EEE9AC00](v16);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20DA0, &qword_1D9670E70);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - v12;
  sub_1D95FF23C(&qword_1ECB20DA8, &qword_1ECB20DA0, &qword_1D9670E70, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D95FF23C(&qword_1ECB20DB0, &qword_1ECB20DA0, &qword_1D9670E70, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D966E728();
  sub_1D95FF284(v13, v11, &qword_1ECB20DA0, &qword_1D9670E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  swift_storeEnumTagMultiPayload();
  return sub_1D95FF284(v7, v17, &qword_1ECB20D98, &qword_1D9670E68);
}

uint64_t sub_1D95FAF14@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[3] = a2;
  v17 = a3;
  v3 = sub_1D966E8E8();
  v15[1] = *(v3 - 8);
  v15[2] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v15[0] = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v5);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20D60, &qword_1D9670E40);
  MEMORY[0x1EEE9AC00](v16);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20D68, &qword_1D9670E48);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - v12;
  sub_1D95FF23C(&qword_1ECB20D70, &qword_1ECB20D68, &qword_1D9670E48, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D95FF23C(&qword_1ECB20D78, &qword_1ECB20D68, &qword_1D9670E48, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D966E728();
  sub_1D95FF284(v13, v11, &qword_1ECB20D68, &qword_1D9670E48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  else
  {
    *v7 = *v11;
  }

  swift_storeEnumTagMultiPayload();
  return sub_1D95FF284(v7, v17, &qword_1ECB20D60, &qword_1D9670E40);
}

uint64_t sub_1D95FB3C8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[4] = a2;
  v19 = a3;
  v3 = sub_1D966E8E8();
  v18[1] = *(v3 - 8);
  v18[2] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18[0] = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v5);
  v18[3] = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20D18, &qword_1D9670E18);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20D20, &qword_1D9670E20);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v18 - v14;
  sub_1D95FF23C(&qword_1ECB20D28, &qword_1ECB20D20, &qword_1D9670E20, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D95FF23C(&qword_1ECB20D30, &qword_1ECB20D20, &qword_1D9670E20, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D966E728();
  sub_1D95FF284(v15, v13, &qword_1ECB20D20, &qword_1D9670E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for MarketplaceKitError;
  }

  else
  {
    v16 = type metadata accessor for SecureButtonActionResponse;
  }

  sub_1D95FDC0C(v13, v9, v16);
  swift_storeEnumTagMultiPayload();
  return sub_1D95FF284(v9, v19, &qword_1ECB20D18, &qword_1D9670E18);
}

uint64_t sub_1D95FB888@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[3] = a2;
  v18 = a3;
  v3 = sub_1D966E8E8();
  v16[1] = *(v3 - 8);
  v16[2] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v16[0] = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v5);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CF0, &qword_1D9670DF8);
  MEMORY[0x1EEE9AC00](v17);
  v7 = (v16 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CF8, &qword_1D9670E00);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - v12;
  sub_1D95FF23C(&qword_1EDCF6650, &qword_1ECB20CF8, &qword_1D9670E00, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D95FF23C(&qword_1EDCF6658, &qword_1ECB20CF8, &qword_1D9670E00, &protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_1D966E728();
  sub_1D95FF284(v13, v11, &qword_1ECB20CF8, &qword_1D9670E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  else
  {
    v14 = v11[1];
    *v7 = *v11;
    v7[1] = v14;
  }

  swift_storeEnumTagMultiPayload();
  return sub_1D95FF284(v7, v18, &qword_1ECB20CF0, &qword_1D9670DF8);
}

uint64_t sub_1D95FBD3C(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BA8, &qword_1D9670840);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1D95FEFC8(a1, &v12 - v6, &qword_1ECB20BA8, &qword_1D9670840);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v7, v4, type metadata accessor for MarketplaceKitError);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v8 = swift_allocError();
    sub_1D95FDC0C(v4, v9, type metadata accessor for MarketplaceKitError);
    *&v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20DF0, &unk_1D9670E98);
    return sub_1D966EA88();
  }

  else
  {
    v11 = v7[16];
    v12 = *v7;
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20DF0, &unk_1D9670E98);
    return sub_1D966EA98();
  }
}

uint64_t sub_1D95FBF20(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20B68, &qword_1D9670818);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11[-v6];
  sub_1D95FEFC8(a1, &v11[-v6], &qword_1ECB20B68, &qword_1D9670818);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v7, v4, type metadata accessor for MarketplaceKitError);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v8 = swift_allocError();
    sub_1D95FDC0C(v4, v9, type metadata accessor for MarketplaceKitError);
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB8, &unk_1D9670DB0);
    return sub_1D966EA88();
  }

  else
  {
    v11[7] = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB8, &unk_1D9670DB0);
    return sub_1D966EA98();
  }
}

uint64_t sub_1D95FC0FC(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F18, &qword_1D9670F60);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v12 - v6);
  sub_1D95FEFC8(a1, v12 - v6, &qword_1ECB20F18, &qword_1D9670F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v7, v4, type metadata accessor for MarketplaceKitError);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v8 = swift_allocError();
    sub_1D95FDC0C(v4, v9, type metadata accessor for MarketplaceKitError);
    v12[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F10, &qword_1D9670F58);
    return sub_1D966EA88();
  }

  else
  {
    v11 = v7[1];
    v12[0] = *v7;
    v12[1] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F10, &qword_1D9670F58);
    return sub_1D966EA98();
  }
}

uint64_t sub_1D95FC2D8(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20EE0, &qword_1D9670F38);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v11 - v6);
  sub_1D95FEFC8(a1, &v11 - v6, &qword_1ECB20EE0, &qword_1D9670F38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v7, v4, type metadata accessor for MarketplaceKitError);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v8 = swift_allocError();
    sub_1D95FDC0C(v4, v9, type metadata accessor for MarketplaceKitError);
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20ED8, &qword_1D9670F30);
    return sub_1D966EA88();
  }

  else
  {
    v12 = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20ED8, &qword_1D9670F30);
    return sub_1D966EA98();
  }
}

uint64_t sub_1D95FC4B4(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20E68, &qword_1D9670EF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v13 - v6);
  sub_1D95FEFC8(a1, v13 - v6, &qword_1ECB20E68, &qword_1D9670EF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v7, v4, type metadata accessor for MarketplaceKitError);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v8 = swift_allocError();
    sub_1D95FDC0C(v4, v9, type metadata accessor for MarketplaceKitError);
    *&v13[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20E60, &qword_1D9670EE8);
    return sub_1D966EA88();
  }

  else
  {
    v11 = v7[1];
    v13[0] = *v7;
    v13[1] = v11;
    v12 = v7[3];
    v13[2] = v7[2];
    v13[3] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20E60, &qword_1D9670EE8);
    return sub_1D966EA98();
  }
}

uint64_t sub_1D95FC698(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  sub_1D95FEFC8(a1, v19 - v14, a2, a3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v15, v12, type metadata accessor for MarketplaceKitError);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v16 = swift_allocError();
    sub_1D95FDC0C(v12, v17, type metadata accessor for MarketplaceKitError);
    v19[1] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_1D966EA88();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_1D966EA98();
  }
}

uint64_t sub_1D95FC860(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20D60, &qword_1D9670E40);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11[-v6];
  sub_1D95FEFC8(a1, &v11[-v6], &qword_1ECB20D60, &qword_1D9670E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v7, v4, type metadata accessor for MarketplaceKitError);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v8 = swift_allocError();
    sub_1D95FDC0C(v4, v9, type metadata accessor for MarketplaceKitError);
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20D58, &qword_1D9670E38);
    return sub_1D966EA88();
  }

  else
  {
    v11[7] = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20D58, &qword_1D9670E38);
    return sub_1D966EA98();
  }
}

uint64_t sub_1D95FCA3C(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SecureButtonActionResponse(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20D18, &qword_1D9670E18);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  sub_1D95FEFC8(a1, v14 - v9, &qword_1ECB20D18, &qword_1D9670E18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v10, v4, type metadata accessor for MarketplaceKitError);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v11 = swift_allocError();
    sub_1D95FDC0C(v4, v12, type metadata accessor for MarketplaceKitError);
    v14[1] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20D10, &qword_1D9670E10);
    return sub_1D966EA88();
  }

  else
  {
    sub_1D95FDC0C(v10, v7, type metadata accessor for SecureButtonActionResponse);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20D10, &qword_1D9670E10);
    return sub_1D966EA98();
  }
}

uint64_t sub_1D95FCC7C(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CF0, &qword_1D9670DF8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v12 - v6);
  sub_1D95FEFC8(a1, v12 - v6, &qword_1ECB20CF0, &qword_1D9670DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D95FDC0C(v7, v4, type metadata accessor for MarketplaceKitError);
    sub_1D95FF030(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    v8 = swift_allocError();
    sub_1D95FDC0C(v4, v9, type metadata accessor for MarketplaceKitError);
    *&v12[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CE8, &qword_1D9670DF0);
    return sub_1D966EA88();
  }

  else
  {
    v11 = v7[1];
    v12[0] = *v7;
    v12[1] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CE8, &qword_1D9670DF0);
    return sub_1D966EA98();
  }
}

void sub_1D95FCE58(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr, id *, void *))
{
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_17:

    return;
  }

  v4 = 0;
  v5 = (a1 + 56);
  v32 = a1;
  while (1)
  {
    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_1D966F008();
      __break(1u);
      goto LABEL_25;
    }

    v6 = *(v5 - 2);
    v9 = *(v5 - 1);
    v8 = *v5;
    v39 = *(v5 - 3);
    v7 = v39;
    v40 = v6;
    v38[0] = v9;
    v38[1] = v8;
    v10 = *v41;

    v12 = sub_1D9654B30(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_22;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1D9654D78();
      if (v16)
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    v24 = *v41;
    v24[(v12 >> 6) + 8] |= 1 << v12;
    v25 = (v24[6] + 16 * v12);
    *v25 = v7;
    v25[1] = v6;
    v26 = (v24[7] + 16 * v12);
    *v26 = v9;
    v26[1] = v8;
    v27 = v24[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_23;
    }

    v24[2] = v29;
LABEL_3:
    ++v4;
    v5 += 4;
    a2 = 1;
    a1 = v32;
    if (v33 == v4)
    {
      goto LABEL_17;
    }
  }

  sub_1D965504C(v15, a2 & 1);
  v17 = sub_1D9654B30(v7, v6);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_24;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v19 = *v41;
  v20 = *(*v41 + 56) + 16 * v12;
  v21 = *(v20 + 8);
  v35[0] = *v20;
  v35[1] = v21;

  a3(&v36, v35, v38);
  if (!v34)
  {

    v22 = (v19[7] + 16 * v12);
    v23 = v37;
    *v22 = v36;
    v22[1] = v23;

    goto LABEL_3;
  }

  v35[0] = v34;
  v30 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AF0, &qword_1D96705C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_25:
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1D966ED28();
  MEMORY[0x1DA7338E0](0xD00000000000001BLL, 0x80000001D96807B0);
  sub_1D966ED78();
  MEMORY[0x1DA7338E0](39, 0xE100000000000000);
  sub_1D966ED88();
  __break(1u);
}

void *sub_1D95FD1A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D95FE0E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D95FD1C4(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (!a3 || a3 == 2 || a3 == 3)
    {
    }
  }

  else if (a3 > 7u)
  {
    if (a3 == 8 || a3 == 9)
    {
    }
  }

  else if (a3 == 4)
  {
    return sub_1D95EA55C(result, a2);
  }

  else if (a3 == 7)
  {
  }

  return result;
}

unint64_t sub_1D95FD224()
{
  result = qword_1ECB20C18;
  if (!qword_1ECB20C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20C18);
  }

  return result;
}

unint64_t sub_1D95FD278()
{
  result = qword_1ECB20C30;
  if (!qword_1ECB20C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20C30);
  }

  return result;
}

uint64_t sub_1D95FD2CC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB20C20, &qword_1D96708C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D95FD344()
{
  result = qword_1ECB20C48;
  if (!qword_1ECB20C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20C48);
  }

  return result;
}

unint64_t sub_1D95FD398()
{
  result = qword_1ECB20C58;
  if (!qword_1ECB20C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20C58);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D95FD41C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D95FD464(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D95FD4B4(uint64_t *a1, int a2)
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

uint64_t sub_1D95FD4FC(uint64_t result, int a2, int a3)
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

unint64_t sub_1D95FD57C()
{
  result = qword_1ECB20C68;
  if (!qword_1ECB20C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20C68);
  }

  return result;
}

unint64_t sub_1D95FD5D4()
{
  result = qword_1ECB20C70;
  if (!qword_1ECB20C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20C70);
  }

  return result;
}

unint64_t sub_1D95FD62C()
{
  result = qword_1ECB20C78;
  if (!qword_1ECB20C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20C78);
  }

  return result;
}

unint64_t sub_1D95FD684()
{
  result = qword_1ECB20C80;
  if (!qword_1ECB20C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20C80);
  }

  return result;
}

unint64_t sub_1D95FD6DC()
{
  result = qword_1ECB20C88;
  if (!qword_1ECB20C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20C88);
  }

  return result;
}

unint64_t sub_1D95FD734()
{
  result = qword_1ECB20C90;
  if (!qword_1ECB20C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20C90);
  }

  return result;
}

unint64_t sub_1D95FD78C()
{
  result = qword_1ECB20C98;
  if (!qword_1ECB20C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20C98);
  }

  return result;
}

unint64_t sub_1D95FD7E4()
{
  result = qword_1ECB20CA0;
  if (!qword_1ECB20CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20CA0);
  }

  return result;
}

unint64_t sub_1D95FD83C()
{
  result = qword_1ECB20CA8;
  if (!qword_1ECB20CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20CA8);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D95FD8C0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB20CD8, &qword_1D9670DE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D95FD970(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CE8, &qword_1D9670DF0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1D95F88A8(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), &qword_1ECB20CF0, &qword_1D9670DF8, sub_1D95FB888, sub_1D95FCC7C);
}

unint64_t sub_1D95FDA54()
{
  result = qword_1ECB20D00;
  if (!qword_1ECB20D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20D00);
  }

  return result;
}

unint64_t sub_1D95FDAA8()
{
  result = qword_1ECB20D08;
  if (!qword_1ECB20D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20D08);
  }

  return result;
}

uint64_t sub_1D95FDB28(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20D10, &qword_1D9670E10) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1D95F88A8(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), &qword_1ECB20D18, &qword_1D9670E18, sub_1D95FB3C8, sub_1D95FCA3C);
}

uint64_t sub_1D95FDC0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D95FDC74()
{
  result = qword_1ECB20D38;
  if (!qword_1ECB20D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20D38);
  }

  return result;
}

unint64_t sub_1D95FDCC8()
{
  result = qword_1ECB20D40;
  if (!qword_1ECB20D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20D40);
  }

  return result;
}

unint64_t sub_1D95FDD34()
{
  result = qword_1ECB20D48;
  if (!qword_1ECB20D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20D48);
  }

  return result;
}

unint64_t sub_1D95FDD88()
{
  result = qword_1ECB20D50;
  if (!qword_1ECB20D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20D50);
  }

  return result;
}

uint64_t sub_1D95FDE08(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20D58, &qword_1D9670E38) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1D95F88A8(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), &qword_1ECB20D60, &qword_1D9670E40, sub_1D95FAF14, sub_1D95FC860);
}

unint64_t sub_1D95FDF04()
{
  result = qword_1ECB20D80;
  if (!qword_1ECB20D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20D80);
  }

  return result;
}

unint64_t sub_1D95FDF58()
{
  result = qword_1ECB20D88;
  if (!qword_1ECB20D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20D88);
  }

  return result;
}

uint64_t sub_1D95FE000(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, v5 + v9, v10);
}

char *sub_1D95FE0C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D95FE218(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D95FE0E4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F48, &qword_1D9670F78);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F50, &unk_1D9670F80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D95FE218(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20DB8, &qword_1D9670E78);
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

unint64_t sub_1D95FE358()
{
  result = qword_1ECB20DE0;
  if (!qword_1ECB20DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20DE0);
  }

  return result;
}

unint64_t sub_1D95FE3AC()
{
  result = qword_1ECB20DE8;
  if (!qword_1ECB20DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20DE8);
  }

  return result;
}

uint64_t sub_1D95FE42C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20DF0, &unk_1D9670E98) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1D95F88A8(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), &qword_1ECB20BA8, &qword_1D9670840, sub_1D95F8E28, sub_1D95FBD3C);
}

unint64_t sub_1D95FE510()
{
  result = qword_1ECB20E00;
  if (!qword_1ECB20E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20E00);
  }

  return result;
}

unint64_t sub_1D95FE564()
{
  result = qword_1ECB20E08;
  if (!qword_1ECB20E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20E08);
  }

  return result;
}

unint64_t sub_1D95FE60C()
{
  result = qword_1ECB20E38;
  if (!qword_1ECB20E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20E38);
  }

  return result;
}

unint64_t sub_1D95FE660()
{
  result = qword_1ECB20E40;
  if (!qword_1ECB20E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20E40);
  }

  return result;
}

unint64_t sub_1D95FE6CC()
{
  result = qword_1ECB20E48;
  if (!qword_1ECB20E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20E48);
  }

  return result;
}

unint64_t sub_1D95FE720()
{
  result = qword_1ECB20E50;
  if (!qword_1ECB20E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20E50);
  }

  return result;
}

uint64_t sub_1D95FE7A0(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20E60, &qword_1D9670EE8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1D95F88A8(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), &qword_1ECB20E68, &qword_1D9670EF0, sub_1D95FA100, sub_1D95FC4B4);
}

unint64_t sub_1D95FE884()
{
  result = qword_1ECB20E88;
  if (!qword_1ECB20E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20E88);
  }

  return result;
}

unint64_t sub_1D95FE8D8()
{
  result = qword_1ECB20E90;
  if (!qword_1ECB20E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20E90);
  }

  return result;
}

unint64_t sub_1D95FE944()
{
  result = qword_1ECB20E98;
  if (!qword_1ECB20E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20E98);
  }

  return result;
}

unint64_t sub_1D95FE998()
{
  result = qword_1ECB20EA0;
  if (!qword_1ECB20EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20EA0);
  }

  return result;
}

uint64_t sub_1D95FEA18(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20CB8, &unk_1D9670DB0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1D95F88A8(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), &qword_1ECB20B68, &qword_1D9670818, sub_1D95F92E4, sub_1D95FBF20);
}

unint64_t sub_1D95FEAFC()
{
  result = qword_1ECB20EA8;
  if (!qword_1ECB20EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20EA8);
  }

  return result;
}

unint64_t sub_1D95FEB50()
{
  result = qword_1ECB20EB0;
  if (!qword_1ECB20EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20EB0);
  }

  return result;
}

uint64_t sub_1D95FEBBC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB20CB0, &qword_1D9670DA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D95FEC40()
{
  result = qword_1ECB20EC8;
  if (!qword_1ECB20EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20EC8);
  }

  return result;
}

unint64_t sub_1D95FEC94()
{
  result = qword_1ECB20ED0;
  if (!qword_1ECB20ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20ED0);
  }

  return result;
}

uint64_t sub_1D95FED14(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20ED8, &qword_1D9670F30) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1D95F88A8(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), &qword_1ECB20EE0, &qword_1D9670F38, sub_1D95F9C4C, sub_1D95FC2D8);
}

unint64_t sub_1D95FEE10()
{
  result = qword_1ECB20F00;
  if (!qword_1ECB20F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20F00);
  }

  return result;
}

unint64_t sub_1D95FEE64()
{
  result = qword_1ECB20F08;
  if (!qword_1ECB20F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB20F08);
  }

  return result;
}

uint64_t sub_1D95FEEE4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F10, &qword_1D9670F58) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1D95F88A8(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), &qword_1ECB20F18, &qword_1D9670F60, sub_1D95F9798, sub_1D95FC0FC);
}

uint64_t sub_1D95FEFC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D95FF030(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_33Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 8, v5 | 7);
}

uint64_t sub_1D95FF23C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1D95FF284(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D95FF3EC()
{
  v1 = 0xD000000000000012;
  v2 = *v0;
  v3 = 0xD000000000000017;
  if (v2 != 5)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0xD000000000000016;
  if (v2 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D95FF4AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9605938(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D95FF4E0(uint64_t a1)
{
  v2 = sub_1D96009CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95FF51C(uint64_t a1)
{
  v2 = sub_1D96009CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95FF558()
{
  if (*v0)
  {
    return 0x7562697274736964;
  }

  else
  {
    return 0x746E756F636361;
  }
}

uint64_t sub_1D95FF5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D95FF684(uint64_t a1)
{
  v2 = sub_1D9600CE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95FF6C0(uint64_t a1)
{
  v2 = sub_1D9600CE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95FF6FC()
{
  v1 = 0x496E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x7562697274736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44496D657469;
  }
}

uint64_t sub_1D95FF764@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9605B84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D95FF78C(uint64_t a1)
{
  v2 = sub_1D9600D8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95FF7C8(uint64_t a1)
{
  v2 = sub_1D9600D8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95FF804()
{
  if (*v0)
  {
    return 0x7562697274736964;
  }

  else
  {
    return 0x7972657571;
  }
}

uint64_t sub_1D95FF848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D95FF928(uint64_t a1)
{
  v2 = sub_1D9600D38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95FF964(uint64_t a1)
{
  v2 = sub_1D9600D38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95FF9B8(uint64_t a1)
{
  v2 = sub_1D9600C30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95FF9F4(uint64_t a1)
{
  v2 = sub_1D9600C30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95FFA30(uint64_t a1)
{
  v2 = sub_1D9600B40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95FFA6C(uint64_t a1)
{
  v2 = sub_1D9600B40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95FFAA8(uint64_t a1)
{
  v2 = sub_1D9600BDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95FFAE4(uint64_t a1)
{
  v2 = sub_1D9600BDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95FFB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D95FFBA8(uint64_t a1)
{
  v2 = sub_1D9600A84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95FFBE4(uint64_t a1)
{
  v2 = sub_1D9600A84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LaunchAngelXPCRequest.RequestType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F70, &qword_1D9670FA0);
  v76 = *(v2 - 8);
  v77 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v75 = &v56 - v3;
  v73 = type metadata accessor for ConfirmationSheetContext(0);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F78, &qword_1D9670FA8);
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v56 - v6;
  v68 = type metadata accessor for LicenseResolutionContext(0);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F80, &qword_1D9670FB0);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v56 - v8;
  v63 = type metadata accessor for OAuthAuthorizationContext(0);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F88, &qword_1D9670FB8);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v56 - v10;
  v57 = type metadata accessor for InstallSheetContext(0);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F90, &qword_1D9670FC0);
  v81 = *(v12 - 8);
  v82 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v56 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20F98, &qword_1D9670FC8);
  v58 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20FA0, &qword_1D9670FD0);
  v78 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  v19 = type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20FA8, &qword_1D9670FD8);
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v23 = &v56 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96009CC();
  v86 = v23;
  sub_1D966F118();
  sub_1D9600A20(v83, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v31 = v18;
    v32 = v78;
    v33 = v79;
    v34 = v80;
    v35 = v81;
    v36 = v82;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v94 = 1;
        sub_1D9600D38();
        v37 = v15;
        v39 = v86;
        v38 = v87;
        sub_1D966EED8();
        v93 = 0;
        v40 = v84;
        sub_1D966EF38();

        if (v40)
        {

          (*(v58 + 8))(v37, v33);
          return (*(v85 + 8))(v39, v38);
        }

        else
        {
          v92 = 1;
          sub_1D966EF38();
          v55 = v58;

          (*(v55 + 8))(v37, v33);
          return (*(v85 + 8))(v39, v87);
        }
      }

      v83 = v21[2];
      v97 = 2;
      sub_1D9600CE4();
      v49 = v86;
      v44 = v87;
      sub_1D966EED8();
      v96 = 0;
      v50 = v84;
      sub_1D966EF38();

      if (!v50)
      {
        v95 = 1;
        sub_1D966EF38();
      }

      (*(v35 + 8))(v34, v36);
      v47 = *(v85 + 8);
      v48 = v49;
    }

    else
    {
      v83 = v21[1];
      LODWORD(v82) = *(v21 + 16);
      v81 = v21[3];
      v91 = 0;
      sub_1D9600D8C();
      v45 = v86;
      v44 = v87;
      sub_1D966EED8();
      v90 = 0;
      v46 = v84;
      sub_1D966EF88();
      if (v46)
      {

        (*(v32 + 8))(v31, v16);
        v47 = *(v85 + 8);
        v48 = v45;
      }

      else
      {
        v89 = 1;
        sub_1D966EF28();
        v88 = 2;
        sub_1D966EF38();

        (*(v32 + 8))(v31, v16);
        v48 = v86;
        v47 = *(v85 + 8);
      }
    }

    return v47(v48, v44);
  }

  if (EnumCaseMultiPayload > 4)
  {
    v25 = v86;
    if (EnumCaseMultiPayload == 5)
    {
      v26 = v69;
      sub_1D9600AD8(v21, v69, type metadata accessor for LicenseResolutionContext);
      v100 = 5;
      sub_1D9600B40();
      v42 = v70;
      v28 = v87;
      sub_1D966EED8();
      sub_1D9600B94(&qword_1ECB20FD0, type metadata accessor for LicenseResolutionContext, &protocol conformance descriptor for LicenseResolutionContext);
      v43 = v72;
      sub_1D966EF68();
      (*(v71 + 8))(v42, v43);
      v30 = type metadata accessor for LicenseResolutionContext;
    }

    else
    {
      v26 = v74;
      sub_1D9600AD8(v21, v74, type metadata accessor for ConfirmationSheetContext);
      v101 = 6;
      sub_1D9600A84();
      v53 = v75;
      v28 = v87;
      sub_1D966EED8();
      sub_1D9600B94(&qword_1ECB20FC0, type metadata accessor for ConfirmationSheetContext, &protocol conformance descriptor for ConfirmationSheetContext);
      v54 = v77;
      sub_1D966EF68();
      (*(v76 + 8))(v53, v54);
      v30 = type metadata accessor for ConfirmationSheetContext;
    }
  }

  else
  {
    v25 = v86;
    if (EnumCaseMultiPayload == 3)
    {
      v26 = v59;
      sub_1D9600AD8(v21, v59, type metadata accessor for InstallSheetContext);
      v98 = 3;
      sub_1D9600C30();
      v27 = v60;
      v28 = v87;
      sub_1D966EED8();
      sub_1D9600B94(&qword_1ECB20FF0, type metadata accessor for InstallSheetContext, &protocol conformance descriptor for InstallSheetContext);
      v29 = v62;
      sub_1D966EF68();
      (*(v61 + 8))(v27, v29);
      v30 = type metadata accessor for InstallSheetContext;
    }

    else
    {
      v26 = v64;
      sub_1D9600AD8(v21, v64, type metadata accessor for OAuthAuthorizationContext);
      v99 = 4;
      sub_1D9600BDC();
      v51 = v65;
      v28 = v87;
      sub_1D966EED8();
      sub_1D9600B94(&qword_1ECB20FE0, type metadata accessor for OAuthAuthorizationContext, &protocol conformance descriptor for OAuthAuthorizationContext);
      v52 = v67;
      sub_1D966EF68();
      (*(v66 + 8))(v51, v52);
      v30 = type metadata accessor for OAuthAuthorizationContext;
    }
  }

  sub_1D9600C84(v26, v30);
  return (*(v85 + 8))(v25, v28);
}