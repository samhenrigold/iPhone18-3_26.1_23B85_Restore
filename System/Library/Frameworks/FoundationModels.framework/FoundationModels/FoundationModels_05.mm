uint64_t sub_238879710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2388D0F58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2388797CC(uint64_t a1)
{
  result = sub_2388D0F58();
  if (v2 <= 0x3F)
  {
    result = sub_23887986C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23887986C()
{
  result = qword_27DF30658;
  if (!qword_27DF30658)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DF30658);
  }

  return result;
}

uint64_t sub_2388798F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_238879940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2388799C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_238879AA4(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_238879BEC(uint64_t a1)
{
  result = sub_238879C44(&qword_27DF30678, type metadata accessor for ServerModelInferenceSession.ResponseStream, &unk_2388D6848);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_238879C44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_238879CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30688;
  if (!qword_27DF30688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30688);
  }

  return result;
}

_OWORD *sub_238879D4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_238879DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_238879E0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_238879EEC()
{
  v1 = (type metadata accessor for ServerModelInferenceSession(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];

  v6 = type metadata accessor for ServerLanguageModel(0);
  v7 = *(v6 + 20);
  v8 = sub_2388D0F58();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = (v5 + *(v6 + 32));
  if (v9[3])
  {
    sub_2388158BC(v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23887A0A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23887A12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF306D0, &qword_2388D69B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23887A1F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23887A258()
{
  v1 = (type metadata accessor for OpenAIClient(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for OpenAIClient.ChatCompletionRequest(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v21 = *(*v5 + 64);
  v8 = sub_238810E44(&qword_27DF306F8, &unk_2388D69F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v20 = *(v9 + 64);
  swift_unknownObjectRelease();
  v11 = v0 + v3;
  v12 = sub_2388D0F58();
  (*(*(v12 - 8) + 8))(v11, v12);

  v13 = v0 + v7 + v5[12];
  v14 = type metadata accessor for OpenAIClient.ResponseFormat(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {

    v15 = v13 + *(v14 + 20);

    v16 = *(type metadata accessor for OpenAIClient.ResponseFormat.JSONSchemaWrapper(0) + 24);
    v17 = sub_2388D2178();
    (*(*(v17 - 8) + 8))(v15 + v16, v17);
  }

  v18 = (v7 + v21 + v10) & ~v10;
  (*(v9 + 8))(v0 + v18, v8);

  return MEMORY[0x2821FE8E8](v0, v18 + v20, v2 | v6 | v10 | 7);
}

uint64_t sub_23887A530(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OpenAIClient(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for OpenAIClient.ChatCompletionRequest(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_238810E44(&qword_27DF306F8, &unk_2388D69F0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_238833668;

  return sub_238871860(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_23887A6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30728;
  if (!qword_27DF30728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30728);
  }

  return result;
}

unint64_t sub_23887A744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30730;
  if (!qword_27DF30730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30730);
  }

  return result;
}

unint64_t sub_23887A800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30740;
  if (!qword_27DF30740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30740);
  }

  return result;
}

uint64_t sub_23887A8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2388D0F58();
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

uint64_t sub_23887A988(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2388D0F58();
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

void sub_23887AA44(uint64_t a1)
{
  sub_2388D0F58();
  if (v1 <= 0x3F)
  {
    sub_23887B4F0(319, &qword_27DF30088, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23887AB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
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
    v9 = sub_238810E44(&qword_27DF30760, &qword_2388D6A40);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_23887ABEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_238810E44(&qword_27DF30760, &qword_2388D6A40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23887AC9C(uint64_t a1)
{
  sub_23887B4F0(319, &qword_27DF30088, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23887B540(319, &qword_27DF30788, type metadata accessor for OpenAIClient.MessageContent.ImageURL);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23887ADAC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_23887ADC8(uint64_t a1)
{
  if ((*(a1 + 64) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

__n128 sub_23887ADE4(uint64_t a1, uint64_t a2)
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

uint64_t sub_23887AE08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 65))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 64);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23887AE50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_23887AEA8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 64) = a2;
  return result;
}

void sub_23887AF2C(uint64_t a1)
{
  sub_23887B4F0(319, &qword_27DF30088, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2388D2178();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23887AFF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2388D2178();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23887B0B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2388D2178();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23887B15C(uint64_t a1)
{
  result = sub_2388D2178();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23887B1EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_238810E44(&qword_27DF306D0, &qword_2388D69B8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23887B2BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238810E44(&qword_27DF306D0, &qword_2388D69B8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23887B36C(uint64_t a1)
{
  sub_23887B4F0(319, &qword_27DF307C0, &type metadata for OpenAIClient.ChatMessage, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_23887B4F0(319, &qword_27DF307C8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23887B4F0(319, &qword_27DF307D0, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23882BAA0(319, &qword_27DF307D8, &qword_27DF307E0, &qword_2388D6C98);
        if (v4 <= 0x3F)
        {
          sub_23887B540(319, &qword_27DF307E8, type metadata accessor for OpenAIClient.ResponseFormat);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23887B4F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23887B540(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2388D2E78();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23887B604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23887B6F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_23887B718(uint64_t a1, uint64_t a2)
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

uint64_t sub_23887B73C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_23887B798(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_23887B80C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23887B894(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    sub_23887BCB0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23887B92C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_23887BABC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v12 = a3 - v10 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v10 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 > v10)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v10;
    }

    else
    {
      v16 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v10 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        *(a1 + v11) = v16;
      }

      else
      {
        *(a1 + v11) = v16;
      }
    }

    else if (v15)
    {
      *(a1 + v11) = v16;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v11) = 0;
  }

  else if (v15)
  {
    *(a1 + v11) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v8 < 0x7FFFFFFF)
  {
    v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = (a2 - 1);
    }

    *v19 = v20;
  }

  else
  {
    v18 = *(v7 + 56);

    v18(a1, a2);
  }
}

void sub_23887BCB0(uint64_t a1)
{
  if (!qword_27DF30910)
  {
    sub_238810E8C(&qword_27DF30918, qword_2388D6D58);
    v1 = sub_2388D2788();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF30910);
    }
  }
}

uint64_t sub_23887BD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2388D0F58();
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

uint64_t sub_23887BE08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2388D0F58();
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

void sub_23887BEC0(uint64_t a1)
{
  sub_2388D0F58();
  if (v1 <= 0x3F)
  {
    sub_2388795CC();
    if (v2 <= 0x3F)
    {
      sub_23887BF5C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_23887BF5C()
{
  result = qword_27DF30930;
  if (!qword_27DF30930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF30930);
  }

  return result;
}

uint64_t sub_23887BFA8(uint64_t a1, int a2)
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

uint64_t sub_23887BFF0(uint64_t result, int a2, int a3)
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

uint64_t sub_23887C0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = sub_238810E44(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_23887C178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = sub_238810E44(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_23887C20C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_23887C280(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23887C280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_238810E8C(&qword_27DF306B8, &unk_2388D6990);
    v7 = sub_238815180(&qword_27DF306C0, &qword_27DF306B8, &unk_2388D6990, MEMORY[0x277D858E0]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_23887C340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30970;
  if (!qword_27DF30970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30970);
  }

  return result;
}

unint64_t sub_23887C39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30978;
  if (!qword_27DF30978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30978);
  }

  return result;
}

unint64_t sub_23887C3F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2388D3138();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23887C43C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2388D3138();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23887C488(uint64_t a1, uint64_t a2)
{
  v2 = sub_2388D3138();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23887C4D4(uint64_t a1)
{
  v2 = type metadata accessor for OpenAIClient.MessageContent(0) - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  if (*(a1 + 16) == 1)
  {
    sub_23887A1F0(a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpenAIClient.MessageContent);
    if (*v5)
    {
      v7 = sub_2388D3368();

      if ((v7 & 1) == 0)
      {
        v6 = 0;
LABEL_7:
        sub_238879E0C(v5, type metadata accessor for OpenAIClient.MessageContent);
        return v6;
      }
    }

    else
    {
    }

    v6 = *(v5 + 1);

    goto LABEL_7;
  }

  return v6;
}

uint64_t sub_23887C63C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
  {

    return 2;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_23887C760(void *a1)
{
  v3 = sub_238810E44(&qword_27DF30CA8, &qword_2388D8370);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = a1[4];
  v8 = sub_238815878(a1, a1[3]);
  sub_238880198(v8, v9, v10);
  sub_2388D3538();
  if (!v1)
  {
    v14 = 0;
    v7 = sub_2388D31D8();
    v13 = 1;
    sub_2388D31D8();
    (*(v4 + 8))(v6, v3);
  }

  sub_2388158BC(a1);
  return v7;
}

uint64_t sub_23887C944(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_23887CA54@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF30A28, &qword_2388D72E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_23887E268(v9, v10, v11);
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  LOBYTE(v35[0]) = 0;
  v12 = sub_2388D31D8();
  v14 = v13;
  v30 = v12;
  LOBYTE(v35[0]) = 1;
  v15 = sub_2388D31D8();
  v17 = v16;
  v29 = v15;
  v38 = 2;
  sub_23887E2BC(v15, v16, v18);
  sub_2388D31F8();
  (*(v6 + 8))(v8, v5);
  v28 = v36;
  v19 = v37;
  v27 = *(&v36 + 1);
  v20 = *(&v37 + 1);
  v21 = v30;
  *&v31 = v30;
  *(&v31 + 1) = v14;
  v22 = v29;
  *&v32 = v29;
  *(&v32 + 1) = v17;
  v33 = v36;
  v34 = v37;
  sub_23887E310(&v31, v35);
  sub_2388158BC(a1);
  v35[0] = v21;
  v35[1] = v14;
  v35[2] = v22;
  v35[3] = v17;
  v35[4] = v28;
  v35[5] = v27;
  v35[6] = v19;
  v35[7] = v20;
  result = sub_23887E348(v35);
  v24 = v32;
  *a2 = v31;
  a2[1] = v24;
  v25 = v34;
  a2[2] = v33;
  a2[3] = v25;
  return result;
}

uint64_t sub_23887CD1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616D65686373 && a2 == 0xE600000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746369727473 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_23887CE7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF30D40, &qword_2388D8810);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_238880A44(v9, v10, v11);
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v27 = 0;
  v12 = sub_2388D3178();
  v14 = v13;
  v23 = v12;
  v26 = 1;
  v15 = sub_2388D3178();
  v17 = v16;
  v22 = v15;
  sub_238810E44(&qword_27DF30D50, &qword_2388D8818);
  v25 = 2;
  sub_238880A98();
  sub_2388D31B8();
  (*(v6 + 8))(v8, v5);
  v18 = v24;
  result = sub_2388158BC(a1);
  v20 = v22;
  *a2 = v23;
  a2[1] = v14;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v18;
  return result;
}

unint64_t sub_23887D0A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2388D3138();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23887D0F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF30C90, &qword_2388D8368);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_2388800F0(v9, v10, v11);
  v12 = sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  sub_238880144(v12, v13, v14);
  sub_2388D31F8();
  (*(v6 + 8))(v8, v5);
  v15 = v22;
  v18 = v21;
  v19 = v20;
  result = sub_2388158BC(a1);
  v17 = v18;
  *a2 = v19;
  *(a2 + 16) = v17;
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_23887D284(void *a1)
{
  v3 = sub_238810E44(&qword_27DF30CD0, qword_2388D8388);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = a1[4];
  v8 = sub_238815878(a1, a1[3]);
  sub_238880240(v8, v9, v10);
  sub_2388D3538();
  if (!v1)
  {
    v14 = 0;
    v7 = sub_2388D3178();
    v13 = 1;
    sub_2388D3178();
    (*(v4 + 8))(v6, v3);
  }

  sub_2388158BC(a1);
  return v7;
}

uint64_t sub_23887D468(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_23887D5C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF30B40, &qword_2388D7340);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_23887E9CC(v9, v10, v11);
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  LOBYTE(v38[0]) = 0;
  v12 = sub_2388D31E8();
  LOBYTE(v38[0]) = 1;
  v13 = sub_2388D3178();
  v15 = v14;
  v32 = v13;
  LOBYTE(v38[0]) = 2;
  v16 = sub_2388D3178();
  v31 = v17;
  v30 = v16;
  v42 = 3;
  sub_23887EA20(v16, v17, v18);
  sub_2388D31B8();
  (*(v6 + 8))(v8, v5);
  v29 = v39;
  v28 = v40;
  v19 = v41;
  v27 = *(&v40 + 1);
  *&v33 = v12;
  v20 = v32;
  *(&v33 + 1) = v32;
  *&v34 = v15;
  v21 = v30;
  v22 = v31;
  *(&v34 + 1) = v30;
  *&v35 = v31;
  *(&v35 + 1) = v39;
  v36 = v40;
  v37 = v41;
  sub_238879D5C(&v33, v38);
  sub_2388158BC(a1);
  v38[0] = v12;
  v38[1] = v20;
  v38[2] = v15;
  v38[3] = v21;
  v38[4] = v22;
  v38[5] = v29;
  v38[6] = v28;
  v38[7] = v27;
  v38[8] = v19;
  result = sub_238879D94(v38);
  v24 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v24;
  *(a2 + 64) = v37;
  v25 = v34;
  *a2 = v33;
  *(a2 + 16) = v25;
  return result;
}

uint64_t sub_23887D8E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736563696F6863 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_23887D9F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF30998, &qword_2388D72B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_23887DF08(v9, v10, v11);
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v25 = 0;
  v12 = sub_2388D31D8();
  v14 = v13;
  v21 = v12;
  v24 = 1;
  v19 = sub_2388D31D8();
  v20 = v15;
  sub_238810E44(&qword_27DF309A8, &qword_2388D72B8);
  v23 = 2;
  sub_23887DF5C();
  sub_2388D31F8();
  (*(v6 + 8))(v8, v5);
  v16 = v22;
  result = sub_2388158BC(a1);
  *a2 = v21;
  a2[1] = v14;
  v18 = v20;
  a2[2] = v19;
  a2[3] = v18;
  a2[4] = v16;
  return result;
}

unint64_t sub_23887DC68(uint64_t a1, uint64_t a2)
{
  v2 = sub_2388D3138();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23887DCB4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF30980, &qword_2388D72A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_23887DE60(v9, v10, v11);
  v12 = sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  sub_23887DEB4(v12, v13, v14);
  sub_2388D31F8();
  (*(v6 + 8))(v8, v5);
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v21 = v25;
  result = sub_2388158BC(a1);
  v16 = v19;
  *a2 = v18;
  a2[1] = v16;
  v17 = v21;
  a2[2] = v20;
  a2[3] = v17;
  return result;
}

unint64_t sub_23887DE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30988;
  if (!qword_27DF30988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30988);
  }

  return result;
}

unint64_t sub_23887DEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30990;
  if (!qword_27DF30990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30990);
  }

  return result;
}

unint64_t sub_23887DF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF309A0;
  if (!qword_27DF309A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF309A0);
  }

  return result;
}

unint64_t sub_23887DF5C()
{
  result = qword_27DF309B0;
  if (!qword_27DF309B0)
  {
    v1 = sub_238810E8C(&qword_27DF309A8, &qword_2388D72B8);
    sub_23887DFE0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF309B0);
  }

  return result;
}

unint64_t sub_23887DFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF309B8;
  if (!qword_27DF309B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF309B8);
  }

  return result;
}

unint64_t sub_23887E034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF309C8;
  if (!qword_27DF309C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF309C8);
  }

  return result;
}

unint64_t sub_23887E088()
{
  result = qword_27DF309D8;
  if (!qword_27DF309D8)
  {
    v1 = sub_238810E8C(&qword_27DF309D0, &qword_2388D72C8);
    sub_23887E10C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF309D8);
  }

  return result;
}

unint64_t sub_23887E10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF309E0;
  if (!qword_27DF309E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF309E0);
  }

  return result;
}

unint64_t sub_23887E160()
{
  result = qword_27DF309E8;
  if (!qword_27DF309E8)
  {
    sub_238810E8C(&qword_27DF307E0, &qword_2388D6C98);
    sub_238879C44(&qword_27DF309F0, type metadata accessor for OpenAIClient.Tool, &unk_2388D6ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF309E8);
  }

  return result;
}

unint64_t sub_23887E214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30A08;
  if (!qword_27DF30A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30A08);
  }

  return result;
}

unint64_t sub_23887E268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30A30;
  if (!qword_27DF30A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30A30);
  }

  return result;
}

