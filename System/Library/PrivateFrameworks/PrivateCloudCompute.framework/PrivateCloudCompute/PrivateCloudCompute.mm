uint64_t sub_1CEF337A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CEF337EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CEF3382C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1CEF33898(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1CEFA8070();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1CEF33944(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1CEFA8070();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CEF339E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Prefetch.Response.Node.ValidationResult(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1CEF33A94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Prefetch.Response.Node.ValidationResult(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CEF33D5C@<X0>(uint64_t *a1@<X8>)
{
  result = PrivateCloudComputeError.underlying.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CEF33DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1CEF33E80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1CEF33F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1CEFA8030();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1CEF33FF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_1CEFA8030();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CEF34098()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CEF340E0()
{
  if (*v0)
  {
    return 0x7466417972746572;
  }

  else
  {
    return 0x6E6F73616572;
  }
}

uint64_t sub_1CEF343AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1CEFA8030();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1CEF34458(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_1CEFA8030();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CEF344FC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 <= 7)
    {
      v5 = 7;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 7;
    if (v4 >= 7)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1CEFA8030();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1CEF345AC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = sub_1CEFA8030();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CEF3464C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 <= 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 4;
    if (v4 >= 4)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1CEFA8030();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1CEF346FC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = sub_1CEFA8030();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CEF3479C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RopesResponseMetadata(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1CEF348D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RopesResponseMetadata(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1CEF34A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1CEFA8030();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1CEF34AD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_1CEFA8030();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CEF34B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CEFA8070();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1CEF34CA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CEFA8070();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1CEF34DEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CEF34E24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CEF41BE0(a1, a2);
  }

  return a1;
}

uint64_t sub_1CEF34E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TrustedRequest(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1CEFA8030();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1CEF34F68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TrustedRequest(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1CEFA8030();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1CEF35074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_1CEF82B4C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1CEF35748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1CEFA8030();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 60);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1CEF35800(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = sub_1CEFA8030();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CEF35970(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CEFA8070();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
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
    v13 = sub_1CEFA8030();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1CEF35AF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1CEFA8070();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1CEFA8030();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1CEF35C80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CEFA8070();
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
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1CEF35DB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1CEFA8070();
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
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1CEF35EF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CEF35F3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CEF3617C()
{
  v0 = sub_1CEFA8220();
  __swift_allocate_value_buffer(v0, qword_1EDE37CA8);
  __swift_project_value_buffer(v0, qword_1EDE37CA8);
  return sub_1CEFA8210();
}

uint64_t DefaultConfiguration.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v112 = a3;
  v8 = type metadata accessor for ConfigurationIndex(0, a2, a3, a5);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v111 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v106 = &v102 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v105 = (&v102 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v113 = (&v102 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v103 = (&v102 - v18);
  v19 = sub_1CEFA85B0();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v102 - v22;
  v116 = *(a2 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v104 = &v102 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v110 = &v102 - v29;
  v114 = v8;
  if ((*(a1 + *(v8 + 36)) & 1) != 0 || (sub_1CEFA8320(), v30 = os_variant_allows_internal_security_policies(), , v30))
  {
    v102 = v26;
    v108 = v9;
    v109 = a4;
    v31 = *a1;
    v32 = a1[1];
    v33 = a1[2];
    v34 = a1[3];
    v115 = a2;
    v107 = a1;
    v35 = v112;
    v36 = *(v112 + 8);

    v37 = v34;
    v38 = v115;
    v36(v31, v32, v33, v37, v115, v35);
    if ((*(v116 + 48))(v23, 1, v38) == 1)
    {
      (*(v20 + 8))(v23, v19);
      if (qword_1EDE37CA0 != -1)
      {
        swift_once();
      }

      v39 = sub_1CEFA8220();
      __swift_project_value_buffer(v39, qword_1EDE37CA8);
      v40 = v107;
      v41 = v108;
      v42 = *(v108 + 2);
      v43 = v105;
      v44 = v114;
      v42(v105, v107, v114);
      v45 = v106;
      v42(v106, v40, v44);
      v46 = v111;
      v42(v111, v40, v44);
      v47 = sub_1CEFA8200();
      v48 = sub_1CEFA8550();
      v113 = v47;
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v117 = v112;
        *v49 = 136315650;
        v50 = *v43;
        v51 = v43[1];
        v52 = v43;
        v53 = *(v41 + 1);

        v53(v52, v44);
        v108 = v53;
        v54 = sub_1CEF36C9C(v50, v51, &v117);

        *(v49 + 4) = v54;
        *(v49 + 12) = 2080;
        v55 = *(v45 + 2);
        v56 = *(v45 + 3);

        v53(v45, v44);
        v57 = sub_1CEF36C9C(v55, v56, &v117);

        *(v49 + 14) = v57;
        *(v49 + 22) = 2080;
        v58 = *(v44 + 32);
        v59 = v115;
        LODWORD(v110) = v48;
        v60 = *(v116 + 16);
        v61 = v40;
        v62 = v111;
        v60(v102, &v111[v58], v115);
        v63 = sub_1CEFA8310();
        v65 = v64;
        v66 = v62;
        v40 = v61;
        v108(v66, v44);
        v67 = sub_1CEF36C9C(v63, v65, &v117);

        *(v49 + 24) = v67;
        v68 = v113;
        _os_log_impl(&dword_1CEF32000, v113, v110, "Configuration defaultValue %s %s = %s", v49, 0x20u);
        v69 = v112;
        swift_arrayDestroy();
        MEMORY[0x1D3867270](v69, -1, -1);
        MEMORY[0x1D3867270](v49, -1, -1);
      }

      else
      {

        v100 = *(v41 + 1);
        v100(v46, v44);
        v100(v45, v44);
        v100(v43, v44);
        v59 = v115;
        v60 = *(v116 + 16);
      }

      return (v60)(v109, v40 + *(v44 + 32), v59);
    }

    else
    {
      v70 = v110;
      v111 = *(v116 + 32);
      v112 = v116 + 32;
      (v111)(v110, v23, v38);
      if (qword_1EDE37CA0 != -1)
      {
        swift_once();
      }

      v71 = sub_1CEFA8220();
      __swift_project_value_buffer(v71, qword_1EDE37CA8);
      v72 = v107;
      v73 = v108;
      v74 = *(v108 + 2);
      v75 = v103;
      v76 = v114;
      v74(v103, v107, v114);
      v74(v113, v72, v76);
      v77 = *(v116 + 16);
      v78 = v104;
      v77(v104, v70, v38);
      v79 = sub_1CEFA8200();
      v80 = sub_1CEFA8550();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        LODWORD(v106) = v80;
        v82 = v81;
        v107 = swift_slowAlloc();
        v117 = v107;
        *v82 = 136315650;
        v105 = v79;
        v83 = *v75;
        v84 = v75[1];
        v85 = *(v73 + 1);

        v85(v75, v76);
        v86 = sub_1CEF36C9C(v83, v84, &v117);

        *(v82 + 4) = v86;
        *(v82 + 12) = 2080;
        v87 = v113;
        isa = v113[2].isa;
        v89 = v113[3].isa;

        v85(v87, v76);
        v90 = sub_1CEF36C9C(isa, v89, &v117);
        v38 = v115;

        *(v82 + 14) = v90;
        *(v82 + 22) = 2080;
        v77(v102, v78, v38);
        v91 = sub_1CEFA8310();
        v93 = v92;
        (*(v116 + 8))(v78, v38);
        v94 = sub_1CEF36C9C(v91, v93, &v117);
        v70 = v110;

        *(v82 + 24) = v94;
        v95 = v105;
        _os_log_impl(&dword_1CEF32000, v105, v106, "Configuration read %s %s = %s", v82, 0x20u);
        v96 = v107;
        swift_arrayDestroy();
        MEMORY[0x1D3867270](v96, -1, -1);
        MEMORY[0x1D3867270](v82, -1, -1);
      }

      else
      {

        (*(v116 + 8))(v78, v38);
        v101 = *(v73 + 1);
        v101(v113, v76);
        v101(v75, v76);
      }

      return (v111)(v109, v70, v38);
    }
  }

  else
  {
    v97 = *(v116 + 16);
    v98 = a1 + *(v114 + 32);

    return v97(a4, v98, a2);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1CEF36C9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1CEF36D68(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1CEF37314(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1CEF36D68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1CEF36E74(a5, a6);
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
    result = sub_1CEFA8690();
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

void *sub_1CEF36E74(uint64_t a1, unint64_t a2)
{
  v3 = sub_1CEF36EC0(a1, a2);
  sub_1CEF36FF0(&unk_1F4BDEF70);
  return v3;
}

void *sub_1CEF36EC0(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1CEF874F0(v5, 0);
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

  result = sub_1CEFA8690();
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
        v10 = sub_1CEFA8360();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1CEF874F0(v10, 0);
        result = sub_1CEFA8630();
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

uint64_t sub_1CEF36FF0(uint64_t result)
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

  result = sub_1CEF370DC(result, v11, 1, v3);
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

char *sub_1CEF370DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8EB0, &qword_1CEFA9318);
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

uint64_t getEnumTagSinglePayload for DefaultConfiguration(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DefaultConfiguration(_WORD *result, int a2, int a3)
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

uint64_t sub_1CEF37314(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

unint64_t ClientConfigurationKey.domain.getter()
{
  if (*v0)
  {
    return 0xD000000000000024;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

PrivateCloudCompute::ClientConfigurationKey_optional __swiftcall ClientConfigurationKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CEFA8980();

  v5 = 0;
  v6 = 21;
  switch(v3)
  {
    case 0:
      goto LABEL_35;
    case 1:
      v5 = 1;
      goto LABEL_35;
    case 2:
      v5 = 2;
      goto LABEL_35;
    case 3:
      v5 = 3;
      goto LABEL_35;
    case 4:
      v5 = 4;
      goto LABEL_35;
    case 5:
      v5 = 5;
      goto LABEL_35;
    case 6:
      v5 = 6;
      goto LABEL_35;
    case 7:
      v5 = 7;
      goto LABEL_35;
    case 8:
      v5 = 8;
      goto LABEL_35;
    case 9:
      v5 = 9;
      goto LABEL_35;
    case 10:
      v5 = 10;
      goto LABEL_35;
    case 11:
      v5 = 11;
      goto LABEL_35;
    case 12:
      v5 = 12;
      goto LABEL_35;
    case 13:
      v5 = 13;
      goto LABEL_35;
    case 14:
      v5 = 14;
      goto LABEL_35;
    case 15:
      v5 = 15;
      goto LABEL_35;
    case 16:
      v5 = 16;
      goto LABEL_35;
    case 17:
      v5 = 17;
      goto LABEL_35;
    case 18:
      v5 = 18;
      goto LABEL_35;
    case 19:
      v5 = 19;
      goto LABEL_35;
    case 20:
      v5 = 20;
LABEL_35:
      v6 = v5;
      break;
    case 21:
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    default:
      v6 = 39;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t ClientConfigurationKey.rawValue.getter()
{
  result = 0x6D6E6F7269766E65;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
    case 0xD:
      result = 0xD000000000000014;
      break;
    case 3:
    case 0x16:
    case 0x17:
    case 0x1D:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000027;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
    case 0x10:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x4145416563726F66;
      break;
    case 8:
    case 0x23:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x657573734974746CLL;
      break;
    case 0xA:
      result = 0x657573734974746FLL;
      break;
    case 0xB:
    case 0xE:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0xD000000000000019;
      break;
    case 0xF:
    case 0x15:
      result = 0xD000000000000024;
      break;
    case 0x11:
    case 0x1F:
      result = 0xD000000000000020;
      break;
    case 0x12:
      result = 0x656469727265766FLL;
      break;
    case 0x13:
    case 0x19:
      result = 0xD000000000000010;
      break;
    case 0x14:
      result = 0xD000000000000019;
      break;
    case 0x18:
      result = 0xD000000000000023;
      break;
    case 0x1A:
      result = 0x6974704F74736574;
      break;
    case 0x1B:
    case 0x1C:
      result = 0xD000000000000021;
      break;
    case 0x1E:
      result = 0xD000000000000025;
      break;
    case 0x20:
      result = 0xD000000000000019;
      break;
    case 0x21:
    case 0x26:
      result = 0xD00000000000001ALL;
      break;
    case 0x22:
      result = 0xD00000000000001DLL;
      break;
    case 0x24:
      result = 0xD000000000000022;
      break;
    case 0x25:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CEF37A04()
{
  v0 = ClientConfigurationKey.rawValue.getter();
  v2 = v1;
  if (v0 == ClientConfigurationKey.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1CEFA8950();
  }

  return v5 & 1;
}

uint64_t sub_1CEF37AA0()
{
  sub_1CEFA8A00();
  ClientConfigurationKey.rawValue.getter();
  sub_1CEFA8340();

  return sub_1CEFA8A40();
}

uint64_t sub_1CEF37B08(uint64_t a1)
{
  ClientConfigurationKey.rawValue.getter();
  sub_1CEFA8340();
}

uint64_t sub_1CEF37B6C(uint64_t a1)
{
  sub_1CEFA8A00();
  ClientConfigurationKey.rawValue.getter();
  sub_1CEFA8340();

  return sub_1CEFA8A40();
}

unint64_t sub_1CEF37BDC@<X0>(unint64_t *a1@<X8>)
{
  result = ClientConfigurationKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ConfigurationIndex.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConfigurationIndex.domain.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ConfigurationIndex.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ConfigurationIndex.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void static ConfigurationIndex.environment.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001DLL;
  *(a1 + 8) = 0x80000001CEFB4430;
  *(a1 + 16) = 0x6D6E6F7269766E65;
  *(a1 + 24) = 0xEB00000000746E65;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.ignoreCertificateErrors.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000017;
  *(a1 + 24) = 0x80000001CEFB3D60;
  *(a1 + 32) = 0;
}

void static ConfigurationIndex.rateLimitRequestPath.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000014;
  *(a1 + 24) = 0x80000001CEFB3D80;
  *(a1 + 32) = 0x6D696C657461722FLL;
  *(a1 + 40) = 0xEB00000000737469;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.rateLimitRequestMinimumSpacing.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD00000000000001ELL;
  *(a1 + 24) = 0x80000001CEFB3DA0;
  *(a1 + 32) = 0x404E000000000000;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.prefetchRequestPath.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000013;
  *(a1 + 24) = 0x80000001CEFB3DF0;
  *(a1 + 32) = 0x637465666572702FLL;
  *(a1 + 40) = 0xE900000000000068;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.trustedRequestPath.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000012;
  *(a1 + 24) = 0x80000001CEFB3E10;
  *(a1 + 32) = 0x656B6F766E692FLL;
  *(a1 + 40) = 0xE700000000000000;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.forceAEADKey.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  strcpy((a1 + 16), "forceAEADKey");
  *(a1 + 29) = 0;
  *(a1 + 30) = -5120;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.lttIssuer.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0x657573734974746CLL;
  *(a1 + 24) = 0xE900000000000072;
  *(a1 + 32) = 0xD000000000000016;
  *(a1 + 40) = 0x80000001CEFB4920;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.ottIssuer.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0x657573734974746FLL;
  *(a1 + 24) = 0xE900000000000072;
  *(a1 + 32) = 0xD000000000000016;
  *(a1 + 40) = 0x80000001CEFB4940;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.maxCachedAttestations.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000015;
  *(a1 + 24) = 0x80000001CEFB3E60;
  *(a1 + 32) = 12;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.maxPrefetchedAttestations.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000019;
  *(a1 + 24) = 0x80000001CEFB3E80;
  *(a1 + 32) = 60;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.maxTotalAttestations.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000014;
  *(a1 + 24) = 0x80000001CEFB3EA0;
  *(a1 + 32) = 87;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.maxInlineAttestations.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000015;
  *(a1 + 24) = 0x80000001CEFB3EC0;
  *(a1 + 32) = 27;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.prewarmAttestationsValidityInSeconds.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000024;
  *(a1 + 24) = 0x80000001CEFB3EE0;
  *(a1 + 32) = 0x409C200000000000;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.maxPrefetchBatches.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000012;
  *(a1 + 24) = 0x80000001CEFB3F10;
  *(a1 + 32) = 5;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.trustedProxyMaxCachedAttestations.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000021;
  *(a1 + 24) = 0x80000001CEFB4060;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

void static ConfigurationIndex.trustedProxyMaxInlineAttestations.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000021;
  *(a1 + 24) = 0x80000001CEFB4090;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

void static ConfigurationIndex.trustedProxyMaxPrefetchBatches.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD00000000000001ELL;
  *(a1 + 24) = 0x80000001CEFB40C0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.trustedProxyMaxPrefetchedAttestations.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000025;
  *(a1 + 24) = 0x80000001CEFB40E0;
  *(a1 + 32) = 60;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.trustedProxyMaxTotalAttestations.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000020;
  *(a1 + 24) = 0x80000001CEFB4110;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

void static ConfigurationIndex.maxProtobufRandomizedPaddingSize.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000020;
  *(a1 + 24) = 0x80000001CEFB3F30;
  *(a1 + 32) = 2048;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.overrideCellID.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  strcpy((a1 + 16), "overrideCellID");
  *(a1 + 31) = -18;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

void static ConfigurationIndex.overrideNodeKind.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000010;
  *(a1 + 24) = 0x80000001CEFB3F60;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.rateLimiterSessionTimeout.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000019;
  *(a1 + 24) = 0x80000001CEFB3F80;
  *(a1 + 32) = 0x404E000000000000;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.rateLimiterSessionLengthForSoftening.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000024;
  *(a1 + 24) = 0x80000001CEFB3FA0;
  *(a1 + 32) = 5;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.rateLimiterDefaultJitterFactor.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD00000000000001ELL;
  *(a1 + 24) = 0x80000001CEFB3FD0;
  *(a1 + 32) = 0x3FB999999999999ALL;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.rateLimiterMaximumRateLimitTtl.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD00000000000001ELL;
  *(a1 + 24) = 0x80000001CEFB3FF0;
  *(a1 + 32) = 0x40F5180000000000;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.rateLimiterMaximumRateLimitDuration.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000023;
  *(a1 + 24) = 0x80000001CEFB4010;
  *(a1 + 32) = 0x40F5180000000000;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.rateLimitUnmatchedRequestStorageTimeout.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000027;
  *(a1 + 24) = 0x80000001CEFB3DC0;
  *(a1 + 32) = 0x404E000000000000;
  *(a1 + 40) = 0;
}

void static ConfigurationIndex.testSignalHeader.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000010;
  *(a1 + 24) = 0x80000001CEFB4040;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.testOptions.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0x6974704F74736574;
  *(a1 + 24) = 0xEB00000000736E6FLL;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.trustedProxyRequestBypass.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000019;
  *(a1 + 24) = 0x80000001CEFB4140;
  *(a1 + 32) = 2;
}

void static ConfigurationIndex.trustedProxyResponseBypass.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD00000000000001ALL;
  *(a1 + 24) = 0x80000001CEFB4160;
  *(a1 + 32) = 1;
}

void static ConfigurationIndex.trustedProxyRoutingGroupAlias.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD00000000000001DLL;
  *(a1 + 24) = 0x80000001CEFB4180;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.routingGroupAlias.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000011;
  *(a1 + 24) = 0x80000001CEFB41A0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.liveOnTargetBuild.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000011;
  *(a1 + 24) = 0x80000001CEFB3E30;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.enforceWorkloadParametersFiltering.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000022;
  *(a1 + 24) = 0x80000001CEFB41C0;
  *(a1 + 32) = 1;
}

void static ConfigurationIndex.proposedLiveOnEnvironment.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD000000000000019;
  *(a1 + 24) = 0x80000001CEFB41F0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void static ConfigurationIndex.bootFixedLiveOnEnvironment.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001CEFB48F0;
  *(a1 + 16) = 0xD00000000000001ALL;
  *(a1 + 24) = 0x80000001CEFB4210;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

unint64_t sub_1CEF388B4()
{
  result = qword_1EC4A8EB8;
  if (!qword_1EC4A8EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8EB8);
  }

  return result;
}

unint64_t sub_1CEF3890C()
{
  result = qword_1EC4A8EC0;
  if (!qword_1EC4A8EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A8EC8, &qword_1CEFA93D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8EC0);
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

uint64_t getEnumTagSinglePayload for ClientConfigurationKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDA)
  {
    goto LABEL_17;
  }

  if (a2 + 38 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 38) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 38;
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

      return (*a1 | (v4 << 8)) - 38;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v8 = v6 - 39;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientConfigurationKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDA)
  {
    v4 = 0;
  }

  if (a2 > 0xD9)
  {
    v5 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
    *result = a2 + 38;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CEF38B1C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CEF38BA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1CEF38D34(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 32) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 32) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

Swift::Int_optional __swiftcall Int.init(defaultsDomain:name:)(Swift::String defaultsDomain, Swift::String name)
{
  v8 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  v2 = sub_1CEFA82F0();

  v3 = sub_1CEFA82F0();

  AppIntegerValue = CFPreferencesGetAppIntegerValue(v2, v3, &keyExistsAndHasValidFormat);

  v5 = keyExistsAndHasValidFormat == 0;
  if (keyExistsAndHasValidFormat)
  {
    v6 = AppIntegerValue;
  }

  else
  {
    v6 = 0;
  }

  result.value = v6;
  result.is_nil = v5;
  return result;
}

void sub_1CEF3909C(uint64_t a5@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  v6 = sub_1CEFA82F0();

  v7 = sub_1CEFA82F0();

  AppIntegerValue = CFPreferencesGetAppIntegerValue(v6, v7, &keyExistsAndHasValidFormat);

  v9 = keyExistsAndHasValidFormat == 0;
  if (keyExistsAndHasValidFormat)
  {
    v10 = AppIntegerValue;
  }

  else
  {
    v10 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v9;
}

uint64_t sub_1CEF39178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, Swift::Bool_optional *a3@<X8>, uint64_t a4@<X1>, uint64_t a5@<X3>)
{
  result = _sSb19PrivateCloudComputeE14defaultsDomain4nameSbSgSS_SStcfC_0(a1, a4, a2, a5);
  a3->value = result;
  return result;
}

void *sub_1CEF391CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_1CEF39A48(a1, a2, a3, a4);
  *a5 = result;
  *(a5 + 4) = BYTE4(result) & 1;
  return result;
}

Swift::Double_optional __swiftcall Double.init(defaultsDomain:name:)(Swift::String defaultsDomain, Swift::String name)
{
  v2 = sub_1CEF39984(defaultsDomain._countAndFlagsBits, defaultsDomain._object, name._countAndFlagsBits, name._object);
  result.value = v3;
  result.is_nil = v2;
  return result;
}

uint64_t sub_1CEF39218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_1CEF39984(a1, a2, a3, a4);
  *a5 = result;
  *(a5 + 8) = v7 & 1;
  return result;
}

uint64_t sub_1CEF3924C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, Swift::String_optional *a3@<X8>, uint64_t a4@<X1>, uint64_t a5@<X3>)
{
  result = _sSS19PrivateCloudComputeE14defaultsDomain4nameSSSgSS_SStcfC_0(a1, a4, a2, a5);
  a3->value._countAndFlagsBits = result;
  a3->value._object = v7;
  return result;
}

uint64_t sub_1CEF392A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - v10;
  v13 = *(v12 + 24);
  Optional<A>.init(defaultsDomain:name:)(v9, v14, v15, v16, v13, v17);
  v18 = *(v13 - 8);
  v19 = 1;
  if ((*(v18 + 48))(v11, 1, v13) != 1)
  {
    (*(v18 + 32))(v8, v11, v13);
    (*(v18 + 56))(v8, 0, 1, v13);
    (*(v5 + 32))(a3, v8, a2);
    v19 = 0;
  }

  return (*(v5 + 56))(a3, v19, 1, a2);
}

Swift::Void __swiftcall String.defaultsWrite(defaultsDomain:name:)(Swift::String defaultsDomain, Swift::String name)
{
  v2 = sub_1CEFA82F0();
  v3 = sub_1CEFA82F0();
  v4 = sub_1CEFA82F0();
  CFPreferencesSetAppValue(v2, v3, v4);
}

void sub_1CEF39500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1CEFA82F0();
  v5 = sub_1CEFA82F0();
  v6 = sub_1CEFA82F0();
  CFPreferencesSetAppValue(v4, v5, v6);
}

void Optional<A>.defaultsWrite(defaultsDomain:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v16, v15);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    (*(v6 + 8))(v9, a5);
    v17 = sub_1CEFA82F0();
    v18 = sub_1CEFA82F0();
    CFPreferencesSetAppValue(v17, 0, v18);
  }

  else
  {
    (*(v12 + 32))(v14, v9, v11);
    v19 = sub_1CEFA82F0();
    v20 = sub_1CEFA8940();
    v21 = sub_1CEFA82F0();
    CFPreferencesSetAppValue(v19, v20, v21);

    swift_unknownObjectRelease();
    (*(v12 + 8))(v14, v11);
  }
}

uint64_t _sSS19PrivateCloudComputeE14defaultsDomain4nameSSSgSS_SStcfC_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1CEFA82F0();

  v5 = sub_1CEFA82F0();

  v6 = CFPreferencesCopyAppValue(v4, v5);

  if (v6 && (swift_dynamicCast() & 1) != 0)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t _sSb19PrivateCloudComputeE14defaultsDomain4nameSbSgSS_SStcfC_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  v4 = sub_1CEFA82F0();

  v5 = sub_1CEFA82F0();

  AppBooleanValue = CFPreferencesGetAppBooleanValue(v4, v5, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    return AppBooleanValue != 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1CEF39984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1CEFA82F0();

  v5 = sub_1CEFA82F0();

  v6 = CFPreferencesCopyAppValue(v4, v5);

  if (v6 && swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1CEF39A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1CEFA82F0();

  v5 = sub_1CEFA82F0();

  v6 = CFPreferencesCopyAppValue(v4, v5);

  if (v6 && swift_dynamicCast())
  {
    v7 = 0;
    v8 = v10;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  return v8 | (v7 << 32);
}

const char *PrivateCloudComputeFeatureFlags.feature.getter()
{
  v1 = "trustedProxyProtocol";
  v2 = "fetchAuthTokenOnPrewarm";
  if (*v0 != 2)
  {
    v2 = "featureUsageAnalyzer";
  }

  if (*v0)
  {
    v1 = "forceTrustedProxyProtocol";
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

uint64_t PrivateCloudComputeFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1CEFA8A00();
  MEMORY[0x1D3866C60](v1);
  return sub_1CEFA8A40();
}

uint64_t _s19PrivateCloudCompute07TrustedbC5ErrorO012UnauthorizedE4InfoV6ReasonO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1CEFA8A00();
  MEMORY[0x1D3866C60](v1);
  return sub_1CEFA8A40();
}

uint64_t sub_1CEF39C84(uint64_t a1)
{
  v2 = *v1;
  sub_1CEFA8A00();
  MEMORY[0x1D3866C60](v2);
  return sub_1CEFA8A40();
}

unint64_t sub_1CEF39CCC()
{
  result = qword_1EC4A8ED0;
  if (!qword_1EC4A8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8ED0);
  }

  return result;
}

const char *sub_1CEF39D34()
{
  v1 = "trustedProxyProtocol";
  v2 = "fetchAuthTokenOnPrewarm";
  if (*v0 != 2)
  {
    v2 = "featureUsageAnalyzer";
  }

  if (*v0)
  {
    v1 = "forceTrustedProxyProtocol";
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

uint64_t getEnumTagSinglePayload for PrivateCloudComputeFeatureFlags(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PrivateCloudComputeFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1CEF39EE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656ELL;
  v3 = a1;
  if (a1 > 4u)
  {
    v12 = 0xE300000000000000;
    v13 = 7759204;
    v14 = 0x6172656D65687065;
    v15 = 0xE90000000000006CLL;
    if (a1 != 8)
    {
      v14 = 0x69746E6172617571;
      v15 = 0xEA0000000000656ELL;
    }

    if (a1 != 7)
    {
      v13 = v14;
      v12 = v15;
    }

    v16 = 0xE200000000000000;
    v17 = 24945;
    if (a1 != 5)
    {
      v17 = 1718773104;
      v16 = 0xE400000000000000;
    }

    if (a1 <= 6u)
    {
      v10 = v17;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 6)
    {
      v11 = v16;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
    v5 = 0xE600000000000000;
    v6 = 0x6E6F6576696CLL;
    v7 = 0xE300000000000000;
    v8 = 7627125;
    if (a1 != 3)
    {
      v8 = 0x676E6967617473;
      v7 = 0xE700000000000000;
    }

    if (a1 != 2)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0x7972726163;
    if (a1)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v9 = 0x69746375646F7270;
    }

    if (a1 <= 1u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    if (v3 <= 1)
    {
      v11 = v4;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0xE200000000000000;
        if (v10 != 24945)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v10 != 1718773104)
        {
LABEL_57:
          v18 = sub_1CEFA8950();
          goto LABEL_58;
        }
      }
    }

    else if (a2 == 7)
    {
      v2 = 0xE300000000000000;
      if (v10 != 7759204)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 8)
    {
      v2 = 0xE90000000000006CLL;
      if (v10 != 0x6172656D65687065)
      {
        goto LABEL_57;
      }
    }

    else if (v10 != 0x69746E6172617571)
    {
      goto LABEL_57;
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xE500000000000000;
      if (v10 != 0x7972726163)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v2 = 0xEA00000000006E6FLL;
      if (v10 != 0x69746375646F7270)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 2)
  {
    v2 = 0xE600000000000000;
    if (v10 != 0x6E6F6576696CLL)
    {
      goto LABEL_57;
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xE300000000000000;
    if (v10 != 7627125)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    if (v10 != 0x676E6967617473)
    {
      goto LABEL_57;
    }
  }

  if (v11 != v2)
  {
    goto LABEL_57;
  }

  v18 = 1;
LABEL_58:

  return v18 & 1;
}

uint64_t sub_1CEF3A19C(uint64_t a1, unsigned __int8 a2)
{
  sub_1CEFA8340();
}

PrivateCloudCompute::TC2Environment_optional __swiftcall TC2Environment.init(name:)(Swift::String name)
{
  v2 = v1;
  result.value = TC2Environment.init(rawValue:)(name).value;
  *v2 = v4;
  return result;
}

PrivateCloudCompute::TC2Environment_optional __swiftcall TC2Environment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CEFA8700();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1CEF3A380()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 7759204;
    v7 = 0x6172656D65687065;
    if (v1 != 8)
    {
      v7 = 0x69746E6172617571;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 24945;
    if (v1 != 5)
    {
      v8 = 1718773104;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x69746375646F7270;
    v3 = 0x6E6F6576696CLL;
    v4 = 7627125;
    if (v1 != 3)
    {
      v4 = 0x676E6967617473;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x7972726163;
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
}

unint64_t TC2Environment.ropesHostname.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v5 = 0xD000000000000018;
    v6 = 0xD00000000000001ELL;
    if (v1 != 8)
    {
      v6 = 0xD00000000000002ALL;
    }

    if (v1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000019;
    if (v1 == 5)
    {
      v7 = 0xD000000000000017;
    }

    if (*v0 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD00000000000001CLL;
    if (v1 == 3)
    {
      v2 = 0xD000000000000013;
    }

    if (v1 >= 2)
    {
      v3 = 0xD000000000000026;
    }

    else
    {
      v3 = 0x70612E7365706F72;
    }

    if (*v0 <= 2u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t TC2Environment.ropesUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8ED8, &qword_1CEFA96F0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v50 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v50 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v50 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v50 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v50 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v50 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v50 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v50 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v30 = &v50 - v29;
  v31 = *v1;
  if (v31 <= 4)
  {
    if (*v1 > 1u)
    {
      if (v31 != 2)
      {
        if (v31 != 3)
        {
          sub_1CEFA7F00();
          v44 = sub_1CEFA7F10();
          v45 = *(v44 - 8);
          result = (*(v45 + 48))(v18, 1, v44);
          if (result != 1)
          {
            return (*(v45 + 32))(v51, v18, v44);
          }

          goto LABEL_36;
        }

        sub_1CEFA7F00();
        v32 = sub_1CEFA7F10();
        v33 = *(v32 - 8);
        result = (*(v33 + 48))(v21, 1, v32);
        if (result != 1)
        {
          return (*(v33 + 32))(v51, v21, v32);
        }

        goto LABEL_33;
      }

      sub_1CEFA7F00();
      v40 = sub_1CEFA7F10();
      v41 = *(v40 - 8);
      result = (*(v41 + 48))(v24, 1, v40);
      if (result != 1)
      {
        return (*(v41 + 32))(v51, v24, v40);
      }

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
      goto LABEL_37;
    }

LABEL_12:
    if (v31)
    {
      sub_1CEFA7F00();
      v46 = sub_1CEFA7F10();
      v47 = *(v46 - 8);
      result = (*(v47 + 48))(v27, 1, v46);
      if (result != 1)
      {
        return (*(v47 + 32))(v51, v27, v46);
      }

      goto LABEL_38;
    }

    sub_1CEFA7F00();
    v36 = sub_1CEFA7F10();
    v37 = *(v36 - 8);
    result = (*(v37 + 48))(v30, 1, v36);
    if (result != 1)
    {
      return (*(v37 + 32))(v51, v30, v36);
    }

    goto LABEL_34;
  }

  if (*v1 > 6u)
  {
    if (v31 == 7)
    {
      sub_1CEFA7F00();
      v42 = sub_1CEFA7F10();
      v43 = *(v42 - 8);
      result = (*(v43 + 48))(v9, 1, v42);
      if (result != 1)
      {
        return (*(v43 + 32))(v51, v9, v42);
      }

      goto LABEL_32;
    }

    if (v31 == 8)
    {
      sub_1CEFA7F00();
      v27 = sub_1CEFA7F10();
      v35 = *(v27 - 1);
      if ((*(v35 + 48))(v6, 1, v27) == 1)
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      v6 = v28;
      sub_1CEFA7F00();
      v27 = sub_1CEFA7F10();
      v35 = *(v27 - 1);
      result = (*(v35 + 48))(v6, 1, v27);
      if (result == 1)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    return (*(v35 + 32))(v51, v6, v27);
  }

  if (v31 == 5)
  {
    sub_1CEFA7F00();
    v38 = sub_1CEFA7F10();
    v39 = *(v38 - 8);
    result = (*(v39 + 48))(v15, 1, v38);
    if (result != 1)
    {
      return (*(v39 + 32))(v51, v15, v38);
    }

    goto LABEL_35;
  }

  sub_1CEFA7F00();
  v48 = sub_1CEFA7F10();
  v49 = *(v48 - 8);
  result = (*(v49 + 48))(v12, 1, v48);
  if (result == 1)
  {
LABEL_39:
    __break(1u);
    return result;
  }

  return (*(v49 + 32))(v51, v12, v48);
}

uint64_t TC2Environment.configUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8ED8, &qword_1CEFA96F0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v50 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v50 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v50 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v50 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v50 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v50 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v50 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v50 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v30 = &v50 - v29;
  v31 = *v1;
  if (v31 <= 4)
  {
    if (*v1 > 1u)
    {
      if (v31 != 2)
      {
        if (v31 != 3)
        {
          sub_1CEFA7F00();
          v44 = sub_1CEFA7F10();
          v45 = *(v44 - 8);
          result = (*(v45 + 48))(v18, 1, v44);
          if (result != 1)
          {
            return (*(v45 + 32))(v51, v18, v44);
          }

          goto LABEL_36;
        }

        sub_1CEFA7F00();
        v32 = sub_1CEFA7F10();
        v33 = *(v32 - 8);
        result = (*(v33 + 48))(v21, 1, v32);
        if (result != 1)
        {
          return (*(v33 + 32))(v51, v21, v32);
        }

        goto LABEL_33;
      }

      sub_1CEFA7F00();
      v40 = sub_1CEFA7F10();
      v41 = *(v40 - 8);
      result = (*(v41 + 48))(v24, 1, v40);
      if (result != 1)
      {
        return (*(v41 + 32))(v51, v24, v40);
      }

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
      goto LABEL_37;
    }

LABEL_12:
    if (v31)
    {
      sub_1CEFA7F00();
      v46 = sub_1CEFA7F10();
      v47 = *(v46 - 8);
      result = (*(v47 + 48))(v27, 1, v46);
      if (result != 1)
      {
        return (*(v47 + 32))(v51, v27, v46);
      }

      goto LABEL_38;
    }

    sub_1CEFA7F00();
    v36 = sub_1CEFA7F10();
    v37 = *(v36 - 8);
    result = (*(v37 + 48))(v30, 1, v36);
    if (result != 1)
    {
      return (*(v37 + 32))(v51, v30, v36);
    }

    goto LABEL_34;
  }

  if (*v1 > 6u)
  {
    if (v31 == 7)
    {
      sub_1CEFA7F00();
      v42 = sub_1CEFA7F10();
      v43 = *(v42 - 8);
      result = (*(v43 + 48))(v9, 1, v42);
      if (result != 1)
      {
        return (*(v43 + 32))(v51, v9, v42);
      }

      goto LABEL_32;
    }

    if (v31 == 8)
    {
      sub_1CEFA7F00();
      v27 = sub_1CEFA7F10();
      v35 = *(v27 - 1);
      if ((*(v35 + 48))(v6, 1, v27) == 1)
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      v6 = v28;
      sub_1CEFA7F00();
      v27 = sub_1CEFA7F10();
      v35 = *(v27 - 1);
      result = (*(v35 + 48))(v6, 1, v27);
      if (result == 1)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    return (*(v35 + 32))(v51, v6, v27);
  }

  if (v31 == 5)
  {
    sub_1CEFA7F00();
    v38 = sub_1CEFA7F10();
    v39 = *(v38 - 8);
    result = (*(v39 + 48))(v15, 1, v38);
    if (result != 1)
    {
      return (*(v39 + 32))(v51, v15, v38);
    }

    goto LABEL_35;
  }

  sub_1CEFA7F00();
  v48 = sub_1CEFA7F10();
  v49 = *(v48 - 8);
  result = (*(v49 + 48))(v12, 1, v48);
  if (result == 1)
  {
LABEL_39:
    __break(1u);
    return result;
  }

  return (*(v49 + 32))(v51, v12, v48);
}

uint64_t sub_1CEF3B590()
{
  v1 = *v0;
  sub_1CEFA8A00();
  sub_1CEF3A19C(v3, v1);
  return sub_1CEFA8A40();
}

uint64_t sub_1CEF3B5E0(uint64_t a1)
{
  v2 = *v1;
  sub_1CEFA8A00();
  sub_1CEF3A19C(v4, v2);
  return sub_1CEFA8A40();
}

uint64_t sub_1CEF3B630@<X0>(uint64_t *a1@<X8>)
{
  result = TC2Environment.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Environment.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1CEFA80C0();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_1E83BC368 + v3);

  return v5(a2, v6, v4);
}

unint64_t sub_1CEF3B6E4()
{
  result = qword_1EC4A8EE0;
  if (!qword_1EC4A8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8EE0);
  }

  return result;
}

unint64_t sub_1CEF3B73C()
{
  result = qword_1EC4A8EE8;
  if (!qword_1EC4A8EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A8EF0, &qword_1CEFA9798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8EE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TC2Environment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TC2Environment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CEF3B8F4()
{
  v0 = sub_1CEFA8220();
  __swift_allocate_value_buffer(v0, qword_1EC4A8EF8);
  __swift_project_value_buffer(v0, qword_1EC4A8EF8);
  return sub_1CEFA8210();
}

PCCServerEnvironment __swiftcall PCCServerEnvironment.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t PCCServerEnvironment.selectedEnvironmentName()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CEF3BAC0;

  return sub_1CEF3C74C();
}

uint64_t sub_1CEF3BAC0(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1CEF3BD44(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1CEF3BDEC;

  return sub_1CEF3C74C();
}

uint64_t sub_1CEF3BDEC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v2)
  {
    if (v6)
    {
      v8 = *(v5 + 16);
      v9 = sub_1CEFA7EF0();

      v8[2](v8, 0, v9);
      v10 = v8;
LABEL_6:
      _Block_release(v10);

      goto LABEL_9;
    }
  }

  else
  {
    if (v6)
    {
      v11 = *(v5 + 16);
      v9 = sub_1CEFA82F0();

      v11[2](v11, v9, 0);
      v10 = v11;
      goto LABEL_6;
    }
  }

LABEL_9:
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_1CEF3BFAC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1CEF3D620;

  return v6();
}

uint64_t sub_1CEF3C094(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1CEF3C17C;

  return v7();
}

uint64_t sub_1CEF3C17C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1CEF3C270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F18, &qword_1CEFAC050);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1CEF3D2B4(a3, v23 - v10);
  v12 = sub_1CEFA84F0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1CEF3D55C(v11, &qword_1EC4A8F18, &qword_1CEFAC050);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1CEFA84E0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1CEFA8480();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1CEFA8320() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1CEF3D55C(a3, &qword_1EC4A8F18, &qword_1CEFAC050);

    return v21;
  }

LABEL_8:
  sub_1CEF3D55C(a3, &qword_1EC4A8F18, &qword_1CEFAC050);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1CEF3C55C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CEF3C654;

  return v6(a1);
}

uint64_t sub_1CEF3C654()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1CEF3C74C()
{
  v0[6] = type metadata accessor for PrivateCloudComputeError(0);
  v0[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v0[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CEF3C814, 0, 0);
}

uint64_t sub_1CEF3C814()
{
  v23 = v0;
  sub_1CEFA8320();
  v1 = os_variant_allows_internal_security_policies();

  if (!v1)
  {
    if (qword_1EC4A8E70 != -1)
    {
      swift_once();
    }

    v6 = 0xEA00000000006E6FLL;
    v7 = 0x69746375646F7270;
    v8 = sub_1CEFA8220();
    __swift_project_value_buffer(v8, qword_1EC4A8EF8);
    v9 = sub_1CEFA8200();
    v10 = sub_1CEFA8550();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_15;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446210;
    v13 = 0x69746375646F7270;
    v14 = 0xEA00000000006E6FLL;
LABEL_14:
    *(v11 + 4) = sub_1CEF36C9C(v13, v14, &v22);
    _os_log_impl(&dword_1CEF32000, v9, v10, "current environment=%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1D3867270](v12, -1, -1);
    MEMORY[0x1D3867270](v11, -1, -1);
LABEL_15:

LABEL_17:

    v17 = v0[1];

    return v17(v7, v6);
  }

  v2 = NSUserName();
  v3 = sub_1CEFA8300();
  v5 = v4;

  if (v3 == 0x7075746573626D5FLL && v5 == 0xEC00000072657375)
  {

LABEL_10:
    if (qword_1EC4A8E70 != -1)
    {
      swift_once();
    }

    v7 = 0x7972726163;
    v16 = sub_1CEFA8220();
    __swift_project_value_buffer(v16, qword_1EC4A8EF8);
    v9 = sub_1CEFA8200();
    v10 = sub_1CEFA8550();
    if (!os_log_type_enabled(v9, v10))
    {

      v6 = 0xE500000000000000;
      goto LABEL_17;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446210;
    v6 = 0xE500000000000000;
    v13 = 0x7972726163;
    v14 = 0xE500000000000000;
    goto LABEL_14;
  }

  v15 = sub_1CEFA8950();

  if (v15)
  {
    goto LABEL_10;
  }

  type metadata accessor for TC2Client();
  inited = swift_initStackObject();
  v0[9] = inited;
  type metadata accessor for XPCWrapper();
  swift_allocObject();
  LOBYTE(v22) = 1;
  v20 = sub_1CEF9360C(0x100000000);
  v0[10] = v20;
  *(inited + 16) = v20;
  v21 = swift_task_alloc();
  v0[11] = v21;
  *v21 = v0;
  v21[1] = sub_1CEF3CBF4;

  return sub_1CEF9FAC8();
}

uint64_t sub_1CEF3CBF4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1CEF3CCF4, 0, 0);
}

uint64_t sub_1CEF3CCF4()
{
  v1 = v0[13];
  v2 = v0[12] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    swift_setDeallocating();

    sub_1CEF94458();

    v3 = v0[12];
    v4 = v0[13];

    v5 = v0[1];

    return v5(v3, v4);
  }

  else
  {
    v7 = v0[7];
    v8 = v0[8];
    v9 = v0[6];

    sub_1CEF3D494();
    swift_allocError();
    v19 = v10;
    v11 = sub_1CEFA8030();
    v12 = *(*(v11 - 8) + 56);
    v12(v8, 1, 1, v11);
    sub_1CEFA8650();

    v13 = sub_1CEFA8660();
    MEMORY[0x1D38665A0](v13);

    MEMORY[0x1D38665A0](0x3D656E696C202CLL, 0xE700000000000000);
    v0[5] = 45;
    v14 = sub_1CEFA8910();
    MEMORY[0x1D38665A0](v14);

    v15 = v9[5];
    v12(&v7[v15], 1, 1, v11);
    v16 = &v7[v9[6]];
    v17 = &v7[v9[7]];
    *v7 = 21;
    sub_1CEF3D4EC(v8, &v7[v15]);
    *v16 = 0;
    v16[1] = 0;
    *v17 = 0xD000000000000025;
    v17[1] = 0x80000001CEFB4FA0;
    sub_1CEF3D55C(v8, &qword_1EC4A8F20, &unk_1CEFAB3E0);
    *&v7[v9[8]] = MEMORY[0x1E69E7CC0];
    sub_1CEF3D5BC(v7, v19);
    swift_willThrow();
    swift_setDeallocating();

    sub_1CEF94458();

    v18 = v0[1];

    return v18();
  }
}

unint64_t type metadata accessor for PCCServerEnvironment()
{
  result = qword_1EC4A8F10;
  if (!qword_1EC4A8F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4A8F10);
  }

  return result;
}

uint64_t sub_1CEF3D03C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CEF3D620;

  return sub_1CEF3BD44(v2);
}

uint64_t sub_1CEF3D0E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CEF3D620;

  return sub_1CEF3BFAC(v2, v3, v4);
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CEF3D1E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CEF3C17C;

  return sub_1CEF3C094(a1, v4, v5, v6);
}

uint64_t sub_1CEF3D2B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F18, &qword_1CEFAC050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEF3D324(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CEF3D620;

  return sub_1CEF3C55C(a1, v4);
}

uint64_t sub_1CEF3D3DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CEF3C17C;

  return sub_1CEF3C55C(a1, v4);
}

unint64_t sub_1CEF3D494()
{
  result = qword_1EDE38038;
  if (!qword_1EDE38038)
  {
    type metadata accessor for PrivateCloudComputeError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE38038);
  }

  return result;
}

uint64_t sub_1CEF3D4EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEF3D55C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CEF3D5BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudComputeError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEF3D628()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x64696C61766E69;
    if (v1 != 1)
    {
      v5 = 0xD000000000000018;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x64696C6176;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (v1 != 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000013;
    if (v1 != 3)
    {
      v3 = 0x6F54797269707865;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1CEF3D71C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CEF43260(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CEF3D750(uint64_t a1)
{
  v2 = sub_1CEF418EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF3D78C(uint64_t a1)
{
  v2 = sub_1CEF418EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF3D7D4(uint64_t a1)
{
  v2 = sub_1CEF419E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF3D810(uint64_t a1)
{
  v2 = sub_1CEF419E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF3D854()
{
  sub_1CEFA8A00();
  MEMORY[0x1D3866C60](0);
  return sub_1CEFA8A40();
}

uint64_t sub_1CEF3D898(uint64_t a1)
{
  sub_1CEFA8A00();
  MEMORY[0x1D3866C60](0);
  return sub_1CEFA8A40();
}

uint64_t sub_1CEF3D8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CEFA8950();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CEF3D970(uint64_t a1)
{
  v2 = sub_1CEF41AE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF3D9AC(uint64_t a1)
{
  v2 = sub_1CEF41AE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF3D9E8(uint64_t a1)
{
  v2 = sub_1CEF41940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF3DA24(uint64_t a1)
{
  v2 = sub_1CEF41940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF3DA60(uint64_t a1)
{
  v2 = sub_1CEF41A90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF3DA9C(uint64_t a1)
{
  v2 = sub_1CEF41A90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF3DAD8()
{
  if (*v0)
  {
    return 0x797269707865;
  }

  else
  {
    return 0x654B63696C627570;
  }
}

uint64_t sub_1CEF3DB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x654B63696C627570 && a2 == 0xE900000000000079;
  if (v6 || (sub_1CEFA8950() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797269707865 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CEFA8950();

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

uint64_t sub_1CEF3DBF4(uint64_t a1)
{
  v2 = sub_1CEF41B38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF3DC30(uint64_t a1)
{
  v2 = sub_1CEF41B38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF3DC6C(uint64_t a1)
{
  v2 = sub_1CEF41994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF3DCA8(uint64_t a1)
{
  v2 = sub_1CEF41994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF3DCE4(uint64_t a1)
{
  v2 = sub_1CEF41A3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF3DD20(uint64_t a1)
{
  v2 = sub_1CEF41A3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Prefetch.Response.Node.ValidationResult.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F28, &qword_1CEFA9880);
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F30, &qword_1CEFA9888);
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F38, &qword_1CEFA9890);
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v57 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F40, &qword_1CEFA9898);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F48, &qword_1CEFA98A0);
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v57 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F50, &qword_1CEFA98A8);
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v75 = &v57 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F58, &qword_1CEFA98B0);
  v60 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v13 = &v57 - v12;
  v14 = sub_1CEFA8030();
  v73 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Prefetch.Response.Node.ValidationResult(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F60, &qword_1CEFA98B8);
  v81 = *(v20 - 8);
  v82 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF418EC();
  v83 = v22;
  sub_1CEFA8A60();
  sub_1CEF41F24(v79, v19, type metadata accessor for Prefetch.Response.Node.ValidationResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      v24 = v82;
      v25 = v83;
      if (EnumCaseMultiPayload == 5)
      {
        LOBYTE(v84) = 5;
        sub_1CEF41994();
        v37 = v67;
        sub_1CEFA8820();
        v39 = v68;
        v38 = v69;
      }

      else
      {
        LOBYTE(v84) = 6;
        sub_1CEF41940();
        v37 = v70;
        sub_1CEFA8820();
        v39 = v71;
        v38 = v72;
      }
    }

    else
    {
      v24 = v82;
      v25 = v83;
      if (EnumCaseMultiPayload == 3)
      {
        LOBYTE(v84) = 3;
        sub_1CEF41A3C();
        v26 = v61;
        sub_1CEFA8820();
        (*(v62 + 8))(v26, v63);
        return (*(v81 + 8))(v25, v24);
      }

      LOBYTE(v84) = 4;
      sub_1CEF419E8();
      v37 = v64;
      sub_1CEFA8820();
      v39 = v65;
      v38 = v66;
    }

    (*(v39 + 8))(v37, v38);
    return (*(v81 + 8))(v25, v24);
  }

  v28 = v75;
  v27 = v76;
  v30 = v77;
  v29 = v78;
  v31 = v16;
  v32 = v74;
  if (EnumCaseMultiPayload)
  {
    v33 = v82;
    if (EnumCaseMultiPayload == 1)
    {
      LOBYTE(v84) = 1;
      sub_1CEF41AE4();
      v34 = v83;
      sub_1CEFA8820();
      v35 = v58;
      sub_1CEFA8880();

      (*(v59 + 8))(v28, v35);
      return (*(v81 + 8))(v34, v33);
    }

    else
    {
      LOBYTE(v84) = 2;
      sub_1CEF41A90();
      v51 = v27;
      v52 = v83;
      sub_1CEFA8820();
      (*(v30 + 1))(v51, v29);
      return (*(v81 + 8))(v52, v33);
    }
  }

  else
  {
    v41 = *v19;
    v40 = v19[1];
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F90, &qword_1CEFA98C0);
    v43 = v73;
    v44 = *(v73 + 32);
    v45 = v19 + *(v42 + 48);
    v77 = v31;
    v44(v31, v45, v14);
    LOBYTE(v84) = 0;
    sub_1CEF41B38();
    v46 = v13;
    v47 = v82;
    v48 = v83;
    sub_1CEFA8820();
    v78 = v40;
    v79 = v41;
    v84 = v41;
    v85 = v40;
    v86 = 0;
    sub_1CEF41B8C();
    v49 = v32;
    v50 = v80;
    sub_1CEFA88D0();
    if (v50)
    {
      (*(v60 + 8))(v46, v32);
      (*(v43 + 8))(v77, v14);
      (*(v81 + 8))(v48, v47);
      return sub_1CEF41BE0(v79, v78);
    }

    else
    {
      v54 = v78;
      v53 = v79;
      LOBYTE(v84) = 1;
      sub_1CEF41CEC(&qword_1EDE380D8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
      v55 = v77;
      sub_1CEFA88D0();
      v56 = v60;
      sub_1CEF41BE0(v53, v54);
      (*(v56 + 8))(v46, v49);
      (*(v73 + 8))(v55, v14);
      return (*(v81 + 8))(v83, v82);
    }
  }
}

uint64_t Prefetch.Response.Node.ValidationResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F98, &qword_1CEFA98C8);
  v87 = *(v3 - 8);
  v88 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v98 = &v71 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FA0, &qword_1CEFA98D0);
  v85 = *(v5 - 8);
  v86 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v97 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FA8, &qword_1CEFA98D8);
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v71 - v8;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FB0, &qword_1CEFA98E0);
  v80 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v91 = &v71 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FB8, &qword_1CEFA98E8);
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v90 = &v71 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FC0, &qword_1CEFA98F0);
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v89 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FC8, &qword_1CEFA98F8);
  v81 = *(v12 - 8);
  v82 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD0, &unk_1CEFA9900);
  v94 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - v15;
  v17 = type metadata accessor for Prefetch.Response.Node.ValidationResult(0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (&v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v71 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v71 - v24;
  v26 = a1[3];
  v99 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1CEF418EC();
  v27 = v100;
  sub_1CEFA8A50();
  if (v27)
  {
    goto LABEL_12;
  }

  v71 = v20;
  v72 = v23;
  v28 = v95;
  v29 = v96;
  v74 = 0;
  v31 = v97;
  v30 = v98;
  v75 = v17;
  v73 = v25;
  v100 = v16;
  v32 = sub_1CEFA8800();
  v33 = v14;
  if (*(v32 + 16) != 1 || (v34 = *(v32 + 32), v34 == 7))
  {
    v42 = sub_1CEFA8680();
    swift_allocError();
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD8, &qword_1CEFB1B20);
    *v44 = v75;
    v45 = v33;
    v46 = v100;
    sub_1CEFA8720();
    sub_1CEFA8670();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
    swift_willThrow();
    goto LABEL_10;
  }

  if (*(v32 + 32) <= 2u)
  {
    if (!*(v32 + 32))
    {
      v103 = 0;
      sub_1CEF41B38();
      v53 = v100;
      v54 = v14;
      v55 = v74;
      sub_1CEFA8710();
      if (v55)
      {
        (*(v94 + 8))(v53, v14);
        goto LABEL_11;
      }

      v102 = 0;
      sub_1CEF41C98();
      v56 = v72;
      v57 = v82;
      sub_1CEFA87D0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F90, &qword_1CEFA98C0);
      sub_1CEFA8030();
      v101[0] = 1;
      sub_1CEF41CEC(&qword_1EC4A8FE8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
      sub_1CEFA87D0();
      (*(v81 + 8))(v28, v57);
      v70 = v56;
      (*(v94 + 8))(v53, v54);
      swift_unknownObjectRelease();
      goto LABEL_34;
    }

    v49 = v74;
    if (v34 != 1)
    {
      v105 = 2;
      sub_1CEF41A90();
      v58 = v90;
      v59 = v33;
      v60 = v100;
      sub_1CEFA8710();
      if (v49)
      {
        (*(v94 + 8))(v60, v59);
        goto LABEL_11;
      }

      (*(v77 + 8))(v58, v79);
      (*(v94 + 8))(v60, v59);
      swift_unknownObjectRelease();
      v41 = v73;
      swift_storeEnumTagMultiPayload();
LABEL_35:
      v66 = v99;
      v35 = v93;
      goto LABEL_36;
    }

    v104 = 1;
    sub_1CEF41AE4();
    v50 = v89;
    v45 = v14;
    v46 = v100;
    sub_1CEFA8710();
    if (!v49)
    {
      v51 = v78;
      v67 = sub_1CEFA8780();
      v69 = v68;
      (*(v76 + 8))(v50, v51);
      (*(v94 + 8))(v100, v45);
      swift_unknownObjectRelease();
      v70 = v71;
      *v71 = v67;
      *(v70 + 8) = v69;
LABEL_34:
      swift_storeEnumTagMultiPayload();
      v41 = v73;
      sub_1CEF41C34(v70, v73);
      goto LABEL_35;
    }

LABEL_10:
    (*(v94 + 8))(v46, v45);
    goto LABEL_11;
  }

  if (*(v32 + 32) > 4u)
  {
    v35 = v93;
    v36 = v100;
    if (v34 != 5)
    {
      v109 = 6;
      sub_1CEF41940();
      v63 = v14;
      v64 = v74;
      sub_1CEFA8710();
      v65 = v94;
      if (!v64)
      {
        (*(v87 + 8))(v30, v88);
        (*(v65 + 8))(v36, v63);
        swift_unknownObjectRelease();
        v41 = v73;
        goto LABEL_33;
      }

      (*(v94 + 8))(v36, v63);
      goto LABEL_11;
    }

    v108 = 5;
    sub_1CEF41994();
    v38 = v14;
    v52 = v74;
    sub_1CEFA8710();
    v40 = v94;
    if (!v52)
    {
      (*(v85 + 8))(v31, v86);
      (*(v40 + 8))(v36, v14);
      swift_unknownObjectRelease();
      v41 = v73;
      goto LABEL_33;
    }
  }

  else
  {
    v35 = v93;
    v36 = v100;
    if (v34 == 3)
    {
      v106 = 3;
      sub_1CEF41A3C();
      v37 = v91;
      v38 = v33;
      v39 = v74;
      sub_1CEFA8710();
      v40 = v94;
      if (!v39)
      {
        (*(v80 + 8))(v37, v29);
        (*(v40 + 8))(v36, v33);
        swift_unknownObjectRelease();
        v41 = v73;
LABEL_33:
        swift_storeEnumTagMultiPayload();
        v66 = v99;
LABEL_36:
        sub_1CEF41C34(v41, v35);
        v47 = v66;
        return __swift_destroy_boxed_opaque_existential_0(v47);
      }
    }

    else
    {
      v107 = 4;
      sub_1CEF419E8();
      v61 = v92;
      v38 = v33;
      v62 = v74;
      sub_1CEFA8710();
      v40 = v94;
      if (!v62)
      {
        (*(v83 + 8))(v61, v84);
        (*(v40 + 8))(v36, v33);
        swift_unknownObjectRelease();
        v41 = v73;
        goto LABEL_33;
      }
    }
  }

  (*(v40 + 8))(v36, v38);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v47 = v99;
  return __swift_destroy_boxed_opaque_existential_0(v47);
}

uint64_t sub_1CEF3F484()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CEF3F4B8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1CEF3F4EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1CEF3F518()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CEF3F54C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 34;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CEF3F580()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Prefetch.Response.Node.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Prefetch.Response.Node.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Prefetch.Response.Node.cloudOSVersion.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Prefetch.Response.Node.cloudOSVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Prefetch.Response.Node.cloudOSReleaseType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Prefetch.Response.Node.cloudOSReleaseType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Prefetch.Response.Node.validationResult.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Prefetch.Response.Node(0) + 28);

  return sub_1CEF41D54(a1, v3);
}

uint64_t Prefetch.Response.Node.savedToCache.setter(char a1)
{
  result = type metadata accessor for Prefetch.Response.Node(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t Prefetch.Response.Node.udid.getter()
{
  v1 = *(v0 + *(type metadata accessor for Prefetch.Response.Node(0) + 36));

  return v1;
}

uint64_t Prefetch.Response.Node.udid.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Prefetch.Response.Node(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Prefetch.Response.Node.init(identifier:cloudOSVersion:cloudOSReleaseType:validationResult:savedToCache:udid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = type metadata accessor for Prefetch.Response.Node(0);
  v19 = (a9 + v18[9]);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  result = sub_1CEF41C34(a7, a9 + v18[7]);
  *(a9 + v18[8]) = a8;
  *v19 = a10;
  v19[1] = a11;
  return result;
}

unint64_t sub_1CEF3FA80()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x436F546465766173;
  if (v1 != 4)
  {
    v3 = 1684628597;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000012;
  if (v1 == 1)
  {
    v4 = 0x56534F64756F6C63;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_1CEF3FB50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CEF434B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CEF3FB84(uint64_t a1)
{
  v2 = sub_1CEF41ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF3FBC0(uint64_t a1)
{
  v2 = sub_1CEF41ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Prefetch.Response.Node.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FF0, &qword_1CEFA9910);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF41ED0();
  sub_1CEFA8A60();
  v8[15] = 0;
  sub_1CEFA8880();
  if (!v1)
  {
    v8[14] = 1;
    sub_1CEFA8880();
    v8[13] = 2;
    sub_1CEFA8880();
    type metadata accessor for Prefetch.Response.Node(0);
    v8[12] = 3;
    type metadata accessor for Prefetch.Response.Node.ValidationResult(0);
    sub_1CEF41CEC(&qword_1EDE37BD0, type metadata accessor for Prefetch.Response.Node.ValidationResult, &protocol conformance descriptor for Prefetch.Response.Node.ValidationResult);
    sub_1CEFA88D0();
    v8[11] = 4;
    sub_1CEFA8890();
    v8[10] = 5;
    sub_1CEFA8830();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Prefetch.Response.Node.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for Prefetch.Response.Node.ValidationResult(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FF8, &qword_1CEFA9918);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for Prefetch.Response.Node(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1CEF41ED0();
  v13 = v8;
  v14 = v29;
  sub_1CEFA8A50();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0(v30);
  }

  v15 = v5;
  v36 = 0;
  v16 = v27;
  *v11 = sub_1CEFA8780();
  v11[1] = v17;
  v35 = 1;
  v11[2] = sub_1CEFA8780();
  v11[3] = v18;
  v34 = 2;
  v11[4] = sub_1CEFA8780();
  v11[5] = v19;
  v33 = 3;
  sub_1CEF41CEC(&qword_1EC4A9000, type metadata accessor for Prefetch.Response.Node.ValidationResult, &protocol conformance descriptor for Prefetch.Response.Node.ValidationResult);
  sub_1CEFA87D0();
  sub_1CEF41C34(v15, v11 + v9[7]);
  v32 = 4;
  *(v11 + v9[8]) = sub_1CEFA8790() & 1;
  v31 = 5;
  v21 = sub_1CEFA8730();
  v23 = v22;
  v24 = (v11 + v9[9]);
  (*(v16 + 8))(v13, v28);
  *v24 = v21;
  v24[1] = v23;
  sub_1CEF41F24(v11, v26, type metadata accessor for Prefetch.Response.Node);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return sub_1CEF41F8C(v11, type metadata accessor for Prefetch.Response.Node);
}

uint64_t Prefetch.Response.nodes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Prefetch.Response.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Prefetch.Response(0) + 20);
  v4 = sub_1CEFA8070();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Prefetch.Response.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Prefetch.Response(0) + 20);
  v4 = sub_1CEFA8070();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Prefetch.Response.init(id:nodes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for Prefetch.Response(0) + 20);
  v7 = sub_1CEFA8070();
  result = (*(*(v7 - 8) + 32))(&a3[v6], a1, v7);
  *a3 = a2;
  return result;
}

uint64_t sub_1CEF4053C()
{
  if (*v0)
  {
    return 25705;
  }

  else
  {
    return 0x7365646F6ELL;
  }
}

uint64_t sub_1CEF40568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365646F6ELL && a2 == 0xE500000000000000;
  if (v6 || (sub_1CEFA8950() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CEFA8950();

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

uint64_t sub_1CEF40638(uint64_t a1)
{
  v2 = sub_1CEF42044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF40674(uint64_t a1)
{
  v2 = sub_1CEF42044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Prefetch.Response.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9008, &qword_1CEFA9920);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF42044();
  sub_1CEFA8A60();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9010, &qword_1CEFA9928);
  sub_1CEF42098(&qword_1EDE379A8, qword_1EDE37B20, &protocol conformance descriptor for Prefetch.Response.Node, MEMORY[0x1E69E6300]);
  sub_1CEFA88D0();
  if (!v2)
  {
    type metadata accessor for Prefetch.Response(0);
    v10[6] = 1;
    sub_1CEFA8070();
    sub_1CEF41CEC(&qword_1EDE380D0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1CEFA88D0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Prefetch.Response.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1CEFA8070();
  v22 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9018, &qword_1CEFA9930);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Prefetch.Response(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF42044();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = a1;
  v11 = v10;
  v13 = v24;
  v12 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9010, &qword_1CEFA9928);
  v28 = 0;
  sub_1CEF42098(&qword_1EC4A9020, &qword_1EC4A9028, &protocol conformance descriptor for Prefetch.Response.Node, MEMORY[0x1E69E6330]);
  v14 = v26;
  sub_1CEFA87D0();
  v19 = v11;
  v20 = v29;
  *v11 = v29;
  v27 = 1;
  sub_1CEF41CEC(&qword_1EC4A9030, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1CEFA87D0();
  (*(v13 + 8))(v7, v14);
  v15 = *(v8 + 20);
  v16 = v19;
  (*(v22 + 32))(&v19[v15], v5, v12);
  sub_1CEF41F24(v16, v23, type metadata accessor for Prefetch.Response);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return sub_1CEF41F8C(v16, type metadata accessor for Prefetch.Response);
}

uint64_t Prefetch.workloadType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Prefetch.workloadType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Prefetch.workloadParameters.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

PrivateCloudCompute::Prefetch __swiftcall Prefetch.init(workloadType:workloadParameters:)(PrivateCloudCompute::Prefetch workloadType, Swift::OpaquePointer_optional workloadParameters)
{
  *v2 = workloadType.workloadType;
  v2[1]._countAndFlagsBits = workloadParameters.value._rawValue;
  workloadType.workloadParameters = workloadParameters;
  return workloadType;
}

uint64_t sub_1CEF40D7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_1CEFA7E60();
    if (v10)
    {
      v11 = sub_1CEFA7E90();
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
      result = sub_1CEFA7E80();
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
  v10 = sub_1CEFA7E60();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1CEFA7E90();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1CEFA7E80();
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

uint64_t sub_1CEF40FAC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_1CEF4113C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1CEF41BE0(a3, a4);
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
  sub_1CEF40D7C(v13, a3, a4, &v12);
  v10 = v4;
  sub_1CEF41BE0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1CEF4113C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1CEFA7E60();
  v11 = result;
  if (result)
  {
    result = sub_1CEFA7E90();
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

  sub_1CEFA7E80();
  sub_1CEF40D7C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1CEF411F4(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_1CEF43738(a3, a4);
          return sub_1CEF40FAC(v13, a2, a3, a4) & 1;
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

uint64_t _s19PrivateCloudCompute8PrefetchV8ResponseV4NodeV16ValidationResultO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CEFA8030();
  v46 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - v8;
  v10 = type metadata accessor for Prefetch.Response.Node.ValidationResult(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v43 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9060, &qword_1CEFAA478);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v43 + *(v17 + 56) - v18);
  v20 = a1;
  v21 = &v43 - v18;
  sub_1CEF41F24(v20, &v43 - v18, type metadata accessor for Prefetch.Response.Node.ValidationResult);
  sub_1CEF41F24(a2, v19, type metadata accessor for Prefetch.Response.Node.ValidationResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_32;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_32;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_32;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  v23 = v46;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1CEF41F24(v21, v13, type metadata accessor for Prefetch.Response.Node.ValidationResult);
      v25 = *v13;
      v24 = v13[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (v25 == *v19 && v24 == v19[1])
        {
        }

        else
        {
          v27 = sub_1CEFA8950();

          if ((v27 & 1) == 0)
          {
            sub_1CEF41F8C(v21, type metadata accessor for Prefetch.Response.Node.ValidationResult);
            goto LABEL_28;
          }
        }

LABEL_32:
        sub_1CEF41F8C(v21, type metadata accessor for Prefetch.Response.Node.ValidationResult);
        v31 = 1;
        return v31 & 1;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_32;
    }

LABEL_27:
    sub_1CEF436D0(v21);
    goto LABEL_28;
  }

  v45 = v21;
  sub_1CEF41F24(v21, v15, type metadata accessor for Prefetch.Response.Node.ValidationResult);
  v28 = *v15;
  v29 = v15[1];
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F90, &qword_1CEFA98C0) + 48);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v23 + 8))(v15 + v30, v4);
    sub_1CEF41BE0(v28, v29);
    v21 = v45;
    goto LABEL_27;
  }

  v32 = v19[1];
  v43 = *v19;
  v44 = v29;
  v33 = *(v23 + 32);
  v34 = v15 + v30;
  v35 = v32;
  v33(v9, v34, v4);
  v36 = v19 + v30;
  v37 = v7;
  v38 = v43;
  v33(v37, v36, v4);
  v39 = v44;
  if (sub_1CEF411F4(v28, v44, v38, v35))
  {
    v31 = sub_1CEFA8000();
    sub_1CEF41BE0(v38, v35);
    sub_1CEF41BE0(v28, v39);
    v40 = *(v23 + 8);
    v40(v37, v4);
    v40(v9, v4);
    sub_1CEF41F8C(v45, type metadata accessor for Prefetch.Response.Node.ValidationResult);
    return v31 & 1;
  }

  sub_1CEF41BE0(v38, v35);
  sub_1CEF41BE0(v28, v39);
  v42 = *(v23 + 8);
  v42(v37, v4);
  v42(v9, v4);
  sub_1CEF41F8C(v45, type metadata accessor for Prefetch.Response.Node.ValidationResult);
LABEL_28:
  v31 = 0;
  return v31 & 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1CEF418EC()
{
  result = qword_1EDE37C40;
  if (!qword_1EDE37C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C40);
  }

  return result;
}

unint64_t sub_1CEF41940()
{
  result = qword_1EC4A8F68;
  if (!qword_1EC4A8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8F68);
  }

  return result;
}

unint64_t sub_1CEF41994()
{
  result = qword_1EC4A8F70;
  if (!qword_1EC4A8F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8F70);
  }

  return result;
}

unint64_t sub_1CEF419E8()
{
  result = qword_1EC4A8F78;
  if (!qword_1EC4A8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8F78);
  }

  return result;
}

unint64_t sub_1CEF41A3C()
{
  result = qword_1EDE37C58;
  if (!qword_1EDE37C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C58);
  }

  return result;
}

unint64_t sub_1CEF41A90()
{
  result = qword_1EC4A8F80;
  if (!qword_1EC4A8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8F80);
  }

  return result;
}

unint64_t sub_1CEF41AE4()
{
  result = qword_1EC4A8F88;
  if (!qword_1EC4A8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8F88);
  }

  return result;
}

unint64_t sub_1CEF41B38()
{
  result = qword_1EDE37C28;
  if (!qword_1EDE37C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C28);
  }

  return result;
}

unint64_t sub_1CEF41B8C()
{
  result = qword_1EDE380E8;
  if (!qword_1EDE380E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE380E8);
  }

  return result;
}

uint64_t sub_1CEF41BE0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1CEF41C34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prefetch.Response.Node.ValidationResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CEF41C98()
{
  result = qword_1EC4A8FE0;
  if (!qword_1EC4A8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A8FE0);
  }

  return result;
}

uint64_t sub_1CEF41CEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CEF41D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prefetch.Response.Node.ValidationResult(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s19PrivateCloudCompute8PrefetchV8ResponseV4NodeV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1CEFA8950() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1CEFA8950() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1CEFA8950() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for Prefetch.Response.Node(0);
  if ((_s19PrivateCloudCompute8PrefetchV8ResponseV4NodeV16ValidationResultO2eeoiySbAI_AItFZ_0(a1 + v6[7], a2 + v6[7]) & 1) == 0 || *(a1 + v6[8]) != *(a2 + v6[8]))
  {
    return 0;
  }

  v8 = v6[9];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (v12)
    {
      v13 = *v9 == *v11 && v10 == v12;
      if (v13 || (sub_1CEFA8950() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v12;
}

unint64_t sub_1CEF41ED0()
{
  result = qword_1EDE37C80;
  if (!qword_1EDE37C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C80);
  }

  return result;
}

uint64_t sub_1CEF41F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEF41F8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CEF4200C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1CEF42044()
{
  result = qword_1EDE37C98;
  if (!qword_1EDE37C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C98);
  }

  return result;
}

uint64_t sub_1CEF42098(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A9010, &qword_1CEFA9928);
    sub_1CEF41CEC(a2, type metadata accessor for Prefetch.Response.Node, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

uint64_t sub_1CEF42148(uint64_t a1, int a2)
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

uint64_t sub_1CEF42190(uint64_t result, int a2, int a3)
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

void sub_1CEF42208(uint64_t a1)
{
  sub_1CEF4228C(319);
  if (v1 <= 0x3F)
  {
    sub_1CEFA8070();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CEF4228C(uint64_t a1)
{
  if (!qword_1EDE379B0)
  {
    type metadata accessor for Prefetch.Response.Node(255);
    v1 = sub_1CEFA8470();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE379B0);
    }
  }
}

void sub_1CEF4230C(uint64_t a1)
{
  type metadata accessor for Prefetch.Response.Node.ValidationResult(319);
  if (v1 <= 0x3F)
  {
    sub_1CEF423B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CEF423B0()
{
  if (!qword_1EDE385E8[0])
  {
    v0 = sub_1CEFA85B0();
    if (!v1)
    {
      atomic_store(v0, qword_1EDE385E8);
    }
  }
}

void sub_1CEF42450(uint64_t a1)
{
  sub_1CEF424C4(319);
  if (v1 <= 0x3F)
  {
    sub_1CEF42530();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1CEF424C4(uint64_t a1)
{
  if (!qword_1EDE380F0)
  {
    sub_1CEFA8030();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDE380F0);
    }
  }
}

uint64_t sub_1CEF42530()
{
  result = qword_1EDE379C0;
  if (!qword_1EDE379C0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EDE379C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Prefetch.Response.Node.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Prefetch.Response.Node.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Prefetch.Response.Node.ValidationResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Prefetch.Response.Node.ValidationResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RateLimitInfo.WorkloadTag.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RateLimitInfo.WorkloadTag.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CEF429CC()
{
  result = qword_1EC4A9038;
  if (!qword_1EC4A9038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9038);
  }

  return result;
}

unint64_t sub_1CEF42A24()
{
  result = qword_1EC4A9040;
  if (!qword_1EC4A9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9040);
  }

  return result;
}

unint64_t sub_1CEF42A7C()
{
  result = qword_1EC4A9048;
  if (!qword_1EC4A9048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9048);
  }

  return result;
}

unint64_t sub_1CEF42AD4()
{
  result = qword_1EC4A9050;
  if (!qword_1EC4A9050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9050);
  }

  return result;
}

unint64_t sub_1CEF42B2C()
{
  result = qword_1EC4A9058;
  if (!qword_1EC4A9058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9058);
  }

  return result;
}

unint64_t sub_1CEF42B84()
{
  result = qword_1EDE37C88;
  if (!qword_1EDE37C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C88);
  }

  return result;
}

unint64_t sub_1CEF42BDC()
{
  result = qword_1EDE37C90;
  if (!qword_1EDE37C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C90);
  }

  return result;
}

