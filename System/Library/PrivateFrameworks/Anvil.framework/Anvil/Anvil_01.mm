unint64_t sub_1DD90FB90()
{
  result = qword_1ECD82B30;
  if (!qword_1ECD82B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B30);
  }

  return result;
}

unint64_t sub_1DD90FBE4()
{
  result = qword_1ECD82B40;
  if (!qword_1ECD82B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B40);
  }

  return result;
}

unint64_t sub_1DD90FC38()
{
  result = qword_1ECD82B50;
  if (!qword_1ECD82B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B50);
  }

  return result;
}

unint64_t sub_1DD90FC8C()
{
  result = qword_1ECD82B60;
  if (!qword_1ECD82B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B60);
  }

  return result;
}

unint64_t sub_1DD90FCE0()
{
  result = qword_1ECD82B70;
  if (!qword_1ECD82B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B70);
  }

  return result;
}

unint64_t sub_1DD90FD9C()
{
  result = qword_1ECD82B80;
  if (!qword_1ECD82B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82B80);
  }

  return result;
}

unint64_t sub_1DD90FF28()
{
  result = qword_1ECD82BC0;
  if (!qword_1ECD82BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82BC0);
  }

  return result;
}

uint64_t sub_1DD90FF7C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1DD91000C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AuthorizationTokensResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AuthorizationTokensResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ExternalPartnerModel.ReleaseLabel(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExternalPartnerModel.ReleaseLabel(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for HTTPClient.PrivacyPassRedemptionTypes(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HTTPClient.PrivacyPassRedemptionTypes(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ExternalLanguageModelBundle(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ExternalLanguageModelBundle(_WORD *result, int a2, int a3)
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

unint64_t sub_1DD9105CC()
{
  result = qword_1ECD82BC8;
  if (!qword_1ECD82BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82BC8);
  }

  return result;
}

unint64_t sub_1DD910624()
{
  result = qword_1ECD82BD0;
  if (!qword_1ECD82BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82BD0);
  }

  return result;
}

unint64_t sub_1DD91067C()
{
  result = qword_1ECD82BD8;
  if (!qword_1ECD82BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82BD8);
  }

  return result;
}

unint64_t sub_1DD9106D4()
{
  result = qword_1ECD82BE0;
  if (!qword_1ECD82BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82BE0);
  }

  return result;
}

unint64_t sub_1DD91072C()
{
  result = qword_1ECD82BE8;
  if (!qword_1ECD82BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82BE8);
  }

  return result;
}

unint64_t sub_1DD910784()
{
  result = qword_1ECD82BF0;
  if (!qword_1ECD82BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82BF0);
  }

  return result;
}

unint64_t sub_1DD9107DC()
{
  result = qword_1ECD82BF8;
  if (!qword_1ECD82BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82BF8);
  }

  return result;
}

unint64_t sub_1DD910834()
{
  result = qword_1ECD82C00;
  if (!qword_1ECD82C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C00);
  }

  return result;
}

unint64_t sub_1DD91088C()
{
  result = qword_1ECD82C08;
  if (!qword_1ECD82C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C08);
  }

  return result;
}

unint64_t sub_1DD9108E4()
{
  result = qword_1ECD82C10;
  if (!qword_1ECD82C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C10);
  }

  return result;
}

unint64_t sub_1DD91093C()
{
  result = qword_1ECD82C18;
  if (!qword_1ECD82C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C18);
  }

  return result;
}

unint64_t sub_1DD910994()
{
  result = qword_1ECD82C20;
  if (!qword_1ECD82C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C20);
  }

  return result;
}

unint64_t sub_1DD9109EC()
{
  result = qword_1ECD82C28;
  if (!qword_1ECD82C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C28);
  }

  return result;
}

unint64_t sub_1DD910A44()
{
  result = qword_1ECD82C30;
  if (!qword_1ECD82C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C30);
  }

  return result;
}

unint64_t sub_1DD910A9C()
{
  result = qword_1ECD82C38;
  if (!qword_1ECD82C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C38);
  }

  return result;
}

unint64_t sub_1DD910AF4()
{
  result = qword_1ECD82C40;
  if (!qword_1ECD82C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C40);
  }

  return result;
}

unint64_t sub_1DD910B4C()
{
  result = qword_1ECD82C48;
  if (!qword_1ECD82C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C48);
  }

  return result;
}

unint64_t sub_1DD910BA4()
{
  result = qword_1ECD82C50;
  if (!qword_1ECD82C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C50);
  }

  return result;
}

unint64_t sub_1DD910BFC()
{
  result = qword_1ECD82C58;
  if (!qword_1ECD82C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C58);
  }

  return result;
}

unint64_t sub_1DD910C54()
{
  result = qword_1ECD82C60;
  if (!qword_1ECD82C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C60);
  }

  return result;
}

unint64_t sub_1DD910CAC()
{
  result = qword_1ECD82C68;
  if (!qword_1ECD82C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C68);
  }

  return result;
}

unint64_t sub_1DD910D04()
{
  result = qword_1ECD82C70;
  if (!qword_1ECD82C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C70);
  }

  return result;
}

unint64_t sub_1DD910D58()
{
  result = qword_1ECD82C78;
  if (!qword_1ECD82C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82C78);
  }

  return result;
}

uint64_t sub_1DD910E48@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  v9 = sub_1DDA134E0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = v1[4];
  v17 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v16);
  (*(v17 + 88))(v16, v17);
  if (!v18)
  {
    goto LABEL_4;
  }

  sub_1DDA134C0();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1DD911244(v8);
LABEL_4:
    sub_1DDA134C0();
    result = (*(v10 + 48))(v6, 1, v9);
    if (result != 1)
    {
      return (*(v10 + 32))(a1, v6, v9);
    }

    __break(1u);
    return result;
  }

  v31 = *(v10 + 32);
  v31(v15, v8, v9);
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v20 = sub_1DDA14810();
  __swift_project_value_buffer(v20, qword_1ECDA20E0);
  (*(v10 + 16))(v13, v15, v9);
  v21 = sub_1DDA147F0();
  v22 = sub_1DDA14ED0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32 = v29;
    *v23 = 136315138;
    sub_1DD911DE4();
    v24 = sub_1DDA15400();
    v30 = a1;
    v26 = v25;
    (*(v10 + 8))(v13, v9);
    v27 = sub_1DD93FA54(v24, v26, &v32);
    a1 = v30;

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1DD8F8000, v21, v22, "Using custom ChatGPT base URL: %s", v23, 0xCu);
    v28 = v29;
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1E12B8CE0](v28, -1, -1);
    MEMORY[0x1E12B8CE0](v23, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  return (v31)(a1, v15, v9);
}

uint64_t sub_1DD911244(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1DD9112AC()
{
  sub_1DD981DC8(v4);
  qword_1EE16FAB8 = &type metadata for Overrides.BlackPowder;
  unk_1EE16FAC0 = &off_1F58F1660;
  v0 = swift_allocObject();
  v1 = v4[3];
  *(v0 + 48) = v4[2];
  *(v0 + 64) = v1;
  *(v0 + 80) = v4[4];
  *(v0 + 96) = v5;
  result = *v4;
  v3 = v4[1];
  *(v0 + 16) = v4[0];
  *(v0 + 32) = v3;
  qword_1EE16FA98 = 4;
  unk_1EE16FAA0 = v0;
  byte_1EE16FAC8 = 1;
  return result;
}

uint64_t sub_1DD911340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_1DDA13680();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = sub_1DDA13710();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD911468, 0, 0);
}

void sub_1DD911468()
{
  v92 = v0;
  if (v0[3] | v0[5])
  {
    v84 = v0[3];
    v1 = v0[8];
    v88 = MEMORY[0x1E69E7CC8];
    v2 = v1[4];
    v3 = v1[5];
    __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
    v86 = (*(v3 + 8))(v2, v3);
    v87 = v1;
    v5 = v4;
    v6 = v1[4];
    v7 = v1[5];
    __swift_project_boxed_opaque_existential_1(v1 + 1, v6);
    v8 = (*(v7 + 24))(v6, v7);
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0x2D38302D34323032;
    }

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xEA00000000003832;
    }

    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v12 = sub_1DDA14810();
    __swift_project_value_buffer(v12, qword_1ECDA20E0);

    v13 = sub_1DDA147F0();
    v14 = sub_1DDA14F00();

    v85 = v5;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v90 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_1DD93FA54(v10, v11, &v90);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1DD93FA54(v86, v5, &v90);
      _os_log_impl(&dword_1DD8F8000, v13, v14, "Using API version:%s and app id: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v16, -1, -1);
      MEMORY[0x1E12B8CE0](v15, -1, -1);

      v17 = v88;
    }

    else
    {

      v17 = MEMORY[0x1E69E7CC8];
    }

    v18 = v0[13];
    v19 = v0[14];
    v21 = v0[11];
    v20 = v0[12];
    v23 = v0[9];
    v22 = v0[10];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v17;
    sub_1DD9CB364(v10, v11, 0x2D54504774616843, 0xEF6E6F6973726556, isUniquelyReferenced_nonNull_native);
    v25 = v90;
    sub_1DDA13700();
    sub_1DDA13670();
    v26 = sub_1DDA136F0();
    (*(v22 + 8))(v21, v23);
    (*(v18 + 8))(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82810, &unk_1DDA16340);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1DDA184A0;
    v28 = sub_1DD911E3C();
    v29 = 43;
    if (v26 < 0)
    {
      v29 = 45;
    }

    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = v28;
    *(v27 + 32) = v29;
    *(v27 + 40) = 0xE100000000000000;
    v30 = v26 / 3600;
    v31 = MEMORY[0x1E69E6530];
    v32 = MEMORY[0x1E69E65A8];
    *(v27 + 96) = MEMORY[0x1E69E6530];
    *(v27 + 104) = v32;
    if (v26 < -3599)
    {
      v30 = v26 / -3600;
    }

    *(v27 + 72) = v30;
    v33 = v26 / 60;
    if (v26 < -59)
    {
      v33 = v26 / -60;
    }

    *(v27 + 136) = v31;
    *(v27 + 144) = v32;
    *(v27 + 112) = v33 % 0x3C;
    v34 = sub_1DDA14B40();
    v36 = v35;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v25;
    sub_1DD9CB364(v34, v36, 0xD00000000000001ALL, 0x80000001DDA26F50, v37);
    v38 = v90;
    v39 = v87;
    v40 = v87[4];
    v41 = v87[5];
    __swift_project_boxed_opaque_existential_1(v87 + 1, v40);
    v42 = (*(v41 + 128))(v40, v41);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v38;
    sub_1DD911E90(v42, sub_1DD9B233C, 0, v43, &v90);

    v44 = v90;
    v45 = v87[4];
    v46 = v87[5];
    __swift_project_boxed_opaque_existential_1(v39 + 1, v39[4]);
    v47 = (*(v46 + 16))(v45, v46);
    if (v48)
    {
      v49 = v47;
      v50 = v48;

      v51 = sub_1DDA147F0();
      v52 = sub_1DDA14EE0();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_1DD8F8000, v51, v52, "Using overridden API key!", v53, 2u);
        MEMORY[0x1E12B8CE0](v53, -1, -1);
      }

      v90 = 0x20726572616542;
      v91 = 0xE700000000000000;
      MEMORY[0x1E12B7AB0](v49, v50);

      v54 = v90;
      v55 = v91;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v90 = v44;
      sub_1DD9CB364(v54, v55, 0x7A69726F68747541, 0xED00006E6F697461, v56);
      v89 = v90;
    }

    else if (v84)
    {
      v57 = v0[3];

      v58 = sub_1DDA147F0();
      v59 = sub_1DDA14F00();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1DD8F8000, v58, v59, "User is signed in. Authenticating with stored access token.", v60, 2u);
        MEMORY[0x1E12B8CE0](v60, -1, -1);
      }

      v61 = v0[2];

      v90 = 0x20726572616542;
      v91 = 0xE700000000000000;
      MEMORY[0x1E12B7AB0](v61, v57);
      v62 = v90;
      v63 = v91;
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v90 = v44;
      sub_1DD9CB364(v62, v63, 0x7A69726F68747541, 0xED00006E6F697461, v64);
      v89 = v90;
    }

    else
    {
      v65 = sub_1DDA147F0();
      v66 = sub_1DDA14F00();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_1DD8F8000, v65, v66, "User is not logged in. Authenticating anonymously.", v67, 2u);
        MEMORY[0x1E12B8CE0](v67, -1, -1);
      }

      v69 = v0[4];
      v68 = v0[5];

      v70 = swift_isUniquelyReferenced_nonNull_native();
      v90 = v44;
      sub_1DD9CB364(v86, v85, 0x412D49416E65704FLL, 0xEA00000000007070, v70);
      v89 = v90;

      sub_1DD9C70C8(v69, v68, 0xD000000000000016, 0x80000001DDA26F70);
      v39 = v87;
    }

    v71 = v39[4];
    v72 = v39[5];
    __swift_project_boxed_opaque_existential_1(v39 + 1, v71);
    v73 = (*(v72 + 96))(v71, v72);
    if (v74)
    {
      sub_1DD9C70C8(v73, v74, 0xD00000000000001ELL, 0x80000001DDA26F90);
    }

    v75 = v39[4];
    v76 = v39[5];
    __swift_project_boxed_opaque_existential_1(v39 + 1, v75);
    v77 = (*(v76 + 104))(v75, v76);
    if (!v78)
    {
      v77 = sub_1DD9C6CFC(v0[6], v0[7]);
    }

    v79 = v77;
    v80 = v78;
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v89;
    sub_1DD9CB364(v79, v80, 0x6567412D72657355, 0xEA0000000000746ELL, v81);
    v82 = v90;

    v83 = v0[1];

    v83(v82);
  }

  else
  {
    __break(1u);
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

unint64_t sub_1DD911DE4()
{
  result = qword_1ECD82CE8;
  if (!qword_1ECD82CE8)
  {
    sub_1DDA134E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82CE8);
  }

  return result;
}

unint64_t sub_1DD911E3C()
{
  result = qword_1ECD82CF0;
  if (!qword_1ECD82CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82CF0);
  }

  return result;
}

uint64_t sub_1DD911E90(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v10;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v51[0] = v17;
    v51[1] = v18;
    v51[2] = v20;
    v51[3] = v21;

    a2(&v47, v51);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = *v52;
    v28 = sub_1DD96AC38(v47, v48);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((v46 & 1) == 0)
      {
        sub_1DD9C9D00();
      }
    }

    else
    {
      sub_1DD9C838C(v31, v46 & 1);
      v33 = sub_1DD96AC38(v22, v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v52;
    if (v32)
    {

      v12 = (v35[7] + 16 * v28);
      *v12 = v24;
      v12[1] = v25;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v22;
      v36[1] = v23;
      v37 = (v35[7] + 16 * v28);
      *v37 = v24;
      v37[1] = v25;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v35[2] = v40;
    }

    a4 = 1;
    v11 = v13;
    v10 = v42;
    v6 = v43;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_1DD912130(a1);
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1DDA15500();
  __break(1u);
  return result;
}

uint64_t sub_1DD912138(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD912180(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1DD9121E0()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DD912250(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 37))
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

uint64_t sub_1DD912298(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 37) = 1;
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

    *(result + 37) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD9122F0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UserCredentials(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v28[-v13];
  sub_1DD92C474(v34);
  v33 = a1;
  v15 = v35;
  if (v35)
  {
    v31 = v36;
    v32 = v37;
    v30 = v34[1];
    v29 = v34[0];
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v15 = 0xE000000000000000;
    v32 = 0xE000000000000000;
  }

  sub_1DD92C8C4(v11);
  sub_1DD914958(v11, v9, &qword_1ECD82D00, &qword_1DDA18B10);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {

    v16 = type metadata accessor for Credentials(0);
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  }

  else
  {
    v29 &= 1u;
    sub_1DD9149C0(v9, v5, type metadata accessor for UserCredentials);
    v18 = *v5;
    v17 = *(v5 + 1);
    v20 = *(v5 + 2);
    v19 = *(v5 + 3);
    v21 = *(v2 + 32);
    v22 = type metadata accessor for Credentials(0);
    v23 = *(v22 + 28);
    v24 = sub_1DDA13680();
    (*(*(v24 - 8) + 16))(&v14[v23], &v5[v21], v24);

    sub_1DD914888(v5, type metadata accessor for UserCredentials);
    *v14 = v18;
    *(v14 + 1) = v17;
    *(v14 + 2) = v20;
    *(v14 + 3) = v19;
    v14[32] = v29;
    v25 = v31;
    *(v14 + 5) = v30;
    *(v14 + 6) = v15;
    v26 = v32;
    *(v14 + 7) = v25;
    *(v14 + 8) = v26;
    (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
  }

  return sub_1DD914958(v14, v33, &qword_1ECD82D20, &qword_1DDA18CE0);
}

uint64_t sub_1DD912800@<X0>(uint64_t a1@<X8>)
{
  v154 = a1;
  v152 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  v149 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v142 = (&v129 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82830, &unk_1DDA16350);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v141 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v140 = &v129 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v139 = &v129 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v138 = &v129 - v10;
  v155 = type metadata accessor for RateLimitBudgets(0);
  v153 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v150 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D10, &qword_1DDA185E0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v147 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v148 = &v129 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v146 = &v129 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v137 = &v129 - v19;
  v20 = type metadata accessor for ChatChunk.RateLimits(0);
  v144 = *(v20 - 8);
  v145 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v136 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CF8, &unk_1DDA1AD50);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v143 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v151 = &v129 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D18, &qword_1DDA185E8);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v129 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v129 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v129 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v129 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v129 - v42;
  sub_1DD92C8C4(&v129 - v42);
  v135 = v1;
  v129 = v38;
  v130 = v40;
  v131 = v29;
  v44 = v152;
  v132 = v32;
  v134 = v35;
  v133 = v26;
  v45 = type metadata accessor for UserCredentials(0);
  v46 = (*(*(v45 - 8) + 48))(v43, 1, v45);
  sub_1DD90D378(v43, &qword_1ECD82D00, &qword_1DDA18B10);
  if (v46 == 1)
  {
    v47 = sub_1DD92C900();
    if (v47 == 2)
    {
      v48 = 1;
      v49 = v155;
      v50 = v134;
      v51 = v130;
    }

    else
    {
      v49 = v155;
      v110 = *(v155 + 20);
      v111 = v47;
      v112 = type metadata accessor for RateLimitBudgets.Limits(0);
      v113 = *(*(v112 - 8) + 56);
      v51 = v130;
      v113(&v130[v110], 1, 1, v112);
      v114 = v49[6];
      v113(&v51[v114], 1, 1, v112);
      v115 = v49[7];
      v113(&v51[v115], 1, 1, v112);
      v116 = v49[8];
      v113(&v51[v116], 1, 1, v112);
      *v51 = v111 & 1;
      sub_1DD90D378(&v51[v110], &qword_1ECD82830, &unk_1DDA16350);
      v113(&v51[v110], 1, 1, v112);
      sub_1DD90D378(&v51[v114], &qword_1ECD82830, &unk_1DDA16350);
      v113(&v51[v114], 1, 1, v112);
      sub_1DD90D378(&v51[v115], &qword_1ECD82830, &unk_1DDA16350);
      v113(&v51[v115], 1, 1, v112);
      sub_1DD90D378(&v51[v116], &qword_1ECD82830, &unk_1DDA16350);
      v113(&v51[v116], 1, 1, v112);
      v48 = 0;
      v50 = v134;
    }

    v117 = v129;
    (*(v153 + 56))(v51, v48, 1, v49);
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v118 = sub_1DDA14810();
    __swift_project_value_buffer(v118, qword_1EE16FA80);
    sub_1DD90ADB4(v51, v117, &qword_1ECD82D18, &qword_1DDA185E8);
    v119 = sub_1DDA147F0();
    v120 = sub_1DDA14EC0();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v156[0] = v122;
      *v121 = 136315394;
      *(v121 + 4) = sub_1DD93FA54(0xD000000000000019, 0x80000001DDA27050, v156);
      *(v121 + 12) = 2080;
      sub_1DD90ADB4(v117, v50, &qword_1ECD82D18, &qword_1DDA185E8);
      v123 = sub_1DDA14B70();
      v125 = v124;
      sub_1DD90D378(v117, &qword_1ECD82D18, &qword_1DDA185E8);
      v126 = sub_1DD93FA54(v123, v125, v156);

      *(v121 + 14) = v126;
      _os_log_impl(&dword_1DD8F8000, v119, v120, "%s: [anonymous] %s", v121, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v122, -1, -1);
      MEMORY[0x1E12B8CE0](v121, -1, -1);
    }

    else
    {

      sub_1DD90D378(v117, &qword_1ECD82D18, &qword_1DDA185E8);
    }

    v127 = v51;
  }

  else
  {
    v52 = v151;
    sub_1DD92CCAC(v151);
    v53 = v143;
    sub_1DD90ADB4(v52, v143, &qword_1ECD82CF8, &unk_1DDA1AD50);
    v54 = v145;
    v55 = 1;
    if ((*(v144 + 48))(v53, 1, v145) != 1)
    {
      v56 = v136;
      sub_1DD9149C0(v53, v136, type metadata accessor for ChatChunk.RateLimits);
      v57 = v137;
      sub_1DD914958(v56, v137, &qword_1ECD82D10, &qword_1DDA185E0);
      sub_1DD914958(v56 + v54[5], v146, &qword_1ECD82D10, &qword_1DDA185E0);
      sub_1DD914958(v56 + v54[6], v148, &qword_1ECD82D10, &qword_1DDA185E0);
      sub_1DD914958(v56 + v54[7], v147, &qword_1ECD82D10, &qword_1DDA185E0);
      v58 = v155;
      v59 = *(v155 + 20);
      v60 = type metadata accessor for RateLimitBudgets.Limits(0);
      v61 = *(*(v60 - 1) + 56);
      v62 = 1;
      v63 = v150;
      v61(&v150[v59], 1, 1, v60);
      v136 = v58[6];
      v61(&v63[v136], 1, 1, v60);
      v144 = v58[7];
      v61(&v63[v144], 1, 1, v60);
      v64 = v58[8];
      v65 = v57;
      v143 = v64;
      v66 = v61;
      v61(&v63[v64], 1, 1, v60);
      *v63 = 0;
      v67 = *(v149 + 48);
      v68 = v44;
      v149 += 48;
      v145 = v67;
      v69 = (v67)(v57, 1, v44);
      v70 = v138;
      if (v69 != 1)
      {
        v71 = v142;
        sub_1DD9149C0(v65, v142, type metadata accessor for ChatChunk.RateLimits.Limits);
        v72 = *(v71 + *(v44 + 24));
        v73 = *v71;
        sub_1DD914958(v71 + *(v44 + 20), v70 + v60[6], &qword_1ECD82838, &unk_1DDA185F0);
        v62 = 0;
        v74 = v72 >= v73;
        *v70 = v72;
        v70[1] = v73;
        v68 = v44;
        *(v70 + v60[7]) = v74;
        *(v70 + v60[8]) = 0;
      }

      v75 = 1;
      v76 = v61;
      v61(v70, v62, 1, v60);
      sub_1DD9148E8(v70, &v150[v59]);
      v77 = v146;
      v78 = (v145)(v146, 1, v68);
      v79 = v142;
      v80 = v139;
      if (v78 != 1)
      {
        sub_1DD9149C0(v77, v142, type metadata accessor for ChatChunk.RateLimits.Limits);
        v81 = *(v79 + *(v68 + 24));
        v82 = *v79;
        sub_1DD914958(v79 + *(v68 + 20), v80 + v60[6], &qword_1ECD82838, &unk_1DDA185F0);
        v75 = 0;
        *v80 = v81;
        v80[1] = v82;
        *(v80 + v60[7]) = v81 >= v82;
        *(v80 + v60[8]) = 0;
      }

      v83 = 1;
      v66(v80, v75, 1, v60);
      sub_1DD9148E8(v80, &v150[v136]);
      v84 = v147;
      v85 = (v145)(v147, 1, v68);
      v86 = v140;
      if (v85 != 1)
      {
        sub_1DD9149C0(v84, v79, type metadata accessor for ChatChunk.RateLimits.Limits);
        v87 = *(v79 + *(v68 + 24));
        v88 = *v79;
        sub_1DD914958(v79 + *(v68 + 20), v86 + v60[6], &qword_1ECD82838, &unk_1DDA185F0);
        v83 = 0;
        *v86 = v87;
        v86[1] = v88;
        *(v86 + v60[7]) = 0;
        *(v86 + v60[8]) = v87 >= v88;
      }

      v89 = 1;
      v76(v86, v83, 1, v60);
      v90 = v150;
      sub_1DD9148E8(v86, &v150[v143]);
      v91 = v148;
      v92 = (v145)(v148, 1, v68);
      v93 = v141;
      if (v92 != 1)
      {
        sub_1DD9149C0(v91, v79, type metadata accessor for ChatChunk.RateLimits.Limits);
        v94 = *(v79 + *(v68 + 24));
        v95 = *v79;
        sub_1DD914958(v79 + *(v68 + 20), v93 + v60[6], &qword_1ECD82838, &unk_1DDA185F0);
        v89 = 0;
        v96 = v94 >= v95;
        *v93 = v94;
        v93[1] = v95;
        v90 = v150;
        *(v93 + v60[7]) = v96;
        *(v93 + v60[8]) = 0;
      }

      v76(v93, v89, 1, v60);
      sub_1DD9148E8(v93, v90 + v144);
      sub_1DD9149C0(v90, v132, type metadata accessor for RateLimitBudgets);
      v55 = 0;
    }

    v97 = v132;
    (*(v153 + 56))(v132, v55, 1, v155);
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v98 = sub_1DDA14810();
    __swift_project_value_buffer(v98, qword_1EE16FA80);
    v99 = v131;
    sub_1DD90ADB4(v97, v131, &qword_1ECD82D18, &qword_1DDA185E8);
    v100 = sub_1DDA147F0();
    v101 = sub_1DDA14EC0();
    v102 = os_log_type_enabled(v100, v101);
    v103 = v134;
    if (v102)
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v156[0] = v105;
      *v104 = 136315394;
      *(v104 + 4) = sub_1DD93FA54(0xD000000000000019, 0x80000001DDA27050, v156);
      *(v104 + 12) = 2080;
      sub_1DD90ADB4(v99, v103, &qword_1ECD82D18, &qword_1DDA185E8);
      v106 = sub_1DDA14B70();
      v108 = v107;
      sub_1DD90D378(v99, &qword_1ECD82D18, &qword_1DDA185E8);
      v109 = sub_1DD93FA54(v106, v108, v156);

      *(v104 + 14) = v109;
      _os_log_impl(&dword_1DD8F8000, v100, v101, "%s: [authenticated] %s", v104, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v105, -1, -1);
      MEMORY[0x1E12B8CE0](v104, -1, -1);
    }

    else
    {

      sub_1DD90D378(v99, &qword_1ECD82D18, &qword_1DDA185E8);
    }

    sub_1DD90D378(v151, &qword_1ECD82CF8, &unk_1DDA1AD50);
    v127 = v97;
  }

  return sub_1DD914958(v127, v154, &qword_1ECD82D18, &qword_1DDA185E8);
}