unint64_t sub_23887E2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30A38;
  if (!qword_27DF30A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30A38);
  }

  return result;
}

unint64_t sub_23887E378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30A48;
  if (!qword_27DF30A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30A48);
  }

  return result;
}

unint64_t sub_23887E3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30A58;
  if (!qword_27DF30A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30A58);
  }

  return result;
}

unint64_t sub_23887E420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30A60;
  if (!qword_27DF30A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30A60);
  }

  return result;
}

uint64_t sub_23887E474(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF30760, &qword_2388D6A40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23887E4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30A78;
  if (!qword_27DF30A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30A78);
  }

  return result;
}

unint64_t sub_23887E538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30A88;
  if (!qword_27DF30A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30A88);
  }

  return result;
}

unint64_t sub_23887E58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30A98;
  if (!qword_27DF30A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30A98);
  }

  return result;
}

unint64_t sub_23887E5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30AA0;
  if (!qword_27DF30AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30AA0);
  }

  return result;
}

unint64_t sub_23887E634()
{
  result = qword_27DF30AB0;
  if (!qword_27DF30AB0)
  {
    sub_238810E8C(&qword_27DF30AA8, &qword_2388D7308);
    sub_238879C44(&qword_27DF30AB8, type metadata accessor for OpenAIClient.MessageContent, &unk_2388D7100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30AB0);
  }

  return result;
}

unint64_t sub_23887E6E8()
{
  result = qword_27DF30AC8;
  if (!qword_27DF30AC8)
  {
    v1 = sub_238810E8C(&qword_27DF30AC0, &qword_2388D7310);
    sub_23887E76C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30AC8);
  }

  return result;
}

unint64_t sub_23887E76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30AD0;
  if (!qword_27DF30AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30AD0);
  }

  return result;
}

unint64_t sub_23887E7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30AE0;
  if (!qword_27DF30AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30AE0);
  }

  return result;
}

unint64_t sub_23887E87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30AF0;
  if (!qword_27DF30AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30AF0);
  }

  return result;
}

unint64_t sub_23887E8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30B08;
  if (!qword_27DF30B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B08);
  }

  return result;
}

unint64_t sub_23887E924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30B18;
  if (!qword_27DF30B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B18);
  }

  return result;
}

unint64_t sub_23887E978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30B30;
  if (!qword_27DF30B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B30);
  }

  return result;
}

unint64_t sub_23887E9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30B48;
  if (!qword_27DF30B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B48);
  }

  return result;
}

unint64_t sub_23887EA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30B50;
  if (!qword_27DF30B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OpenAIClient.ChatCompletionRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OpenAIClient.ChatCompletionRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_23887EC94(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23887ECA0(uint64_t a1, int a2)
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

uint64_t sub_23887ECE8(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for OpenAIClient.ChatMessage.Role(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OpenAIClient.ChatMessage.Role(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23887EE98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_23887EEF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_23887EF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30B58;
  if (!qword_27DF30B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B58);
  }

  return result;
}

unint64_t sub_23887EFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30B60;
  if (!qword_27DF30B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B60);
  }

  return result;
}

unint64_t sub_23887F00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30B68;
  if (!qword_27DF30B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B68);
  }

  return result;
}

unint64_t sub_23887F064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30B70;
  if (!qword_27DF30B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B70);
  }

  return result;
}

unint64_t sub_23887F0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30B78;
  if (!qword_27DF30B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B78);
  }

  return result;
}

unint64_t sub_23887F114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30B80;
  if (!qword_27DF30B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B80);
  }

  return result;
}

unint64_t sub_23887F16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30B88;
  if (!qword_27DF30B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B88);
  }

  return result;
}

unint64_t sub_23887F1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30B90;
  if (!qword_27DF30B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B90);
  }

  return result;
}

unint64_t sub_23887F21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30B98;
  if (!qword_27DF30B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30B98);
  }

  return result;
}

unint64_t sub_23887F274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30BA0;
  if (!qword_27DF30BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BA0);
  }

  return result;
}

unint64_t sub_23887F2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30BA8;
  if (!qword_27DF30BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BA8);
  }

  return result;
}

unint64_t sub_23887F324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30BB0;
  if (!qword_27DF30BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BB0);
  }

  return result;
}

unint64_t sub_23887F37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30BB8;
  if (!qword_27DF30BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BB8);
  }

  return result;
}

unint64_t sub_23887F3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30BC0;
  if (!qword_27DF30BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BC0);
  }

  return result;
}

unint64_t sub_23887F42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30BC8;
  if (!qword_27DF30BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BC8);
  }

  return result;
}

unint64_t sub_23887F484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30BD0;
  if (!qword_27DF30BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BD0);
  }

  return result;
}

unint64_t sub_23887F4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30BD8;
  if (!qword_27DF30BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BD8);
  }

  return result;
}

unint64_t sub_23887F534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30BE0;
  if (!qword_27DF30BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BE0);
  }

  return result;
}

unint64_t sub_23887F58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30BE8;
  if (!qword_27DF30BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BE8);
  }

  return result;
}

unint64_t sub_23887F5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30BF0;
  if (!qword_27DF30BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BF0);
  }

  return result;
}

unint64_t sub_23887F63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30BF8;
  if (!qword_27DF30BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30BF8);
  }

  return result;
}

unint64_t sub_23887F694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30C00;
  if (!qword_27DF30C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C00);
  }

  return result;
}

unint64_t sub_23887F6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30C08;
  if (!qword_27DF30C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C08);
  }

  return result;
}

unint64_t sub_23887F744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30C10;
  if (!qword_27DF30C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C10);
  }

  return result;
}

unint64_t sub_23887F79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30C18;
  if (!qword_27DF30C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C18);
  }

  return result;
}

unint64_t sub_23887F7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30C20;
  if (!qword_27DF30C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C20);
  }

  return result;
}

unint64_t sub_23887F84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30C28;
  if (!qword_27DF30C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C28);
  }

  return result;
}

unint64_t sub_23887F8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30C30;
  if (!qword_27DF30C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C30);
  }

  return result;
}

unint64_t sub_23887F8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30C38;
  if (!qword_27DF30C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C38);
  }

  return result;
}

unint64_t sub_23887F954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30C40;
  if (!qword_27DF30C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C40);
  }

  return result;
}

unint64_t sub_23887F9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30C48;
  if (!qword_27DF30C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C48);
  }

  return result;
}

unint64_t sub_23887FA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30C50;
  if (!qword_27DF30C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C50);
  }

  return result;
}

unint64_t sub_23887FA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30C58;
  if (!qword_27DF30C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C58);
  }

  return result;
}

unint64_t sub_23887FAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30C60;
  if (!qword_27DF30C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C60);
  }

  return result;
}

unint64_t sub_23887FB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30C68;
  if (!qword_27DF30C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C68);
  }

  return result;
}

unint64_t sub_23887FB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30C70;
  if (!qword_27DF30C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C70);
  }

  return result;
}

unint64_t sub_23887FBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30C78;
  if (!qword_27DF30C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C78);
  }

  return result;
}

uint64_t sub_23887FC10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D61726170 && a2 == 0xE500000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_23887FD70@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF30C80, &qword_2388D8360);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_238880064(v9, v10, v11);
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  LOBYTE(v32[0]) = 0;
  v12 = sub_2388D31D8();
  v27 = v13;
  LOBYTE(v32[0]) = 1;
  *&v26 = sub_2388D31D8();
  *(&v26 + 1) = v14;
  LOBYTE(v32[0]) = 2;
  *&v25 = sub_2388D3178();
  *(&v25 + 1) = v15;
  v38 = 3;
  v16 = sub_2388D3178();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  v19 = v27;
  *&v28 = v12;
  *(&v28 + 1) = v27;
  v20 = *(&v25 + 1);
  v21 = v26;
  v29 = v26;
  v30 = v25;
  *&v31 = v16;
  *(&v31 + 1) = v18;
  sub_2388800B8(&v28, v32);
  sub_2388158BC(a1);
  v32[0] = v12;
  v32[1] = v19;
  v33 = __PAIR128__(*(&v26 + 1), v21);
  v34 = v25;
  v35 = v20;
  v36 = v16;
  v37 = v18;
  result = sub_23887E84C(v32);
  v23 = v29;
  *a2 = v28;
  a2[1] = v23;
  v24 = v31;
  a2[2] = v30;
  a2[3] = v24;
  return result;
}

unint64_t sub_238880064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30C88;
  if (!qword_27DF30C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C88);
  }

  return result;
}

unint64_t sub_2388800F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30C98;
  if (!qword_27DF30C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30C98);
  }

  return result;
}

unint64_t sub_238880144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30CA0;
  if (!qword_27DF30CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30CA0);
  }

  return result;
}

unint64_t sub_238880198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30CB0;
  if (!qword_27DF30CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30CB0);
  }

  return result;
}

unint64_t sub_2388801EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30CC0;
  if (!qword_27DF30CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30CC0);
  }

  return result;
}

unint64_t sub_238880240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30CD8;
  if (!qword_27DF30CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30CD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LanguageModelFeedback.CodableIssue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LanguageModelFeedback.CodableIssue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TranscriptCoderV1.Role(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TranscriptCoderV1.Role(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_238880558(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_2388805B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_238880628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30CE0;
  if (!qword_27DF30CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30CE0);
  }

  return result;
}

unint64_t sub_238880680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30CE8;
  if (!qword_27DF30CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30CE8);
  }

  return result;
}

unint64_t sub_2388806D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30CF0;
  if (!qword_27DF30CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30CF0);
  }

  return result;
}

unint64_t sub_238880730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30CF8;
  if (!qword_27DF30CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30CF8);
  }

  return result;
}

unint64_t sub_238880788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30D00;
  if (!qword_27DF30D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D00);
  }

  return result;
}

unint64_t sub_2388807E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30D08;
  if (!qword_27DF30D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D08);
  }

  return result;
}

unint64_t sub_238880838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30D10;
  if (!qword_27DF30D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D10);
  }

  return result;
}

unint64_t sub_238880890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30D18;
  if (!qword_27DF30D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D18);
  }

  return result;
}

unint64_t sub_2388808E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30D20;
  if (!qword_27DF30D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D20);
  }

  return result;
}

unint64_t sub_238880940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30D28;
  if (!qword_27DF30D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D28);
  }

  return result;
}

unint64_t sub_238880998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30D30;
  if (!qword_27DF30D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D30);
  }

  return result;
}

unint64_t sub_2388809F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30D38;
  if (!qword_27DF30D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D38);
  }

  return result;
}

unint64_t sub_238880A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30D48;
  if (!qword_27DF30D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D48);
  }

  return result;
}

unint64_t sub_238880A98()
{
  result = qword_27DF30D58;
  if (!qword_27DF30D58)
  {
    v1 = sub_238810E8C(&qword_27DF30D50, &qword_2388D8818);
    sub_238880B1C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D58);
  }

  return result;
}

unint64_t sub_238880B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30D60;
  if (!qword_27DF30D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D60);
  }

  return result;
}

uint64_t sub_238880B70(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_238880C00(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_238880CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30D68;
  if (!qword_27DF30D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D68);
  }

  return result;
}

unint64_t sub_238880D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30D70;
  if (!qword_27DF30D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D70);
  }

  return result;
}

unint64_t sub_238880D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30D78;
  if (!qword_27DF30D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D78);
  }

  return result;
}

unint64_t sub_238880E50(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_2388D3008();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_238880F74(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2388D29E8();
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
    v5 = MEMORY[0x23EE66C50](15, a1 >> 16);
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

unint64_t sub_238880FF0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_238881088(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_238880E50(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_238881088(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_238880F74(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2388810FC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_238880FF0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_2388D2F98();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_2388D3008() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_23888124C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2388D2898();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2388D2948();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    v35 = MEMORY[0x277D84F90];
    result = sub_2388B83CC(0, v5 & ~(v5 >> 63), 0);
    if (v7 < 0)
    {
      goto LABEL_58;
    }

    v32 = v4;
    v33 = v7;
    v9 = 0;
    v6 = v35;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v12 = sub_2388D2A08();
      v13 = v11;
      if (v12 == 2573 && v11 == 0xE200000000000000)
      {
        goto LABEL_7;
      }

      result = sub_2388D3368();
      if (result)
      {
        goto LABEL_27;
      }

      if ((v13 & 0x2000000000000000) != 0)
      {
        v15 = HIBYTE(v13) & 0xF;
      }

      else
      {
        v15 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (!v15)
      {
        goto LABEL_52;
      }

      if ((v13 & 0x1000000000000000) != 0)
      {
        v20 = sub_2388D28E8();
      }

      else
      {
        if ((v13 & 0x2000000000000000) != 0)
        {
          v17 = v12;
        }

        else
        {
          v16 = ((v12 & 0x1000000000000000) != 0 ? (v13 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_2388D3008());
          v17 = *v16;
        }

        v18 = v17;
        v19 = (__clz(~v17) - 24) << 16;
        v20 = v18 < 0 ? v19 : 65541;
      }

      if (v20 >> 14 == 4 * v15)
      {
        result = sub_2388810FC(v12, v13);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_59;
        }

        if ((result & 0xFFFFFF80) == 0)
        {
          break;
        }
      }

LABEL_41:
      v35 = v6;
      v25 = *(v6 + 16);
      v24 = *(v6 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2388B83CC((v24 > 1), v25 + 1, 1);
        v6 = v35;
      }

      *(v6 + 16) = v25 + 1;
      v26 = v6 + 16 * v25;
      *(v26 + 32) = v12;
      *(v26 + 40) = v13;
      result = sub_2388D2958();
      ++v9;
      if (v10 == v33)
      {
        goto LABEL_48;
      }
    }

    result = sub_2388810FC(v12, v13);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_60;
    }

    if ((result & 0xFFFFFF00) != 0)
    {
      goto LABEL_54;
    }

LABEL_27:
    result = sub_2388D3368();
    if (result)
    {
LABEL_7:
      v14 = 92;
    }

    else
    {
      if ((v13 & 0x2000000000000000) != 0)
      {
        v21 = HIBYTE(v13) & 0xF;
      }

      else
      {
        v21 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (!v21)
      {
        goto LABEL_53;
      }

      if ((v13 & 0x1000000000000000) != 0)
      {
        result = sub_2388D28E8();
      }

      else
      {
        result = sub_2388D2F88() << 16;
      }

      if (result >> 14 != 4 * v21)
      {
        goto LABEL_55;
      }

      result = sub_2388810FC(v12, v13);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_61;
      }

      if ((result & 0xFFFFFF80) != 0)
      {
        goto LABEL_56;
      }

      result = sub_2388810FC(v12, v13);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_62;
      }

      if ((result & 0xFFFFFF00) != 0)
      {
        goto LABEL_57;
      }

      v14 = ((result + 50) % 0x5Fu + 32);
    }

    v34 = v14;
    v12 = sub_2388D2928();
    v23 = v22;

    v13 = v23;
    goto LABEL_41;
  }

LABEL_48:
  v35 = v6;

  sub_238810E44(&qword_27DF30D80, &unk_2388D8960);
  sub_23888165C();
  sub_2388D2A28();
  result = sub_2388D0FA8();
  if (v27 >> 60 == 15)
  {
    goto LABEL_63;
  }

  v28 = result;
  v29 = v27;
  sub_2388D2888();
  result = sub_2388D2878();
  if (v30)
  {
    v31 = result;
    sub_238827FA4(v28, v29);

    return v31;
  }

  else
  {
LABEL_64:
    __break(1u);
  }

  return result;
}

unint64_t sub_23888165C()
{
  result = qword_27DF30D88;
  if (!qword_27DF30D88)
  {
    sub_238810E8C(&qword_27DF30D80, &unk_2388D8960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30D88);
  }

  return result;
}

BOOL SystemLanguageModel.isAvailable.getter()
{
  v1 = v0;
  os_unfair_lock_lock((v0 + 16));
  swift_getKeyPath();
  sub_238886430(&qword_27DF2FF58, type metadata accessor for SystemLanguageModel, &protocol conformance descriptor for SystemLanguageModel);
  sub_2388D1158();

  v2 = *(v0 + 20);
  os_unfair_lock_unlock(v1 + 4);
  return v2 == 3;
}

uint64_t SystemLanguageModel.supportedLanguages.getter()
{
  if (qword_27DF2F9C8 != -1)
  {
    swift_once();
  }
}

uint64_t static SystemLanguageModel.default.getter()
{
  if (qword_27DF2F9C0 != -1)
  {
    swift_once();
  }
}

void SystemLanguageModel.availability.getter(_BYTE *a1@<X8>)
{
  os_unfair_lock_lock((v1 + 16));
  swift_getKeyPath();
  sub_238886430(&qword_27DF2FF58, type metadata accessor for SystemLanguageModel, &protocol conformance descriptor for SystemLanguageModel);
  sub_2388D1158();

  *a1 = *(v1 + 20);
  os_unfair_lock_unlock((v1 + 16));
}

void sub_2388818EC(os_unfair_lock_s **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 4);
  swift_getKeyPath();
  sub_238886430(&qword_27DF2FF58, type metadata accessor for SystemLanguageModel, &protocol conformance descriptor for SystemLanguageModel);
  sub_2388D1158();

  os_unfair_lock_opaque = v3[5]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v3 + 4);
  *a2 = os_unfair_lock_opaque;
}