unint64_t sub_1CEF42C34()
{
  result = qword_1EDE37C70;
  if (!qword_1EDE37C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C70);
  }

  return result;
}

unint64_t sub_1CEF42C8C()
{
  result = qword_1EDE37C78;
  if (!qword_1EDE37C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C78);
  }

  return result;
}

unint64_t sub_1CEF42CE4()
{
  result = qword_1EDE37C18;
  if (!qword_1EDE37C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C18);
  }

  return result;
}

unint64_t sub_1CEF42D3C()
{
  result = qword_1EDE37C20;
  if (!qword_1EDE37C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C20);
  }

  return result;
}

unint64_t sub_1CEF42D94()
{
  result = qword_1EDE37C08;
  if (!qword_1EDE37C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C08);
  }

  return result;
}

unint64_t sub_1CEF42DEC()
{
  result = qword_1EDE37C10;
  if (!qword_1EDE37C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C10);
  }

  return result;
}

unint64_t sub_1CEF42E44()
{
  result = qword_1EDE37C60;
  if (!qword_1EDE37C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C60);
  }

  return result;
}

unint64_t sub_1CEF42E9C()
{
  result = qword_1EDE37C68;
  if (!qword_1EDE37C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C68);
  }

  return result;
}

unint64_t sub_1CEF42EF4()
{
  result = qword_1EDE37C48;
  if (!qword_1EDE37C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C48);
  }

  return result;
}