uint64_t sub_1DD913A48@<X0>(char a1@<W0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v56 = a3;
  v57 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D08, &unk_1DDA185D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v51 - v5;
  v7 = type metadata accessor for Vault(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v54 = &v51 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v51 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v51 - v16);
  if (a1)
  {
    v18 = 0xD000000000000016;
  }

  else
  {
    v18 = 0xD000000000000010;
  }

  if (a1)
  {
    v19 = "saveRateLimitBudgets(_:)";
  }

  else
  {
    v19 = "com.apple.openai.xcode";
  }

  v20 = v19 | 0x8000000000000000;
  v53 = v15;
  sub_1DDA14800();

  v21 = sub_1DDA147F0();
  v22 = sub_1DDA14ED0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v52 = v18;
    v25 = v24;
    v59 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_1DD93FA54(v52, v20, &v59);
    *(v23 + 12) = 2080;
    v58 = 1;
    v26 = sub_1DDA14B70();
    v28 = sub_1DD93FA54(v26, v27, &v59);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_1DD8F8000, v21, v22, "Creating vault:%s security:%s", v23, 0x16u);
    swift_arrayDestroy();
    v29 = v25;
    v18 = v52;
    MEMORY[0x1E12B8CE0](v29, -1, -1);
    MEMORY[0x1E12B8CE0](v23, -1, -1);
  }

  *v17 = v18;
  v17[1] = v20;
  v30 = type metadata accessor for ManagedKeychainValueStore(0);
  v17[5] = v30;
  v17[6] = &off_1F58F2328;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17 + 2);

  sub_1DDA141C0();
  sub_1DDA14040();
  v32 = sub_1DDA14050();
  v33 = v18;
  v34 = *(v32 - 8);
  result = (*(v34 + 48))(v6, 1, v32);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v36 = v6;
    v37 = v57;
    v38 = HIDWORD(v57) & 1;
    (*(v34 + 32))(boxed_opaque_existential_1 + v30[5], v36, v32);
    v39 = v30[6];
    v40 = *MEMORY[0x1E69A1490];
    v41 = sub_1DDA14060();
    (*(*(v41 - 8) + 104))(boxed_opaque_existential_1 + v39, v40, v41);
    v42 = boxed_opaque_existential_1 + v30[7];
    *v42 = v37;
    v52 = v38;
    v42[4] = BYTE4(v37) & 1;
    sub_1DDA14800();
    *v14 = v33;
    v14[1] = v20;
    v14[5] = type metadata accessor for UserDefaultsValueStore(0);
    v14[6] = &off_1F58F2310;
    v43 = __swift_allocate_boxed_opaque_existential_1(v14 + 2);
    v60 = v38;
    sub_1DD9C74C8(v37 | (v38 << 32), v43);
    v44 = v54;
    sub_1DD914824(v17, v54);
    v45 = v55;
    sub_1DD914824(v14, v55);
    v46 = sub_1DD96EB64(0x69746E6564657263, 0xEB00000000736C61);
    v47 = sub_1DD96EEA8(0x50676E696C6C6962, 0xEB000000006E616CLL);
    v48 = sub_1DD96F1EC(0x696D694C65746172, 0xEB00000000646574);
    v49 = sub_1DD96F51C(0x696D694C65746172, 0xEA00000000007374);
    sub_1DD914888(v45, type metadata accessor for Vault);
    sub_1DD914888(v44, type metadata accessor for Vault);
    sub_1DD914888(v17, type metadata accessor for Vault);
    result = sub_1DD914888(v14, type metadata accessor for Vault);
    v50 = v56;
    *v56 = v46;
    v50[1] = v47;
    v50[2] = v48;
    v50[3] = v49;
    *(v50 + 8) = v37;
    *(v50 + 36) = v52;
  }

  return result;
}

uint64_t sub_1DD913FF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9[-v4];
  sub_1DD92C8C4(&v9[-v4]);
  sub_1DD914958(v5, v3, &qword_1ECD82D00, &qword_1DDA18B10);
  v6 = type metadata accessor for UserCredentials(0);
  if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
  {
    sub_1DD90D378(v3, &qword_1ECD82D00, &qword_1DDA18B10);
    return 0;
  }

  else
  {
    v8 = *(v3 + 4);

    sub_1DD914888(v3, type metadata accessor for UserCredentials);
    return v8;
  }
}

uint64_t sub_1DD91442C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CF8, &unk_1DDA1AD50);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - v8;
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v10 = sub_1DDA14810();
  __swift_project_value_buffer(v10, qword_1EE16FA80);
  sub_1DD90ADB4(a1, v9, &qword_1ECD82CF8, &unk_1DDA1AD50);
  v11 = sub_1DDA147F0();
  v12 = sub_1DDA14EC0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1DD93FA54(0xD000000000000018, 0x80000001DDA26FF0, v21);
    *(v13 + 12) = 2080;
    v20[1] = a2;
    sub_1DD90ADB4(v9, v7, &qword_1ECD82CF8, &unk_1DDA1AD50);
    v15 = sub_1DDA14B70();
    v17 = v16;
    sub_1DD90D378(v9, &qword_1ECD82CF8, &unk_1DDA1AD50);
    v18 = sub_1DD93FA54(v15, v17, v21);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_1DD8F8000, v11, v12, "%s budget:%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v14, -1, -1);
    MEMORY[0x1E12B8CE0](v13, -1, -1);
  }

  else
  {

    sub_1DD90D378(v9, &qword_1ECD82CF8, &unk_1DDA1AD50);
  }

  return sub_1DD9316D8(a1);
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

uint64_t sub_1DD914824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Vault(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD914888(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DD9148E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82830, &unk_1DDA16350);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD914958(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DD9149C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD914A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v35 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600);
  v34 = *(v36 - 8);
  v37 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v3 = &v30 - v2;
  v31 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v32 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D38, &unk_1DDA18610);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  v11 = *(v33 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v33);
  v14 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  sub_1DDA14140();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8790], v7);
  sub_1DDA14DD0();
  (*(v8 + 8))(v10, v7);
  v17 = sub_1DDA14D60();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  sub_1DD916418(v39, &v40);
  v18 = v34;
  v19 = v3;
  v20 = v36;
  (*(v34 + 16))(v19, v38, v36);
  v21 = v33;
  (*(v11 + 16))(v14, v16, v33);
  v22 = (*(v18 + 80) + 80) & ~*(v18 + 80);
  v23 = (v37 + *(v11 + 80) + v22) & ~*(v11 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = v41;
  *(v24 + 32) = v40;
  *(v24 + 48) = v25;
  *(v24 + 64) = v42;
  (*(v18 + 32))(v24 + v22, v31, v20);
  (*(v11 + 32))(v24 + v23, v14, v21);
  v26 = sub_1DD982718(0, 0, v32, &unk_1DDA18628, v24);
  sub_1DD916418(v39, &v40);
  v27 = swift_allocObject();
  v28 = v41;
  *(v27 + 16) = v40;
  *(v27 + 32) = v28;
  *(v27 + 48) = v42;
  *(v27 + 64) = v26;
  sub_1DDA14DE0();
  return (*(v11 + 8))(v16, v21);
}

uint64_t sub_1DD914E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D50, &qword_1DDA18638);
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v8 = sub_1DDA134E0();
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v9 = sub_1DDA14120();
  v6[24] = v9;
  v6[25] = *(v9 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v10 = sub_1DDA140C0();
  v6[28] = v10;
  v6[29] = *(v10 - 8);
  v6[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D58, &unk_1DDA18640);
  v6[31] = swift_task_alloc();
  v11 = sub_1DDA14140();
  v6[32] = v11;
  v6[33] = *(v11 - 8);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECD82D60, &qword_1DDA188A0);
  v6[38] = v12;
  v6[39] = *(v12 - 8);
  v6[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9151BC, 0, 0);
}

uint64_t sub_1DD9151BC()
{
  sub_1DD916418(*(v0 + 104), v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600);
  sub_1DDA14E10();
  v1 = *(v0 + 56);
  if (*(v1 + 16))
  {
    *(v0 + 352) = *MEMORY[0x1E69A1508];
    *(v0 + 356) = *MEMORY[0x1E69A1518];
    *(v0 + 360) = *MEMORY[0x1E69A1510];
    *(v0 + 328) = v1;
    v2 = swift_task_alloc();
    *(v0 + 336) = v2;
    *v2 = v0;
    v2[1] = sub_1DD915454;
    v3 = *(v0 + 304);
    v4 = *(v0 + 248);

    return MEMORY[0x1EEE6DB98](v4, v3);
  }

  else
  {
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);
    v7 = *(v0 + 304);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
    (*(v9 + 40))(sub_1DD916A68, 0, v8, v9);
    *(v0 + 72) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
    sub_1DDA14E00();
    (*(v6 + 8))(v5, v7);
    sub_1DD91692C(v0 + 16);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1DD915454()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1DD916270;
  }

  else
  {
    v2 = sub_1DD915568;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD915568()
{
  v146 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1DD91695C(v3);
LABEL_39:
    v123 = *(v0 + 312);
    v122 = *(v0 + 320);
    v124 = *(v0 + 304);
    v125 = *(v0 + 40);
    v126 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v125);
    (*(v126 + 40))(sub_1DD916A68, 0, v125, v126);
    *(v0 + 72) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
    sub_1DDA14E00();
    (*(v123 + 8))(v122, v124);
    sub_1DD91692C(v0 + 16);

    v127 = *(v0 + 8);

    return v127();
  }

  v4 = *(v0 + 352);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 224);
  (*(v2 + 32))(*(v0 + 296), v3, v1);
  sub_1DDA140D0();
  v8 = (*(v6 + 88))(v5, v7);
  if (v8 == v4)
  {
    v9 = *(v0 + 240);
    v10 = *(v0 + 216);
    v11 = *(v0 + 192);
    v12 = *(v0 + 200);
    (*(*(v0 + 232) + 96))(v9, *(v0 + 224));
    (*(v12 + 32))(v10, v9, v11);
    if (qword_1ECD827A0 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 288);
    v14 = *(v0 + 296);
    v15 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 208);
    v17 = *(v0 + 216);
    v19 = *(v0 + 192);
    v20 = *(v0 + 200);
    v21 = sub_1DDA14810();
    __swift_project_value_buffer(v21, qword_1ECDA20C8);
    v142 = *(v16 + 16);
    v142(v13, v14, v15);
    (*(v20 + 16))(v18, v17, v19);
    v22 = sub_1DDA147F0();
    v23 = sub_1DDA14ED0();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 288);
    v27 = *(v0 + 256);
    v26 = *(v0 + 264);
    v29 = *(v0 + 200);
    v28 = *(v0 + 208);
    v30 = *(v0 + 192);
    if (v24)
    {
      v135 = *(v0 + 192);
      v138 = *(v0 + 256);
      v31 = *(v0 + 184);
      v32 = *(v0 + 152);
      v33 = *(v0 + 160);
      v130 = *(v0 + 208);
      v34 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v145 = v132;
      *v34 = 136315394;
      log = v22;
      sub_1DDA140E0();
      sub_1DD911DE4();
      v35 = sub_1DDA15400();
      v129 = v23;
      v37 = v36;
      (*(v33 + 8))(v31, v32);
      v38 = v138;
      v139 = *(v26 + 8);
      v139(v25, v38);
      v39 = sub_1DD93FA54(v35, v37, &v145);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2048;
      sub_1DDA14110();
      v41 = v40;
      v42 = v135;
      v136 = *(v29 + 8);
      v136(v130, v42);
      *(v34 + 14) = v41;
      _os_log_impl(&dword_1DD8F8000, log, v129, "Registration progress update. URL:%s progress:%f", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v132);
      MEMORY[0x1E12B8CE0](v132, -1, -1);
      MEMORY[0x1E12B8CE0](v34, -1, -1);
    }

    else
    {

      v136 = *(v29 + 8);
      v136(v28, v30);
      v139 = *(v26 + 8);
      v139(v25, v27);
    }

    v63 = *(v0 + 296);
    v64 = *(v0 + 256);
    v65 = *(v0 + 192);
    v67 = *(v0 + 136);
    v66 = *(v0 + 144);
    v134 = *(v0 + 216);
    v68 = *(v0 + 128);
    v142(*(v0 + 280), v63, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
    sub_1DDA14DF0();
    (*(v67 + 8))(v66, v68);
    v136(v134, v65);
    v139(v63, v64);
  }

  else if (v8 == *(v0 + 356))
  {
    (*(*(v0 + 232) + 96))(*(v0 + 240), *(v0 + 224));
    if (qword_1ECD827A0 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 296);
    v45 = *(v0 + 264);
    v44 = *(v0 + 272);
    v46 = *(v0 + 256);
    v47 = sub_1DDA14810();
    __swift_project_value_buffer(v47, qword_1ECDA20C8);
    v143 = *(v45 + 16);
    v143(v44, v43, v46);
    v48 = sub_1DDA147F0();
    v49 = sub_1DDA14ED0();
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 264);
    v52 = *(v0 + 272);
    v53 = *(v0 + 256);
    if (v50)
    {
      v54 = *(v0 + 184);
      v56 = *(v0 + 152);
      v55 = *(v0 + 160);
      v140 = *(v0 + 256);
      v57 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v145 = v137;
      *v57 = 136315138;
      v133 = v49;
      sub_1DDA140E0();
      sub_1DD911DE4();
      v58 = sub_1DDA15400();
      v60 = v59;
      (*(v55 + 8))(v54, v56);
      v61 = v140;
      v141 = *(v51 + 8);
      v141(v52, v61);
      v62 = sub_1DD93FA54(v58, v60, &v145);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_1DD8F8000, v48, v133, "Finished uploading document. URL: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v137);
      MEMORY[0x1E12B8CE0](v137, -1, -1);
      MEMORY[0x1E12B8CE0](v57, -1, -1);
    }

    else
    {

      v141 = *(v51 + 8);
      v141(v52, v53);
    }

    v78 = *(v0 + 176);
    sub_1DDA140E0();
    v79 = sub_1DD96AD50(v78);
    if (v80)
    {
      v81 = v79;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = *(v0 + 56);
      *(v0 + 96) = v83;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1DD9CA010();
        v83 = *(v0 + 96);
      }

      v84 = *(v0 + 176);
      v85 = *(v0 + 152);
      v86 = *(v0 + 160);
      v87 = *(v86 + 8);
      v87(*(v83 + 48) + *(v86 + 72) * v81, v85);

      sub_1DD9CAEFC(v81, v83);
      v87(v84, v85);
      *(v0 + 56) = v83;
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
    }

    v95 = *(v0 + 296);
    v96 = *(v0 + 256);
    v97 = *(v0 + 240);
    v99 = *(v0 + 136);
    v98 = *(v0 + 144);
    v100 = *(v0 + 128);
    v143(*(v0 + 280), v95, v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
    sub_1DDA14DF0();
    (*(v99 + 8))(v98, v100);
    v141(v95, v96);
    v101 = sub_1DDA14180();
    (*(*(v101 - 8) + 8))(v97, v101);
  }

  else if (v8 == *(v0 + 360))
  {
    v69 = *(v0 + 240);
    (*(*(v0 + 232) + 96))(v69, *(v0 + 224));
    v71 = *v69;
    v70 = v69[1];
    if (qword_1ECD827A0 != -1)
    {
      swift_once();
    }

    v72 = sub_1DDA14810();
    __swift_project_value_buffer(v72, qword_1ECDA20C8);

    v73 = sub_1DDA147F0();
    v74 = sub_1DDA14EE0();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v145 = v76;
      *v75 = 136315138;
      v77 = sub_1DD93FA54(v71, v70, &v145);

      *(v75 + 4) = v77;
      _os_log_impl(&dword_1DD8F8000, v73, v74, "Registration failed for document with error: %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x1E12B8CE0](v76, -1, -1);
      MEMORY[0x1E12B8CE0](v75, -1, -1);
    }

    else
    {
    }

    v102 = *(v0 + 168);
    sub_1DDA140E0();
    v103 = sub_1DD96AD50(v102);
    if (v104)
    {
      v105 = v103;
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v107 = *(v0 + 56);
      *(v0 + 88) = v107;
      if (!v106)
      {
        sub_1DD9CA010();
        v107 = *(v0 + 88);
      }

      v109 = *(v0 + 160);
      v108 = *(v0 + 168);
      v110 = *(v0 + 152);
      v111 = *(v109 + 8);
      v111(*(v107 + 48) + *(v109 + 72) * v105, v110);

      sub_1DD9CAEFC(v105, v107);
      v111(v108, v110);
      *(v0 + 56) = v107;
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    }

    v112 = *(v0 + 296);
    v113 = *(v0 + 256);
    v114 = *(v0 + 264);
    v116 = *(v0 + 136);
    v115 = *(v0 + 144);
    v117 = *(v0 + 128);
    (*(v114 + 16))(*(v0 + 280), v112, v113);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
    sub_1DDA14DF0();
    (*(v116 + 8))(v115, v117);
    (*(v114 + 8))(v112, v113);
  }

  else
  {
    v88 = *(v0 + 296);
    v89 = *(v0 + 256);
    v90 = *(v0 + 264);
    v91 = *(v0 + 232);
    v144 = *(v0 + 240);
    v92 = *(v0 + 224);
    v93 = *(v0 + 40);
    v94 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v93);
    (*(v94 + 40))(sub_1DD916A68, 0, v93, v94);
    *(v0 + 80) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
    sub_1DDA14E00();
    (*(v90 + 8))(v88, v89);
    (*(v91 + 8))(v144, v92);
  }

  v118 = *(v0 + 56);
  if (!*(v118 + 16))
  {
    goto LABEL_39;
  }

  *(v0 + 328) = v118;
  v119 = swift_task_alloc();
  *(v0 + 336) = v119;
  *v119 = v0;
  v119[1] = sub_1DD915454;
  v120 = *(v0 + 304);
  v121 = *(v0 + 248);

  return MEMORY[0x1EEE6DB98](v121, v120);
}

uint64_t sub_1DD916270()
{
  v1 = v0[43];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  (*(v6 + 40))(sub_1DD916A68, 0, v5, v6);
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  sub_1DDA14E00();
  (*(v3 + 8))(v2, v4);
  sub_1DD91692C((v0 + 2));

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DD916450(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600) - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1DD9165BC;

  return sub_1DD914E94(a1, v10, v11, v1 + 32, v1 + v6, v1 + v9);
}

uint64_t sub_1DD9165BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DD9166B0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D48, &qword_1DDA18630);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(v6 + 16))(&v13 - v7, a1, v5);
  LODWORD(a1) = (*(v6 + 88))(v8, v5);
  v9 = *MEMORY[0x1E69E8760];
  result = (*(v6 + 8))(v8, v5);
  if (a1 == v9)
  {
    v11 = a2[3];
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v11);
    (*(v12 + 40))(sub_1DD916A68, 0, v11, v12);
    return sub_1DDA14D70();
  }

  return result;
}

void sub_1DD916858(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DDA15190())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1E12B7F50](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v4 cancel];

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_1DD91695C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D58, &unk_1DDA18640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD9169C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD916A0C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

id sub_1DD916D34()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DD916DF8(void *a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_completion);
  v6 = (v2 + OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_data);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  sub_1DD909CD4(v7, v8);
  v9 = [a1 response];
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {
    }
  }

  else
  {
    v11 = 0;
  }

  v5(v7, v8, v11, a2);

  return sub_1DD909D28(v7, v8);
}