void sub_2388819A8(char *a1, os_unfair_lock_s **a2)
{
  v2 = *a2;
  os_unfair_lock_lock(*a2 + 4);
  swift_getKeyPath();
  sub_238886430(&qword_27DF2FF58, type metadata accessor for SystemLanguageModel, &protocol conformance descriptor for SystemLanguageModel);
  sub_2388D1148();

  os_unfair_lock_unlock(v2 + 4);
}

uint64_t type metadata accessor for SystemLanguageModel(uint64_t a1)
{
  result = qword_27DF30DC8;
  if (!qword_27DF30DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238881AF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x54746E65746E6F63;
  }

  else
  {
    v3 = 0x6C6172656E6567;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEE00676E69676761;
  }

  if (*a2)
  {
    v5 = 0x54746E65746E6F63;
  }

  else
  {
    v5 = 0x6C6172656E6567;
  }

  if (*a2)
  {
    v6 = 0xEE00676E69676761;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2388D3368();
  }

  return v8 & 1;
}

uint64_t sub_238881BA4()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238881C34(uint64_t a1)
{
  sub_2388D2938();
}

uint64_t sub_238881CB0()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238881D3C@<X0>(char *a2@<X8>)
{
  v3 = sub_2388D3138();

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

void sub_238881D9C(uint64_t *a1@<X8>)
{
  v2 = 0x6C6172656E6567;
  if (*v1)
  {
    v2 = 0x54746E65746E6F63;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEE00676E69676761;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static SystemLanguageModel.UseCase.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x54746E65746E6F63;
  }

  else
  {
    v3 = 0x6C6172656E6567;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEE00676E69676761;
  }

  if (*a2)
  {
    v5 = 0x54746E65746E6F63;
  }

  else
  {
    v5 = 0x6C6172656E6567;
  }

  if (*a2)
  {
    v6 = 0xEE00676E69676761;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2388D3368();
  }

  return v8 & 1;
}

uint64_t sub_238881E9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v72 = a1;
  v3 = sub_2388D1948();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2388D1968();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x28223BE20](v5);
  v65 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2388D1978();
  v8 = *(v7 - 8);
  v70 = v7;
  v71 = v8;
  MEMORY[0x28223BE20](v7);
  v66 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2388D12F8();
  v69 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v58 - v14;
  v16 = sub_2388D1308();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2388D1338();
  v67 = *(v20 - 8);
  v68 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_opt_self() processInfo];
  v24 = [v23 environment];

  v25 = sub_2388D2758();
  if (!*(v25 + 16) || (sub_238820AA8(0xD000000000000027, 0x80000002388DF340), (v26 & 1) == 0))
  {

    goto LABEL_8;
  }

  v59 = a2;

  v27 = sub_2388D3138();

  if (v27 == 2)
  {
    result = (*(v71 + 8))(v72, v70);
    v38 = 2;
    goto LABEL_17;
  }

  if (v27 == 1)
  {
    result = (*(v71 + 8))(v72, v70);
    v38 = 1;
LABEL_17:
    a2 = v59;
    goto LABEL_18;
  }

  a2 = v59;
  if (!v27)
  {
    goto LABEL_13;
  }

LABEL_8:
  (*(v17 + 104))(v19, *MEMORY[0x277D36C98], v16);
  sub_2388D1328();
  (*(v17 + 8))(v19, v16);
  sub_2388D1318();
  v28 = v69;
  (*(v69 + 104))(v13, *MEMORY[0x277D36C88], v10);
  v29 = sub_2388D12E8();
  v30 = *(v28 + 8);
  v30(v13, v10);
  v30(v15, v10);
  (*(v67 + 8))(v22, v68);
  if ((v29 & 1) == 0)
  {
LABEL_13:
    result = (*(v71 + 8))(v72, v70);
LABEL_14:
    v38 = 0;
    goto LABEL_18;
  }

  v32 = v71;
  v31 = v72;
  v33 = v66;
  v34 = v70;
  (*(v71 + 16))(v66, v72, v70);
  v35 = (*(v32 + 88))(v33, v34);
  if (v35 == *MEMORY[0x277D0DFA8])
  {
    v36 = *(v32 + 8);
    v36(v31, v34);
LABEL_11:
    result = (v36)(v33, v34);
    goto LABEL_12;
  }

  if (v35 != *MEMORY[0x277D0DFB0])
  {
    v47 = *MEMORY[0x277D0E278];
    v36 = *(v32 + 8);
    v48 = v35;
    result = (v36)(v31, v34);
    if (v48 == v47)
    {
      v38 = 3;
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  (*(v32 + 96))(v33, v34);
  (*(v63 + 32))(v65, v33, v64);
  v39 = sub_2388D1958();
  v40 = *MEMORY[0x277D0E110];
  v42 = v60;
  v41 = v61;
  v43 = v62;
  v69 = *(v61 + 104);
  (v69)(v60, v40, v62);
  v44 = sub_2388B0C70(v42, v39);
  v45 = v43;

  v46 = *(v41 + 8);
  v46(v42, v45);
  if (v44)
  {
    (*(v32 + 8))(v31, v34);
    result = (*(v63 + 8))(v65, v64);
    goto LABEL_14;
  }

  v49 = v45;
  v50 = sub_2388D1958();
  (v69)(v42, *MEMORY[0x277D0E070], v49);
  v51 = sub_2388B0C70(v42, v50);

  v46(v42, v49);
  v52 = v65;
  if ((v51 & 1) == 0)
  {
    (*(v32 + 8))(v31, v34);
    result = (*(v63 + 8))(v52, v64);
    v38 = 1;
    goto LABEL_18;
  }

  v53 = v63;
  if (qword_27DF2F9E0 != -1)
  {
    swift_once();
  }

  v54 = sub_2388D2408();
  sub_2388413AC(v54, qword_27DF3F8E0);
  v55 = sub_2388D23E8();
  v56 = sub_2388D2E18();
  if (os_log_type_enabled(v55, v56))
  {
    v38 = 2;
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_23880E000, v55, v56, "Running as root is not supported.", v57, 2u);
    MEMORY[0x23EE68030](v57, -1, -1);

    (*(v32 + 8))(v31, v34);
    result = (*(v53 + 8))(v52, v64);
    goto LABEL_18;
  }

  (*(v32 + 8))(v31, v34);
  result = (*(v53 + 8))(v52, v64);
LABEL_12:
  v38 = 2;
LABEL_18:
  *a2 = v38;
  return result;
}

uint64_t SystemLanguageModel.deinit()
{
  v1 = v0 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock));
  v2 = v1 + 8;
  if (*(v1 + 8))
  {
    sub_2388D2C08();
  }

  os_unfair_lock_unlock(v1);
  v3 = OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle;
  v4 = sub_2388D1448();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_238827E88(v2, &qword_27DF30DB0, &qword_2388D8998);
  v5 = OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel___observationRegistrar;
  v6 = sub_2388D1198();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t SystemLanguageModel.__deallocating_deinit()
{
  v1 = v0 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock));
  v2 = v1 + 8;
  if (*(v1 + 8))
  {
    sub_2388D2C08();
  }

  os_unfair_lock_unlock(v1);
  v3 = OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle;
  v4 = sub_2388D1448();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_238827E88(v2, &qword_27DF30DB0, &qword_2388D8998);
  v5 = OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel___observationRegistrar;
  v6 = sub_2388D1198();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_238882A3C(uint64_t *a1, uint64_t a2)
{
  v25[1] = a2;
  v30 = a1;
  v2 = sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = v25 - v3;
  v28 = sub_2388D19E8();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2388D1998();
  v7 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2388D1A18();
  v10 = *(v29 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v29);
  v27 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v25 - v13;

  (*(v4 + 104))(v6, *MEMORY[0x277D0E2D8], v28);

  sub_2388D1988();
  v15 = v14;
  v25[0] = v14;
  sub_2388D1A08();
  (*(v7 + 8))(v9, v26);
  v16 = sub_2388D2BE8();
  v17 = v31;
  (*(*(v16 - 8) + 56))(v31, 1, 1, v16);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v27;
  v20 = v29;
  (*(v10 + 16))(v27, v15, v29);
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v10 + 32))(v22 + v21, v19, v20);
  *(v22 + ((v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v23 = sub_2388867B0(0, 0, v17, &unk_2388D8CF0, v22);
  result = (*(v10 + 8))(v25[0], v20);
  *v30 = v23;
  return result;
}

uint64_t sub_238882E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_2388D1978();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  sub_238810E44(&qword_27DF30E08, &qword_2388D8CF8);
  v5[13] = swift_task_alloc();
  v7 = sub_2388D19D8();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = sub_2388D19C8();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238882FEC, 0, 0);
}

uint64_t sub_238882FEC()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  sub_2388D19F8();
  sub_2388D19B8();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = sub_238886430(&qword_27DF30E10, MEMORY[0x277D0E2A8], MEMORY[0x277D0E2B0]);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_238883128;
  v6 = v0[17];
  v7 = v0[13];

  return MEMORY[0x282200308](v7, v6, v4);
}