unint64_t sub_1CEF42F4C()
{
  result = qword_1EDE37C50;
  if (!qword_1EDE37C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C50);
  }

  return result;
}

unint64_t sub_1CEF42FA4()
{
  result = qword_1EDE37BF8;
  if (!qword_1EDE37BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37BF8);
  }

  return result;
}

unint64_t sub_1CEF42FFC()
{
  result = qword_1EDE37C00;
  if (!qword_1EDE37C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C00);
  }

  return result;
}

unint64_t sub_1CEF43054()
{
  result = qword_1EDE37BD8;
  if (!qword_1EDE37BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37BD8);
  }

  return result;
}

unint64_t sub_1CEF430AC()
{
  result = qword_1EDE37BE0;
  if (!qword_1EDE37BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37BE0);
  }

  return result;
}

unint64_t sub_1CEF43104()
{
  result = qword_1EDE37BE8;
  if (!qword_1EDE37BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37BE8);
  }

  return result;
}

unint64_t sub_1CEF4315C()
{
  result = qword_1EDE37BF0;
  if (!qword_1EDE37BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37BF0);
  }

  return result;
}

unint64_t sub_1CEF431B4()
{
  result = qword_1EDE37C30;
  if (!qword_1EDE37C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C30);
  }

  return result;
}