uint64_t sub_1DD916EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DDA14120();
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_fileSize + 8))
  {
    v12 = a3;
  }

  else
  {
    v12 = *(v3 + OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_fileSize);
  }

  if (v12 < 1)
  {
    if (((a2 | a1) & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (((a2 | a1) & 0x8000000000000000) == 0)
  {
LABEL_6:
    sub_1DDA14100();
    (*(v3 + OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_update))(v11);
    return (*(v8 + 8))(v11, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD917050(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD9170D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v11 = v6 + ((v9 + ((v9 + (v9 & ~v8)) & ~v8)) & ~v8) + 1;
  v12 = 8 * v11;
  if (v11 > 3)
  {
    goto LABEL_7;
  }

  v14 = ((v10 + ~(-1 << v12)) >> v12) + 1;
  if (HIWORD(v14))
  {
    v13 = *(a1 + v11);
    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v14 <= 0xFF)
    {
      if (v14 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_25;
      }

LABEL_14:
      v15 = (v13 - 1) << v12;
      if (v11 > 3)
      {
        v15 = 0;
      }

      if (v11)
      {
        if (v11 > 3)
        {
          LODWORD(v11) = 4;
        }

        if (v11 > 2)
        {
          if (v11 == 3)
          {
            LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v11) = *a1;
          }
        }

        else if (v11 == 1)
        {
          LODWORD(v11) = *a1;
        }

        else
        {
          LODWORD(v11) = *a1;
        }
      }

      return v7 + (v11 | v15) + 1;
    }

    v13 = *(a1 + v11);
    if (*(a1 + v11))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v17 = *(((v9 + ((v9 + ((a1 + v9) & ~v8)) & ~v8)) & ~v8) + v6);
  if (v17 < 2)
  {
    return 0;
  }

  return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
}

char *sub_1DD917284(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = v8 + ((v8 + v9 + ((v8 + v9 + ((v8 + v9) & ~v9)) & ~v9)) & ~v9) + 1;
  v11 = a3 >= v7;
  v12 = a3 - v7;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v17 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v17))
      {
        v13 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v13 = v18;
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

  if (v7 < a2)
  {
    v14 = ~v7 + a2;
    if (v10 < 4)
    {
      v16 = (v14 >> (8 * v10)) + 1;
      if (v8 + ((v8 + v9 + ((v8 + v9 + ((v8 + v9) & ~v9)) & ~v9)) & ~v9) != -1)
      {
        v19 = v14 & ~(-1 << (8 * v10));
        v20 = result;
        bzero(result, v10);
        result = v20;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v20 = v19;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&result[v10] = v16;
              }

              else
              {
                *&result[v10] = v16;
              }

              return result;
            }
          }

          else
          {
            *v20 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v10);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      result[v10] = v16;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v10] = 0;
  }

  else if (v13)
  {
    result[v10] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 < 0xFE)
  {
    *(((v8 + v9 + ((v8 + v9 + (&result[v8 + v9] & ~v9)) & ~v9)) & ~v9) + v8) = a2 + 1;
  }

  else
  {
    v21 = *(v5 + 56);

    return v21();
  }

  return result;
}

unint64_t sub_1DD917508(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DD917584()
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9175F8(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD91764C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1DDA151E0();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1DD9176C0()
{
  sub_1DD94BC74(1, v13);
  if (qword_1ECD827D8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECDA2158;
  v1 = qword_1EE16F290;

  if (v1 != -1)
  {
    swift_once();
  }

  v12[3] = &type metadata for ChatGPTProvider;
  v12[4] = &off_1F58EF288;
  v12[0] = swift_allocObject();
  sub_1DD9183EC(&qword_1EE16FA98, v12[0] + 16);
  type metadata accessor for ExternalLanguageModel();
  v2 = swift_allocObject();
  type metadata accessor for ExpiredSessions();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = MEMORY[0x1E69E7CD0];
  *(v2 + 120) = v3;
  sub_1DD90ADB4(v12, &v6, &qword_1ECD82F40, &qword_1DDA18708);
  if (*(&v7 + 1))
  {
    sub_1DD8FEEB0(&v6, &v9);
  }

  else
  {
    *(&v10 + 1) = &type metadata for ChatGPTProvider;
    *&v11[0] = &off_1F58EF288;
    *&v9 = swift_allocObject();
    sub_1DD9183EC(&qword_1EE16FA98, v9 + 16);
    if (*(&v7 + 1))
    {
      sub_1DD90D378(&v6, &qword_1ECD82F40, &qword_1DDA18708);
    }
  }

  sub_1DD8FEEB0(&v9, v2 + 80);
  sub_1DD90ADB4(v13, &v6, &qword_1ECD82F48, &unk_1DDA18710);
  if (v6)
  {
    v9 = v6;
    v10 = v7;
    v11[0] = v8[0];
    *(v11 + 9) = *(v8 + 9);
  }

  else
  {
    sub_1DD94BC74(1, &v9);
    if (v6)
    {
      sub_1DD90D378(&v6, &qword_1ECD82F48, &unk_1DDA18710);
    }
  }

  v4 = v10;
  *(v2 + 16) = v9;
  *(v2 + 32) = v4;
  *(v2 + 48) = v11[0];
  *(v2 + 57) = *(v11 + 9);
  sub_1DD90D378(v13, &qword_1ECD82F48, &unk_1DDA18710);
  result = sub_1DD90D378(v12, &qword_1ECD82F40, &qword_1DDA18708);
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 128) = v0;
  qword_1ECDA20B0 = v2;
  return result;
}

uint64_t sub_1DD917948(char *a1)
{
  v2 = sub_1DDA13870();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_1DDA134E0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DDA13440();
  sub_1DDA134C0();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1DD90D378(v8, &qword_1ECD82CE0, &qword_1DDA18700);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_1DDA13460();
    v13 = sub_1DDA151E0();

    (*(v10 + 8))(v12, v9);
    if (!v13)
    {
      (*(v3 + 8))(a1, v2);
      return 0;
    }
  }

  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v14 = sub_1DDA14810();
  __swift_project_value_buffer(v14, qword_1EE16FA80);
  (*(v3 + 16))(v5, a1, v2);
  v15 = sub_1DDA147F0();
  v16 = sub_1DDA14EE0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315138;
    v19 = sub_1DDA13440();
    v21 = v20;
    v26 = a1;
    v22 = *(v3 + 8);
    v22(v5, v2);
    v23 = sub_1DD93FA54(v19, v21, &v27);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_1DD8F8000, v15, v16, "Invalid Model Bundle %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1E12B8CE0](v18, -1, -1);
    MEMORY[0x1E12B8CE0](v17, -1, -1);

    v22(v26, v2);
  }

  else
  {

    v24 = *(v3 + 8);
    v24(a1, v2);
    v24(v5, v2);
  }

  return 1;
}

id sub_1DD917D58(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_1DDA134E0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DDA134C0();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1DD90D378(v11, &qword_1ECD82CE0, &qword_1DDA18700);
LABEL_5:
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v17 = sub_1DDA14810();
    __swift_project_value_buffer(v17, qword_1ECDA20E0);

    v18 = sub_1DDA147F0();
    v19 = sub_1DDA14EE0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1DD93FA54(a1, a2, v44);
      _os_log_impl(&dword_1DD8F8000, v18, v19, "Failed to load model, cannot recognize model identifier: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E12B8CE0](v21, -1, -1);
      MEMORY[0x1E12B8CE0](v20, -1, -1);
    }

    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_1DDA13460();
  v16 = sub_1DDA151E0();

  if (v16)
  {
    (*(v13 + 8))(v15, v12);
    goto LABEL_5;
  }

  if (a5)
  {

    sub_1DD94BC74(1, v44);
    if (qword_1ECD827D8 != -1)
    {
      swift_once();
    }

    v33 = qword_1ECDA2158;

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v23 = result;
      internalBuild = MobileGestalt_get_internalBuild();

      v41 = &type metadata for Overrides.ChatGPTXcode;
      v42 = &off_1F58F16E8;
      v25 = swift_allocObject();
      *&v40 = v25;
      strcpy((v25 + 16), "chatgptXcode");
      *(v25 + 29) = 0;
      *(v25 + 30) = -5120;
      *(v25 + 32) = 0xD00000000000001CLL;
      *(v25 + 40) = 0x80000001DDA27170;
      *(v25 + 48) = 0xD00000000000001CLL;
      *(v25 + 56) = 0x80000001DDA27190;
      *(v25 + 64) = 0xD00000000000001CLL;
      *(v25 + 72) = 0x80000001DDA27190;
      *(v25 + 80) = 0xD00000000000001CLL;
      *(v25 + 88) = 0x80000001DDA271B0;
      *(v25 + 96) = internalBuild;
      *(v25 + 104) = a3;
      v43[3] = &type metadata for ChatGPTProvider;
      v43[4] = &off_1F58EF288;
      v26 = swift_allocObject();
      v43[0] = v26;
      *(v26 + 16) = 4;
      sub_1DD8FEEB0(&v40, v26 + 24);
      *(v26 + 64) = 1;
      type metadata accessor for ExternalLanguageModel();
      v27 = swift_allocObject();
      type metadata accessor for ExpiredSessions();
      v28 = swift_allocObject();
      swift_defaultActor_initialize();
      *(v28 + 112) = MEMORY[0x1E69E7CD0];
      *(v27 + 120) = v28;
      sub_1DD90ADB4(v43, &v34, &qword_1ECD82F40, &qword_1DDA18708);
      if (*(&v35 + 1))
      {
        sub_1DD8FEEB0(&v34, &v37);
      }

      else
      {
        if (qword_1EE16F290 != -1)
        {
          swift_once();
        }

        *(&v38 + 1) = &type metadata for ChatGPTProvider;
        *&v39[0] = &off_1F58EF288;
        *&v37 = swift_allocObject();
        sub_1DD9183EC(&qword_1EE16FA98, v37 + 16);
        if (*(&v35 + 1))
        {
          sub_1DD90D378(&v34, &qword_1ECD82F40, &qword_1DDA18708);
        }
      }

      sub_1DD8FEEB0(&v37, v27 + 80);
      sub_1DD90ADB4(v44, &v34, &qword_1ECD82F48, &unk_1DDA18710);
      if (v34)
      {
        v37 = v34;
        v38 = v35;
        v39[0] = v36[0];
        *(v39 + 9) = *(v36 + 9);
      }

      else
      {
        sub_1DD94BC74(1, &v37);
        if (v34)
        {
          sub_1DD90D378(&v34, &qword_1ECD82F48, &unk_1DDA18710);
        }
      }

      v31 = v38;
      *(v27 + 16) = v37;
      *(v27 + 32) = v31;
      *(v27 + 48) = v39[0];
      *(v27 + 57) = *(v39 + 9);
      sub_1DD90D378(v44, &qword_1ECD82F48, &unk_1DDA18710);
      (*(v13 + 8))(v15, v12);
      sub_1DD90D378(v43, &qword_1ECD82F40, &qword_1DDA18708);
      result = v27;
      *(v27 + 136) = 0;
      *(v27 + 144) = 0;
      *(v27 + 128) = v33;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1ECD82778 != -1)
    {
      swift_once();
    }

    v29 = qword_1ECDA20B0;
    v30 = *(v13 + 8);

    v30(v15, v12);
    return v29;
  }

  return result;
}

unint64_t sub_1DD91845C()
{
  result = qword_1ECD82F50;
  if (!qword_1ECD82F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82F50);
  }

  return result;
}

uint64_t sub_1DD9184B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v11 = v10;
  v92 = a7;
  v110 = a5;
  v111 = a3;
  v112 = a4;
  v104 = a1;
  v105 = a2;
  v102 = a9;
  v97 = *v10;
  v14 = sub_1DDA136B0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v91 = v16;
  v107 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600);
  v100 = *(v17 - 8);
  v101 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v98 = v19;
  v99 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v87 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v87 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  v90 = *(v24 - 8);
  v25 = *(v90 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v106 = (&v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v87 - v27;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F68, &qword_1DDA18898);
  v108 = swift_allocBox();
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECD82D60, &qword_1DDA188A0);
  v32 = *(v31 - 8);
  v94 = *(v32 + 56);
  v95 = v31;
  v93 = v32 + 56;
  v33 = v94(v30, 1, 1);
  v34 = v11[17];
  v113 = v11;
  v114 = a6;
  v103 = v14;
  if (v34)
  {
    v34(&v117, v33);
    *&v123[16] = v119;
    v124 = v120;
    v125 = v121;
    v122 = v117;
    *v123 = v118;
    v35 = a8;
  }

  else
  {
    v89 = v15;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    sub_1DD90ADB4(a8, v28, &qword_1ECD82F60, &qword_1DDA18890);
    v36 = sub_1DDA13F50();
    v37 = *(v36 - 8);
    v38 = (*(v37 + 48))(v28, 1, v36);
    v35 = a8;
    if (v38 == 1)
    {
      sub_1DD90D378(v28, &qword_1ECD82F60, &qword_1DDA18890);
      v39 = 0;
      v40 = 1;
    }

    else
    {
      v41 = sub_1DDA13F40();
      (*(v37 + 8))(v28, v36);
      v39 = v41;
      v40 = v117 == 0;
    }

    v42 = v38 == 1;
    v43 = v105;

    v44 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
    v45 = sub_1DD9C13D0(v104, v43, v44);
    v47 = v46;
    v49 = v48;
    LOBYTE(v122) = v42;
    sub_1DD913A48(v48 & 1, v39 | (v42 << 32), &v126);
    sub_1DD928DB4(v45, v47, v49 & 1);
    sub_1DD94BC74(1, &v115);
    *&v125 = type metadata accessor for OpenAIAuthenticationService(0);
    *(&v125 + 1) = &off_1F58F1458;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v123[24]);
    sub_1DD979F04(&v115, v45, v47, v49 & 1, boxed_opaque_existential_1);
    sub_1DD928DD4(v45, v47, v49 & 1);
    v122 = v126;
    *v123 = v127[0];
    *&v123[13] = *(v127 + 13);
    v14 = v103;
    v15 = v89;
    if (!v40)
    {
      sub_1DD90D378(&v117, &qword_1ECD82F70, &qword_1DDA188A8);
    }
  }

  v89 = a10;
  v115 = v122;
  v116[0] = *v123;
  *(v116 + 13) = *&v123[13];
  sub_1DD9122F0(v23);
  v51 = type metadata accessor for Credentials(0);
  if ((*(*(v51 - 8) + 48))(v23, 1, v51) == 1)
  {
    sub_1DD90D378(v23, &qword_1ECD82D20, &qword_1DDA18CE0);
    v88 = 0;
    v52 = 0;
  }

  else
  {
    v88 = Credentials.credentialsID.getter();
    v52 = v53;
    sub_1DD929B9C(v23, type metadata accessor for Credentials);
  }

  sub_1DD928DF4(&v122, &v117);
  (*(v15 + 16))(v107, v92, v14);
  sub_1DD90ADB4(v35, v106, &qword_1ECD82F60, &qword_1DDA18890);
  v54 = (*(v15 + 80) + 176) & ~*(v15 + 80);
  v55 = (v91 + *(v90 + 80) + v54) & ~*(v90 + 80);
  v92 = (v25 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v57 = v117;
  *(v56 + 40) = v118;
  v58 = v120;
  *(v56 + 56) = v119;
  *(v56 + 72) = v58;
  *(v56 + 88) = v121;
  *(v56 + 16) = v108;
  *(v56 + 24) = v57;
  v59 = v112;
  v60 = v110;
  v61 = v111;
  *(v56 + 104) = v113;
  *(v56 + 112) = v61;
  *(v56 + 120) = v59;
  *(v56 + 128) = v60;
  v62 = v88;
  *(v56 + 136) = v114;
  *(v56 + 144) = v62;
  v63 = v103;
  v64 = v104;
  *(v56 + 152) = v52;
  *(v56 + 160) = v64;
  *(v56 + 168) = v105;
  (*(v15 + 32))(v56 + v54, v107, v63);
  sub_1DD914958(v106, v56 + v55, &qword_1ECD82F60, &qword_1DDA18890);
  v65 = v91;
  *(v56 + v92) = v89;
  *(v56 + v65) = v97;
  v66 = sub_1DDA14140();

  v67 = v99;
  v107 = v66;
  sub_1DDA14E30();
  if (qword_1ECD827B8 != -1)
  {
    swift_once();
  }

  v68 = sub_1DDA14810();
  v69 = __swift_project_value_buffer(v68, qword_1ECDA2110);
  v70 = v109;
  sub_1DD91DE3C("RegisteringDocument", 19, 2, v69, v109);
  v71 = v100;
  v72 = v101;
  v73 = *(v100 + 8);
  v105 = v100 + 8;
  v106 = v73;
  (v73)(v67, v101);
  v74 = swift_allocBox();
  (v94)(v75, 1, 1, v95);
  (*(v71 + 16))(v67, v70, v72);
  v76 = (*(v71 + 80) + 24) & ~*(v71 + 80);
  v77 = (v98 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  *(v79 + 16) = v74;
  (*(v71 + 32))(v79 + v76, v67, v72);
  v80 = (v79 + v77);
  v81 = v111;
  v82 = v113;
  v83 = v114;
  *v80 = v110;
  v80[1] = v83;
  *(v79 + v78) = v82;
  v84 = (v79 + ((v78 + 15) & 0xFFFFFFFFFFFFFFF8));
  v85 = v112;
  *v84 = v81;
  v84[1] = v85;

  sub_1DDA14E30();
  (v106)(v109, v72);

  sub_1DD9291B0(&v122);
}

uint64_t sub_1DD918E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = v18;
  *(v8 + 224) = v16;
  *(v8 + 240) = v17;
  *(v8 + 208) = v15;
  *(v8 + 192) = a7;
  *(v8 + 200) = a8;
  *(v8 + 176) = a5;
  *(v8 + 184) = a6;
  *(v8 + 160) = a3;
  *(v8 + 168) = a4;
  *(v8 + 144) = a1;
  *(v8 + 152) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  *(v8 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D58, &unk_1DDA18640);
  *(v8 + 272) = swift_task_alloc();
  v9 = sub_1DDA14140();
  *(v8 + 280) = v9;
  *(v8 + 288) = *(v9 - 8);
  *(v8 + 296) = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  *(v8 + 304) = v10;
  *(v8 + 312) = *(v10 + 64);
  *(v8 + 320) = swift_task_alloc();
  v11 = sub_1DDA136B0();
  *(v8 + 328) = v11;
  v12 = *(v11 - 8);
  *(v8 + 336) = v12;
  *(v8 + 344) = *(v12 + 64);
  *(v8 + 352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F68, &qword_1DDA18898);
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD919080, 0, 0);
}

uint64_t sub_1DD919080()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  swift_beginAccess();
  sub_1DD90ADB4(v2, v1, &qword_1ECD82F68, &qword_1DDA18898);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECD82D60, &qword_1DDA188A0);
  v4 = *(*(v3 - 8) + 48);
  v5 = v4(v1, 1, v3);
  sub_1DD90D378(v1, &qword_1ECD82F68, &qword_1DDA18898);
  if (v5 == 1)
  {
    v7 = *(v0 + 344);
    v6 = *(v0 + 352);
    v8 = *(v0 + 328);
    v9 = *(v0 + 336);
    v11 = *(v0 + 312);
    v10 = *(v0 + 320);
    v43 = v10;
    v12 = *(v0 + 304);
    v13 = *(v0 + 248);
    v14 = *(v0 + 240);
    v52 = *(v0 + 232);
    v53 = *(v0 + 256);
    v51 = *(v0 + 224);
    v49 = *(v0 + 208);
    v50 = *(v0 + 216);
    v47 = *(v0 + 192);
    v48 = *(v0 + 200);
    v44 = *(v0 + 176);
    v42 = *(v0 + 168);
    v45 = *(v0 + 184);
    v46 = *(v0 + 152);
    sub_1DD928DF4(*(v0 + 160), v0 + 16);
    (*(v9 + 16))(v6, v14, v8);
    sub_1DD90ADB4(v13, v10, &qword_1ECD82F60, &qword_1DDA18890);
    v15 = (*(v9 + 80) + 176) & ~*(v9 + 80);
    v41 = (v7 + *(v12 + 80) + v15) & ~*(v12 + 80);
    v16 = swift_allocObject();
    v17 = *(v0 + 16);
    *(v16 + 88) = *(v0 + 32);
    v18 = *(v0 + 64);
    *(v16 + 104) = *(v0 + 48);
    *(v16 + 120) = v18;
    *(v16 + 136) = *(v0 + 80);
    *(v0 + 376) = v16;
    *(v16 + 16) = v42;
    *(v16 + 24) = v44;
    *(v16 + 32) = v45;
    *(v16 + 40) = v47;
    *(v16 + 48) = v48;
    *(v16 + 56) = v49;
    *(v16 + 64) = v50;
    *(v16 + 72) = v17;
    *(v16 + 152) = v46;
    *(v16 + 160) = v51;
    *(v16 + 168) = v52;
    (*(v9 + 32))(v16 + v15, v6, v8);
    sub_1DD914958(v43, v16 + v41, &qword_1ECD82F60, &qword_1DDA18890);
    *(v16 + ((v11 + v41 + 7) & 0xFFFFFFFFFFFFFFF8)) = v53;

    v19 = swift_task_alloc();
    *(v0 + 384) = v19;
    *v19 = v0;
    v19[1] = sub_1DD919610;
    v20 = *(v0 + 160);
    v21 = *(v0 + 144);

    return sub_1DD9330A4(v21, v20, &unk_1DDA18910, v16);
  }

  else
  {
    v23 = *(v0 + 368);
    swift_beginAccess();
    if (v4(v23, 1, v3))
    {
      v24 = *(v0 + 280);
      v25 = *(v0 + 288);
      v26 = *(v0 + 272);
      swift_endAccess();
      (*(v25 + 56))(v26, 1, 1, v24);
      v27 = *(v0 + 264);
      v29 = *(v0 + 176);
      v28 = *(v0 + 184);
      v30 = *(v0 + 168);
      sub_1DD90D378(*(v0 + 272), &qword_1ECD82D58, &unk_1DDA18640);
      v31 = *(v30 + 128);
      v32 = sub_1DDA14D60();
      (*(*(v32 - 8) + 56))(v27, 1, 1, v32);
      sub_1DDA14D40();

      v33 = sub_1DDA14D30();
      v34 = swift_allocObject();
      v35 = MEMORY[0x1E69E85E0];
      v34[2] = v33;
      v34[3] = v35;
      v34[4] = v29;
      v34[5] = v28;
      v34[6] = v31;
      v36 = sub_1DD982718(0, 0, v27, &unk_1DDA18918, v34);
      *(v0 + 416) = v36;
      v37 = swift_task_alloc();
      *(v0 + 424) = v37;
      *v37 = v0;
      v37[1] = sub_1DD919B68;
      v38 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DA40](v37, v36, v38);
    }

    else
    {
      v39 = swift_task_alloc();
      *(v0 + 400) = v39;
      *v39 = v0;
      v39[1] = sub_1DD9197A4;
      v40 = *(v0 + 272);

      return MEMORY[0x1EEE6DB98](v40, v3);
    }
  }
}

uint64_t sub_1DD919610()
{
  v2 = *v1;
  *(v2 + 392) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD919D48, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DD9197A4()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_1DD919DF8;
  }

  else
  {
    swift_endAccess();
    v2 = sub_1DD9198C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD9198C0()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[33];
    v6 = v0[22];
    v5 = v0[23];
    v7 = v0[21];
    sub_1DD90D378(v3, &qword_1ECD82D58, &unk_1DDA18640);
    v8 = *(v7 + 128);
    v9 = sub_1DDA14D60();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    sub_1DDA14D40();

    v10 = sub_1DDA14D30();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v6;
    v11[5] = v5;
    v11[6] = v8;
    v13 = sub_1DD982718(0, 0, v4, &unk_1DDA18918, v11);
    v0[52] = v13;
    v14 = swift_task_alloc();
    v0[53] = v14;
    *v14 = v0;
    v14[1] = sub_1DD919B68;
    v15 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v14, v13, v15);
  }

  else
  {
    v16 = v0[37];
    v17 = v0[18];
    v18 = *(v2 + 32);
    v18(v16, v3, v1);
    v18(v17, v16, v1);
    (*(v2 + 56))(v17, 0, 1, v1);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1DD919B68()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD919C80, 0, 0);
}

uint64_t sub_1DD919C80()
{
  (*(v0[36] + 56))(v0[18], 1, 1, v0[35]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DD919D48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD919DF8()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD919EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = v26;
  *(v8 + 184) = v27;
  *(v8 + 160) = v25;
  *(v8 + 152) = a1;
  v14 = sub_1DDA134E0();
  *(v8 + 192) = v14;
  *(v8 + 200) = *(v14 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  *(v8 + 224) = v15;
  *(v8 + 232) = *(v15 + 64);
  *(v8 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  *(v8 + 248) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D38, &unk_1DDA18610);
  *(v8 + 256) = v16;
  *(v8 + 264) = *(v16 - 8);
  *(v8 + 272) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  *(v8 + 280) = v17;
  v18 = *(v17 - 8);
  *(v8 + 288) = v18;
  *(v8 + 296) = *(v18 + 64);
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600);
  *(v8 + 320) = v19;
  *(v8 + 328) = *(v19 - 8);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F68, &qword_1DDA18898);
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_projectBox();
  v20 = swift_task_alloc();
  *(v8 + 376) = v20;
  *v20 = v8;
  v20[1] = sub_1DD91A260;

  return sub_1DD91B008(a3, a4, a5, a6, a7, a8, v24);
}

uint64_t sub_1DD91A260(uint64_t a1)
{
  v4 = *v2;
  v4[48] = a1;
  v4[49] = v1;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD91A438, a1, 0);
  }
}

uint64_t sub_1DD91A438()
{
  v57 = *(v0 + 384);
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v50 = *(v0 + 280);
  v51 = *(v0 + 304);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v52 = *(v0 + 224);
  v53 = *(v0 + 232);
  v56 = *(v0 + 184);
  v48 = v7;
  v49 = *(v0 + 176);
  v55 = *(v0 + 168);
  v54 = *(v0 + 160);
  *(v0 + 400) = sub_1DDA14140();
  (*(v5 + 104))(v3, *MEMORY[0x1E69E8790], v4);
  sub_1DDA14DD0();
  (*(v5 + 8))(v3, v4);
  v8 = sub_1DDA14D60();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_1DD90ADB4(v49, v7, &qword_1ECD82F60, &qword_1DDA18890);
  (*(v2 + 16))(v51, v1, v50);
  v9 = sub_1DD92BC10(&qword_1ECD82F88, type metadata accessor for Session, &unk_1DDA1B150);
  v10 = (*(v52 + 80) + 64) & ~*(v52 + 80);
  v11 = (v53 + *(v2 + 80) + v10) & ~*(v2 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v57;
  *(v12 + 3) = v9;
  *(v12 + 4) = v57;
  *(v12 + 5) = v54;
  *(v12 + 6) = v55;
  *(v12 + 7) = v56;
  sub_1DD914958(v48, &v12[v10], &qword_1ECD82F60, &qword_1DDA18890);
  (*(v2 + 32))(&v12[v11], v51, v50);
  swift_retain_n();

  sub_1DD927794(0, 0, v6, &unk_1DDA18928, v12);

  sub_1DDA14DE0();
  sub_1DD929A28(v57 + 312, v0 + 64);
  if (v56 >> 62)
  {
    v13 = sub_1DDA15190();
  }

  else
  {
    v13 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v58 = MEMORY[0x1E69E7CC0];
    v15 = sub_1DD9AF034(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v15, v16, v17);
    }

    v14 = v58;
    v18 = *(v0 + 200);
    if ((v56 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v13; ++i)
      {
        v20 = *(v0 + 208);
        v21 = *(v0 + 192);
        v22 = MEMORY[0x1E12B7F50](i, *(v0 + 184));
        (*(v18 + 16))(v20, v22 + OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_url, v21);
        swift_unknownObjectRelease();
        v24 = *(v58 + 16);
        v23 = *(v58 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1DD9AF034((v23 > 1), v24 + 1, 1);
        }

        v25 = *(v0 + 208);
        v26 = *(v0 + 192);
        *(v58 + 16) = v24 + 1;
        (*(v18 + 32))(v58 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v24, v25, v26);
      }
    }

    else
    {
      v27 = (*(v0 + 184) + 32);
      v28 = *(v18 + 16);
      do
      {
        v28(*(v0 + 216), *v27 + OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_url, *(v0 + 192));
        v30 = *(v58 + 16);
        v29 = *(v58 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1DD9AF034((v29 > 1), v30 + 1, 1);
        }

        v31 = *(v0 + 216);
        v32 = *(v0 + 192);
        *(v58 + 16) = v30 + 1;
        (*(v18 + 32))(v58 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v30, v31, v32);
        ++v27;
        --v13;
      }

      while (v13);
    }
  }

  v33 = *(v0 + 336);
  v34 = *(v0 + 184);

  v35 = sub_1DD927A40(v14, v34);
  sub_1DD8FEEB0((v0 + 64), v0 + 16);
  *(v0 + 56) = v35;
  sub_1DD914A28(v0 + 16, v33);
  sub_1DD91692C(v0 + 16);
  if (qword_1ECD827B8 != -1)
  {
    swift_once();
  }

  v37 = *(v0 + 344);
  v36 = *(v0 + 352);
  v38 = *(v0 + 328);
  v39 = *(v0 + 336);
  v41 = *(v0 + 312);
  v40 = *(v0 + 320);
  v42 = *(v0 + 280);
  v43 = *(v0 + 288);
  v44 = sub_1DDA14810();
  v45 = __swift_project_value_buffer(v44, qword_1ECDA2110);
  sub_1DD91DE3C("RegisterDocumentsStream", 23, 2, v45, v36);

  v46 = *(v38 + 8);
  *(v0 + 408) = v46;
  *(v0 + 416) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v46(v39, v40);
  (*(v43 + 8))(v41, v42);
  v46(v37, v40);
  v15 = sub_1DD91AA3C;
  v16 = 0;
  v17 = 0;

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1DD91AA3C()
{
  v1 = v0[51];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[44];
  v5 = v0[40];
  sub_1DDA14E10();
  v1(v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECD82D60, &qword_1DDA188A0);
  v7 = *(v6 - 8);
  (*(v7 + 56))(v3, 0, 1, v6);
  swift_beginAccess();
  sub_1DD90AE1C(v3, v2, &qword_1ECD82F68, &qword_1DDA18898);
  swift_beginAccess();
  if ((*(v7 + 48))(v2, 1, v6))
  {
    v8 = v0[50];
    v9 = v0[19];
    swift_endAccess();

    (*(*(v8 - 8) + 56))(v9, 1, 1, v8);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    v0[53] = v12;
    *v12 = v0;
    v12[1] = sub_1DD91ACF4;
    v13 = v0[19];

    return MEMORY[0x1EEE6DB98](v13, v6);
  }
}

uint64_t sub_1DD91ACF4()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_1DD91AF04;
  }

  else
  {
    swift_endAccess();
    v2 = sub_1DD91AE10;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD91AE10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD91AF04()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD91B008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[196] = v7;
  v8[195] = a7;
  v8[194] = a6;
  v8[193] = a5;
  v8[192] = a4;
  v8[191] = a3;
  v8[190] = a2;
  v8[189] = a1;
  v9 = sub_1DDA136B0();
  v8[197] = v9;
  v8[198] = *(v9 - 8);
  v8[199] = swift_task_alloc();
  v10 = sub_1DDA13840();
  v8[200] = v10;
  v8[201] = *(v10 - 8);
  v8[202] = swift_task_alloc();
  v11 = sub_1DDA13830();
  v8[203] = v11;
  v8[204] = *(v11 - 8);
  v8[205] = swift_task_alloc();
  v8[206] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v8[207] = swift_task_alloc();
  v8[208] = swift_task_alloc();
  v12 = sub_1DDA13680();
  v8[209] = v12;
  v8[210] = *(v12 - 8);
  v8[211] = swift_task_alloc();
  v8[212] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v8[213] = swift_task_alloc();
  v8[214] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA0, &qword_1DDA18948);
  v8[215] = swift_task_alloc();
  v13 = type metadata accessor for SessionRegistry.SessionInfo(0);
  v8[216] = v13;
  v8[217] = *(v13 - 8);
  v8[218] = swift_task_alloc();
  v8[219] = swift_task_alloc();
  v8[220] = swift_task_alloc();
  v8[221] = swift_task_alloc();
  v8[222] = swift_task_alloc();
  v8[223] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD91B358, 0, 0);
}

