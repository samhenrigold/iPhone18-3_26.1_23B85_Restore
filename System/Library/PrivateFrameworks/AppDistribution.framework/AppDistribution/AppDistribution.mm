uint64_t sub_23FF4D9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_23FF510D4(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_23FF4DA38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23FFD8FCC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_23FFD8F6C();
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
    v16 = sub_23FFD906C();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[9];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[11];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_23FF4DC04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23FFD8FCC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_23FFD8F6C();
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

  v16 = sub_23FFD906C();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[11];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_23FF4DFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23FFD8F6C();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23FF4E100(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23FFD8F6C();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23FF4E25C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23FF4E2AC()
{

  sub_23FF6E860(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_23FF4E310(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23FF4E37C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23FF4E3EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23FF4E434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23FF4E4A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23FF4E528(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23FFD8F6C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23FF4E5D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23FFD8F6C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23FF4E774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23FFD8F6C();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23FF4E8A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23FFD8F6C();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23FF4E9DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23FF4EA24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23FF4EA5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23FF4EA9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23FF4EAE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuthAuthorizationContext(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23FF4EB4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuthAuthorizationContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23FF4EBBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23FFD8FAC();
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

uint64_t sub_23FF4ECE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_23FFD8FAC();
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

uint64_t sub_23FF4EE04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 52, 7);
}

uint64_t sub_23FF4EE44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23FF4EE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23FFD8F6C();
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

uint64_t sub_23FF4EF5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23FFD8F6C();
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

uint64_t sub_23FF4F018(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A34D8, &qword_23FFE0840);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23FF4F0D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A34D8, &qword_23FFE0840);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23FF4F184(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23FF4F240(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23FF4F300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSheetContext(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23FF4F36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSheetContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23FF4F438(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23FFD8F6C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23FF4F4E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23FFD8F6C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23FF4F594(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_23FF4F640(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_23FF4F6E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23FF4F7A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23FF4F850(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23FF4F90C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23FF4F9BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23FF4FA78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23FF4FCA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallSheetContext(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23FF4FD0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallSheetContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23FF4FD7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4228, &qword_23FFE5870);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23FF4FE38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetPublicDataRequest.Request(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23FF4FEA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetPublicDataRequest.Request(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23FF4FF94(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
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
      v13 = sub_23FFD8F6C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 92);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_23FF500C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
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
      v13 = sub_23FFD8F6C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 92);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_23FF50244(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23FFD8F6C();
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
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_23FF5037C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_23FFD8F6C();
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
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_23FF50520()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23FF50558()
{
  v1 = sub_23FFD8DBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_23FF50718@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_23FF50754()
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

uint64_t sub_23FF50784@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FF95570(a2, a3);
  *a1 = result;
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

uint64_t sub_23FF50840(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23FFD929C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_23FFD928C();
}

uint64_t sub_23FF508DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_23FFD929C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23FF509EC(uint64_t a1, int a2)
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

uint64_t sub_23FF50A0C(uint64_t result, int a2, int a3)
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

uint64_t sub_23FF50B04(uint64_t a1, uint64_t a2)
{
  sub_23FFD9A2C();
  swift_getWitnessTable(byte_23FFDA8F8, a2);
  sub_23FFD904C();
  return sub_23FFD9A7C();
}

uint64_t sub_23FF50B6C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable(byte_23FFDA8F8, a3);

  return sub_23FFD903C();
}

uint64_t sub_23FF50C40(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable(a2, v5);
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

uint64_t sub_23FF50CF4(uint64_t a1, int a2)
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

uint64_t sub_23FF50D14(uint64_t result, int a2, int a3)
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

void sub_23FF50D50(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_23FF50D9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_23FF50EA0(char a1)
{
  sub_23FFD9A2C();
  MEMORY[0x245CB41F0](a1 & 1);
  return sub_23FFD9A7C();
}

uint64_t sub_23FF50EE8(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_23FF50F58()
{
  sub_23FFD9A2C();
  sub_23FF50E78(v2, *v0);
  return sub_23FFD9A7C();
}

uint64_t sub_23FF50FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FF50D9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FF50FF8@<X0>(_BYTE *a2@<X8>)
{
  result = sub_23FF52A64();
  *a2 = result;
  return result;
}

uint64_t sub_23FF5102C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aYB, a1);

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23FF51080(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aYB, a1);

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_23FF510D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23FFD996C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23FF51158@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23FF51144();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23FF51190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_23FFDAD50, a1);

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23FF511E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_23FFDAD50, a1);

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_23FF51238()
{
  sub_23FFD9A2C();
  MEMORY[0x245CB41F0](0);
  return sub_23FFD9A7C();
}

uint64_t sub_23FF5127C()
{
  sub_23FFD9A2C();
  MEMORY[0x245CB41F0](0);
  return sub_23FFD9A7C();
}

uint64_t sub_23FF512BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aB_22, a1);

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23FF51310(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aB_22, a1);

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MarketplaceKitServiceResult.encode(to:)(void *a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v45 = type metadata accessor for MarketplaceKitServiceResult.FailureCodingKeys(255, v5, v4, v6);
  WitnessTable = swift_getWitnessTable(byte_23FFDAD50, v45);
  v7 = sub_23FFD994C();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v34 - v8;
  v42 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v42);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MarketplaceKitServiceResult.SuccessCodingKeys(255, v5, v4, v6);
  v11 = swift_getWitnessTable(aB_22, v10);
  v38 = v10;
  v36 = v11;
  v12 = sub_23FFD994C();
  v40 = *(v12 - 8);
  v41 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v37 = &v34 - v14;
  v39 = *(v5 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v35 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 - 1);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v6;
  v50 = v5;
  v20 = type metadata accessor for MarketplaceKitServiceResult.CodingKeys(255, v5, v4, v6);
  swift_getWitnessTable(aYB, v20);
  v51 = sub_23FFD994C();
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v22 = &v34 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFD9ACC();
  (*(v17 + 16))(v19, v52, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v19;
    v24 = v44;
    sub_23FF51974(v23, v44);
    v55 = 1;
    v25 = v46;
    v26 = v51;
    sub_23FFD988C();
    sub_23FF522D8(&qword_27E3A21F8, protocol conformance descriptor for MarketplaceKitError);
    v27 = v48;
    sub_23FFD991C();
    (*(v47 + 8))(v25, v27);
    sub_23FF519D8(v24);
  }

  else
  {
    v28 = v39;
    v29 = v35;
    v30 = v50;
    (*(v39 + 32))(v35, v19, v50);
    v54 = 0;
    v31 = v37;
    v26 = v51;
    sub_23FFD988C();
    v32 = v41;
    sub_23FFD991C();
    (*(v40 + 8))(v31, v32);
    (*(v28 + 8))(v29, v30);
  }

  return (*(v53 + 8))(v22, v26);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23FF51974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketplaceKitError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FF519D8(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceKitError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MarketplaceKitServiceResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v77 = a1;
  v55 = a5;
  v8 = type metadata accessor for MarketplaceKitServiceResult.FailureCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(byte_23FFDAD50, v8);
  v65 = v8;
  v60 = sub_23FFD987C();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v66 = &v52 - v9;
  v10 = type metadata accessor for MarketplaceKitServiceResult.SuccessCodingKeys(255, a2, a3, a4);
  v61 = swift_getWitnessTable(aB_22, v10);
  v62 = v10;
  v57 = sub_23FFD987C();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v63 = &v52 - v11;
  v12 = type metadata accessor for MarketplaceKitServiceResult.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable(aYB, v12);
  v69 = sub_23FFD987C();
  v71 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v14 = &v52 - v13;
  v58 = a2;
  v70 = a3;
  v15 = type metadata accessor for MarketplaceKitServiceResult(0, a2, a3, a4);
  v67 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v52 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v52 - v22;
  __swift_project_boxed_opaque_existential_1(v77, v77[3]);
  v68 = v14;
  v24 = v72;
  sub_23FFD9AAC();
  if (!v24)
  {
    v72 = v21;
    v54 = v18;
    v53 = v23;
    v25 = v69;
    v26 = v68;
    *&v73 = sub_23FFD986C();
    v27 = sub_23FFD941C();
    swift_getWitnessTable(MEMORY[0x277D83970], v27);
    *&v75 = sub_23FFD95FC();
    *(&v75 + 1) = v28;
    *&v76 = v29;
    *(&v76 + 1) = v30;
    v31 = sub_23FFD95EC();
    swift_getWitnessTable(MEMORY[0x277D83FC0], v31);
    sub_23FFD951C();
    v32 = v73;
    if (v73 == 2 || (v52 = v75, v73 = v75, v74 = v76, (sub_23FFD952C() & 1) == 0))
    {
      v39 = sub_23FFD970C();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
      *v41 = v15;
      sub_23FFD97AC();
      sub_23FFD96FC();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
      (*(v71 + 8))(v26, v25);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v32)
      {
        LOBYTE(v73) = 1;
        v33 = v66;
        sub_23FFD979C();
        v34 = v67;
        type metadata accessor for MarketplaceKitError(0);
        v35 = v33;
        sub_23FF522D8(&qword_27E3A2208, protocol conformance descriptor for MarketplaceKitError);
        v36 = v54;
        v37 = v60;
        sub_23FFD983C();
        v38 = v71;
        (*(v59 + 8))(v35, v37);
        (*(v38 + 8))(v26, v25);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v47 = v36;
        v48 = v55;
      }

      else
      {
        LOBYTE(v73) = 0;
        v42 = v63;
        sub_23FFD979C();
        v34 = v67;
        v43 = v57;
        sub_23FFD983C();
        v44 = v42;
        v45 = v71;
        (*(v56 + 8))(v44, v43);
        (*(v45 + 8))(v26, v25);
        swift_unknownObjectRelease();
        v49 = v72;
        swift_storeEnumTagMultiPayload();
        v48 = v55;
        v47 = v49;
      }

      v50 = *(v34 + 32);
      v51 = v53;
      v50(v53, v47, v15);
      v50(v48, v51, v15);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v77);
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

uint64_t sub_23FF522D8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for MarketplaceKitError(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23FF52360(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MarketplaceKitError(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23FF523D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E3A2210, &qword_23FFE4010) - 8) + 64);
  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  if (v6 + 1 > v5)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v12 < 2)
    {
LABEL_28:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_28;
  }

LABEL_17:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_23FF5254C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E3A2210, &qword_23FFE4010) - 8) + 64);
  if (v8 <= 0x10)
  {
    v8 = 16;
  }

  if (v8 + 1 > v7)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9 + 1;
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 254) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_42:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v9] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_27;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t getEnumTagSinglePayload for DiscoverRestoresRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DiscoverRestoresRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FeatureFlag(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FeatureFlag(_WORD *result, int a2, int a3)
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

uint64_t AppInstallRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23FFD8FCC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppInstallRequest.adp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppInstallRequest(0) + 20);
  v4 = sub_23FFD8F6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AppInstallRequest(uint64_t a1)
{
  result = qword_27E3A2468;
  if (!qword_27E3A2468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppInstallRequest.oAuthToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppInstallRequest(0) + 24));

  return v1;
}

uint64_t AppInstallRequest.installVerificationToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppInstallRequest(0) + 28));

  return v1;
}

uint64_t AppInstallRequest.accountID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppInstallRequest(0) + 32));

  return v1;
}