unint64_t sub_1CEF4320C()
{
  result = qword_1EDE37C38;
  if (!qword_1EDE37C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37C38);
  }

  return result;
}

uint64_t sub_1CEF43260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64696C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64696C61766E69 && a2 == 0xE700000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001CEFB5020 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001CEFB5040 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F54797269707865 && a2 == 0xEE00656772614C6FLL || (sub_1CEFA8950() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001CEFB5060 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CEFB5080 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1CEFA8950();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1CEF434B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x56534F64756F6C63 && a2 == 0xEE006E6F69737265 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CEFB50A0 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CEFB50C0 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x436F546465766173 && a2 == 0xEC00000065686361 || (sub_1CEFA8950() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684628597 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1CEFA8950();

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

uint64_t sub_1CEF436D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9060, &qword_1CEFAA478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CEF43738(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t TrustedRequest.init(id:workloadType:workloadParameters:featureIdentifier:sessionIdentifier:bundleIdentifierOverride:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v11 = type metadata accessor for TrustedRequest(0);
  v21 = v11[6];
  v12 = (a9 + v11[7]);
  v27 = (a9 + v11[8]);
  v13 = (a9 + v11[9]);
  v14 = v11[10];
  v15 = sub_1CEFA8070();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(a9 + v14, 1, 1, v15);
  v18 = *(v16 + 32);
  v18(a9, a1, v15);
  v19 = (a9 + v11[5]);
  *v19 = a2;
  v19[1] = a3;
  *(a9 + v21) = a4;
  *v12 = a8;
  v12[1] = a10;
  *v13 = a5;
  v13[1] = a6;
  sub_1CEF43944(a9 + v14);
  v18(a9 + v14, a7, v15);
  result = (v17)(a9 + v14, 0, 1, v15);
  *v27 = 0;
  v27[1] = 0;
  return result;
}

uint64_t sub_1CEF43944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ErrorCodableValue.init<A>(error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v44 = a3;
  v46 = a4;
  v43 = sub_1CEFA84C0();
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CEFA8250();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v40 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v40 - v16;
  v18 = *(a2 - 8);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v41 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - v21;
  v23 = *(v18 + 16);
  v45 = a1;
  v24 = a1;
  v25 = v23;
  v23(&v40 - v21, v24, a2);
  if (!swift_dynamicCast())
  {
    v34 = v42;
    v33 = v43;
    if (swift_dynamicCast())
    {
      v35 = *(v18 + 8);
      v35(v45, a2);
      (*(v40 + 8))(v34, v33);
      result = (v35)(v22, a2);
      v26 = 0;
      v29 = 0;
      v30 = 0;
      v32 = 0uLL;
      v31 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v36 = *(v18 + 8);
    v36(v22, a2);
    v37 = v41;
    v38 = v45;
    v25(v41, v45, a2);
    ErrorCodableValue.NSErrorCodableValue.init<A>(error:)(v37, a2, v47);
    result = (v36)(v38, a2);
    v26 = v47[0];
    v29 = v47[1];
    v30 = v47[2];
    v31 = 2;
    v32 = v48;
    goto LABEL_7;
  }

  (*(v8 + 32))(v14, v17, v7);
  (*(v8 + 16))(v11, v14, v7);
  ErrorCodableValue.NWErrorCodableValue.init(error:)(v11, v47);
  (*(v8 + 8))(v14, v7);
  if (BYTE4(v47[0]) == 255)
  {
    goto LABEL_6;
  }

  v26 = LODWORD(v47[0]) | (BYTE4(v47[0]) << 32);
  v27 = *(v18 + 8);
  v27(v45, a2);
  result = (v27)(v22, a2);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0uLL;
LABEL_7:
  v39 = v46;
  *v46 = v26;
  v39[1] = v29;
  v39[2] = v30;
  *(v39 + 3) = v32;
  *(v39 + 40) = v31;
  return result;
}

uint64_t ErrorCodableValue.NWErrorCodableValue.init(error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CEFA8250();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x1E6977D68])
  {
    (*(v5 + 96))(v7, v4);
    v9 = sub_1CEFA8240();
    result = (*(v5 + 8))(a1, v4);
    v11 = v9;
  }

  else if (v8 == *MEMORY[0x1E6977D58])
  {
    (*(v5 + 8))(a1, v4);
    result = (*(v5 + 96))(v7, v4);
    v11 = *v7 | 0x100000000;
  }

  else if (v8 == *MEMORY[0x1E6977D60])
  {
    (*(v5 + 8))(a1, v4);
    result = (*(v5 + 96))(v7, v4);
    v11 = *v7 | 0x200000000;
  }

  else
  {
    v12 = *MEMORY[0x1E6977D70];
    v13 = *(v5 + 8);
    v14 = v8;
    v13(a1, v4);
    if (v14 == v12)
    {
      result = (*(v5 + 96))(v7, v4);
      v11 = *v7 | 0x300000000;
    }

    else
    {
      result = (v13)(v7, v4);
      v11 = 0xFF00000000;
    }
  }

  *a2 = v11;
  *(a2 + 4) = BYTE4(v11);
  return result;
}

uint64_t ErrorCodableValue.CancellationCodableValue.init(error:)(uint64_t a1)
{
  v2 = sub_1CEFA84C0();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

char *ErrorCodableValue.NSErrorCodableValue.init<A>(error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, a2);
  v10 = sub_1CEFA8920();
  v71 = a2;
  v72 = a4;
  v69 = v7;
  v70 = a1;
  if (v10)
  {
    v11 = v10;
    (*(v7 + 8))(v9, a2);
  }

  else
  {
    v11 = swift_allocError();
    (*(v7 + 32))(v12, v9, a2);
  }

  v13 = sub_1CEFA7EF0();

  v14 = [v13 domain];
  v68 = sub_1CEFA8300();
  v67 = v15;

  v66 = [v13 code];
  v74 = v13;
  v16 = [v13 userInfo];
  v17 = sub_1CEFA82B0();

  v18 = sub_1CEF48D44(v17, sub_1CEF491A4, sub_1CEF491A4);
  v73 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9070, &unk_1CEFAA490);
  result = sub_1CEFA86D0();
  v20 = 0;
  v21 = 1 << v18[32];
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v18 + 8);
  v24 = (v21 + 63) >> 6;
  v75 = result + 64;
  v76 = result;
  if (v23)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_13:
      v28 = v25 | (v20 << 6);
      v29 = (*(v18 + 6) + 16 * v28);
      v30 = *v29;
      v31 = v29[1];
      sub_1CEF37314(*(v18 + 7) + 32 * v28, v77);
      sub_1CEF37314(v77, v81);

      if (!swift_dynamicCast())
      {
        v79 = 0;
        v80 = 0xE000000000000000;
        __swift_project_boxed_opaque_existential_1(v77, v78[1]);
        sub_1CEFA8930();
      }

      v32 = v79;
      v33 = v80;
      result = __swift_destroy_boxed_opaque_existential_0(v77);
      *&v75[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28;
      v34 = v76;
      v35 = (*(v76 + 6) + 16 * v28);
      *v35 = v30;
      v35[1] = v31;
      v36 = (*(v34 + 7) + 16 * v28);
      *v36 = v32;
      v36[1] = v33;
      v37 = *(v34 + 2);
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        break;
      }

      *(v34 + 2) = v39;
      if (!v23)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v26 = v20;
    while (1)
    {
      v20 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v20 >= v24)
      {
        break;
      }

      v27 = *&v18[8 * v20 + 64];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_13;
      }
    }

    v40 = [v74 userInfo];
    v41 = sub_1CEFA82B0();

    v42 = v73;
    v43 = sub_1CEF48D44(v41, sub_1CEF48FB0, sub_1CEF48FB0);
    v75 = v42;

    v44 = 1 << v43[32];
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & *(v43 + 8);
    v47 = (v44 + 63) >> 6;

    v48 = 0;
    v49 = MEMORY[0x1E69E7CC0];
    while (v46)
    {
LABEL_27:
      v51 = __clz(__rbit64(v46)) | (v48 << 6);
      v52 = (*(v43 + 6) + 16 * v51);
      v53 = *v52;
      v54 = v52[1];
      sub_1CEF37314(*(v43 + 7) + 32 * v51, v78);
      v77[0] = v53;
      v77[1] = v54;

      v55 = sub_1CEF47250(v53, v54, v78);
      result = sub_1CEF48EB4(v77);
      v56 = *(v55 + 16);
      v57 = *(v49 + 2);
      v58 = v57 + v56;
      if (__OFADD__(v57, v56))
      {
        goto LABEL_43;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v58 > *(v49 + 3) >> 1)
      {
        if (v57 <= v58)
        {
          v59 = v57 + v56;
        }

        else
        {
          v59 = v57;
        }

        result = sub_1CEF480E4(result, v59, 1, v49);
        v49 = result;
      }

      v46 &= v46 - 1;
      if (*(v55 + 16))
      {
        if ((*(v49 + 3) >> 1) - *(v49 + 2) < v56)
        {
          goto LABEL_45;
        }

        swift_arrayInitWithCopy();

        if (v56)
        {
          v60 = *(v49 + 2);
          v38 = __OFADD__(v60, v56);
          v61 = v60 + v56;
          if (v38)
          {
            goto LABEL_46;
          }

          *(v49 + 2) = v61;
        }
      }

      else
      {

        if (v56)
        {
          goto LABEL_44;
        }
      }
    }

    while (1)
    {
      v50 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v50 >= v47)
      {

        (*(v69 + 8))(v70, v71);

        v62 = v72;
        v63 = v67;
        *v72 = v68;
        v62[1] = v63;
        v64 = v76;
        v62[2] = v66;
        v62[3] = v64;
        v62[4] = v49;
        return result;
      }

      v46 = *&v43[8 * v50 + 64];
      ++v48;
      if (v46)
      {
        v48 = v50;
        goto LABEL_27;
      }
    }

LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void ErrorCodableValue.unwrap()()
{
  v1 = sub_1CEFA8250();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      sub_1CEFA84C0();
      sub_1CEF48F68(&qword_1EC4A9088, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      swift_allocError();
      _sScE19PrivateCloudComputeE12codableValueScEAA012ErrorCodableE0O012CancellationgE0V_tcfC_0();
    }

    else
    {
      v12 = *(v0 + 24);
      v11 = *(v0 + 32);
      v15 = v0 + 8;
      v13 = *(v0 + 8);
      v14 = *(v15 + 8);
      sub_1CEF48F1C();
      codableValue.domain._countAndFlagsBits = v5;
      codableValue.domain._object = v13;
      codableValue.code = v14;
      codableValue.userInfo._rawValue = v12;
      codableValue.underlyingErrors._rawValue = v11;

      NSError.init(codableValue:)(v16, &codableValue);
    }
  }

  else
  {
    sub_1CEF48F68(&qword_1EC4A9090, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
    swift_allocError();
    v7 = v6;
    if (BYTE4(v5) > 1u)
    {
      *v4 = v5;
      if (BYTE4(v5) == 2)
      {
        v10 = MEMORY[0x1E6977D60];
      }

      else
      {
        v10 = MEMORY[0x1E6977D70];
      }
    }

    else if (BYTE4(v5))
    {
      *v4 = v5;
      v10 = MEMORY[0x1E6977D58];
    }

    else
    {
      v8 = sub_1CEFA8230();
      if ((v8 & 0x100000000) != 0)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      *v4 = v9;
      v10 = MEMORY[0x1E6977D68];
    }

    (*(v2 + 104))(v4, *v10, v1);
    (*(v2 + 32))(v7, v4, v1);
  }
}