uint64_t sub_1DD91B358()
{
  v1 = *(*(v0 + 1568) + 120);
  *(v0 + 1792) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DD91B37C, v1, 0);
}

uint64_t sub_1DD91B37C()
{
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1536);
  v3 = *(v0 + 1528);
  swift_beginAccess();
  v4 = *(v1 + 112);

  *(v0 + 553) = sub_1DD9261C0(v3, v2, v4) & 1;

  return MEMORY[0x1EEE6DFA0](sub_1DD91B430, 0, 0);
}

uint64_t sub_1DD91B430()
{
  v46 = v0;
  if (*(v0 + 553))
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v1 = sub_1DDA14810();
    __swift_project_value_buffer(v1, qword_1ECDA20E0);

    v2 = sub_1DDA147F0();
    v3 = sub_1DDA14EE0();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 1536);
      v5 = *(v0 + 1528);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v44 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1DD93FA54(v5, v4, &v44);
      _os_log_impl(&dword_1DD8F8000, v2, v3, "Client attempted to use expired session %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1E12B8CE0](v7, -1, -1);
      MEMORY[0x1E12B8CE0](v6, -1, -1);
    }

    v8 = *(v0 + 1640);
    v9 = *(v0 + 1632);
    v10 = *(v0 + 1624);
    v11 = *(v0 + 1616);
    v12 = *(v0 + 1608);
    v13 = *(v0 + 1600);
    v14 = *(v0 + 1536);
    v15 = *(v0 + 1528);
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1DDA15070();

    v44 = 0xD000000000000022;
    v45 = 0x80000001DDA27340;
    MEMORY[0x1E12B7AB0](v15, v14);
    sub_1DDA13800();
    (*(v9 + 16))(v11, v8, v10);
    (*(v12 + 104))(v11, *MEMORY[0x1E69DA4A0], v13);
    sub_1DD92BC10(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
    swift_allocError();
    (*(v12 + 16))(v16, v11, v13);
    swift_willThrow();
    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 1568);
    v20 = *(v0 + 1560);
    v21 = *(v0 + 1536);
    v22 = *(v0 + 1528);
    v23 = *(v0 + 1520);
    v24 = *(v0 + 1512);
    v42 = *(v0 + 1704);
    v43 = v24;
    v25 = swift_allocObject();
    *(v0 + 1800) = v25;
    v25[2] = v22;
    v25[3] = v21;
    v25[4] = v19;
    v25[5] = v24;
    v25[6] = v23;
    *(v0 + 572) = *(v20 + 32);
    *(v0 + 554) = *(v20 + 36);
    v26 = __swift_project_boxed_opaque_existential_1((v20 + 40), *(v20 + 64));
    v28 = v26[3];
    v27 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v28);
    v29 = *(v27 + 8);

    *(v0 + 1808) = v29(v28, v27);
    *(v0 + 1816) = v30;
    sub_1DD928DF4(v20, v0 + 96);
    v31 = *(v19 + 128);
    *(v0 + 1824) = v31;
    v32 = sub_1DDA14D60();
    *(v0 + 1832) = v32;
    v33 = *(v32 - 8);
    v34 = *(v33 + 56);
    *(v0 + 1840) = v34;
    *(v0 + 1848) = (v33 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v34(v42, 1, 1, v32);
    *(v0 + 1856) = sub_1DDA14D40();

    v35 = sub_1DDA14D30();
    v36 = swift_allocObject();
    v37 = MEMORY[0x1E69E85E0];
    v36[2] = v35;
    v36[3] = v37;
    v36[4] = v43;
    v36[5] = v23;
    v36[6] = v31;
    v38 = sub_1DD982A18(0, 0, v42, &unk_1DDA18960, v36);
    *(v0 + 1864) = v38;
    v39 = swift_task_alloc();
    *(v0 + 1872) = v39;
    *v39 = v0;
    v39[1] = sub_1DD91BA14;
    v40 = *(v0 + 1720);
    v41 = *(v0 + 1712);

    return MEMORY[0x1EEE6DA40](v40, v38, v41);
  }
}

uint64_t sub_1DD91BA14()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD91BB2C, 0, 0);
}

uint64_t sub_1DD91BB2C()
{
  v320 = v0;
  v1 = *(v0 + 1720);
  v318 = v0;
  if ((*(*(v0 + 1736) + 48))(v1, 1, *(v0 + 1728)) == 1)
  {
    sub_1DD90D378(v1, &qword_1ECD82FA0, &qword_1DDA18948);
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v2 = (v0 + 496);
    v3 = sub_1DDA14810();
    __swift_project_value_buffer(v3, qword_1ECDA20E0);

    v4 = sub_1DDA147F0();
    v5 = sub_1DDA14F00();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 1536);
      v7 = *(v0 + 1528);
      v8 = *(v0 + 1520);
      v9 = *(v0 + 1512);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v319 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_1DD93FA54(v7, v6, &v319);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_1DD93FA54(v9, v8, &v319);
      _os_log_impl(&dword_1DD8F8000, v4, v5, "New session with localID:%s and groupID:%s. Remote session will be created lazily.", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v11, -1, -1);
      MEMORY[0x1E12B8CE0](v10, -1, -1);
    }

    v279 = *(v0 + 1824);
    v311 = *(v0 + 1816);
    log = *(v0 + 1808);
    v307 = *(v0 + 1800);
    v12 = *(v0 + 1592);
    v13 = *(v0 + 1584);
    v14 = *(v0 + 1576);
    v15 = *(v0 + 1568);
    v16 = *(v0 + 1536);
    v290 = *(v0 + 1520);
    v296 = *(v0 + 1528);
    v285 = *(v0 + 1512);
    sub_1DDA136A0();
    v17 = sub_1DDA13690();
    v269 = v18;
    v275 = v17;
    (*(v13 + 8))(v12, v14);
    sub_1DD929A28(v15 + 80, v0 + 912);
    sub_1DD928DF4(v0 + 96, v0 + 176);
    sub_1DD929A8C(v15 + 16, v2);
    v19 = *(v0 + 936);
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 912, v19);
    v21 = *(v19 - 8);
    v22 = swift_task_alloc();
    (*(v21 + 16))(v22, v20, v19);
    *(v0 + 896) = &type metadata for ChatGPTProvider;
    *(v0 + 904) = &off_1F58EF288;
    v23 = swift_allocObject();
    *(v0 + 872) = v23;
    v25 = *(v22 + 16);
    v24 = *(v22 + 32);
    v26 = *v22;
    *(v23 + 64) = *(v22 + 48);
    *(v23 + 32) = v25;
    *(v23 + 48) = v24;
    *(v23 + 16) = v26;
    type metadata accessor for Session();
    v27 = swift_allocObject();
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 872, &type metadata for ChatGPTProvider);
    v29 = off_1F58EF260;
    v30 = swift_task_alloc();
    v29[2](v30, v28, &type metadata for ChatGPTProvider);
    *(v318 + 856) = &type metadata for ChatGPTProvider;
    *(v318 + 864) = &off_1F58EF288;
    v31 = swift_allocObject();
    *(v318 + 832) = v31;
    v33 = *(v30 + 16);
    v32 = *(v30 + 32);
    v34 = *v30;
    *(v31 + 64) = *(v30 + 48);
    *(v31 + 32) = v33;
    *(v31 + 48) = v32;
    *(v31 + 16) = v34;

    swift_defaultActor_initialize();
    sub_1DD9291B0(v318 + 96);
    *(v27 + 112) = v285;
    *(v27 + 120) = v290;
    *(v27 + 128) = v296;
    *(v27 + 136) = v16;
    *(v27 + 144) = v275;
    *(v27 + 152) = v269;
    *(v27 + 160) = log;
    *(v27 + 168) = v311;
    sub_1DD8FEEB0((v318 + 832), v27 + 176);
    v35 = *(v318 + 176);
    *(v27 + 232) = *(v318 + 192);
    v36 = *(v318 + 224);
    *(v27 + 248) = *(v318 + 208);
    v37 = *(v318 + 240);
    *(v27 + 264) = v36;
    *(v27 + 280) = v37;
    *(v27 + 216) = v35;
    v38 = v2[1];
    *(v27 + 296) = *v2;
    *(v27 + 312) = v38;
    *(v27 + 328) = v2[2];
    *(v27 + 337) = *(v2 + 41);
    *(v27 + 360) = v279;
    *(v27 + 368) = &unk_1DDA18958;
    v312 = v27;
    *(v27 + 376) = v307;

    __swift_destroy_boxed_opaque_existential_1((v318 + 872));
    v39 = v318;

    __swift_destroy_boxed_opaque_existential_1((v318 + 912));

    goto LABEL_50;
  }

  v40 = *(v0 + 1784);
  v41 = *(v0 + 1552);
  sub_1DD929B38(v1, v40);
  v42 = *(v40 + 56);
  if (!v42)
  {
    if (!v41)
    {
      goto LABEL_12;
    }

LABEL_20:
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v314 = (v0 + 576);
    v83 = sub_1DDA14810();
    __swift_project_value_buffer(v83, qword_1ECDA20E0);
    v84 = sub_1DDA147F0();
    v85 = sub_1DDA14EE0();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_1DD8F8000, v84, v85, "Existing session accessed with different credentials. New remote session will be created.", v86, 2u);
      MEMORY[0x1E12B8CE0](v86, -1, -1);
    }

    v87 = *(v0 + 1840);
    v88 = *(v0 + 1832);
    v89 = *(v0 + 1824);
    v298 = *(v318 + 1816);
    v292 = *(v318 + 1808);
    logb = *(v318 + 1800);
    v308 = *(v318 + 1784);
    v90 = *(v318 + 1704);
    v91 = *(v318 + 1592);
    v248 = *(v318 + 1584);
    v252 = *(v318 + 1576);
    v256 = *(v318 + 1568);
    v287 = *(v318 + 1536);
    v281 = *(v318 + 1528);
    v92 = *(v318 + 1520);
    v93 = *(v318 + 1512);

    v87(v90, 1, 1, v88);

    v271 = v89;

    v94 = sub_1DDA14D30();
    v95 = swift_allocObject();
    v96 = MEMORY[0x1E69E85E0];
    v95[2] = v94;
    v95[3] = v96;
    v95[4] = v93;
    v95[5] = v92;
    v95[6] = v89;
    sub_1DD982718(0, 0, v90, &unk_1DDA18968, v95);

    sub_1DDA136A0();
    v97 = sub_1DDA13690();
    v260 = v98;
    v265 = v97;
    (*(v248 + 8))(v91, v252);
    sub_1DD929A28(v256 + 80, v318 + 952);
    sub_1DD928DF4(v318 + 96, v318 + 256);
    sub_1DD929A8C(v256 + 16, v314);
    v99 = *(v318 + 976);
    v100 = __swift_mutable_project_boxed_opaque_existential_1(v318 + 952, v99);
    v101 = *(v99 - 8);
    v102 = swift_task_alloc();
    (*(v101 + 16))(v102, v100, v99);
    *(v318 + 1016) = &type metadata for ChatGPTProvider;
    *(v318 + 1024) = &off_1F58EF288;
    v103 = swift_allocObject();
    *(v318 + 992) = v103;
    v105 = *(v102 + 16);
    v104 = *(v102 + 32);
    v106 = *v102;
    *(v103 + 64) = *(v102 + 48);
    *(v103 + 32) = v105;
    *(v103 + 48) = v104;
    *(v103 + 16) = v106;
    type metadata accessor for Session();
    v107 = swift_allocObject();
    v108 = __swift_mutable_project_boxed_opaque_existential_1(v318 + 992, &type metadata for ChatGPTProvider);
    v109 = off_1F58EF260;
    v110 = swift_task_alloc();
    v111 = v108;
    v39 = v318;
    v109[2](v110, v111, &type metadata for ChatGPTProvider);
    *(v318 + 1056) = &type metadata for ChatGPTProvider;
    *(v318 + 1064) = &off_1F58EF288;
    v112 = swift_allocObject();
    *(v318 + 1032) = v112;
    v114 = *(v110 + 16);
    v113 = *(v110 + 32);
    v115 = *v110;
    *(v112 + 64) = *(v110 + 48);
    *(v112 + 32) = v114;
    *(v112 + 48) = v113;
    *(v112 + 16) = v115;

    swift_defaultActor_initialize();
    sub_1DD9291B0(v318 + 96);
    *(v107 + 112) = v93;
    *(v107 + 120) = v92;
    *(v107 + 128) = v281;
    *(v107 + 136) = v287;
    *(v107 + 144) = v265;
    *(v107 + 152) = v260;
    *(v107 + 160) = v292;
    *(v107 + 168) = v298;
    sub_1DD8FEEB0((v318 + 1032), v107 + 176);
    v116 = *(v318 + 256);
    *(v107 + 232) = *(v318 + 272);
    v117 = *(v318 + 304);
    *(v107 + 248) = *(v318 + 288);
    v118 = *(v318 + 320);
    *(v107 + 264) = v117;
    *(v107 + 280) = v118;
    *(v107 + 216) = v116;
    v119 = v314[1];
    *(v107 + 296) = *v314;
    *(v107 + 312) = v119;
    *(v107 + 328) = v314[2];
    *(v107 + 337) = *(v314 + 41);
    *(v107 + 360) = v271;
    *(v107 + 368) = &unk_1DDA18958;
    v312 = v107;
    *(v107 + 376) = logb;

    __swift_destroy_boxed_opaque_existential_1((v318 + 992));

    v82 = (v318 + 952);
    goto LABEL_48;
  }

  if (!v41 || (*(v40 + 48) != *(v0 + 1544) || v42 != *(v0 + 1552)) && (sub_1DDA15440() & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  v43 = *(v0 + 1784);
  v44 = *(v0 + 554);
  if (*(v43 + 68))
  {
    if (!*(v0 + 554))
    {
LABEL_14:
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v313 = (v0 + 640);
      v45 = sub_1DDA14810();
      __swift_project_value_buffer(v45, qword_1ECDA20E0);
      v46 = sub_1DDA147F0();
      v47 = sub_1DDA14EE0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1DD8F8000, v46, v47, "Existing session accessed with different user account. New remote session will be created.", v48, 2u);
        MEMORY[0x1E12B8CE0](v48, -1, -1);
      }

      v49 = *(v0 + 1840);
      v50 = *(v0 + 1832);
      v51 = *(v0 + 1824);
      v297 = *(v318 + 1816);
      v291 = *(v318 + 1808);
      loga = *(v318 + 1800);
      v308 = *(v318 + 1784);
      v52 = *(v318 + 1704);
      v53 = *(v318 + 1592);
      v247 = *(v318 + 1584);
      v251 = *(v318 + 1576);
      v255 = *(v318 + 1568);
      v286 = *(v318 + 1536);
      v280 = *(v318 + 1528);
      v54 = *(v318 + 1520);
      v55 = *(v318 + 1512);

      v49(v52, 1, 1, v50);

      v270 = v51;

      v56 = sub_1DDA14D30();
      v57 = swift_allocObject();
      v58 = MEMORY[0x1E69E85E0];
      v57[2] = v56;
      v57[3] = v58;
      v57[4] = v55;
      v57[5] = v54;
      v57[6] = v51;
      sub_1DD982718(0, 0, v52, &unk_1DDA18970, v57);

      sub_1DDA136A0();
      v59 = sub_1DDA13690();
      v259 = v60;
      v264 = v59;
      (*(v247 + 8))(v53, v251);
      sub_1DD929A28(v255 + 80, v318 + 1072);
      sub_1DD928DF4(v318 + 96, v318 + 336);
      sub_1DD929A8C(v255 + 16, v313);
      v61 = *(v318 + 1096);
      v62 = __swift_mutable_project_boxed_opaque_existential_1(v318 + 1072, v61);
      v63 = *(v61 - 8);
      v64 = swift_task_alloc();
      (*(v63 + 16))(v64, v62, v61);
      *(v318 + 1136) = &type metadata for ChatGPTProvider;
      *(v318 + 1144) = &off_1F58EF288;
      v65 = swift_allocObject();
      *(v318 + 1112) = v65;
      v67 = *(v64 + 16);
      v66 = *(v64 + 32);
      v68 = *v64;
      *(v65 + 64) = *(v64 + 48);
      *(v65 + 32) = v67;
      *(v65 + 48) = v66;
      *(v65 + 16) = v68;
      type metadata accessor for Session();
      v69 = swift_allocObject();
      v70 = __swift_mutable_project_boxed_opaque_existential_1(v318 + 1112, &type metadata for ChatGPTProvider);
      v71 = off_1F58EF260;
      v72 = swift_task_alloc();
      v73 = v70;
      v39 = v318;
      v71[2](v72, v73, &type metadata for ChatGPTProvider);
      *(v318 + 1176) = &type metadata for ChatGPTProvider;
      *(v318 + 1184) = &off_1F58EF288;
      v74 = swift_allocObject();
      *(v318 + 1152) = v74;
      v76 = *(v72 + 16);
      v75 = *(v72 + 32);
      v77 = *v72;
      *(v74 + 64) = *(v72 + 48);
      *(v74 + 32) = v76;
      *(v74 + 48) = v75;
      *(v74 + 16) = v77;

      swift_defaultActor_initialize();
      sub_1DD9291B0(v318 + 96);
      *(v69 + 112) = v55;
      *(v69 + 120) = v54;
      *(v69 + 128) = v280;
      *(v69 + 136) = v286;
      *(v69 + 144) = v264;
      *(v69 + 152) = v259;
      *(v69 + 160) = v291;
      *(v69 + 168) = v297;
      sub_1DD8FEEB0((v318 + 1152), v69 + 176);
      v78 = *(v318 + 336);
      *(v69 + 232) = *(v318 + 352);
      v79 = *(v318 + 384);
      *(v69 + 248) = *(v318 + 368);
      v80 = *(v318 + 400);
      *(v69 + 264) = v79;
      *(v69 + 280) = v80;
      *(v69 + 216) = v78;
      v81 = v313[1];
      *(v69 + 296) = *v313;
      *(v69 + 312) = v81;
      *(v69 + 328) = v313[2];
      *(v69 + 337) = *(v313 + 41);
      *(v69 + 360) = v270;
      *(v69 + 368) = &unk_1DDA18958;
      v312 = v69;
      *(v69 + 376) = loga;

      __swift_destroy_boxed_opaque_existential_1((v318 + 1112));

      v82 = (v318 + 1072);
LABEL_48:
      __swift_destroy_boxed_opaque_existential_1(v82);
LABEL_49:

      sub_1DD929B9C(v308, type metadata accessor for SessionRegistry.SessionInfo);
LABEL_50:

      v217 = *(v39 + 8);

      return v217(v312);
    }
  }

  else
  {
    if (*(v43 + 64) != *(v0 + 572))
    {
      v44 = 1;
    }

    if (v44)
    {
      goto LABEL_14;
    }
  }

  v120 = *(v0 + 1728);
  v121 = *(v0 + 1680);
  v122 = *(v0 + 1672);
  v123 = *(v0 + 1664);
  sub_1DD90ADB4(v43 + *(v120 + 36), v123, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v121 + 48))(v123, 1, v122) == 1)
  {
    v124 = *(v0 + 1664);
    sub_1DD9291B0(v0 + 96);
    sub_1DD90D378(v124, &qword_1ECD82838, &unk_1DDA185F0);
LABEL_42:
    v300 = v120;
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v316 = (v0 + 704);
    v145 = *(v0 + 1784);
    v146 = *(v0 + 1776);
    v147 = *(v0 + 1768);
    v148 = *(v0 + 1760);
    v149 = *(v0 + 1752);
    v150 = *(v0 + 1744);
    v151 = sub_1DDA14810();
    __swift_project_value_buffer(v151, qword_1ECDA20E0);
    sub_1DD929BFC(v145, v146);
    sub_1DD929BFC(v145, v147);
    sub_1DD929BFC(v145, v148);
    sub_1DD929BFC(v145, v149);
    sub_1DD929BFC(v145, v150);

    v152 = sub_1DDA147F0();
    v153 = sub_1DDA14F00();

    if (os_log_type_enabled(v152, v153))
    {
      v310 = v153;
      v154 = *(v0 + 1816);
      v249 = *(v0 + 554);
      v245 = *(v0 + 572);
      v253 = *(v0 + 1808);
      v257 = *(v0 + 1776);
      v261 = *(v0 + 1768);
      v266 = *(v0 + 1760);
      v272 = *(v0 + 1752);
      v276 = *(v0 + 1656);
      v282 = *(v0 + 1744);
      logc = v152;
      v155 = *(v0 + 1552);
      v156 = *(v0 + 1544);
      v157 = *(v0 + 1536);
      v158 = *(v0 + 1528);
      v159 = *(v0 + 1520);
      v160 = *(v0 + 1512);
      v161 = swift_slowAlloc();
      v293 = swift_slowAlloc();
      v319 = v293;
      *v161 = 136317442;
      *(v161 + 4) = sub_1DD93FA54(v160, v159, &v319);
      *(v161 + 12) = 2080;
      *(v161 + 14) = sub_1DD93FA54(v158, v157, &v319);
      *(v161 + 22) = 2080;
      *(v0 + 1496) = v156;
      *(v0 + 1504) = v155;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA8, &qword_1DDA1B930);
      v162 = sub_1DDA14B70();
      v164 = sub_1DD93FA54(v162, v163, &v319);

      *(v161 + 24) = v164;
      *(v161 + 32) = 2080;
      *(v0 + 564) = v245;
      *(v0 + 568) = v249;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FB0, &qword_1DDA18980);
      v165 = sub_1DDA14B70();
      v167 = sub_1DD93FA54(v165, v166, &v319);

      *(v161 + 34) = v167;
      *(v161 + 42) = 2080;

      v168 = sub_1DD93FA54(v253, v154, &v319);

      *(v161 + 44) = v168;
      *(v161 + 52) = 2080;
      v169 = *(v257 + 32);
      v170 = *(v257 + 40);

      sub_1DD929B9C(v257, type metadata accessor for SessionRegistry.SessionInfo);
      v171 = sub_1DD93FA54(v169, v170, &v319);

      *(v161 + 54) = v171;
      *(v161 + 62) = 2080;
      v172 = *(v261 + 16);
      v173 = *(v261 + 24);

      sub_1DD929B9C(v261, type metadata accessor for SessionRegistry.SessionInfo);
      v174 = sub_1DD93FA54(v172, v173, &v319);

      *(v161 + 64) = v174;
      *(v161 + 72) = 2080;
      v175 = *(v266 + 56);
      *(v0 + 1480) = *(v266 + 48);
      *(v0 + 1488) = v175;

      v176 = sub_1DDA14B70();
      v178 = v177;
      sub_1DD929B9C(v266, type metadata accessor for SessionRegistry.SessionInfo);
      v179 = sub_1DD93FA54(v176, v178, &v319);

      *(v161 + 74) = v179;
      *(v161 + 82) = 2080;
      v180 = *(v272 + 68);
      *(v0 + 556) = *(v272 + 64);
      *(v0 + 560) = v180;
      v181 = sub_1DDA14B70();
      v183 = v182;
      sub_1DD929B9C(v272, type metadata accessor for SessionRegistry.SessionInfo);
      v184 = sub_1DD93FA54(v181, v183, &v319);

      *(v161 + 84) = v184;
      *(v161 + 92) = 2080;
      sub_1DD90ADB4(v282 + *(v300 + 36), v276, &qword_1ECD82838, &unk_1DDA185F0);
      v185 = sub_1DDA14B70();
      v187 = v186;
      sub_1DD929B9C(v282, type metadata accessor for SessionRegistry.SessionInfo);
      v188 = sub_1DD93FA54(v185, v187, &v319);

      *(v161 + 94) = v188;
      _os_log_impl(&dword_1DD8F8000, logc, v310, "New local session with:\n  groupID:%s\n  localID:%s\n  credentialsID:%s\n  auditID:%s\n  clientID:%s\n\nAttaching to existing remote session:\n  userID:%s\n  remoteID:%s\n  credentialsID:%s\n  auditID:%s\n  expirationDate:%s", v161, 0x66u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v293, -1, -1);
      MEMORY[0x1E12B8CE0](v161, -1, -1);
    }

    else
    {
      v189 = *(v0 + 1776);
      v190 = *(v0 + 1768);
      v191 = *(v0 + 1760);
      v192 = *(v0 + 1752);
      v193 = *(v0 + 1744);

      sub_1DD929B9C(v193, type metadata accessor for SessionRegistry.SessionInfo);
      sub_1DD929B9C(v192, type metadata accessor for SessionRegistry.SessionInfo);
      sub_1DD929B9C(v191, type metadata accessor for SessionRegistry.SessionInfo);
      sub_1DD929B9C(v190, type metadata accessor for SessionRegistry.SessionInfo);
      sub_1DD929B9C(v189, type metadata accessor for SessionRegistry.SessionInfo);
    }

    v294 = *(v0 + 1808);
    v301 = *(v0 + 1816);
    logd = *(v0 + 1800);
    v308 = *(v0 + 1784);
    v194 = *(v0 + 1568);
    v195 = *(v0 + 1560);
    v283 = *(v0 + 1528);
    v288 = *(v0 + 1536);
    v262 = *(v0 + 1824);
    v267 = *(v0 + 1512);
    v196 = *(v308 + 40);
    v273 = *(v0 + 1520);
    v277 = *(v308 + 32);
    sub_1DD929A28(v194 + 80, v0 + 1192);
    sub_1DD928DF4(v195, v0 + 416);
    sub_1DD929A8C(v194 + 16, v316);
    v197 = *(v0 + 1216);
    v198 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1192, v197);
    v199 = *(v197 - 8);
    v200 = swift_task_alloc();
    (*(v199 + 16))(v200, v198, v197);
    *(v0 + 1256) = &type metadata for ChatGPTProvider;
    *(v0 + 1264) = &off_1F58EF288;
    v201 = swift_allocObject();
    *(v0 + 1232) = v201;
    v203 = *(v200 + 16);
    v202 = *(v200 + 32);
    v204 = *v200;
    *(v201 + 64) = *(v200 + 48);
    *(v201 + 32) = v203;
    *(v201 + 48) = v202;
    *(v201 + 16) = v204;
    type metadata accessor for Session();
    v205 = swift_allocObject();
    v206 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1232, &type metadata for ChatGPTProvider);
    v207 = off_1F58EF260;
    v208 = swift_task_alloc();
    v207[2](v208, v206, &type metadata for ChatGPTProvider);
    *(v318 + 1296) = &type metadata for ChatGPTProvider;
    *(v318 + 1304) = &off_1F58EF288;
    v209 = swift_allocObject();
    *(v318 + 1272) = v209;
    v211 = *(v208 + 16);
    v210 = *(v208 + 32);
    v212 = *v208;
    *(v209 + 64) = *(v208 + 48);
    *(v209 + 32) = v211;
    *(v209 + 48) = v210;
    *(v209 + 16) = v212;

    swift_defaultActor_initialize();
    *(v205 + 112) = v267;
    *(v205 + 120) = v273;
    *(v205 + 128) = v283;
    *(v205 + 136) = v288;
    *(v205 + 144) = v277;
    *(v205 + 152) = v196;
    *(v205 + 160) = v294;
    *(v205 + 168) = v301;
    sub_1DD8FEEB0((v318 + 1272), v205 + 176);
    v213 = *(v318 + 416);
    *(v205 + 232) = *(v318 + 432);
    v214 = *(v318 + 464);
    *(v205 + 248) = *(v318 + 448);
    v215 = *(v318 + 480);
    *(v205 + 264) = v214;
    *(v205 + 280) = v215;
    *(v205 + 216) = v213;
    v216 = v316[1];
    *(v205 + 296) = *v316;
    *(v205 + 312) = v216;
    *(v205 + 328) = v316[2];
    *(v205 + 337) = *(v316 + 41);
    *(v205 + 360) = v262;
    *(v205 + 368) = &unk_1DDA18958;
    v312 = v205;
    *(v205 + 376) = logd;

    __swift_destroy_boxed_opaque_existential_1((v318 + 1232));
    v39 = v318;

    v82 = (v318 + 1192);
    goto LABEL_48;
  }

  v125 = *(v0 + 1688);
  v126 = *(v0 + 1680);
  v127 = *(v0 + 1672);
  (*(v126 + 32))(*(v0 + 1696), *(v0 + 1664), v127);
  sub_1DDA13660();
  v128 = sub_1DDA13610();
  v129 = *(v126 + 8);
  *(v0 + 1880) = v129;
  *(v0 + 1888) = (v126 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v129(v125, v127);
  if ((v128 & 1) == 0)
  {
    v129(*(v0 + 1696), *(v0 + 1672));
    sub_1DD9291B0(v0 + 96);
    goto LABEL_42;
  }

  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v299 = v129;
  v130 = sub_1DDA14810();
  __swift_project_value_buffer(v130, qword_1ECDA20E0);
  v131 = sub_1DDA147F0();
  v132 = sub_1DDA14F00();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    *v133 = 0;
    _os_log_impl(&dword_1DD8F8000, v131, v132, "Existing session has expired.", v133, 2u);
    MEMORY[0x1E12B8CE0](v133, -1, -1);
  }

  v134 = *(v0 + 1840);
  v135 = *(v0 + 1832);
  v136 = *(v0 + 1824);
  v137 = *(v0 + 1784);
  v138 = *(v0 + 1704);
  v309 = *(v0 + 1536);
  v315 = *(v0 + 1528);
  v139 = *(v0 + 1520);
  v140 = *(v0 + 1512);

  v134(v138, 1, 1, v135);

  v141 = sub_1DDA14D30();
  v142 = swift_allocObject();
  v143 = MEMORY[0x1E69E85E0];
  v142[2] = v141;
  v142[3] = v143;
  v142[4] = v140;
  v142[5] = v139;
  v142[6] = v136;
  sub_1DD982718(0, 0, v138, &unk_1DDA18988, v142);

  if ((*v137 != v315 || v137[1] != v309) && (sub_1DDA15440() & 1) == 0)
  {
    v254 = *(v318 + 1824);
    v317 = *(v318 + 1816);
    v289 = *(v318 + 1808);
    v295 = *(v318 + 1800);
    v308 = *(v318 + 1784);
    v263 = *(v318 + 1672);
    v268 = *(v318 + 1696);
    v218 = *(v318 + 1592);
    v219 = *(v318 + 1584);
    v220 = *(v318 + 1576);
    v221 = *(v318 + 1568);
    v278 = *(v318 + 1528);
    v284 = *(v318 + 1536);
    v274 = *(v318 + 1520);
    v258 = *(v318 + 1512);
    sub_1DDA136A0();
    v222 = sub_1DDA13690();
    v246 = v223;
    v250 = v222;
    (*(v219 + 8))(v218, v220);
    sub_1DD929A28(v221 + 80, v318 + 1392);
    sub_1DD928DF4(v318 + 96, v318 + 16);
    sub_1DD929A8C(v221 + 16, v318 + 768);
    v224 = *(v318 + 1416);
    v225 = __swift_mutable_project_boxed_opaque_existential_1(v318 + 1392, v224);
    v226 = *(v224 - 8);
    v227 = swift_task_alloc();
    (*(v226 + 16))(v227, v225, v224);
    *(v318 + 1376) = &type metadata for ChatGPTProvider;
    *(v318 + 1384) = &off_1F58EF288;
    v228 = swift_allocObject();
    *(v318 + 1352) = v228;
    v230 = *(v227 + 16);
    v229 = *(v227 + 32);
    v231 = *v227;
    *(v228 + 64) = *(v227 + 48);
    *(v228 + 32) = v230;
    *(v228 + 48) = v229;
    *(v228 + 16) = v231;
    type metadata accessor for Session();
    v232 = swift_allocObject();
    v233 = __swift_mutable_project_boxed_opaque_existential_1(v318 + 1352, &type metadata for ChatGPTProvider);
    v234 = off_1F58EF260;
    v235 = swift_task_alloc();
    v234[2](v235, v233, &type metadata for ChatGPTProvider);
    *(v318 + 1336) = &type metadata for ChatGPTProvider;
    *(v318 + 1344) = &off_1F58EF288;
    v236 = swift_allocObject();
    *(v318 + 1312) = v236;
    v238 = *(v235 + 16);
    v237 = *(v235 + 32);
    v239 = *v235;
    *(v236 + 64) = *(v235 + 48);
    *(v236 + 32) = v238;
    *(v236 + 48) = v237;
    *(v236 + 16) = v239;

    swift_defaultActor_initialize();
    v299(v268, v263);
    sub_1DD9291B0(v318 + 96);
    *(v232 + 112) = v258;
    *(v232 + 120) = v274;
    *(v232 + 128) = v278;
    *(v232 + 136) = v284;
    *(v232 + 144) = v250;
    *(v232 + 152) = v246;
    *(v232 + 160) = v289;
    *(v232 + 168) = v317;
    sub_1DD8FEEB0((v318 + 1312), v232 + 176);
    v240 = *(v318 + 16);
    *(v232 + 232) = *(v318 + 32);
    v241 = *(v318 + 64);
    *(v232 + 248) = *(v318 + 48);
    v242 = *(v318 + 80);
    *(v232 + 264) = v241;
    *(v232 + 280) = v242;
    *(v232 + 216) = v240;
    v243 = *(v318 + 784);
    *(v232 + 296) = *(v318 + 768);
    *(v232 + 312) = v243;
    *(v232 + 328) = *(v318 + 800);
    *(v232 + 337) = *(v318 + 809);
    *(v232 + 360) = v254;
    *(v232 + 368) = &unk_1DDA18958;
    v312 = v232;
    *(v232 + 376) = v295;

    __swift_destroy_boxed_opaque_existential_1((v318 + 1352));
    v39 = v318;

    __swift_destroy_boxed_opaque_existential_1((v318 + 1392));
    goto LABEL_49;
  }

  v144 = *(v318 + 1792);
  sub_1DD9291B0(v318 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1DD91DA50, v144, 0);
}