uint64_t AppInstallRequest.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppInstallRequest(0) + 36);
  v4 = sub_23FFD906C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_23FF52DD8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x6B6F54687475416FLL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000014;
    }

    if (a1)
    {
      v5 = 7365733;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0x7265727265666572;
    if (a1 != 7)
    {
      v2 = 0x6572616853707061;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x49746E756F636361;
    if (a1 != 4)
    {
      v3 = 1701869940;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_23FF52EFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE200000000000000;
    v12 = 25705;
    v13 = 0x6B6F54687475416FLL;
    v14 = 0xEA00000000006E65;
    if (a1 != 2)
    {
      v13 = 0xD000000000000014;
      v14 = 0x800000023FFEAB20;
    }

    if (a1)
    {
      v12 = 7365733;
      v11 = 0xE300000000000000;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v14;
    }
  }

  else
  {
    v3 = 0xD000000000000014;
    v4 = 0x800000023FFEAB50;
    v5 = 0xE800000000000000;
    v6 = 0x7265727265666572;
    if (a1 != 7)
    {
      v6 = 0x6572616853707061;
      v5 = 0xEB000000004C5255;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x49746E756F636361;
    v8 = 0xE900000000000044;
    if (a1 != 4)
    {
      v7 = 1701869940;
      v8 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xE300000000000000;
        if (v9 != 7365733)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v15 = 0xE200000000000000;
        if (v9 != 25705)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

    if (a2 == 2)
    {
      v15 = 0xEA00000000006E65;
      if (v9 != 0x6B6F54687475416FLL)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v16 = "proofOfDownloadToken";
    goto LABEL_44;
  }

  if (a2 > 5u)
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x7265727265666572)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v15 = 0xEB000000004C5255;
        if (v9 != 0x6572616853707061)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

    v16 = "isMarketplaceInstall";
LABEL_44:
    v15 = (v16 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (a2 == 4)
  {
    v15 = 0xE900000000000044;
    if (v9 != 0x49746E756F636361)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v15 = 0xE400000000000000;
    if (v9 != 1701869940)
    {
LABEL_51:
      v17 = sub_23FFD996C();
      goto LABEL_52;
    }
  }

LABEL_49:
  if (v10 != v15)
  {
    goto LABEL_51;
  }

  v17 = 1;
LABEL_52:

  return v17 & 1;
}

uint64_t sub_23FF531B4()
{
  v1 = *v0;
  sub_23FFD9A2C();
  sub_23FF53204(v3, v1);
  return sub_23FFD9A7C();
}

uint64_t sub_23FF53204(uint64_t a1, unsigned __int8 a2)
{
  sub_23FFD938C();
}

uint64_t sub_23FF53350()
{
  v1 = *v0;
  sub_23FFD9A2C();
  sub_23FF53204(v3, v1);
  return sub_23FFD9A7C();
}

unint64_t sub_23FF53394@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23FF62E78(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_23FF533C4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23FF52DD8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23FF5340C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FF62E78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FF53440(uint64_t a1)
{
  v2 = sub_23FF59664();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF5347C(uint64_t a1)
{
  v2 = sub_23FF59664();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppInstallRequest.init(adp:type:oAuthToken:installVerificationToken:accountID:appShareURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_23FFD8FBC();
  sub_23FF64248(a10, &qword_27E3A2418, &qword_23FFDADC0);
  v17 = type metadata accessor for AppInstallRequest(0);
  v18 = v17[5];
  v19 = sub_23FFD8F6C();
  v30 = *(v19 - 8);
  (*(v30 + 32))(a9 + v18, a1, v19);
  v20 = (a9 + v17[6]);
  *v20 = a3;
  v20[1] = a4;
  v21 = (a9 + v17[7]);
  *v21 = a5;
  v21[1] = a6;
  v22 = (a9 + v17[8]);
  *v22 = a7;
  v22[1] = a8;
  v23 = v17[9];
  v24 = sub_23FFD906C();
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  *(a9 + v17[10]) = 0;
  v29 = *(v30 + 56);
  v29(a9 + v17[11], 1, 1, v19);
  v25 = a9 + v17[12];

  return (v29)(v25, 1, 1, v19);
}

uint64_t sub_23FF53670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_23FFD8F6C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppInstallRequest(0);
  v44 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LinkMetadata(0);
  sub_23FF642A8(a1 + v14[10], v6, &qword_27E3A2418, &qword_23FFDADC0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_23FF63994(a1, type metadata accessor for LinkMetadata);
    sub_23FF64248(v6, &qword_27E3A2418, &qword_23FFDADC0);
    v15 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_23FFD8FBC();
    v16 = &v13[v11[5]];
    v40 = *(v8 + 16);
    v41 = v8 + 16;
    v40(v16, v10, v7);
    v17 = (a1 + v14[7]);
    v19 = *v17;
    v18 = v17[1];
    v20 = &v13[v11[6]];
    *v20 = v19;
    *(v20 + 1) = v18;
    v21 = (a1 + v14[8]);
    v22 = *v21;
    v23 = v21[1];
    v24 = &v13[v11[7]];
    *v24 = v22;
    *(v24 + 1) = v23;
    v25 = (a1 + v14[9]);
    v26 = v25[1];
    v42 = a1;
    v43 = a2;
    if (v26)
    {
      v27 = *v25;
      v38 = v26;
      v39 = v27;
    }

    else
    {
      v38 = 0xE900000000000073;
      v39 = 0x756F6D796E6F6E41;
    }

    v28 = *(v8 + 8);

    v28(v10, v7);
    v29 = &v13[v11[8]];
    v30 = v38;
    *v29 = v39;
    v29[1] = v30;
    v31 = v11[9];
    v32 = *MEMORY[0x277CD4978];
    v33 = sub_23FFD906C();
    (*(*(v33 - 8) + 104))(&v13[v31], v32, v33);
    v13[v11[10]] = 1;
    v34 = v11[11];
    v35 = v42;
    v40(&v13[v34], (v42 + v14[5]), v7);
    (*(v8 + 56))(&v13[v34], 0, 1, v7);
    sub_23FF642A8(v35 + v14[11], &v13[v11[12]], &qword_27E3A2418, &qword_23FFDADC0);
    sub_23FF63994(v35, type metadata accessor for LinkMetadata);
    a2 = v43;
    sub_23FF63F68(v13, v43, type metadata accessor for AppInstallRequest);
    v15 = 0;
  }

  return (*(v44 + 56))(a2, v15, 1, v11);
}

uint64_t sub_23FF53AD0()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23FF53BC8;
  v2 = *(v0 + 16);

  return sub_23FF54AC4(v2, sub_23FF53CBC, 0);
}

uint64_t sub_23FF53BC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_23FF53CBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_246;
  v9 = _Block_copy(v10);

  [a1 requestEDPInstallation:v8 reply:v9];
  _Block_release(v9);
}

uint64_t AppInstallRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2420, &qword_23FFDADD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF59664();
  sub_23FFD9ACC();
  v18 = 0;
  sub_23FFD8FCC();
  sub_23FF647D0(&qword_27E3A2430, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_23FFD991C();
  if (!v1)
  {
    v7 = type metadata accessor for AppInstallRequest(0);
    v17 = 1;
    sub_23FFD8F6C();
    sub_23FF647D0(&qword_27E3A2438, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_23FFD991C();
    v16 = 2;
    sub_23FFD989C();
    v15 = 3;
    sub_23FFD989C();
    v14 = 4;
    sub_23FFD98EC();
    v9 = *(v7 + 36);
    v13 = 5;
    sub_23FFD906C();
    sub_23FF647D0(&qword_27E3A2440, MEMORY[0x277CD4980], MEMORY[0x277CD4988]);
    sub_23FFD991C();
    v12 = 6;
    sub_23FFD98FC();
    v11 = 7;
    sub_23FFD98CC();
    v10 = 8;
    sub_23FFD98CC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AppInstallRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v47 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v48 = v44 - v6;
  v7 = sub_23FFD906C();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23FFD8F6C();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23FFD8FCC();
  v54 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v56 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2448, &qword_23FFDADE0);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v15 = v44 - v14;
  v16 = type metadata accessor for AppInstallRequest(0);
  MEMORY[0x28223BE20](v16);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF59664();
  v58 = v15;
  v19 = v59;
  sub_23FFD9AAC();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v11;
  v21 = v55;
  v45 = v16;
  v59 = v18;
  v68 = 0;
  sub_23FF647D0(&qword_27E3A2450, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v22 = v56;
  sub_23FFD983C();
  v23 = v12;
  (*(v54 + 32))(v59, v22, v12);
  v67 = 1;
  v24 = sub_23FF647D0(&qword_27E3A2458, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v25 = v20;
  v26 = v53;
  sub_23FFD983C();
  v44[1] = v23;
  v56 = v24;
  v27 = v45;
  (*(v52 + 32))(&v59[v45[5]], v25, v26);
  v66 = 2;
  v28 = sub_23FFD97BC();
  v29 = &v59[v27[6]];
  *v29 = v28;
  v29[1] = v30;
  v65 = 3;
  v31 = sub_23FFD97BC();
  v32 = &v59[v27[7]];
  *v32 = v31;
  v32[1] = v33;
  v64 = 4;
  v34 = sub_23FFD980C();
  v35 = &v59[v27[8]];
  *v35 = v34;
  v35[1] = v36;
  v63 = 5;
  sub_23FF647D0(&qword_27E3A2460, MEMORY[0x277CD4980], MEMORY[0x277CD4990]);
  v37 = v49;
  v38 = v51;
  sub_23FFD983C();
  (*(v50 + 32))(&v59[v27[9]], v37, v38);
  v62 = 6;
  v59[v27[10]] = sub_23FFD981C() & 1;
  v61 = 7;
  v39 = v48;
  v40 = v57;
  sub_23FFD97EC();
  sub_23FF64358(v39, &v59[v45[11]], &qword_27E3A2418, &qword_23FFDADC0);
  v60 = 8;
  v41 = v47;
  sub_23FFD97EC();
  (*(v21 + 8))(v58, v40);
  v42 = v59;
  sub_23FF64358(v41, &v59[v45[12]], &qword_27E3A2418, &qword_23FFDADC0);
  sub_23FF596B8(v42, v46);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23FF63994(v42, type metadata accessor for AppInstallRequest);
}

uint64_t sub_23FF54AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x2822009F8](sub_23FF54B10, 0, 0);
}

uint64_t sub_23FF54B10()
{
  type metadata accessor for AppInstallRequest(0);
  sub_23FF647D0(&qword_27E3A27B8, type metadata accessor for AppInstallRequest, protocol conformance descriptor for AppInstallRequest);
  sub_23FF647D0(&qword_27E3A27C0, type metadata accessor for AppInstallRequest, protocol conformance descriptor for AppInstallRequest);
  v1 = sub_23FFD90EC();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 48);
  v11 = *(v0 + 24);
  v6 = sub_23FFD90FC();
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2530, &qword_23FFDB048);
  *v8 = v0;
  v8[1] = sub_23FF54D28;

  return MEMORY[0x2822008A0](v0 + 104, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF64818, v7, v9);
}

uint64_t sub_23FF54D28()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_23FF64A20;
  }

  else
  {

    v3 = sub_23FF64A98;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF54E4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 40) = a4;
  *(v6 + 64) = *v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  return MEMORY[0x2822009F8](sub_23FF54EA0, 0, 0);
}

uint64_t sub_23FF54EA0()
{
  sub_23FF64710();
  sub_23FF64764();
  v1 = sub_23FFD90EC();
  *(v0 + 72) = v1;
  *(v0 + 80) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 64);
  v11 = *(v0 + 40);
  v6 = sub_23FFD90FC();
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2530, &qword_23FFDB048);
  *v8 = v0;
  v8[1] = sub_23FF55058;

  return MEMORY[0x2822008A0](v0 + 33, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF647B8, v7, v9);
}

uint64_t sub_23FF55058()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_23FF64A30;
  }

  else
  {

    v3 = sub_23FF64A9C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF5517C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[4] = a3;
  v5[7] = *v4;
  v5[2] = a1;
  v5[3] = a2;
  return MEMORY[0x2822009F8](sub_23FF551CC, 0, 0);
}

uint64_t sub_23FF551CC()
{
  sub_23FF64558();
  sub_23FF645AC();
  v1 = sub_23FFD90EC();
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 56);
  v11 = *(v0 + 32);
  v6 = sub_23FFD90FC();
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2530, &qword_23FFDB048);
  *v8 = v0;
  v8[1] = sub_23FF55384;

  return MEMORY[0x2822008A0](v0 + 112, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF64600, v7, v9);
}

uint64_t sub_23FF55384()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_23FF55510;
  }

  else
  {

    v3 = sub_23FF554A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF554A8()
{
  sub_23FF62F84(*(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 112);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23FF55510()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  sub_23FF62F84(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23FF55594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[3] = a2;
  v4[6] = *v3;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_23FF555E4, 0, 0);
}

uint64_t sub_23FF555E4()
{
  sub_23FF64498();
  sub_23FF644EC();
  v1 = sub_23FFD90EC();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 48);
  v11 = *(v0 + 24);
  v6 = sub_23FFD90FC();
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2530, &qword_23FFDB048);
  *v8 = v0;
  v8[1] = sub_23FF5579C;

  return MEMORY[0x2822008A0](v0 + 104, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF64540, v7, v9);
}

uint64_t sub_23FF5579C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_23FF55928;
  }

  else
  {

    v3 = sub_23FF558C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF558C0()
{
  sub_23FF62F84(*(v0 + 56), *(v0 + 64));
  v1 = *(v0 + 104);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23FF55928()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  sub_23FF62F84(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23FF559AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 40) = a4;
  *(v6 + 64) = *v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  return MEMORY[0x2822009F8](sub_23FF55A00, 0, 0);
}

uint64_t sub_23FF55A00()
{
  sub_23FF643D8();
  sub_23FF6442C();
  v1 = sub_23FFD90EC();
  *(v0 + 72) = v1;
  *(v0 + 80) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 64);
  v11 = *(v0 + 40);
  v6 = sub_23FFD90FC();
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2530, &qword_23FFDB048);
  *v8 = v0;
  v8[1] = sub_23FF55BB8;

  return MEMORY[0x2822008A0](v0 + 33, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF64480, v7, v9);
}

uint64_t sub_23FF55BB8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_23FF55D44;
  }

  else
  {

    v3 = sub_23FF55CDC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF55CDC()
{
  sub_23FF62F84(*(v0 + 72), *(v0 + 80));
  v1 = *(v0 + 33);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23FF55D44()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  sub_23FF62F84(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23FF55DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[3] = a2;
  v4[6] = *v3;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_23FF55E18, 0, 0);
}

uint64_t sub_23FF55E18()
{
  v1 = sub_23FFD90EC();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 48);
  v11 = *(v0 + 24);
  v6 = sub_23FFD90FC();
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2530, &qword_23FFDB048);
  *v8 = v0;
  v8[1] = sub_23FF54D28;

  return MEMORY[0x2822008A0](v0 + 104, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF643C0, v7, v9);
}

uint64_t sub_23FF55FCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = v6;
  *(v7 + 40) = a1;
  *(v7 + 48) = a5;
  *(v7 + 72) = *v6;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  return MEMORY[0x2822009F8](sub_23FF56020, 0, 0);
}

uint64_t sub_23FF56020()
{
  sub_23FF64090();
  sub_23FF640E4();
  v1 = sub_23FFD90EC();
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 72);
  v12 = *(v0 + 48);
  v6 = sub_23FFD90FC();
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2748, &qword_23FFDB188);
  *v8 = v0;
  v8[1] = sub_23FF561D8;
  v10 = *(v0 + 40);

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF64138, v7, v9);
}

uint64_t sub_23FF561D8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_23FF64A1C;
  }

  else
  {

    v3 = sub_23FF64A24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF562FC(_OWORD *a1, uint64_t a2, uint64_t a3)
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
  return MEMORY[0x2822009F8](sub_23FF56358, 0, 0);
}

uint64_t sub_23FF56358()
{
  sub_23FF63FD0();
  sub_23FF64024();
  v1 = sub_23FFD90EC();
  *(v0 + 112) = v1;
  *(v0 + 120) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 104);
  v11 = *(v0 + 80);
  v6 = sub_23FFD90FC();
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2530, &qword_23FFDB048);
  *v8 = v0;
  v8[1] = sub_23FF56510;

  return MEMORY[0x2822008A0](v0 + 160, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF64078, v7, v9);
}

uint64_t sub_23FF56510()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_23FF5669C;
  }

  else
  {

    v3 = sub_23FF56634;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF56634()
{
  sub_23FF62F84(*(v0 + 112), *(v0 + 120));
  v1 = *(v0 + 160);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23FF5669C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);

  sub_23FF62F84(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23FF56720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a1;
  v7[6] = a5;
  v7[9] = *v6;
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  return MEMORY[0x2822009F8](sub_23FF56774, 0, 0);
}

uint64_t sub_23FF56774()
{
  sub_23FF63DB0();
  sub_23FF63E04();
  v1 = sub_23FFD90EC();
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 72);
  v12 = *(v0 + 48);
  v6 = sub_23FFD90FC();
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
  v8[1] = sub_23FF56920;
  v10 = *(v0 + 40);

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF63E58, v7, v9);
}

uint64_t sub_23FF56920()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_23FF56AA8;
  }

  else
  {

    v3 = sub_23FF56A44;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF56A44()
{
  sub_23FF62F84(v0[10], v0[11]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_23FF56AA8()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);

  sub_23FF62F84(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23FF56B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  return MEMORY[0x2822009F8](sub_23FF56B90, 0, 0);
}

uint64_t sub_23FF56B90()
{
  sub_23FF63CF0();
  sub_23FF63D44();
  v1 = sub_23FFD90EC();
  *(v0 + 112) = v1;
  *(v0 + 120) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 104);
  v11 = *(v0 + 80);
  v6 = sub_23FFD90FC();
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
  v8[1] = sub_23FF56D38;
  v9 = *(v0 + 72);

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF63D98, v7, &type metadata for FetchDataResponse);
}

uint64_t sub_23FF56D38()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_23FF5669C;
  }

  else
  {

    v3 = sub_23FF56E5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF56E5C()
{
  sub_23FF62F84(v0[14], v0[15]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_23FF56EC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
  return MEMORY[0x2822009F8](sub_23FF56F24, 0, 0);
}

uint64_t sub_23FF56F24()
{
  sub_23FF63C30();
  sub_23FF63C84();
  v1 = sub_23FFD90EC();
  *(v0 + 104) = v1;
  *(v0 + 112) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 96);
  v11 = *(v0 + 72);
  v6 = sub_23FFD90FC();
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2530, &qword_23FFDB048);
  *v8 = v0;
  v8[1] = sub_23FF570DC;

  return MEMORY[0x2822008A0](v0 + 65, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF63CD8, v7, v9);
}

uint64_t sub_23FF570DC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_23FF57268;
  }

  else
  {

    v3 = sub_23FF57200;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF57200()
{
  sub_23FF62F84(*(v0 + 104), *(v0 + 112));
  v1 = *(v0 + 65);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23FF57268()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);

  sub_23FF62F84(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23FF572EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[6] = a4;
  v6[9] = *v5;
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  return MEMORY[0x2822009F8](sub_23FF57340, 0, 0);
}

uint64_t sub_23FF57340()
{
  sub_23FF63A78();
  sub_23FF63ACC();
  v1 = sub_23FFD90EC();
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 72);
  v11 = *(v0 + 48);
  v6 = sub_23FFD90FC();
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A26B0, &qword_23FFDB128);
  *v8 = v0;
  v8[1] = sub_23FF574F8;

  return MEMORY[0x2822008A0](v0 + 40, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF63B20, v7, v9);
}

uint64_t sub_23FF574F8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_23FF56AA8;
  }

  else
  {

    v3 = sub_23FF5761C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF5761C()
{
  sub_23FF62F84(v0[10], v0[11]);
  v1 = v0[5];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_23FF57684(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 40) = *v3;
  *(v4 + 97) = a1 & 1;
  return MEMORY[0x2822009F8](sub_23FF576D8, 0, 0);
}

uint64_t sub_23FF576D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2530, &qword_23FFDB048);
  sub_23FF639F4(&qword_27E3A2690, MEMORY[0x277D84AB8], MEMORY[0x277D84F58]);
  sub_23FF639F4(&qword_27E3A2698, MEMORY[0x277D84AA0], MEMORY[0x277D84F40]);
  v2 = sub_23FFD90EC();
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  v4 = v2;
  v5 = v3;
  v6 = *(v0 + 40);
  v11 = *(v0 + 16);
  v7 = sub_23FFD90FC();
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
  v9[1] = sub_23FF578D8;

  return MEMORY[0x2822008A0](v0 + 96, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF63A60, v8, v1);
}

uint64_t sub_23FF578D8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_23FF64A34;
  }

  else
  {

    v3 = sub_23FF64AA0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF579FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = v6;
  *(v7 + 40) = a1;
  *(v7 + 48) = a5;
  *(v7 + 72) = *v6;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4 & 1;
  return MEMORY[0x2822009F8](sub_23FF57A54, 0, 0);
}

uint64_t sub_23FF57A54()
{
  sub_23FF63898();
  sub_23FF638EC();
  v1 = sub_23FFD90EC();
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 72);
  v11 = *(v0 + 48);
  v6 = sub_23FFD90FC();
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
  v8[1] = sub_23FF56920;
  v9 = *(v0 + 40);

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF63940, v7, &type metadata for PerformActionResponse);
}

uint64_t sub_23FF57BFC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  *(v5 + 48) = *v4;
  *(v5 + 104) = a2 & 1;
  return MEMORY[0x2822009F8](sub_23FF57C50, 0, 0);
}

uint64_t sub_23FF57C50()
{
  sub_23FF636E0();
  sub_23FF63734();
  v1 = sub_23FFD90EC();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 48);
  v11 = *(v0 + 24);
  v6 = sub_23FFD90FC();
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
  v8[1] = sub_23FF57DF8;
  v9 = *(v0 + 16);

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF63788, v7, &type metadata for FetchDataResponse);
}