uint64_t NWError.init(codableValue:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v2 = a1;
  LODWORD(a1) = *a1;
  if (*(v2 + 4) > 1u)
  {
    v4 = MEMORY[0x1E6977D60];
    if (*(v2 + 4) != 2)
    {
      v4 = MEMORY[0x1E6977D70];
    }
  }

  else if (*(v2 + 4))
  {
    v4 = MEMORY[0x1E6977D58];
  }

  else
  {
    a1 = sub_1CEFA8230();
    if ((a1 & 0x100000000) != 0)
    {
      LODWORD(a1) = 1;
    }

    v4 = MEMORY[0x1E6977D68];
  }

  *a2 = a1;
  v5 = *v4;
  v6 = sub_1CEFA8250();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

void __swiftcall NSError.init(codableValue:)(NSError *__return_ptr retstr, PrivateCloudCompute::ErrorCodableValue::NSErrorCodableValue *codableValue)
{
  v3 = sub_1CEFA8250();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  object = codableValue->domain._object;
  countAndFlagsBits = codableValue->domain._countAndFlagsBits;
  rawValue = codableValue->userInfo._rawValue;
  code = codableValue->code;
  v9 = codableValue->underlyingErrors._rawValue;
  v10 = sub_1CEF47D80(rawValue);
  v11 = v10;
  v12 = *(v9 + 2);
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = *(v9 + 8);
      v14 = v9[72];
      v15 = *(v9 + 2);
      v64 = *(v9 + 3);
      v65 = v15;
      v16 = sub_1CEFA8300();
      v18 = v17;
      codableValuea.domain = v65;
      *&codableValuea.code = v64;
      codableValuea.underlyingErrors._rawValue = v13;
      v69 = v14;
      ErrorCodableValue.unwrap()();
      v20 = v19;
      swift_getErrorValue();
      v21 = v11;
      v22 = v66;
      v23 = v67;
      codableValuea.userInfo._rawValue = v67;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&codableValuea.domain._countAndFlagsBits);
      (*(*(v23 - 1) + 16))(boxed_opaque_existential_0, v22, v23);

      sub_1CEF49BC0(&codableValuea, v71);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v21;
      sub_1CEF4967C(v71, v16, v18, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v53 = v10;
      v55 = rawValue;
      v56 = object;
      v51 = sub_1CEFA8300();
      v52 = v26;
      *&v71[0] = MEMORY[0x1E69E7CC0];

      sub_1CEF49BA0(0, v12, 0);
      v27 = *&v71[0];
      v60 = *MEMORY[0x1E6977D70];
      *&v64 = v4 + 104;
      v59 = *MEMORY[0x1E6977D60];
      v58 = *MEMORY[0x1E6977D58];
      v57 = *MEMORY[0x1E6977D68];
      v63 = (v4 + 32);
      v54 = v9;
      v28 = v9 + 72;
      do
      {
        v29 = *(v28 - 5);
        if (*v28)
        {
          if (*v28 == 1)
          {
            sub_1CEFA84C0();
            sub_1CEF48F68(&qword_1EC4A9088, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
            v30 = swift_allocError();
            _sScE19PrivateCloudComputeE12codableValueScEAA012ErrorCodableE0O012CancellationgE0V_tcfC_0();
          }

          else
          {
            v37 = *(v28 - 2);
            v36 = *(v28 - 1);
            v38 = v6;
            v39 = v3;
            v40 = *(v28 - 4);
            v41 = *(v28 - 3);
            v65._countAndFlagsBits = sub_1CEF48F1C();
            codableValuea.domain._countAndFlagsBits = v29;
            codableValuea.domain._object = v40;
            codableValuea.code = v41;
            codableValuea.userInfo._rawValue = v37;
            v3 = v39;
            v6 = v38;
            codableValuea.underlyingErrors._rawValue = v36;

            NSError.init(codableValue:)(v42, &codableValuea);
            v30 = v43;
          }
        }

        else
        {
          sub_1CEF48F68(&qword_1EC4A9090, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
          v30 = swift_allocError();
          v32 = v31;
          if (BYTE4(v29) > 1u)
          {
            *v6 = v29;
            if (BYTE4(v29) == 2)
            {
              v35 = &v73;
            }

            else
            {
              v35 = &v73 + 4;
            }
          }

          else if (BYTE4(v29))
          {
            *v6 = v29;
            v35 = &v72 + 4;
          }

          else
          {
            v33 = sub_1CEFA8230();
            if ((v33 & 0x100000000) != 0)
            {
              v34 = 1;
            }

            else
            {
              v34 = v33;
            }

            *v6 = v34;
            v35 = &v72;
          }

          (*v64)(v6, *(v35 - 64), v3);
          (*v63)(v32, v6, v3);
        }

        *&v71[0] = v27;
        v45 = *(v27 + 16);
        v44 = *(v27 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1CEF49BA0((v44 > 1), v45 + 1, 1);
          v27 = *&v71[0];
        }

        v28 += 48;
        *(v27 + 16) = v45 + 1;
        *(v27 + 8 * v45 + 32) = v30;
        --v12;
      }

      while (v12);

      codableValuea.userInfo._rawValue = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9098, &qword_1CEFAA4A0);
      codableValuea.domain._countAndFlagsBits = v27;
      sub_1CEF49BC0(&codableValuea, v71);
      v46 = v53;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v46;
      sub_1CEF4967C(v71, v51, v52, v47);
    }
  }

  v48 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v49 = sub_1CEFA82F0();
  v50 = sub_1CEFA82A0();

  [v48 initWithDomain:v49 code:code userInfo:v50];
}