uint64_t sub_1DD91DA50()
{
  v5 = v0;
  v1 = *(v0 + 1536);
  v2 = *(v0 + 1528);
  swift_beginAccess();

  sub_1DD9AFBD8(&v4, v2, v1);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1DD91DB04, 0, 0);
}

uint64_t sub_1DD91DB04()
{
  v13 = v0[235];
  v14 = v0[223];
  v12 = v0[212];
  v1 = v0[209];
  v2 = v0[205];
  v3 = v0[204];
  v4 = v0[203];
  v5 = v0[202];
  v6 = v0[201];
  v7 = v0[200];
  sub_1DDA15070();

  sub_1DD92BC10(&qword_1ECD82FB8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v8 = sub_1DDA15400();
  MEMORY[0x1E12B7AB0](v8);

  sub_1DDA13800();
  (*(v3 + 16))(v5, v2, v4);
  (*(v6 + 104))(v5, *MEMORY[0x1E69DA4A0], v7);
  sub_1DD92BC10(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
  swift_allocError();
  (*(v6 + 16))(v9, v5, v7);
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v13(v12, v1);
  sub_1DD929B9C(v14, type metadata accessor for SessionRegistry.SessionInfo);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DD91DE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a1;
  v34 = a4;
  v39 = a3;
  v38 = a2;
  v40 = a5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600);
  v5 = *(v41 - 8);
  v35 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v7 = &v32 - v6;
  v32 = &v32 - v6;
  v8 = sub_1DDA14810();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DDA14790();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  (*(v9 + 16))(v11, v34, v8);
  v33 = v18;
  sub_1DDA14770();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F68, &qword_1DDA18898);
  v19 = swift_allocBox();
  v21 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECD82D60, &qword_1DDA188A0);
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  (*(v13 + 16))(v16, v18, v12);
  v24 = v5;
  (*(v5 + 16))(v7, v36, v41);
  v25 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v26 = (v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v5 + 80) + v26 + 17) & ~*(v5 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v19;
  *(v28 + 24) = v23;
  (*(v13 + 32))(v28 + v25, v16, v12);
  v29 = v28 + v26;
  v30 = v38;
  *v29 = v37;
  *(v29 + 8) = v30;
  *(v29 + 16) = v39;
  (*(v24 + 32))(v28 + v27, v32, v41);
  sub_1DDA14140();

  sub_1DDA14E30();
  (*(v13 + 8))(v33, v12);
}

uint64_t sub_1DD91E228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a1;
  v35 = a4;
  v41 = a3;
  v40 = a2;
  v42 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0);
  v32 = v5;
  v36 = *(v5 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v33 = &v31 - v6;
  v8 = sub_1DDA14810();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DDA14790();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  (*(v9 + 16))(v11, v35, v8);
  v34 = v17;
  sub_1DDA14770();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE8, &qword_1DDA189D0);
  v35 = swift_allocBox();
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FF0, &qword_1DDA189D8);
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v22, v17, v12);
  v23 = v36;
  (*(v36 + 16))(v7, v38, v5);
  v24 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v23 + 80) + v25 + 17) & ~*(v23 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v35;
  *(v27 + 24) = v21;
  (*(v13 + 32))(v27 + v24, v22, v12);
  v28 = v27 + v25;
  v29 = v40;
  *v28 = v39;
  *(v28 + 8) = v29;
  *(v28 + 16) = v41;
  (*(v23 + 32))(v27 + v26, v33, v32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE0, &qword_1DDA189C8);
  sub_1DDA14E30();
  (*(v13 + 8))(v34, v12);
}

uint64_t sub_1DD91E628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 504) = v27;
  *(v8 + 488) = v26;
  *(v8 + 472) = v25;
  *(v8 + 456) = v24;
  *(v8 + 440) = v23;
  *(v8 + 424) = v22;
  *(v8 + 408) = v21;
  *(v8 + 392) = v20;
  *(v8 + 376) = a7;
  *(v8 + 384) = a8;
  *(v8 + 360) = a5;
  *(v8 + 368) = a6;
  *(v8 + 344) = a3;
  *(v8 + 352) = a4;
  *(v8 + 328) = a1;
  *(v8 + 336) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  *(v8 + 512) = swift_task_alloc();
  v9 = sub_1DDA13680();
  *(v8 + 520) = v9;
  *(v8 + 528) = *(v9 - 8);
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998) - 8);
  *(v8 + 552) = v10;
  *(v8 + 560) = *(v10 + 64);
  *(v8 + 568) = swift_task_alloc();
  v11 = sub_1DDA13A80();
  *(v8 + 576) = v11;
  v12 = *(v11 - 8);
  *(v8 + 584) = v12;
  *(v8 + 592) = *(v12 + 64);
  *(v8 + 600) = swift_task_alloc();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0) - 8);
  *(v8 + 608) = v13;
  *(v8 + 616) = *(v13 + 64);
  *(v8 + 624) = swift_task_alloc();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8) - 8);
  *(v8 + 632) = v14;
  *(v8 + 640) = *(v14 + 64);
  *(v8 + 648) = swift_task_alloc();
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  *(v8 + 656) = v15;
  *(v8 + 664) = *(v15 + 64);
  *(v8 + 672) = swift_task_alloc();
  v16 = sub_1DDA136B0();
  *(v8 + 680) = v16;
  v17 = *(v16 - 8);
  *(v8 + 688) = v17;
  *(v8 + 696) = *(v17 + 64);
  *(v8 + 704) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE8, &qword_1DDA189D0);
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD91EA4C, 0, 0);
}

uint64_t sub_1DD91EA4C()
{
  v95 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  swift_beginAccess();
  sub_1DD90ADB4(v1, v2, &qword_1ECD82FE8, &qword_1DDA189D0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FF0, &qword_1DDA189D8);
  *(v0 + 728) = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  *(v0 + 736) = v5;
  *(v0 + 744) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v1) = v5(v2, 1, v3);
  sub_1DD90D378(v2, &qword_1ECD82FE8, &qword_1DDA189D0);
  if (v1 == 1)
  {
    v6 = *(v0 + 704);
    v7 = *(v0 + 688);
    v8 = *(v0 + 680);
    v78 = v8;
    v9 = *(v0 + 672);
    v63 = *(v0 + 696);
    v64 = *(v0 + 664);
    v10 = *(v0 + 648);
    v67 = *(v0 + 640);
    v60 = *(v0 + 656);
    v61 = *(v0 + 632);
    v11 = *(v0 + 624);
    v75 = v11;
    v71 = *(v0 + 616);
    v62 = *(v0 + 608);
    v90 = *(v0 + 600);
    v69 = *(v0 + 592);
    v89 = *(v0 + 584);
    v12 = *(v0 + 576);
    v76 = v12;
    v91 = *(v0 + 568);
    v73 = *(v0 + 560);
    v65 = *(v0 + 552);
    v87 = *(v0 + 480);
    v88 = *(v0 + 488);
    v59 = *(v0 + 472);
    v86 = *(v0 + 464);
    v57 = *(v0 + 448);
    v58 = *(v0 + 456);
    v13 = *(v0 + 432);
    v56 = *(v0 + 440);
    v14 = *(v0 + 424);
    v92 = *(v0 + 416);
    v83 = *(v0 + 400);
    v84 = *(v0 + 408);
    v81 = *(v0 + 384);
    v82 = *(v0 + 392);
    v80 = *(v0 + 376);
    v93 = *(v0 + 368);
    v79 = *(v0 + 360);
    v77 = *(v0 + 352);
    v85 = *(v0 + 336);
    sub_1DD928DF4(*(v0 + 344), v0 + 16);
    (*(v7 + 16))(v6, v14, v8);
    sub_1DD90ADB4(v13, v9, &qword_1ECD82F60, &qword_1DDA18890);
    sub_1DD90ADB4(v56, v10, &qword_1ECD82FD0, &qword_1DDA189A8);
    sub_1DD90ADB4(v57, v11, &qword_1ECD82FC8, &qword_1DDA189A0);
    (*(v89 + 16))(v90, v58, v12);
    sub_1DD90ADB4(v59, v91, &qword_1ECD82FC0, &qword_1DDA18998);
    v15 = (*(v7 + 80) + 168) & ~*(v7 + 80);
    v16 = (v63 + *(v60 + 80) + v15) & ~*(v60 + 80);
    v17 = (v64 + *(v61 + 80) + v16) & ~*(v61 + 80);
    v18 = (v67 + *(v62 + 80) + v17) & ~*(v62 + 80);
    v68 = (v71 + *(v89 + 80) + v18) & ~*(v89 + 80);
    v72 = (v69 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = (v73 + ((*(v65 + 80) + v72 + 8) & ~*(v65 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
    v66 = (*(v65 + 80) + v72 + 8) & ~*(v65 + 80);
    v19 = swift_allocObject();
    v20 = *(v0 + 16);
    *(v19 + 88) = *(v0 + 32);
    v21 = *(v0 + 64);
    *(v19 + 104) = *(v0 + 48);
    *(v19 + 120) = v21;
    *(v19 + 136) = *(v0 + 80);
    *(v0 + 752) = v19;
    *(v19 + 16) = v77;
    *(v19 + 24) = v79;
    *(v19 + 32) = v93;
    *(v19 + 40) = v80;
    *(v19 + 48) = v81;
    *(v19 + 56) = v82;
    *(v19 + 64) = v83;
    *(v19 + 72) = v20;
    *(v19 + 152) = v84;
    *(v19 + 160) = v92;
    (*(v7 + 32))(v19 + v15, v6, v78);
    sub_1DD914958(v9, v19 + v16, &qword_1ECD82F60, &qword_1DDA18890);
    sub_1DD914958(v10, v19 + v17, &qword_1ECD82FD0, &qword_1DDA189A8);
    sub_1DD914958(v75, v19 + v18, &qword_1ECD82FC8, &qword_1DDA189A0);
    (*(v89 + 32))(v19 + v68, v90, v76);
    *(v19 + v72) = v86;
    sub_1DD914958(v91, v19 + v66, &qword_1ECD82FC0, &qword_1DDA18998);
    *(v19 + v74) = v87;
    *(v19 + v70) = v88;
    *(v19 + ((v70 + 15) & 0xFFFFFFFFFFFFFFF8)) = v85;

    v22 = swift_task_alloc();
    *(v0 + 760) = v22;
    *v22 = v0;
    v22[1] = sub_1DD91F424;

    return (sub_1DD933F24)();
  }

  else
  {
    v24 = *(v0 + 736);
    v25 = *(v0 + 728);
    v26 = *(v0 + 720);
    swift_beginAccess();
    if (v24(v26, 1, v25))
    {
      swift_endAccess();
      *(v0 + 168) = 0;
      *(v0 + 152) = 0u;
      *(v0 + 136) = 0u;
      v27 = *(v0 + 496);
      sub_1DD90D378(v0 + 136, &qword_1ECD82FF8, &qword_1DDA18A18);
      sub_1DDA13670();
      sub_1DDA135E0();
      v29 = v28;
      sub_1DDA135E0();
      v31 = v29 - v30;
      swift_beginAccess();
      *(v0 + 320) = *(v27 + 16) / v31;
      sub_1DD92B3B4();
      v32 = sub_1DDA14A80();
      v34 = v33;
      if (qword_1ECD827B8 != -1)
      {
        swift_once();
      }

      v35 = sub_1DDA14810();
      *(v0 + 792) = __swift_project_value_buffer(v35, qword_1ECDA2110);

      v36 = sub_1DDA147F0();
      v37 = sub_1DDA14F00();

      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 496);
      if (v38)
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v94 = v41;
        *v40 = 134218498;
        *(v40 + 4) = v31;
        *(v40 + 12) = 2048;
        swift_beginAccess();
        *(v40 + 14) = *(v39 + 16);

        *(v40 + 22) = 2080;
        v42 = sub_1DD93FA54(v32, v34, &v94);

        *(v40 + 24) = v42;
        _os_log_impl(&dword_1DD8F8000, v36, v37, "#tokenperf: Received last token. Total: %f. %ld tokens at @ %s tokens per second", v40, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v41);
        MEMORY[0x1E12B8CE0](v41, -1, -1);
        MEMORY[0x1E12B8CE0](v40, -1, -1);
      }

      else
      {
      }

      v45 = *(v0 + 512);
      v47 = *(v0 + 360);
      v46 = *(v0 + 368);
      v48 = *(*(v0 + 352) + 128);
      v49 = sub_1DDA14D60();
      (*(*(v49 - 8) + 56))(v45, 1, 1, v49);
      sub_1DDA14D40();

      v50 = sub_1DDA14D30();
      v51 = swift_allocObject();
      v52 = MEMORY[0x1E69E85E0];
      v51[2] = v50;
      v51[3] = v52;
      v51[4] = v47;
      v51[5] = v46;
      v51[6] = v48;
      v53 = sub_1DD982718(0, 0, v45, &unk_1DDA18A30, v51);
      *(v0 + 800) = v53;
      v54 = swift_task_alloc();
      *(v0 + 808) = v54;
      *v54 = v0;
      v54[1] = sub_1DD92008C;
      v55 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DA40](v54, v53, v55);
    }

    else
    {
      v43 = swift_task_alloc();
      *(v0 + 776) = v43;
      *v43 = v0;
      v43[1] = sub_1DD91F9A4;
      v44 = *(v0 + 728);

      return MEMORY[0x1EEE6DB98](v0 + 136, v44);
    }
  }
}