uint64_t sub_23FF57DF8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_23FF55928;
  }

  else
  {

    v3 = sub_23FF57F1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF57F1C()
{
  sub_23FF62F84(v0[7], v0[8]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_23FF57F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x2822009F8](sub_23FF57FCC, 0, 0);
}

uint64_t sub_23FF57FCC()
{
  type metadata accessor for SetPublicDataRequest(0);
  sub_23FF647D0(&qword_27E3A2610, type metadata accessor for SetPublicDataRequest, protocol conformance descriptor for SetPublicDataRequest);
  sub_23FF647D0(&qword_27E3A2618, type metadata accessor for SetPublicDataRequest, protocol conformance descriptor for SetPublicDataRequest);
  v1 = sub_23FFD90EC();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 48);
  v11 = *(v0 + 24);
  v6 = sub_23FFD90FC();
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2530, &qword_23FFDB048);
  *v8 = v0;
  v8[1] = sub_23FF5579C;

  return MEMORY[0x2822008A0](v0 + 104, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF636C8, v7, v9);
}

uint64_t sub_23FF581E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
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
  return MEMORY[0x2822009F8](sub_23FF5823C, 0, 0);
}

uint64_t sub_23FF5823C()
{
  sub_23FF63508();
  sub_23FF6355C();
  v1 = sub_23FFD90EC();
  *(v0 + 88) = v1;
  *(v0 + 96) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 80);
  v11 = *(v0 + 56);
  v6 = sub_23FFD90FC();
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
  v8[1] = sub_23FF583E4;
  v9 = *(v0 + 48);

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF635B0, v7, &type metadata for PerformPrivateActionResponse);
}

uint64_t sub_23FF583E4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_23FF5856C;
  }

  else
  {

    v3 = sub_23FF58508;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF58508()
{
  sub_23FF62F84(v0[11], v0[12]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_23FF5856C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  sub_23FF62F84(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23FF585F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x2822009F8](sub_23FF5863C, 0, 0);
}

uint64_t sub_23FF5863C()
{
  type metadata accessor for ManifestValidationRequest(0);
  sub_23FF647D0(&qword_27E3A25A8, type metadata accessor for ManifestValidationRequest, protocol conformance descriptor for ManifestValidationRequest);
  sub_23FF647D0(&qword_27E3A25B0, type metadata accessor for ManifestValidationRequest, protocol conformance descriptor for ManifestValidationRequest);
  v1 = sub_23FFD90EC();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 48);
  v11 = *(v0 + 24);
  v6 = sub_23FFD90FC();
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2530, &qword_23FFDB048);
  *v8 = v0;
  v8[1] = sub_23FF54D28;

  return MEMORY[0x2822008A0](v0 + 104, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF634F0, v7, v9);
}

uint64_t sub_23FF58854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a1;
  v6[5] = a4;
  v6[8] = *v5;
  v6[2] = a2;
  v6[3] = a3;
  return MEMORY[0x2822009F8](sub_23FF588A4, 0, 0);
}

uint64_t sub_23FF588A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2560, &qword_23FFDB070);
  sub_23FF63374(&qword_27E3A2568, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
  sub_23FF63374(&qword_27E3A2570, MEMORY[0x277D837D8], MEMORY[0x277D84F40]);
  v1 = sub_23FFD90EC();
  *(v0 + 72) = v1;
  *(v0 + 80) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 64);
  v12 = *(v0 + 40);
  v6 = sub_23FFD90FC();
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2578, &qword_23FFDB078);
  *v8 = v0;
  v8[1] = sub_23FF58AB8;
  v10 = *(v0 + 32);

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF633E0, v7, v9);
}

uint64_t sub_23FF58AB8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_23FF55D44;
  }

  else
  {

    v3 = sub_23FF58BDC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF58BDC()
{
  sub_23FF62F84(v0[9], v0[10]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_23FF58C40(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 40) = *v3;
  *(v4 + 97) = a1;
  return MEMORY[0x2822009F8](sub_23FF58C90, 0, 0);
}

uint64_t sub_23FF58C90()
{
  v1 = sub_23FFD90EC();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 40);
  v11 = *(v0 + 16);
  v6 = sub_23FFD90FC();
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2530, &qword_23FFDB048);
  *v8 = v0;
  v8[1] = sub_23FF58E44;

  return MEMORY[0x2822008A0](v0 + 96, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF6335C, v7, v9);
}

uint64_t sub_23FF58E44()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_23FF58FD0;
  }

  else
  {

    v3 = sub_23FF58F68;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF58F68()
{
  sub_23FF62F84(*(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23FF58FD0()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_23FF62F84(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23FF59054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  return MEMORY[0x2822009F8](sub_23FF590A8, 0, 0);
}

uint64_t sub_23FF590A8()
{
  sub_23FF6318C();
  sub_23FF631E0();
  v1 = sub_23FFD90EC();
  *(v0 + 88) = v1;
  *(v0 + 96) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 80);
  v11 = *(v0 + 56);
  v6 = sub_23FFD90FC();
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
  v8[1] = sub_23FF583E4;
  v9 = *(v0 + 48);

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF63234, v7, &type metadata for SKTransactionReportTokenResponse);
}

uint64_t sub_23FF59250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[5] = a4;
  v6[8] = *v5;
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  return MEMORY[0x2822009F8](sub_23FF592A4, 0, 0);
}

uint64_t sub_23FF592A4()
{
  sub_23FF62EC4();
  sub_23FF62F18();
  v1 = sub_23FFD90EC();
  *(v0 + 72) = v1;
  *(v0 + 80) = v2;
  v3 = v1;
  v4 = v2;
  v5 = *(v0 + 64);
  v11 = *(v0 + 40);
  v6 = sub_23FFD90FC();
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
  v8[1] = sub_23FF59450;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 120, 0, 0, 0xD000000000000020, 0x800000023FFEAD70, sub_23FF62F6C, v7, v9);
}

uint64_t sub_23FF59450()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_23FF595DC;
  }

  else
  {

    v3 = sub_23FF59574;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF59574()
{
  sub_23FF62F84(*(v0 + 72), *(v0 + 80));
  v1 = *(v0 + 120);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23FF595DC()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  sub_23FF62F84(v2, v1);

  v3 = *(v0 + 8);

  return v3(0);
}

unint64_t sub_23FF59664()
{
  result = qword_27E3A2428;
  if (!qword_27E3A2428)
  {
    result = swift_getWitnessTable(byte_23FFDAF90, &type metadata for AppInstallRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2428);
  }

  return result;
}

uint64_t sub_23FF596B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInstallRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23FF59744(uint64_t a1)
{
  sub_23FFD8FCC();
  if (v1 <= 0x3F)
  {
    sub_23FFD8F6C();
    if (v2 <= 0x3F)
    {
      sub_23FF59828();
      if (v3 <= 0x3F)
      {
        sub_23FFD906C();
        if (v4 <= 0x3F)
        {
          sub_23FF59878(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23FF59828()
{
  if (!qword_27E3A2478)
  {
    v0 = sub_23FFD95CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E3A2478);
    }
  }
}

void sub_23FF59878(uint64_t a1)
{
  if (!qword_27E3A2480)
  {
    sub_23FFD8F6C();
    v1 = sub_23FFD95CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E3A2480);
    }
  }
}

uint64_t getEnumTagSinglePayload for AppInstallRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppInstallRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23FF59A24()
{
  result = qword_27E3A2488;
  if (!qword_27E3A2488)
  {
    result = swift_getWitnessTable(aA_10, &type metadata for AppInstallRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2488);
  }

  return result;
}

unint64_t sub_23FF59A7C()
{
  result = qword_27E3A2490;
  if (!qword_27E3A2490)
  {
    result = swift_getWitnessTable(byte_23FFDAEA0, &type metadata for AppInstallRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2490);
  }

  return result;
}

unint64_t sub_23FF59AD4()
{
  result = qword_27E3A2498;
  if (!qword_27E3A2498)
  {
    result = swift_getWitnessTable(byte_23FFDAEC8, &type metadata for AppInstallRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2498);
  }

  return result;
}

uint64_t sub_23FF59B28(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2538, &qword_23FFDB050);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF64A90;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_240;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF64A28, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF59E7C(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2538, &qword_23FFDB050);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF64A90;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_229;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF64A28, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5A1D0(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2538, &qword_23FFDB050);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF64618;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_218;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF6462C, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5A524(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2538, &qword_23FFDB050);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF64A90;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_207;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF64A28, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5A878(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2538, &qword_23FFDB050);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF64A90;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_196;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF64A28, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5ABCC(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2538, &qword_23FFDB050);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF64A90;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_185;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF64A28, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5AF20(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2750, &qword_23FFDB190);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF64150;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_174;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF64164, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5B274(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2538, &qword_23FFDB050);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF64A90;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_163;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF64A28, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5B5C8(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2700, &qword_23FFDB160);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF63E70;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_152;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF63E84, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5B91C(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2630, &qword_23FFDB0E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF64A94;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_141;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF64A2C, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5BC70(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2538, &qword_23FFDB050);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF64A90;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_130;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF64A28, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5BFC4(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A26B8, &qword_23FFDB130);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF63B38;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_119;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF63B4C, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5C318(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2538, &qword_23FFDB050);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF64A90;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_108;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF64A28, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5C66C(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2668, &qword_23FFDB100);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF63958;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_97;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF6396C, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5C9C0(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2630, &qword_23FFDB0E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF637A0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_86;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF637B4, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5CD14(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2538, &qword_23FFDB050);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF64A90;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_75;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF64A28, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5D068(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A25C8, &qword_23FFDB0A8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF635C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_64;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF635DC, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5D3BC(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2538, &qword_23FFDB050);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF64A90;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_53;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF64A28, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5D710(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2580, &qword_23FFDB080);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF633F8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_42;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF6340C, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5DA64(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2538, &qword_23FFDB050);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF64A90;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_31;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF64A28, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5DDB8(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2508, &qword_23FFDB028);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF63264;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_20;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF63278, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5E10C(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B0, &unk_23FFDAFE8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
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
  aBlock[4] = sub_23FF62FD8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(aBlock, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (swift_dynamicCast())
  {
    v21 = v34;
    v27(v13, v33, v9);
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v18(v23 + v15, v13, v9);
    v24 = v29;
    *(v23 + v22) = v28;
    v32(v21, v24, v30, sub_23FF63060, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v25 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v35[0] = v25;
    sub_23FFD943C();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23FF5E460(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = sub_23FFD929C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23FFD923C();
  v11 = a1;
  v12 = sub_23FFD927C();
  v13 = sub_23FFD955C();

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
    _os_log_impl(&dword_23FF4C000, v12, v13, "Error fetching remote object proxy: %{public}@", v15, 0xCu);
    sub_23FF64248(v16, &qword_27E3A24F0, &unk_23FFDD2B0);
    MEMORY[0x245CB48E0](v16, -1, -1);
    a3 = v21[0];
    MEMORY[0x245CB48E0](v15, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  type metadata accessor for MarketplaceKitError(0);
  sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
  v19 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  v21[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_23FFD943C();
}

void sub_23FF5E6C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_23FF5E728(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2670, &qword_23FFDB108);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  sub_23FF60134(a2, &v7 - v4);
  sub_23FF6271C(v5, &qword_27E3A2670, &qword_23FFDB108, &qword_27E3A2668, &qword_23FFDB100);
  return sub_23FF64248(v5, &qword_27E3A2670, &qword_23FFDB108);
}

uint64_t sub_23FF5E7F8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A25D0, &qword_23FFDB0B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  sub_23FF60A94(a2, &v7 - v4);
  sub_23FF6271C(v5, &qword_27E3A25D0, &qword_23FFDB0B0, &qword_27E3A25C8, &qword_23FFDB0A8);
  return sub_23FF64248(v5, &qword_27E3A25D0, &qword_23FFDB0B0);
}

uint64_t sub_23FF5E8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t), void (*a8)(char *))
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v18 - v15;
  a7(a1, a2);
  a8(v16);
  return sub_23FF64248(v16, a5, a6);
}

uint64_t sub_23FF5E994@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[3] = a2;
  v17 = a3;
  v3 = sub_23FFD929C();
  v15[1] = *(v3 - 8);
  v15[2] = v3;
  MEMORY[0x28223BE20](v3);
  v15[0] = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v5);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2540, &qword_23FFDB058);
  MEMORY[0x28223BE20](v16);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2548, &qword_23FFDB060);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - v12;
  sub_23FF64310(&qword_27E3A2550, &qword_27E3A2548, &qword_23FFDB060, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FF64310(&qword_27E3A2558, &qword_27E3A2548, &qword_23FFDB060, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FFD90DC();
  sub_23FF64358(v13, v11, &qword_27E3A2548, &qword_23FFDB060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  else
  {
    *v7 = *v11;
  }

  swift_storeEnumTagMultiPayload();
  return sub_23FF64358(v7, v17, &qword_27E3A2540, &qword_23FFDB058);
}

uint64_t sub_23FF5EE48@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[3] = a2;
  v19 = a3;
  v3 = sub_23FFD929C();
  v17[1] = *(v3 - 8);
  v17[2] = v3;
  MEMORY[0x28223BE20](v3);
  v17[0] = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v5);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2758, &qword_23FFDB198);
  MEMORY[0x28223BE20](v18);
  v7 = (v17 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2760, &qword_23FFDB1A0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  sub_23FF64310(&qword_27E3A2768, &qword_27E3A2760, &qword_23FFDB1A0, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FF64310(&qword_27E3A2770, &qword_27E3A2760, &qword_23FFDB1A0, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FFD90DC();
  sub_23FF64358(v13, v11, &qword_27E3A2760, &qword_23FFDB1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v11, v7, type metadata accessor for MarketplaceKitError);
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
  return sub_23FF64358(v7, v19, &qword_27E3A2758, &qword_23FFDB198);
}

uint64_t sub_23FF5F304@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[4] = a2;
  v19 = a3;
  v3 = sub_23FFD929C();
  v18[1] = *(v3 - 8);
  v18[2] = v3;
  MEMORY[0x28223BE20](v3);
  v18[0] = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v5);
  v18[3] = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2708, &qword_23FFDB168);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2710, &qword_23FFDB170);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;
  sub_23FF64310(&qword_27E3A2718, &qword_27E3A2710, &qword_23FFDB170, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FF64310(&qword_27E3A2720, &qword_27E3A2710, &qword_23FFDB170, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FFD90DC();
  sub_23FF64358(v15, v13, &qword_27E3A2710, &qword_23FFDB170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for MarketplaceKitError;
  }

  else
  {
    v16 = type metadata accessor for SecureButtonActionResponse;
  }

  sub_23FF63F68(v13, v9, v16);
  swift_storeEnumTagMultiPayload();
  return sub_23FF64358(v9, v19, &qword_27E3A2708, &qword_23FFDB168);
}

uint64_t sub_23FF5F7C4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[3] = a2;
  v18 = a3;
  v3 = sub_23FFD929C();
  v16[1] = *(v3 - 8);
  v16[2] = v3;
  MEMORY[0x28223BE20](v3);
  v16[0] = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v5);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2638, &qword_23FFDB0E8);
  MEMORY[0x28223BE20](v17);
  v7 = v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2640, &qword_23FFDB0F0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  sub_23FF64310(&qword_27E3A2648, &qword_27E3A2640, &qword_23FFDB0F0, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FF64310(&qword_27E3A2650, &qword_27E3A2640, &qword_23FFDB0F0, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FFD90DC();
  sub_23FF64358(v13, v11, &qword_27E3A2640, &qword_23FFDB0F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  else
  {
    v14 = v11[16];
    *v7 = *v11;
    v7[16] = v14;
  }

  swift_storeEnumTagMultiPayload();
  return sub_23FF64358(v7, v18, &qword_27E3A2638, &qword_23FFDB0E8);
}

uint64_t sub_23FF5FC80@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[3] = a2;
  v17 = a3;
  v3 = sub_23FFD929C();
  v15[1] = *(v3 - 8);
  v15[2] = v3;
  MEMORY[0x28223BE20](v3);
  v15[0] = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v5);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A26C0, &qword_23FFDB138);
  MEMORY[0x28223BE20](v16);
  v7 = (v15 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A26C8, &qword_23FFDB140);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = v15 - v12;
  sub_23FF64310(&qword_27E3A26D0, &qword_27E3A26C8, &qword_23FFDB140, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FF64310(&qword_27E3A26D8, &qword_27E3A26C8, &qword_23FFDB140, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FFD90DC();
  sub_23FF64358(v13, v11, &qword_27E3A26C8, &qword_23FFDB140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  else
  {
    *v7 = *v11;
  }

  swift_storeEnumTagMultiPayload();
  return sub_23FF64358(v7, v17, &qword_27E3A26C0, &qword_23FFDB138);
}

uint64_t sub_23FF60134@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[3] = a2;
  v17 = a3;
  v3 = sub_23FFD929C();
  v15[1] = *(v3 - 8);
  v15[2] = v3;
  MEMORY[0x28223BE20](v3);
  v15[0] = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v5);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2670, &qword_23FFDB108);
  MEMORY[0x28223BE20](v16);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2678, &qword_23FFDB110);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - v12;
  sub_23FF64310(&qword_27E3A2680, &qword_27E3A2678, &qword_23FFDB110, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FF64310(&qword_27E3A2688, &qword_27E3A2678, &qword_23FFDB110, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FFD90DC();
  sub_23FF64358(v13, v11, &qword_27E3A2678, &qword_23FFDB110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  swift_storeEnumTagMultiPayload();
  return sub_23FF64358(v7, v17, &qword_27E3A2670, &qword_23FFDB108);
}

uint64_t sub_23FF605E0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[3] = a2;
  v17 = a3;
  v3 = sub_23FFD929C();
  v15[1] = *(v3 - 8);
  v15[2] = v3;
  MEMORY[0x28223BE20](v3);
  v15[0] = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v5);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A25F0, &qword_23FFDB0C0);
  MEMORY[0x28223BE20](v16);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A25F8, &qword_23FFDB0C8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - v12;
  sub_23FF64310(&qword_27E3A2600, &qword_27E3A25F8, &qword_23FFDB0C8, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FF64310(&qword_27E3A2608, &qword_27E3A25F8, &qword_23FFDB0C8, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FFD90DC();
  sub_23FF64358(v13, v11, &qword_27E3A25F8, &qword_23FFDB0C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  else
  {
    *v7 = *v11;
  }

  swift_storeEnumTagMultiPayload();
  return sub_23FF64358(v7, v17, &qword_27E3A25F0, &qword_23FFDB0C0);
}

uint64_t sub_23FF60A94@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[3] = a2;
  v17 = a3;
  v3 = sub_23FFD929C();
  v15[1] = *(v3 - 8);
  v15[2] = v3;
  MEMORY[0x28223BE20](v3);
  v15[0] = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v5);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A25D0, &qword_23FFDB0B0);
  MEMORY[0x28223BE20](v16);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A25D8, &qword_23FFDB0B8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - v12;
  sub_23FF64310(&qword_27E3A25E0, &qword_27E3A25D8, &qword_23FFDB0B8, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FF64310(&qword_27E3A25E8, &qword_27E3A25D8, &qword_23FFDB0B8, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FFD90DC();
  sub_23FF64358(v13, v11, &qword_27E3A25D8, &qword_23FFDB0B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  swift_storeEnumTagMultiPayload();
  return sub_23FF64358(v7, v17, &qword_27E3A25D0, &qword_23FFDB0B0);
}

uint64_t sub_23FF60F40@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[3] = a2;
  v18 = a3;
  v3 = sub_23FFD929C();
  v16[1] = *(v3 - 8);
  v16[2] = v3;
  MEMORY[0x28223BE20](v3);
  v16[0] = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v5);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2588, &qword_23FFDB088);
  MEMORY[0x28223BE20](v17);
  v7 = (v16 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2590, &qword_23FFDB090);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  sub_23FF64310(&qword_27E3A2598, &qword_27E3A2590, &qword_23FFDB090, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FF64310(&qword_27E3A25A0, &qword_27E3A2590, &qword_23FFDB090, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FFD90DC();
  sub_23FF64358(v13, v11, &qword_27E3A2590, &qword_23FFDB090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  else
  {
    v14 = v11[1];
    *v7 = *v11;
    v7[1] = v14;
  }

  swift_storeEnumTagMultiPayload();
  return sub_23FF64358(v7, v18, &qword_27E3A2588, &qword_23FFDB088);
}

uint64_t sub_23FF613F4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[3] = a2;
  v18 = a3;
  v3 = sub_23FFD929C();
  v16[1] = *(v3 - 8);
  v16[2] = v3;
  MEMORY[0x28223BE20](v3);
  v16[0] = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v5);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2510, &qword_23FFDB030);
  MEMORY[0x28223BE20](v17);
  v7 = (v16 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2518, &qword_23FFDB038);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  sub_23FF64310(&qword_27E3A2520, &qword_27E3A2518, &qword_23FFDB038, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FF64310(&qword_27E3A2528, &qword_27E3A2518, &qword_23FFDB038, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FFD90DC();
  sub_23FF64358(v13, v11, &qword_27E3A2518, &qword_23FFDB038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  else
  {
    v14 = v11[1];
    *v7 = *v11;
    v7[1] = v14;
  }

  swift_storeEnumTagMultiPayload();
  return sub_23FF64358(v7, v18, &qword_27E3A2510, &qword_23FFDB030);
}

uint64_t sub_23FF618A8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[3] = a2;
  v17 = a3;
  v3 = sub_23FFD929C();
  v15[1] = *(v3 - 8);
  v15[2] = v3;
  MEMORY[0x28223BE20](v3);
  v15[0] = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v5);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24C8, &qword_23FFDB000);
  MEMORY[0x28223BE20](v16);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24D0, &qword_23FFDB008);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - v12;
  sub_23FF64310(&qword_27E3A24D8, &qword_27E3A24D0, &qword_23FFDB008, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FF64310(&qword_27E3A24E0, &qword_27E3A24D0, &qword_23FFDB008, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FFD90DC();
  sub_23FF64358(v13, v11, &qword_27E3A24D0, &qword_23FFDB008);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v11, v7, type metadata accessor for MarketplaceKitError);
  }

  else
  {
    *v7 = *v11;
  }

  swift_storeEnumTagMultiPayload();
  return sub_23FF64358(v7, v17, &qword_27E3A24C8, &qword_23FFDB000);
}