uint64_t sub_238883128()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_238883578;
  }

  else
  {
    v2 = sub_23888323C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238883258()
{
  v18 = v0;
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(v0[12], v1, v2);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = v0[11];
      v7 = v0[12];
      v8 = v0[9];
      v9 = v0[10];
      (*(v9 + 16))(v6, v7, v8);
      sub_238881E9C(v6, v17);
      LOBYTE(v6) = v17[0];
      os_unfair_lock_lock(v5 + 4);
      swift_getKeyPath();
      v10 = swift_task_alloc();
      *(v10 + 16) = v5 + 5;
      *(v10 + 24) = v6;
      v0[6] = v5;
      sub_238886430(&qword_27DF2FF58, type metadata accessor for SystemLanguageModel, &protocol conformance descriptor for SystemLanguageModel);
      sub_2388D1148();

      os_unfair_lock_unlock(v5 + 4);

      (*(v9 + 8))(v7, v8);
      v11 = sub_238886430(&qword_27DF30E10, MEMORY[0x277D0E2A8], MEMORY[0x277D0E2B0]);
      v12 = swift_task_alloc();
      v0[20] = v12;
      *v12 = v0;
      v12[1] = sub_238883128;
      v13 = v0[17];
      v14 = v0[13];

      return MEMORY[0x282200308](v14, v13, v11);
    }

    (*(v0[10] + 8))(v0[12], v0[9]);
  }

  (*(v0[18] + 8))(v0[19], v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_238883578()
{
  *(v0 + 40) = *(v0 + 168);
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t SystemLanguageModel.Availability.UnavailableReason.hashValue.getter()
{
  v1 = *v0;
  sub_2388D34A8();
  MEMORY[0x23EE67750](v1);
  return sub_2388D34E8();
}

BOOL static SystemLanguageModel.Availability.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL sub_2388836E8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_238883724()
{
  v0 = sub_2388D1978();
  MEMORY[0x28223BE20](v0 - 8);
  v30 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2388D19E8();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2388D1998();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2388D1A18();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238810E44(&qword_27DF2FE68, &qword_2388D5768);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = sub_2388D1448();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2388D11A8();
  sub_2388D11F8();
  (*(v9 + 8))(v11, v8);
  sub_2388D1428();
  type metadata accessor for SystemLanguageModel(0);
  v16 = swift_allocObject();
  v17 = v16 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  *v17 = 0;
  *(v17 + 8) = 0;
  sub_2388D1188();
  (*(v25 + 104))(v23, *MEMORY[0x277D0E2D8], v27);
  sub_2388D1988();
  sub_2388D1A08();
  (*(v24 + 8))(v4, v26);
  v18 = v30;
  sub_2388D19A8();
  sub_238881E9C(v18, &v31);
  v19 = v31;
  *(v16 + 16) = 0;
  *(v16 + 20) = v19;
  (*(v13 + 16))(v16 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle, v15, v12);
  *(v16 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_useCase) = 0;
  v20 = (v16 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID);
  *v20 = 0xD00000000000001ALL;
  v20[1] = 0x80000002388DF0D0;
  *(v16 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_guardrails) = 0;
  v21 = v16 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  os_unfair_lock_lock((v16 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock));
  sub_238882A3C((v21 + 8), v16);
  os_unfair_lock_unlock(v21);
  (*(v28 + 8))(v7, v29);
  result = (*(v13 + 8))(v15, v12);
  off_27DF30D90 = v16;
  return result;
}

uint64_t SystemLanguageModel.__allocating_init(modelCatalogAssetBundleID:modelManagerUseCaseID:guardrails:)(void (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v34 = a1;
  v35 = a5;
  v38 = a4;
  v40 = a3;
  v5 = sub_2388D1978();
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2388D19E8();
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2388D1998();
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2388D1A18();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2388D1448();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v18;
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  LODWORD(v35) = *v35;
  sub_2388D1428();
  v34 = *(v15 + 16);
  v34(v18, v20, v14);
  v21 = swift_allocObject();
  v22 = v21 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  *v22 = 0;
  *(v22 + 8) = 0;
  sub_2388D1188();
  (*(v7 + 104))(v33, *MEMORY[0x277D0E2D8], v37);
  v23 = v38;

  v24 = v40;
  sub_2388D1988();
  sub_2388D1A08();
  (*(v36 + 8))(v10, v39);
  v25 = v43;
  sub_2388D19A8();
  sub_238881E9C(v25, &v44);
  v26 = v44;
  *(v21 + 16) = 0;
  *(v21 + 20) = v26;
  v27 = v32;
  v34((v21 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle), v32, v14);
  *(v21 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_useCase) = 0;
  v28 = (v21 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID);
  *v28 = v24;
  v28[1] = v23;
  *(v21 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_guardrails) = v35;
  v29 = v21 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  os_unfair_lock_lock((v21 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock));
  sub_238882A3C((v29 + 8), v21);
  os_unfair_lock_unlock(v29);
  (*(v41 + 8))(v13, v42);
  v30 = *(v15 + 8);
  v30(v27, v14);
  v30(v20, v14);
  return v21;
}

void *sub_238884064()
{
  v57 = *MEMORY[0x277D85DE8];
  v40[1] = 0;
  v55 = sub_2388D1118();
  v0 = *(v55 - 8);
  v1 = MEMORY[0x28223BE20](v55);
  v3 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1);
  v50 = v40 - v5;
  MEMORY[0x28223BE20](v4);
  v54 = v40 - v6;
  v56 = MEMORY[0x277D84F90];
  v7 = 23;
  sub_2388B7E9C(0, 23, 0);
  v8 = v56;
  v53 = v0 + 32;
  v9 = &unk_284B3AA28;
  do
  {

    sub_2388D10B8();
    v56 = v8;
    v11 = *(v8 + 16);
    v10 = *(v8 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_2388B7E9C((v10 > 1), v11 + 1, 1);
      v8 = v56;
    }

    *(v8 + 16) = v11 + 1;
    v12 = (*(v0 + 80) + 32) & ~*(v0 + 80);
    v13 = *(v0 + 72);
    (*(v0 + 32))(v8 + v12 + v13 * v11, v3, v55);
    v9 += 16;
    --v7;
  }

  while (v7);
  v46 = v12;
  swift_arrayDestroy();
  v14 = sub_2388C7108(v8);

  v16 = v14[32];
  v41 = ((1 << v16) + 63) >> 6;
  if ((v16 & 0x3Fu) > 0xD)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v40[2] = v40;
    MEMORY[0x28223BE20](v15);
    v43 = v40 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v17);
    v47 = 0;
    v18 = 0;
    v19 = *(v14 + 7);
    v42 = v14 + 56;
    v20 = 1 << v14[32];
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v51 = (v0 + 8);
    v52 = (v0 + 16);
    v44 = v23;
    v45 = v14;
LABEL_10:
    if (v22)
    {
      break;
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {
        goto LABEL_24;
      }

      v26 = *&v42[8 * v18];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v49 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v38 = swift_slowAlloc();

      v39 = sub_2388850D8(v38, v41, v14, sub_2388845AC);
      swift_bridgeObjectRelease_n();
      MEMORY[0x23EE68030](v38, -1, -1);
      result = v39;
      goto LABEL_25;
    }
  }

  v24 = __clz(__rbit64(v22));
  v49 = (v22 - 1) & v22;
LABEL_17:
  v27 = v24 | (v18 << 6);
  v28 = *(v14 + 6);
  v53 = v13;
  v48 = v27;
  v14 = *v52;
  (*v52)(v54, v28 + v27 * v13, v55);
  v0 = sub_2388D10F8();
  v29 = v0 + v46;
  v30 = -*(v0 + 16);
  v31 = -1;
  do
  {
    if (v30 + v31 == -1)
    {

      (*v51)(v54, v55);
      v13 = v53;
      v23 = v44;
      v14 = v45;
      v22 = v49;
      goto LABEL_10;
    }

    if (++v31 >= *(v0 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v13 = v29 + v53;
    v32 = v50;
    v33 = v55;
    (v14)(v50);
    v34 = sub_2388D10C8();
    v35 = *v51;
    (*v51)(v32, v33);
    v29 = v13;
  }

  while ((v34 & 1) == 0);

  v35(v54, v55);
  *&v43[(v48 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v48;
  v36 = __OFADD__(v47++, 1);
  v13 = v53;
  v23 = v44;
  v14 = v45;
  v22 = v49;
  if (!v36)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_24:
  result = sub_23888DAD8(v43, v41, v47, v14);
LABEL_25:
  qword_27DF30D98 = result;
  return result;
}

uint64_t sub_2388845AC(uint64_t a1)
{
  v11[3] = a1;
  v1 = sub_2388D1118();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2388D10F8();
  v6 = result;
  v7 = 0;
  v8 = *(result + 16);
  v11[1] = v2 + 16;
  while (1)
  {
    v9 = v7;
    if (v8 == v7)
    {
LABEL_5:

      return v8 != v9;
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    (*(v2 + 16))(v4, v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v7++, v1);
    v10 = sub_2388D10C8();
    result = (*(v2 + 8))(v4, v1);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t SystemLanguageModel.supportsLocale(_:)()
{
  v0 = sub_238810E44(&qword_27DF30DB8, &qword_2388D89A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15[-v1];
  v3 = sub_2388D1118();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  sub_2388D1128();
  sub_23888497C(v7, v2);
  v10 = *(v4 + 8);
  v10(v7, v3);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_238827E88(v2, &qword_27DF30DB8, &qword_2388D89A0);
    v11 = 0;
  }

  else
  {
    v12 = (*(v4 + 32))(v9, v2, v3);
    if (qword_27DF2F9C8 != -1)
    {
      v12 = swift_once();
    }

    MEMORY[0x28223BE20](v12);
    *&v15[-16] = v9;
    v11 = sub_238842144(sub_238885CA0, &v15[-32], v13);
    v10(v9, v3);
  }

  return v11 & 1;
}

uint64_t sub_23888497C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v3 = sub_2388D1068();
  v61 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v54[0] = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_238810E44(&qword_27DF30DF8, &qword_2388D8CC8);
  MEMORY[0x28223BE20](v58);
  v59 = v54 - v5;
  v6 = sub_238810E44(&qword_27DF2FE38, &unk_2388D8CD0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v57 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v60 = v54 - v10;
  MEMORY[0x28223BE20](v9);
  v63 = v54 - v11;
  v12 = sub_2388D1118();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v64 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v54 - v16;
  v18 = sub_2388D10F8();
  v19 = *(v18 + 16);
  v69 = v12;
  v65 = v13;
  if (v19)
  {
    v55 = v3;
    v56 = a2;
    v70 = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v19, 0);
    v20 = v70;
    v22 = *(v13 + 16);
    v21 = v13 + 16;
    v23 = *(v21 + 64);
    v54[1] = v18;
    v24 = v18 + ((v23 + 32) & ~v23);
    v66 = *(v21 + 56);
    v67 = v22;
    v68 = v21;
    v25 = (v21 - 8);
    do
    {
      v67(v17, v24, v12);
      v26 = sub_2388D1108();
      v28 = v27;
      (*v25)(v17, v12);
      v70 = v20;
      v30 = *(v20 + 16);
      v29 = *(v20 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_2388B7BD0((v29 > 1), v30 + 1, 1);
        v20 = v70;
      }

      *(v20 + 16) = v30 + 1;
      v31 = v20 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      v24 += v66;
      --v19;
      v12 = v69;
    }

    while (v19);

    v3 = v55;
    a2 = v56;
  }

  else
  {
  }

  v32 = objc_opt_self();
  v33 = sub_2388D2AC8();

  sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2388D3F70;
  *(v34 + 32) = sub_2388D1108();
  *(v34 + 40) = v35;
  v36 = sub_2388D2AC8();

  v37 = [v32 preferredLocalizationsFromArray:v33 forPreferences:v36];

  v38 = sub_2388D2AD8();
  v40 = v63;
  v39 = v64;
  if (*(v38 + 16))
  {

    sub_2388D10B8();
    sub_2388D10E8();
    v41 = v60;
    sub_2388D10E8();
    v42 = v59;
    v43 = *(v58 + 48);
    sub_238886134(v40, v59);
    sub_238886134(v41, v42 + v43);
    v44 = *(v61 + 48);
    if (v44(v42, 1, v3) == 1)
    {
      sub_238827E88(v41, &qword_27DF2FE38, &unk_2388D8CD0);
      sub_238827E88(v40, &qword_27DF2FE38, &unk_2388D8CD0);
      v45 = v44(v42 + v43, 1, v3);
      v46 = v65;
      if (v45 == 1)
      {
        sub_238827E88(v42, &qword_27DF2FE38, &unk_2388D8CD0);
LABEL_18:
        v48 = v69;
        (*(v46 + 32))(a2, v39, v69);
        v47 = 0;
        return (*(v46 + 56))(a2, v47, 1, v48);
      }
    }

    else
    {
      v49 = v57;
      sub_238886134(v42, v57);
      if (v44(v42 + v43, 1, v3) != 1)
      {
        v50 = v61;
        v51 = v54[0];
        (*(v61 + 32))(v54[0], v42 + v43, v3);
        sub_238886430(&qword_27DF30E00, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
        LODWORD(v68) = sub_2388D27C8();
        v52 = *(v50 + 8);
        v52(v51, v3);
        sub_238827E88(v60, &qword_27DF2FE38, &unk_2388D8CD0);
        sub_238827E88(v40, &qword_27DF2FE38, &unk_2388D8CD0);
        v52(v49, v3);
        sub_238827E88(v42, &qword_27DF2FE38, &unk_2388D8CD0);
        v46 = v65;
        if (v68)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      sub_238827E88(v60, &qword_27DF2FE38, &unk_2388D8CD0);
      sub_238827E88(v40, &qword_27DF2FE38, &unk_2388D8CD0);
      (*(v61 + 8))(v49, v3);
      v46 = v65;
    }

    sub_238827E88(v42, &qword_27DF30DF8, &qword_2388D8CC8);
LABEL_16:
    v48 = v69;
    (*(v46 + 8))(v39, v69);
    v47 = 1;
    return (*(v46 + 56))(a2, v47, 1, v48);
  }

  v47 = 1;
  v48 = v69;
  v46 = v65;
  return (*(v46 + 56))(a2, v47, 1, v48);
}

void *sub_2388850D8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_23888D4E0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t _s16FoundationModels19SystemLanguageModelC7useCase10guardrailsA2C03UseG0V_AC10GuardrailsVtcfC_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v43 = a2;
  v3 = sub_238810E44(&qword_27DF2FE68, &qword_2388D5768);
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v41 - v4;
  v6 = sub_2388D1978();
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2388D19E8();
  v8 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2388D1998();
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2388D1A18();
  v50 = *(v14 - 8);
  v51 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  v20 = sub_2388D1448();
  v48 = *(v20 - 8);
  v49 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v41 - v24;
  v26 = *a1;
  LODWORD(v43) = *v43;
  if (v26 == 1)
  {
  }

  else
  {
    v41 = v17;
    v27 = sub_2388D3368();

    if ((v27 & 1) == 0)
    {
      sub_2388D11A8();
      sub_2388D11F8();
      (*(v42 + 8))(v5, v3);
      sub_2388D1428();
      type metadata accessor for SystemLanguageModel(0);
      v28 = swift_allocObject();
      v36 = v28 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
      *v36 = 0;
      *(v36 + 8) = 0;
      sub_2388D1188();
      (*(v8 + 104))(v10, *MEMORY[0x277D0E2D8], v44);
      sub_2388D1988();
      v19 = v41;
      sub_2388D1A08();
      (*(v45 + 8))(v13, v46);
      v37 = v47;
      sub_2388D19A8();
      sub_238881E9C(v37, &v53);
      v38 = v53;
      *(v28 + 16) = 0;
      *(v28 + 20) = v38;
      v33 = v48;
      v32 = v49;
      (*(v48 + 16))(v28 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle, v23, v49);
      *(v28 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_useCase) = 0;
      v39 = (v28 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID);
      *v39 = 0xD00000000000001ALL;
      v39[1] = 0x80000002388DF0D0;
      *(v28 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_guardrails) = v43;
      v35 = v28 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
      os_unfair_lock_lock((v28 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock));
      sub_238882A3C((v35 + 8), v28);
      v25 = v23;
      goto LABEL_6;
    }
  }

  sub_2388D1428();
  type metadata accessor for SystemLanguageModel(0);
  v28 = swift_allocObject();
  v29 = v28 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  *v29 = 0;
  *(v29 + 8) = 0;
  sub_2388D1188();
  (*(v8 + 104))(v10, *MEMORY[0x277D0E2D8], v44);
  sub_2388D1988();
  sub_2388D1A08();
  (*(v45 + 8))(v13, v46);
  v30 = v47;
  sub_2388D19A8();
  sub_238881E9C(v30, v52);
  v31 = v52[0];
  *(v28 + 16) = 0;
  *(v28 + 20) = v31;
  v33 = v48;
  v32 = v49;
  (*(v48 + 16))(v28 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle, v25, v49);
  *(v28 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_useCase) = v26;
  v34 = (v28 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID);
  *v34 = 0xD00000000000001ALL;
  v34[1] = 0x80000002388DF0D0;
  *(v28 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_guardrails) = v43;
  v35 = v28 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  os_unfair_lock_lock((v28 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock));
  sub_238882A3C((v35 + 8), v28);
LABEL_6:
  os_unfair_lock_unlock(v35);
  (*(v50 + 8))(v19, v51);
  (*(v33 + 8))(v25, v32);
  return v28;
}

uint64_t _s16FoundationModels19SystemLanguageModelC7adapter10guardrailsA2C7AdapterV_AC10GuardrailsVtcfC_0(uint64_t a1, unsigned __int8 *a2)
{
  v27 = a1;
  v4 = sub_2388D1978();
  MEMORY[0x28223BE20](v4 - 8);
  v33 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = sub_2388D19E8();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_2388D1998();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_2388D1A18();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2388D1448();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = *a2;
  v16 = type metadata accessor for SystemLanguageModel.Adapter(0);
  v17 = *(v13 + 16);
  v17(v15, a1 + *(v16 + 20), v12);
  type metadata accessor for SystemLanguageModel(0);
  v18 = swift_allocObject();
  v19 = v18 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  *v19 = 0;
  *(v19 + 8) = 0;
  sub_2388D1188();
  (*(v29 + 104))(v7, *MEMORY[0x277D0E2D8], v31);
  sub_2388D1988();
  sub_2388D1A08();
  (*(v28 + 8))(v9, v30);
  v20 = v33;
  sub_2388D19A8();
  sub_238881E9C(v20, &v35);
  v21 = v35;
  *(v18 + 16) = 0;
  *(v18 + 20) = v21;
  v17((v18 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle), v15, v12);
  *(v18 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_useCase) = 0;
  v22 = (v18 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelManagerUseCaseID);
  *v22 = 0xD00000000000001ALL;
  v22[1] = 0x80000002388DF0D0;
  *(v18 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_guardrails) = v26;
  v23 = v18 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock;
  os_unfair_lock_lock((v18 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_taskLock));
  sub_238882A3C((v23 + 8), v18);
  os_unfair_lock_unlock(v23);
  sub_2388861A4(v27);
  (*(v32 + 8))(v11, v34);
  (*(v13 + 8))(v15, v12);
  return v18;
}

unint64_t sub_238885CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30DC0;
  if (!qword_27DF30DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30DC0);
  }

  return result;
}

uint64_t sub_238885D38(uint64_t a1)
{
  result = sub_2388D1448();
  if (v2 <= 0x3F)
  {
    result = sub_2388D1198();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_238885E4C()
{
  if (MEMORY[0x277D85020])
  {
    return sub_238810E44(&qword_27DF30DD8, &qword_2388D8B30);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_238885E7C()
{
  if (MEMORY[0x277D85020])
  {
    return sub_238810E44(&qword_27DF30DE0, &qword_2388D8B38);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t getEnumTagSinglePayload for SystemLanguageModel.Availability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SystemLanguageModel.Availability(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_238886020(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_238886034(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_238886088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30DE8;
  if (!qword_27DF30DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30DE8);
  }

  return result;
}

unint64_t sub_2388860E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30DF0;
  if (!qword_27DF30DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30DF0);
  }

  return result;
}

uint64_t sub_238886134(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF2FE38, &unk_2388D8CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2388861A4(uint64_t a1)
{
  v2 = type metadata accessor for SystemLanguageModel.Adapter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238886200()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238886238()
{
  v1 = sub_2388D1A18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_238886310(uint64_t a1)
{
  v4 = *(sub_2388D1A18() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238833668;

  return sub_238882E30(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_238886430(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2388864A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_238827E14(a3, v25 - v10, &qword_27DF2FD28, &qword_2388D8CE0);
  v12 = sub_2388D2BE8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_238827E88(v11, &qword_27DF2FD28, &qword_2388D8CE0);
  }

  else
  {
    sub_2388D2BD8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2388D2B38();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_2388D28C8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_2388D15A8();

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

      sub_238827E88(v25[0], &qword_27DF2FD28, &qword_2388D8CE0);

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

  sub_238827E88(a3, &qword_27DF2FD28, &qword_2388D8CE0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_2388D15A8();
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2388867B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_238827E14(a3, v25 - v10, &qword_27DF2FD28, &qword_2388D8CE0);
  v12 = sub_2388D2BE8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_238827E88(v11, &qword_27DF2FD28, &qword_2388D8CE0);
  }

  else
  {
    sub_2388D2BD8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2388D2B38();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2388D28C8() + 32;
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

      sub_238827E88(a3, &qword_27DF2FD28, &qword_2388D8CE0);

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

  sub_238827E88(a3, &qword_27DF2FD28, &qword_2388D8CE0);
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

uint64_t SystemLanguageModel.Adapter.creatorDefinedMetadata.getter()
{
  type metadata accessor for SystemLanguageModel.Adapter(0);
}

uint64_t SystemLanguageModel.Adapter.init(fileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2388D0F58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2388D1448();
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v20 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v6 + 16);
  v11(a2, a1, v5);
  _s7AdapterV7StorageOMa(0);
  v23 = a2;
  swift_storeEnumTagMultiPayload();
  v12 = sub_23888DE00();
  sub_23888E824(0, 0, a1, v12, v21);

  if (v2)
  {
    swift_willThrow();
    sub_23888ECD8();
    (*(v6 + 8))(a1, v5);
    return sub_23888FFC0(v23, _s7AdapterV7StorageOMa);
  }

  else
  {
    v14 = type metadata accessor for SystemLanguageModel.Adapter(0);
    v15 = v23 + *(v14 + 24);
    v16 = v21[1];
    *v15 = v21[0];
    *(v15 + 16) = v16;
    *(v15 + 32) = v22;
    v11(v8, a1, v5);
    v17 = v20;
    sub_2388D1438();
    (*(v6 + 8))(a1, v5);
    return (*(v19 + 32))(v23 + *(v14 + 20), v17, v9);
  }
}

uint64_t SystemLanguageModel.Adapter.AssetError.Context.init(debugDescription:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = MEMORY[0x277D84F90];
  return result;
}

double SystemLanguageModel.Adapter.init(name:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v100 = sub_2388D1448();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v102 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_2388D0EE8();
  v126 = *(v124 - 8);
  v7 = MEMORY[0x28223BE20](v124);
  v111 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v123 = &v92 - v9;
  v10 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v110 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v122 = &v92 - v13;
  v125 = sub_2388D0F58();
  v104 = *(v125 - 8);
  v14 = MEMORY[0x28223BE20](v125);
  v101 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v103 = &v92 - v16;
  v132 = sub_2388D2428();
  v117 = *(v132 - 8);
  v17 = MEMORY[0x28223BE20](v132);
  v120 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v119 = &v92 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v121 = &v92 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v130 = &v92 - v24;
  MEMORY[0x28223BE20](v23);
  v127 = &v92 - v25;
  v26 = sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  MEMORY[0x28223BE20](v26 - 8);
  v105 = &v92 - v27;
  v28 = sub_238810E44(&qword_27DF30E18, &qword_2388D8D00);
  v131 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v92 - v29;
  v31 = sub_238810E44(&qword_27DF30E20, &qword_2388D8D08);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v92 - v33;
  v35 = sub_238810E44(&qword_27DF30E28, &qword_2388D8D10);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v92 - v36;
  *a3 = a1;
  a3[1] = a2;
  _s7AdapterV7StorageOMa(0);
  v106 = a3;
  swift_storeEnumTagMultiPayload();

  sub_2388880B0(v34);
  sub_238815180(&qword_27DF30E30, &qword_27DF30E20, &qword_2388D8D08, MEMORY[0x277D85420]);
  sub_2388D1CA8();
  v109 = a1;
  v107 = a2;
  sub_2388D2A38();
  v38 = v133;
  sub_2388D1CD8();
  v39 = v38;
  if (v38)
  {

    v131[1](v30, v28);
    (*(v32 + 8))(v34, v31);
    v40 = sub_238810E44(&qword_27DF30E38, &qword_2388D8D18);
    (*(*(v40 - 8) + 56))(v37, 1, 1, v40);
    v39 = 0;
  }

  else
  {

    v131[1](v30, v28);
    (*(v32 + 8))(v34, v31);
  }

  v41 = sub_238810E44(&qword_27DF30E38, &qword_2388D8D18);
  v42 = (*(*(v41 - 8) + 48))(v37, 1, v41);
  v43 = sub_238827E88(v37, &qword_27DF30E28, &qword_2388D8D10);
  v46 = v121;
  if (v42 != 1)
  {
    v53 = v126;
    v54 = sub_23888EFA8(v43, v44, v45);
    v55 = swift_allocError();
    v56 = v109;
    v57 = v107;
    sub_2388884C0(v109, v107, MEMORY[0x277D84F90], v58);
    v59 = _s16FoundationModels19SystemLanguageModelC7AdapterV010compatibleF11Identifiers4nameSaySSGSS_tFZ_0(v56, v57);
    v60 = v59;
    v61 = *(v59 + 16);
    if (!v61)
    {
LABEL_24:

      v83 = sub_2388D2BE8();
      v84 = v105;
      (*(*(v83 - 8) + 56))(v105, 1, 1, v83);
      v85 = swift_allocObject();
      v85[2] = 0;
      v85[3] = 0;
      v85[4] = v109;
      v85[5] = v57;
      sub_2388867B0(0, 0, v84, &unk_2388D8D30, v85);

      v138 = v55;
      v86 = v55;
      sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
      if (swift_dynamicCast())
      {
        if (v137 == 2)
        {
          sub_23888F5E8(v134, v135, v136, 2u);
          sub_23888ECD8();
        }

        else
        {
          sub_23888F5E8(v134, v135, v136, v137);
        }
      }

      goto LABEL_28;
    }

    v98 = v55;
    v93 = v54;
    v62 = 0;
    v63 = (v117 + 1);
    v118 = v117 + 4;
    v117 += 2;
    v116 = *MEMORY[0x277CC91D8];
    v115 = (v53 + 104);
    v108 = (v53 + 16);
    v114 = (v104 + 7);
    v113 = (v53 + 8);
    v112 = (v104 + 6);
    v97 = (v104 + 4);
    v94 = (v104 + 2);
    ++v104;
    v64 = v59 + 40;
    v95 = v61 - 1;
    v92 = xmmword_2388D3F70;
    v128 = v61;
    v129 = v59;
    v133 = v63;
    v96 = v59 + 40;
LABEL_8:
    v65 = (v64 + 16 * v62);
    v66 = v62;
    while (1)
    {
      if (v66 >= *(v60 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v34 = *(v65 - 1);
      v67 = *v65;
      sub_2388D18B8();

      sub_2388D1898();
      v134 = 12078;
      v135 = 0xE200000000000000;
      MEMORY[0x23EE66C20](v34, v67);
      MEMORY[0x23EE66C20](46, 0xE100000000000000);
      MEMORY[0x23EE66C20](0x6574706164616D66, 0xE900000000000072);
      MEMORY[0x23EE66C20](47, 0xE100000000000000);
      MEMORY[0x23EE66C20](0x617461646174656DLL, 0xED00006E6F736A2ELL);
      MEMORY[0x23EE666D0](v134, v135);
      v68 = v130;
      sub_2388D18A8();
      if (v39)
      {
        (*v133)(v46, v132);

        v39 = 0;
        v60 = v129;
      }

      else
      {
        v126 = 0;
        v34 = v132;
        v131 = *v133;
        (v131)(v46, v132);

        v69 = v127;
        (*v118)(v127, v68, v34);
        v70 = *v117;
        v71 = v120;
        (*v117)(v120, v69, v34);
        v72 = v119;
        sub_2388D2418();
        v73 = v123;
        v74 = v124;
        (*v115)(v123, v116, v124);
        v70(v71, v72, v34);
        sub_2388D2978();
        if (v75)
        {
          (*v108)(v111, v73, v74);
          v76 = *v114;
          (*v114)(v110, 1, 1, v125);
          v34 = v132;
          v77 = v122;
          sub_2388D0F38();
          v78 = v125;
          (*v113)(v123, v124);
          (v131)(v72, v34);
          v76(v77, 0, 1, v78);
        }

        else
        {
          (*v113)(v73, v74);
          (v131)(v72, v34);
          v77 = v122;
          v78 = v125;
          (*v114)(v122, 1, 1, v125);
        }

        v79 = (*v112)(v77, 1, v78);
        v46 = v121;
        v60 = v129;
        if (v79 != 1)
        {
          v34 = v103;
          v80 = v125;
          (*v97)(v103, v77, v125);
          v57 = v107;

          v81 = sub_23888DE00();
          v82 = v126;
          sub_23888E824(v109, v57, v34, v81, v139);
          v55 = v82;
          if (!v82)
          {

            (*v94)(v101, v34, v80);
            sub_2388D1438();
LABEL_30:

            (*v104)(v34, v125);
            (v131)(v127, v132);
            v88 = type metadata accessor for SystemLanguageModel.Adapter(0);
            v89 = v106;
            (*(v99 + 32))(v106 + *(v88 + 20), v102, v100);
            v90 = v89 + *(v88 + 24);
            result = *v139;
            v91 = v139[1];
            *v90 = v139[0];
            *(v90 + 1) = v91;
            *(v90 + 4) = v140;
            return result;
          }

          v39 = 0;
          v62 = v66 + 1;

          (*v104)(v103, v125);
          (v131)(v127, v132);
          v98 = v82;
          v64 = v96;
          if (v95 == v66)
          {
            goto LABEL_24;
          }

          goto LABEL_8;
        }

        (v131)(v127, v34);
        sub_238827E88(v77, &qword_27DF30608, &qword_2388D6690);
        v39 = v126;
      }

      ++v66;
      v65 += 2;
      if (v128 == v66)
      {
        v55 = v98;
        v57 = v107;
        goto LABEL_24;
      }
    }
  }

  v134 = 0;
  v135 = 0xE000000000000000;
  sub_2388D2FA8();
  MEMORY[0x23EE66C20](0x2072657470616441, 0xEE002220656D616ELL);
  MEMORY[0x23EE66C20](v109, v107);

  v47 = MEMORY[0x23EE66C20](0xD00000000000003BLL, 0x80000002388DF3B0);
  v48 = v134;
  v49 = v135;
  sub_23888EFA8(v47, v50, v51);
  swift_allocError();
  *v52 = v48;
  *(v52 + 8) = v49;
  *(v52 + 16) = MEMORY[0x277D84F90];
  *(v52 + 24) = 1;
LABEL_28:
  swift_willThrow();
  sub_23888FFC0(v106, _s7AdapterV7StorageOMa);
  return result;
}

uint64_t sub_2388880B0@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_238810E44(&qword_27DF30F38, &qword_2388D8FC0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = sub_238810E44(&qword_27DF30E18, &qword_2388D8D00);
  v9 = *(v8 - 8);
  v30 = v8;
  v31 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v28 = &v27 - v13;
  v29 = sub_2388D1C78();
  v14 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_238810E44(&qword_27DF30F40, &qword_2388D8FC8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v27 - v18;
  v20 = sub_2388D1CB8();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_2388D1248();
  sub_2388D12C8();
  v21 = sub_238815180(&qword_27DF30F48, &qword_27DF30F38, &qword_2388D8FC0, MEMORY[0x277D85410]);
  MEMORY[0x23EE654C0](v5, v1, v21);
  v22 = *(v2 + 8);
  v22(v5, v1);
  sub_2388D1238();
  v22(v7, v1);
  sub_238815180(&qword_27DF30F20, &qword_27DF30E18, &qword_2388D8D00, MEMORY[0x277D85AC0]);
  v23 = v28;
  v24 = MEMORY[0x277D83E40];
  v25 = v30;
  sub_2388D1C68();
  (*(v31 + 8))(v12, v25);
  (*(v14 + 8))(v16, v29);
  sub_238827E88(v19, &qword_27DF30F40, &qword_2388D8FC8);
  return MEMORY[0x23EE65570](v23, v24);
}

uint64_t SystemLanguageModel.Adapter.AssetError.Context.init(debugDescription:underlyingErrors:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2388884C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2388D2FA8();
  MEMORY[0x23EE66C20](0xD000000000000033, 0x80000002388DF5C0);
  MEMORY[0x23EE66C20](a1, a2);
  MEMORY[0x23EE66C20](11810, 0xE200000000000000);
  *a4 = 0;
  *(a4 + 8) = 0xE000000000000000;
  *(a4 + 16) = a3;
  *(a4 + 24) = 2;
}

uint64_t sub_23888858C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_2388D18E8();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238888678, 0, 0);
}

uint64_t sub_238888678()
{
  v1 = _s16FoundationModels19SystemLanguageModelC7AdapterV010compatibleF11Identifiers4nameSaySSGSS_tFZ_0(v0[3], v0[4]);
  v0[8] = v1;
  v2 = v1[2];
  v0[9] = v2;
  if (v2)
  {
    v0[10] = sub_2388D18B8();
    v0[11] = 0;
    v3 = v1[4];
    v4 = v1[5];
    v0[12] = v4;

    v0[13] = sub_2388D1898();
    v5 = MEMORY[0x277CBAA90];
    v6 = *MEMORY[0x277CBAA90];
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_238888808;
    v8 = v0[7];

    return ((v6 + v5))(v8, v3, v4);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_238888808()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_238888C08;
  }

  else
  {

    v2 = sub_2388889A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2388889A0()
{
  v1 = sub_2388D18D8();
  v2 = [objc_opt_self() sharedManager];
  v0[2] = 0;
  v3 = [v2 scheduleDownload:v1 error:v0 + 2];

  v4 = v0[2];
  v5 = v0[7];
  v6 = v0[5];
  v7 = (v0[6] + 8);
  if (v3)
  {
    v8 = *v7;
    v9 = v4;
    v8(v5, v6);
  }

  else
  {
    v10 = v4;
    v11 = sub_2388D0ED8();

    swift_willThrow();
    (*v7)(v5, v6);
  }

  v12 = v0[11] + 1;
  if (v12 == v0[9])
  {

    v13 = v0[1];

    return v13();
  }

  else
  {
    v0[11] = v12;
    v15 = v0[8] + 16 * v12;
    v16 = *(v15 + 32);
    v17 = *(v15 + 40);
    v0[12] = v17;

    v0[13] = sub_2388D1898();
    v18 = MEMORY[0x277CBAA90];
    v19 = *MEMORY[0x277CBAA90];
    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_238888808;
    v21 = v0[7];

    return ((v19 + v18))(v21, v16, v17);
  }
}

uint64_t sub_238888C08()
{
  v1 = *(v0 + 88) + 1;
  if (v1 == *(v0 + 72))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 88) = v1;
    v4 = *(v0 + 64) + 16 * v1;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    *(v0 + 96) = v6;

    *(v0 + 104) = sub_2388D1898();
    v7 = MEMORY[0x277CBAA90];
    v8 = *MEMORY[0x277CBAA90];
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v9[1] = sub_238888808;
    v10 = *(v0 + 56);

    return ((v8 + v7))(v10, v5, v6);
  }
}

uint64_t SystemLanguageModel.Adapter.compile()()
{
  v1[2] = v0;
  v2 = sub_2388D1728();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_2388D1748();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  sub_238810E44(&qword_27DF30E50, &qword_2388D8D48);
  v1[12] = swift_task_alloc();
  v4 = sub_2388D1058();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  type metadata accessor for SystemLanguageModel.Adapter(0);
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238888F94, 0, 0);
}

uint64_t sub_238888F94()
{
  v30 = v0;
  if (qword_27DF2F9D0 != -1)
  {
    swift_once();
  }

  v1 = qword_27DF3F8A8;
  *(v0 + 136) = qword_27DF3F8A8;
  if (sub_2388899B4())
  {
    if (qword_27DF2F9E0 != -1)
    {
      swift_once();
    }

    v2 = sub_2388D2408();
    sub_2388413AC(v2, qword_27DF3F8E0);
    v3 = sub_2388D23E8();
    v4 = sub_2388D2E18();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23880E000, v3, v4, "Exceeded rate limit (3 per day, per app) for compiling adapters. Generating content using this adapter may not run at the optimal speed until the adapter is compiled.", v5, 2u);
      MEMORY[0x23EE68030](v5, -1, -1);
    }

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = *(v0 + 104);
    v11 = *(v0 + 112);
    sub_23888F634(*(v0 + 16), v8);
    v29 = 0;
    v12 = _s16FoundationModels19SystemLanguageModelC7adapter10guardrailsA2C7AdapterV_AC10GuardrailsVtcfC_0(v8, &v29);
    sub_2388D1048();
    v13 = sub_2388D1038();
    v15 = v14;
    (*(v11 + 8))(v9, v10);
    *(v0 + 144) = sub_23883FAD4(v12 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_modelBundle, 0xD00000000000001ALL, 0x80000002388DF0D0, v13, v15);

    v16 = OBJC_IVAR____TtC16FoundationModels29AdapterCompilationRateLimiter_state;
    *(v0 + 152) = OBJC_IVAR____TtC16FoundationModels29AdapterCompilationRateLimiter_state;
    v17 = (v1 + v16);
    os_unfair_lock_lock(v17);
    v18 = sub_238810E44(&qword_27DF30E60, &qword_2388D8D50);
    v20 = *(v18 + 28);
    *(v0 + 176) = v20;
    v21 = (&v17->_os_unfair_lock_opaque + v20);
    v22 = *(&v17->_os_unfair_lock_opaque + v20);
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      __break(1u);
    }

    else
    {
      v25 = *(v0 + 96);
      *v21 = v24;
      sub_2388D1018();
      v26 = sub_2388D1028();
      (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
      v27 = type metadata accessor for AdapterCompilationRateLimiter.State(0);
      sub_23888F6B8(v25, v21 + *(v27 + 20));
      os_unfair_lock_unlock(v17);
      v28 = swift_task_alloc();
      *(v0 + 160) = v28;
      *v28 = v0;
      v28[1] = sub_238889338;
      v18 = *(v0 + 88);
      v19 = 0;
    }

    return MEMORY[0x2821D9820](v18, v19);
  }
}

uint64_t sub_238889338()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_23888980C;
  }

  else
  {
    v2 = sub_23888944C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23888944C()
{
  v39 = v0;
  if (qword_27DF2F9E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = sub_2388D2408();
  sub_2388413AC(v5, qword_27DF3F8F8);
  v6 = *(v4 + 16);
  v6(v1, v2, v3);
  v7 = sub_2388D23E8();
  v8 = sub_2388D2DF8();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 80);
  if (v9)
  {
    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    v13 = *(v0 + 56);
    v14 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v14 = 136446210;
    v6(v12, v10, v13);
    v15 = sub_2388D28B8();
    v17 = v16;
    v18 = *(v11 + 8);
    v18(v10, v13);
    v19 = sub_2388C0770(v15, v17, &v38);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_23880E000, v7, v8, "Compile adapter response: %{public}s", v14, 0xCu);
    sub_2388158BC(v37);
    MEMORY[0x23EE68030](v37, -1, -1);
    MEMORY[0x23EE68030](v14, -1, -1);
  }

  else
  {
    v20 = *(v0 + 56);
    v21 = *(v0 + 64);

    v18 = *(v21 + 8);
    v18(v10, v20);
  }

  v23 = *(v0 + 40);
  v22 = *(v0 + 48);
  v24 = *(v0 + 24);
  v25 = *(v0 + 32);
  sub_2388D1738();
  (*(v25 + 104))(v23, *MEMORY[0x277D71CA0], v24);
  sub_2388903A4(&qword_27DF30E68, MEMORY[0x277D71CA8], MEMORY[0x277D71CB0]);
  v26 = sub_2388D27C8();
  v27 = *(v25 + 8);
  v27(v23, v24);
  v27(v22, v24);
  if (v26)
  {
    v18(*(v0 + 88), *(v0 + 56));
  }

  else
  {
    v28 = *(v0 + 176);
    v29 = (*(v0 + 136) + *(v0 + 152));
    os_unfair_lock_lock(v29);
    v30 = *(&v29->_os_unfair_lock_opaque + v28);
    v31 = v30 < 1;
    v32 = v30 - 1;
    if (!v31)
    {
      *(*(v0 + 136) + *(v0 + 152) + *(v0 + 176)) = v32;
    }

    v33 = *(v0 + 88);
    v34 = *(v0 + 56);
    os_unfair_lock_unlock((*(v0 + 136) + *(v0 + 152)));

    v18(v33, v34);
  }

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_23888980C()
{
  v1 = *(v0 + 176);
  v2 = (*(v0 + 136) + *(v0 + 152));
  os_unfair_lock_lock(v2);
  v3 = *(&v2->_os_unfair_lock_opaque + v1);
  v4 = v3 < 1;
  v5 = v3 - 1;
  if (!v4)
  {
    *(*(v0 + 136) + *(v0 + 152) + *(v0 + 176)) = v5;
  }

  v6 = *(v0 + 168);
  os_unfair_lock_unlock((*(v0 + 136) + *(v0 + 152)));
  sub_238810E44(&qword_27DF2FAD8, &unk_2388D6360);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2388D3F70;
  *(v7 + 32) = v6;
  sub_23888EFA8(v7, v8, v9);
  swift_allocError();
  *v10 = 0xD00000000000001ELL;
  *(v10 + 8) = 0x80000002388DF3F0;
  *(v10 + 16) = v7;
  *(v10 + 24) = 0;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

BOOL sub_2388899B4()
{
  v1 = sub_238810E44(&qword_27DF30E50, &qword_2388D8D48);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_2388D1028();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = (v0 + OBJC_IVAR____TtC16FoundationModels29AdapterCompilationRateLimiter_state);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16FoundationModels29AdapterCompilationRateLimiter_state));
  v12 = (&v11->_os_unfair_lock_opaque + *(sub_238810E44(&qword_27DF30E60, &qword_2388D8D50) + 28));
  v13 = type metadata accessor for AdapterCompilationRateLimiter.State(0);
  sub_238827E14(v12 + *(v13 + 20), v3, &qword_27DF30E50, &qword_2388D8D48);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_238827E88(v3, &qword_27DF30E50, &qword_2388D8D48);
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    sub_2388D1018();
    sub_2388D1008();
    v15 = v14;
    v16 = *(v5 + 8);
    v16(v8, v4);
    v16(v10, v4);
    if (v15 > 86400.0)
    {
      *v12 = 0;
    }
  }

  v17 = *v12 > 2;
  os_unfair_lock_unlock(v11);
  return v17;
}

uint64_t SystemLanguageModel.Adapter.isCompiled.getter()
{
  v1[2] = v0;
  v2 = sub_2388D1728();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_2388D1748();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = sub_2388D1058();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238889DAC, 0, 0);
}

uint64_t sub_238889DAC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  v5 = *(type metadata accessor for SystemLanguageModel.Adapter(0) + 20);
  sub_2388D1048();
  v6 = sub_2388D1038();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  v0[15] = sub_23883FAD4(v4 + v5, 0xD00000000000001ALL, 0x80000002388DF0D0, v6, v8);

  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_238889EDC;
  v10 = v0[11];

  return MEMORY[0x2821D9820](v10, 1);
}

uint64_t sub_238889EDC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_23888A300;
  }

  else
  {
    v2 = sub_238889FF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238889FF0()
{
  v34 = v0;
  if (qword_27DF2F9E8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];
  v5 = sub_2388D2408();
  sub_2388413AC(v5, qword_27DF3F8F8);
  v6 = *(v4 + 16);
  v6(v1, v2, v3);
  v7 = sub_2388D23E8();
  v8 = sub_2388D2DF8();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  if (v9)
  {
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v14 = 136446210;
    v6(v11, v10, v13);
    v15 = sub_2388D28B8();
    v17 = v16;
    v32 = *(v12 + 8);
    v32(v10, v13);
    v18 = sub_2388C0770(v15, v17, &v33);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_23880E000, v7, v8, "Compile adapter (dry run) response: %{public}s", v14, 0xCu);
    sub_2388158BC(v31);
    MEMORY[0x23EE68030](v31, -1, -1);
    MEMORY[0x23EE68030](v14, -1, -1);
  }

  else
  {
    v19 = v0[7];
    v20 = v0[8];

    v32 = *(v20 + 8);
    v32(v10, v19);
  }

  v21 = v0[11];
  v22 = v0[6];
  v23 = v0[7];
  v25 = v0[4];
  v24 = v0[5];
  v26 = v0[3];
  sub_2388D1738();
  (*(v25 + 104))(v24, *MEMORY[0x277D71C90], v26);
  v27 = sub_2388D1718();

  v28 = *(v25 + 8);
  v28(v24, v26);
  v28(v22, v26);
  v32(v21, v23);

  v29 = v0[1];

  return v29(v27 & 1);
}

uint64_t sub_23888A300()
{
  v1 = *(v0 + 136);
  sub_238810E44(&qword_27DF2FAD8, &unk_2388D6360);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2388D3F70;
  *(v2 + 32) = v1;
  sub_23888EFA8(v2, v3, v4);
  swift_allocError();
  *v5 = 0xD000000000000031;
  *(v5 + 8) = 0x80000002388DF410;
  *(v5 + 16) = v2;
  *(v5 + 24) = 0;
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6(0);
}

uint64_t static SystemLanguageModel.Adapter.removeObsoleteAdapters()()
{
  v96 = *MEMORY[0x277D85DE8];
  v1 = sub_238810E44(&qword_27DF30E70, &qword_2388D8D60);
  v92 = *(v1 - 8);
  v93 = v1;
  MEMORY[0x28223BE20](v1);
  v76 = &v66 - v2;
  v3 = sub_238810E44(&qword_27DF30E78, &qword_2388D8D68);
  v4 = *(v3 - 8);
  v94 = v3;
  v95 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v88 = (&v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v89 = (&v66 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v66 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v66 - v12;
  v14 = sub_238810E44(&qword_27DF30E80, &qword_2388D8D70);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v66 - v18;
  v20 = sub_2388D18B8();
  sub_2388D1898();
  v21 = sub_2388D1878();

  if (v0)
  {
    return result;
  }

  v23 = v95;
  v72 = v17;
  v73 = v11;
  v24 = *(v21 + 32);
  v67 = ((1 << v24) + 63) >> 6;
  v25 = v21;
  v77 = v20;
  if ((v24 & 0x3Fu) > 0xD)
  {
    goto LABEL_44;
  }

  while (2)
  {
    v66 = &v66;
    MEMORY[0x28223BE20](result);
    v68 = &v66 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v68, v26);
    v69 = 0;
    v27 = 0;
    v28 = v25 + 56;
    v29 = 1 << *(v25 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v25 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = v23 + 1;
    v23 = v92;
    v78 = v92 + 56;
    v90 = v33;
    v91 = (v92 + 48);
    v71 = (v92 + 32);
    v70 = (v92 + 8);
    v34 = v73;
    v82 = v25 + 56;
    v83 = v13;
    v79 = v32;
    v80 = v19;
    v81 = v25;
    while (v31)
    {
      v35 = __clz(__rbit64(v31));
      v92 = (v31 - 1) & v31;
LABEL_15:
      v38 = v35 | (v27 << 6);
      v39 = *(v25 + 48);
      v75 = v38;
      v40 = (v39 + 16 * v38);
      v42 = *v40;
      v41 = v40[1];

      v43 = sub_238810E44(&qword_27DF30E88, &qword_2388D8D78);
      sub_238815180(&qword_27DF30E90, &qword_27DF30E78, &qword_2388D8D68, MEMORY[0x277D85AC0]);
      v86 = v43;
      v44 = v94;
      sub_2388D1CC8();
      sub_2388D1CA8();
      v45 = (v41 >> 56) & 0xF;
      if ((v41 & 0x2000000000000000) == 0)
      {
        v45 = v42;
      }

      v46 = 7;
      if (((v41 >> 60) & ((v42 & 0x800000000000000) == 0)) != 0)
      {
        v46 = 11;
      }

      v85 = v46 | (v45 << 16);
      v87 = v42;
      v95 = v41;
      sub_2388D2A38();
      v47 = v80;
      sub_2388D1CD8();

      v48 = *v90;
      (*v90)(v34, v44);
      v48(v13, v44);
      v19 = *v91;
      v49 = (*v91)(v47, 1, v93);
      sub_238827E88(v47, &qword_27DF30E80, &qword_2388D8D70);
      v50 = v49 == 1;
      v23 = v89;
      if (v50)
      {
        v28 = v82;
        v13 = v83;
        goto LABEL_7;
      }

      v74 = v19;
      v19 = sub_23888DE00();
      if (sub_23888E64C())
      {
        v28 = v82;
        v13 = v83;
LABEL_27:

        *&v68[(v75 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v75;
        v59 = __OFADD__(v69++, 1);
        v25 = v81;
        v32 = v79;
        v31 = v92;
        if (v59)
        {
          __break(1u);
LABEL_30:
          v25 = sub_23888D8B4(v68, v67, v69, v25);
          goto LABEL_31;
        }
      }

      else
      {
        v84 = v19;
        v51 = v23;
        v52 = v94;
        sub_2388D1CC8();
        sub_2388D1CA8();
        v23 = v88;
        sub_2388D2A38();
        v53 = v72;
        sub_2388D1CD8();

        v48(v23, v52);
        v48(v51, v52);
        v54 = v93;
        v55 = v74(v53, 1, v93);
        v34 = v73;
        if (v55 == 1)
        {
          sub_238827E88(v53, &qword_27DF30E80, &qword_2388D8D70);
LABEL_26:
          v28 = v82;
          v13 = v83;
          v19 = v84;
          goto LABEL_27;
        }

        v56 = v76;
        v57 = (*v71)(v76, v53, v54);
        v19 = &v66;
        MEMORY[0x28223BE20](v57);
        *(&v66 - 2) = v56;
        v58 = sub_23884235C(sub_23888F748, (&v66 - 4), v84);
        (*v70)(v56, v54);
        if ((v58 & 1) == 0)
        {
          goto LABEL_26;
        }

        v28 = v82;
        v13 = v83;
LABEL_7:

        v25 = v81;
        v32 = v79;
        v31 = v92;
      }
    }

    v36 = v27;
    while (1)
    {
      v27 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v27 >= v32)
      {
        goto LABEL_30;
      }

      v37 = *(v28 + 8 * v27);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v92 = (v37 - 1) & v37;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v23 = swift_slowAlloc();
  v25 = sub_23888D450(v23, v67, v25, sub_23888F728);

  MEMORY[0x23EE68030](v23, -1, -1);
LABEL_31:
  v60 = 0;
  v19 = (v25 + 56);
  v61 = 1 << *(v25 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & *(v25 + 56);
  v64 = (v61 + 63) >> 6;
  if (v63)
  {
    while (1)
    {
      v65 = v60;
LABEL_38:
      v13 = *(*(v25 + 48) + ((v65 << 10) | (16 * __clz(__rbit64(v63)))) + 8);

      v23 = sub_2388D1898();
      sub_2388D1888();
      v63 &= v63 - 1;

      v60 = v65;
      if (!v63)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
LABEL_35:
    v65 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_43;
    }

    if (v65 >= v64)
    {
    }

    v63 = *&v19[8 * v65];
    ++v60;
    if (v63)
    {
      goto LABEL_38;
    }
  }
}

uint64_t sub_23888AF00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (sub_23888AF74(*a1, v2))
  {
    v3 = sub_23888DE00();
    v4 = sub_23888B2C0(v1, v2, v3);

    v5 = v4 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

BOOL sub_23888AF74(uint64_t a1, unint64_t a2)
{
  v2 = sub_238810E44(&qword_27DF30E78, &qword_2388D8D68);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-v7];
  v9 = sub_238810E44(&qword_27DF30E80, &qword_2388D8D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16[-v10];
  sub_238810E44(&qword_27DF30E88, &qword_2388D8D78);
  sub_238815180(&qword_27DF30E90, &qword_27DF30E78, &qword_2388D8D68, MEMORY[0x277D85AC0]);
  sub_2388D1CC8();
  sub_2388D1CA8();
  sub_2388D2A38();
  sub_2388D1CD8();

  v12 = *(v3 + 8);
  v12(v6, v2);
  v12(v8, v2);
  v13 = sub_238810E44(&qword_27DF30E70, &qword_2388D8D60);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_238827E88(v11, &qword_27DF30E80, &qword_2388D8D70);
  return v14;
}

uint64_t sub_23888B2C0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = sub_238810E44(&qword_27DF30E78, &qword_2388D8D68);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = sub_238810E44(&qword_27DF30E80, &qword_2388D8D70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  v14 = sub_238810E44(&qword_27DF30E70, &qword_2388D8D60);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v26 = &v24 - v16;
  if (sub_23888E64C())
  {
    v17 = 0;
  }

  else
  {
    v24 = a3;
    v25 = v15;
    sub_238810E44(&qword_27DF30E88, &qword_2388D8D78);
    sub_238815180(&qword_27DF30E90, &qword_27DF30E78, &qword_2388D8D68, MEMORY[0x277D85AC0]);
    sub_2388D1CC8();
    sub_2388D1CA8();
    sub_2388D2A38();
    sub_2388D1CD8();

    v18 = *(v5 + 8);
    v18(v8, v4);
    v18(v10, v4);
    v19 = v25;
    if ((*(v25 + 48))(v13, 1, v14) == 1)
    {
      sub_238827E88(v13, &qword_27DF30E80, &qword_2388D8D70);
      v17 = 0;
    }

    else
    {
      v20 = v26;
      v21 = (*(v19 + 32))(v26, v13, v14);
      v22 = v19;
      MEMORY[0x28223BE20](v21);
      *(&v24 - 2) = v20;
      v17 = sub_23884235C(sub_2388903FC, (&v24 - 4), v24);
      (*(v22 + 8))(v20, v14);
    }
  }

  return v17 & 1;
}

uint64_t sub_23888B6F8@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_238810E44(&qword_27DF30E18, &qword_2388D8D00);
  MEMORY[0x28223BE20](v1 - 8);
  v38 = v32 - v2;
  v40 = sub_2388D1C78();
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238810E44(&qword_27DF30F38, &qword_2388D8FC0);
  v41 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v39 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v32 - v9;
  v11 = sub_2388D1258();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v32 - v16;
  sub_2388D1C98();
  v18 = sub_2388903A4(&qword_27DF30F10, MEMORY[0x277D853D0], MEMORY[0x277D853C8]);
  v35 = v17;
  MEMORY[0x23EE654A0](v15, v11, v18);
  v19 = *(v12 + 8);
  v36 = v12 + 8;
  v37 = v19;
  v34 = v11;
  v20 = v19(v15, v11);
  v45 = 45;
  v46 = 0xE100000000000000;
  v23 = sub_23889008C(v20, v21, v22);
  v24 = MEMORY[0x277D837D0];
  MEMORY[0x23EE654A0](v47, &v45, MEMORY[0x277D837D0], v23);
  v43 = 46;
  v44 = 0xE100000000000000;
  MEMORY[0x23EE654A0](&v45, &v43, v24, v23);
  v33 = v10;
  sub_2388D1218();
  v43 = v47[0];
  v44 = v47[1];
  sub_2388D1248();
  v32[1] = sub_238815180(&qword_27DF30F48, &qword_27DF30F38, &qword_2388D8FC0, MEMORY[0x277D85410]);
  v25 = MEMORY[0x277D83E40];
  v26 = v38;
  sub_2388D1C28();
  v27 = *(v3 + 8);
  v28 = v40;
  v27(v5, v40);

  v29 = v39;
  MEMORY[0x23EE65550](v26, v25);
  v43 = v45;
  v44 = v46;
  sub_2388D1248();
  sub_2388D1C28();
  v27(v5, v28);

  MEMORY[0x23EE65550](v26, v25);
  v30 = *(v41 + 8);
  v30(v29, v6);
  v30(v33, v6);
  return v37(v35, v34);
}

uint64_t sub_23888BB7C@<X0>(uint64_t a1@<X8>)
{
  v115 = a1;
  v108 = sub_2388D1258();
  v109 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = &v102 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_238810E44(&qword_27DF30EF0, &qword_2388D8F90);
  v127 = *(v116 - 8);
  v2 = MEMORY[0x28223BE20](v116);
  v106 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v107 = &v102 - v4;
  v5 = sub_238810E44(&qword_27DF30E18, &qword_2388D8D00);
  v140 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v112 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v111 = &v102 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v135 = &v102 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v122 = &v102 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v131 = &v102 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v102 - v17;
  MEMORY[0x28223BE20](v16);
  v120 = &v102 - v19;
  v113 = sub_238810E44(&qword_27DF30E78, &qword_2388D8D68);
  v114 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v121 = &v102 - v20;
  v21 = sub_2388D1C78();
  v22 = *(v21 - 8);
  v138 = v21;
  v139 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v102 - v26;
  v28 = sub_238810E44(&qword_27DF30EF8, &qword_2388D8F98);
  v29 = *(v28 - 8);
  v129 = v28;
  v130 = v29;
  v30 = MEMORY[0x28223BE20](v28);
  v103 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v136 = &v102 - v32;
  v33 = sub_238810E44(&qword_27DF30E20, &qword_2388D8D08);
  v133 = *(v33 - 8);
  v134 = v33;
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v123 = &v102 - v37;
  v38 = sub_2388D1288();
  v39 = *(v38 - 8);
  v40 = MEMORY[0x28223BE20](v38);
  v102 = &v102 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v102 - v43;
  MEMORY[0x28223BE20](v42);
  v126 = &v102 - v45;
  v132 = v44;
  sub_2388D1278();
  v119 = sub_2388903A4(&qword_27DF30F00, MEMORY[0x277D853F0], MEMORY[0x277D853E8]);
  v128 = v38;
  MEMORY[0x23EE654C0](v44, v38, v119);
  v46 = *(v39 + 8);
  v124 = v39 + 8;
  v125 = v46;
  v47 = (v46)(v44, v38);
  v145 = 0x6574706164616D66;
  v146 = 0xE900000000000072;
  v50 = sub_23889008C(v47, v48, v49);
  v51 = MEMORY[0x277D837D0];
  MEMORY[0x23EE654C0](v147, &v145, MEMORY[0x277D837D0], v50);
  v143 = 45;
  v144 = 0xE100000000000000;
  v117 = v50;
  MEMORY[0x23EE654C0](&v145, &v143, v51, v50);
  sub_2388880B0(v36);
  v104 = sub_238815180(&qword_27DF30E30, &qword_27DF30E20, &qword_2388D8D08, MEMORY[0x277D85420]);
  v52 = v134;
  MEMORY[0x23EE654C0](v36, v134, v104);
  v53 = *(v133 + 8);
  v133 += 8;
  v110 = v53;
  v53(v36, v52);
  v141 = 45;
  v142 = 0xE100000000000000;
  MEMORY[0x23EE654C0](&v143, &v141, v51, v50);
  sub_2388D1248();
  v54 = v105;
  sub_2388D1C98();
  sub_2388D1248();
  sub_2388903A4(&qword_27DF30F10, MEMORY[0x277D853D0], MEMORY[0x277D853C8]);
  v55 = MEMORY[0x277D83E40];
  v56 = v18;
  v118 = v18;
  v57 = v108;
  sub_2388D1C58();
  v58 = v138;
  v137 = *(v139 + 8);
  v139 += 8;
  v137(v25, v138);
  v109[1](v54, v57);
  v59 = v106;
  MEMORY[0x23EE65530](v56, v55);
  v60 = sub_238815180(&qword_27DF30F18, &qword_27DF30EF0, &qword_2388D8F90, MEMORY[0x277D853F8]);
  v61 = v107;
  v62 = v116;
  MEMORY[0x23EE654C0](v59, v116, v60);
  v63 = *(v127 + 1);
  v63(v59, v62);
  v64 = v120;
  sub_2388D1238();
  v63(v61, v62);
  v65 = sub_238810E44(&qword_27DF30E88, &qword_2388D8D78);
  v108 = MEMORY[0x277D85AC0];
  v66 = sub_238815180(&qword_27DF30F20, &qword_27DF30E18, &qword_2388D8D00, MEMORY[0x277D85AC0]);
  v67 = v121;
  v107 = v65;
  sub_2388D1C48();
  v68 = *(v140 + 8);
  v140 += 8;
  v68(v64, v5);
  v137(v27, v58);
  v69 = v103;
  MEMORY[0x23EE65540](v67, v65);
  v106 = sub_238815180(&qword_27DF30F28, &qword_27DF30EF8, &qword_2388D8F98, MEMORY[0x277D85408]);
  v70 = v129;
  MEMORY[0x23EE654C0](v69, v129, v106);
  v71 = *(v130 + 8);
  v130 += 8;
  v109 = v71;
  (v71)(v69, v70);
  v72 = v102;
  sub_2388D1268();
  v73 = v128;
  MEMORY[0x23EE654C0](v72, v128, v119);
  v125(v72, v73);
  sub_2388D1238();
  v74 = v147[0];
  v75 = v147[1];
  sub_2388D1248();
  v141 = v74;
  v142 = v75;
  v76 = v131;
  sub_2388D1C38();
  v77 = v122;
  sub_2388D1C38();

  sub_2388D1C18();
  v127 = v68;
  v68(v77, v5);
  v68(v76, v5);
  v78 = v138;
  v137(v27, v138);
  v79 = v145;
  v80 = v146;
  sub_2388D1248();
  v141 = v79;
  v142 = v80;
  sub_2388D1C38();
  v81 = v135;
  sub_2388D1C38();

  v82 = v77;
  sub_2388D1C18();
  v83 = v81;
  v84 = v127;
  v127(v81, v5);
  v84(v82, v5);
  v85 = v137;
  v137(v27, v78);
  sub_2388D1248();
  sub_2388D1C38();
  v86 = v111;
  sub_2388D1C38();
  v87 = v83;
  sub_2388D1C18();
  v88 = v127;
  v127(v86, v5);
  v88(v87, v5);
  v85(v27, v138);
  v89 = v143;
  v90 = v144;
  sub_2388D1248();
  v141 = v89;
  v142 = v90;
  v91 = v27;
  sub_2388D1C38();
  v92 = v112;
  sub_2388D1C38();

  v116 = v66;
  sub_2388D1C18();
  v93 = v127;
  v127(v92, v5);
  v93(v86, v5);
  v94 = v27;
  v95 = v137;
  v96 = v138;
  v137(v94, v138);
  sub_2388D1248();
  sub_2388D1C38();
  v97 = v121;
  sub_2388D1C18();
  v93(v86, v5);
  v95(v91, v96);
  sub_2388D1248();
  sub_2388D1C38();
  sub_238815180(&qword_27DF30E90, &qword_27DF30E78, &qword_2388D8D68, v108);
  v98 = v113;
  sub_2388D1C18();
  v93(v86, v5);
  v95(v91, v138);
  (*(v114 + 8))(v97, v98);
  v93(v135, v5);
  v93(v122, v5);
  v93(v131, v5);
  v93(v118, v5);
  v93(v120, v5);
  v99 = v128;
  v100 = v125;
  v125(v132, v128);
  (v109)(v136, v129);
  v110(v123, v134);
  return v100(v126, v99);
}

uint64_t static SystemLanguageModel.Adapter.isCompatible(_:)()
{
  v0 = sub_2388D18C8();
  v2 = v1;
  v3 = sub_23888DE00();
  LOBYTE(v0) = sub_23888B2C0(v0, v2, v3);

  return v0 & 1;
}

uint64_t sub_23888CC78(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_238810E44(&qword_27DF30E70, &qword_2388D8D60);
  sub_2388D1CE8();

  LOBYTE(v1) = sub_238890020(v1, v2, v4, v5, v6, v7);

  return v1 & 1;
}

uint64_t sub_23888CD00()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2388D2848();
  v2 = [v0 objectForInfoDictionaryKey_];

  if (v2)
  {
    sub_2388D2EE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_238827E88(v9, &qword_27DF30F50, &qword_2388D8FD0);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = v5;
  v4 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v4 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  return result;
}

uint64_t SystemLanguageModel.Adapter.AssetError.Context.debugDescription.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t SystemLanguageModel.Adapter.AssetError.errorDescription.getter()
{
  if (*(v0 + 24) == 2)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

unint64_t SystemLanguageModel.Adapter.AssetError.recoverySuggestion.getter()
{
  v1 = 0xD000000000000057;
  if (*(v0 + 24) == 1)
  {
    v1 = 0;
  }

  if (*(v0 + 24))
  {
    return v1;
  }

  else
  {
    return 0xD000000000000021;
  }
}

unint64_t sub_23888CEF8()
{
  if (*(v0 + 24) == 2)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

unint64_t sub_23888CF34()
{
  v1 = 0xD000000000000057;
  if (*(v0 + 24) == 1)
  {
    v1 = 0;
  }

  if (*(v0 + 24))
  {
    return v1;
  }

  else
  {
    return 0xD000000000000021;
  }
}

uint64_t sub_23888CF80()
{
  v0 = type metadata accessor for AdapterCompilationRateLimiter.State(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdapterCompilationRateLimiter(0);
  v4 = swift_allocObject();
  v5 = (v4 + OBJC_IVAR____TtC16FoundationModels29AdapterCompilationRateLimiter_state);
  *v3 = 0;
  v6 = *(v1 + 28);
  v7 = sub_2388D1028();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  *v5 = 0;
  v8 = *(sub_238810E44(&qword_27DF30E60, &qword_2388D8D50) + 28);
  v9 = sub_238810E44(&qword_27DF30F30, &qword_2388D8FA0);
  bzero(v5 + v8, *(*(v9 - 8) + 64));
  result = sub_2388900E0(v3, v5 + v8);
  *(v4 + 16) = 3;
  *(v4 + 24) = 0x40F5180000000000;
  qword_27DF3F8A8 = v4;
  return result;
}

uint64_t sub_23888D0CC()
{
  v1 = v0 + OBJC_IVAR____TtC16FoundationModels29AdapterCompilationRateLimiter_state;
  v2 = sub_238810E44(&qword_27DF30E60, &qword_2388D8D50);
  sub_23888FFC0(v1 + *(v2 + 28), type metadata accessor for AdapterCompilationRateLimiter.State);

  return swift_deallocClassInstance();
}

uint64_t sub_23888D168(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23888D260;

  return v6(a1);
}

uint64_t sub_23888D260()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23888D358(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2388903F8;

  return v6(a1);
}

unint64_t *sub_23888D450(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_23888D740(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_23888D4E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_2388D1118();
  result = MEMORY[0x28223BE20](v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v7 + 16;
  v34 = v7;
  v31 = 0;
  v32 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v38;
    v20 = v37;
LABEL_11:
    (*(v34 + 16))(v20, *(v36 + 48) + *(v34 + 72) * v18, v19);
    v23 = v35(v20);
    v24 = v20;
    if (v4)
    {
      return (*v32)(v20, v19);
    }

    v25 = v23;
    result = (*v32)(v24, v19);
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v36;

        return sub_23888DAD8(v30, v29, v31, v27);
      }
    }
  }

  v21 = v9;
  v19 = v38;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = *(v11 + 8 * v9);
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_23888D740(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_23888D8B4(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23888D8B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_238810E44(&qword_27DF30EE8, &qword_2388DC190);
  result = sub_2388D2F58();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2388D34A8();

    sub_2388D2938();
    result = sub_2388D34E8();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23888DAD8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_2388D1118();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_238810E44(&qword_27DF30F58, &qword_2388D8FF0);
  result = sub_2388D2F58();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_2388903A4(&qword_27DF30F60, MEMORY[0x277CC9740], MEMORY[0x277CC9748]);
    result = sub_2388D2798();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23888DE00()
{
  v40 = sub_2388D1918();
  v35 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_2388D1928();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2388D19E8();
  v4 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2388D1998();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2388D1A18();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *MEMORY[0x277D0E2D8], v36);
  sub_2388D1988();
  sub_2388D1A08();
  (*(v8 + 8))(v10, v7);
  sub_2388D1938();
  v15 = (*(v12 + 8))(v14, v11);
  v16 = MEMORY[0x23EE65B90](v15);
  (*(v37 + 8))(v3, v38);
  v17 = *(v16 + 16);
  if (v17)
  {
    v41 = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v17, 0);
    v18 = v41;
    v19 = *(v35 + 16);
    v20 = *(v35 + 80);
    v36 = v16;
    v21 = v16 + ((v20 + 32) & ~v20);
    v37 = *(v35 + 72);
    v38 = v19;
    v22 = (v35 + 8);
    v23 = v35 + 16;
    do
    {
      v25 = v39;
      v24 = v40;
      v26 = v23;
      v38(v39, v21, v40);
      v27 = sub_2388D1908();
      v29 = v28;
      (*v22)(v25, v24);
      v41 = v18;
      v31 = *(v18 + 16);
      v30 = *(v18 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2388B7BD0((v30 > 1), v31 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v31 + 1;
      v32 = v18 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
      v21 += v37;
      --v17;
      v23 = v26;
    }

    while (v17);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v18;
}

uint64_t sub_23888E268@<X0>(unint64_t *a2@<X8>)
{
  v34[4] = *MEMORY[0x277D85DE8];
  v4 = sub_2388D0F78();
  v6 = v2;
  if (v2)
  {
    goto LABEL_2;
  }

  v12 = v4;
  v13 = v5;
  v14 = objc_opt_self();
  v15 = sub_2388D0FE8();
  v33[0] = 0;
  v16 = [v14 JSONObjectWithData:v15 options:0 error:v33];

  v17 = v33[0];
  if (!v16)
  {
    v21 = v17;
    v6 = sub_2388D0ED8();

    swift_willThrow();
    sub_238826D50(v12, v13);
LABEL_2:
    sub_238810E44(&qword_27DF2FAD8, &unk_2388D6360);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2388D3F70;
    *(v7 + 32) = v6;
    sub_23888EFA8(v7, v8, v9);
    swift_allocError();
    *v10 = 0xD00000000000001DLL;
    *(v10 + 8) = 0x80000002388DF7C0;
    *(v10 + 16) = v7;
    *(v10 + 24) = 0;
    return swift_willThrow();
  }

  sub_2388D2EE8();
  swift_unknownObjectRelease();
  sub_2388411D4(v34, v33);
  sub_238810E44(&qword_27DF30E48, &qword_2388D8D20);
  if (swift_dynamicCast())
  {
    if (*(v31 + 16) && (v18 = sub_238820AA8(0x44726F7461657263, 0xEE0064656E696665), (v19 & 1) != 0) && (sub_2388411D4(*(v31 + 56) + 32 * v18, v33), (swift_dynamicCast() & 1) != 0))
    {
      v20 = v31;
    }

    else
    {
      v20 = sub_238878D7C(MEMORY[0x277D84F90]);
    }

    if (*(v31 + 16))
    {
      v24 = sub_238820AA8(0xD000000000000011, 0x80000002388DF7E0);
      if (v25)
      {
        sub_2388411D4(*(v31 + 56) + 32 * v24, v33);
        v26 = swift_dynamicCast();
        if (v26)
        {
          v22 = v31;
        }

        else
        {
          v22 = 0;
        }

        if (v26)
        {
          v23 = v32;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      if (*(v31 + 16))
      {
        v27 = sub_238820AA8(0xD000000000000012, 0x80000002388DF800);
        if (v28)
        {
          sub_2388411D4(*(v31 + 56) + 32 * v27, v33);
          sub_238826D50(v12, v13);
          sub_2388158BC(v34);

          result = swift_dynamicCast();
          v29 = v31;
          v30 = v32;
          if (!result)
          {
            v29 = 0;
            v30 = 0;
          }

          goto LABEL_28;
        }
      }
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    sub_238826D50(v12, v13);

    result = sub_2388158BC(v34);
  }

  else
  {
    v20 = sub_238878D7C(MEMORY[0x277D84F90]);
    sub_238826D50(v12, v13);
    result = sub_2388158BC(v34);
    v22 = 0;
    v23 = 0;
  }

  v29 = 0;
  v30 = 0;
LABEL_28:
  *a2 = v20;
  a2[1] = v22;
  a2[2] = v23;
  a2[3] = v29;
  a2[4] = v30;
  return result;
}

uint64_t sub_23888E64C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_2388D2758();
  if (*(v2 + 16) && (v3 = sub_238820AA8(0xD000000000000027, 0x80000002388DF340), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    if (v7 == 0xD000000000000026 && 0x80000002388DF590 == v6)
    {

      return 1;
    }

    else
    {
      v9 = sub_2388D3368();

      return v9 & 1;
    }
  }

  else
  {

    return 0;
  }
}

BOOL sub_23888E780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_23888E64C())
  {
    return 0;
  }

  v5 = a3 + 40;
  v6 = *(a3 + 16) + 1;
  do
  {
    v4 = --v6 != 0;
    if (!v6)
    {
      break;
    }

    v7 = v5 + 16;

    v8 = sub_2388D29F8();

    v5 = v7;
  }

  while ((v8 & 1) == 0);
  return v4;
}

uint64_t sub_23888E824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a2;
  v41 = a4;
  v38 = a5;
  v39 = a1;
  v7 = sub_2388D0EE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2388D0F58();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v44, "metadata.json");
  HIWORD(v44[1]) = -4864;
  v15 = (*(v8 + 104))(v10, *MEMORY[0x277CC91D8], v7);
  sub_238856678(v15, v16, v17);
  sub_2388D0F48();
  (*(v8 + 8))(v10, v7);
  sub_23888E268(v45);
  if (v5)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v37 = a3;
  v19 = v38;
  v20 = v39;
  v21 = v40;
  (*(v12 + 8))(v14, v11);
  v23 = *&v45[24];
  v22 = v46;
  v24 = v41;
  if (v46 && (, v25 = sub_23888E780(v23, v22, v24), result = , v25))
  {
    v26 = *&v45[16];
    *v19 = *v45;
    *(v19 + 16) = v26;
    *(v19 + 32) = v46;
  }

  else
  {
    v44[0] = 0;
    v44[1] = 0xE000000000000000;
    sub_2388D2FA8();
    MEMORY[0x23EE66C20](0x2072657470616441, 0xE900000000000022);
    if (v21)
    {
      v27 = v21;
      v28 = v20;
    }

    else
    {
      v28 = sub_2388D0F08();
      v27 = v29;
    }

    MEMORY[0x23EE66C20](v28, v27);

    MEMORY[0x23EE66C20](0xD000000000000037, 0x80000002388DF6C0);
    if (v22)
    {
      v48 = *v45;

      sub_238827E88(&v48, &qword_27DF30E48, &qword_2388D8D20);
      v47 = *&v45[8];
      sub_238827E88(&v47, &qword_27DF2FD18, &unk_2388D5400);

      v42 = 0;
      v43 = 0xE000000000000000;
      sub_2388D2FA8();
      MEMORY[0x23EE66C20](0xD000000000000024, 0x80000002388DF740);
      MEMORY[0x23EE66C20](v23, v22);

      MEMORY[0x23EE66C20](0xD000000000000042, 0x80000002388DF770);
      v30 = MEMORY[0x23EE66D80](v24, MEMORY[0x277D837D0]);
      MEMORY[0x23EE66C20](v30);

      MEMORY[0x23EE66C20](46, 0xE100000000000000);
      MEMORY[0x23EE66C20](v42, v43);
    }

    else
    {
      v50 = *v45;
      sub_238827E88(&v50, &qword_27DF30E48, &qword_2388D8D20);
      v49 = *&v45[8];
      sub_238827E88(&v49, &qword_27DF2FD18, &unk_2388D5400);
      v31 = MEMORY[0x23EE66C20](0xD00000000000003FLL, 0x80000002388DF700);
    }

    v34 = v44[0];
    v35 = v44[1];
    sub_23888EFA8(v31, v32, v33);
    swift_allocError();
    *v36 = v34;
    *(v36 + 8) = v35;
    *(v36 + 16) = MEMORY[0x277D84F90];
    *(v36 + 24) = 2;
    return swift_willThrow();
  }

  return result;
}

void sub_23888ECD8()
{
  v21 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v0 = sub_23888CD00();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
  }

  else
  {
    v4 = objc_opt_self();
    v5 = [v4 mainBundle];
    v6 = sub_2388D2848();
    v7 = [v5 objectForInfoDictionaryKey_];

    if (v7)
    {
      sub_2388D2EE8();
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v20[0] = v18;
    v20[1] = v19;
    if (*(&v19 + 1))
    {
      if (swift_dynamicCast())
      {
        v2 = v15;
        v3 = v16;
        goto LABEL_13;
      }
    }

    else
    {
      sub_238827E88(v20, &qword_27DF30F50, &qword_2388D8FD0);
    }

    v8 = [v4 mainBundle];
    v9 = [v8 bundleIdentifier];

    if (!v9)
    {
      v10 = [v4 mainBundle];
      v9 = [v10 bundlePath];
    }

    v2 = sub_2388D2858();
    v3 = v11;
  }

LABEL_13:
  *&v20[0] = 0;
  *(&v20[0] + 1) = 0xE000000000000000;
  sub_2388D2FA8();

  *&v20[0] = 10256610;
  *(&v20[0] + 1) = 0xA300000000000000;
  MEMORY[0x23EE66C20](v2, v3);

  MEMORY[0x23EE66C20](0x1000000000000017, 0x80000002388DF600);
  v12 = sub_2388D2848();

  v13 = sub_2388D2848();
  v14 = sub_2388D2848();
  CFUserNotificationDisplayAlert(0.0, 2uLL, 0, 0, 0, v12, v13, v14, 0, 0, &v17);
}

unint64_t sub_23888EFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30E40;
  if (!qword_27DF30E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30E40);
  }

  return result;
}

uint64_t _s16FoundationModels19SystemLanguageModelC7AdapterV010compatibleF11Identifiers4nameSaySSGSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v43 = sub_2388D1918();
  v46 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2388D1928();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2388D19E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2388D1998();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2388D1A18();
  v37 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x277D0E2D8], v6);
  v17 = v40;
  sub_2388D1988();
  sub_2388D1A08();
  (*(v11 + 8))(v13, v10);
  v18 = sub_2388D1938();
  v19 = MEMORY[0x23EE65B90](v18);
  v20 = *(v19 + 16);
  if (v20)
  {
    v35 = v16;
    v36 = v14;
    v49 = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v20, 0);
    v21 = v49;
    v22 = *(v46 + 16);
    v23 = *(v46 + 80);
    v34 = v19;
    v24 = v19 + ((v23 + 32) & ~v23);
    v41 = *(v46 + 72);
    v42 = v22;
    v46 += 16;
    v25 = (v46 - 8);
    do
    {
      v26 = v43;
      v42(v3, v24, v43);
      v47 = 0x6574706164616D66;
      v48 = 0xEA00000000002D72;
      MEMORY[0x23EE66C20](v44, v45);
      MEMORY[0x23EE66C20](45, 0xE100000000000000);
      v27 = sub_2388D1908();
      MEMORY[0x23EE66C20](v27);

      v29 = v47;
      v28 = v48;
      (*v25)(v3, v26);
      v49 = v21;
      v31 = *(v21 + 16);
      v30 = *(v21 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2388B7BD0((v30 > 1), v31 + 1, 1);
        v21 = v49;
      }

      *(v21 + 16) = v31 + 1;
      v32 = v21 + 16 * v31;
      *(v32 + 32) = v29;
      *(v32 + 40) = v28;
      v24 += v41;
      --v20;
    }

    while (v20);

    (*(v38 + 8))(v40, v39);
    (*(v37 + 8))(v35, v36);
  }

  else
  {

    (*(v38 + 8))(v17, v39);
    (*(v37 + 8))(v16, v14);
    return MEMORY[0x277D84F90];
  }

  return v21;
}

uint64_t sub_23888F4E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23888F528(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238833668;

  return sub_23888858C(a1, v4, v5, v7, v6);
}

void sub_23888F5E8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }
}

uint64_t sub_23888F634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemLanguageModel.Adapter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23888F6B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF30E50, &qword_2388D8D48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23888F780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s7AdapterV7StorageOMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2388D1448();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_23888F8A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = _s7AdapterV7StorageOMa(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2388D1448();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23888F9A8(uint64_t a1)
{
  result = _s7AdapterV7StorageOMa(319);
  if (v2 <= 0x3F)
  {
    result = sub_2388D1448();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23888FA40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_23888FA88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_23888FB20(uint64_t a1)
{
  sub_23888FEA0(319, &qword_27DF30EB8, type metadata accessor for AdapterCompilationRateLimiter.State, MEMORY[0x277D85458]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_23888FBF0()
{
  if (MEMORY[0x277D85020])
  {
    return sub_238810E44(&qword_27DF30E60, &qword_2388D8D50);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}