uint64_t sub_1DD91F424()
{
  *(*v1 + 768) = v0;

  if (v0)
  {
    v2 = sub_1DD920338;
  }

  else
  {

    v2 = sub_1DD91F540;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD91F540()
{
  v35 = v0;
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  swift_beginAccess();
  if (v1(v3, 1, v2))
  {
    swift_endAccess();
    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    v4 = *(v0 + 496);
    sub_1DD90D378(v0 + 136, &qword_1ECD82FF8, &qword_1DDA18A18);
    sub_1DDA13670();
    sub_1DDA135E0();
    v6 = v5;
    sub_1DDA135E0();
    v8 = v6 - v7;
    swift_beginAccess();
    *(v0 + 320) = *(v4 + 16) / v8;
    sub_1DD92B3B4();
    v9 = sub_1DDA14A80();
    v11 = v10;
    if (qword_1ECD827B8 != -1)
    {
      swift_once();
    }

    v12 = sub_1DDA14810();
    *(v0 + 792) = __swift_project_value_buffer(v12, qword_1ECDA2110);

    v13 = sub_1DDA147F0();
    v14 = sub_1DDA14F00();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 496);
    if (v15)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v34 = v18;
      *v17 = 134218498;
      *(v17 + 4) = v8;
      *(v17 + 12) = 2048;
      swift_beginAccess();
      *(v17 + 14) = *(v16 + 16);

      *(v17 + 22) = 2080;
      v19 = sub_1DD93FA54(v9, v11, &v34);

      *(v17 + 24) = v19;
      _os_log_impl(&dword_1DD8F8000, v13, v14, "#tokenperf: Received last token. Total: %f. %ld tokens at @ %s tokens per second", v17, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1E12B8CE0](v18, -1, -1);
      MEMORY[0x1E12B8CE0](v17, -1, -1);
    }

    else
    {
    }

    v22 = *(v0 + 512);
    v24 = *(v0 + 360);
    v23 = *(v0 + 368);
    v25 = *(*(v0 + 352) + 128);
    v26 = sub_1DDA14D60();
    (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
    sub_1DDA14D40();

    v27 = sub_1DDA14D30();
    v28 = swift_allocObject();
    v29 = MEMORY[0x1E69E85E0];
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = v24;
    v28[5] = v23;
    v28[6] = v25;
    v30 = sub_1DD982718(0, 0, v22, &unk_1DDA18A30, v28);
    *(v0 + 800) = v30;
    v31 = swift_task_alloc();
    *(v0 + 808) = v31;
    *v31 = v0;
    v31[1] = sub_1DD92008C;
    v32 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v31, v30, v32);
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 776) = v20;
    *v20 = v0;
    v20[1] = sub_1DD91F9A4;
    v21 = *(v0 + 728);

    return MEMORY[0x1EEE6DB98](v0 + 136, v21);
  }
}

uint64_t sub_1DD91F9A4()
{
  *(*v1 + 784) = v0;

  if (v0)
  {
    v2 = sub_1DD920438;
  }

  else
  {
    swift_endAccess();
    v2 = sub_1DD91FAC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD91FAC0()
{
  v44 = v2;
  if (*(v2 + 160))
  {
    v4 = *(v2 + 496);
    sub_1DD8FEEB0((v2 + 136), v2 + 96);
    swift_beginAccess();
    if (!*(v4 + 16))
    {
      sub_1DDA13670();
      sub_1DDA135E0();
      v3 = v5;
      sub_1DDA135E0();
      v7 = v6;
      if (qword_1ECD827B8 != -1)
      {
        swift_once();
      }

      v8 = sub_1DDA14810();
      __swift_project_value_buffer(v8, qword_1ECDA2110);
      v9 = sub_1DDA147F0();
      v10 = sub_1DDA14F00();
      if (os_log_type_enabled(v9, v10))
      {
        v3 = v3 - v7;
        v11 = swift_slowAlloc();
        *v11 = 134217984;
        *(v11 + 4) = v3;
        _os_log_impl(&dword_1DD8F8000, v9, v10, "#tokenperf: Received first bytes back in %f", v11, 0xCu);
        MEMORY[0x1E12B8CE0](v11, -1, -1);
      }

      v0 = *(v2 + 544);
      v12 = *(v2 + 528);
      v1 = *(v2 + 520);

      (*(v12 + 8))(v0, v1);
    }

    v13 = *(v2 + 496);
    sub_1DD8FEEB0((v2 + 96), *(v2 + 328));
    swift_beginAccess();
    v14 = *(v13 + 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (!v15)
    {
      *(*(v2 + 496) + 16) = v16;

      v17 = *(v2 + 8);

      return v17();
    }

    __break(1u);
    goto LABEL_20;
  }

  v19 = *(v2 + 496);
  sub_1DD90D378(v2 + 136, &qword_1ECD82FF8, &qword_1DDA18A18);
  sub_1DDA13670();
  sub_1DDA135E0();
  v21 = v20;
  sub_1DDA135E0();
  v3 = v21 - v22;
  swift_beginAccess();
  *(v2 + 320) = *(v19 + 16) / v3;
  sub_1DD92B3B4();
  v1 = sub_1DDA14A80();
  v0 = v23;
  if (qword_1ECD827B8 != -1)
  {
LABEL_20:
    swift_once();
  }

  v24 = sub_1DDA14810();
  *(v2 + 792) = __swift_project_value_buffer(v24, qword_1ECDA2110);

  v25 = sub_1DDA147F0();
  v26 = sub_1DDA14F00();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v2 + 496);
  if (v27)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v43 = v30;
    *v29 = 134218498;
    *(v29 + 4) = v3;
    *(v29 + 12) = 2048;
    swift_beginAccess();
    *(v29 + 14) = *(v28 + 16);

    *(v29 + 22) = 2080;
    v31 = sub_1DD93FA54(v1, v0, &v43);

    *(v29 + 24) = v31;
    _os_log_impl(&dword_1DD8F8000, v25, v26, "#tokenperf: Received last token. Total: %f. %ld tokens at @ %s tokens per second", v29, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1E12B8CE0](v30, -1, -1);
    MEMORY[0x1E12B8CE0](v29, -1, -1);
  }

  else
  {
  }

  v32 = *(v2 + 512);
  v34 = *(v2 + 360);
  v33 = *(v2 + 368);
  v35 = *(*(v2 + 352) + 128);
  v36 = sub_1DDA14D60();
  (*(*(v36 - 8) + 56))(v32, 1, 1, v36);
  sub_1DDA14D40();

  v37 = sub_1DDA14D30();
  v38 = swift_allocObject();
  v39 = MEMORY[0x1E69E85E0];
  v38[2] = v37;
  v38[3] = v39;
  v38[4] = v34;
  v38[5] = v33;
  v38[6] = v35;
  v40 = sub_1DD982718(0, 0, v32, &unk_1DDA18A30, v38);
  *(v2 + 800) = v40;
  v41 = swift_task_alloc();
  *(v2 + 808) = v41;
  *v41 = v2;
  v41[1] = sub_1DD92008C;
  v42 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v41, v40, v42);
}

uint64_t sub_1DD92008C()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD9201A4, 0, 0);
}

uint64_t sub_1DD9201A4(uint64_t a1)
{
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "#tokenperf: Finished streaming complete prompt request", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v5 = v1[67];
  v6 = v1[66];
  v7 = v1[65];
  v8 = v1[41];

  (*(v6 + 8))(v5, v7);
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;

  v9 = v1[1];

  return v9();
}

uint64_t sub_1DD920338()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD920438()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD920538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v25;
  *(v8 + 104) = v24;
  *(v8 + 88) = v23;
  *(v8 + 72) = v22;
  *(v8 + 56) = v21;
  *(v8 + 40) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE8, &qword_1DDA189D0);
  *(v8 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0);
  *(v8 + 136) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0);
  *(v8 + 144) = v15;
  *(v8 + 152) = *(v15 - 8);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_projectBox();
  v16 = swift_task_alloc();
  *(v8 + 176) = v16;
  *v16 = v8;
  v16[1] = sub_1DD92073C;

  return sub_1DD91B008(a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1DD92073C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD920898, 0, 0);
  }
}

uint64_t sub_1DD920898()
{
  v1 = v0[17];
  sub_1DD90ADB4(v0[10], v1, &qword_1ECD82FC8, &qword_1DDA189A0);
  v2 = sub_1DDA13EE0();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[17];
  if (v4 == 1)
  {
    sub_1DD90D378(v0[17], &qword_1ECD82FC8, &qword_1DDA189A0);
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v6 = sub_1DDA13E50();
    (*(v3 + 8))(v5, v2);
  }

  v0[24] = v6;
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_1DD920A34;
  v8 = v0[20];
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[6];
  v13 = v0[7];
  v14 = v0[5];

  return sub_1DD9A0720(v8, v14, v12, v13, v10, v11, v6, v9);
}

uint64_t sub_1DD920A34()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1DD920CA8;
  }

  else
  {
    v2 = sub_1DD920B64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD920B64()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[16];
  sub_1DDA14E10();

  (*(v4 + 8))(v1, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FF0, &qword_1DDA189D8);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  swift_beginAccess();
  sub_1DD90AE1C(v5, v2, &qword_1ECD82FE8, &qword_1DDA189D0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DD920CA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD920D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD920DD4, 0, 0);
}

uint64_t sub_1DD920DD4()
{
  v20 = v0;
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA20E0);

  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DD93FA54(v5, v4, &v19);
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Session %s invalidated and will be deleted.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[7];
  v11 = v0[8];
  v12 = *(v10 + 128);
  v13 = sub_1DDA14D60();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_1DDA14D40();

  v14 = sub_1DDA14D30();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v11;
  v15[5] = v9;
  v15[6] = v12;
  sub_1DD982718(0, 0, v8, &unk_1DDA18990, v15);

  v17 = *(v10 + 120);
  v0[11] = v17;

  return MEMORY[0x1EEE6DFA0](sub_1DD921028, v17, 0);
}

uint64_t sub_1DD921028()
{
  v6 = v0;
  v2 = v0[5];
  v1 = v0[6];
  swift_beginAccess();

  sub_1DD9AFBD8(&v5, v2, v1);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DD9210E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[16] = a3;
  v8[17] = a4;
  v8[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v8[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F78, &qword_1DDA188D8);
  v8[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F68, &qword_1DDA18898);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD921214, 0, 0);
}

uint64_t sub_1DD921214()
{
  v2 = v0[25];
  v1 = v0[26];
  swift_beginAccess();
  sub_1DD90ADB4(v1, v2, &qword_1ECD82F68, &qword_1DDA18898);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECD82D60, &qword_1DDA188A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_1DD90D378(v2, &qword_1ECD82F68, &qword_1DDA18898);
  if (v1 == 1)
  {
    v6 = v0[26];
    v7 = v0[24];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600);
    sub_1DDA14E10();
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    sub_1DD90AE1C(v7, v6, &qword_1ECD82F68, &qword_1DDA18898);
  }

  v8 = v0[26];
  swift_beginAccess();
  if (v5(v8, 1, v3))
  {
    v9 = v0[15];
    swift_endAccess();
    v10 = sub_1DDA14140();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v0[27] = v13;
    *v13 = v0;
    v13[1] = sub_1DD9214E0;
    v14 = v0[15];

    return MEMORY[0x1EEE6DB98](v14, v3);
  }
}

uint64_t sub_1DD9214E0()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD921650, 0, 0);
  }

  else
  {
    swift_endAccess();

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DD921650()
{
  v32 = v0;
  v1 = v0[28];
  swift_endAccess();
  v2 = sub_1DD9C4E98(v1);
  v0[14] = v2;
  v0[29] = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  v4 = sub_1DDA13840();
  v5 = swift_dynamicCast();
  v6 = *(*(v4 - 8) + 56);
  v7 = v0[23];
  if (v5)
  {
    v8 = *(v4 - 8);
    v6(v0[23], 0, 1, v4);
    v9 = (*(v8 + 88))(v7, v4);
    v10 = *MEMORY[0x1E69DA4A0];
    (*(v8 + 8))(v7, v4);
    if (v9 == v10)
    {
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v11 = sub_1DDA14810();
      __swift_project_value_buffer(v11, qword_1ECDA20E0);

      v12 = sub_1DDA147F0();
      v13 = sub_1DDA14F00();

      if (os_log_type_enabled(v12, v13))
      {
        v15 = v0[17];
        v14 = v0[18];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v31 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_1DD93FA54(v15, v14, &v31);
        _os_log_impl(&dword_1DD8F8000, v12, v13, "Session %s was invalidated and will be deleted.", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x1E12B8CE0](v17, -1, -1);
        MEMORY[0x1E12B8CE0](v16, -1, -1);
      }

      v19 = v0[21];
      v18 = v0[22];
      v20 = v0[19];
      v21 = v0[20];
      v22 = *(v20 + 128);
      v23 = sub_1DDA14D60();
      (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
      sub_1DDA14D40();

      v24 = sub_1DDA14D30();
      v25 = swift_allocObject();
      v26 = MEMORY[0x1E69E85E0];
      v25[2] = v24;
      v25[3] = v26;
      v25[4] = v21;
      v25[5] = v19;
      v25[6] = v22;
      sub_1DD982718(0, 0, v18, &unk_1DDA188E8, v25);

      v27 = *(v20 + 120);
      v0[30] = v27;

      return MEMORY[0x1EEE6DFA0](sub_1DD921A54, v27, 0);
    }
  }

  else
  {
    v6(v0[23], 1, 1, v4);
    sub_1DD90D378(v7, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v28 = v0[28];
  swift_willThrow();

  v29 = v0[1];

  return v29();
}

uint64_t sub_1DD921A54()
{
  v5 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  swift_beginAccess();

  sub_1DD9AFBD8(&v4, v2, v1);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1DD92BD0C, 0, 0);
}

uint64_t sub_1DD921B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[16] = a3;
  v8[17] = a4;
  v8[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v8[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F78, &qword_1DDA188D8);
  v8[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE8, &qword_1DDA189D0);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD921C38, 0, 0);
}

uint64_t sub_1DD921C38()
{
  v2 = v0[25];
  v1 = v0[26];
  swift_beginAccess();
  sub_1DD90ADB4(v1, v2, &qword_1ECD82FE8, &qword_1DDA189D0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FF0, &qword_1DDA189D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_1DD90D378(v2, &qword_1ECD82FE8, &qword_1DDA189D0);
  if (v1 == 1)
  {
    v6 = v0[26];
    v7 = v0[24];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0);
    sub_1DDA14E10();
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    sub_1DD90AE1C(v7, v6, &qword_1ECD82FE8, &qword_1DDA189D0);
  }

  v8 = v0[26];
  swift_beginAccess();
  if (v5(v8, 1, v3))
  {
    v9 = v0[15];
    swift_endAccess();
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    v0[27] = v12;
    *v12 = v0;
    v12[1] = sub_1DD921ED0;
    v13 = v0[15];

    return MEMORY[0x1EEE6DB98](v13, v3);
  }
}

uint64_t sub_1DD921ED0()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD922040, 0, 0);
  }

  else
  {
    swift_endAccess();

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DD922040()
{
  v32 = v0;
  v1 = v0[28];
  swift_endAccess();
  v2 = sub_1DD9C4E98(v1);
  v0[14] = v2;
  v0[29] = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  v4 = sub_1DDA13840();
  v5 = swift_dynamicCast();
  v6 = *(*(v4 - 8) + 56);
  v7 = v0[23];
  if (v5)
  {
    v8 = *(v4 - 8);
    v6(v0[23], 0, 1, v4);
    v9 = (*(v8 + 88))(v7, v4);
    v10 = *MEMORY[0x1E69DA4A0];
    (*(v8 + 8))(v7, v4);
    if (v9 == v10)
    {
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v11 = sub_1DDA14810();
      __swift_project_value_buffer(v11, qword_1ECDA20E0);

      v12 = sub_1DDA147F0();
      v13 = sub_1DDA14F00();

      if (os_log_type_enabled(v12, v13))
      {
        v15 = v0[17];
        v14 = v0[18];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v31 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_1DD93FA54(v15, v14, &v31);
        _os_log_impl(&dword_1DD8F8000, v12, v13, "Session %s was invalidated and will be deleted.", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x1E12B8CE0](v17, -1, -1);
        MEMORY[0x1E12B8CE0](v16, -1, -1);
      }

      v19 = v0[21];
      v18 = v0[22];
      v20 = v0[19];
      v21 = v0[20];
      v22 = *(v20 + 128);
      v23 = sub_1DDA14D60();
      (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
      sub_1DDA14D40();

      v24 = sub_1DDA14D30();
      v25 = swift_allocObject();
      v26 = MEMORY[0x1E69E85E0];
      v25[2] = v24;
      v25[3] = v26;
      v25[4] = v21;
      v25[5] = v19;
      v25[6] = v22;
      sub_1DD982718(0, 0, v18, &unk_1DDA18A00, v25);

      v27 = *(v20 + 120);
      v0[30] = v27;

      return MEMORY[0x1EEE6DFA0](sub_1DD922444, v27, 0);
    }
  }

  else
  {
    v6(v0[23], 1, 1, v4);
    sub_1DD90D378(v7, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v28 = v0[28];
  swift_willThrow();

  v29 = v0[1];

  return v29();
}

uint64_t sub_1DD922444()
{
  v5 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  swift_beginAccess();

  sub_1DD9AFBD8(&v4, v2, v1);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1DD9224F4, 0, 0);
}

uint64_t sub_1DD9224F4(uint64_t a1)
{
  v2 = *(v1 + 224);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1DD9225A0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16)
{
  v161 = a8;
  v162 = a1;
  v143 = a7;
  v175 = a4;
  v176 = a6;
  v172 = a5;
  v173 = a9;
  v169 = a2;
  v170 = a3;
  v159 = a15;
  v149 = a14;
  v158 = a13;
  v148 = a12;
  v145 = a11;
  v144 = a10;
  v156 = *v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998);
  v150 = *(v17 - 8);
  v151 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v167 = &v120 - v18;
  v166 = sub_1DDA13A80();
  v153 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v147 = v19;
  v152 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0);
  v141 = *(v20 - 8);
  v142 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v171 = &v120 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8);
  v139 = *(v22 - 8);
  v140 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v165 = &v120 - v23;
  v164 = sub_1DDA136B0();
  v146 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v138 = v24;
  v163 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0);
  v155 = *(v157 - 8);
  v25 = *(v155 + 64);
  v26 = MEMORY[0x1EEE9AC00](v157);
  v154 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v168 = &v120 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v136 = &v120 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  v137 = *(v30 - 8);
  v31 = *(v137 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v120 - v33;
  v35 = sub_1DDA13680();
  v174 = *(v35 - 8);
  v36 = *(v174 + 64);
  v37 = MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v120 - v38;
  v40 = sub_1DD929C60(a16);
  v121 = v34;
  v128 = v31;
  v129 = v36;
  v130 = v40;
  v131 = v25;
  v134 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v35;
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v41 = sub_1DDA14810();
  __swift_project_value_buffer(v41, qword_1ECDA20E0);
  v42 = v169;

  v43 = sub_1DDA147F0();
  v44 = sub_1DDA14F00();

  v45 = os_log_type_enabled(v43, v44);
  v46 = v177;
  if (v45)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v185 = v48;
    *v47 = 136315650;
    *(v47 + 4) = sub_1DD93FA54(0xD000000000000092, 0x80000001DDA27390, &v185);
    *(v47 + 12) = 2080;
    *(v47 + 14) = sub_1DD93FA54(v162, v42, &v185);
    *(v47 + 22) = 2080;
    *(v47 + 24) = sub_1DD93FA54(v172, v176, &v185);
    _os_log_impl(&dword_1DD8F8000, v43, v44, "%s\n  useCaseID: %s\n  sessionID: %s", v47, 0x20u);
    swift_arrayDestroy();
    v49 = v48;
    v46 = v177;
    MEMORY[0x1E12B8CE0](v49, -1, -1);
    MEMORY[0x1E12B8CE0](v47, -1, -1);
  }

  v50 = v171;
  if (qword_1ECD827B8 != -1)
  {
    swift_once();
  }

  v127 = __swift_project_value_buffer(v41, qword_1ECDA2110);
  v51 = sub_1DDA147F0();
  v52 = sub_1DDA14F00();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1DD8F8000, v51, v52, "#tokenperf: Starting streaming complete prompt request", v53, 2u);
    MEMORY[0x1E12B8CE0](v53, -1, -1);
  }

  sub_1DDA13670();
  v133 = swift_allocObject();
  *(v133 + 16) = 0;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE8, &qword_1DDA189D0);
  v132 = swift_allocBox();
  v55 = v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FF0, &qword_1DDA189D8);
  v57 = *(v56 - 8);
  v124 = *(v57 + 56);
  v125 = v56;
  v123 = v57 + 56;
  v58 = v124(v55, 1, 1);
  v59 = *(v46 + 136);
  if (v59)
  {
    v59(&v180, v58);
    *&v186[16] = v182;
    v187 = v183;
    v188 = v184;
    v185 = v180;
    *v186 = v181;
  }

  else
  {
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v180 = 0u;
    v60 = v121;
    sub_1DD90ADB4(v161, v121, &qword_1ECD82F60, &qword_1DDA18890);
    v61 = sub_1DDA13F50();
    v62 = *(v61 - 8);
    v63 = (*(v62 + 48))(v60, 1, v61);
    if (v63 == 1)
    {
      sub_1DD90D378(v60, &qword_1ECD82F60, &qword_1DDA18890);
      v64 = 0;
      v65 = 1;
    }

    else
    {
      v66 = sub_1DDA13F40();
      (*(v62 + 8))(v60, v61);
      v64 = v66;
      v65 = v180 == 0;
    }

    v67 = v162;
    v68 = v63 == 1;

    v69 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
    v70 = sub_1DD9C13D0(v67, v42, v69);
    v72 = v71;
    v74 = v73;
    LOBYTE(v185) = v68;
    sub_1DD913A48(v73 & 1, v64 | (v68 << 32), &v189);
    sub_1DD928DB4(v70, v72, v74 & 1);
    sub_1DD94BC74(1, &v178);
    *&v188 = type metadata accessor for OpenAIAuthenticationService(0);
    *(&v188 + 1) = &off_1F58F1458;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v186[24]);
    sub_1DD979F04(&v178, v70, v72, v74 & 1, boxed_opaque_existential_1);
    sub_1DD928DD4(v70, v72, v74 & 1);
    v185 = v189;
    *v186 = v190[0];
    *&v186[13] = *(v190 + 13);
    v50 = v171;
    if (!v65)
    {
      sub_1DD90D378(&v180, &qword_1ECD82F70, &qword_1DDA188A8);
    }
  }

  v178 = v185;
  v179[0] = *v186;
  *(v179 + 13) = *&v186[13];
  v76 = v136;
  sub_1DD9122F0(v136);
  v77 = type metadata accessor for Credentials(0);
  v78 = (*(*(v77 - 8) + 48))(v76, 1, v77);
  v79 = v166;
  v80 = v152;
  v81 = v39;
  if (v78 == 1)
  {
    sub_1DD90D378(v76, &qword_1ECD82D20, &qword_1DDA18CE0);
    v120 = 0;
    v121 = 0;
  }

  else
  {
    v82 = Credentials.credentialsID.getter();
    v120 = v83;
    v121 = v82;
    sub_1DD929B9C(v76, type metadata accessor for Credentials);
  }

  v84 = v167;
  v85 = v160;
  v86 = v153;
  v87 = v174;
  sub_1DD928DF4(&v185, &v180);
  v88 = v146;
  (*(v146 + 16))(v163, v143, v164);
  sub_1DD90ADB4(v161, v134, &qword_1ECD82F60, &qword_1DDA18890);
  sub_1DD90ADB4(v144, v165, &qword_1ECD82FD0, &qword_1DDA189A8);
  sub_1DD90ADB4(v145, v50, &qword_1ECD82FC8, &qword_1DDA189A0);
  (*(v86 + 16))(v80, v148, v79);
  sub_1DD90ADB4(v149, v84, &qword_1ECD82FC0, &qword_1DDA18998);
  v89 = *(v87 + 16);
  v122 = v81;
  v89(v135, v81, v85);
  v90 = (*(v88 + 80) + 176) & ~*(v88 + 80);
  v138 = (v138 + *(v137 + 80) + v90) & ~*(v137 + 80);
  v143 = (v128 + *(v139 + 80) + v138) & ~*(v139 + 80);
  v145 = (v140 + *(v141 + 80) + v143) & ~*(v141 + 80);
  v148 = (v142 + *(v86 + 80) + v145) & ~*(v86 + 80);
  v149 = (v147 + v148 + 7) & 0xFFFFFFFFFFFFFFF8;
  v150 = (*(v150 + 80) + v149 + 8) & ~*(v150 + 80);
  v161 = (v151 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
  v153 = (v161 + 15) & 0xFFFFFFFFFFFFFFF8;
  v151 = (v153 + 15) & 0xFFFFFFFFFFFFFFF8;
  v147 = (*(v87 + 80) + v151 + 8) & ~*(v87 + 80);
  v144 = (v129 + v147 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  v92 = v180;
  *(v91 + 40) = v181;
  v93 = v183;
  *(v91 + 56) = v182;
  *(v91 + 72) = v93;
  *(v91 + 88) = v184;
  *(v91 + 16) = v132;
  *(v91 + 24) = v92;
  v94 = v176;
  v95 = v170;
  *(v91 + 104) = v177;
  *(v91 + 112) = v95;
  v96 = v172;
  *(v91 + 120) = v175;
  *(v91 + 128) = v96;
  v98 = v120;
  v97 = v121;
  *(v91 + 136) = v94;
  *(v91 + 144) = v97;
  v100 = v162;
  v99 = v163;
  *(v91 + 152) = v98;
  *(v91 + 160) = v100;
  *(v91 + 168) = v169;
  (*(v88 + 32))(v91 + v90, v99, v164);
  sub_1DD914958(v134, v91 + v138, &qword_1ECD82F60, &qword_1DDA18890);
  sub_1DD914958(v165, v91 + v143, &qword_1ECD82FD0, &qword_1DDA189A8);
  sub_1DD914958(v171, v91 + v145, &qword_1ECD82FC8, &qword_1DDA189A0);
  (*(v86 + 32))(v91 + v148, v80, v166);
  v101 = v150;
  *(v91 + v149) = v158;
  sub_1DD914958(v167, v91 + v101, &qword_1ECD82FC0, &qword_1DDA18998);
  v102 = v160;
  *(v91 + v161) = v159;
  *(v91 + v153) = v130;
  *(v91 + v151) = v133;
  (*(v174 + 32))(v91 + v147, v135, v102);
  *(v91 + v144) = v156;

  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE0, &qword_1DDA189C8);
  v103 = v154;
  sub_1DDA14E30();
  v104 = v168;
  sub_1DD91E228("StreamingPromptCompletion", 25, 2, v127, v168);
  v105 = v155;
  v106 = *(v155 + 8);
  v167 = v155 + 8;
  v169 = v106;
  v107 = v157;
  v106(v103, v157);
  v108 = swift_allocBox();
  (v124)(v109, 1, 1, v125);
  (*(v105 + 16))(v103, v104, v107);
  v110 = (*(v105 + 80) + 24) & ~*(v105 + 80);
  v111 = (v131 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
  v112 = (v111 + 23) & 0xFFFFFFFFFFFFFFF8;
  v113 = swift_allocObject();
  *(v113 + 16) = v108;
  (*(v105 + 32))(v113 + v110, v103, v107);
  v114 = (v113 + v111);
  v115 = v176;
  v116 = v177;
  *v114 = v172;
  v114[1] = v115;
  *(v113 + v112) = v116;
  v117 = (v113 + ((v112 + 15) & 0xFFFFFFFFFFFFFFF8));
  v118 = v175;
  *v117 = v170;
  v117[1] = v118;

  sub_1DDA14E30();
  v169(v168, v107);
  (*(v174 + 8))(v122, v160);

  sub_1DD9291B0(&v185);
}

uint64_t sub_1DD923720(uint64_t a1)
{
  v2 = *(v1 + 16);
  swift_willThrow();
  v3 = v2;
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1DD923798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 376) = v28;
  *(v9 + 384) = v8;
  *(v9 + 368) = v27;
  *(v9 + 336) = v25;
  *(v9 + 352) = v26;
  *(v9 + 320) = v24;
  *(v9 + 304) = a7;
  *(v9 + 312) = a8;
  *(v9 + 288) = a5;
  *(v9 + 296) = a6;
  *(v9 + 272) = a3;
  *(v9 + 280) = a4;
  *(v9 + 256) = a1;
  *(v9 + 264) = a2;
  *(v9 + 392) = *v8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998) - 8);
  *(v9 + 400) = v10;
  *(v9 + 408) = *(v10 + 64);
  *(v9 + 416) = swift_task_alloc();
  v11 = sub_1DDA13A80();
  *(v9 + 424) = v11;
  v12 = *(v11 - 8);
  *(v9 + 432) = v12;
  *(v9 + 440) = *(v12 + 64);
  *(v9 + 448) = swift_task_alloc();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0) - 8);
  *(v9 + 456) = v13;
  *(v9 + 464) = *(v13 + 64);
  *(v9 + 472) = swift_task_alloc();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8) - 8);
  *(v9 + 480) = v14;
  *(v9 + 488) = *(v14 + 64);
  *(v9 + 496) = swift_task_alloc();
  v15 = sub_1DDA136B0();
  *(v9 + 504) = v15;
  v16 = *(v15 - 8);
  *(v9 + 512) = v16;
  *(v9 + 520) = *(v16 + 64);
  *(v9 + 528) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  *(v9 + 536) = swift_task_alloc();
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  *(v9 + 544) = v17;
  *(v9 + 552) = *(v17 + 64);
  *(v9 + 560) = swift_task_alloc();
  *(v9 + 568) = swift_task_alloc();
  v18 = sub_1DDA13680();
  *(v9 + 576) = v18;
  v19 = *(v18 - 8);
  *(v9 + 584) = v19;
  *(v9 + 592) = *(v19 + 64);
  *(v9 + 600) = swift_task_alloc();
  *(v9 + 608) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0);
  *(v9 + 616) = v20;
  v21 = *(v20 - 8);
  *(v9 + 624) = v21;
  *(v9 + 632) = *(v21 + 64);
  *(v9 + 640) = swift_task_alloc();
  *(v9 + 648) = swift_task_alloc();
  *(v9 + 656) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD923C04, 0, 0);
}