uint64_t sub_23FF61D5C(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2540, &qword_23FFDB058);
  MEMORY[0x28223BE20](v5);
  v7 = &v11[-v6];
  sub_23FF642A8(a1, &v11[-v6], &qword_27E3A2540, &qword_23FFDB058);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v7, v4, type metadata accessor for MarketplaceKitError);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v8 = swift_allocError();
    sub_23FF63F68(v4, v9, type metadata accessor for MarketplaceKitError);
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2538, &qword_23FFDB050);
    return sub_23FFD943C();
  }

  else
  {
    v11[7] = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2538, &qword_23FFDB050);
    return sub_23FFD944C();
  }
}

uint64_t sub_23FF61F38(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2758, &qword_23FFDB198);
  MEMORY[0x28223BE20](v5);
  v7 = (v13 - v6);
  sub_23FF642A8(a1, v13 - v6, &qword_27E3A2758, &qword_23FFDB198);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v7, v4, type metadata accessor for MarketplaceKitError);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v8 = swift_allocError();
    sub_23FF63F68(v4, v9, type metadata accessor for MarketplaceKitError);
    *&v13[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2750, &qword_23FFDB190);
    return sub_23FFD943C();
  }

  else
  {
    v11 = v7[1];
    v13[0] = *v7;
    v13[1] = v11;
    v12 = v7[3];
    v13[2] = v7[2];
    v13[3] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2750, &qword_23FFDB190);
    return sub_23FFD944C();
  }
}

uint64_t sub_23FF6211C(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v2);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SecureButtonActionResponse(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2708, &qword_23FFDB168);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  sub_23FF642A8(a1, v14 - v9, &qword_27E3A2708, &qword_23FFDB168);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v10, v4, type metadata accessor for MarketplaceKitError);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v11 = swift_allocError();
    sub_23FF63F68(v4, v12, type metadata accessor for MarketplaceKitError);
    v14[1] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2700, &qword_23FFDB160);
    return sub_23FFD943C();
  }

  else
  {
    sub_23FF63F68(v10, v7, type metadata accessor for SecureButtonActionResponse);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2700, &qword_23FFDB160);
    return sub_23FFD944C();
  }
}

uint64_t sub_23FF6235C(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2638, &qword_23FFDB0E8);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_23FF642A8(a1, &v12 - v6, &qword_27E3A2638, &qword_23FFDB0E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v7, v4, type metadata accessor for MarketplaceKitError);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v8 = swift_allocError();
    sub_23FF63F68(v4, v9, type metadata accessor for MarketplaceKitError);
    *&v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2630, &qword_23FFDB0E0);
    return sub_23FFD943C();
  }

  else
  {
    v11 = v7[16];
    v12 = *v7;
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2630, &qword_23FFDB0E0);
    return sub_23FFD944C();
  }
}

uint64_t sub_23FF62540(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A26C0, &qword_23FFDB138);
  MEMORY[0x28223BE20](v5);
  v7 = (&v11 - v6);
  sub_23FF642A8(a1, &v11 - v6, &qword_27E3A26C0, &qword_23FFDB138);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v7, v4, type metadata accessor for MarketplaceKitError);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v8 = swift_allocError();
    sub_23FF63F68(v4, v9, type metadata accessor for MarketplaceKitError);
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A26B8, &qword_23FFDB130);
    return sub_23FFD943C();
  }

  else
  {
    v12 = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A26B8, &qword_23FFDB130);
    return sub_23FFD944C();
  }
}

uint64_t sub_23FF6271C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x28223BE20](v13);
  v15 = v19 - v14;
  sub_23FF642A8(a1, v19 - v14, a2, a3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v15, v12, type metadata accessor for MarketplaceKitError);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v16 = swift_allocError();
    sub_23FF63F68(v12, v17, type metadata accessor for MarketplaceKitError);
    v19[1] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_23FFD943C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_23FFD944C();
  }
}

uint64_t sub_23FF628E4(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2588, &qword_23FFDB088);
  MEMORY[0x28223BE20](v5);
  v7 = (v12 - v6);
  sub_23FF642A8(a1, v12 - v6, &qword_27E3A2588, &qword_23FFDB088);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v7, v4, type metadata accessor for MarketplaceKitError);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v8 = swift_allocError();
    sub_23FF63F68(v4, v9, type metadata accessor for MarketplaceKitError);
    *&v12[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2580, &qword_23FFDB080);
    return sub_23FFD943C();
  }

  else
  {
    v11 = v7[1];
    v12[0] = *v7;
    v12[1] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2580, &qword_23FFDB080);
    return sub_23FFD944C();
  }
}

uint64_t sub_23FF62AC0(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2510, &qword_23FFDB030);
  MEMORY[0x28223BE20](v5);
  v7 = (v12 - v6);
  sub_23FF642A8(a1, v12 - v6, &qword_27E3A2510, &qword_23FFDB030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v7, v4, type metadata accessor for MarketplaceKitError);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v8 = swift_allocError();
    sub_23FF63F68(v4, v9, type metadata accessor for MarketplaceKitError);
    v12[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2508, &qword_23FFDB028);
    return sub_23FFD943C();
  }

  else
  {
    v11 = v7[1];
    v12[0] = *v7;
    v12[1] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2508, &qword_23FFDB028);
    return sub_23FFD944C();
  }
}

uint64_t sub_23FF62C9C(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24C8, &qword_23FFDB000);
  MEMORY[0x28223BE20](v5);
  v7 = &v11[-v6];
  sub_23FF642A8(a1, &v11[-v6], &qword_27E3A24C8, &qword_23FFDB000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF63F68(v7, v4, type metadata accessor for MarketplaceKitError);
    sub_23FF647D0(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v8 = swift_allocError();
    sub_23FF63F68(v4, v9, type metadata accessor for MarketplaceKitError);
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B0, &unk_23FFDAFE8);
    return sub_23FFD943C();
  }

  else
  {
    v11[7] = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B0, &unk_23FFDAFE8);
    return sub_23FFD944C();
  }
}

unint64_t sub_23FF62E78(uint64_t a1, uint64_t a2)
{
  v2 = sub_23FFD978C();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23FF62EC4()
{
  result = qword_27E3A24A0;
  if (!qword_27E3A24A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentAgeExceptionApprovalSheetRequest, &type metadata for PresentAgeExceptionApprovalSheetRequest, v0, v1);
    atomic_store(result, &qword_27E3A24A0);
  }

  return result;
}

unint64_t sub_23FF62F18()
{
  result = qword_27E3A24A8;
  if (!qword_27E3A24A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentAgeExceptionApprovalSheetRequest, &type metadata for PresentAgeExceptionApprovalSheetRequest, v0, v1);
    atomic_store(result, &qword_27E3A24A8);
  }

  return result;
}

uint64_t sub_23FF62F84(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23FF63004(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23FF63060(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B0, &unk_23FFDAFE8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_23FF5E8C8(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), &qword_27E3A24C8, &qword_23FFDB000, sub_23FF618A8, sub_23FF62C9C);
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

unint64_t sub_23FF6318C()
{
  result = qword_27E3A24F8;
  if (!qword_27E3A24F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SKTransactionReportTokenRequest, &type metadata for SKTransactionReportTokenRequest, v0, v1);
    atomic_store(result, &qword_27E3A24F8);
  }

  return result;
}

unint64_t sub_23FF631E0()
{
  result = qword_27E3A2500;
  if (!qword_27E3A2500)
  {
    result = swift_getWitnessTable("qz%BԺ", &type metadata for SKTransactionReportTokenRequest, v0, v1);
    atomic_store(result, &qword_27E3A2500);
  }

  return result;
}

uint64_t sub_23FF63278(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2508, &qword_23FFDB028) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_23FF5E8C8(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), &qword_27E3A2510, &qword_23FFDB030, sub_23FF613F4, sub_23FF62AC0);
}

uint64_t sub_23FF63374(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A2560, &qword_23FFDB070);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23FF6340C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2580, &qword_23FFDB080) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_23FF5E8C8(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), &qword_27E3A2588, &qword_23FFDB088, sub_23FF60F40, sub_23FF628E4);
}

unint64_t sub_23FF63508()
{
  result = qword_27E3A25B8;
  if (!qword_27E3A25B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PerformPrivateActionRequest, &type metadata for PerformPrivateActionRequest, v0, v1);
    atomic_store(result, &qword_27E3A25B8);
  }

  return result;
}

unint64_t sub_23FF6355C()
{
  result = qword_27E3A25C0;
  if (!qword_27E3A25C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PerformPrivateActionRequest, &type metadata for PerformPrivateActionRequest, v0, v1);
    atomic_store(result, &qword_27E3A25C0);
  }

  return result;
}

uint64_t sub_23FF63604(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, v5 + v9, v10);
}

unint64_t sub_23FF636E0()
{
  result = qword_27E3A2620;
  if (!qword_27E3A2620)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FetchPublicDataRequest, &type metadata for FetchPublicDataRequest, v0, v1);
    atomic_store(result, &qword_27E3A2620);
  }

  return result;
}

unint64_t sub_23FF63734()
{
  result = qword_27E3A2628;
  if (!qword_27E3A2628)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FetchPublicDataRequest, &type metadata for FetchPublicDataRequest, v0, v1);
    atomic_store(result, &qword_27E3A2628);
  }

  return result;
}

uint64_t sub_23FF637B4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2630, &qword_23FFDB0E0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_23FF5E8C8(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), &qword_27E3A2638, &qword_23FFDB0E8, sub_23FF5F7C4, sub_23FF6235C);
}

unint64_t sub_23FF63898()
{
  result = qword_27E3A2658;
  if (!qword_27E3A2658)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PerformActionRequest, &type metadata for PerformActionRequest, v0, v1);
    atomic_store(result, &qword_27E3A2658);
  }

  return result;
}

unint64_t sub_23FF638EC()
{
  result = qword_27E3A2660;
  if (!qword_27E3A2660)
  {
    result = swift_getWitnessTable("QD%BČ", &type metadata for PerformActionRequest, v0, v1);
    atomic_store(result, &qword_27E3A2660);
  }

  return result;
}

uint64_t sub_23FF63994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23FF639F4(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A2530, &qword_23FFDB048);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23FF63A78()
{
  result = qword_27E3A26A0;
  if (!qword_27E3A26A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvailableAppMetadataRequest, &type metadata for AvailableAppMetadataRequest, v0, v1);
    atomic_store(result, &qword_27E3A26A0);
  }

  return result;
}

unint64_t sub_23FF63ACC()
{
  result = qword_27E3A26A8;
  if (!qword_27E3A26A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AvailableAppMetadataRequest, &type metadata for AvailableAppMetadataRequest, v0, v1);
    atomic_store(result, &qword_27E3A26A8);
  }

  return result;
}

uint64_t sub_23FF63B4C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A26B8, &qword_23FFDB130) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_23FF5E8C8(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), &qword_27E3A26C0, &qword_23FFDB138, sub_23FF5FC80, sub_23FF62540);
}