uint64_t sub_1CEF44FF4(uint64_t a1)
{
  v2 = sub_1CEF49D30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF45030(uint64_t a1)
{
  v2 = sub_1CEF49D30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF4506C()
{
  v1 = 0x616C6C65636E6163;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B726F7774656ELL;
  }
}

uint64_t sub_1CEF450CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CEF4B79C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CEF450F4(uint64_t a1)
{
  v2 = sub_1CEF49C34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF45130(uint64_t a1)
{
  v2 = sub_1CEF49C34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF4516C(uint64_t a1)
{
  v2 = sub_1CEF49DD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF451A8(uint64_t a1)
{
  v2 = sub_1CEF49DD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF451E4(uint64_t a1)
{
  v2 = sub_1CEF49C88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF45220(uint64_t a1)
{
  v2 = sub_1CEF49C88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ErrorCodableValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A90A0, &qword_1CEFAA4A8);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A90A8, &qword_1CEFAA4B0);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A90B0, &qword_1CEFAA4B8);
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A90B8, &qword_1CEFAA4C0);
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v15 = *v1;
  v14 = v1[1];
  v16 = v1[3];
  v28 = v1[2];
  v29 = v14;
  v26 = v1[4];
  v27 = v16;
  v17 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF49C34();
  sub_1CEFA8A60();
  if (v17)
  {
    if (v17 == 1)
    {
      LOBYTE(v39) = 1;
      sub_1CEF49D30();
      v18 = v38;
      sub_1CEFA8820();
      sub_1CEF49D84();
      v19 = v33;
      sub_1CEFA88D0();
      (*(v32 + 8))(v7, v19);
      return (*(v37 + 8))(v13, v18);
    }

    else
    {
      LOBYTE(v39) = 2;
      sub_1CEF49C88();
      v23 = v34;
      v24 = v38;
      sub_1CEFA8820();
      v39 = v15;
      v40 = v29;
      v41 = v28;
      v42 = v27;
      v43 = v26;
      sub_1CEF49CDC();
      v25 = v36;
      sub_1CEFA88D0();
      (*(v35 + 8))(v23, v25);
      return (*(v37 + 8))(v13, v24);
    }
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_1CEF49DD8();
    v21 = v38;
    sub_1CEFA8820();
    LODWORD(v39) = v15;
    BYTE4(v39) = BYTE4(v15);
    sub_1CEF49E2C();
    v22 = v31;
    sub_1CEFA88D0();
    (*(v30 + 8))(v10, v22);
    return (*(v37 + 8))(v13, v21);
  }
}

uint64_t ErrorCodableValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A90F8, &qword_1CEFAA4C8);
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v34[-v3];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9100, &qword_1CEFAA4D0);
  v39 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v34[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9108, &qword_1CEFAA4D8);
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9110, &unk_1CEFAA4E0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34[-v11];
  v13 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1CEF49C34();
  v14 = v43;
  sub_1CEFA8A50();
  if (!v14)
  {
    v43 = v10;
    v16 = v41;
    v15 = v42;
    v17 = sub_1CEFA8800();
    v18 = (2 * *(v17 + 16)) | 1;
    v48 = v17;
    v49 = v17 + 32;
    v50 = 0;
    v51 = v18;
    v19 = sub_1CEF3F484();
    if (v19 == 3 || v50 != v51 >> 1)
    {
      v23 = sub_1CEFA8680();
      swift_allocError();
      v24 = v12;
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD8, &qword_1CEFB1B20);
      *v26 = &type metadata for ErrorCodableValue;
      sub_1CEFA8720();
      sub_1CEFA8670();
      (*(*(v23 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v43 + 8))(v24, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = v19;
      if (v19)
      {
        if (v19 == 1)
        {
          LOBYTE(v44) = 1;
          sub_1CEF49D30();
          v20 = v5;
          sub_1CEFA8710();
          v21 = v43;
          sub_1CEF49ED4();
          v22 = v36;
          sub_1CEFA87D0();
          (*(v39 + 8))(v20, v22);
          (*(v21 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0uLL;
        }

        else
        {
          LOBYTE(v44) = 2;
          sub_1CEF49C88();
          sub_1CEFA8710();
          v28 = v43;
          sub_1CEF49E80();
          v29 = v38;
          sub_1CEFA87D0();
          (*(v40 + 8))(v16, v29);
          (*(v28 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v30 = v44;
          v31 = v45;
          v32 = v46;
          v33 = v47;
        }
      }

      else
      {
        LOBYTE(v44) = 0;
        sub_1CEF49DD8();
        sub_1CEFA8710();
        sub_1CEF49F28();
        sub_1CEFA87D0();
        (*(v37 + 8))(v8, v6);
        (*(v43 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v31 = 0;
        v32 = 0;
        v30 = v44 | (BYTE4(v44) << 32);
        v33 = 0uLL;
      }

      *v15 = v30;
      *(v15 + 8) = v31;
      *(v15 + 16) = v32;
      *(v15 + 24) = v33;
      *(v15 + 40) = v35;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v52);
}

uint64_t sub_1CEF45DC4()
{
  v1 = 0x7869736F70;
  v2 = 7564404;
  if (*v0 != 2)
  {
    v2 = 0x7261774169666977;
  }

  if (*v0)
  {
    v1 = 7564900;
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

uint64_t sub_1CEF45E34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CEF4B8B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CEF45E5C(uint64_t a1)
{
  v2 = sub_1CEF49F7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF45E98(uint64_t a1)
{
  v2 = sub_1CEF49F7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF45ED4(uint64_t a1)
{
  v2 = sub_1CEF4A078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF45F10(uint64_t a1)
{
  v2 = sub_1CEF4A078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF45F4C(uint64_t a1)
{
  v2 = sub_1CEF4A0CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF45F88(uint64_t a1)
{
  v2 = sub_1CEF4A0CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF45FC4(uint64_t a1)
{
  v2 = sub_1CEF4A024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF46000(uint64_t a1)
{
  v2 = sub_1CEF4A024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF4603C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CEFA8950();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CEF460BC(uint64_t a1)
{
  v2 = sub_1CEF49FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF460F8(uint64_t a1)
{
  v2 = sub_1CEF49FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ErrorCodableValue.NWErrorCodableValue.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9130, &qword_1CEFAA4F0);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9138, &qword_1CEFAA4F8);
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v26 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9140, &qword_1CEFAA500);
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9148, &qword_1CEFAA508);
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9150, &qword_1CEFAA510);
  v14 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v16 = &v26 - v15;
  v37 = *v2;
  v17 = *(v2 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF49F7C();
  sub_1CEFA8A60();
  v18 = (v14 + 8);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v40 = 2;
      sub_1CEF4A024();
      v20 = v30;
      v19 = v36;
      sub_1CEFA8820();
      v21 = v32;
      sub_1CEFA88E0();
      v22 = v31;
    }

    else
    {
      v41 = 3;
      sub_1CEF49FD0();
      v20 = v33;
      v19 = v36;
      sub_1CEFA8820();
      v21 = v35;
      sub_1CEFA88E0();
      v22 = v34;
    }

    (*(v22 + 8))(v20, v21);
  }

  else
  {
    if (v17)
    {
      v39 = 1;
      sub_1CEF4A078();
      v23 = v36;
      sub_1CEFA8820();
      v24 = v29;
      sub_1CEFA88E0();
      (*(v28 + 8))(v10, v24);
      return (*v18)(v16, v23);
    }

    v38 = 0;
    sub_1CEF4A0CC();
    v19 = v36;
    sub_1CEFA8820();
    sub_1CEFA88E0();
    (*(v27 + 8))(v13, v11);
  }

  return (*v18)(v16, v19);
}

uint64_t ErrorCodableValue.NWErrorCodableValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9180, &qword_1CEFAA518);
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v41 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9188, &qword_1CEFAA520);
  v47 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v49 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9190, &qword_1CEFAA528);
  v6 = *(v5 - 8);
  v45 = v5;
  v46 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9198, &qword_1CEFAA530);
  v44 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91A0, &qword_1CEFAA538);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - v14;
  v16 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1CEF49F7C();
  v17 = v53;
  sub_1CEFA8A50();
  if (!v17)
  {
    v18 = v11;
    v41 = v9;
    v42 = 0;
    v19 = v8;
    v21 = v49;
    v20 = v50;
    v53 = v13;
    v23 = v51;
    v22 = v52;
    v24 = sub_1CEFA8800();
    v25 = (2 * *(v24 + 16)) | 1;
    v55 = v24;
    v56 = v24 + 32;
    v57 = 0;
    v58 = v25;
    v26 = sub_1CEF43794();
    if (v26 == 4 || v57 != v58 >> 1)
    {
      v30 = sub_1CEFA8680();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD8, &qword_1CEFB1B20);
      *v32 = &type metadata for ErrorCodableValue.NWErrorCodableValue;
      sub_1CEFA8720();
      sub_1CEFA8670();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
      (*(v53 + 8))(v15, v12);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v54);
    }

    v59 = v26;
    if (v26 <= 1u)
    {
      if (!v26)
      {
        v60 = 0;
        sub_1CEF4A0CC();
        v27 = v42;
        sub_1CEFA8710();
        if (!v27)
        {
          v28 = v41;
          v29 = sub_1CEFA87E0();
          (*(v44 + 8))(v18, v28);
          (*(v53 + 8))(v15, v12);
          swift_unknownObjectRelease();
LABEL_22:
          *v22 = v29;
          *(v22 + 4) = v59;
          return __swift_destroy_boxed_opaque_existential_0(v54);
        }

        goto LABEL_14;
      }

      v60 = 1;
      sub_1CEF4A078();
      v37 = v42;
      sub_1CEFA8710();
      if (!v37)
      {
        v38 = v45;
        v29 = sub_1CEFA87E0();
        (*(v46 + 8))(v19, v38);
        v35 = v53;
        goto LABEL_21;
      }

LABEL_14:
      (*(v53 + 8))(v15, v12);
      goto LABEL_9;
    }

    if (v26 == 2)
    {
      v60 = 2;
      sub_1CEF4A024();
      v34 = v42;
      sub_1CEFA8710();
      v35 = v53;
      if (v34)
      {
        goto LABEL_14;
      }

      v36 = v43;
      v29 = sub_1CEFA87E0();
      (*(v47 + 8))(v21, v36);
    }

    else
    {
      v60 = 3;
      sub_1CEF49FD0();
      v39 = v20;
      v40 = v42;
      sub_1CEFA8710();
      v35 = v53;
      if (v40)
      {
        (*(v53 + 8))(v15, v12);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0(v54);
      }

      v29 = sub_1CEFA87E0();
      (*(v48 + 8))(v39, v23);
    }

LABEL_21:
    (*(v35 + 8))(v15, v12);
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  return __swift_destroy_boxed_opaque_existential_0(v54);
}

uint64_t sub_1CEF46E00(uint64_t a1)
{
  v2 = sub_1CEF4A120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF46E3C(uint64_t a1)
{
  v2 = sub_1CEF4A120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ErrorCodableValue.CancellationCodableValue.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91A8, &qword_1CEFAA540);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF4A120();
  sub_1CEFA8A60();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1CEF46FDC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91A8, &qword_1CEFAA540);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF4A120();
  sub_1CEFA8A60();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ErrorCodableValue.NSErrorCodableValue.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ErrorCodableValue.NSErrorCodableValue.domain.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ErrorCodableValue.NSErrorCodableValue.userInfo.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ErrorCodableValue.NSErrorCodableValue.underlyingErrors.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1CEF47250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1CEFA8300() == a1 && v6 == a2)
  {
  }

  else
  {
    v8 = sub_1CEFA8950();

    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_1CEF37314(a3, &v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9348, &unk_1CEFAB3D0);
  if (swift_dynamicCast())
  {
    v9 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9330, &qword_1CEFAB3B8);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1CEFAA480;
    ErrorValue = swift_getErrorValue();
    v12 = v38;
    v13 = v39;
    MEMORY[0x1EEE9AC00](ErrorValue);
    v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v15);
    ErrorCodableValue.init<A>(error:)(v15, v12, v13, (v10 + 32));

    return v10;
  }

LABEL_10:
  if (sub_1CEFA8300() == a1 && v17 == a2)
  {
  }

  else
  {
    v19 = sub_1CEFA8950();

    if ((v19 & 1) == 0)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  sub_1CEF37314(a3, &v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9098, &qword_1CEFAA4A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v20 = v46[2];
  if (!v20)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v46 = MEMORY[0x1E69E7CC0];
  sub_1CEF4B298(0, v20, 0);
  v21 = 32;
  v10 = v46;
  do
  {
    v22 = swift_getErrorValue();
    v23 = v40;
    v24 = v41;
    MEMORY[0x1EEE9AC00](v22);
    v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v26);
    ErrorCodableValue.init<A>(error:)(v26, v23, v24, &v42);
    v28 = v42;
    v29 = v43;
    v30 = v44;
    v31 = v45;
    v46 = v10;
    v33 = *(v10 + 16);
    v32 = *(v10 + 24);
    if (v33 >= v32 >> 1)
    {
      v36 = v43;
      v37 = v42;
      sub_1CEF4B298((v32 > 1), v33 + 1, 1);
      v29 = v36;
      v28 = v37;
      v10 = v46;
    }

    *(v10 + 16) = v33 + 1;
    v34 = v10 + 48 * v33;
    *(v34 + 32) = v28;
    *(v34 + 48) = v29;
    *(v34 + 64) = v30;
    *(v34 + 72) = v31;
    v21 += 8;
    --v20;
  }

  while (v20);

  return v10;
}

unint64_t sub_1CEF4763C()
{
  v1 = 0x6E69616D6F64;
  v2 = 0x6F666E4972657375;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 1701080931;
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

uint64_t sub_1CEF476B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CEF4BA18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CEF476D8(uint64_t a1)
{
  v2 = sub_1CEF4A174();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF47714(uint64_t a1)
{
  v2 = sub_1CEF4A174();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ErrorCodableValue.NSErrorCodableValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91B8, &qword_1CEFAA548);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = v1[2];
  v14 = v1[3];
  v15 = v7;
  v13 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF4A174();
  sub_1CEFA8A60();
  LOBYTE(v18) = 0;
  v8 = v16;
  sub_1CEFA8880();
  if (!v8)
  {
    v10 = v13;
    v11 = v14;
    LOBYTE(v18) = 1;
    sub_1CEFA88B0();
    v18 = v11;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91C8, &unk_1CEFAA550);
    sub_1CEF4A21C(&qword_1EDE38108, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1CEFA88D0();
    v18 = v10;
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91D0, &qword_1CEFAB420);
    sub_1CEF4A288(&qword_1EC4A91D8, sub_1CEF4A1C8, MEMORY[0x1E69E6300]);
    sub_1CEFA88D0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ErrorCodableValue.NSErrorCodableValue.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91E8, &qword_1CEFAA560);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF4A174();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v20) = 0;
  v9 = sub_1CEFA8780();
  v11 = v10;
  v12 = v9;
  LOBYTE(v20) = 1;
  v18 = sub_1CEFA87B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91C8, &unk_1CEFAA550);
  v19 = 2;
  sub_1CEF4A21C(&qword_1EDE379D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1CEFA87D0();
  v17 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91D0, &qword_1CEFAB420);
  v19 = 3;
  sub_1CEF4A288(&qword_1EC4A91F0, sub_1CEF4A300, MEMORY[0x1E69E6330]);
  sub_1CEFA87D0();
  (*(v6 + 8))(v8, v5);
  v14 = v20;
  *a2 = v12;
  a2[1] = v11;
  v15 = v17;
  a2[2] = v18;
  a2[3] = v15;
  a2[4] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1CEF47D80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9338, &unk_1CEFAB3C0);
    v2 = sub_1CEFA86F0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
        sub_1CEF49BC0(&v22, v24);
        sub_1CEF49BC0(v24, v25);
        sub_1CEF49BC0(v25, &v23);
        result = sub_1CEF76970(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_1CEF49BC0(&v23, v11);
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
          result = sub_1CEF49BC0(&v23, (v2[7] + 32 * result));
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

char *sub_1CEF47FD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9318, &qword_1CEFAB3A0);
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