uint64_t sub_1DD923C04()
{
  v148 = v0;
  v120 = sub_1DD929C60(*(v0 + 376));
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v140 = sub_1DDA14810();
  *(v0 + 664) = __swift_project_value_buffer(v140, qword_1ECDA20E0);

  v1 = sub_1DDA147F0();
  v2 = sub_1DDA14F00();

  if (os_log_type_enabled(v1, v2))
  {
    v138 = *(v0 + 304);
    v136 = *(v0 + 296);
    v3 = *(v0 + 264);
    v4 = *(v0 + 272);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v142 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_1DD93FA54(0xD000000000000084, 0x80000001DDA27540, &v142);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1DD93FA54(v3, v4, &v142);
    *(v5 + 22) = 2080;
    *(v5 + 24) = sub_1DD93FA54(v136, v138, &v142);
    _os_log_impl(&dword_1DD8F8000, v1, v2, "%s\n  useCaseID:%s\n  sessionID:%s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v6, -1, -1);
    MEMORY[0x1E12B8CE0](v5, -1, -1);
  }

  v7 = sub_1DDA147F0();
  v8 = sub_1DDA14F00();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DD8F8000, v7, v8, "#tokenperf: Starting one-shot complete prompt request (implementation relies on streaming)", v9, 2u);
    MEMORY[0x1E12B8CE0](v9, -1, -1);
  }

  v10 = sub_1DDA147F0();
  v11 = sub_1DDA14F00();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = *(v0 + 296);
    v12 = *(v0 + 304);
    v15 = *(v0 + 264);
    v14 = *(v0 + 272);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v142 = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_1DD93FA54(0xD000000000000092, 0x80000001DDA27390, &v142);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1DD93FA54(v15, v14, &v142);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_1DD93FA54(v13, v12, &v142);
    _os_log_impl(&dword_1DD8F8000, v10, v11, "%s\n  useCaseID: %s\n  sessionID: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v17, -1, -1);
    MEMORY[0x1E12B8CE0](v16, -1, -1);
  }

  if (qword_1ECD827B8 != -1)
  {
    swift_once();
  }

  v119 = __swift_project_value_buffer(v140, qword_1ECDA2110);
  v18 = sub_1DDA147F0();
  v19 = sub_1DDA14F00();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DD8F8000, v18, v19, "#tokenperf: Starting streaming complete prompt request", v20, 2u);
    MEMORY[0x1E12B8CE0](v20, -1, -1);
  }

  v21 = *(v0 + 384);

  sub_1DDA13670();
  v137 = swift_allocObject();
  *(v137 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE8, &qword_1DDA189D0);
  v135 = swift_allocBox();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FF0, &qword_1DDA189D8);
  v117 = *(*(v24 - 8) + 56);
  v118 = v24;
  v25 = v117(v23, 1, 1);
  v26 = *(v21 + 136);
  if (v26)
  {
    v26(&v142, v25);
    v27 = v145;
    *(v0 + 48) = v144;
    *(v0 + 64) = v27;
    *(v0 + 80) = v146;
    v28 = v143;
    *(v0 + 16) = v142;
    *(v0 + 32) = v28;
  }

  else
  {
    v29 = *(v0 + 568);
    v30 = *(v0 + 320);
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    sub_1DD90ADB4(v30, v29, &qword_1ECD82F60, &qword_1DDA18890);
    v31 = sub_1DDA13F50();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 48))(v29, 1, v31);
    v34 = *(v0 + 568);
    if (v33 == 1)
    {
      sub_1DD90D378(*(v0 + 568), &qword_1ECD82F60, &qword_1DDA18890);
      v35 = 0;
    }

    else
    {
      LODWORD(v35) = sub_1DDA13F40();
      (*(v32 + 8))(v34, v31);
      v35 = v35;
    }

    v36 = v33 == 1;
    v37 = *(v0 + 264);
    v38 = *(v0 + 272);

    v39 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
    v40 = sub_1DD9C13D0(v37, v38, v39);
    v42 = v41;
    v44 = v43;
    LOBYTE(v147[0]) = v36;
    sub_1DD913A48(v43 & 1, v35 | (v36 << 32), (v0 + 216));
    sub_1DD928DB4(v40, v42, v44 & 1);
    sub_1DD94BC74(1, v147);
    *(v0 + 80) = type metadata accessor for OpenAIAuthenticationService(0);
    *(v0 + 88) = &off_1F58F1458;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_1DD979F04(v147, v40, v42, v44 & 1, boxed_opaque_existential_1);
    sub_1DD928DD4(v40, v42, v44 & 1);
    v46 = *(v0 + 232);
    *(v0 + 16) = *(v0 + 216);
    *(v0 + 32) = v46;
    *(v0 + 45) = *(v0 + 245);
  }

  v47 = *(v0 + 536);
  v48 = *(v0 + 32);
  *(v0 + 176) = *(v0 + 16);
  *(v0 + 192) = v48;
  *(v0 + 205) = *(v0 + 45);
  sub_1DD9122F0(v47);
  v49 = type metadata accessor for Credentials(0);
  v50 = (*(*(v49 - 8) + 48))(v47, 1, v49);
  v51 = *(v0 + 536);
  if (v50 == 1)
  {
    sub_1DD90D378(*(v0 + 536), &qword_1ECD82D20, &qword_1DDA18CE0);
    v112 = 0;
    v110 = 0;
  }

  else
  {
    v112 = Credentials.credentialsID.getter();
    v110 = v52;
    sub_1DD929B9C(v51, type metadata accessor for Credentials);
  }

  v116 = *(v0 + 632);
  v114 = *(v0 + 640);
  v115 = *(v0 + 624);
  v132 = *(v0 + 616);
  v130 = *(v0 + 648);
  v131 = *(v0 + 608);
  v129 = *(v0 + 600);
  v107 = *(v0 + 592);
  v139 = *(v0 + 584);
  v141 = *(v0 + 576);
  v53 = *(v0 + 560);
  v54 = *(v0 + 528);
  v105 = v54;
  v88 = *(v0 + 520);
  v90 = *(v0 + 544);
  v56 = *(v0 + 504);
  v55 = *(v0 + 512);
  v57 = *(v0 + 496);
  v58 = *(v0 + 472);
  v104 = v57;
  v98 = *(v0 + 464);
  v100 = *(v0 + 552);
  v85 = *(v0 + 480);
  v87 = *(v0 + 456);
  v126 = *(v0 + 448);
  v94 = *(v0 + 488);
  v96 = *(v0 + 440);
  v121 = *(v0 + 432);
  v122 = *(v0 + 424);
  v127 = *(v0 + 416);
  v102 = *(v0 + 408);
  v92 = *(v0 + 400);
  v113 = *(v0 + 392);
  v111 = *(v0 + 368);
  v83 = *(v0 + 344);
  v84 = *(v0 + 360);
  v59 = *(v0 + 328);
  v82 = *(v0 + 336);
  v61 = *(v0 + 312);
  v60 = *(v0 + 320);
  v124 = *(v0 + 304);
  v125 = *(v0 + 384);
  v133 = *(v0 + 296);
  v123 = *(v0 + 288);
  v134 = *(v0 + 280);
  v108 = *(v0 + 272);
  v109 = *(v0 + 352);
  v106 = *(v0 + 264);
  sub_1DD928DF4(v0 + 16, v0 + 96);
  (*(v55 + 16))(v54, v61, v56);
  sub_1DD90ADB4(v60, v53, &qword_1ECD82F60, &qword_1DDA18890);
  sub_1DD90ADB4(v59, v57, &qword_1ECD82FD0, &qword_1DDA189A8);
  sub_1DD90ADB4(v82, v58, &qword_1ECD82FC8, &qword_1DDA189A0);
  (*(v121 + 16))(v126, v83, v122);
  sub_1DD90ADB4(v84, v127, &qword_1ECD82FC0, &qword_1DDA18998);
  (*(v139 + 16))(v129, v131, v141);
  v62 = v55;
  v63 = (*(v55 + 80) + 176) & ~*(v55 + 80);
  v64 = (v88 + *(v90 + 80) + v63) & ~*(v90 + 80);
  v86 = (v100 + *(v85 + 80) + v64) & ~*(v85 + 80);
  v89 = (v94 + *(v87 + 80) + v86) & ~*(v87 + 80);
  v95 = (v98 + *(v121 + 80) + v89) & ~*(v121 + 80);
  v99 = (v96 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
  v97 = (*(v92 + 80) + v99 + 8) & ~*(v92 + 80);
  v103 = (v102 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v101 = (v103 + 15) & 0xFFFFFFFFFFFFFFF8;
  v93 = (v101 + 15) & 0xFFFFFFFFFFFFFFF8;
  v91 = (*(v139 + 80) + v93 + 8) & ~*(v139 + 80);
  v65 = swift_allocObject();
  v66 = *(v0 + 96);
  *(v65 + 40) = *(v0 + 112);
  v67 = *(v0 + 144);
  *(v65 + 56) = *(v0 + 128);
  *(v65 + 72) = v67;
  *(v65 + 88) = *(v0 + 160);
  *(v65 + 16) = v135;
  *(v65 + 24) = v66;
  *(v65 + 104) = v125;
  *(v65 + 112) = v134;
  *(v65 + 120) = v123;
  *(v65 + 128) = v133;
  *(v65 + 136) = v124;
  *(v65 + 144) = v112;
  *(v65 + 152) = v110;
  *(v65 + 160) = v106;
  *(v65 + 168) = v108;
  (*(v62 + 32))(v65 + v63, v105, v56);
  sub_1DD914958(v53, v65 + v64, &qword_1ECD82F60, &qword_1DDA18890);
  sub_1DD914958(v104, v65 + v86, &qword_1ECD82FD0, &qword_1DDA189A8);
  sub_1DD914958(v58, v65 + v89, &qword_1ECD82FC8, &qword_1DDA189A0);
  (*(v121 + 32))(v65 + v95, v126, v122);
  *(v65 + v99) = v109;
  sub_1DD914958(v127, v65 + v97, &qword_1ECD82FC0, &qword_1DDA18998);
  *(v65 + v103) = v111;
  *(v65 + v101) = v120;
  *(v65 + v93) = v137;
  (*(v139 + 32))(v65 + v91, v129, v141);
  *(v65 + ((v107 + v91 + 7) & 0xFFFFFFFFFFFFFFF8)) = v113;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE0, &qword_1DDA189C8);
  sub_1DDA14E30();
  sub_1DD91E228("StreamingPromptCompletion", 25, 2, v119, v130);
  v128 = *(v115 + 8);
  *(v0 + 672) = v128;
  *(v0 + 680) = (v115 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v128(v114, v132);
  v68 = swift_allocBox();
  (v117)(v69, 1, 1, v118);
  (*(v115 + 16))(v114, v130, v132);
  v70 = (*(v115 + 80) + 24) & ~*(v115 + 80);
  v71 = (v116 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  *(v73 + 16) = v68;
  (*(v115 + 32))(v73 + v70, v114, v132);
  v74 = (v73 + v71);
  *v74 = v133;
  v74[1] = v124;
  *(v73 + v72) = v125;
  v75 = (v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v75 = v134;
  v75[1] = v123;

  sub_1DDA14E30();
  v128(v130, v132);
  (*(v139 + 8))(v131, v141);

  sub_1DD9291B0(v0 + 16);

  v76 = swift_task_alloc();
  *(v0 + 688) = v76;
  v77 = sub_1DD92BBAC();
  *v76 = v0;
  v76[1] = sub_1DD924B90;
  v78 = *(v0 + 656);
  v79 = *(v0 + 616);
  v80 = *(v0 + 256);

  return MEMORY[0x1EEE49D58](v80, v78, v79, v77);
}

uint64_t sub_1DD924B90()
{
  *(*v1 + 696) = v0;

  if (v0)
  {
    v2 = sub_1DD924E54;
  }

  else
  {
    v2 = sub_1DD924CA4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD924CA4(uint64_t a1)
{
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "#tokenperf: Finished one-shot complete prompt request", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v5 = v1[84];
  v6 = v1[82];
  v7 = v1[77];

  v5(v6, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_1DD924E54()
{
  (*(v0 + 672))(*(v0 + 656), *(v0 + 616));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD924F88(uint64_t a1)
{
  v116 = sub_1DDA143D0();
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v113 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DDA14440();
  v119 = *(v3 - 1);
  v120 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v118 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v122 = &v113 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83010, &qword_1DDA18A40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v113 - v8;
  v129 = sub_1DDA13840();
  v127 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v125 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1DDA13830();
  v128 = *(v130 - 1);
  MEMORY[0x1EEE9AC00](v130);
  v126 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DDA144A0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DDA144B0();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v114 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v117 = &v113 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v113 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v113 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = *(v17 + 16);
  v121 = a1;
  v30 = (&v113 - v29);
  v123 = v17 + 16;
  v124 = v28;
  v28();
  result = (*(v17 + 88))(v30, v16);
  if (result == *MEMORY[0x1E69A0B78])
  {
    (*(v17 + 96))(v30, v16);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83018, &qword_1DDA18A48);
    v33 = swift_projectBox();
    sub_1DD90ADB4(v33 + *(v32 + 48), v9, &qword_1ECD83010, &qword_1DDA18A40);
    v34 = sub_1DDA14450();
    if ((*(*(v34 - 8) + 48))(v9, 1, v34) == 1)
    {
      sub_1DD90D378(v9, &qword_1ECD83010, &qword_1DDA18A40);
    }

    if (qword_1ECD827A8 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

  v131 = v16;
  if (result == *MEMORY[0x1E69A0B70])
  {
    (*(v17 + 96))(v30, v131);
    v129 = *v30;
    v35 = *(v129 + 16);
    v9 = *(v35 + 16);
    if (!v9)
    {
    }

    v36 = 0;
    v130 = (v13 + 16);
    v37 = (v17 + 8);
    while (v36 < *(v35 + 16))
    {
      (*(v13 + 16))(v15, v35 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v36, v12);
      sub_1DDA14480();
      (*(v13 + 8))(v15, v12);
      v38 = v134;
      sub_1DD924F88(v27);
      v134 = v38;
      if (v38)
      {
        (*v37)(v27, v131);
      }

      ++v36;
      (*v37)(v27, v131);
      if (v9 == v36)
      {
      }
    }

    __break(1u);
LABEL_52:
    swift_once();
LABEL_12:
    v39 = sub_1DDA14810();
    __swift_project_value_buffer(v39, qword_1ECDA20E0);
    v40 = sub_1DDA147F0();
    v41 = sub_1DDA14EE0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1DD8F8000, v40, v41, "Strings with constraints are not supported", v42, 2u);
      MEMORY[0x1E12B8CE0](v42, -1, -1);
    }

    v43 = v126;
    sub_1DDA13800();
    v44 = v128;
    v45 = v125;
    v46 = v130;
    (*(v128 + 16))(v125, v43, v130);
    v47 = v127;
    v48 = v129;
    (*(v127 + 104))(v45, *MEMORY[0x1E69DA4B0], v129);
    sub_1DD92BC10(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
    swift_allocError();
    (*(v47 + 16))(v49, v45, v48);
    swift_willThrow();
    (*(v47 + 8))(v45, v48);
    (*(v44 + 8))(v43, v46);
    sub_1DD90D378(v9, &qword_1ECD83010, &qword_1DDA18A40);
  }

  if (result == *MEMORY[0x1E69A0B58])
  {
    v50 = v131;
    (*(v17 + 96))(v30, v131);
    v51 = swift_projectBox();
    (v124)(v24, v51, v50);
    v52 = v134;
    sub_1DD924F88(v24);
    if (!v52)
    {
      v134 = 0;
      (*(v17 + 8))(v24, v50);
    }

    (*(v17 + 8))(v24, v50);
  }

  v53 = v124;
  if (result == *MEMORY[0x1E69A0B50])
  {
    (*(v17 + 8))(v30, v131);
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v54 = sub_1DDA14810();
    __swift_project_value_buffer(v54, qword_1ECDA20E0);
    v55 = sub_1DDA147F0();
    v56 = sub_1DDA14EE0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1DD8F8000, v55, v56, "Schemas with dictionaries are not supported", v57, 2u);
      MEMORY[0x1E12B8CE0](v57, -1, -1);
    }

LABEL_40:

    v80 = v126;
    sub_1DDA13800();
    v81 = v128;
    v82 = v125;
    v83 = v130;
    (*(v128 + 16))(v125, v80, v130);
    v84 = v127;
    v85 = v129;
    (*(v127 + 104))(v82, *MEMORY[0x1E69DA4B0], v129);
    sub_1DD92BC10(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
    swift_allocError();
    (*(v84 + 16))(v86, v82, v85);
    swift_willThrow();
    (*(v84 + 8))(v82, v85);
    return (*(v81 + 8))(v80, v83);
  }

  if (result == *MEMORY[0x1E69A0B60] || result == *MEMORY[0x1E69A0B90])
  {
    (*(v17 + 8))(v30, v131);
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v77 = sub_1DDA14810();
    __swift_project_value_buffer(v77, qword_1ECDA20E0);
    v55 = sub_1DDA147F0();
    v78 = sub_1DDA14EE0();
    if (os_log_type_enabled(v55, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1DD8F8000, v55, v78, "Generable enums with associated values are not supported", v79, 2u);
      MEMORY[0x1E12B8CE0](v79, -1, -1);
    }

    goto LABEL_40;
  }

  if (result == *MEMORY[0x1E69A0B48])
  {
    (*(v17 + 96))(v30, v131);
    v58 = *v30;
    v59 = swift_projectBox();
    v60 = v119;
    v61 = v120;
    v62 = *(v119 + 16);
    v63 = v122;
    v62(v122, v59, v120);
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v64 = sub_1DDA14810();
    __swift_project_value_buffer(v64, qword_1ECDA20E0);
    v65 = v118;
    v62(v118, v63, v61);
    v66 = sub_1DDA147F0();
    v67 = sub_1DDA14ED0();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = v65;
      v69 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v132 = v130;
      *v69 = 136315138;
      sub_1DDA14430();
      v70 = sub_1DDA14B70();
      v131 = v58;
      v71 = v70;
      v73 = v72;
      v74 = *(v60 + 8);
      v74(v68, v61);
      v75 = sub_1DD93FA54(v71, v73, &v132);

      *(v69 + 4) = v75;
      _os_log_impl(&dword_1DD8F8000, v66, v67, "RecursiveSchema: %s", v69, 0xCu);
      v76 = v130;
      __swift_destroy_boxed_opaque_existential_1(v130);
      MEMORY[0x1E12B8CE0](v76, -1, -1);
      MEMORY[0x1E12B8CE0](v69, -1, -1);

      v74(v122, v61);
    }

    else
    {

      v102 = *(v60 + 8);
      v102(v65, v61);
      v102(v63, v61);
    }
  }

  if (result != *MEMORY[0x1E69A0B80] && result != *MEMORY[0x1E69A0B88] && result != *MEMORY[0x1E69A0B68])
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v87 = sub_1DDA14810();
    __swift_project_value_buffer(v87, qword_1ECDA20E0);
    v88 = v117;
    (v53)(v117, v121, v131);
    v89 = sub_1DDA147F0();
    v90 = sub_1DDA14EE0();
    v91 = os_log_type_enabled(v89, v90);
    v92 = v114;
    if (v91)
    {
      v93 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v132 = v120;
      *v93 = 136315138;
      v94 = v88;
      v95 = v131;
      (v53)(v92, v94, v131);
      v96 = sub_1DDA14B70();
      v98 = v97;
      v99 = *(v17 + 8);
      v122 = ((v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v134 = v99;
      v99(v117, v95);
      v100 = sub_1DD93FA54(v96, v98, &v132);
      v53 = v124;

      *(v93 + 4) = v100;
      _os_log_impl(&dword_1DD8F8000, v89, v90, "Schema not supported: %s", v93, 0xCu);
      v101 = v120;
      __swift_destroy_boxed_opaque_existential_1(v120);
      MEMORY[0x1E12B8CE0](v101, -1, -1);
      MEMORY[0x1E12B8CE0](v93, -1, -1);
    }

    else
    {

      v103 = *(v17 + 8);
      v122 = ((v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v134 = v103;
      v103(v88, v131);
    }

    v132 = 0;
    v133 = 0xE000000000000000;
    sub_1DDA15070();

    v132 = 0xD000000000000016;
    v133 = 0x80000001DDA27480;
    v104 = v131;
    (v53)(v92, v121, v131);
    v105 = sub_1DDA14B70();
    MEMORY[0x1E12B7AB0](v105);

    v106 = v126;
    sub_1DDA13800();
    v107 = v128;
    v108 = v125;
    v109 = v130;
    (*(v128 + 16))(v125, v106, v130);
    v110 = v127;
    v111 = v129;
    (*(v127 + 104))(v108, *MEMORY[0x1E69DA4B0], v129);
    sub_1DD92BC10(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
    swift_allocError();
    (*(v110 + 16))(v112, v108, v111);
    swift_willThrow();
    (*(v110 + 8))(v108, v111);
    (*(v107 + 8))(v106, v109);
    return v134(v30, v104);
  }

  return result;
}

uint64_t sub_1DD926144()
{
  sub_1DD926314((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);

  sub_1DD926368(v0[17], v0[18]);

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

uint64_t sub_1DD9261C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DDA15570();
  sub_1DDA14BC0();
  v6 = sub_1DDA155B0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1DDA15440() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DD9262B8()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DD926368(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD926378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 176) = a5;
  *(v8 + 184) = a8;
  *(v8 + 304) = a7;
  *(v8 + 160) = a3;
  *(v8 + 168) = a4;
  *(v8 + 152) = a1;
  v9 = sub_1DDA147A0();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D58, &unk_1DDA18640);
  *(v8 + 216) = swift_task_alloc();
  v10 = sub_1DDA14760();
  *(v8 + 224) = v10;
  *(v8 + 232) = *(v10 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F68, &qword_1DDA18898);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD926544, 0, 0);
}

uint64_t sub_1DD926544()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  swift_beginAccess();
  sub_1DD90ADB4(v1, v2, &qword_1ECD82F68, &qword_1DDA18898);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECD82D60, &qword_1DDA188A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_1DD90D378(v2, &qword_1ECD82F68, &qword_1DDA18898);
  if (v1 == 1)
  {
    sub_1DDA14750();
    v6 = sub_1DDA14780();
    v7 = sub_1DDA14F30();
    v8 = sub_1DDA14F40();
    if ((v8 & 1) == 0)
    {
LABEL_11:
      v26 = *(v0 + 280);
      v27 = v5;
      v14 = *(v0 + 256);
      v13 = *(v0 + 264);
      v15 = *(v0 + 248);
      v16 = v6;
      v17 = v4;
      v19 = *(v0 + 224);
      v18 = *(v0 + 232);
      v20 = *(v0 + 160);

      (*(v18 + 16))(v15, v14, v19);
      sub_1DDA147D0();
      swift_allocObject();
      v21 = sub_1DDA147C0();
      v22 = v14;
      v5 = v27;
      (*(v18 + 8))(v22, v19);
      swift_beginAccess();
      *(v20 + 16) = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600);
      sub_1DDA14E10();
      (*(v17 + 56))(v13, 0, 1, v3);
      swift_beginAccess();
      sub_1DD90AE1C(v13, v26, &qword_1ECD82F68, &qword_1DDA18898);
      goto LABEL_12;
    }

    v10 = *(v0 + 176);
    if ((*(v0 + 304) & 1) == 0)
    {
      if (v10)
      {
LABEL_10:
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v6, v7, v12, v10, "", v11, 2u);
        MEMORY[0x1E12B8CE0](v11, -1, -1);
        goto LABEL_11;
      }

      __break(1u);
    }

    if (v10 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v10 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (v10 >> 16 <= 0x10)
      {
        v10 = (v0 + 144);
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  v23 = *(v0 + 280);
  swift_beginAccess();
  v8 = v5(v23, 1, v3);
  if (v8 == 1)
  {
LABEL_19:
    __break(1u);
    return MEMORY[0x1EEE6DB98](v8, v9);
  }

  v24 = swift_task_alloc();
  *(v0 + 288) = v24;
  *v24 = v0;
  v24[1] = sub_1DD9268E8;
  v8 = *(v0 + 216);
  v9 = v3;

  return MEMORY[0x1EEE6DB98](v8, v9);
}

uint64_t sub_1DD9268E8()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1DD926D3C;
  }

  else
  {
    swift_endAccess();
    v2 = sub_1DD926A04;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD926A04()
{
  v1 = *(v0 + 216);
  v2 = sub_1DDA14140();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    goto LABEL_7;
  }

  v4 = *(v0 + 160);
  sub_1DD90D378(v1, &qword_1ECD82D58, &unk_1DDA18640);
  result = swift_beginAccess();
  if (!*(v4 + 16))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v6 = sub_1DDA14780();
  sub_1DDA147B0();
  v7 = sub_1DDA14F20();
  v1 = v6;
  result = sub_1DDA14F40();
  if ((result & 1) == 0)
  {
LABEL_16:
    v17 = *(v0 + 232);
    v16 = *(v0 + 240);
    v18 = *(v0 + 224);

    (*(v17 + 8))(v16, v18);
    v9 = 1;
    goto LABEL_17;
  }

  v8 = *(v0 + 176);
  if (*(v0 + 304))
  {
    if (v8 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((*(v0 + 176) & 0xFFFFF800) == 0xD800)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (v8 >> 16 <= 0x10)
      {
        v8 = (v0 + 136);
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v8)
  {
LABEL_12:
    v11 = *(v0 + 200);
    v10 = *(v0 + 208);
    v12 = *(v0 + 192);

    sub_1DDA147E0();

    if ((*(v11 + 88))(v10, v12) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1DDA14740();
    _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v6, v7, v15, v8, v13, v14, 2u);
    MEMORY[0x1E12B8CE0](v14, -1, -1);
    goto LABEL_16;
  }

  __break(1u);
LABEL_7:
  (*(v3 + 32))(*(v0 + 152), v1, v2);
  v9 = 0;
LABEL_17:
  (*(v3 + 56))(*(v0 + 152), v9, 1, v2);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1DD926D3C()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD926E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 216) = a5;
  *(v8 + 224) = a8;
  *(v8 + 336) = a7;
  *(v8 + 200) = a3;
  *(v8 + 208) = a4;
  *(v8 + 192) = a1;
  v9 = sub_1DDA147A0();
  *(v8 + 232) = v9;
  *(v8 + 240) = *(v9 - 8);
  *(v8 + 248) = swift_task_alloc();
  v10 = sub_1DDA14760();
  *(v8 + 256) = v10;
  *(v8 + 264) = *(v10 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE8, &qword_1DDA189D0);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD926F94, 0, 0);
}

uint64_t sub_1DD926F94()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  swift_beginAccess();
  sub_1DD90ADB4(v1, v2, &qword_1ECD82FE8, &qword_1DDA189D0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FF0, &qword_1DDA189D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_1DD90D378(v2, &qword_1ECD82FE8, &qword_1DDA189D0);
  if (v1 == 1)
  {
    sub_1DDA14750();
    v6 = sub_1DDA14780();
    v7 = sub_1DDA14F30();
    v8 = sub_1DDA14F40();
    if ((v8 & 1) == 0)
    {
LABEL_11:
      v26 = *(v0 + 312);
      v27 = v5;
      v14 = *(v0 + 288);
      v13 = *(v0 + 296);
      v15 = *(v0 + 280);
      v16 = v6;
      v17 = v4;
      v19 = *(v0 + 256);
      v18 = *(v0 + 264);
      v20 = *(v0 + 200);

      (*(v18 + 16))(v15, v14, v19);
      sub_1DDA147D0();
      swift_allocObject();
      v21 = sub_1DDA147C0();
      v22 = v14;
      v5 = v27;
      (*(v18 + 8))(v22, v19);
      swift_beginAccess();
      *(v20 + 16) = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0);
      sub_1DDA14E10();
      (*(v17 + 56))(v13, 0, 1, v3);
      swift_beginAccess();
      sub_1DD90AE1C(v13, v26, &qword_1ECD82FE8, &qword_1DDA189D0);
      goto LABEL_12;
    }

    v10 = *(v0 + 216);
    if ((*(v0 + 336) & 1) == 0)
    {
      if (v10)
      {
LABEL_10:
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v6, v7, v12, v10, "", v11, 2u);
        MEMORY[0x1E12B8CE0](v11, -1, -1);
        goto LABEL_11;
      }

      __break(1u);
    }

    if (v10 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v10 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (v10 >> 16 <= 0x10)
      {
        v10 = (v0 + 184);
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  v23 = *(v0 + 312);
  swift_beginAccess();
  v8 = v5(v23, 1, v3);
  if (v8 == 1)
  {
LABEL_19:
    __break(1u);
    return MEMORY[0x1EEE6DB98](v8, v9);
  }

  v24 = swift_task_alloc();
  *(v0 + 320) = v24;
  *v24 = v0;
  v24[1] = sub_1DD927338;
  v8 = v0 + 16;
  v9 = v3;

  return MEMORY[0x1EEE6DB98](v8, v9);
}

uint64_t sub_1DD927338()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1DD9276E0;
  }

  else
  {
    swift_endAccess();
    v2 = sub_1DD927454;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD927454()
{
  if (!*(v0 + 40))
  {
    v1 = *(v0 + 200);
    sub_1DD90D378(v0 + 16, &qword_1ECD82FF8, &qword_1DDA18A18);
    result = swift_beginAccess();
    if (!*(v1 + 16))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    v3 = sub_1DDA14780();
    sub_1DDA147B0();
    v4 = sub_1DDA14F20();
    result = sub_1DDA14F40();
    if ((result & 1) == 0)
    {
LABEL_16:
      v13 = *(v0 + 264);
      v12 = *(v0 + 272);
      v14 = *(v0 + 256);
      v15 = *(v0 + 192);

      (*(v13 + 8))(v12, v14);
      *(v15 + 32) = 0;
      *v15 = 0u;
      *(v15 + 16) = 0u;
      goto LABEL_17;
    }

    v5 = *(v0 + 216);
    if ((*(v0 + 336) & 1) == 0)
    {
      if (v5)
      {
LABEL_12:
        v7 = *(v0 + 240);
        v6 = *(v0 + 248);
        v8 = *(v0 + 232);

        sub_1DDA147E0();

        if ((*(v7 + 88))(v6, v8) == *MEMORY[0x1E69E93E8])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v3, v4, v11, v5, v9, v10, 2u);
        MEMORY[0x1E12B8CE0](v10, -1, -1);
        goto LABEL_16;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 176);
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_1DD8FEEB0((v0 + 16), *(v0 + 192));
LABEL_17:

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1DD9276E0()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD927794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1DD90ADB4(a3, v22 - v9, &qword_1ECD82D30, &qword_1DDA188D0);
  v11 = sub_1DDA14D60();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1DD90D378(v10, &qword_1ECD82D30, &qword_1DDA188D0);
  }

  else
  {
    sub_1DDA14D50();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1DDA14CD0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1DDA14B80() + 32;

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

      sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);

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

  sub_1DD90D378(a3, &qword_1ECD82D30, &qword_1DDA188D0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1DD927A40(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  if (a2 >> 62)
  {
    v11 = a1;
    v12 = a2;
    v13 = sub_1DDA15190();
    a2 = v12;
    v4 = v13;
    a1 = v11;
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 < v3)
  {
    v3 = v4;
  }

  if (v3)
  {
    v5 = a1;
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F90, &qword_1DDA18930);
    v7 = sub_1DDA151C0();
    a2 = v6;
    v8 = v7;
    a1 = v5;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  v14 = v8;
  sub_1DD927B3C(a1, a2, 1, &v14);
  v9 = v14;
  if (v2)
  {
  }

  return v9;
}

uint64_t sub_1DD927B3C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v53 = a4;
  v7 = sub_1DDA134E0();
  v47 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v52 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F98, &unk_1DDA18938);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v38 - v13;
  v14 = *(a1 + 16);

  v48 = a2;

  v45 = v14;
  if (v14)
  {
    v15 = 0;
    v16 = v48 & 0xFFFFFFFFFFFFFF8;
    if (v48 < 0)
    {
      v17 = v48;
    }

    else
    {
      v17 = v48 & 0xFFFFFFFFFFFFFF8;
    }

    v38 = v17;
    v41 = a1;
    v42 = v48 & 0xC000000000000001;
    v50 = (v47 + 32);
    v39 = (v47 + 8);
    v40 = v48 & 0xFFFFFFFFFFFFFF8;
    v43 = v48 >> 62;
    v44 = v47 + 16;
    while (v15 < *(a1 + 16))
    {
      v18 = *(v47 + 72);
      (*(v47 + 16))(v11, a1 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + v18 * v15, v7);
      if (v43)
      {
        if (v15 == sub_1DDA15190())
        {
LABEL_27:
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          return (*v39)(v11, v7);
        }
      }

      else if (v15 == *(v16 + 16))
      {
        goto LABEL_27;
      }

      v49 = v18;
      if (v42)
      {
        v51 = MEMORY[0x1E12B7F50](v15, v48);
      }

      else
      {
        if (v15 >= *(v16 + 16))
        {
          goto LABEL_30;
        }

        v51 = *(v48 + 8 * v15 + 32);
      }

      v19 = *v50;
      v20 = v46;
      v21 = v11;
      (*v50)(v46, v11, v7);
      v22 = v52;
      v23 = v7;
      v19(v52, v20, v7);
      v24 = *v53;
      v26 = sub_1DD96AD50(v22);
      v27 = v24[2];
      v28 = (v25 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        goto LABEL_29;
      }

      v30 = v25;
      if (v24[3] >= v29)
      {
        if ((a3 & 1) == 0)
        {
          sub_1DD9CA010();
        }
      }

      else
      {
        sub_1DD9C8930(v29, a3 & 1);
        v31 = sub_1DD96AD50(v52);
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_32;
        }

        v26 = v31;
      }

      v33 = *v53;
      if (v30)
      {
        v7 = v23;
        (*v39)(v52, v23);
        *(v33[7] + 8 * v26) = v51;
      }

      else
      {
        v33[(v26 >> 6) + 8] |= 1 << v26;
        v7 = v23;
        v19((v33[6] + v26 * v49), v52, v23);
        *(v33[7] + 8 * v26) = v51;
        v34 = v33[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_31;
        }

        v33[2] = v36;
      }

      ++v15;
      a3 = 1;
      v16 = v40;
      a1 = v41;
      v11 = v21;
      if (v45 == v15)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_1DDA15500();
    __break(1u);
  }

  else
  {
LABEL_26:
    swift_bridgeObjectRelease_n();
    return swift_bridgeObjectRelease_n();
  }

  return result;
}

uint64_t sub_1DD927F9C()
{
  v9 = v0;
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA20E0);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1DD93FA54(0x5F286E4964616F6CLL, 0xEA0000000000293ALL, &v8);
    _os_log_impl(&dword_1DD8F8000, v2, v3, "%s: no-op", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E12B8CE0](v5, -1, -1);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DD928114()
{
  *(v1 + 40) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9281B0, 0, 0);
}

uint64_t sub_1DD9281B0()
{
  v9 = v0;
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA20E0);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1DD93FA54(0x2874754F64616F6CLL, 0xEB00000000293A5FLL, &v8);
    _os_log_impl(&dword_1DD8F8000, v2, v3, "%s: clearing sessions", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E12B8CE0](v5, -1, -1);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v6 = *(*(v0 + 40) + 120);
  *(v0 + 56) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1DD928338, v6, 0);
}

uint64_t sub_1DD928338()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  *(v1 + 112) = MEMORY[0x1E69E7CD0];

  return MEMORY[0x1EEE6DFA0](sub_1DD9283C4, 0, 0);
}

uint64_t sub_1DD9283C4()
{
  v1 = v0[6];
  v2 = *(v0[5] + 128);
  v3 = sub_1DDA14D60();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  v5 = sub_1DD982718(0, 0, v1, &unk_1DDA18A70, v4);
  v0[8] = v5;
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1DD92850C;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v6, v5, v7);
}

uint64_t sub_1DD92850C()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD928624, 0, 0);
}

uint64_t sub_1DD928624()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD928688(uint64_t a1)
{
  v3 = sub_1DDA13EE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v7 = sub_1DDA14810();
  __swift_project_value_buffer(v7, qword_1ECDA20E0);
  (*(v4 + 16))(v6, a1, v3);
  v8 = sub_1DDA147F0();
  v9 = sub_1DDA14ED0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v27 = v1;
    v11 = v10;
    v25 = swift_slowAlloc();
    v26 = a1;
    v28 = v25;
    *v11 = 136315394;
    *(v11 + 4) = sub_1DD93FA54(0xD000000000000014, 0x80000001DDA275D0, &v28);
    *(v11 + 12) = 2080;
    sub_1DD92BC10(&qword_1ECD83028, MEMORY[0x1E69DA850], MEMORY[0x1E69DA860]);
    v12 = sub_1DDA15400();
    v14 = v13;
    (*(v4 + 8))(v6, v3);
    v15 = sub_1DD93FA54(v12, v14, &v28);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1DD8F8000, v8, v9, "%s\n  prompt:%s", v11, 0x16u);
    v16 = v25;
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v16, -1, -1);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  sub_1DDA13D50();
  v17 = sub_1DDA14BD0();

  v19 = v17 / 3.5;
  if (COERCE_INT(fabs(v19)) > 2139095039)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v19 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v19 >= 9.2234e18)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v20 = v19;
  v21 = sub_1DDA147F0();
  v22 = sub_1DDA14F00();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v20;
    _os_log_impl(&dword_1DD8F8000, v21, v22, "Estimated %ld tokens", v23, 0xCu);
    MEMORY[0x1E12B8CE0](v23, -1, -1);
  }

  return v20;
}