unint64_t sub_23FF63C30()
{
  result = qword_27E3A26E0;
  if (!qword_27E3A26E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SetPrivateDataRequest, &type metadata for SetPrivateDataRequest, v0, v1);
    atomic_store(result, &qword_27E3A26E0);
  }

  return result;
}

unint64_t sub_23FF63C84()
{
  result = qword_27E3A26E8;
  if (!qword_27E3A26E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SetPrivateDataRequest, &type metadata for SetPrivateDataRequest, v0, v1);
    atomic_store(result, &qword_27E3A26E8);
  }

  return result;
}

unint64_t sub_23FF63CF0()
{
  result = qword_2814FD7A0;
  if (!qword_2814FD7A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FetchPrivateDataRequest, &type metadata for FetchPrivateDataRequest, v0, v1);
    atomic_store(result, &qword_2814FD7A0);
  }

  return result;
}

unint64_t sub_23FF63D44()
{
  result = qword_2814FD7A8;
  if (!qword_2814FD7A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FetchPrivateDataRequest, &type metadata for FetchPrivateDataRequest, v0, v1);
    atomic_store(result, &qword_2814FD7A8);
  }

  return result;
}

unint64_t sub_23FF63DB0()
{
  result = qword_27E3A26F0;
  if (!qword_27E3A26F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SecureButtonActionRequest, &type metadata for SecureButtonActionRequest, v0, v1);
    atomic_store(result, &qword_27E3A26F0);
  }

  return result;
}

unint64_t sub_23FF63E04()
{
  result = qword_27E3A26F8;
  if (!qword_27E3A26F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SecureButtonActionRequest, &type metadata for SecureButtonActionRequest, v0, v1);
    atomic_store(result, &qword_27E3A26F8);
  }

  return result;
}

uint64_t sub_23FF63E84(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2700, &qword_23FFDB160) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_23FF5E8C8(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), &qword_27E3A2708, &qword_23FFDB168, sub_23FF5F304, sub_23FF6211C);
}

uint64_t sub_23FF63F68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23FF63FD0()
{
  result = qword_27E3A2728;
  if (!qword_27E3A2728)
  {
    result = swift_getWitnessTable("){%Bܷ", &type metadata for UpdateMetadata, v0, v1);
    atomic_store(result, &qword_27E3A2728);
  }

  return result;
}

unint64_t sub_23FF64024()
{
  result = qword_27E3A2730;
  if (!qword_27E3A2730)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateMetadata, &type metadata for UpdateMetadata, v0, v1);
    atomic_store(result, &qword_27E3A2730);
  }

  return result;
}

unint64_t sub_23FF64090()
{
  result = qword_27E3A2738;
  if (!qword_27E3A2738)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateMetadataRequest, &type metadata for UpdateMetadataRequest, v0, v1);
    atomic_store(result, &qword_27E3A2738);
  }

  return result;
}

unint64_t sub_23FF640E4()
{
  result = qword_27E3A2740;
  if (!qword_27E3A2740)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateMetadataRequest, &type metadata for UpdateMetadataRequest, v0, v1);
    atomic_store(result, &qword_27E3A2740);
  }

  return result;
}

uint64_t sub_23FF64164(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2750, &qword_23FFDB190) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_23FF5E8C8(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), &qword_27E3A2758, &qword_23FFDB198, sub_23FF5EE48, sub_23FF61F38);
}

uint64_t sub_23FF64248(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23FF642A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23FF64310(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23FF64358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_23FF643D8()
{
  result = qword_27E3A2778;
  if (!qword_27E3A2778)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PollForUpdatesRequest, &type metadata for PollForUpdatesRequest, v0, v1);
    atomic_store(result, &qword_27E3A2778);
  }

  return result;
}

unint64_t sub_23FF6442C()
{
  result = qword_27E3A2780;
  if (!qword_27E3A2780)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PollForUpdatesRequest, &type metadata for PollForUpdatesRequest, v0, v1);
    atomic_store(result, &qword_27E3A2780);
  }

  return result;
}

unint64_t sub_23FF64498()
{
  result = qword_27E3A2788;
  if (!qword_27E3A2788)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromoteAppsRequest, &type metadata for PromoteAppsRequest, v0, v1);
    atomic_store(result, &qword_27E3A2788);
  }

  return result;
}

unint64_t sub_23FF644EC()
{
  result = qword_27E3A2790;
  if (!qword_27E3A2790)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromoteAppsRequest, &type metadata for PromoteAppsRequest, v0, v1);
    atomic_store(result, &qword_27E3A2790);
  }

  return result;
}

unint64_t sub_23FF64558()
{
  result = qword_27E3A2798;
  if (!qword_27E3A2798)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PrioritizeAppRequest, &type metadata for PrioritizeAppRequest, v0, v1);
    atomic_store(result, &qword_27E3A2798);
  }

  return result;
}

unint64_t sub_23FF645AC()
{
  result = qword_27E3A27A0;
  if (!qword_27E3A27A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PrioritizeAppRequest, &type metadata for PrioritizeAppRequest, v0, v1);
    atomic_store(result, &qword_27E3A27A0);
  }

  return result;
}

uint64_t sub_23FF6462C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2538, &qword_23FFDB050) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_23FF5E8C8(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), &qword_27E3A2540, &qword_23FFDB058, sub_23FF5E994, sub_23FF61D5C);
}

unint64_t sub_23FF64710()
{
  result = qword_27E3A27A8;
  if (!qword_27E3A27A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DiscoverRestoresRequest, &type metadata for DiscoverRestoresRequest, v0, v1);
    atomic_store(result, &qword_27E3A27A8);
  }

  return result;
}

unint64_t sub_23FF64764()
{
  result = qword_27E3A27B0;
  if (!qword_27E3A27B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DiscoverRestoresRequest, &type metadata for DiscoverRestoresRequest, v0, v1);
    atomic_store(result, &qword_27E3A27B0);
  }

  return result;
}

uint64_t sub_23FF647D0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_11Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_23FF64AC0()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23FF64BBC;

  return sub_23FF54E4C(0, 0, 2, sub_23FF64CE0, 0);
}

uint64_t sub_23FF64BBC()
{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = sub_23FF66F0C;
  }

  else
  {
    v2 = sub_23FF66EF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

AppDistribution::DiscoverRestoresRequest __swiftcall DiscoverRestoresRequest.init()()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 2;
  return result;
}

uint64_t static Restores.discover(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_23FF64D14, 0, 0);
}

uint64_t sub_23FF64D14()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = v0[3];

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_23FF64E2C;
  v3 = v0[2];

  return sub_23FF54E4C(v3, v1, 2, sub_23FF65018, 0);
}

uint64_t sub_23FF64E2C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_23FF64FA4;
  }

  else
  {
    v2 = sub_23FF64F40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FF64F40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23FF64FA4()
{

  v1 = *(v0 + 8);

  return v1();
}

AppDistribution::DiscoverRestoresRequest __swiftcall DiscoverRestoresRequest.init(accountID:)(AppDistribution::DiscoverRestoresRequest accountID)
{
  *v1 = accountID.field23FFF2890;
  *(v1 + 16) = 2;
  return accountID;
}

uint64_t sub_23FF65048()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23FF65144;

  return sub_23FF54E4C(0, 0, 1, sub_23FF6532C, 0);
}

uint64_t sub_23FF65144()
{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = sub_23FF652BC;
  }

  else
  {
    v2 = sub_23FF65258;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FF65258()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23FF652BC()
{

  v1 = *(v0 + 8);

  return v1();
}

AppDistribution::DiscoverRestoresRequest __swiftcall DiscoverRestoresRequest.init(accountID:promptToInstallDistributors:)(AppDistribution::DiscoverRestoresRequest accountID, Swift::Bool_optional promptToInstallDistributors)
{
  *v2 = accountID.field23FFF2890;
  *(v2 + 16) = promptToInstallDistributors;
  accountID.field23FFF289C = promptToInstallDistributors;
  return accountID;
}

uint64_t static Restores.prioritize(app:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_23FF65360, 0, 0);
}

uint64_t sub_23FF65360()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23FF65458;
  v3 = v0[2];
  v2 = v0[3];

  return sub_23FF5517C(v3, v2, sub_23FF65554, 0);
}

uint64_t sub_23FF65458()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23FF65588()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23FF53BC8;
  v2 = *(v0 + 16);

  return sub_23FF55594(v2, sub_23FF65688, 0);
}

void sub_23FF6569C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v12 = sub_23FFD8F8C();
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_23FF6839C;
  v14[3] = a6;
  v13 = _Block_copy(v14);

  [a1 *a7];
  _Block_release(v13);
}

uint64_t DiscoverRestoresRequest.accountID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_23FF657AC()
{
  v1 = *v0;
  sub_23FFD9A2C();
  MEMORY[0x245CB41F0](v1);
  return sub_23FFD9A7C();
}

uint64_t sub_23FF657F4()
{
  v1 = *v0;
  sub_23FFD9A2C();
  MEMORY[0x245CB41F0](v1);
  return sub_23FFD9A7C();
}

uint64_t sub_23FF65838()
{
  if (*v0)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

uint64_t sub_23FF6587C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000023FFEADF0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FF65968(uint64_t a1)
{
  v2 = sub_23FF66808();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF659A4(uint64_t a1)
{
  v2 = sub_23FF66808();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DiscoverRestoresRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27C8, &qword_23FFDB1F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF66808();
  sub_23FFD9ACC();
  v12 = 0;
  v7 = v9[1];
  sub_23FFD989C();
  if (!v7)
  {
    v11 = 1;
    sub_23FFD98AC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DiscoverRestoresRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27D8, &qword_23FFDB200);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF66808();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_23FFD97BC();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  v13 = sub_23FFD97CC();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PromoteAppsRequest.appsToPromote.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_23FF65DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72506F5473707061 && a2 == 0xED000065746F6D6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF65E6C(uint64_t a1)
{
  v2 = sub_23FF6685C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF65EA8(uint64_t a1)
{
  v2 = sub_23FF6685C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PromoteAppsRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27E0, &qword_23FFDB208);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF6685C();

  sub_23FFD9ACC();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27F0, &qword_23FFDB210);
  sub_23FF668B0(&qword_27E3A27F8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_23FFD991C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PromoteAppsRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2800, &qword_23FFDB218);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF6685C();
  sub_23FFD9AAC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A27F0, &qword_23FFDB210);
    sub_23FF668B0(&qword_2814FD770, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_23FFD983C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PrioritizeAppRequest.appToPrioritize.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PrioritizeAppRequest.appToPrioritize.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_23FF662FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6972506F54707061 && a2 == 0xEF657A697469726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF6638C(uint64_t a1)
{
  v2 = sub_23FF6691C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF663C8(uint64_t a1)
{
  v2 = sub_23FF6691C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrioritizeAppRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2808, &qword_23FFDB220);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF6691C();
  sub_23FFD9ACC();
  sub_23FFD98EC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PrioritizeAppRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2818, &qword_23FFDB228);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF6691C();
  sub_23FFD9AAC();
  if (!v2)
  {
    v9 = sub_23FFD980C();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FF666CC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2808, &qword_23FFDB220);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF6691C();
  sub_23FFD9ACC();
  sub_23FFD98EC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_23FF66808()
{
  result = qword_27E3A27D0;
  if (!qword_27E3A27D0)
  {
    result = swift_getWitnessTable(aA, &type metadata for DiscoverRestoresRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A27D0);
  }

  return result;
}

unint64_t sub_23FF6685C()
{
  result = qword_27E3A27E8;
  if (!qword_27E3A27E8)
  {
    result = swift_getWitnessTable(byte_23FFDB678, &type metadata for PromoteAppsRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A27E8);
  }

  return result;
}

uint64_t sub_23FF668B0(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A27F0, &qword_23FFDB210);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23FF6691C()
{
  result = qword_27E3A2810;
  if (!qword_27E3A2810)
  {
    result = swift_getWitnessTable(byte_23FFDB628, &type metadata for PrioritizeAppRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2810);
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

uint64_t sub_23FF66994(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_23FF669F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_23FF66A60(uint64_t *a1, int a2)
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

uint64_t sub_23FF66AA8(uint64_t result, int a2, int a3)
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

uint64_t sub_23FF66AF4(uint64_t a1, int a2)
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

uint64_t sub_23FF66B3C(uint64_t result, int a2, int a3)
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

unint64_t sub_23FF66BBC()
{
  result = qword_27E3A2820;
  if (!qword_27E3A2820)
  {
    result = swift_getWitnessTable(a9, &type metadata for DiscoverRestoresRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2820);
  }

  return result;
}

unint64_t sub_23FF66C14()
{
  result = qword_27E3A2828;
  if (!qword_27E3A2828)
  {
    result = swift_getWitnessTable(byte_23FFDB548, &type metadata for PromoteAppsRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2828);
  }

  return result;
}

unint64_t sub_23FF66C6C()
{
  result = qword_27E3A2830;
  if (!qword_27E3A2830)
  {
    result = swift_getWitnessTable(byte_23FFDB600, &type metadata for PrioritizeAppRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2830);
  }

  return result;
}

unint64_t sub_23FF66CC4()
{
  result = qword_27E3A2838;
  if (!qword_27E3A2838)
  {
    result = swift_getWitnessTable(a1, &type metadata for PrioritizeAppRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2838);
  }

  return result;
}

unint64_t sub_23FF66D1C()
{
  result = qword_27E3A2840;
  if (!qword_27E3A2840)
  {
    result = swift_getWitnessTable(aA_0, &type metadata for PrioritizeAppRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2840);
  }

  return result;
}

unint64_t sub_23FF66D74()
{
  result = qword_27E3A2848;
  if (!qword_27E3A2848)
  {
    result = swift_getWitnessTable(byte_23FFDB4B8, &type metadata for PromoteAppsRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2848);
  }

  return result;
}

unint64_t sub_23FF66DCC()
{
  result = qword_27E3A2850;
  if (!qword_27E3A2850)
  {
    result = swift_getWitnessTable(byte_23FFDB4E0, &type metadata for PromoteAppsRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2850);
  }

  return result;
}

unint64_t sub_23FF66E24()
{
  result = qword_27E3A2858;
  if (!qword_27E3A2858)
  {
    result = swift_getWitnessTable(byte_23FFDB400, &type metadata for DiscoverRestoresRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2858);
  }

  return result;
}

unint64_t sub_23FF66E7C()
{
  result = qword_27E3A2860;
  if (!qword_27E3A2860)
  {
    result = swift_getWitnessTable(byte_23FFDB428, &type metadata for DiscoverRestoresRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2860);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t FeatureFlag.hashValue.getter()
{
  sub_23FFD9A2C();
  MEMORY[0x245CB41F0](0);
  return sub_23FFD9A7C();
}

uint64_t isFeatureEnabled(_:)()
{
  v2[3] = &type metadata for FeatureFlag;
  v2[4] = sub_23FF67028();
  v0 = sub_23FFD902C();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_23FF67028()
{
  result = qword_27E3A2868;
  if (!qword_27E3A2868)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FeatureFlag, &type metadata for FeatureFlag, v0, v1);
    atomic_store(result, &qword_27E3A2868);
  }

  return result;
}

unint64_t sub_23FF67080()
{
  result = qword_27E3A2870;
  if (!qword_27E3A2870)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FeatureFlag, &type metadata for FeatureFlag, v0, v1);
    atomic_store(result, &qword_27E3A2870);
  }

  return result;
}

uint64_t PollForUpdatesRequest.domain.getter()
{
  v1 = *v0;

  return v1;
}

AppDistribution::PollForUpdatesRequest __swiftcall PollForUpdatesRequest.init(domain:shouldStartUpdates:)(AppDistribution::PollForUpdatesRequest domain, Swift::Bool shouldStartUpdates)
{
  *v2 = domain.field23FFF296C;
  *(v2 + 16) = shouldStartUpdates;
  domain.field23FFF2978 = shouldStartUpdates;
  return domain;
}

uint64_t PollForUpdatesRequest.run()()
{
  *(v1 + 16) = *v0;
  *(v1 + 40) = *(v0 + 16);
  return MEMORY[0x2822009F8](sub_23FF67154, 0, 0);
}

uint64_t sub_23FF67154()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_23FF65458;
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_23FF559AC(v4, v3, v2, sub_23FF67250, 0);
}

void sub_23FF67250(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_1;
  v9 = _Block_copy(v10);

  [a1 requestUpdatesPoll:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_23FF6732C()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_23FF67368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023FFEAE40 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FF67448(uint64_t a1)
{
  v2 = sub_23FF67848();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF67484(uint64_t a1)
{
  v2 = sub_23FF67848();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PollForUpdatesRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2878, &qword_23FFDB7D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF67848();
  sub_23FFD9ACC();
  v12 = 0;
  v7 = v9[1];
  sub_23FFD989C();
  if (!v7)
  {
    v11 = 1;
    sub_23FFD98FC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PollForUpdatesRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2888, &qword_23FFDB7E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF67848();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_23FFD97BC();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  v13 = sub_23FFD981C();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23FF67848()
{
  result = qword_27E3A2880;
  if (!qword_27E3A2880)
  {
    result = swift_getWitnessTable(byte_23FFDB93C, &type metadata for PollForUpdatesRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2880);
  }

  return result;
}

unint64_t sub_23FF678C0()
{
  result = qword_27E3A2890;
  if (!qword_27E3A2890)
  {
    result = swift_getWitnessTable(byte_23FFDB914, &type metadata for PollForUpdatesRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2890);
  }

  return result;
}

unint64_t sub_23FF67918()
{
  result = qword_27E3A2898;
  if (!qword_27E3A2898)
  {
    result = swift_getWitnessTable(byte_23FFDB884, &type metadata for PollForUpdatesRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2898);
  }

  return result;
}

unint64_t sub_23FF67970()
{
  result = qword_27E3A28A0;
  if (!qword_27E3A28A0)
  {
    result = swift_getWitnessTable(asc_23FFDB8AC, &type metadata for PollForUpdatesRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A28A0);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for LinkMetadata(uint64_t a1)
{
  result = qword_27E3A28A8;
  if (!qword_27E3A28A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23FF67A50(uint64_t a1)
{
  sub_23FFD8F6C();
  if (v1 <= 0x3F)
  {
    sub_23FF59828();
    if (v2 <= 0x3F)
    {
      sub_23FF59878(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23FF67B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v63 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v62 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A28B8, &qword_23FFDB9A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v58 - v11;
  v13 = sub_23FFD8EBC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23FFD8F6C();
  v65 = *(v17 - 8);
  v18 = *(v65 + 16);
  v18(a3, a2, v17);
  v64 = type metadata accessor for LinkMetadata(0);
  v19 = *(v64 + 20);
  v66 = a3;
  v67 = a1;
  v18(a3 + v19, a1, v17);
  v20 = v14;
  v21 = a2;
  sub_23FFD8E8C();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_23FF68114(v12);
LABEL_15:
    v47 = v65;
    v48 = *(v65 + 8);
    v48(a2, v17);
    v48(v67, v17);
    v49 = v64;
    v50 = v66;
    v51 = (v66 + *(v64 + 24));
    *v51 = 0;
    v51[1] = 0xE000000000000000;
    v52 = (v50 + v49[7]);
    *v52 = 0;
    v52[1] = 0;
    v53 = (v50 + v49[8]);
    *v53 = 0;
    v53[1] = 0;
    v54 = (v50 + v49[9]);
    *v54 = 0;
    v54[1] = 0;
    v55 = *(v47 + 56);
    v55(v50 + v49[10], 1, 1, v17);
    return (v55)(v50 + v49[11], 1, 1, v17);
  }

  (*(v14 + 32))(v16, v12, v13);
  v22 = sub_23FFD8E7C();
  if (!v22)
  {
    (*(v14 + 8))(v16, v13);
    goto LABEL_15;
  }

  v23 = v22;
  v24 = sub_23FFD8E9C();
  v26 = v65;
  v59 = v16;
  v60 = v20;
  if (!v25)
  {
    v24 = sub_23FFD8EAC();
  }

  v27 = v66;
  v28 = v62;
  v29 = v64;
  v30 = (v66 + *(v64 + 24));
  *v30 = v24;
  v30[1] = v25;
  v31 = sub_23FF6817C(0x6E656B6F74, 0xE500000000000000, v23);
  v32 = (v27 + v29[7]);
  *v32 = v31;
  v32[1] = v33;
  v34 = sub_23FF6817C(0xD000000000000018, 0x800000023FFEAE60, v23);
  v61 = v21;
  if (!v35)
  {
    v34 = sub_23FF6817C(0x44664F666F6F7270, 0xEF64616F6C6E776FLL, v23);
  }

  v36 = (v27 + v29[8]);
  *v36 = v34;
  v36[1] = v35;
  v37 = sub_23FF6817C(0x746E756F636361, 0xE700000000000000, v23);
  v38 = (v27 + v29[9]);
  *v38 = v37;
  v38[1] = v39;
  sub_23FF6817C(0xD00000000000001ELL, 0x800000023FFEAE80, v23);
  if (v40 || (sub_23FF6817C(7365729, 0xE300000000000000, v23), v41) || (sub_23FF6817C(7365733, 0xE300000000000000, v23), v42))
  {

    sub_23FFD8F5C();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    (*(v26 + 56))(v28, 1, 1, v17);
  }

  sub_23FF6832C(v28, v27 + v29[10]);
  sub_23FF6817C(0x6572616853707061, 0xEB000000004C5255, v23);
  v44 = v43;

  if (v44)
  {

    v45 = v63;
    sub_23FFD8F5C();

    v46 = *(v26 + 8);
    v46(v61, v17);
    v46(v67, v17);
    (*(v60 + 8))(v59, v13);
  }

  else
  {
    v57 = *(v26 + 8);
    v57(v61, v17);
    v57(v67, v17);
    (*(v60 + 8))(v59, v13);
    v45 = v63;
    (*(v26 + 56))(v63, 1, 1, v17);
  }

  return sub_23FF6832C(v45, v27 + v29[11]);
}

uint64_t sub_23FF68114(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A28B8, &qword_23FFDB9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23FF6817C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23FFD8E6C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v16 = v7 + 16;
  v17 = a3;
  v11 = (v7 + 8);
  for (i = v10 - 1; i != -1; --i)
  {
    (*(v7 + 16))(v9, v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * i, v6);
    if (sub_23FFD8E4C() == a1 && v14 == a2)
    {

      (*v11)(v9, v6);
      return sub_23FFD8E5C();
    }

    v13 = sub_23FFD996C();

    (*v11)(v9, v6);
    if (v13)
    {
      return sub_23FFD8E5C();
    }
  }

  return 0;
}

uint64_t sub_23FF6832C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FF6839C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = sub_23FFD8F9C();
  v7 = v6;

  v3(v5, v7);
  sub_23FF62F84(v5, v7);
}

uint64_t AppLibrary.App.Metadata.version.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AppLibrary.App.Metadata.shortVersion.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AppLibrary.App.Metadata.account.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AppLibrary.App.Metadata.init(appleVersionID:version:shortVersion:account:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

void AppLibrary.App.installedMetadata.getter(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
  sub_23FFD8FEC();

  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  sub_23FF6DFFC(v3, v4, v5, v6, v7, v8, v9);
}

void sub_23FF685AC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
  sub_23FFD8FEC();

  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  v8 = v3[7];
  v9 = v3[8];
  v10 = v3[9];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  sub_23FF6DFFC(v4, v5, v6, v7, v8, v9, v10);
}

void sub_23FF68670(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  *&v7 = *a1;
  *(&v7 + 1) = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  sub_23FF6DFFC(v7, v1, v2, v3, v4, v5, v6);
  sub_23FF686CC(&v7);
}

void sub_23FF686CC(__int128 *a1)
{
  v2 = a1[1];
  v15 = *a1;
  v16 = v2;
  v17 = a1[2];
  v18 = *(a1 + 6);
  v3 = *(v1 + 5);
  v19[0] = *(v1 + 3);
  v19[1] = v3;
  v19[2] = *(v1 + 7);
  v20 = v1[9];
  sub_23FF642A8(v19, &v14, &qword_27E3A2950, &qword_23FFDBD30);
  v4 = sub_23FF6E880(v19, &v15);
  sub_23FF64248(v19, &qword_27E3A2950, &qword_23FFDBD30);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v14 = v1;
    sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
    sub_23FFD8FDC();
    sub_23FF64248(&v15, &qword_27E3A2950, &qword_23FFDBD30);
  }

  else
  {
    v6 = v1[3];
    v7 = v1[4];
    v8 = v16;
    *(v1 + 3) = v15;
    v9 = v1[5];
    v10 = v1[6];
    v11 = v1[7];
    v12 = v1[8];
    v13 = v1[9];
    *(v1 + 5) = v8;
    *(v1 + 7) = v17;
    v1[9] = v18;
    sub_23FF6E04C(v6, v7, v9, v10, v11, v12, v13);
  }
}

void sub_23FF6888C(void *a1, uint64_t a2)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = *(a2 + 16);
  *(a1 + 3) = *a2;
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  *(a1 + 5) = v4;
  *(a1 + 7) = *(a2 + 32);
  a1[9] = *(a2 + 48);
  sub_23FF642A8(a2, v10, &qword_27E3A2950, &qword_23FFDBD30);
  sub_23FF6E04C(v2, v3, v5, v6, v7, v8, v9);
}

uint64_t AppLibrary.App.installation.getter@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v8[0] = v1;
  sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
  sub_23FFD8FEC();

  v3 = v1[6];
  v8[0] = v1[5];
  v8[1] = v3;
  v5 = v1[8];
  v9 = v1[7];
  v4 = v9;
  v10 = v5;
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_23FF642A8(v8, &v7, &qword_27E3A28D0, &qword_23FFDBA30);
}

uint64_t sub_23FF68A10@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v9[0] = v3;
  sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
  sub_23FFD8FEC();

  v4 = v3[6];
  v9[0] = v3[5];
  v9[1] = v4;
  v6 = v3[8];
  v10 = v3[7];
  v5 = v10;
  v11 = v6;
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return sub_23FF642A8(v9, &v8, &qword_27E3A28D0, &qword_23FFDBA30);
}

uint64_t sub_23FF68AE4(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
  sub_23FFD8FDC();
}

void sub_23FF68BC0(void *a1, _OWORD *a2)
{
  v2 = a1[10];
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[14];
  v7 = a1[15];
  v8 = a1[16];
  v9 = a1[17];
  v10 = a2[1];
  *(a1 + 5) = *a2;
  *(a1 + 6) = v10;
  v11 = a2[3];
  *(a1 + 7) = a2[2];
  *(a1 + 8) = v11;
  sub_23FF642A8(a2, &v12, &qword_27E3A28D0, &qword_23FFDBA30);
  sub_23FF6E09C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t AppLibrary.App.installationError.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
  sub_23FFD8FEC();

  v3 = OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App__installationError;
  swift_beginAccess();
  return sub_23FF642A8(v5 + v3, a1, &qword_27E3A28E0, &qword_23FFDBA60);
}

uint64_t sub_23FF68D48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
  sub_23FFD8FEC();

  v4 = OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App__installationError;
  swift_beginAccess();
  return sub_23FF642A8(v3 + v4, a2, &qword_27E3A28E0, &qword_23FFDBA60);
}

uint64_t sub_23FF68E20(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A28E0, &qword_23FFDBA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_23FF642A8(a1, &v9[-v5], &qword_27E3A28E0, &qword_23FFDBA60);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
  sub_23FFD8FDC();

  return sub_23FF64248(v6, &qword_27E3A28E0, &qword_23FFDBA60);
}

uint64_t sub_23FF68F70(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App__installationError;
  swift_beginAccess();
  sub_23FF6E7F0(a2, a1 + v4);
  return swift_endAccess();
}

BOOL AppLibrary.App.isInstalled.getter()
{
  swift_getKeyPath();
  sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
  sub_23FFD8FEC();

  return *(v0 + 40) != 0;
}

BOOL AppLibrary.App.isInstalling.getter()
{
  swift_getKeyPath();
  sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
  sub_23FFD8FEC();

  return *(v0 + 96) != 0;
}

BOOL AppLibrary.App.isUpdating.getter()
{
  swift_getKeyPath();
  sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
  sub_23FFD8FEC();

  if (!*(v0 + 40))
  {
    return 0;
  }

  swift_getKeyPath();
  sub_23FFD8FEC();

  return *(v0 + 96) != 0;
}

uint64_t sub_23FF69220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a2;
  v5 = sub_23FFD91BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23FFD946C();
  v26 = sub_23FFD945C();
  sub_23FFD942C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v6 + 16))(v8, a1, v5);
  v25 = sub_23FFD918C();
  v9 = sub_23FFD91AC();
  v23 = v10;
  v24 = v9;
  v11 = sub_23FFD917C();
  v13 = v12;
  v14 = sub_23FFD919C();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = sub_23FFD913C();
  v18 = objc_allocWithZone(type metadata accessor for InstallationNSProgress());
  v19 = sub_23FF6D284(v17);

  v21 = v24;
  *a3 = v25;
  a3[1] = v21;
  a3[2] = v23;
  a3[3] = v11;
  a3[4] = v13;
  a3[5] = v14;
  a3[6] = v16;
  a3[7] = v19;
  return result;
}

uint64_t sub_23FF693F8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2938, &qword_23FFDBD18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2940, &qword_23FFDBD20);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = *(v1 + 16);
  sub_23FFD908C();
  (*(v3 + 104))(v5, *MEMORY[0x277D85778], v2);
  sub_23FFD94AC();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 16))(v10, v12, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2948, &qword_23FFDBD28);
  swift_allocObject();
  v14 = sub_23FFD912C();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;

  sub_23FFD94BC();
  sub_23FFD922C();
  v16 = sub_23FFD921C();
  sub_23FFD91FC();

  return (*(v7 + 8))(v12, v6);
}

void sub_23FF696B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_23FFD922C();
  v5 = sub_23FFD921C();
  sub_23FFD91DC();
}

void sub_23FF6973C(uint64_t a1)
{
  v3 = sub_23FFD908C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v136 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v138 = &v132 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v141 = &v132 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v143 = &v132 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v149 = &v132 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v132 - v15;
  v17 = sub_23FFD929C();
  v146 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v137 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v140 = &v132 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v135 = &v132 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v139 = &v132 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v134 = &v132 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v132 - v28;
  sub_23FFD925C();
  v144 = v4;
  v145 = a1;
  v30 = v3;
  v147 = v4[2];
  v148 = v4 + 2;
  v147(v16, a1, v3);
  v151 = v1;

  v31 = sub_23FFD927C();
  v32 = sub_23FFD954C();
  v33 = os_log_type_enabled(v31, v32);
  v150 = v4;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v142 = v17;
    v35 = v34;
    v133 = swift_slowAlloc();
    *&v160 = v133;
    *v35 = 134218242;
    *(v35 + 4) = *(v151 + 16);

    *(v35 + 12) = 2082;
    sub_23FF6EC24(&qword_27E3A2930, MEMORY[0x277CD49E8], MEMORY[0x277CD49F0]);
    v36 = v30;
    v37 = sub_23FFD995C();
    v39 = v38;
    v40 = v150[1];
    v40(v16, v36);
    v41 = sub_23FF8D0E8(v37, v39, &v160);

    *(v35 + 14) = v41;
    v42 = v40;
    _os_log_impl(&dword_23FF4C000, v31, v32, "[%llu] Got state %{public}s", v35, 0x16u);
    v43 = v133;
    __swift_destroy_boxed_opaque_existential_1(v133);
    v4 = v150;
    MEMORY[0x245CB48E0](v43, -1, -1);
    v44 = v35;
    v17 = v142;
    MEMORY[0x245CB48E0](v44, -1, -1);

    v45 = *(v146 + 8);
    v45(v29, v17);
    v46 = v36;
  }

  else
  {

    v42 = v4[1];
    v42(v16, v30);
    v45 = *(v146 + 8);
    v45(v29, v17);
    v46 = v30;
  }

  v47 = v149;
  v147(v149, v145, v46);
  v48 = v4[11];
  v49 = v48(v47, v46);
  if (v49 == *MEMORY[0x277CD49D8])
  {
    v42(v47, v46);
LABEL_6:
    swift_getKeyPath();
    v50 = v151;
    *&v158 = v151;
    sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
    sub_23FFD8FEC();

    v51 = v50[6];
    v160 = v50[5];
    v161 = v51;
    v52 = v50[8];
    v162 = v50[7];
    v163 = v52;
    v53 = *(&v52 + 1);
    if (v161)
    {
      v158 = *(v151 + 80);
      *&v159[8] = *(v151 + 104);
      *&v159[24] = *(v151 + 120);
      *v159 = v161;
      *&v159[40] = *(&v52 + 1);
      sub_23FF642A8(&v160, &v153, &qword_27E3A28D0, &qword_23FFDBA30);
      v54 = v53;
      sub_23FF64248(&v158, &qword_27E3A28D0, &qword_23FFDBA30);
      v55 = 1.0;
LABEL_8:
      sub_23FF6AB10(v55);
      sub_23FF6AE24(0, 0);

      return;
    }

    v158 = *(v151 + 80);
    *&v159[8] = *(v151 + 104);
    *&v159[24] = *(v151 + 120);
    *v159 = 0;
    *&v159[40] = *(&v52 + 1);
    sub_23FF642A8(&v160, &v153, &qword_27E3A28D0, &qword_23FFDBA30);
    sub_23FF64248(&v158, &qword_27E3A28D0, &qword_23FFDBA30);
    return;
  }

  if (v49 == *MEMORY[0x277CD49A0])
  {
    v42(v47, v46);
    return;
  }

  v56 = *MEMORY[0x277CD4998];
  if (v49 == *MEMORY[0x277CD4998])
  {
    v57 = v17;
    v58 = v149;
    (v150[12])(v149, v46);
    v59 = *(*v58 + 16);
    swift_getKeyPath();
    v60 = v151;
    *&v158 = v151;
    sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
    sub_23FFD8FEC();

    v61 = v60[6];
    v160 = v60[5];
    v161 = v61;
    v62 = v60[8];
    v162 = v60[7];
    v163 = v62;
    v63 = *(&v62 + 1);
    if (v161)
    {
      v158 = *(v151 + 80);
      *&v159[8] = *(v151 + 104);
      *&v159[24] = *(v151 + 120);
      *v159 = v161;
      *&v159[40] = *(&v62 + 1);
      sub_23FF642A8(&v160, &v153, &qword_27E3A28D0, &qword_23FFDBA30);
      v64 = v63;
      sub_23FF64248(&v158, &qword_27E3A28D0, &qword_23FFDBA30);
      sub_23FF6AB10(v59);
      sub_23FF6AE24(0, 0);
    }

    else
    {
      v158 = *(v151 + 80);
      *&v159[8] = *(v151 + 104);
      *&v159[24] = *(v151 + 120);
      *v159 = 0;
      *&v159[40] = *(&v62 + 1);
      sub_23FF642A8(&v160, &v153, &qword_27E3A28D0, &qword_23FFDBA30);
      sub_23FF64248(&v158, &qword_27E3A28D0, &qword_23FFDBA30);
      v78 = v139;
      sub_23FFD925C();

      v79 = sub_23FFD927C();
      v80 = sub_23FFD953C();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 134217984;
        *(v81 + 4) = *(v151 + 16);

        _os_log_impl(&dword_23FF4C000, v79, v80, "[%llu] Received AppState update before app catalog update for installation", v81, 0xCu);
        MEMORY[0x245CB48E0](v81, -1, -1);
      }

      else
      {
      }

      v45(v78, v57);
    }

    return;
  }

  if (v49 == *MEMORY[0x277CD49C0])
  {
    v139 = v42;
    v142 = v17;
    v65 = v149;
    v66 = v150[12];
    v150 += 12;
    v66(v149, v46);
    v149 = *v65;
    v67 = swift_projectBox();
    v145 = v46;
    v147(v143, v67, v46);
    swift_getKeyPath();
    v68 = OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App___observationRegistrar;
    v69 = v151;
    *&v158 = v151;
    v136 = sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
    v137 = v68;
    sub_23FFD8FEC();

    v70 = v69[6];
    v160 = v69[5];
    v161 = v70;
    v71 = v69[8];
    v162 = v69[7];
    v163 = v71;
    v72 = *(&v71 + 1);
    v158 = *(v151 + 80);
    *&v159[8] = *(v151 + 104);
    *&v159[24] = *(v151 + 120);
    if (v161)
    {
      *v159 = v161;
      *&v159[40] = *(&v71 + 1);
      sub_23FF642A8(&v160, &v153, &qword_27E3A28D0, &qword_23FFDBA30);
      v73 = v72;
      sub_23FF64248(&v158, &qword_27E3A28D0, &qword_23FFDBA30);
      sub_23FF6AE24(1, 0);
    }

    else
    {
      *v159 = 0;
      *&v159[40] = *(&v71 + 1);
      sub_23FF642A8(&v160, &v153, &qword_27E3A28D0, &qword_23FFDBA30);
      sub_23FF64248(&v158, &qword_27E3A28D0, &qword_23FFDBA30);
    }

    v82 = v141;
    v83 = v145;
    v84 = v147;
    v147(v141, v143, v145);
    if (v48(v82, v83) == v56)
    {
      v66(v82, v83);
      v85 = *(*v82 + 16);
      swift_getKeyPath();
      v86 = v151;
      *&v153 = v151;
      sub_23FFD8FEC();

      v87 = v86[6];
      v158 = v86[5];
      *v159 = v87;
      v88 = v86[8];
      *&v159[16] = v86[7];
      *&v159[32] = v88;
      v89 = *(&v88 + 1);
      if (*v159)
      {
        v153 = *(v151 + 80);
        v154 = *v159;
        v155 = *(v151 + 104);
        v156 = *(v151 + 120);
        v157 = *(&v88 + 1);
        sub_23FF642A8(&v158, v152, &qword_27E3A28D0, &qword_23FFDBA30);
        v90 = v89;
        sub_23FF64248(&v153, &qword_27E3A28D0, &qword_23FFDBA30);
        sub_23FF6AB10(v85);

        v91 = v143;
        v92 = v83;
      }

      else
      {
        v153 = *(v151 + 80);
        v154 = 0;
        v155 = *(v151 + 104);
        v156 = *(v151 + 120);
        v157 = *(&v88 + 1);
        sub_23FF642A8(&v158, v152, &qword_27E3A28D0, &qword_23FFDBA30);
        sub_23FF64248(&v153, &qword_27E3A28D0, &qword_23FFDBA30);
        v123 = v135;
        sub_23FFD925C();

        v124 = sub_23FFD927C();
        v125 = sub_23FFD953C();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          *v126 = 134217984;
          *(v126 + 4) = *(v151 + 16);

          _os_log_impl(&dword_23FF4C000, v124, v125, "[%llu] Received AppState update before app catalog update for installation", v126, 0xCu);
          MEMORY[0x245CB48E0](v126, -1, -1);
        }

        else
        {
        }

        v127 = v143;

        v45(v123, v142);
        v92 = v145;
        v91 = v127;
      }

      (v139)(v91, v92);
    }

    else
    {
      v93 = v140;
      sub_23FFD925C();
      v94 = v138;
      v84(v138, v143, v83);

      v95 = sub_23FFD927C();
      v96 = sub_23FFD955C();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        *&v158 = v150;
        *v97 = 134218242;
        *(v97 + 4) = *(v151 + 16);

        *(v97 + 12) = 2082;
        sub_23FF6EC24(&qword_27E3A2930, MEMORY[0x277CD49E8], MEMORY[0x277CD49F0]);
        v98 = sub_23FFD995C();
        v99 = v94;
        v100 = v98;
        v102 = v101;
        v103 = v139;
        (v139)(v99, v145);
        v104 = sub_23FF8D0E8(v100, v102, &v158);

        *(v97 + 14) = v104;
        _os_log_impl(&dword_23FF4C000, v95, v96, "[%llu] Unhandled paused substate: %{public}s", v97, 0x16u);
        v105 = v150;
        __swift_destroy_boxed_opaque_existential_1(v150);
        MEMORY[0x245CB48E0](v105, -1, -1);
        v106 = v97;
        v83 = v145;
        MEMORY[0x245CB48E0](v106, -1, -1);

        v45(v140, v142);
        v103(v143, v83);
      }

      else
      {

        v107 = v139;
        (v139)(v94, v83);
        v45(v93, v142);
        v107(v143, v83);
        v103 = v107;
      }

      v103(v141, v83);
    }

    return;
  }

  if (v49 == *MEMORY[0x277CD49E0] || v49 == *MEMORY[0x277CD49C8])
  {
    goto LABEL_6;
  }

  v142 = v17;
  if (v49 == *MEMORY[0x277CD49D0])
  {
    swift_getKeyPath();
    v74 = v151;
    *&v158 = v151;
    sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
    sub_23FFD8FEC();

    v75 = v74[6];
    v160 = v74[5];
    v161 = v75;
    v76 = v74[8];
    v162 = v74[7];
    v163 = v76;
    v77 = *(&v76 + 1);
    if (v161)
    {
      v158 = *(v151 + 80);
      *&v159[8] = *(v151 + 104);
      *&v159[24] = *(v151 + 120);
      *v159 = v161;
      *&v159[40] = *(&v76 + 1);
      sub_23FF642A8(&v160, &v153, &qword_27E3A28D0, &qword_23FFDBA30);
      v54 = v77;
      sub_23FF64248(&v158, &qword_27E3A28D0, &qword_23FFDBA30);
      v55 = -1.0;
      goto LABEL_8;
    }

    v158 = *(v151 + 80);
    *&v159[8] = *(v151 + 104);
    *&v159[24] = *(v151 + 120);
    *v159 = 0;
    *&v159[40] = *(&v76 + 1);
    sub_23FF642A8(&v160, &v153, &qword_27E3A28D0, &qword_23FFDBA30);
    sub_23FF64248(&v158, &qword_27E3A28D0, &qword_23FFDBA30);
    v128 = v134;
    sub_23FFD925C();

    v129 = sub_23FFD927C();
    v130 = sub_23FFD953C();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 134217984;
      *(v131 + 4) = *(v151 + 16);

      _os_log_impl(&dword_23FF4C000, v129, v130, "[%llu] Received AppState update before app catalog update for installation", v131, 0xCu);
      MEMORY[0x245CB48E0](v131, -1, -1);
    }

    else
    {
    }

    v45(v128, v142);
  }

  else
  {
    v108 = v42;
    v109 = v137;
    sub_23FFD925C();
    v110 = v136;
    v147(v136, v145, v46);

    v111 = sub_23FFD927C();
    v112 = sub_23FFD955C();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v145 = v46;
      v114 = v113;
      v115 = swift_slowAlloc();
      *&v160 = v115;
      *v114 = 134218242;
      *(v114 + 4) = *(v151 + 16);

      *(v114 + 12) = 2082;
      v116 = sub_23FFD907C();
      v117 = v110;
      v119 = v118;
      v108(v117, v145);
      v120 = sub_23FF8D0E8(v116, v119, &v160);

      *(v114 + 14) = v120;
      _os_log_impl(&dword_23FF4C000, v111, v112, "[%llu] Unknown state: %{public}s", v114, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v115);
      MEMORY[0x245CB48E0](v115, -1, -1);
      v121 = v114;
      v46 = v145;
      MEMORY[0x245CB48E0](v121, -1, -1);

      v122 = v137;
    }

    else
    {

      v108(v110, v46);
      v122 = v109;
    }

    v45(v122, v142);
    v108(v149, v46);
  }
}