uint64_t sub_1DD928A40()
{
  v1 = sub_1DDA13840();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_1DDA13830();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD928B58, 0, 0);
}

uint64_t sub_1DD928B58()
{
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA20E0);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14EE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Counting tokens for a prompt template is not supported.", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  sub_1DDA13800();
  (*(v6 + 16))(v7, v5, v8);
  (*(v10 + 104))(v7, *MEMORY[0x1E69DA4C0], v9);
  sub_1DD92BC10(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
  swift_allocError();
  (*(v10 + 16))(v11, v7, v9);
  swift_willThrow();
  (*(v10 + 8))(v7, v9);
  (*(v6 + 8))(v5, v8);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DD928DB4(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_1DD928DC0(a1, a2);
  }
}

uint64_t sub_1DD928DC0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_1DD928DD4(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_1DD928DE0(a1, a2);
  }
}

uint64_t sub_1DD928DE0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_1DD928E50(uint64_t a1)
{
  sub_1DDA136B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  v10 = v1[2];
  v9 = v1[13];
  v8 = v1[14];
  v3 = v1[16];
  v7 = v1[15];
  v4 = v1[17];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD92BD10;

  return sub_1DD918E10(a1, v10, (v1 + 3), v9, v8, v7, v3, v4);
}

uint64_t sub_1DD929044(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = (v1 + v7);
  v12 = *(v1 + v8);
  v13 = *v11;
  v14 = v11[1];
  v15 = *(v1 + v9);
  v16 = *(v1 + v9 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1DD92BD10;

  return sub_1DD9210E0(a1, v10, v1 + v6, v13, v14, v12, v15, v16);
}

uint64_t sub_1DD929204(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DD92BD10;

  return sub_1DD9BB3E4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD9292CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1DDA14790() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600) - 8);
  v9 = (v7 + *(v8 + 80) + 17) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v7;
  v13 = *(v1 + v7);
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1DD92BD10;

  return sub_1DD926378(a1, v10, v11, v1 + v6, v13, v14, v15, v1 + v9);
}

uint64_t sub_1DD92945C(uint64_t a1)
{
  sub_1DDA136B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[5];
  v9 = v1[4];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD9165BC;

  return sub_1DD919EA8(a1, v11, v10, v9, v3, v4, v5, v6);
}

uint64_t sub_1DD92963C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DD92BD10;

  return sub_1DD9B8A6C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD929704(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DD92BD10;

  return sub_1DD990A28(a1, v5, v6, v7, v8, v9, v10, v1 + v4);
}

uint64_t sub_1DD9298A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1DD92BD10;

  return sub_1DD920D30(v2, v3, v4, v5, v6);
}

uint64_t sub_1DD929960(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DD9165BC;

  return sub_1DD9BB8B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD929A28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_1DD929B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionRegistry.SessionInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD929B9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DD929BFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionRegistry.SessionInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1DD929C60(uint64_t a1)
{
  v73 = a1;
  v2 = sub_1DDA13840();
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v67 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1DDA13830();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1DDA144A0();
  v5 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1DDA144B0();
  v69 = *(v75 - 1);
  v8 = MEMORY[0x1EEE9AC00](v75);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v64 = &v63 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83008, &qword_1DDA1A280);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v63 - v15;
  v17 = sub_1DDA13850();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v63 - v21;
  v24 = v23;
  v26 = v25;
  sub_1DD90ADB4(v73, v16, &qword_1ECD83008, &qword_1DDA1A280);
  if ((*(v26 + 48))(v16, 1, v24) == 1)
  {
    sub_1DD90D378(v16, &qword_1ECD83008, &qword_1DDA1A280);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v26 + 32))(v22, v16, v24);
  (*(v26 + 16))(v20, v22, v24);
  v28 = (*(v26 + 88))(v20, v24);
  v29 = *MEMORY[0x1E69DA4F8];
  v63 = v22;
  if (v28 != v29)
  {
    v75 = *(v26 + 8);
    v75(v20, v24);
    if (qword_1ECD827A8 == -1)
    {
LABEL_12:
      v37 = sub_1DDA14810();
      __swift_project_value_buffer(v37, qword_1ECDA20E0);
      v38 = sub_1DDA147F0();
      v39 = sub_1DDA14EE0();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1DD8F8000, v38, v39, "Grammars are not supported", v40, 2u);
        MEMORY[0x1E12B8CE0](v40, -1, -1);
      }

      v27 = v65;
      sub_1DDA13800();
      v42 = v66;
      v41 = v67;
      v43 = v68;
      (*(v66 + 16))(v67, v27, v68);
      v45 = v70;
      v44 = v71;
      (*(v70 + 104))(v41, *MEMORY[0x1E69DA4B0], v71);
      sub_1DD92BC10(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
      swift_allocError();
      (*(v45 + 16))(v46, v41, v44);
      swift_willThrow();
      (*(v45 + 8))(v41, v44);
      (*(v42 + 8))(v27, v43);
      v75(v63, v24);
      return v27;
    }

LABEL_25:
    swift_once();
    goto LABEL_12;
  }

  (*(v26 + 96))(v20, v24);
  v30 = v20;
  v31 = v69;
  v27 = v75;
  (*(v69 + 32))(v72, v30, v75);
  v32 = v64;
  (*(v31 + 16))();
  if ((*(v31 + 88))(v32, v27) == *MEMORY[0x1E69A0B70])
  {
    v70 = v26;
    (*(v31 + 96))(v32, v27);
    v27 = *(*v32 + 16);

    v73 = *(v27 + 2);
    if (v73)
    {
      v68 = v24;
      v33 = 0;
      v71 = v5 + 16;
      v24 = v5 + 8;
      v34 = v31 + 8;
      v69 = v34 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (v33 < *(v27 + 2))
      {
        v35 = v74;
        (*(v5 + 16))(v7, &v27[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v33], v74);
        sub_1DDA14480();
        (*(v5 + 8))(v7, v35);
        sub_1DD924F88(v10);
        if (v1)
        {

          v61 = *v34;
          v62 = v75;
          (*v34)(v10, v75);
          v61(v72, v62);
          (*(v70 + 8))(v63, v68);
          return v27;
        }

        ++v33;
        v36 = *v34;
        (*v34)(v10, v75);
        if (v73 == v33)
        {
          v24 = v68;
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

    v36 = *(v31 + 8);
LABEL_22:
    v60 = v63;
    v36(v72, v75);
    (*(v70 + 8))(v60, v24);
  }

  else
  {
    v47 = v63;
    v48 = v32;
    v49 = *(v31 + 8);
    v49(v48, v27);
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v50 = sub_1DDA14810();
    __swift_project_value_buffer(v50, qword_1ECDA20E0);
    v51 = sub_1DDA147F0();
    v52 = sub_1DDA14EE0();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = v26;
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1DD8F8000, v51, v52, "Only top level object schemas are supported", v54, 2u);
      v55 = v54;
      v26 = v53;
      v27 = v75;
      MEMORY[0x1E12B8CE0](v55, -1, -1);
    }

    sub_1DD92BC10(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
    v56 = v71;
    swift_allocError();
    v58 = v57;
    sub_1DDA13800();
    (*(v70 + 104))(v58, *MEMORY[0x1E69DA4B0], v56);
    swift_willThrow();
    v49(v72, v27);
    (*(v26 + 8))(v47, v24);
  }

  return v27;
}

uint64_t sub_1DD92A6AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD92BD10;

  return sub_1DD923700(a1, v4);
}

uint64_t sub_1DD92A74C(uint64_t a1)
{
  sub_1DDA136B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0);
  sub_1DDA13A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998);
  sub_1DDA13680();
  v8 = v1[13];
  v9 = v1[2];
  v6 = v1[15];
  v7 = v1[14];
  v4 = v1[17];
  v5 = v1[16];
  v2 = swift_task_alloc();
  *(v10 + 16) = v2;
  *v2 = v10;
  v2[1] = sub_1DD92BD10;

  return sub_1DD91E628(a1, v9, (v1 + 3), v8, v7, v6, v5, v4);
}