id sub_23FF6AB10(double a1)
{
  v2 = v1;
  v4 = sub_23FFD929C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  v12 = fmin(a1, 1.0) * 4.50359963e15;
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v13 = v12;
  if (a1 == -1.0 || [v2 completedUnitCount] <= v13)
  {
    result = [v2 setCompletedUnitCount_];
    if (a1 >= 0.6)
    {
      result = [v2 isPausable];
      if (result)
      {
        sub_23FFD925C();
        v17 = v2;
        v18 = sub_23FFD927C();
        v19 = sub_23FFD953C();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 134217984;
          *(v20 + 4) = *(v17 + OBJC_IVAR____TtC15AppDistribution22InstallationNSProgress_id);

          _os_log_impl(&dword_23FF4C000, v18, v19, "[%llu] No longer pausable nor cancelable", v20, 0xCu);
          MEMORY[0x245CB48E0](v20, -1, -1);
        }

        else
        {

          v18 = v17;
        }

        (*(v5 + 8))(v11, v4);
        [v17 setPausable:0];
        return [v17 setCancellable:0];
      }
    }
  }

  else
  {
    sub_23FFD926C();
    v14 = sub_23FFD927C();
    v15 = sub_23FFD955C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23FF4C000, v14, v15, "Received progress update out of order", v16, 2u);
      MEMORY[0x245CB48E0](v16, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void sub_23FF6AE24(int a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  LODWORD(v5) = a1;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  MEMORY[0x28223BE20](v7 - 8);
  v34 = &v31 - v8;
  v9 = sub_23FFD929C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23FFD925C();
  v13 = sub_23FFD927C();
  v14 = sub_23FFD953C();
  if (os_log_type_enabled(v13, v14))
  {
    v31 = v4;
    v33 = ObjectType;
    v15 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v35 = v4;
    *v15 = 136315394;
    v32 = v5;
    if (v5)
    {
      if (v5 == 1)
      {
        v16 = 0x646573756170;
      }

      else
      {
        v16 = 0x64656C65636E6163;
      }

      if (v5 == 1)
      {
        v5 = 0xE600000000000000;
      }

      else
      {
        v5 = 0xE800000000000000;
      }
    }

    else
    {
      v5 = 0xE700000000000000;
      v16 = 0x676E696E6E7572;
    }

    v17 = sub_23FF8D0E8(v16, v5, &v35);

    *(v15 + 4) = v17;
    *(v15 + 12) = 1024;
    v18 = v31;
    *(v15 + 14) = v31 & 1;
    _os_log_impl(&dword_23FF4C000, v13, v14, "setState %s, sendingToDaemon: %{BOOL}d", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v4);
    v19 = v4;
    LOBYTE(v4) = v18;
    MEMORY[0x245CB48E0](v19, -1, -1);
    MEMORY[0x245CB48E0](v15, -1, -1);

    (*(v10 + 8))(v12, v9);
    ObjectType = v33;
    LOBYTE(v5) = v32;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v20 = *&v3[OBJC_IVAR____TtC15AppDistribution22InstallationNSProgress_lock];
  os_unfair_lock_lock((v20 + 32));
  if (!*(v20 + 16))
  {
    if (v5)
    {
      goto LABEL_21;
    }

LABEL_18:
    if ((v4 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (*(v20 + 16) != 1 || v5 == 1)
  {
    goto LABEL_18;
  }

LABEL_21:
  *(v20 + 16) = v5;
  if (v4)
  {
    v22 = swift_allocObject();
    v23 = v5;
    *(v22 + 16) = v5;
    v24 = *&v3[OBJC_IVAR____TtC15AppDistribution22InstallationNSProgress_id];
    v25 = *(v20 + 24);
    if (v25)
    {
      sub_23FFD94EC();
    }

    v26 = sub_23FFD949C();
    v27 = v34;
    (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v25;
    v5[5] = v24;
    v5[6] = sub_23FF6E600;
    v5[7] = v22;
    v5[8] = v3;

    v28 = v3;
    *(v20 + 24) = sub_23FF91244(0, 0, v27, &unk_23FFDBD00, v5);

    LOBYTE(v5) = v23;
  }

LABEL_25:
  if (v5)
  {
    if (v5 == 1)
    {
      v37 = v3;
      v29 = &selRef_pause;
      v30 = &v37;
    }

    else
    {
      v38.receiver = v3;
      v29 = &selRef_cancel;
      v30 = &v38;
    }
  }

  else
  {
    v36 = v3;
    v29 = &selRef_resume;
    v30 = &v36;
  }

  v30->super_class = ObjectType;
  objc_msgSendSuper2(v30, *v29);
LABEL_31:
  os_unfair_lock_unlock((v20 + 32));
}

uint64_t sub_23FF6B278(uint64_t a1)
{
  v2 = v1;
  v182 = type metadata accessor for MarketplaceKitError(0);
  v178 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v164 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_23FFD929C();
  v5 = *(v184 - 8);
  v6 = MEMORY[0x28223BE20](v184);
  v8 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v179 = &v158 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v177 = &v158 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v176 = &v158 - v14;
  MEMORY[0x28223BE20](v13);
  v181 = &v158 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A28E0, &qword_23FFDBA60);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v166 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v175 = (&v158 - v19);
  v185 = sub_23FFD91BC();
  v20 = *(v185 - 8);
  v21 = MEMORY[0x28223BE20](v185);
  v168 = &v158 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v172 = &v158 - v24;
  MEMORY[0x28223BE20](v23);
  v174 = &v158 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2958, &qword_23FFDBD38);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v171 = &v158 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v180 = &v158 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v158 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v173 = (&v158 - v35);
  MEMORY[0x28223BE20](v34);
  v37 = &v158 - v36;
  v38 = *(v1 + 16);
  v39 = sub_23FFD913C();
  v165 = v38;
  if (v38 == v39)
  {
    sub_23FFD916C();
    v169 = *(v20 + 48);
    v170 = v20 + 48;
    v40 = v169(v37, 1, v185);
    v167 = a1;
    v163 = v20;
    if (v40 == 1)
    {
      sub_23FF64248(v37, &qword_27E3A2958, &qword_23FFDBD38);
      swift_getKeyPath();
      *&v203[0] = v1;
      sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
      sub_23FFD8FEC();

      v41 = *(v1 + 96);
      v204 = *(v1 + 80);
      v205 = v41;
      v42 = *(v1 + 128);
      v206 = *(v1 + 112);
      v207 = v42;
      v43 = *(&v42 + 1);
      v203[0] = *(v1 + 80);
      *(&v203[1] + 8) = *(v1 + 104);
      *(&v203[2] + 8) = *(v1 + 120);
      if (v205)
      {
        *&v203[1] = v205;
        *(&v203[3] + 1) = *(&v42 + 1);
        sub_23FF642A8(&v204, &v201, &qword_27E3A28D0, &qword_23FFDBA30);
        v44 = v43;
        sub_23FF64248(v203, &qword_27E3A28D0, &qword_23FFDBA30);
        sub_23FF6AB10(1.0);
      }

      else
      {
        *&v203[1] = 0;
        *(&v203[3] + 1) = *(&v42 + 1);
        sub_23FF642A8(&v204, &v201, &qword_27E3A28D0, &qword_23FFDBA30);
        sub_23FF64248(v203, &qword_27E3A28D0, &qword_23FFDBA30);
      }

      swift_getKeyPath();
      *&v201 = v1;
      sub_23FFD8FEC();

      v50 = *(v1 + 96);
      v203[0] = *(v1 + 80);
      v203[1] = v50;
      v51 = *(v1 + 128);
      v203[2] = *(v1 + 112);
      v203[3] = v51;
      v52 = *(&v51 + 1);
      v49 = v163;
      v201 = *(v1 + 80);
      *(v202 + 8) = *(v1 + 104);
      *(&v202[1] + 8) = *(v1 + 120);
      if (*&v203[1])
      {
        *&v202[0] = *&v203[1];
        *(&v202[2] + 1) = *(&v51 + 1);
        sub_23FF642A8(v203, v198, &qword_27E3A28D0, &qword_23FFDBA30);
        v53 = v52;
        sub_23FF64248(&v201, &qword_27E3A28D0, &qword_23FFDBA30);
        sub_23FF6AE24(0, 0);
      }

      else
      {
        *&v202[0] = 0;
        *(&v202[2] + 1) = *(&v51 + 1);
        sub_23FF642A8(v203, v198, &qword_27E3A28D0, &qword_23FFDBA30);
        sub_23FF64248(&v201, &qword_27E3A28D0, &qword_23FFDBA30);
      }
    }

    else
    {
      v49 = v20;
      sub_23FF64248(v37, &qword_27E3A2958, &qword_23FFDBD38);
    }

    v54 = v173;
    sub_23FFD915C();
    sub_23FF642A8(v54, v33, &qword_27E3A2958, &qword_23FFDBD38);
    v55 = v169(v33, 1, v185);
    v183 = v5;
    if (v55 == 1)
    {
      sub_23FF64248(v54, &qword_27E3A2958, &qword_23FFDBD38);
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
    }

    else
    {
      (*(v49 + 32))(v174, v33, v185);
      sub_23FFD946C();
      v162 = sub_23FFD945C();
      sub_23FFD942C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v63 = v172;
      v64 = v185;
      (*(v49 + 16))(v172, v174, v185);
      v161 = sub_23FFD918C();
      v65 = sub_23FFD91AC();
      v159 = v66;
      v160 = v65;
      v59 = sub_23FFD917C();
      v60 = v67;
      v61 = sub_23FFD919C();
      v68 = v49;
      v62 = v69;
      v70 = *(v68 + 8);
      v70(v63, v64);
      v70(v174, v64);
      sub_23FF64248(v173, &qword_27E3A2958, &qword_23FFDBD38);

      v58 = v159;
      v57 = v160;
      v56 = v161;
      v5 = v183;
    }

    *&v204 = v56;
    *(&v204 + 1) = v57;
    *&v205 = v58;
    *(&v205 + 1) = v59;
    *&v206 = v60;
    *(&v206 + 1) = v61;
    *&v207 = v62;
    sub_23FF686CC(&v204);
    v71 = v180;
    sub_23FFD916C();
    v72 = v171;
    sub_23FF642A8(v71, v171, &qword_27E3A2958, &qword_23FFDBD38);
    if (v169(v72, 1, v185) == 1)
    {
      sub_23FF64248(v71, &qword_27E3A2958, &qword_23FFDBD38);
      memset(v203, 0, sizeof(v203));
    }

    else
    {
      v73 = v163;
      v74 = v168;
      (*(v163 + 32))(v168, v72, v185);
      sub_23FFD946C();
      sub_23FFD945C();
      sub_23FFD942C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v75 = v172;
      v76 = v185;
      (*(v73 + 16))(v172, v74, v185);
      v174 = sub_23FFD918C();
      v173 = sub_23FFD91AC();
      v171 = v77;
      v78 = sub_23FFD917C();
      v169 = v79;
      v170 = v78;
      v80 = sub_23FFD919C();
      v82 = v81;
      v83 = *(v73 + 8);
      v83(v75, v76);
      swift_getKeyPath();
      *&v204 = v2;
      sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
      sub_23FFD8FEC();

      v84 = *(v2 + 96);
      v204 = *(v2 + 80);
      v205 = v84;
      v85 = *(v2 + 128);
      v206 = *(v2 + 112);
      v207 = v85;
      v86 = *(&v85 + 1);
      v201 = *(v2 + 80);
      *(v202 + 8) = *(v2 + 104);
      *(&v202[1] + 8) = *(v2 + 120);
      if (v205)
      {
        *&v202[0] = v205;
        *(&v202[2] + 1) = *(&v85 + 1);
        sub_23FF642A8(&v204, v198, &qword_27E3A28D0, &qword_23FFDBA30);
        v87 = v86;
        v74 = v168;
        sub_23FF64248(&v201, &qword_27E3A28D0, &qword_23FFDBA30);
      }

      else
      {
        *&v202[0] = 0;
        *(&v202[2] + 1) = *(&v85 + 1);
        sub_23FF642A8(&v204, v198, &qword_27E3A28D0, &qword_23FFDBA30);
        sub_23FF64248(&v201, &qword_27E3A28D0, &qword_23FFDBA30);
        v88 = sub_23FFD913C();
        v89 = objc_allocWithZone(type metadata accessor for InstallationNSProgress());
        v87 = sub_23FF6D284(v88);
      }

      v83(v74, v185);
      sub_23FF64248(v180, &qword_27E3A2958, &qword_23FFDBD38);

      *&v203[0] = v174;
      *(&v203[0] + 1) = v173;
      *&v203[1] = v171;
      *(&v203[1] + 1) = v170;
      *&v203[2] = v169;
      *(&v203[2] + 1) = v80;
      *&v203[3] = v82;
      *(&v203[3] + 1) = v87;
      v5 = v183;
    }

    v204 = v203[0];
    v205 = v203[1];
    v206 = v203[2];
    v207 = v203[3];
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v158 - 2) = v2;
    *(&v158 - 1) = &v204;
    v185 = OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App___observationRegistrar;
    *&v201 = v2;
    v91 = sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
    sub_23FFD8FDC();
    sub_23FF64248(v203, &qword_27E3A28D0, &qword_23FFDBA30);

    v92 = sub_23FFD914C();
    if (v93 >> 60 == 15)
    {
      v94 = 1;
    }

    else
    {
      v95 = v92;
      v96 = v93;
      sub_23FFD8F3C();
      swift_allocObject();
      sub_23FFD8F2C();
      sub_23FF6EC24(&qword_27E3A2208, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
      sub_23FFD8F1C();
      v94 = 0;
      sub_23FF6EC6C(v95, v96);
    }

    v97 = v175;
    (*(v178 + 56))(v175, v94, 1, v182);
    v98 = swift_getKeyPath();
    MEMORY[0x28223BE20](v98);
    *(&v158 - 2) = v2;
    *(&v158 - 1) = v97;
    *&v201 = v2;
    sub_23FFD8FDC();

    sub_23FF64248(v97, &qword_27E3A28E0, &qword_23FFDBA60);
    sub_23FFD925C();
    swift_retain_n();
    v99 = sub_23FFD927C();
    v100 = sub_23FFD954C();
    v101 = os_log_type_enabled(v99, v100);
    v180 = v91;
    if (v101)
    {
      v102 = swift_slowAlloc();
      *v102 = 134218496;
      *(v102 + 4) = v165;
      *(v102 + 12) = 1024;
      swift_getKeyPath();
      *&v201 = v2;
      sub_23FFD8FEC();

      *(v102 + 14) = *(v2 + 40) != 0;

      *(v102 + 18) = 1024;
      swift_getKeyPath();
      *&v201 = v2;
      sub_23FFD8FEC();

      *(v102 + 20) = *(v2 + 96) != 0;

      _os_log_impl(&dword_23FF4C000, v99, v100, "Updating app %llu: isInstalled: %{BOOL}d, isInstalling: %{BOOL}d", v102, 0x18u);
      MEMORY[0x245CB48E0](v102, -1, -1);
    }

    else
    {
    }

    v103 = *(v5 + 8);
    v104 = v184;
    v103(v181, v184);
    v105 = v176;
    sub_23FFD925C();

    v106 = sub_23FFD927C();
    v107 = sub_23FFD954C();
    v108 = os_log_type_enabled(v106, v107);
    v181 = v103;
    v183 = v5 + 8;
    if (!v108)
    {

      v103(v105, v104);
      v127 = v177;
      goto LABEL_43;
    }

    LODWORD(v174) = v107;
    v175 = v106;
    v109 = swift_slowAlloc();
    v172 = v109;
    v173 = swift_slowAlloc();
    *&v201 = v173;
    *v109 = 134218242;
    swift_getKeyPath();
    *&v198[0] = v2;
    sub_23FFD8FEC();

    v110 = *(v2 + 24);
    v111 = *(v2 + 32);
    v112 = *(v2 + 40);
    v113 = *(v2 + 48);
    v114 = *(v2 + 56);
    v115 = *(v2 + 64);
    v116 = *(v2 + 72);
    if (v112)
    {
      v117 = *(v2 + 24);
    }

    else
    {
      v117 = 0;
    }

    sub_23FF6DFFC(*(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72));
    sub_23FF6E04C(v110, v111, v112, v113, v114, v115, v116);
    v118 = v172;
    *(v172 + 4) = v117;
    v119 = v118;

    *(v119 + 6) = 2080;
    swift_getKeyPath();
    *&v198[0] = v2;
    sub_23FFD8FEC();

    v121 = *(v2 + 24);
    v120 = *(v2 + 32);
    v122 = *(v2 + 40);
    v123 = *(v2 + 48);
    v125 = *(v2 + 56);
    v124 = *(v2 + 64);
    v126 = *(v2 + 72);
    if (v122)
    {
      sub_23FF6DFFC(v121, v120, *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72));

      sub_23FF6E04C(v121, v120, v122, v123, v125, v124, v126);
      v127 = v177;
      if (v126)
      {
LABEL_42:
        v128 = sub_23FF8D0E8(v124, v126, &v201);

        *(v119 + 14) = v128;
        v129 = v175;
        _os_log_impl(&dword_23FF4C000, v175, v174, "\t installedMetadata evid: %llu account: %s", v119, 0x16u);
        v130 = v173;
        __swift_destroy_boxed_opaque_existential_1(v173);
        MEMORY[0x245CB48E0](v130, -1, -1);
        MEMORY[0x245CB48E0](v119, -1, -1);

        v104 = v184;
        v103 = v181;
        (v181)(v176, v184);
LABEL_43:
        sub_23FFD925C();
        swift_retain_n();
        v131 = v127;
        v132 = sub_23FFD927C();
        v133 = sub_23FFD954C();
        if (!os_log_type_enabled(v132, v133))
        {

          v143 = v131;
          goto LABEL_54;
        }

        LODWORD(v176) = v133;
        v134 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v197 = v175;
        *v134 = 67109634;
        swift_getKeyPath();
        *&v201 = v2;
        sub_23FFD8FEC();

        *(v134 + 4) = *(v2 + 96) != 0;

        *(v134 + 8) = 2048;
        swift_getKeyPath();
        *&v201 = v2;
        sub_23FFD8FEC();

        v135 = *(v2 + 96);
        v201 = *(v2 + 80);
        v202[0] = v135;
        v136 = *(v2 + 128);
        v202[1] = *(v2 + 112);
        v202[2] = v136;
        v194 = *(v2 + 104);
        v195 = *(v2 + 120);
        v137 = *(v2 + 136);
        v192 = v201;
        if (v135)
        {
          v138 = v201;
        }

        else
        {
          v138 = 0;
        }

        v196 = v137;
        v193 = v135;
        sub_23FF642A8(&v201, v198, &qword_27E3A28D0, &qword_23FFDBA30);
        sub_23FF64248(&v192, &qword_27E3A28D0, &qword_23FFDBA30);
        *(v134 + 10) = v138;

        *(v134 + 18) = 2080;
        swift_getKeyPath();
        *&v198[0] = v2;
        sub_23FFD8FEC();

        v139 = *(v2 + 128);
        v199 = *(v2 + 112);
        v200 = v139;
        v140 = *(v2 + 96);
        v198[0] = *(v2 + 80);
        v198[1] = v140;
        v141 = *(&v199 + 1);
        v142 = v139;
        if (v140)
        {
          v187 = *(v2 + 80);
          v188 = v140;
          v189 = *(v2 + 104);
          v190 = *(&v199 + 1);
          v191 = v139;
          sub_23FF642A8(v198, v186, &qword_27E3A28D0, &qword_23FFDBA30);

          sub_23FF64248(&v187, &qword_27E3A28D0, &qword_23FFDBA30);
          v103 = v181;
          if (v142)
          {
LABEL_53:
            v144 = sub_23FF8D0E8(v141, v142, &v197);

            *(v134 + 20) = v144;
            _os_log_impl(&dword_23FF4C000, v132, v176, "\t installation: %{BOOL}d evid: %llu account: %s", v134, 0x1Cu);
            v145 = v175;
            __swift_destroy_boxed_opaque_existential_1(v175);
            MEMORY[0x245CB48E0](v145, -1, -1);
            MEMORY[0x245CB48E0](v134, -1, -1);

            v143 = v177;
            v104 = v184;
LABEL_54:
            v103(v143, v104);
            v146 = v179;
            sub_23FFD925C();

            v147 = sub_23FFD927C();
            v148 = sub_23FFD954C();

            if (os_log_type_enabled(v147, v148))
            {
              v149 = swift_slowAlloc();
              v150 = swift_slowAlloc();
              *&v198[0] = v150;
              *v149 = 136315138;
              swift_getKeyPath();
              *&v201 = v2;
              sub_23FFD8FEC();

              v151 = OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App__installationError;
              swift_beginAccess();
              v152 = v166;
              sub_23FF642A8(v2 + v151, v166, &qword_27E3A28E0, &qword_23FFDBA60);
              if ((*(v178 + 48))(v152, 1, v182))
              {
                v153 = 0x296C696E28;
                sub_23FF64248(v152, &qword_27E3A28E0, &qword_23FFDBA60);
                v154 = 0xE500000000000000;
              }

              else
              {
                v155 = v164;
                sub_23FF6EBC0(v152, v164);
                sub_23FF64248(v152, &qword_27E3A28E0, &qword_23FFDBA60);
                v153 = MarketplaceKitError.description.getter();
                v154 = v156;
                sub_23FF519D8(v155);
              }

              v157 = sub_23FF8D0E8(v153, v154, v198);

              *(v149 + 4) = v157;
              _os_log_impl(&dword_23FF4C000, v147, v148, "\t installError:: %s", v149, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v150);
              MEMORY[0x245CB48E0](v150, -1, -1);
              MEMORY[0x245CB48E0](v149, -1, -1);

              return (v181)(v179, v184);
            }

            else
            {

              return (v103)(v146, v104);
            }
          }
        }

        else
        {
          v187 = *(v2 + 80);
          v188 = 0;
          v189 = *(v2 + 104);
          v190 = *(&v199 + 1);
          v191 = v139;
          sub_23FF642A8(v198, v186, &qword_27E3A28D0, &qword_23FFDBA30);
          sub_23FF64248(&v187, &qword_27E3A28D0, &qword_23FFDBA30);
          v103 = v181;
        }

        v141 = 0x296C696E28;

        v142 = 0xE500000000000000;
        goto LABEL_53;
      }
    }

    else
    {
      sub_23FF6DFFC(v121, v120, 0, *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72));
      sub_23FF6E04C(v121, v120, 0, v123, v125, v124, v126);
      v127 = v177;
    }

    v124 = 0x296C696E28;

    v126 = 0xE500000000000000;
    goto LABEL_42;
  }

  sub_23FFD925C();
  v45 = sub_23FFD927C();
  v46 = sub_23FFD955C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_23FF4C000, v45, v46, "Trying to update app with mismatched app data", v47, 2u);
    MEMORY[0x245CB48E0](v47, -1, -1);
  }

  return (*(v5 + 8))(v8, v184);
}