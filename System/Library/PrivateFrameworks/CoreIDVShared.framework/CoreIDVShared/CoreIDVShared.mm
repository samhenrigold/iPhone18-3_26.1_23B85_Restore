void *sub_2259A9A68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2259A9AC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_225CCE474();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2259A9AEC(uint64_t a1, int a2)
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

uint64_t getEnumTagSinglePayload for ISO18013Version(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ISO18013Version(uint64_t result, int a2, int a3)
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

uint64_t sub_2259A9BE8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259A9C20(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_2259A9DF4(SecCertificateRef *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = SecCertificateCopyData(*a1);
  v4 = sub_225CCCFA4();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_2259A9F20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08, &qword_225CD4B60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259A9FF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08, &qword_225CD4B60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259AA098()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2259AA0D0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2259AA0E0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2259AA0F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259AA130()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2259AA16C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2259AA218()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259AA250()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF78, &unk_225CD7680);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259AA2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ISO18013SessionTranscript(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2259AA3AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ISO18013SessionTranscript(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2259AA468()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259AA4A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  a2[1] = v5;
  return sub_2259CB6FC(v4, v5);
}

id sub_2259AA4F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

uint64_t sub_2259AA55C(char a1)
{
  if (a1)
  {
    return 0x736D61726170;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_2259AA5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225CCCEA4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2259AA69C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_225CCCEA4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2259AA960()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2259AA998(unsigned __int8 a1)
{
  v1 = 0x687469726F676C61;
  v2 = 0x6E65697069636572;
  v3 = 0x736D61726170;
  if (a1 != 3)
  {
    v3 = 1635017060;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x7265646E6573;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2259AAA28(unsigned __int8 a1)
{
  v1 = 0x687469726F676C61;
  v2 = 1397320560;
  v3 = 1937335659;
  if (a1 != 4)
  {
    v3 = 0x736567617373656DLL;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x7265646E6573;
  if (a1 != 1)
  {
    v4 = 0x6E65697069636572;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2259AAAD4(unsigned __int8 a1)
{
  v1 = 0x687469726F676C61;
  v2 = 1635017060;
  if (a1 != 2)
  {
    v2 = 0x707972636E656E75;
  }

  if (a1)
  {
    v1 = 0x736D61726170;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2259AAB54(char a1)
{
  if (!a1)
  {
    return 0x644979656BLL;
  }

  if (a1 == 1)
  {
    return 1635017060;
  }

  return 0x707972636E656E75;
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared10HPKEParamsVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2259AABFC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_225CCDDB4();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B540, &qword_225CD9948);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2259AAD2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_225CCDDB4();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B540, &qword_225CD9948);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2259AAFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225CCD494();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_2259AB060(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_225CCD494();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_2259AB118(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_225CCDEA4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_2259AB1C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_225CCDEA4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259AB278(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_225CCD0B4();
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
    v13 = sub_225CCCB74();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_2259AB3A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_225CCD0B4();
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
    v13 = sub_225CCCB74();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_2259AB4D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_225CCD0B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_225CCCB74();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2259AB5F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_225CCD0B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_225CCCB74();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2259AB718(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_225CCD0B4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_225CCD494();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_2259AB890(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_225CCD0B4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_225CCD494();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2259ABA08(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AnyCodable(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259ABAB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AnyCodable(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259ABB58(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_2259ABC14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259ABCC4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_2259ABD80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259ABE64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_225CCD0B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2259ABF94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_225CCD0B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2259AC0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259AC180(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259AC4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ISO18013SessionTranscript(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_2259AC58C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ISO18013SessionTranscript(0);
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

uint64_t sub_2259AC64C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AnyCodable(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259AC6F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AnyCodable(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259AC79C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2259AC8C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2259AC9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225CCD494();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_2259ACAAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_225CCD494();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_2259ACB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225CCD0B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2259ACC60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_225CCD0B4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2259ACD68(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_225CCD354();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2259ACE14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_225CCD354();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259ACEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ISO18013SessionTranscript(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2259ACF78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ISO18013SessionTranscript(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2259AD034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ISO18013SessionTranscript(0);
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

uint64_t sub_2259AD0F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ISO18013SessionTranscript(0);
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

uint64_t sub_2259AD1A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC30, &unk_225CDCF40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259AD264(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC30, &unk_225CDCF40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259AD31C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2259AD388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2259AD408(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CB30, &qword_225CE2568);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259AD4C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CB30, &qword_225CE2568);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259AD574(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ISO18013Response.IssuerSigned(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC78, &unk_225CDC630);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2259AD6A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ISO18013Response.IssuerSigned(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC78, &unk_225CDC630);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2259AD7D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_225CCD354();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_2259AD88C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_225CCD354();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259AD930(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ISO18013Response.DeviceAuth(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259AD9DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ISO18013Response.DeviceAuth(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259ADA80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_225CCD0B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259ADB2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_225CCD0B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259ADBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFE0, &qword_225CE3E90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2259ADCAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFE0, &qword_225CE3E90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_2259ADD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFE0, &qword_225CE3E90);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2259ADE48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFE0, &qword_225CE3E90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_2259ADF08@<X0>(_BYTE *a1@<X8>)
{
  result = CBOREncoder.presentmentType.getter(&v3);
  *a1 = v3;
  return result;
}

void *sub_2259ADFB4@<X0>(_BYTE *a1@<X8>)
{
  result = CBORDecoder.presentmentType.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_2259AE068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225CCD0B4();
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

    return (v10 + 1);
  }
}

uint64_t sub_2259AE128(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_225CCD0B4();
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

uint64_t sub_2259AE1E4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2259AE230(unsigned __int8 a1)
{
  v1 = 0x726564616568;
  v2 = 0x64616F6C796170;
  if (a1 != 2)
  {
    v2 = 0x727574616E676973;
  }

  if (a1)
  {
    v1 = 0x65746365746F7270;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2259AE2B4(char a1)
{
  if (a1)
  {
    return 7168373;
  }

  else
  {
    return 6501752;
  }
}

uint64_t sub_2259AE2D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCCB74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2259AE344(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCCB74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2259AE3B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D760, &qword_225CE71F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259AE484()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259AE4BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v1 = sub_225CCE944();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259AE5A8()
{
  v1 = sub_225CCE944();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259AE690()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259AE6D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259AEAC8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2259AEB00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259AEB38()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2259AEB70()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2259AEBB0()
{

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_2259AEBF8()
{
  sub_225B1F28C(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2259AEC50()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2259AEC90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259AECCC()
{

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_2259AED04()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259AED3C()
{
  sub_225A4607C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2259AED78()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7C0, &unk_225CE75A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(v1 + 64);
  sub_225A4607C(*(v0 + 16), *(v0 + 24));
  v5 = type metadata accessor for ISO18013Response.DeviceAuth(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = sub_225CCD354();
    }

    else
    {
      v6 = sub_225CCD4C4();
    }

    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2259AEEDC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259AEF24()
{

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t sub_2259AEF6C()
{

  return MEMORY[0x2821FE8E8](v0, 44, 7);
}

uint64_t sub_2259AEFA4()
{

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_2259AEFF4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2259AF044()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2259AF08C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259AF0CC()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2259AF10C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2259AF15C()
{

  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_2259F6140(*(v0 + 48), *(v0 + 56), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2259AF1A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259AF210()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t get_enum_tag_for_layout_string_13CoreIDVShared15DaemonAnalyticsC39DigitalPresentmentRequestedEventOutcomeO_0(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_2259AF288()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2259B204C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2259B2094()
{
  sub_225B33C90(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2259B20D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B2110()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259B2148()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DA00, &qword_225CEF238);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259B21DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DA00, &qword_225CEF238);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259B22AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259B22E4()
{
  v1 = sub_225CCDA04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259B23B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259B23E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DAB0, &unk_225CEF3F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259B24D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DAB0, &unk_225CEF3F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259B2564()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 32, v3 | 7);
}

uint64_t sub_2259B262C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259B2664()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_2259B38AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_fuzzyMatchAssessment;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2259B3BE8()
{
  v1 = (type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_225CCD124();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2259B3CD8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259B3D94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259B3E44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_225CCD124();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259B3EF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_225CCD124();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259B3F94()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259B3FEC()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2259B4034()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B406C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2259B40AC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259B4100()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2259B4158(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCD0B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2259B41C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCD0B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2259B4250@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_2259B4298(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 56) = v2;
  return result;
}

uint64_t sub_2259B42DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_2259B432C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_2259B437C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_2259B43CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_2259B441C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225CCD624();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448, &qword_225CFA9D0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2259B4518(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_225CCD624();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448, &qword_225CFA9D0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2259B4620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AlgorithmIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2259B46F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AlgorithmIdentifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_2259B47D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259B4818()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2259B4870()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2259B48C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DIPSignpost.Config(0);
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

uint64_t sub_2259B4984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DIPSignpost.Config(0);
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

uint64_t sub_2259B4A3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_225CCD8D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259B4AE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_225CCD8D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259B4B8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B4BC4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2259B4BFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2259B4C44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B4C84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7419A8, &qword_225CFBFA8);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);

  return MEMORY[0x2821FE8E8](v0, 17, 7);
}

uint64_t sub_2259B4DA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08, &qword_225CD4B60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259B4E3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MobileDocumentProviderSceneConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259B4EE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MobileDocumentProviderSceneConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259B4FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225CCCEA4();
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

uint64_t sub_2259B505C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_225CCCEA4();
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

uint64_t sub_2259B5114()
{
  v1 = sub_225CCCEA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259B519C()
{
  v1 = (type metadata accessor for WebPresentmentRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_2259BEF00(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[8];
  v6 = sub_225CCCEA4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2259B5300()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B56C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_225CCCEA4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_2259B5778(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_225CCCEA4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259B5824()
{
  v1 = *(type metadata accessor for PartialWebPresentmentRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_225CCCEA4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2259B5920()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B5958()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B599C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2259B5A08()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2259B5A48()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259B5A88()
{
  sub_2259BEF00(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2259B5AC0()
{
  sub_2259BEF00(*(v0 + 16), *(v0 + 24));
  sub_2259BEF00(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259B5B00()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2259B5B38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B5B70()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259B5BA8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2259B5BEC()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2259B5C44()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2259B5C94()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259B5E6C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2259B5EC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B5F08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B5F48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B5F80()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259B5FB8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259B6090()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2259B60D8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259B6110()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v1 = sub_225CCE944();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2259B621C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v1 = sub_225CCE944();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_2259B62FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sceneIdentifiers];
  *a2 = result;
  return result;
}

id sub_2259B634C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mobileDocumentRegistrations];
  *a2 = result;
  return result;
}

id sub_2259B63AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 attestationCertificate];
  *a2 = result;
  return result;
}

id sub_2259B63FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 authenticationCertificates];
  *a2 = result;
  return result;
}

id sub_2259B644C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 signingKeys];
  *a2 = result;
  return result;
}

id sub_2259B64A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 applicationInstallation];
  *a2 = result;
  return result;
}

id sub_2259B64F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 signingKey];
  *a2 = result;
  return result;
}

id sub_2259B6544@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 certificateChain];
  *a2 = result;
  return result;
}

id sub_2259B661C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 applicationInstallation];
  *a2 = result;
  return result;
}

id sub_2259B666C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 signingKey];
  *a2 = result;
  return result;
}

id sub_2259B66C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 applicationInstallation];
  *a2 = result;
  return result;
}

id sub_2259B6714@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 attestationCertificates];
  *a2 = result;
  return result;
}

id sub_2259B6764@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 authenticationCertificates];
  *a2 = result;
  return result;
}

id sub_2259B67B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 authorityKeyIdentifiers];
  *a2 = result;
  return result;
}

id sub_2259B688C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 applicationInstallation];
  *a2 = result;
  return result;
}

id sub_2259B6964@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 requiresDeletion];
  *a2 = result;
  return result;
}

id sub_2259B69AC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 version];
  *a2 = result;
  return result;
}

id sub_2259B6A74@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isDonated];
  *a2 = result;
  return result;
}

id sub_2259B6AC4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 optInStatus];
  *a2 = result;
  return result;
}

id sub_2259B6C0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 actions];
  *a2 = result;
  return result;
}

id sub_2259B6C5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 proofingSession];
  *a2 = result;
  return result;
}

id sub_2259B6CAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 actionType];
  *a2 = result;
  return result;
}

id sub_2259B6D04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 displayMessage];
  *a2 = result;
  return result;
}

id sub_2259B6D94@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 canUploadOnExpensiveNetwork];
  *a2 = result;
  return result;
}

id sub_2259B6DDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cloudKitUploadsMaxRetryCount];
  *a2 = result;
  return result;
}

id sub_2259B6E24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 connectToWifiReminderInDays];
  *a2 = result;
  return result;
}

id sub_2259B6F2C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 didAttemptComboProofing];
  *a2 = result;
  return result;
}

id sub_2259B6F74@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 didNotifyOnUploadsCompletion];
  *a2 = result;
  return result;
}

id sub_2259B6FBC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 didShowWifiReminderAlert];
  *a2 = result;
  return result;
}

id sub_2259B7084@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 hasUserConsentToShareBiomeData];
  *a2 = result;
  return result;
}

id sub_2259B70CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 issuerCurrentCredentialCapacity];
  *a2 = result;
  return result;
}

id sub_2259B71D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 manualCheckInterval];
  *a2 = result;
  return result;
}

id sub_2259B731C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 proofingActionStatus];
  *a2 = result;
  return result;
}

id sub_2259B7424@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 provisioningRetryTimeout];
  *a2 = result;
  return result;
}

id sub_2259B74EC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldScheduleUploads];
  *a2 = result;
  return result;
}

id sub_2259B7534@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldShowNotificationOnWatch];
  *a2 = result;
  return result;
}

id sub_2259B75FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 target];
  *a2 = result;
  return result;
}

id sub_2259B7644@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 totalUploadAssetsFileSizeInBytes];
  *a2 = result;
  return result;
}

id sub_2259B76CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 proofingErrorMessage];
  *a2 = result;
  return result;
}

id sub_2259B771C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 uploadAssets];
  *a2 = result;
  return result;
}

id sub_2259B77F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 presentments];
  *a2 = result;
  return result;
}

id sub_2259B78C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 credential];
  *a2 = result;
  return result;
}

id sub_2259B7A9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 proofingSession];
  *a2 = result;
  return result;
}

id sub_2259B7AEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 axSettings];
  *a2 = result;
  return result;
}

id sub_2259B7B7C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 didStepUp];
  *a2 = result;
  return result;
}

id sub_2259B7E84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 gestureAssessment];
  *a2 = result;
  return result;
}

id sub_2259B7F4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 livenessAssessment];
  *a2 = result;
  return result;
}

id sub_2259B81D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 passiveGestureAssessment];
  *a2 = result;
  return result;
}

id sub_2259B821C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 passiveLivenessAssessment];
  *a2 = result;
  return result;
}

id sub_2259B83E4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldDonateProofingDecision];
  *a2 = result;
  return result;
}

id sub_2259B842C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 skinTone];
  *a2 = result;
  return result;
}

id sub_2259B8474@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aclType];
  *a2 = result;
  return result;
}

id sub_2259B84FC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 designationStatus];
  *a2 = result;
  return result;
}

id sub_2259B858C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 version];
  *a2 = result;
  return result;
}

id sub_2259B85D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 progenitorKey];
  *a2 = result;
  return result;
}

id sub_2259B8724@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 provisioningFailureReasons];
  *a2 = result;
  return result;
}

id sub_2259B8774@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

id sub_2259B87FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cryptoKeys];
  *a2 = result;
  return result;
}

id sub_2259B884C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 options];
  *a2 = result;
  return result;
}

id sub_2259B889C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 payloads];
  *a2 = result;
  return result;
}

id sub_2259B88EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deleteInactiveKeysAfterDays];
  *a2 = result;
  return result;
}

id sub_2259B8934@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deleteIncompleteCredentialAfterDays];
  *a2 = result;
  return result;
}

id sub_2259B897C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPIIHashMismatchTerminal];
  *a2 = result;
  return result;
}

id sub_2259B89C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 payloadProtectionPolicy];
  *a2 = result;
  return result;
}

id sub_2259B8A0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 presentmentAuthPolicy];
  *a2 = result;
  return result;
}

id sub_2259B8A54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 readerAuthenticationPolicy];
  *a2 = result;
  return result;
}

id sub_2259B8A9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 credential];
  *a2 = result;
  return result;
}

id sub_2259B8C2C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 keySlot];
  *a2 = result;
  return result;
}

id sub_2259B8D34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timesUsed];
  *a2 = result;
  return result;
}

id sub_2259B8DFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 credential];
  *a2 = result;
  return result;
}

id sub_2259B8E4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 payload];
  *a2 = result;
  return result;
}

id sub_2259B8E9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 progenitorAuthACL];
  *a2 = result;
  return result;
}

id sub_2259B8EEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 protectedPayload];
  *a2 = result;
  return result;
}

id sub_2259B8F3C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 relyingParties];
  *a2 = result;
  return result;
}

id sub_2259B9014@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 payload];
  *a2 = result;
  return result;
}

id sub_2259B9124@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 format];
  *a2 = result;
  return result;
}

id sub_2259B91AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 issuerCertificateChain];
  *a2 = result;
  return result;
}

id sub_2259B92BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 protectionType];
  *a2 = result;
  return result;
}

id sub_2259B9444@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 credential];
  *a2 = result;
  return result;
}

id sub_2259B9494@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 identifierRevocationList];
  *a2 = result;
  return result;
}

id sub_2259B94E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 payloadProtectionKey];
  *a2 = result;
  return result;
}

id sub_2259B9534@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 presentmentKey];
  *a2 = result;
  return result;
}

id sub_2259B959C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 presentmentKeys];
  *a2 = result;
  return result;
}

_OWORD *sub_2259B9624(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2259B96D0(uint64_t a1)
{
  sub_225CCE5B4();
}

void *sub_2259B972C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_2259B974C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2259B97A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2259BEF00(result, a2);
  }

  return result;
}

id APPLEIDV_LOG_CLIENT(uint64_t a1)
{
  if (APPLEIDV_LOG_CLIENT_once != -1)
  {
    APPLEIDV_LOG_CLIENT_cold_1();
  }

  v2 = APPLEIDV_LOG_CLIENT_log;

  return v2;
}

id DIV_LOG_KEXT(uint64_t a1)
{
  if (DIV_LOG_KEXT_once != -1)
  {
    DIV_LOG_KEXT_cold_1();
  }

  v2 = DIV_LOG_KEXT_log;

  return v2;
}

uint64_t GenericAppleIDVCall(uint32_t a1, const void *a2, size_t a3, void *a4, size_t *a5)
{
  *existing = 0;
  connect = 0;
  MatchingServices = MEMORY[0x22AA6E860](0, &existing[1]);
  if (MatchingServices)
  {
    return MatchingServices;
  }

  v13 = IOServiceMatching("AppleIDV");
  if (!v13)
  {
    return 5;
  }

  MatchingServices = IOServiceGetMatchingServices(existing[1], v13, existing);
  if (MatchingServices)
  {
    return MatchingServices;
  }

  v14 = IOIteratorNext(existing[0]);
  if (v14)
  {
    v15 = v14;
    v11 = IOServiceOpen(v14, *MEMORY[0x277D85F48], 0, &connect);
    IOObjectRelease(v15);
    if (!v11)
    {
      v11 = IOConnectCallStructMethod(connect, a1, a2, a3, a4, a5);
    }
  }

  else
  {
    v11 = 5;
  }

  IOObjectRelease(existing[0]);
  if (connect)
  {
    IOServiceClose(connect);
  }

  return v11;
}

void OUTLINED_FUNCTION_7(uint64_t a1@<X8>)
{
  *(v3 - 140) = v1;
  *(v3 - 136) = 1024;
  *(v3 - 134) = v2;
  *(v3 - 130) = 2048;
  *(v3 - 128) = a1;
}

void OUTLINED_FUNCTION_8(int a1@<W8>)
{
  *(v2 - 140) = a1;
  *(v2 - 136) = 1024;
  *(v2 - 134) = v1;
  *(v2 - 130) = 1024;
  *(v2 - 128) = v1;
}

void OUTLINED_FUNCTION_9(int a1@<W8>)
{
  *(v1 + 14) = a1;
  *(v2 - 126) = 2048;
  *(v1 + 20) = 4096;
  *(v2 - 116) = 2048;
}

void OUTLINED_FUNCTION_15(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v2 - 144) = a2;
  *(v2 - 140) = a1;
  *(v2 - 132) = 1024;
}

void OUTLINED_FUNCTION_25(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x18u);
}

void OUTLINED_FUNCTION_29(_BYTE *a1@<X8>)
{
  a1[2] = BYTE1(v1);
  a1[3] = BYTE2(v1);
  a1[4] = HIBYTE(v1);
}

BOOL OUTLINED_FUNCTION_36(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL OUTLINED_FUNCTION_37(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL OUTLINED_FUNCTION_38(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL OUTLINED_FUNCTION_46(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

void OUTLINED_FUNCTION_47(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _os_signpost_emit_with_name_impl(a1, v21, OS_SIGNPOST_INTERVAL_BEGIN, v20, a5, a6, va, 2u);
}

void OUTLINED_FUNCTION_60(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, v10, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

void OUTLINED_FUNCTION_61(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, v10, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_62(uint64_t a1, ...)
{
  *v1 = 0;

  return SecAccessControlCreateFromData();
}

void OUTLINED_FUNCTION_63(void *a1, NSObject *a2, os_signpost_type_t a3, uint64_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, v7, a5, a6, a7, 2u);
}

void OUTLINED_FUNCTION_64(void *a1, NSObject *a2, os_signpost_type_t a3, int a4, const char *a5, const char *a6, uint8_t *a7, int a8, uint64_t a9, os_signpost_id_t spid)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, spid, a5, a6, a7, 2u);
}

void OUTLINED_FUNCTION_65(void *a1, NSObject *a2, os_signpost_type_t a3, uint64_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, v7, a5, a6, a7, 2u);
}

void OUTLINED_FUNCTION_66(void *a1, NSObject *a2, os_signpost_type_t a3, uint64_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, v7, a5, a6, a7, 2u);
}

unsigned __int8 *DigestSha256(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];

  v4 = CC_SHA256(v2, v3, md);
  if (v4)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
  }

  return v4;
}

id getUIKPath()
{
  [@"systemgroup.com.apple.mobileactivationd" UTF8String];
  v0 = container_system_group_path_for_identifier();
  if (v0)
  {
    v1 = v0;
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v0];
    v3 = [v2 stringByAppendingPathComponent:@"Library/uik/uik.pem"];

    free(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t hasSEService()
{
  v0 = MobileGestalt_get_current_device();
  secureElement = MobileGestalt_get_secureElement();

  return secureElement;
}

id getSEABASSOIDS()
{
  v6[9] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D49408];
  v6[0] = *MEMORY[0x277D49410];
  v6[1] = v0;
  v1 = *MEMORY[0x277D493D8];
  v6[2] = *MEMORY[0x277D493E0];
  v6[3] = v1;
  v2 = *MEMORY[0x277D493F0];
  v6[4] = *MEMORY[0x277D493E8];
  v6[5] = v2;
  v3 = *MEMORY[0x277D493F8];
  v6[6] = *MEMORY[0x277D49418];
  v6[7] = v3;
  v6[8] = *MEMORY[0x277D49400];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:9];

  return v4;
}

id ECDSASHA256RawToDER(void *a1)
{
  v1 = a1;
  if ([v1 length] != 64)
  {
    goto LABEL_9;
  }

  v2 = [v1 bytes];
  v3 = (v2 + 31);
  v4 = v2 + 1;
  do
  {
    v5 = *(v4 - 1);
    *(v4 - 1) = *v3;
    *v3-- = v5;
    v6 = v4++ >= v3;
  }

  while (!v6);
  v7 = (v2 + 63);
  v8 = v2 + 33;
  do
  {
    v9 = *(v8 - 1);
    *(v8 - 1) = *v7;
    *v7-- = v9;
    v6 = v8++ >= v7;
  }

  while (!v6);
  ccder_sizeof_integer();
  ccder_sizeof_integer();
  v10 = ccder_sizeof();
  if (v10 >= 0x40)
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v10];
    v13 = v12;
    if (v12)
    {
      [v12 mutableBytes];
      ccder_encode_integer();
      ccder_encode_integer();
      ccder_encode_constructed_tl();
      v11 = [MEMORY[0x277CBEA90] dataWithData:v13];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

_BYTE *HexToBytes(void *a1)
{
  v1 = a1;
  v9 = 0;
  if (([v1 length] & 1) == 0)
  {
    v2 = malloc_type_malloc([v1 length] >> 1, 0x945D82EFuLL);
    if (!v2)
    {
      goto LABEL_10;
    }

    if (![v1 length])
    {
LABEL_7:
      v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v2 length:objc_msgSend(v1 freeWhenDone:{"length") >> 1, 1}];
      goto LABEL_10;
    }

    v3 = 0;
    v4 = v2;
    while (1)
    {
      __str[0] = [v1 characterAtIndex:v3];
      v5 = v3 + 1;
      __str[1] = [v1 characterAtIndex:v5];
      v7 = 0;
      *v4 = strtol(__str, &v7, 16);
      if (v7 != &v9)
      {
        break;
      }

      ++v4;
      v3 = v5 + 1;
      if (v3 >= [v1 length])
      {
        goto LABEL_7;
      }
    }

    free(v2);
  }

  v2 = 0;
LABEL_10:

  return v2;
}

id stringsArrayFromIdentityProofingOptions(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = a1 & 3;
  if ((a1 & 3) != 0)
  {
    do
    {
      if (v3)
      {
        [v2 addObject:@"IdentityProofingOptionsPhone"];
        v3 &= ~1uLL;
      }

      else if ((v3 & 2) != 0)
      {
        [v2 addObject:@"IdentityProofingOptionsWatch"];
        break;
      }
    }

    while (v3);
  }

  return v2;
}

uint64_t IdentityProofingOptionsFromStringsArray(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __IdentityProofingOptionsFromStringsArray_block_invoke;
  v4[3] = &unk_278573338;
  v4[4] = &v5;
  [v1 enumerateObjectsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_2259BBABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __IdentityProofingOptionsFromStringsArray_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isEqual:@"IdentityProofingOptionsPhone"])
  {
    v3 = 1;
  }

  else
  {
    if (![v5 isEqual:@"IdentityProofingOptionsWatch"])
    {
      goto LABEL_6;
    }

    v3 = 2;
  }

  *(*(*(a1 + 32) + 8) + 24) |= v3;
LABEL_6:

  return MEMORY[0x2821F96F8]();
}

Class __getBCSBusinessQueryServiceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!BusinessChatServiceLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __BusinessChatServiceLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278573420;
    v6 = 0;
    BusinessChatServiceLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (BusinessChatServiceLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BCSBusinessQueryService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBCSBusinessQueryServiceClass_block_invoke_cold_1();
  }

  getBCSBusinessQueryServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BusinessChatServiceLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BusinessChatServiceLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t AppleIDVManager.__allocating_init()()
{
  v0 = swift_allocObject();
  AppleIDVManager.init()();
  return v0;
}

uint64_t AppleIDVManager.init()()
{
  v1 = v0;
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = sub_225CCE4D4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1)
  {
    v9 = sub_225CCE444();
    v10 = [v8 BOOLForKey_];

    if (v10)
    {
      v31 = sub_2259BE6CC();
      v12 = v11;
      v13 = sub_225CCCFA4();
      v15 = v14;

      sub_225CCE4B4();
      v16 = sub_225CCE494();
      v18 = v17;
      sub_2259BEF00(v13, v15);
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v16 = 0x3E6C696E3CLL;
        v19 = 0xE500000000000000;
      }

      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v20 = off_28105B918;
      v21 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v22 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v22));
      (*(v3 + 16))(v6, &v20[v21], v2);
      os_unfair_lock_unlock(&v20[v22]);

      v23 = sub_225CCD934();
      v24 = sub_225CCED04();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v30 = v12;
        v26 = v25;
        v27 = swift_slowAlloc();
        v32 = v27;
        *v26 = 134349314;
        *(v26 + 4) = v31;
        *(v26 + 12) = 2082;
        v28 = sub_2259BE198(v16, v19, &v32);

        *(v26 + 14) = v28;
        _os_log_impl(&dword_2259A7000, v23, v24, "AppleIDV status = %{public}ld, version = %{public}s", v26, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x22AA6F950](v27, -1, -1);
        MEMORY[0x22AA6F950](v26, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
  }

  return v1;
}

Swift::tuple_status_Int_version_NSData __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIDVManager.getStatus()()
{
  v0 = sub_2259BE6CC();
  result.version.super.isa = v1;
  result.status = v0;
  return result;
}

id AppleIDVManager.persistACLBlob(_:requiresDoublePress:)(void *a1, unint64_t a2, int a3)
{
  result = sub_2259C0010(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

double AppleIDVManager.getPrearmTrustKeyFromExistingKeyBlob(keyBlob:nonce:prognitorPublicKey:)@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X2>, void *a5@<X3>, unint64_t a6@<X4>, void *a7@<X5>)
{
  sub_2259C39A8(a2, a3, a4, a5, a6, a7, v13);
  if (!v7)
  {
    result = *v13;
    v10 = v13[1];
    v11 = v13[2];
    v12 = v13[3];
    *a1 = v13[0];
    a1[1] = v10;
    a1[2] = v11;
    a1[3] = v12;
  }

  return result;
}

double sub_2259BCCE8@<D0>(void (*a1)(_OWORD *__return_ptr)@<X4>, _OWORD *a2@<X8>)
{
  a1(v8);
  if (!v2)
  {
    result = *v8;
    v5 = v8[1];
    v6 = v8[2];
    v7 = v8[3];
    *a2 = v8[0];
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_2259BCD58(unint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259CB764();
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD00000000000001FLL;
}

uint64_t AppleIDVManager.persistModifiedACLBlob(_:referenceACLBlob:externalizedLAContext:)(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(char *, char *, id))
{
  result = sub_2259C7EB0(a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return v8;
  }

  return result;
}

void *sub_2259BCF0C(uint64_t a1)
{
  result = SecAccessControlCreateFromData();
  if (result)
  {
    v2 = result;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD00000000000001ELL, 0x8000000225D0CE70);
    type metadata accessor for SecAccessControl(0);
    sub_225CCF434();

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2259BD03C(void *a1, unint64_t a2, int a3)
{
  result = sub_2259C0010(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

double sub_2259BD108@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X2>, void *a5@<X3>, unint64_t a6@<X4>, void *a7@<X5>)
{
  sub_2259C39A8(a2, a3, a4, a5, a6, a7, v13);
  if (!v7)
  {
    result = *v13;
    v10 = v13[1];
    v11 = v13[2];
    v12 = v13[3];
    *a1 = v13[0];
    a1[1] = v10;
    a1[2] = v11;
    a1[3] = v12;
  }

  return result;
}

double sub_2259BD178@<D0>(void (*a1)(_OWORD *__return_ptr)@<X6>, _OWORD *a2@<X8>)
{
  a1(v8);
  if (!v2)
  {
    result = *v8;
    v5 = v8[1];
    v6 = v8[2];
    v7 = v8[3];
    *a2 = v8[0];
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_2259BD260(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(char *, char *, id))
{
  result = sub_2259C7EB0(a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return v8;
  }

  return result;
}

uint64_t AppleIDVACLType.description.getter(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x6942206863746157;
    }

    else
    {
      if (a1 != 3)
      {
        return 0x6E776F6E6B6E55;
      }

      return 0xD000000000000013;
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0xD000000000000013;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0x694220656E6F6850;
  }
}

unint64_t AppleIDVACLUseCase.description.getter(int a1)
{
  v1 = 0xD000000000000015;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v2 = 0xD000000000000013;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6D746E6573657250;
  }
}

unint64_t sub_2259BD408()
{
  v1 = *v0;
  v2 = 0xD000000000000015;
  v3 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6D746E6573657250;
  }
}

uint64_t sub_2259BD554(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_225CCD4F4();
}

uint64_t sub_2259BD67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_225CCFBD4();
  swift_getWitnessTable();
  sub_225CCD504();
  return sub_225CCFC24();
}

uint64_t sub_2259BD6E8(uint64_t a1, id *a2)
{
  result = sub_225CCE454();
  *a2 = 0;
  return result;
}

uint64_t sub_2259BD760(uint64_t a1, id *a2)
{
  v3 = sub_225CCE464();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2259BD7E0@<X0>(uint64_t *a2@<X8>)
{
  sub_225CCE474();
  v3 = sub_225CCE444();

  *a2 = v3;
  return result;
}

uint64_t sub_2259BD824(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_225CCD4F4();
}

uint64_t sub_2259BD8A0(uint64_t a1)
{
  v2 = sub_2259CB1A8(&qword_27D73AA68, type metadata accessor for LAError, &unk_225CD3DB8);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2259BD90C(uint64_t a1)
{
  v2 = sub_2259CB1A8(&qword_27D73AA68, type metadata accessor for LAError, &unk_225CD3DB8);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2259BD978(void *a1, uint64_t a2)
{
  v4 = sub_2259CB1A8(&qword_27D73AA68, type metadata accessor for LAError, &unk_225CD3DB8);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2259BDA2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2259CB1A8(&qword_27D73AA68, type metadata accessor for LAError, &unk_225CD3DB8);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2259BDAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_225CCFBD4();
  sub_225CCE354();
  return sub_225CCFC24();
}

uint64_t sub_2259BDB08(uint64_t a1)
{
  v2 = sub_2259CB1A8(&qword_27D73AA70, type metadata accessor for LAError, &unk_225CD3F0C);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2259BDB74(uint64_t a1)
{
  v2 = sub_2259CB1A8(&qword_27D73AA70, type metadata accessor for LAError, &unk_225CD3F0C);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2259BDBE4(uint64_t a1)
{
  v2 = sub_2259CB1A8(&qword_27D73AA68, type metadata accessor for LAError, &unk_225CD3DB8);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2259BDC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2259CB1A8(&qword_27D73AA68, type metadata accessor for LAError, &unk_225CD3DB8);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2259BDCD4(uint64_t a1)
{
  v2 = sub_2259CB1A8(&qword_27D73A9F8, type metadata accessor for URLResourceKey, &unk_225CD3668);
  v3 = sub_2259CB1A8(&unk_27D73AA00, type metadata accessor for URLResourceKey, &unk_225CD3608);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2259BDD90(uint64_t a1)
{
  v2 = sub_2259CB1A8(&qword_27D73A9E8, type metadata accessor for VNImageOption, &unk_225CD3A1C);
  v3 = sub_2259CB1A8(&qword_27D73A9F0, type metadata accessor for VNImageOption, &unk_225CD3768);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2259BDE4C(uint64_t a1)
{
  v2 = sub_2259CB1A8(&qword_27D73A9D8, type metadata accessor for VNBarcodeSymbology, &unk_225CD38DC);
  v3 = sub_2259CB1A8(&qword_27D73A9E0, type metadata accessor for VNBarcodeSymbology, &unk_225CD387C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2259BDF08@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_225CCE444();

  *a2 = v3;
  return result;
}

uint64_t sub_2259BDF50(uint64_t a1)
{
  v2 = sub_2259CB1A8(&qword_27D73AAB8, type metadata accessor for CIContextOption, &unk_225CD3F50);
  v3 = sub_2259CB1A8(&qword_27D73AAC0, type metadata accessor for CIContextOption, &unk_225CD3C54);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2259BE00C()
{
  v0 = sub_225CCE474();
  v1 = MEMORY[0x22AA6CF00](v0);

  return v1;
}

uint64_t sub_2259BE048(uint64_t a1)
{
  sub_225CCE474();
  sub_225CCE5B4();
}

uint64_t sub_2259BE09C()
{
  sub_225CCE474();
  sub_225CCFBD4();
  sub_225CCE5B4();
  v0 = sub_225CCFC24();

  return v0;
}

uint64_t sub_2259BE110(void *a1, uint64_t *a2)
{
  v2 = sub_225CCE474();
  v4 = v3;
  if (v2 == sub_225CCE474() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_225CCF934();
  }

  return v7 & 1;
}

unint64_t sub_2259BE198(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2259BE264(v11, 0, 0, 1, a1, a2);
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
    sub_2259CB810(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2259BE264(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2259BE370(a5, a6);
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
    result = sub_225CCF354();
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

void *sub_2259BE370(uint64_t a1, unint64_t a2)
{
  v3 = sub_2259BE3BC(a1, a2);
  sub_2259BE4EC(&unk_2838FB020);
  return v3;
}

void *sub_2259BE3BC(uint64_t a1, unint64_t a2)
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

  v6 = sub_225C0060C(v5, 0);
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

  result = sub_225CCF354();
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
        v10 = sub_225CCE654();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_225C0060C(v10, 0);
        result = sub_225CCF1E4();
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

uint64_t sub_2259BE4EC(uint64_t result)
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

  result = sub_2259BE5D8(result, v11, 1, v3);
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

char *sub_2259BE5D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73AA18, &unk_225CD3AF0);
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

id sub_2259BE6CC()
{
  v60[11] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v57 - v1;
  v3 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v12 = off_28105B918;
  v13 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v14 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v14));
  (*(v9 + 16))(v11, &v12[v13], v8);
  os_unfair_lock_unlock(&v12[v14]);
  v15 = sub_225CCD934();
  v16 = sub_225CCED04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2259A7000, v15, v16, "AppleIDVManager getStatus", v17, 2u);
    MEMORY[0x22AA6F950](v17, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  if (qword_27D73A678 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v3, qword_27D7415C8);
  sub_2259CB588(v18, v5);
  DIPSignpost.init(_:)(v5, v58);
  v60[0] = 0;
  v19 = objc_opt_self();
  v59 = 0;
  v20 = [v19 appleIDVGetStatus:v60 andVersion:&v59];
  v21 = v59;
  if (v20)
  {
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v24 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v25 = MEMORY[0x277D84D18];
    *(inited + 64) = v24;
    *(inited + 72) = v25;
    *(inited + 40) = v22;
    v26 = v21;
    v27 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v29 = v28;
    v30 = sub_225CCE954();
    v31 = *(v30 - 8);
    (*(v31 + 56))(v2, 1, 1, v30);
    LODWORD(v30) = (*(v31 + 48))(v2, 1, v30);
    sub_2259CB640(v2, &unk_27D73B050, &unk_225CD3AD0);
    if (v30)
    {
      v32 = 310;
    }

    else
    {
      v32 = 23;
    }

    v33 = MEMORY[0x277D84F90];
    v34 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v34;
    sub_225B2C4A0(v27, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v59);

    v36 = v59;
    v37 = sub_225B29AA0(0, 1, 1, v33);
    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = sub_225B29AA0((v38 > 1), v39 + 1, 1, v37);
    }

    *(v37 + 2) = v39 + 1;
    v40 = &v37[56 * v39];
    *(v40 + 4) = 0xD00000000000001CLL;
    *(v40 + 5) = 0x8000000225D0D880;
    *(v40 + 6) = 0xD000000000000023;
    *(v40 + 7) = 0x8000000225D0CD70;
    *(v40 + 8) = 0x7574617453746567;
    *(v40 + 9) = 0xEB00000000292873;
    *(v40 + 10) = 62;
    *v29 = v32;
    *(v29 + 8) = v37;
    *(v29 + 16) = 0xD00000000000001CLL;
    *(v29 + 24) = 0x8000000225D0D880;
    *(v29 + 32) = v36;
    *(v29 + 40) = 0;
    swift_willThrow();
  }

  else
  {
    if (v59)
    {
      v36 = v60[0];
      v59;
      v42 = v58;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v42);
      return v36;
    }

    v44 = MEMORY[0x277D84F90];
    v45 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v47 = v46;
    v48 = sub_225CCE954();
    v49 = *(v48 - 8);
    (*(v49 + 56))(v2, 1, 1, v48);
    LODWORD(v48) = (*(v49 + 48))(v2, 1, v48);
    sub_2259CB640(v2, &unk_27D73B050, &unk_225CD3AD0);
    if (v48)
    {
      v50 = 0;
    }

    else
    {
      v50 = 23;
    }

    v51 = sub_225B2C374(v44);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v51;
    sub_225B2C4A0(v45, sub_225B2AC40, 0, v52, &v59);

    v36 = v59;
    v53 = sub_225B29AA0(0, 1, 1, v44);
    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = sub_225B29AA0((v54 > 1), v55 + 1, 1, v53);
    }

    *(v53 + 2) = v55 + 1;
    v56 = &v53[56 * v55];
    *(v56 + 4) = 0xD00000000000003DLL;
    *(v56 + 5) = 0x8000000225D0D8A0;
    *(v56 + 6) = 0xD000000000000023;
    *(v56 + 7) = 0x8000000225D0CD70;
    *(v56 + 8) = 0x7574617453746567;
    *(v56 + 9) = 0xEB00000000292873;
    *(v56 + 10) = 65;
    *v47 = v50;
    *(v47 + 8) = v53;
    *(v47 + 16) = 0xD00000000000003DLL;
    *(v47 + 24) = 0x8000000225D0D8A0;
    *(v47 + 32) = v36;
    *(v47 + 40) = 0;
    swift_willThrow();
  }

  v41 = v58;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v41);
  return v36;
}

uint64_t sub_2259BEF00(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
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

id sub_2259BEFA0()
{
  v60[11] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v57 - v1;
  v3 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v12 = off_28105B918;
  v13 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v14 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v14));
  (*(v9 + 16))(v11, &v12[v13], v8);
  os_unfair_lock_unlock(&v12[v14]);
  v15 = sub_225CCD934();
  v16 = sub_225CCED04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2259A7000, v15, v16, "AppleIDVManager prepareBioBindingUnboundACL", v17, 2u);
    MEMORY[0x22AA6F950](v17, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  if (qword_27D73A680 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v3, qword_27D7415E0);
  sub_2259CB588(v18, v5);
  DIPSignpost.init(_:)(v5, v59);
  v19 = objc_opt_self();
  v60[0] = 0;
  v20 = [v19 prepareUnboundACLForBioBinding_];
  v21 = v60[0];
  if (v20)
  {
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v24 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v25 = MEMORY[0x277D84D18];
    *(inited + 64) = v24;
    *(inited + 72) = v25;
    *(inited + 40) = v22;
    v58 = v21;
    v26 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v28 = v27;
    v29 = sub_225CCE954();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v2, 1, 1, v29);
    LODWORD(v29) = (*(v30 + 48))(v2, 1, v29);
    sub_2259CB640(v2, &unk_27D73B050, &unk_225CD3AD0);
    if (v29)
    {
      v31 = 314;
    }

    else
    {
      v31 = 23;
    }

    v32 = MEMORY[0x277D84F90];
    v33 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60[0] = v33;
    sub_225B2C4A0(v26, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v60);

    v35 = v60[0];
    v36 = sub_225B29AA0(0, 1, 1, v32);
    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_225B29AA0((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v38 + 1;
    v39 = &v36[56 * v38];
    *(v39 + 4) = 0xD000000000000029;
    *(v39 + 5) = 0x8000000225D0D7E0;
    *(v39 + 6) = 0xD000000000000023;
    *(v39 + 7) = 0x8000000225D0CD70;
    *(v39 + 8) = 0xD00000000000001DLL;
    *(v39 + 9) = 0x8000000225D0D810;
    *(v39 + 10) = 79;
    *v28 = v31;
    *(v28 + 8) = v36;
    *(v28 + 16) = 0xD000000000000029;
    *(v28 + 24) = 0x8000000225D0D7E0;
    *(v28 + 32) = v35;
    *(v28 + 40) = 0;
    swift_willThrow();
  }

  else
  {
    if (v60[0])
    {
      v41 = v60[0];
      v35 = sub_225CCCFA4();

      v42 = v59;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v42);
      return v35;
    }

    v58 = 0x8000000225D0CD70;
    v44 = MEMORY[0x277D84F90];
    v45 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v47 = v46;
    v48 = sub_225CCE954();
    v49 = *(v48 - 8);
    (*(v49 + 56))(v2, 1, 1, v48);
    LODWORD(v48) = (*(v49 + 48))(v2, 1, v48);
    sub_2259CB640(v2, &unk_27D73B050, &unk_225CD3AD0);
    if (v48)
    {
      v50 = 0;
    }

    else
    {
      v50 = 23;
    }

    v51 = sub_225B2C374(v44);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v60[0] = v51;
    sub_225B2C4A0(v45, sub_225B2AC40, 0, v52, v60);

    v35 = v60[0];
    v53 = sub_225B29AA0(0, 1, 1, v44);
    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = sub_225B29AA0((v54 > 1), v55 + 1, 1, v53);
    }

    *(v53 + 2) = v55 + 1;
    v56 = &v53[56 * v55];
    *(v56 + 4) = 0xD000000000000047;
    *(v56 + 5) = 0x8000000225D0D830;
    *(v56 + 6) = 0xD000000000000023;
    *(v56 + 7) = v58;
    *(v56 + 8) = 0xD00000000000001DLL;
    *(v56 + 9) = 0x8000000225D0D810;
    *(v56 + 10) = 82;
    *v47 = v50;
    *(v47 + 8) = v53;
    *(v47 + 16) = 0xD000000000000047;
    *(v47 + 24) = 0x8000000225D0D830;
    *(v47 + 32) = v35;
    *(v47 + 40) = 0;
    swift_willThrow();
  }

  v40 = v59;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v40);
  return v35;
}

id sub_2259BF7D8()
{
  v60[11] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v57 - v1;
  v3 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v6 - 8);
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v12 = off_28105B918;
  v13 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v14 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v14));
  (*(v9 + 16))(v11, &v12[v13], v8);
  os_unfair_lock_unlock(&v12[v14]);
  v15 = sub_225CCD934();
  v16 = sub_225CCED04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2259A7000, v15, v16, "AppleIDVManager preparePasscodeBindingUnboundACL", v17, 2u);
    MEMORY[0x22AA6F950](v17, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  if (qword_27D73A688 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v3, qword_27D7415F8);
  sub_2259CB588(v18, v5);
  DIPSignpost.init(_:)(v5, v59);
  v19 = objc_opt_self();
  v60[0] = 0;
  v20 = [v19 prepareUnboundACLForPasscodeBinding_];
  v21 = v60[0];
  if (v20)
  {
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v24 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v25 = MEMORY[0x277D84D18];
    *(inited + 64) = v24;
    *(inited + 72) = v25;
    *(inited + 40) = v22;
    v58 = v21;
    v26 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v28 = v27;
    v29 = sub_225CCE954();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v2, 1, 1, v29);
    LODWORD(v29) = (*(v30 + 48))(v2, 1, v29);
    sub_2259CB640(v2, &unk_27D73B050, &unk_225CD3AD0);
    if (v29)
    {
      v31 = 321;
    }

    else
    {
      v31 = 23;
    }

    v32 = MEMORY[0x277D84F90];
    v33 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60[0] = v33;
    sub_225B2C4A0(v26, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v60);

    v35 = v60[0];
    v36 = sub_225B29AA0(0, 1, 1, v32);
    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_225B29AA0((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v38 + 1;
    v39 = &v36[56 * v38];
    *(v39 + 4) = 0xD00000000000002ELL;
    *(v39 + 5) = 0x8000000225D0D730;
    *(v39 + 6) = 0xD000000000000023;
    *(v39 + 7) = 0x8000000225D0CD70;
    *(v39 + 8) = 0xD000000000000022;
    *(v39 + 9) = 0x8000000225D0D760;
    *(v39 + 10) = 95;
    *v28 = v31;
    *(v28 + 8) = v36;
    *(v28 + 16) = 0xD00000000000002ELL;
    *(v28 + 24) = 0x8000000225D0D730;
    *(v28 + 32) = v35;
    *(v28 + 40) = 0;
    swift_willThrow();
  }

  else
  {
    if (v60[0])
    {
      v41 = v60[0];
      v35 = sub_225CCCFA4();

      v42 = v59;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v42);
      return v35;
    }

    v58 = 0x8000000225D0CD70;
    v44 = MEMORY[0x277D84F90];
    v45 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v47 = v46;
    v48 = sub_225CCE954();
    v49 = *(v48 - 8);
    (*(v49 + 56))(v2, 1, 1, v48);
    LODWORD(v48) = (*(v49 + 48))(v2, 1, v48);
    sub_2259CB640(v2, &unk_27D73B050, &unk_225CD3AD0);
    if (v48)
    {
      v50 = 0;
    }

    else
    {
      v50 = 23;
    }

    v51 = sub_225B2C374(v44);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v60[0] = v51;
    sub_225B2C4A0(v45, sub_225B2AC40, 0, v52, v60);

    v35 = v60[0];
    v53 = sub_225B29AA0(0, 1, 1, v44);
    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = sub_225B29AA0((v54 > 1), v55 + 1, 1, v53);
    }

    *(v53 + 2) = v55 + 1;
    v56 = &v53[56 * v55];
    *(v56 + 4) = 0xD00000000000004CLL;
    *(v56 + 5) = 0x8000000225D0D790;
    *(v56 + 6) = 0xD000000000000023;
    *(v56 + 7) = v58;
    *(v56 + 8) = 0xD000000000000022;
    *(v56 + 9) = 0x8000000225D0D760;
    *(v56 + 10) = 98;
    *v47 = v50;
    *(v47 + 8) = v53;
    *(v47 + 16) = 0xD00000000000004CLL;
    *(v47 + 24) = 0x8000000225D0D790;
    *(v47 + 32) = v35;
    *(v47 + 40) = 0;
    swift_willThrow();
  }

  v40 = v59;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v40);
  return v35;
}

id sub_2259C0010(void *a1, unint64_t a2, int a3)
{
  LODWORD(v105) = a3;
  v112[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v99 - v6;
  v8 = sub_225CCD124();
  v108 = *(v8 - 1);
  v109 = v8;
  MEMORY[0x28223BE20](v8);
  v107 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v102);
  v101 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v11 - 8);
  v106 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_225CCD954();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v17 = off_28105B918;
  v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v19));
  (*(v14 + 16))(v16, &v17[v18], v13);
  os_unfair_lock_unlock(&v17[v19]);
  sub_2259CB710(a1, a2);
  v20 = v13;
  v21 = sub_225CCD934();
  v22 = sub_225CCED04();
  sub_2259BEF00(a1, a2);
  v23 = os_log_type_enabled(v21, v22);
  v100 = v7;
  v103 = a1;
  v104 = a2;
  if (v23)
  {
    v24 = a2;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v112[0] = v26;
    *v25 = 136315138;
    v27 = v110;
    v28 = sub_225B34448(a1, v24);
    v99 = v20;
    v110 = v27;
    v111 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    sub_2259CB764();
    v29 = sub_225CCE384();
    v31 = v30;

    v32 = sub_2259BE198(v29, v31, v112);
    v33 = v106;

    *(v25 + 4) = v32;
    _os_log_impl(&dword_2259A7000, v21, v22, "AppleIDVManager persistACLBlob aclBlob: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AA6F950](v26, -1, -1);
    MEMORY[0x22AA6F950](v25, -1, -1);

    (*(v14 + 8))(v16, v99);
  }

  else
  {

    (*(v14 + 8))(v16, v20);
    v33 = v106;
  }

  v34 = v102;
  v35 = v101;
  if (qword_27D73A690 != -1)
  {
    v98 = v102;
    swift_once();
    v34 = v98;
  }

  v36 = __swift_project_value_buffer(v34, qword_27D741610);
  sub_2259CB588(v36, v35);
  DIPSignpost.init(_:)(v35, v33);
  v37 = sub_225CCCF74();
  v38 = objc_opt_self();
  v112[0] = 0;
  v111 = 0;
  v39 = [v38 appleIDVPersistACLBlob:v37 intoBlob:v112 returnBioUUIDs:&v111 andRequireDoublePress:v105 & 1];

  v40 = v111;
  v41 = v112[0];
  if (v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v43 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v44 = MEMORY[0x277D84D18];
    *(inited + 64) = v43;
    *(inited + 72) = v44;
    *(inited + 40) = v39;
    v103 = v40;
    v45 = v40;
    v109 = v41;
    v46 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v48 = v47;
    v49 = sub_225CCE954();
    v50 = *(v49 - 8);
    v51 = v100;
    (*(v50 + 56))(v100, 1, 1, v49);
    LODWORD(v49) = (*(v50 + 48))(v51, 1, v49);
    sub_2259CB640(v51, &unk_27D73B050, &unk_225CD3AD0);
    if (v49)
    {
      v52 = 311;
    }

    else
    {
      v52 = 23;
    }

    v53 = MEMORY[0x277D84F90];
    v54 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112[0] = v54;
    sub_225B2C4A0(v46, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v112);

    v56 = v112[0];
    v57 = sub_225B29AA0(0, 1, 1, v53);
    v59 = *(v57 + 2);
    v58 = *(v57 + 3);
    v60 = (v59 + 1);
    if (v59 >= v58 >> 1)
    {
      v57 = sub_225B29AA0((v58 > 1), v59 + 1, 1, v57);
    }

    *(v57 + 2) = v60;
    v61 = &v57[56 * v59];
    *(v61 + 4) = 0xD000000000000021;
    *(v61 + 5) = 0x8000000225D0D690;
    *(v61 + 6) = 0xD000000000000023;
    *(v61 + 7) = 0x8000000225D0CD70;
    *(v61 + 8) = 0xD000000000000026;
    *(v61 + 9) = 0x8000000225D0D6C0;
    *(v61 + 10) = 113;
    *v48 = v52;
    *(v48 + 8) = v57;
    *(v48 + 16) = 0xD000000000000021;
    *(v48 + 24) = 0x8000000225D0D690;
    *(v48 + 32) = v56;
    *(v48 + 40) = 0;
    swift_willThrow();

LABEL_15:
    v62 = v106;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v62);
    return v60;
  }

  if (!v112[0])
  {
    v109 = 0x8000000225D0CD70;
    v103 = v111;
    v80 = v111;
    v81 = MEMORY[0x277D84F90];
    v82 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v84 = v83;
    v85 = sub_225CCE954();
    v86 = *(v85 - 8);
    v87 = v100;
    (*(v86 + 56))(v100, 1, 1, v85);
    LODWORD(v85) = (*(v86 + 48))(v87, 1, v85);
    sub_2259CB640(v87, &unk_27D73B050, &unk_225CD3AD0);
    if (v85)
    {
      v88 = 0;
    }

    else
    {
      v88 = 23;
    }

    v89 = sub_225B2C374(v81);
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v112[0] = v89;
    sub_225B2C4A0(v82, sub_225B2AC40, 0, v90, v112);

    v60 = v112[0];
    v91 = sub_225B29AA0(0, 1, 1, v81);
    v93 = *(v91 + 2);
    v92 = *(v91 + 3);
    if (v93 >= v92 >> 1)
    {
      v91 = sub_225B29AA0((v92 > 1), v93 + 1, 1, v91);
    }

    *(v91 + 2) = v93 + 1;
    v94 = &v91[56 * v93];
    *(v94 + 4) = 0xD00000000000003FLL;
    *(v94 + 5) = 0x8000000225D0D6F0;
    *(v94 + 6) = 0xD000000000000023;
    *(v94 + 7) = v109;
    *(v94 + 8) = 0xD000000000000026;
    *(v94 + 9) = 0x8000000225D0D6C0;
    *(v94 + 10) = 116;
    *v84 = v88;
    *(v84 + 8) = v91;
    *(v84 + 16) = 0xD00000000000003FLL;
    *(v84 + 24) = 0x8000000225D0D6F0;
    *(v84 + 32) = v60;
    *(v84 + 40) = 0;
    swift_willThrow();
    goto LABEL_15;
  }

  if (v111)
  {
    v112[0] = 0;
    v63 = v41;
    v64 = v40;
    v65 = v63;
    sub_225CCE804();
    v66 = v112[0];
    if (v112[0])
    {
      v67 = *(v112[0] + 2);
      if (v67)
      {
        v102 = v41;
        v103 = v40;
        v112[0] = MEMORY[0x277D84F90];
        sub_2259D52A4(0, v67, 0);
        v68 = v112[0];
        v105 = *(v108 + 16);
        v69 = (*(v108 + 80) + 32) & ~*(v108 + 80);
        v101 = v66;
        v70 = &v66[v69];
        v104 = *(v108 + 72);
        v108 += 16;
        v71 = (v108 - 8);
        do
        {
          v72 = v107;
          v73 = v109;
          v105(v107, v70, v109);
          v74 = sub_225CCD0C4();
          v76 = v75;
          (*v71)(v72, v73);
          v112[0] = v68;
          v78 = v68[2];
          v77 = v68[3];
          if (v78 >= v77 >> 1)
          {
            sub_2259D52A4((v77 > 1), v78 + 1, 1);
            v68 = v112[0];
          }

          v68[2] = v78 + 1;
          v79 = &v68[2 * v78];
          v79[4] = v74;
          v79[5] = v76;
          v70 += v104;
          --v67;
        }

        while (v67);

        v33 = v106;
        v40 = v103;
        v41 = v102;
      }

      else
      {
      }
    }
  }

  else
  {
    v95 = v112[0];
  }

  v96 = v41;
  v60 = sub_225CCCFA4();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v33);
  return v60;
}

uint64_t sub_2259C0BD8(unint64_t a1, unint64_t a2)
{
  v75[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v66 - v5;
  v7 = sub_225CCD124();
  v72 = *(v7 - 1);
  v73 = v7;
  MEMORY[0x28223BE20](v7);
  v71 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v13 = off_28105B918;
  v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v15));
  (*(v10 + 16))(v12, &v13[v14], v9);
  os_unfair_lock_unlock(&v13[v15]);
  sub_2259CB710(a1, a2);
  v16 = sub_225CCD934();
  v17 = v9;
  v18 = sub_225CCED04();
  sub_2259BEF00(a1, a2);
  if (os_log_type_enabled(v16, v18))
  {
    v19 = swift_slowAlloc();
    v69 = v6;
    v20 = v19;
    v67 = swift_slowAlloc();
    v75[0] = v67;
    *v20 = 136315138;
    v21 = v70;
    v22 = sub_225B34448(a1, a2);
    v70 = v21;
    v74 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    v68 = a1;
    sub_2259CB764();
    v66 = v17;
    v23 = sub_225CCE384();
    v25 = v24;

    v26 = sub_2259BE198(v23, v25, v75);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_2259A7000, v16, v18, "AppleIDVManager getUUIDsFromACL aclBlob: %s", v20, 0xCu);
    v27 = v67;
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x22AA6F950](v27, -1, -1);
    v28 = v20;
    v6 = v69;
    MEMORY[0x22AA6F950](v28, -1, -1);

    (*(v10 + 8))(v12, v66);
  }

  else
  {

    (*(v10 + 8))(v12, v17);
  }

  v29 = objc_opt_self();
  v30 = sub_225CCCF74();
  v75[0] = 0;
  v31 = [v29 getUUIDsFromACL:v30 intoArray:v75];

  v32 = v75[0];
  if (v31)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v34 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v35 = MEMORY[0x277D84D18];
    *(inited + 64) = v34;
    *(inited + 72) = v35;
    *(inited + 40) = v31;
    v73 = v32;
    v36 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v38 = v37;
    v39 = sub_225CCE954();
    v40 = *(v39 - 8);
    (*(v40 + 56))(v6, 1, 1, v39);
    LODWORD(v39) = (*(v40 + 48))(v6, 1, v39);
    sub_2259CB640(v6, &unk_27D73B050, &unk_225CD3AD0);
    if (v39)
    {
      v41 = 327;
    }

    else
    {
      v41 = 23;
    }

    v42 = MEMORY[0x277D84F90];
    v43 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v43;
    sub_225B2C4A0(v36, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v75);

    v45 = v75[0];
    v46 = sub_225B29AA0(0, 1, 1, v42);
    v48 = *(v46 + 2);
    v47 = *(v46 + 3);
    if (v48 >= v47 >> 1)
    {
      v46 = sub_225B29AA0((v47 > 1), v48 + 1, 1, v46);
    }

    *(v46 + 2) = v48 + 1;
    v49 = &v46[56 * v48];
    *(v49 + 4) = 0xD00000000000001ALL;
    *(v49 + 5) = 0x8000000225D0D650;
    *(v49 + 6) = 0xD000000000000023;
    *(v49 + 7) = 0x8000000225D0CD70;
    *(v49 + 8) = 0xD000000000000013;
    *(v49 + 9) = 0x8000000225D0D670;
    *(v49 + 10) = 131;
    *v38 = v41;
    *(v38 + 8) = v46;
    *(v38 + 16) = 0xD00000000000001ALL;
    *(v38 + 24) = 0x8000000225D0D650;
    *(v38 + 32) = v45;
    *(v38 + 40) = 0;
    swift_willThrow();
  }

  else if (v75[0])
  {
    v75[0] = 0;
    v51 = v32;
    sub_225CCE804();
    v52 = v75[0];
    if (v75[0])
    {
      v53 = *(v75[0] + 16);
      if (v53)
      {
        v67 = v51;
        v75[0] = MEMORY[0x277D84F90];
        sub_2259D52A4(0, v53, 0);
        v45 = v75[0];
        v54 = *(v72 + 16);
        v55 = *(v72 + 80);
        v66 = v52;
        v56 = v52 + ((v55 + 32) & ~v55);
        v68 = *(v72 + 72);
        v69 = v54;
        v72 += 16;
        v57 = (v72 - 8);
        do
        {
          v58 = v71;
          v59 = v73;
          (v69)(v71, v56, v73);
          v60 = sub_225CCD0C4();
          v62 = v61;
          (*v57)(v58, v59);
          v75[0] = v45;
          v64 = *(v45 + 16);
          v63 = *(v45 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_2259D52A4((v63 > 1), v64 + 1, 1);
            v45 = v75[0];
          }

          *(v45 + 16) = v64 + 1;
          v65 = v45 + 16 * v64;
          *(v65 + 32) = v60;
          *(v65 + 40) = v62;
          v56 += v68;
          --v53;
        }

        while (v53);
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  else
  {
    return 0;
  }

  return v45;
}

void sub_2259C13E4(unint64_t a1, id a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = v48 - v5;
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v10 = off_28105B918;
  v11 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v12 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v12));
  (*(v7 + 16))(v9, &v10[v11], v6);
  os_unfair_lock_unlock(&v10[v12]);
  sub_2259CB710(a1, a2);
  v13 = v6;
  v14 = sub_225CCD934();
  v15 = sub_225CCED04();
  sub_2259BEF00(a1, a2);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v48[0] = v13;
    v17 = v16;
    v18 = swift_slowAlloc();
    *&v53 = v18;
    *v17 = 136315138;
    v19 = v51;
    v20 = sub_225B34448(a1, a2);
    v51 = v19;
    v52 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    v49 = a2;
    sub_2259CB764();
    v48[1] = a1;
    v21 = sub_225CCE384();
    v23 = v22;

    v24 = sub_2259BE198(v21, v23, &v53);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_2259A7000, v14, v15, "AppleIDVManager requireDoublePressOnACL aclBlob: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AA6F950](v18, -1, -1);
    MEMORY[0x22AA6F950](v17, -1, -1);

    (*(v7 + 8))(v9, v48[0]);
  }

  else
  {

    (*(v7 + 8))(v9, v13);
  }

  v25 = objc_opt_self();
  v26 = sub_225CCCF74();
  *&v53 = 0;
  v27 = [v25 requireDoublePressOnACL:v26 intoACL:&v53];

  v28 = v53;
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v30 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v31 = MEMORY[0x277D84D18];
    *(inited + 64) = v30;
    *(inited + 72) = v31;
    *(inited + 40) = v27;
    v49 = v28;
    v32 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v34 = v33;
    v35 = sub_225CCE954();
    v36 = *(v35 - 8);
    v37 = v50;
    (*(v36 + 56))(v50, 1, 1, v35);
    LODWORD(v35) = (*(v36 + 48))(v37, 1, v35);
    sub_2259CB640(v37, &unk_27D73B050, &unk_225CD3AD0);
    if (v35)
    {
      v38 = 328;
    }

    else
    {
      v38 = 23;
    }

    v39 = MEMORY[0x277D84F90];
    v40 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v53 = v40;
    sub_225B2C4A0(v32, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v53);

    v42 = v53;
    v43 = sub_225B29AA0(0, 1, 1, v39);
    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_225B29AA0((v44 > 1), v45 + 1, 1, v43);
    }

    *(v43 + 2) = v45 + 1;
    v46 = &v43[56 * v45];
    *(v46 + 4) = 0xD000000000000021;
    *(v46 + 5) = 0x8000000225D0D600;
    *(v46 + 6) = 0xD000000000000023;
    *(v46 + 7) = 0x8000000225D0CD70;
    *(v46 + 8) = 0xD00000000000001BLL;
    *(v46 + 9) = 0x8000000225D0D630;
    *(v46 + 10) = 144;
    *v34 = v38;
    *(v34 + 8) = v43;
    *(v34 + 16) = 0xD000000000000021;
    *(v34 + 24) = 0x8000000225D0D600;
    *(v34 + 32) = v42;
    *(v34 + 40) = 0;
    swift_willThrow();
  }

  else if (v53)
  {
    v53 = xmmword_225CD3100;
    v47 = v28;
    sub_225CCCF94();
  }
}

void sub_2259C1A68(unint64_t a1, unint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = v51 - v5;
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v10 = off_28105B918;
  v11 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v12 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v12));
  (*(v7 + 16))(v9, &v10[v11], v6);
  os_unfair_lock_unlock(&v10[v12]);
  sub_2259CB710(a1, a2);
  v13 = v6;
  v14 = sub_225CCD934();
  v15 = sub_225CCED04();
  sub_2259BEF00(a1, a2);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v51[0] = v13;
    v17 = v16;
    v18 = swift_slowAlloc();
    *&v56 = v18;
    *v17 = 136315138;
    v19 = v54;
    v20 = sub_225B34448(a1, a2);
    v54 = v19;
    v55 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    v52 = a2;
    sub_2259CB764();
    v51[1] = a1;
    v21 = sub_225CCE384();
    v23 = v22;

    v24 = sub_2259BE198(v21, v23, &v56);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_2259A7000, v14, v15, "AppleIDVManager removeDoublePressOnACL aclBlob: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AA6F950](v18, -1, -1);
    MEMORY[0x22AA6F950](v17, -1, -1);

    (*(v7 + 8))(v9, v51[0]);
  }

  else
  {

    (*(v7 + 8))(v9, v13);
  }

  v25 = objc_opt_self();
  v26 = sub_225CCCF74();
  *&v56 = 0;
  v27 = [v25 removeDoublePressOnACL:v26 intoACL:&v56];

  v28 = v56;
  if (v27)
  {
    v29 = v56;
  }

  else if (v56)
  {
    v56 = xmmword_225CD3100;
    v50 = v28;
    sub_225CCCF94();
    if (*(&v56 + 1) >> 60 != 15)
    {

      return;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
  inited = swift_initStackObject();
  *(inited + 32) = 20;
  v31 = inited + 32;
  v32 = MEMORY[0x277D84CC0];
  *(inited + 16) = xmmword_225CD30F0;
  v33 = MEMORY[0x277D84D18];
  *(inited + 64) = v32;
  *(inited + 72) = v33;
  *(inited + 40) = v27;
  v34 = sub_225B2C374(inited);
  swift_setDeallocating();
  sub_2259CB640(v31, &qword_27D73B060, &unk_225CD3AE0);
  v52 = 0x8000000225D0CD70;
  sub_2259CB5EC();
  swift_allocError();
  v36 = v35;
  v37 = sub_225CCE954();
  v38 = *(v37 - 8);
  v39 = v53;
  (*(v38 + 56))(v53, 1, 1, v37);
  LODWORD(v37) = (*(v38 + 48))(v39, 1, v37);
  sub_2259CB640(v39, &unk_27D73B050, &unk_225CD3AD0);
  if (v37)
  {
    v40 = 330;
  }

  else
  {
    v40 = 23;
  }

  v41 = MEMORY[0x277D84F90];
  v42 = sub_225B2C374(MEMORY[0x277D84F90]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v56 = v42;
  sub_225B2C4A0(v34, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v56);

  v44 = v56;
  v45 = sub_225B29AA0(0, 1, 1, v41);
  v47 = *(v45 + 2);
  v46 = *(v45 + 3);
  if (v47 >= v46 >> 1)
  {
    v45 = sub_225B29AA0((v46 > 1), v47 + 1, 1, v45);
  }

  *(v45 + 2) = v47 + 1;
  v48 = &v45[56 * v47];
  *(v48 + 4) = 0xD000000000000020;
  *(v48 + 5) = 0x8000000225D0D5B0;
  v49 = v52;
  *(v48 + 6) = 0xD000000000000023;
  *(v48 + 7) = v49;
  *(v48 + 8) = 0xD00000000000001ALL;
  *(v48 + 9) = 0x8000000225D0D5E0;
  *(v48 + 10) = 154;
  *v36 = v40;
  *(v36 + 8) = v45;
  *(v36 + 16) = 0xD000000000000020;
  *(v36 + 24) = 0x8000000225D0D5B0;
  *(v36 + 32) = v44;
  *(v36 + 40) = 0;
  swift_willThrow();
}

id sub_2259C20CC(uint64_t a1, void *a2)
{
  v61 = a2;
  v60 = a1;
  v63[11] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v60 - v3;
  v5 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v14 = off_28105B918;
  v15 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v16 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v16));
  (*(v11 + 16))(v13, &v14[v15], v10);
  os_unfair_lock_unlock(&v14[v16]);
  v17 = sub_225CCD934();
  v18 = sub_225CCED04();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2259A7000, v17, v18, "AppleIDVManager recovePersistedACLBlob", v19, 2u);
    MEMORY[0x22AA6F950](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  if (qword_27D73A698 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v5, qword_27D741628);
  sub_2259CB588(v20, v7);
  DIPSignpost.init(_:)(v7, v62);
  v21 = objc_opt_self();
  v22 = sub_225CCCF74();
  v63[0] = 0;
  v23 = [v21 appleIDVRecoverPersistedACLBlob:v22 intoBlob:{v63, v60, v61}];

  v24 = v63[0];
  if (v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v26 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v27 = MEMORY[0x277D84D18];
    *(inited + 64) = v26;
    *(inited + 72) = v27;
    *(inited + 40) = v23;
    v61 = v24;
    v28 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v30 = v29;
    v31 = sub_225CCE954();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v4, 1, 1, v31);
    LODWORD(v31) = (*(v32 + 48))(v4, 1, v31);
    sub_2259CB640(v4, &unk_27D73B050, &unk_225CD3AD0);
    if (v31)
    {
      v33 = 312;
    }

    else
    {
      v33 = 23;
    }

    v34 = MEMORY[0x277D84F90];
    v35 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63[0] = v35;
    sub_225B2C4A0(v28, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v63);

    v37 = v63[0];
    v38 = sub_225B29AA0(0, 1, 1, v34);
    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = sub_225B29AA0((v39 > 1), v40 + 1, 1, v38);
    }

    *(v38 + 2) = v40 + 1;
    v41 = &v38[56 * v40];
    *(v41 + 4) = 0xD000000000000027;
    *(v41 + 5) = 0x8000000225D0D510;
    *(v41 + 6) = 0xD000000000000023;
    *(v41 + 7) = 0x8000000225D0CD70;
    *(v41 + 8) = 0xD00000000000001ELL;
    *(v41 + 9) = 0x8000000225D0D540;
    *(v41 + 10) = 168;
    *v30 = v33;
    *(v30 + 8) = v38;
    *(v30 + 16) = 0xD000000000000027;
    *(v30 + 24) = 0x8000000225D0D510;
    *(v30 + 32) = v37;
    *(v30 + 40) = 0;
    swift_willThrow();
  }

  else
  {
    if (v63[0])
    {
      v43 = v63[0];
      v37 = sub_225CCCFA4();

      v44 = v62;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v44);
      return v37;
    }

    v37 = 0x8000000225D0D560;
    v61 = 0x8000000225D0CD70;
    v46 = MEMORY[0x277D84F90];
    v47 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v49 = v48;
    v50 = sub_225CCE954();
    v51 = *(v50 - 8);
    (*(v51 + 56))(v4, 1, 1, v50);
    LODWORD(v50) = (*(v51 + 48))(v4, 1, v50);
    sub_2259CB640(v4, &unk_27D73B050, &unk_225CD3AD0);
    if (v50)
    {
      v52 = 0;
    }

    else
    {
      v52 = 23;
    }

    v53 = sub_225B2C374(v46);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v63[0] = v53;
    sub_225B2C4A0(v47, sub_225B2AC40, 0, v54, v63);

    v55 = v63[0];
    v56 = sub_225B29AA0(0, 1, 1, v46);
    v58 = *(v56 + 2);
    v57 = *(v56 + 3);
    if (v58 >= v57 >> 1)
    {
      v56 = sub_225B29AA0((v57 > 1), v58 + 1, 1, v56);
    }

    *(v56 + 2) = v58 + 1;
    v59 = &v56[56 * v58];
    *(v59 + 4) = 0xD000000000000045;
    *(v59 + 5) = 0x8000000225D0D560;
    *(v59 + 6) = 0xD000000000000023;
    *(v59 + 7) = v61;
    *(v59 + 8) = 0xD00000000000001ELL;
    *(v59 + 9) = 0x8000000225D0D540;
    *(v59 + 10) = 171;
    *v49 = v52;
    *(v49 + 8) = v56;
    *(v49 + 16) = 0xD000000000000045;
    *(v49 + 24) = 0x8000000225D0D560;
    *(v49 + 32) = v55;
    *(v49 + 40) = 0;
    swift_willThrow();
  }

  v42 = v62;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v42);
  return v37;
}

uint64_t sub_2259C2924(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v93 = a7;
  v91 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v12 - 8);
  v82 = &v79 - v13;
  v85 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v85);
  v84 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v15 - 8);
  v92 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_225CCD954();
  v94 = *(v17 - 8);
  v95 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v20 = off_28105B918;
  v21 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v22 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v22));
  (*(v94 + 16))(v19, &v20[v21], v95);
  os_unfair_lock_unlock(&v20[v22]);
  sub_2259CB710(a1, a2);
  sub_2259CB710(a3, a4);
  v23 = v93;
  sub_2259CB710(a6, v93);
  v24 = sub_225CCD934();
  LODWORD(v21) = sub_225CCED04();
  sub_2259BEF00(a1, a2);
  sub_2259BEF00(a3, a4);
  sub_2259BEF00(a6, v23);
  v81 = v21;
  v83 = v24;
  v25 = os_log_type_enabled(v24, v21);
  v26 = a2;
  v89 = a4;
  v90 = a6;
  v87 = a2;
  v88 = a3;
  v86 = a1;
  if (v25)
  {
    v27 = a6;
    v28 = a1;
    v29 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v98 = v80;
    *v29 = 136315906;
    v30 = v96;
    v31 = sub_225B34448(v28, v26);
    v96 = v30;
    v97 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    sub_2259CB764();
    v79 = v19;
    v32 = sub_225CCE384();
    v34 = v33;

    v35 = sub_2259BE198(v32, v34, &v98);

    *(v29 + 4) = v35;
    *(v29 + 12) = 2080;
    v36 = v96;
    v97 = sub_225B34448(a3, a4);
    v37 = sub_225CCE384();
    v39 = v38;

    v40 = sub_2259BE198(v37, v39, &v98);

    *(v29 + 14) = v40;
    *(v29 + 22) = 2048;
    *(v29 + 24) = v91;
    *(v29 + 32) = 2080;
    v41 = sub_225B34448(v27, v93);
    v96 = v36;
    v97 = v41;
    v42 = v92;
    v43 = sub_225CCE384();
    v45 = v44;

    v46 = sub_2259BE198(v43, v45, &v98);

    *(v29 + 34) = v46;
    v47 = v83;
    _os_log_impl(&dword_2259A7000, v83, v81, "AppleIDVManager authorizePresentmentForSignature aclBlob = %s externalizedLAContext = %s seSlot = %ld payloadDigest = %s", v29, 0x2Au);
    v48 = v80;
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v48, -1, -1);
    MEMORY[0x22AA6F950](v29, -1, -1);

    (*(v94 + 8))(v79, v95);
  }

  else
  {

    (*(v94 + 8))(v19, v95);
    v42 = v92;
  }

  if (qword_27D73A6A0 != -1)
  {
    swift_once();
  }

  v49 = __swift_project_value_buffer(v85, qword_27D741640);
  v50 = v84;
  sub_2259CB588(v49, v84);
  DIPSignpost.init(_:)(v50, v42);
  v51 = objc_opt_self();
  v52 = sub_225CCCF74();
  v53 = sub_225CCCF74();
  v54 = sub_225CCCF74();
  v55 = [v51 appleIDVAuthorizePresentment:v52 withLAContextData:v53 onSESlot:v91 andPayloadDigest:v54];

  if (v55)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v57 = inited + 32;
    v58 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v59 = MEMORY[0x277D84D18];
    *(inited + 64) = v58;
    *(inited + 72) = v59;
    *(inited + 40) = v55;
    v60 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v57, &qword_27D73B060, &unk_225CD3AE0);
    v95 = 0x8000000225D0CD70;
    sub_2259CB5EC();
    v61 = swift_allocError();
    v63 = v62;
    v64 = sub_225CCE954();
    v65 = *(v64 - 8);
    v66 = v82;
    (*(v65 + 56))(v82, 1, 1, v64);
    LODWORD(v64) = (*(v65 + 48))(v66, 1, v64);
    sub_2259CB640(v66, &unk_27D73B050, &unk_225CD3AD0);
    if (v64)
    {
      v67 = 313;
    }

    else
    {
      v67 = 23;
    }

    v68 = MEMORY[0x277D84F90];
    v69 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v69;
    sub_225B2C4A0(v60, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v98);

    v71 = v98;
    v72 = sub_225B29AA0(0, 1, 1, v68);
    v74 = *(v72 + 2);
    v73 = *(v72 + 3);
    if (v74 >= v73 >> 1)
    {
      v72 = sub_225B29AA0((v73 > 1), v74 + 1, 1, v72);
    }

    *(v72 + 2) = v74 + 1;
    v75 = &v72[56 * v74];
    *(v75 + 4) = 0xD000000000000027;
    *(v75 + 5) = 0x8000000225D0D480;
    v76 = v95;
    *(v75 + 6) = 0xD000000000000023;
    *(v75 + 7) = v76;
    *(v75 + 8) = 0xD000000000000055;
    *(v75 + 9) = 0x8000000225D0D4B0;
    *(v75 + 10) = 184;
    *v63 = v67;
    *(v63 + 8) = v72;
    *(v63 + 16) = 0xD000000000000027;
    *(v63 + 24) = 0x8000000225D0D480;
    *(v63 + 32) = v71;
    *(v63 + 40) = 0;
    swift_willThrow();
    v77 = v92;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    result = sub_2259CB6A0(v77);
    v96 = v61;
  }

  else
  {
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v42);
  }

  return result;
}

uint64_t sub_2259C3218@<X0>(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v82 = a4;
  v80 = a2;
  v81 = a3;
  v79 = a1;
  v78 = a5;
  v88 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v77 - v6;
  v8 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v11 - 8);
  v83 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_225CCD954();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v17 = off_28105B918;
  v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v19));
  (*(v14 + 16))(v16, &v17[v18], v13);
  os_unfair_lock_unlock(&v17[v19]);
  v20 = sub_225CCD934();
  v21 = sub_225CCED04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2259A7000, v20, v21, "AppleIDVManager generatePrearmTrustKeyforWatchAndCopyPublicKey", v22, 2u);
    MEMORY[0x22AA6F950](v22, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  if (qword_27D73A6A8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v8, qword_27D741658);
  sub_2259CB588(v23, v10);
  DIPSignpost.init(_:)(v10, v83);
  v24 = objc_opt_self();
  v25 = sub_225CCCF74();
  v26 = sub_225CCCF74();
  v86 = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  v27 = [v24 appleIDVGeneratePrearmTrustKeyForWatchAndCopyPrivateKey:v25 progenitorPublicKey:v26 encryptedPrivateKey:&v87 attestation:&v86 publicKey:&v85 keyBlob:&v84];

  v28 = v84;
  v29 = v85;
  v30 = v86;
  v31 = v87;
  if (!v27 && v87 && v86 && v85 && v84)
  {
    v32 = v84;
    v33 = v29;
    v34 = v30;
    v35 = v31;
    v36 = v34;
    v37 = v33;
    v38 = v32;
    v39 = sub_225CCCFA4();
    v81 = v40;
    v82 = v39;
    v41 = v36;
    v42 = sub_225CCCFA4();
    v79 = v43;
    v80 = v42;

    v44 = v37;
    v45 = sub_225CCCFA4();
    v47 = v46;

    v48 = v38;
    v49 = sub_225CCCFA4();
    v51 = v50;

    v52 = v83;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    result = sub_2259CB6A0(v52);
    v54 = v78;
    v55 = v81;
    *v78 = v82;
    v54[1] = v55;
    v56 = v79;
    v54[2] = v80;
    v54[3] = v56;
    v54[4] = v45;
    v54[5] = v47;
    v54[6] = v49;
    v54[7] = v51;
  }

  else
  {
    v81 = 0x8000000225D0D3F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v58 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v59 = MEMORY[0x277D84D18];
    *(inited + 64) = v58;
    *(inited + 72) = v59;
    *(inited + 40) = v27;
    v82 = v28;
    v80 = v29;
    v79 = v30;
    v60 = v31;
    v61 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v63 = v62;
    v64 = sub_225CCE954();
    v65 = *(v64 - 8);
    (*(v65 + 56))(v7, 1, 1, v64);
    LODWORD(v64) = (*(v65 + 48))(v7, 1, v64);
    sub_2259CB640(v7, &unk_27D73B050, &unk_225CD3AD0);
    if (v64)
    {
      v66 = 324;
    }

    else
    {
      v66 = 23;
    }

    v67 = MEMORY[0x277D84F90];
    v68 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = v68;
    sub_225B2C4A0(v61, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v87);

    v70 = v87;
    v71 = sub_225B29AA0(0, 1, 1, v67);
    v73 = *(v71 + 2);
    v72 = *(v71 + 3);
    if (v73 >= v72 >> 1)
    {
      v71 = sub_225B29AA0((v72 > 1), v73 + 1, 1, v71);
    }

    *(v71 + 2) = v73 + 1;
    v74 = &v71[56 * v73];
    v75 = v81;
    *(v74 + 4) = 0xD000000000000039;
    *(v74 + 5) = v75;
    *(v74 + 6) = 0xD000000000000023;
    *(v74 + 7) = 0x8000000225D0CD70;
    *(v74 + 8) = 0xD000000000000049;
    *(v74 + 9) = 0x8000000225D0D430;
    *(v74 + 10) = 209;
    *v63 = v66;
    *(v63 + 8) = v71;
    *(v63 + 16) = 0xD000000000000039;
    *(v63 + 24) = v75;
    *(v63 + 32) = v70;
    *(v63 + 40) = 0;
    swift_willThrow();

    v76 = v83;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v76);
  }

  return result;
}

uint64_t sub_2259C39A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, void *a7@<X8>)
{
  v87 = a6;
  v85 = a4;
  v86 = a5;
  v84 = a3;
  v83 = a2;
  v82 = a1;
  v81 = a7;
  v93 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v80 - v8;
  v10 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v13 - 8);
  v88 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_225CCD954();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v19 = off_28105B918;
  v20 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v21 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v21));
  (*(v16 + 16))(v18, &v19[v20], v15);
  os_unfair_lock_unlock(&v19[v21]);
  v22 = sub_225CCD934();
  v23 = sub_225CCED04();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2259A7000, v22, v23, "AppleIDVManager getPrearmTrustKeyFromExistingKeyBlob", v24, 2u);
    MEMORY[0x22AA6F950](v24, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  if (qword_27D73A6B0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v10, qword_27D741670);
  sub_2259CB588(v25, v12);
  DIPSignpost.init(_:)(v12, v88);
  v26 = objc_opt_self();
  v27 = sub_225CCCF74();
  v28 = sub_225CCCF74();
  v29 = sub_225CCCF74();
  v91 = 0;
  v92 = 0;
  v89 = 0;
  v90 = 0;
  v30 = [v26 appleIDVGetPrearmTrustKeyFromExistingKeyBlob:v27 nonce:v28 progenitorPublicKey:v29 encryptedPrivateKey:&v92 attestation:&v91 publicKey:&v90 keyBlob:&v89];

  v31 = v89;
  v32 = v90;
  v33 = v91;
  v34 = v92;
  if (!v30 && v92 && v91 && v90 && v89)
  {
    v35 = v89;
    v36 = v32;
    v37 = v33;
    v38 = v34;
    v39 = v37;
    v40 = v36;
    v41 = v35;
    v42 = sub_225CCCFA4();
    v86 = v43;
    v87 = v42;
    v44 = v39;
    v45 = sub_225CCCFA4();
    v84 = v46;
    v85 = v45;

    v47 = v40;
    v48 = sub_225CCCFA4();
    v50 = v49;

    v51 = v41;
    v52 = sub_225CCCFA4();
    v54 = v53;

    v55 = v88;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    result = sub_2259CB6A0(v55);
    v57 = v81;
    v58 = v86;
    *v81 = v87;
    v57[1] = v58;
    v59 = v84;
    v57[2] = v85;
    v57[3] = v59;
    v57[4] = v48;
    v57[5] = v50;
    v57[6] = v52;
    v57[7] = v54;
  }

  else
  {
    v86 = 0x8000000225D0D370;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v61 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v62 = MEMORY[0x277D84D18];
    *(inited + 64) = v61;
    *(inited + 72) = v62;
    *(inited + 40) = v30;
    v87 = v31;
    v85 = v32;
    v84 = v33;
    v63 = v34;
    v64 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v66 = v65;
    v67 = sub_225CCE954();
    v68 = *(v67 - 8);
    (*(v68 + 56))(v9, 1, 1, v67);
    LODWORD(v67) = (*(v68 + 48))(v9, 1, v67);
    sub_2259CB640(v9, &unk_27D73B050, &unk_225CD3AD0);
    if (v67)
    {
      v69 = 331;
    }

    else
    {
      v69 = 23;
    }

    v70 = MEMORY[0x277D84F90];
    v71 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v71;
    sub_225B2C4A0(v64, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v92);

    v73 = v92;
    v74 = sub_225B29AA0(0, 1, 1, v70);
    v76 = *(v74 + 2);
    v75 = *(v74 + 3);
    if (v76 >= v75 >> 1)
    {
      v74 = sub_225B29AA0((v75 > 1), v76 + 1, 1, v74);
    }

    *(v74 + 2) = v76 + 1;
    v77 = &v74[56 * v76];
    v78 = v86;
    *(v77 + 4) = 0xD00000000000002FLL;
    *(v77 + 5) = v78;
    *(v77 + 6) = 0xD000000000000023;
    *(v77 + 7) = 0x8000000225D0CD70;
    *(v77 + 8) = 0xD000000000000047;
    *(v77 + 9) = 0x8000000225D0D3A0;
    *(v77 + 10) = 237;
    *v66 = v69;
    *(v66 + 8) = v74;
    *(v66 + 16) = 0xD00000000000002FLL;
    *(v66 + 24) = v78;
    *(v66 + 32) = v73;
    *(v66 + 40) = 0;
    swift_willThrow();

    v79 = v88;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v79);
  }

  return result;
}

uint64_t sub_2259C4170@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a5@<X8>)
{
  v81 = a2;
  v80 = a1;
  v78 = a5;
  v86[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = &v76 - v7;
  v79 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v79);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v10 - 8);
  v82 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_225CCD954();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v16 = off_28105B918;
  v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v18));
  (*(v13 + 16))(v15, &v16[v17], v12);
  os_unfair_lock_unlock(&v16[v18]);
  v19 = sub_225CCD934();
  v20 = sub_225CCED04();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v76 = a3;
    v22 = v21;
    v23 = swift_slowAlloc();
    v86[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_2259BE198(0xD00000000000003BLL, 0x8000000225D0D2E0, v86);
    _os_log_impl(&dword_2259A7000, v19, v20, "AppleIDVManager %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x22AA6F950](v23, -1, -1);
    MEMORY[0x22AA6F950](v22, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  if (qword_27D73A6B8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v79, qword_27D741688);
  sub_2259CB588(v24, v9);
  DIPSignpost.init(_:)(v9, v82);
  v25 = objc_opt_self();
  v26 = sub_225CCCF74();
  v27 = sub_225CCCF74();
  v86[0] = 0;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v28 = [v25 appleIDVUpdatePrearmTrustKeyForWatch:v26 progenitorPublicKey:v27 encryptedPrivateKey:v86 attestation:&v85 publicKey:&v84 keyBlob:&v83];

  v29 = v83;
  v30 = v84;
  v31 = v85;
  v32 = v86[0];
  if (!v28 && v86[0] && v85 && v84 && v83)
  {
    v33 = v83;
    v34 = v30;
    v35 = v31;
    v36 = v32;
    v37 = v35;
    v38 = v34;
    v39 = v33;
    v40 = sub_225CCCFA4();
    v80 = v41;
    v81 = v40;
    v42 = v37;
    v79 = sub_225CCCFA4();
    v77 = v43;

    v44 = v38;
    v45 = sub_225CCCFA4();
    v47 = v46;

    v48 = v39;
    v49 = sub_225CCCFA4();
    v51 = v50;

    v52 = v82;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    result = sub_2259CB6A0(v52);
    v54 = v78;
    v55 = v80;
    *v78 = v81;
    v54[1] = v55;
    v56 = v77;
    v54[2] = v79;
    v54[3] = v56;
    v54[4] = v45;
    v54[5] = v47;
    v54[6] = v49;
    v54[7] = v51;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v58 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v59 = MEMORY[0x277D84D18];
    *(inited + 64) = v58;
    *(inited + 72) = v59;
    *(inited + 40) = v28;
    v81 = v29;
    v80 = v30;
    v79 = v31;
    v78 = v32;
    v60 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v62 = v61;
    v63 = sub_225CCE954();
    v64 = *(v63 - 8);
    v65 = v77;
    (*(v64 + 56))(v77, 1, 1, v63);
    LODWORD(v63) = (*(v64 + 48))(v65, 1, v63);
    sub_2259CB640(v65, &unk_27D73B050, &unk_225CD3AD0);
    if (v63)
    {
      v66 = 329;
    }

    else
    {
      v66 = 23;
    }

    v67 = MEMORY[0x277D84F90];
    v68 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86[0] = v68;
    sub_225B2C4A0(v60, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v86);

    v70 = v86[0];
    v71 = sub_225B29AA0(0, 1, 1, v67);
    v73 = *(v71 + 2);
    v72 = *(v71 + 3);
    if (v73 >= v72 >> 1)
    {
      v71 = sub_225B29AA0((v72 > 1), v73 + 1, 1, v71);
    }

    *(v71 + 2) = v73 + 1;
    v74 = &v71[56 * v73];
    *(v74 + 4) = 0xD000000000000046;
    *(v74 + 5) = 0x8000000225D0D320;
    *(v74 + 6) = 0xD000000000000023;
    *(v74 + 7) = 0x8000000225D0CD70;
    *(v74 + 8) = 0xD00000000000003BLL;
    *(v74 + 9) = 0x8000000225D0D2E0;
    *(v74 + 10) = 265;
    *v62 = v66;
    *(v62 + 8) = v71;
    *(v62 + 16) = 0xD000000000000046;
    *(v62 + 24) = 0x8000000225D0D320;
    *(v62 + 32) = v70;
    *(v62 + 40) = 0;
    swift_willThrow();

    v75 = v82;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v75);
  }

  return result;
}

uint64_t sub_2259C4998(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  v115 = a8;
  v103 = a7;
  v120 = a3;
  v121 = a6;
  v124[1] = *MEMORY[0x277D85DE8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v14 - 8);
  v104 = &v101[-v15];
  v109 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v109);
  v108 = &v101[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v17 - 8);
  v122 = &v101[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = sub_225CCD954();
  v19 = *(v123 - 1);
  v20 = MEMORY[0x28223BE20](v123);
  v105 = &v101[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v107 = &v101[-v23];
  MEMORY[0x28223BE20](v22);
  v119 = &v101[-v24];
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v25 = off_28105B918;
  v26 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v27 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v27));
  v28 = *(v19 + 16);
  v117 = v26;
  v110 = v19 + 16;
  v116 = v28;
  v28(v119, &v25[v26], v123);
  v118 = v27;
  v106 = v25;
  os_unfair_lock_unlock(&v25[v27]);
  sub_2259CB710(a1, a2);
  v29 = v120;
  sub_2259CB710(v120, a4);
  v30 = a5;
  v31 = a5;
  v32 = v121;
  sub_2259CB710(v30, v121);
  v33 = sub_225CCD934();
  LODWORD(v27) = sub_225CCED04();
  sub_2259BEF00(a1, a2);
  sub_2259BEF00(v29, a4);
  sub_2259BEF00(v31, v32);
  v102 = v27;
  v34 = os_log_type_enabled(v33, v27);
  v35 = v19;
  v36 = v122;
  v114 = v31;
  v113 = a4;
  v112 = a2;
  v111 = a1;
  if (v34)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v124[0] = v38;
    *v37 = 136315650;
    v39 = sub_225CCCF84();
    v41 = sub_2259BE198(v39, v40, v124);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    v42 = sub_225CCCF84();
    v44 = sub_2259BE198(v42, v43, v124);

    *(v37 + 14) = v44;
    *(v37 + 22) = 2080;
    v45 = sub_225CCCF84();
    v47 = sub_2259BE198(v45, v46, v124);

    *(v37 + 24) = v47;
    _os_log_impl(&dword_2259A7000, v33, v102, "AppleIDVManager generatePhoneToken nonce: %s aclBlob: %s, keyBlob: %s", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v38, -1, -1);
    v36 = v122;
    MEMORY[0x22AA6F950](v37, -1, -1);
  }

  v48 = v35;
  v49 = *(v35 + 8);
  (v49)(v119, v123);
  v50 = v106;
  if (qword_27D73A6D8 != -1)
  {
    swift_once();
  }

  v51 = __swift_project_value_buffer(v109, qword_27D7416E8);
  v52 = v108;
  sub_2259CB588(v51, v108);
  DIPSignpost.init(_:)(v52, v36);
  v53 = v118;
  os_unfair_lock_lock(&v50[v118]);
  v54 = v107;
  v55 = v123;
  v116(v107, &v50[v117], v123);
  os_unfair_lock_unlock(&v50[v53]);
  v56 = v114;
  v57 = v121;
  sub_2259CB710(v114, v121);
  sub_225B407D4(v54, v56, v57);
  sub_2259BEF00(v56, v57);
  v119 = v49;
  v109 = v48 + 8;
  (v49)(v54, v55);
  v58 = sub_225CCCF74();
  v59 = sub_225CCCF74();
  v60 = sub_225CCCF74();
  if (v115 >> 60 == 15)
  {
    v61 = 0;
  }

  else
  {
    v61 = sub_225CCCF74();
  }

  if (a10 >> 60 == 15)
  {
    v62 = 0;
  }

  else
  {
    v62 = sub_225CCCF74();
  }

  v63 = objc_opt_self();
  v124[0] = 0;
  v64 = [v63 appleIDVGeneratePhoneTokenWithNonce:v58 withReferenceACLBlob:v59 keyBlob:v60 keyAttestation:v61 casdCertificate:v62 phoneToken:v124];

  v65 = v124[0];
  if (v64 || !v124[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v81 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v82 = MEMORY[0x277D84D18];
    *(inited + 64) = v81;
    *(inited + 72) = v82;
    *(inited + 40) = v64;
    v123 = v65;
    v83 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v85 = v84;
    v86 = sub_225CCE954();
    v87 = *(v86 - 8);
    v88 = v104;
    (*(v87 + 56))(v104, 1, 1, v86);
    LODWORD(v86) = (*(v87 + 48))(v88, 1, v86);
    sub_2259CB640(v88, &unk_27D73B050, &unk_225CD3AD0);
    if (v86)
    {
      v89 = 317;
    }

    else
    {
      v89 = 23;
    }

    v90 = MEMORY[0x277D84F90];
    v91 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v124[0] = v91;
    sub_225B2C4A0(v83, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v124);

    v93 = v124[0];
    v94 = sub_225B29AA0(0, 1, 1, v90);
    v96 = *(v94 + 2);
    v95 = *(v94 + 3);
    if (v96 >= v95 >> 1)
    {
      v94 = sub_225B29AA0((v95 > 1), v96 + 1, 1, v94);
    }

    *(v94 + 2) = v96 + 1;
    v97 = &v94[56 * v96];
    *(v97 + 4) = 0xD000000000000025;
    *(v97 + 5) = 0x8000000225D0D240;
    *(v97 + 6) = 0xD000000000000023;
    *(v97 + 7) = 0x8000000225D0CD70;
    *(v97 + 8) = 0xD00000000000004DLL;
    *(v97 + 9) = 0x8000000225D0D270;
    *(v97 + 10) = 284;
    *v85 = v89;
    *(v85 + 8) = v94;
    *(v85 + 16) = 0xD000000000000025;
    *(v85 + 24) = 0x8000000225D0D240;
    *(v85 + 32) = v93;
    *(v85 + 40) = 0;
    swift_willThrow();

    v98 = v122;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v98);
  }

  else
  {
    v66 = v124[0];
    v67 = v118;
    os_unfair_lock_lock(&v50[v118]);
    v68 = v105;
    v116(v105, &v50[v117], v123);
    os_unfair_lock_unlock(&v50[v67]);
    v69 = v66;
    v70 = sub_225CCD934();
    v71 = sub_225CCED04();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v124[0] = v73;
      *v72 = 136315138;
      v74 = [v69 base64EncodedStringWithOptions_];
      v75 = sub_225CCE474();
      v77 = v76;

      v78 = sub_2259BE198(v75, v77, v124);

      *(v72 + 4) = v78;
      v79 = v122;
      _os_log_impl(&dword_2259A7000, v70, v71, "AppleIDVManager generatePhoneToken returned successfully, token: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x22AA6F950](v73, -1, -1);
      MEMORY[0x22AA6F950](v72, -1, -1);

      (v119)(v105, v123);
    }

    else
    {

      (v119)(v68, v123);
      v79 = v122;
    }

    v99 = v69;
    v89 = sub_225CCCFA4();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v79);
  }

  return v89;
}

uint64_t sub_2259C5534(void *a1, unint64_t a2)
{
  v92[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v84 = v81 - v5;
  v88 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v88);
  v87 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v90 = v81 - v15;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v16 = off_28105B918;
  v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v18));
  v19 = *(v11 + 16);
  v82 = v17;
  v81[1] = v11 + 16;
  v81[0] = v19;
  v19(v90, &v16[v17], v10);
  v83 = v18;
  os_unfair_lock_unlock(&v16[v18]);
  sub_2259CB710(a1, a2);
  v91 = a1;
  v20 = sub_225CCD934();
  v21 = v91;
  v22 = v20;
  v23 = sub_225CCED04();
  sub_2259BEF00(v21, a2);
  v24 = os_log_type_enabled(v22, v23);
  v86 = v14;
  v89 = a2;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v85 = v10;
    v27 = v26;
    v92[0] = v26;
    *v25 = 136315138;
    v28 = sub_225CCCF84();
    v30 = v11;
    v31 = sub_2259BE198(v28, v29, v92);

    *(v25 + 4) = v31;
    v11 = v30;
    _os_log_impl(&dword_2259A7000, v22, v23, "AppleIDVManager establishPrearmTrust with baaCertificate: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v32 = v27;
    v10 = v85;
    MEMORY[0x22AA6F950](v32, -1, -1);
    MEMORY[0x22AA6F950](v25, -1, -1);

    v33 = v30;
  }

  else
  {

    v33 = v11;
  }

  v34 = *(v33 + 8);
  v34(v90, v10);
  if (qword_27D73A6C0 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v88, qword_27D7416A0);
  v36 = v87;
  sub_2259CB588(v35, v87);
  DIPSignpost.init(_:)(v36, v9);
  v37 = objc_opt_self();
  v38 = sub_225CCCF74();
  v92[0] = 0;
  v39 = [v37 appleIDVEstablishPrearmTrustWithCertificate:v38 protectedPublicKey:v92];

  v40 = v92[0];
  if (v39 || !v92[0])
  {
    v91 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v61 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v62 = MEMORY[0x277D84D18];
    *(inited + 64) = v61;
    *(inited + 72) = v62;
    *(inited + 40) = v39;
    v90 = v40;
    v63 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v65 = v64;
    v66 = sub_225CCE954();
    v67 = *(v66 - 8);
    v68 = v84;
    (*(v67 + 56))(v84, 1, 1, v66);
    LODWORD(v66) = (*(v67 + 48))(v68, 1, v66);
    sub_2259CB640(v68, &unk_27D73B050, &unk_225CD3AD0);
    if (v66)
    {
      v69 = 320;
    }

    else
    {
      v69 = 23;
    }

    v70 = MEMORY[0x277D84F90];
    v71 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92[0] = v71;
    sub_225B2C4A0(v63, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v92);

    v73 = v92[0];
    v74 = sub_225B29AA0(0, 1, 1, v70);
    v76 = *(v74 + 2);
    v75 = *(v74 + 3);
    if (v76 >= v75 >> 1)
    {
      v74 = sub_225B29AA0((v75 > 1), v76 + 1, 1, v74);
    }

    *(v74 + 2) = v76 + 1;
    v77 = &v74[56 * v76];
    *(v77 + 4) = 0xD000000000000027;
    *(v77 + 5) = 0x8000000225D0D1E0;
    *(v77 + 6) = 0xD000000000000023;
    *(v77 + 7) = 0x8000000225D0CD70;
    *(v77 + 8) = 0xD000000000000025;
    *(v77 + 9) = 0x8000000225D0D210;
    *(v77 + 10) = 301;
    *v65 = v69;
    *(v65 + 8) = v74;
    *(v65 + 16) = 0xD000000000000027;
    *(v65 + 24) = 0x8000000225D0D1E0;
    *(v65 + 32) = v73;
    *(v65 + 40) = 0;
    swift_willThrow();

    v78 = v91;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v78);
  }

  else
  {
    v41 = v92[0];
    v42 = v83;
    os_unfair_lock_lock(&v16[v83]);
    v43 = v86;
    (v81[0])(v86, &v16[v82], v10);
    os_unfair_lock_unlock(&v16[v42]);
    v44 = v41;
    v45 = sub_225CCD934();
    v46 = sub_225CCED04();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v90 = v34;
      v48 = v47;
      v49 = swift_slowAlloc();
      v91 = v44;
      v50 = v49;
      v92[0] = v49;
      *v48 = 136315138;
      v51 = [v91 base64EncodedStringWithOptions_];
      v85 = v10;
      v52 = v51;
      v53 = v9;
      v54 = sub_225CCE474();
      v89 = v11;
      v56 = v55;

      v57 = v54;
      v9 = v53;
      v58 = sub_2259BE198(v57, v56, v92);

      *(v48 + 4) = v58;
      _os_log_impl(&dword_2259A7000, v45, v46, "AppleIDVManager establishPrearmTrust returned successfully, protected public key: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      v59 = v50;
      v44 = v91;
      MEMORY[0x22AA6F950](v59, -1, -1);
      MEMORY[0x22AA6F950](v48, -1, -1);

      (v90)(v86, v85);
    }

    else
    {

      v34(v43, v10);
    }

    v79 = v44;
    v69 = sub_225CCCFA4();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v9);
  }

  return v69;
}

uint64_t sub_2259C5E68(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v93 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v7 - 8);
  v85 = &v77 - v8;
  v88 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v88);
  v87 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v10 - 8);
  v91 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_225CCD954();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v84 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v77 - v16;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v18 = off_28105B918;
  v19 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v20 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v20));
  v21 = *(v13 + 16);
  v82 = v19;
  v81 = v13 + 16;
  v80 = v21;
  v21(v17, &v18[v19], v12);
  v83 = v20;
  os_unfair_lock_unlock(&v18[v20]);
  sub_2259CB710(a1, a2);
  v22 = v93;
  sub_2259CB710(a3, v93);
  v92 = a3;
  v23 = sub_225CCD934();
  v24 = v92;
  v25 = v12;
  v26 = v23;
  v27 = sub_225CCED04();
  v86 = v13;
  v28 = v27;
  sub_2259BEF00(a1, a2);
  sub_2259BEF00(v24, v22);
  v29 = os_log_type_enabled(v26, v28);
  v89 = a1;
  v90 = a2;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v79 = v25;
    v31 = v30;
    v78 = swift_slowAlloc();
    v96 = v78;
    *v31 = 136315394;
    v32 = sub_225CCCF84();
    v34 = sub_2259BE198(v32, v33, &v96);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    v35 = v94;
    v36 = sub_225B34448(v24, v22);
    v94 = v35;
    v95 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
    sub_2259CB764();
    v37 = sub_225CCE384();
    v39 = v38;
    v40 = v91;

    v41 = sub_2259BE198(v37, v39, &v96);

    *(v31 + 14) = v41;
    _os_log_impl(&dword_2259A7000, v26, v28, "AppleIDVManager validatePrearmTrust with baaCertificate: %s, protectedPublicKey: %s", v31, 0x16u);
    v42 = v78;
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v42, -1, -1);
    MEMORY[0x22AA6F950](v31, -1, -1);

    v43 = *(v86 + 8);
    v44 = v79;
    v43(v17, v79);
  }

  else
  {

    v43 = *(v86 + 8);
    v43(v17, v25);
    v44 = v25;
    v40 = v91;
  }

  if (qword_27D73A6C8 != -1)
  {
    swift_once();
  }

  v45 = __swift_project_value_buffer(v88, qword_27D7416B8);
  v46 = v87;
  sub_2259CB588(v45, v87);
  DIPSignpost.init(_:)(v46, v40);
  v47 = objc_opt_self();
  v48 = sub_225CCCF74();
  v49 = sub_225CCCF74();
  v50 = [v47 appleIDVValidatePrearmTrustWithCertificate:v48 protectedPublicKey:v49];

  if (v50)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v52 = inited + 32;
    v53 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v54 = MEMORY[0x277D84D18];
    *(inited + 64) = v53;
    *(inited + 72) = v54;
    *(inited + 40) = v50;
    v55 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v52, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v57 = v56;
    v58 = sub_225CCE954();
    v59 = *(v58 - 8);
    v60 = v85;
    (*(v59 + 56))(v85, 1, 1, v58);
    LODWORD(v58) = (*(v59 + 48))(v60, 1, v58);
    sub_2259CB640(v60, &unk_27D73B050, &unk_225CD3AD0);
    if (v58)
    {
      v61 = 332;
    }

    else
    {
      v61 = 23;
    }

    v62 = MEMORY[0x277D84F90];
    v63 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96 = v63;
    sub_225B2C4A0(v55, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v96);

    v65 = v96;
    v66 = sub_225B29AA0(0, 1, 1, v62);
    v68 = *(v66 + 2);
    v67 = *(v66 + 3);
    if (v68 >= v67 >> 1)
    {
      v66 = sub_225B29AA0((v67 > 1), v68 + 1, 1, v66);
    }

    *(v66 + 2) = v68 + 1;
    v69 = &v66[56 * v68];
    *(v69 + 4) = 0xD000000000000026;
    *(v69 + 5) = 0x8000000225D0D170;
    *(v69 + 6) = 0xD000000000000023;
    *(v69 + 7) = 0x8000000225D0CD70;
    *(v69 + 8) = 0xD000000000000037;
    *(v69 + 9) = 0x8000000225D0D1A0;
    *(v69 + 10) = 316;
    *v57 = v61;
    *(v57 + 8) = v66;
    *(v57 + 16) = 0xD000000000000026;
    *(v57 + 24) = 0x8000000225D0D170;
    *(v57 + 32) = v65;
    *(v57 + 40) = 0;
    swift_willThrow();
    v70 = v91;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v70);
  }

  else
  {
    v72 = v83;
    os_unfair_lock_lock(&v18[v83]);
    v73 = v84;
    v80(v84, &v18[v82], v44);
    os_unfair_lock_unlock(&v18[v72]);
    v74 = sub_225CCD934();
    v75 = sub_225CCED04();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_2259A7000, v74, v75, "AppleIDVManager validatePrearmTrust returned successfully", v76, 2u);
      MEMORY[0x22AA6F950](v76, -1, -1);
    }

    v43(v73, v44);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v40);
  }
}

id sub_2259C6748()
{
  v74[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v0 - 8);
  v71 = &v67 - v1;
  v2 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v72 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v67 - v11;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v13 = off_28105B918;
  v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v15 = ((*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL);
  os_unfair_lock_lock((v15 + off_28105B918));
  v68 = *(v8 + 16);
  v69 = v14;
  v68(v12, &v13[v14], v7);
  v70 = v15;
  os_unfair_lock_unlock((v15 + v13));
  v16 = sub_225CCD934();
  v17 = sub_225CCED04();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v67 = v4;
    v19 = v2;
    v20 = v8;
    v21 = v7;
    v22 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2259A7000, v16, v17, "AppleIDVManager generateNonceOnWatch", v18, 2u);
    v23 = v22;
    v7 = v21;
    v8 = v20;
    v2 = v19;
    v4 = v67;
    MEMORY[0x22AA6F950](v23, -1, -1);
  }

  v24 = *(v8 + 8);
  v24(v12, v7);
  if (qword_27D73A6D0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v2, qword_27D7416D0);
  sub_2259CB588(v25, v4);
  DIPSignpost.init(_:)(v4, v73);
  v26 = objc_opt_self();
  v74[0] = 0;
  v27 = [v26 appleIDVGenerateNonceOnWatch_];
  v28 = v74[0];
  if (v27 || !v74[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v46 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v47 = MEMORY[0x277D84D18];
    *(inited + 64) = v46;
    *(inited + 72) = v47;
    *(inited + 40) = v27;
    v72 = v28;
    v48 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v50 = v49;
    v51 = sub_225CCE954();
    v52 = *(v51 - 8);
    v53 = v71;
    (*(v52 + 56))(v71, 1, 1, v51);
    LODWORD(v51) = (*(v52 + 48))(v53, 1, v51);
    sub_2259CB640(v53, &unk_27D73B050, &unk_225CD3AD0);
    if (v51)
    {
      v54 = 316;
    }

    else
    {
      v54 = 23;
    }

    v55 = MEMORY[0x277D84F90];
    v56 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74[0] = v56;
    sub_225B2C4A0(v48, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v74);

    v58 = v74[0];
    v59 = sub_225B29AA0(0, 1, 1, v55);
    v61 = *(v59 + 2);
    v60 = *(v59 + 3);
    if (v61 >= v60 >> 1)
    {
      v59 = sub_225B29AA0((v60 > 1), v61 + 1, 1, v59);
    }

    *(v59 + 2) = v61 + 1;
    v62 = &v59[56 * v61];
    *(v62 + 4) = 0xD000000000000020;
    *(v62 + 5) = 0x8000000225D0D120;
    *(v62 + 6) = 0xD000000000000023;
    *(v62 + 7) = 0x8000000225D0CD70;
    *(v62 + 8) = 0xD000000000000016;
    *(v62 + 9) = 0x8000000225D0D150;
    *(v62 + 10) = 332;
    *v50 = v54;
    *(v50 + 8) = v59;
    *(v50 + 16) = 0xD000000000000020;
    *(v50 + 24) = 0x8000000225D0D120;
    *(v50 + 32) = v58;
    *(v50 + 40) = 0;
    swift_willThrow();

    v63 = v73;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v63);
  }

  else
  {
    v71 = v24;
    v29 = v74[0];
    v30 = v70;
    os_unfair_lock_lock((v70 + v13));
    v31 = v72;
    v68(v72, &v13[v69], v7);
    os_unfair_lock_unlock((v30 + v13));
    v32 = v29;
    v33 = sub_225CCD934();
    v34 = sub_225CCED04();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v74[0] = v70;
      *v35 = 136315138;
      v36 = v32;
      v37 = [v32 base64EncodedStringWithOptions_];
      v38 = sub_225CCE474();
      v69 = v7;
      v40 = v39;

      v41 = sub_2259BE198(v38, v40, v74);

      *(v35 + 4) = v41;
      v32 = v36;
      _os_log_impl(&dword_2259A7000, v33, v34, "AppleIDVManager generateNonceOnWatch returned successfully, nonce: %s", v35, 0xCu);
      v42 = v70;
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x22AA6F950](v42, -1, -1);
      MEMORY[0x22AA6F950](v35, -1, -1);

      v43 = v72;
      v44 = v69;
    }

    else
    {

      v43 = v31;
      v44 = v7;
    }

    (v71)(v43, v44);
    v64 = v32;
    v58 = sub_225CCCFA4();

    v65 = v73;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v65);
  }

  return v58;
}

uint64_t sub_2259C6F64(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v90 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v7 - 8);
  v81 = &v73 - v8;
  v85 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v85);
  v84 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_225CCD954();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v80 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v73 - v16;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v18 = off_28105B918;
  v19 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v20 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v20));
  v21 = *(v13 + 16);
  v78 = v19;
  v77 = v13 + 16;
  v76 = v21;
  v21(v17, &v18[v19], v12);
  v79 = v20;
  os_unfair_lock_unlock(&v18[v20]);
  sub_2259CB710(a1, a2);
  v22 = v90;
  sub_2259CB710(a3, v90);
  v23 = sub_225CCD934();
  v24 = sub_225CCED04();
  v83 = v12;
  v25 = a2;
  v26 = v24;
  sub_2259BEF00(a1, v25);
  sub_2259BEF00(a3, v22);
  v27 = os_log_type_enabled(v23, v26);
  v82 = v13;
  v87 = v25;
  v88 = a3;
  v86 = a1;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v75 = v17;
    v29 = v28;
    v74 = swift_slowAlloc();
    v91 = v74;
    *v29 = 136315394;
    v30 = sub_225CCCF84();
    v32 = sub_2259BE198(v30, v31, &v91);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    v33 = sub_225CCCF84();
    v35 = sub_2259BE198(v33, v34, &v91);

    *(v29 + 14) = v35;
    _os_log_impl(&dword_2259A7000, v23, v26, "AppleIDVManager prearmCredential token: %s, protectedPublicKey: %s ", v29, 0x16u);
    v36 = v74;
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v36, -1, -1);
    v37 = v29;
    v38 = v89;
    MEMORY[0x22AA6F950](v37, -1, -1);

    v39 = v83;
    v40 = *(v82 + 8);
    v40(v75, v83);
  }

  else
  {

    v40 = *(v13 + 8);
    v39 = v83;
    v40(v17, v83);
    v38 = v89;
  }

  if (qword_27D73A6E0 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v85, qword_27D741700);
  v42 = v84;
  sub_2259CB588(v41, v84);
  DIPSignpost.init(_:)(v42, v38);
  v43 = objc_opt_self();
  v44 = sub_225CCCF74();
  v45 = sub_225CCCF74();
  v46 = [v43 appleIDVPrearmCredentialWithAuthorizationToken:v44 protectedPublicKey:v45];

  if (v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v48 = inited + 32;
    v49 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v50 = MEMORY[0x277D84D18];
    *(inited + 64) = v49;
    *(inited + 72) = v50;
    *(inited + 40) = v46;
    v51 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v48, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v53 = v52;
    v54 = sub_225CCE954();
    v55 = *(v54 - 8);
    v56 = v81;
    (*(v55 + 56))(v81, 1, 1, v54);
    LODWORD(v54) = (*(v55 + 48))(v56, 1, v54);
    sub_2259CB640(v56, &unk_27D73B050, &unk_225CD3AD0);
    if (v54)
    {
      v57 = 318;
    }

    else
    {
      v57 = 23;
    }

    v58 = MEMORY[0x277D84F90];
    v59 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v59;
    sub_225B2C4A0(v51, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v91);

    v61 = v91;
    v62 = sub_225B29AA0(0, 1, 1, v58);
    v64 = *(v62 + 2);
    v63 = *(v62 + 3);
    if (v64 >= v63 >> 1)
    {
      v62 = sub_225B29AA0((v63 > 1), v64 + 1, 1, v62);
    }

    *(v62 + 2) = v64 + 1;
    v65 = &v62[56 * v64];
    *(v65 + 4) = 0xD000000000000023;
    *(v65 + 5) = 0x8000000225D0D0B0;
    *(v65 + 6) = 0xD000000000000023;
    *(v65 + 7) = 0x8000000225D0CD70;
    *(v65 + 8) = 0xD00000000000003CLL;
    *(v65 + 9) = 0x8000000225D0D0E0;
    *(v65 + 10) = 347;
    *v53 = v57;
    *(v53 + 8) = v62;
    *(v53 + 16) = 0xD000000000000023;
    *(v53 + 24) = 0x8000000225D0D0B0;
    *(v53 + 32) = v61;
    *(v53 + 40) = 0;
    swift_willThrow();
    v66 = v89;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v66);
  }

  else
  {
    v68 = v79;
    os_unfair_lock_lock(&v18[v79]);
    v69 = v80;
    v76(v80, &v18[v78], v39);
    os_unfair_lock_unlock(&v18[v68]);
    v70 = sub_225CCD934();
    v71 = sub_225CCED04();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_2259A7000, v70, v71, "AppleIDVManager prearmCredential returned successfully", v72, 2u);
      MEMORY[0x22AA6F950](v72, -1, -1);
    }

    v40(v69, v39);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v38);
  }
}

uint64_t sub_2259C77EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v0 - 8);
  v53 = &v50 - v1;
  v54 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v54);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v52 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v12 = off_28105B918;
  v13 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v14 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v14));
  v50 = *(v7 + 16);
  v51 = v13;
  v55 = v6;
  v50(v11, &v12[v13], v6);
  os_unfair_lock_unlock(&v12[v14]);
  v15 = sub_225CCD934();
  v16 = sub_225CCED04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2259A7000, v15, v16, "AppleIDVManager revokeCredentialAuthorizationToken", v17, 2u);
    MEMORY[0x22AA6F950](v17, -1, -1);
  }

  v18 = *(v7 + 8);
  v19 = v55;
  v18(v11, v55);
  if (qword_27D73A6E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v54, qword_27D741718);
  sub_2259CB588(v20, v3);
  DIPSignpost.init(_:)(v3, v56);
  v21 = [objc_opt_self() appleIDVRevokeCredentialAuthorizationToken];
  if (v21)
  {
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v24 = inited + 32;
    v25 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v26 = MEMORY[0x277D84D18];
    *(inited + 64) = v25;
    *(inited + 72) = v26;
    *(inited + 40) = v22;
    v27 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v24, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v29 = v28;
    v30 = sub_225CCE954();
    v31 = *(v30 - 8);
    v32 = v53;
    (*(v31 + 56))(v53, 1, 1, v30);
    LODWORD(v30) = (*(v31 + 48))(v32, 1, v30);
    sub_2259CB640(v32, &unk_27D73B050, &unk_225CD3AD0);
    if (v30)
    {
      v33 = 319;
    }

    else
    {
      v33 = 23;
    }

    v34 = MEMORY[0x277D84F90];
    v35 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v35;
    sub_225B2C4A0(v27, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v57);

    v37 = v57;
    v38 = sub_225B29AA0(0, 1, 1, v34);
    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = sub_225B29AA0((v39 > 1), v40 + 1, 1, v38);
    }

    *(v38 + 2) = v40 + 1;
    v41 = &v38[56 * v40];
    *(v41 + 4) = 0xD000000000000035;
    *(v41 + 5) = 0x8000000225D0D040;
    *(v41 + 6) = 0xD000000000000023;
    *(v41 + 7) = 0x8000000225D0CD70;
    *(v41 + 8) = 0xD000000000000024;
    *(v41 + 9) = 0x8000000225D0D080;
    *(v41 + 10) = 361;
    *v29 = v33;
    *(v29 + 8) = v38;
    *(v29 + 16) = 0xD000000000000035;
    *(v29 + 24) = 0x8000000225D0D040;
    *(v29 + 32) = v37;
    *(v29 + 40) = 0;
    swift_willThrow();
    v42 = v56;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v42);
  }

  else
  {
    os_unfair_lock_lock(&v12[v14]);
    v44 = v52;
    v50(v52, &v12[v51], v19);
    os_unfair_lock_unlock(&v12[v14]);
    v45 = sub_225CCD934();
    v46 = sub_225CCED04();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2259A7000, v45, v46, "AppleIDVManager revokeCredentialAuthorizationToken returned successfully", v47, 2u);
      v48 = v47;
      v19 = v55;
      MEMORY[0x22AA6F950](v48, -1, -1);
    }

    v18(v44, v19);
    v49 = v56;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v49);
  }
}

uint64_t sub_2259C7EB0(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(char *, char *, id))
{
  v95 = a6;
  v93 = a4;
  v94 = a5;
  v92 = a3;
  v91 = a2;
  v90[1] = a1;
  v101[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v90[0] = v90 - v7;
  v8 = sub_225CCD124();
  v97 = *(v8 - 1);
  v98 = v8;
  MEMORY[0x28223BE20](v8);
  v96 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v10);
  v12 = v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v13 - 8);
  v99 = v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_225CCD954();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v19 = off_28105B918;
  v20 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v21 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v21));
  (*(v16 + 16))(v18, &v19[v20], v15);
  os_unfair_lock_unlock(&v19[v21]);
  v22 = sub_225CCD934();
  v23 = sub_225CCED04();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2259A7000, v22, v23, "AppleIDVManager persistModifiedACLBlob", v24, 2u);
    MEMORY[0x22AA6F950](v24, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  if (qword_27D73A6F0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v10, qword_27D741730);
  sub_2259CB588(v25, v12);
  DIPSignpost.init(_:)(v12, v99);
  v26 = objc_opt_self();
  v27 = sub_225CCCF74();
  v28 = sub_225CCCF74();
  v29 = sub_225CCCF74();
  v101[0] = 0;
  v100 = 0;
  v30 = [v26 appleIDVPersistModifiedACLBlob:v27 withReferenceACLBlob:v28 withLAContextData:v29 intoBlob:v101 returnBioUUIDs:&v100];

  v31 = v100;
  v32 = v101[0];
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v34 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v35 = MEMORY[0x277D84D18];
    *(inited + 64) = v34;
    *(inited + 72) = v35;
    *(inited + 40) = v30;
    v93 = v31;
    v36 = v31;
    v98 = v32;
    v37 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v39 = v38;
    v40 = sub_225CCE954();
    v41 = *(v40 - 8);
    v42 = v90[0];
    (*(v41 + 56))(v90[0], 1, 1, v40);
    LODWORD(v40) = (*(v41 + 48))(v42, 1, v40);
    sub_2259CB640(v42, &unk_27D73B050, &unk_225CD3AD0);
    if (v40)
    {
      v43 = 315;
    }

    else
    {
      v43 = 23;
    }

    v44 = MEMORY[0x277D84F90];
    v45 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101[0] = v45;
    sub_225B2C4A0(v37, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v101);

    v47 = v101[0];
    v48 = sub_225B29AA0(0, 1, 1, v44);
    v50 = *(v48 + 2);
    v49 = *(v48 + 3);
    if (v50 >= v49 >> 1)
    {
      v48 = sub_225B29AA0((v49 > 1), v50 + 1, 1, v48);
    }

    *(v48 + 2) = v50 + 1;
    v51 = &v48[56 * v50];
    *(v51 + 4) = 0xD000000000000029;
    *(v51 + 5) = 0x8000000225D0CF70;
    *(v51 + 6) = 0xD000000000000023;
    *(v51 + 7) = 0x8000000225D0CD70;
    *(v51 + 8) = 0xD000000000000041;
    *(v51 + 9) = 0x8000000225D0CFA0;
    *(v51 + 10) = 377;
    *v39 = v43;
    *(v39 + 8) = v48;
    *(v39 + 16) = 0xD000000000000029;
    *(v39 + 24) = 0x8000000225D0CF70;
    *(v39 + 32) = v47;
    *(v39 + 40) = 0;
    swift_willThrow();

LABEL_14:
    v52 = v99;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v52);
    return v43;
  }

  if (!v101[0])
  {
    v98 = 0x8000000225D0CD70;
    v93 = v100;
    v70 = v100;
    v71 = MEMORY[0x277D84F90];
    v72 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v43 = v73;
    v74 = sub_225CCE954();
    v75 = *(v74 - 8);
    v76 = v90[0];
    (*(v75 + 56))(v90[0], 1, 1, v74);
    LODWORD(v74) = (*(v75 + 48))(v76, 1, v74);
    sub_2259CB640(v76, &unk_27D73B050, &unk_225CD3AD0);
    if (v74)
    {
      v77 = 0;
    }

    else
    {
      v77 = 23;
    }

    v78 = sub_225B2C374(v71);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v101[0] = v78;
    sub_225B2C4A0(v72, sub_225B2AC40, 0, v79, v101);

    v80 = v101[0];
    v81 = sub_225B29AA0(0, 1, 1, v71);
    v83 = *(v81 + 2);
    v82 = *(v81 + 3);
    if (v83 >= v82 >> 1)
    {
      v81 = sub_225B29AA0((v82 > 1), v83 + 1, 1, v81);
    }

    *(v81 + 2) = v83 + 1;
    v84 = &v81[56 * v83];
    *(v84 + 4) = 0xD000000000000047;
    *(v84 + 5) = 0x8000000225D0CFF0;
    v85 = v98;
    *(v84 + 6) = 0xD000000000000023;
    *(v84 + 7) = v85;
    *(v84 + 8) = 0xD000000000000041;
    *(v84 + 9) = 0x8000000225D0CFA0;
    *(v84 + 10) = 380;
    *v43 = v77;
    *(v43 + 8) = v81;
    *(v43 + 16) = 0xD000000000000047;
    *(v43 + 24) = 0x8000000225D0CFF0;
    *(v43 + 32) = v80;
    *(v43 + 40) = 0;
    swift_willThrow();
    goto LABEL_14;
  }

  if (v100)
  {
    v101[0] = 0;
    v53 = v32;
    v54 = v31;
    v55 = v53;
    sub_225CCE804();
    v56 = v101[0];
    if (v101[0])
    {
      v57 = *(v101[0] + 2);
      if (v57)
      {
        v92 = v32;
        v93 = v31;
        v101[0] = MEMORY[0x277D84F90];
        sub_2259D52A4(0, v57, 0);
        v58 = v101[0];
        v95 = *(v97 + 16);
        v59 = (*(v97 + 80) + 32) & ~*(v97 + 80);
        v91 = v56;
        v60 = &v56[v59];
        v94 = *(v97 + 72);
        v97 += 16;
        v61 = (v97 - 8);
        do
        {
          v62 = v96;
          v63 = v98;
          v95(v96, v60, v98);
          v64 = sub_225CCD0C4();
          v66 = v65;
          (*v61)(v62, v63);
          v101[0] = v58;
          v68 = v58[2];
          v67 = v58[3];
          if (v68 >= v67 >> 1)
          {
            sub_2259D52A4((v67 > 1), v68 + 1, 1);
            v58 = v101[0];
          }

          v58[2] = v68 + 1;
          v69 = &v58[2 * v68];
          v69[4] = v64;
          v69[5] = v66;
          v60 += v94;
          --v57;
        }

        while (v57);

        v31 = v93;
        v32 = v92;
      }

      else
      {
      }
    }
  }

  else
  {
    v86 = v101[0];
  }

  v87 = v32;
  v43 = sub_225CCCFA4();

  v88 = v99;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v88);
  return v43;
}

uint64_t sub_2259C8990(char a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v2 - 8);
  v80 = &v77 - v3;
  v4 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v7 - 8);
  v81 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v13 = off_28105B918;
  v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v15));
  (*(v10 + 16))(v12, &v13[v14], v9);
  os_unfair_lock_unlock(&v13[v15]);
  v16 = sub_225CCD934();
  v17 = sub_225CCED04();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2259A7000, v16, v17, "AppleIDVManager prepareUnboundACLForWatch", v18, 2u);
    MEMORY[0x22AA6F950](v18, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  if (qword_27D73A6F8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v4, qword_27D741748);
  sub_2259CB588(v19, v6);
  DIPSignpost.init(_:)(v6, v81);
  v20 = objc_opt_self();
  v82 = 0;
  v21 = [v20 prepareUnboundACLForWatch:&v82 withAccessibilityEnabled:a1 & 1];
  v22 = v82;
  if (v21)
  {
    v23 = v21;
    v82 = 0;
    v83 = 0xE000000000000000;
    v79 = v22;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD00000000000003ELL, 0x8000000225D0CE90);
    if (a1)
    {
      v24 = 1702195828;
    }

    else
    {
      v24 = 0x65736C6166;
    }

    if (a1)
    {
      v25 = 0xE400000000000000;
    }

    else
    {
      v25 = 0xE500000000000000;
    }

    if (a1)
    {
      LODWORD(v26) = 323;
    }

    else
    {
      LODWORD(v26) = 322;
    }

    MEMORY[0x22AA6CE70](v24, v25);

    v27 = v82;
    v28 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v30 = inited + 32;
    v31 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v32 = MEMORY[0x277D84D18];
    *(inited + 64) = v31;
    *(inited + 72) = v32;
    *(inited + 40) = v23;
    v33 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v30, &qword_27D73B060, &unk_225CD3AE0);
    v78 = 0x8000000225D0CD70;
    v77 = 0x8000000225D0CED0;
    sub_2259CB5EC();
    swift_allocError();
    v35 = v34;
    v36 = sub_225CCE954();
    v37 = *(v36 - 8);
    v38 = v80;
    (*(v37 + 56))(v80, 1, 1, v36);
    LODWORD(v36) = (*(v37 + 48))(v38, 1, v36);
    sub_2259CB640(v38, &unk_27D73B050, &unk_225CD3AD0);
    if (v36)
    {
      v26 = v26;
    }

    else
    {
      v26 = 23;
    }

    v39 = MEMORY[0x277D84F90];
    v40 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v40;
    sub_225B2C4A0(v33, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v82);

    v42 = v82;
    v43 = sub_225B29AA0(0, 1, 1, v39);
    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_225B29AA0((v44 > 1), v45 + 1, 1, v43);
    }

    *(v43 + 2) = v45 + 1;
    v46 = &v43[56 * v45];
    *(v46 + 4) = v27;
    *(v46 + 5) = v28;
    v47 = v78;
    *(v46 + 6) = 0xD000000000000023;
    *(v46 + 7) = v47;
    v48 = v77;
    *(v46 + 8) = 0xD000000000000034;
    *(v46 + 9) = v48;
    *(v46 + 10) = 399;
    *v35 = v26;
    *(v35 + 8) = v43;
    *(v35 + 16) = v27;
    *(v35 + 24) = v28;
    *(v35 + 32) = v42;
    *(v35 + 40) = 0;
    swift_willThrow();
  }

  else
  {
    if (v82)
    {
      v50 = v82;
      v26 = sub_225CCCFA4();

      v51 = v81;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v51);
      return v26;
    }

    v82 = 0;
    v83 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD00000000000005CLL, 0x8000000225D0CF10);
    if (a1)
    {
      v53 = 1702195828;
    }

    else
    {
      v53 = 0x65736C6166;
    }

    if (a1)
    {
      v54 = 0xE400000000000000;
    }

    else
    {
      v54 = 0xE500000000000000;
    }

    if (a1)
    {
      LODWORD(v26) = 323;
    }

    else
    {
      LODWORD(v26) = 322;
    }

    MEMORY[0x22AA6CE70](v53, v54);

    v55 = v82;
    v56 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    v57 = swift_initStackObject();
    *(v57 + 32) = 20;
    v58 = v57 + 32;
    v59 = MEMORY[0x277D84CC0];
    *(v57 + 16) = xmmword_225CD30F0;
    v60 = MEMORY[0x277D84D18];
    *(v57 + 64) = v59;
    *(v57 + 72) = v60;
    *(v57 + 40) = 0;
    v61 = sub_225B2C374(v57);
    swift_setDeallocating();
    sub_2259CB640(v58, &qword_27D73B060, &unk_225CD3AE0);
    v79 = 0x8000000225D0CD70;
    v78 = 0x8000000225D0CED0;
    sub_2259CB5EC();
    swift_allocError();
    v63 = v62;
    v64 = sub_225CCE954();
    v65 = *(v64 - 8);
    v66 = v80;
    (*(v65 + 56))(v80, 1, 1, v64);
    LODWORD(v64) = (*(v65 + 48))(v66, 1, v64);
    sub_2259CB640(v66, &unk_27D73B050, &unk_225CD3AD0);
    if (v64)
    {
      v26 = v26;
    }

    else
    {
      v26 = 23;
    }

    v67 = MEMORY[0x277D84F90];
    v68 = sub_225B2C374(MEMORY[0x277D84F90]);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v82 = v68;
    sub_225B2C4A0(v61, sub_225B2AC40, 0, v69, &v82);

    v70 = v82;
    v71 = sub_225B29AA0(0, 1, 1, v67);
    v73 = *(v71 + 2);
    v72 = *(v71 + 3);
    if (v73 >= v72 >> 1)
    {
      v71 = sub_225B29AA0((v72 > 1), v73 + 1, 1, v71);
    }

    *(v71 + 2) = v73 + 1;
    v74 = &v71[56 * v73];
    *(v74 + 4) = v55;
    *(v74 + 5) = v56;
    v75 = v79;
    *(v74 + 6) = 0xD000000000000023;
    *(v74 + 7) = v75;
    v76 = v78;
    *(v74 + 8) = 0xD000000000000034;
    *(v74 + 9) = v76;
    *(v74 + 10) = 402;
    *v63 = v26;
    *(v63 + 8) = v71;
    *(v63 + 16) = v55;
    *(v63 + 24) = v56;
    *(v63 + 32) = v70;
    *(v63 + 40) = 0;
    swift_willThrow();
  }

  v49 = v81;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v49);
  return v26;
}

uint64_t sub_2259C940C(int a1, int a2, uint64_t a3, unint64_t a4)
{
  LODWORD(v142) = a2;
  LODWORD(v141) = a1;
  v145 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v136 = &v126 - v7;
  v139 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v139);
  v138 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_225CCD954();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v131 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v126 - v16;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v18 = off_28105B918;
  v19 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v20 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v20));
  v21 = *(v13 + 16);
  v129 = v19;
  v128 = v13 + 16;
  v127 = v21;
  v21(v17, &v18[v19], v12);
  v130 = v20;
  os_unfair_lock_unlock(&v18[v20]);
  sub_2259CB6FC(a3, a4);
  v22 = sub_225CCD934();
  v23 = sub_225CCED04();
  v134 = a3;
  v24 = a3;
  v25 = v23;
  sub_2259B97A8(v24, a4);
  v26 = os_log_type_enabled(v22, v25);
  v135 = a4;
  v27 = a4 >> 60;
  v133 = v12;
  v140 = v11;
  v132 = v13;
  v137 = v27;
  if (!v26)
  {

    v31 = *(v13 + 8);
    v31(v17, v12);
    goto LABEL_31;
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v143 = v29;
  *v28 = 136446722;
  if (v141 > 1)
  {
    if (v141 != 2)
    {
      if (v141 == 3)
      {
        v30 = "Watch Accessibility";
        goto LABEL_12;
      }

LABEL_13:
      v32 = 0xE700000000000000;
      v33 = 0x6E776F6E6B6E55;
      goto LABEL_17;
    }

    v34 = 0x206863746157;
LABEL_16:
    v33 = v34 & 0xFFFFFFFFFFFFLL | 0x6942000000000000;
    v32 = 0xEE00797274656D6FLL;
    goto LABEL_17;
  }

  if (!v141)
  {
    v34 = 0x20656E6F6850;
    goto LABEL_16;
  }

  if (v141 != 1)
  {
    goto LABEL_13;
  }

  v30 = "Phone Accessibility";
LABEL_12:
  v32 = (v30 - 32) | 0x8000000000000000;
  v33 = 0xD000000000000013;
LABEL_17:
  v35 = sub_2259BE198(v33, v32, &v143);

  *(v28 + 4) = v35;
  *(v28 + 12) = 2082;
  v36 = 0x8000000225D0CCD0;
  v37 = 0xD000000000000015;
  v38 = 0xE700000000000000;
  v39 = 0x6E776F6E6B6E55;
  if (v142 == 1)
  {
    v39 = 0xD000000000000013;
    v38 = 0x8000000225D0CCF0;
  }

  if (v142 != 2)
  {
    v37 = v39;
    v36 = v38;
  }

  if (v142)
  {
    v40 = v37;
  }

  else
  {
    v40 = 0x6D746E6573657250;
  }

  if (v142)
  {
    v41 = v36;
  }

  else
  {
    v41 = 0xEB00000000746E65;
  }

  v42 = sub_2259BE198(v40, v41, &v143);

  *(v28 + 14) = v42;
  *(v28 + 22) = 2080;
  if (v27 <= 0xE)
  {
    v44 = sub_225CCCEE4();
    v43 = v45;
  }

  else
  {
    v43 = 0xE500000000000000;
    v44 = 0x3E6C696E3CLL;
  }

  v46 = sub_2259BE198(v44, v43, &v143);

  *(v28 + 24) = v46;
  _os_log_impl(&dword_2259A7000, v22, v25, "AppleIDVManager prepareACL, type: %{public}s, usage: %{public}s, bioUUID: %s", v28, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x22AA6F950](v29, -1, -1);
  MEMORY[0x22AA6F950](v28, -1, -1);

  v31 = *(v132 + 8);
  v31(v17, v133);
  v11 = v140;
LABEL_31:
  v47 = v142;
  v48 = v141;
  if (qword_27D73A700 != -1)
  {
    swift_once();
  }

  v49 = __swift_project_value_buffer(v139, qword_27D741760);
  v50 = v138;
  sub_2259CB588(v49, v138);
  DIPSignpost.init(_:)(v50, v11);
  if (v137 <= 0xE)
  {
    v51 = sub_225CCCF74();
  }

  else
  {
    v51 = 0;
  }

  v52 = objc_opt_self();
  v143 = 0;
  v53 = [v52 prepareACL:&v143 aclType:v48 forAclUsage:v47 forBioUUID:v51];

  v54 = v143;
  if (v53)
  {
    v143 = 0;
    v144 = 0xE000000000000000;
    v55 = v54;
    sub_225CCF204();

    v143 = 0xD00000000000001DLL;
    v144 = 0x8000000225D0CDD0;
    v142 = v55;
    if (v48 > 1)
    {
      if (v48 == 2)
      {
        v65 = 0x6942206863746157;
        v64 = 0xEE00797274656D6FLL;
        goto LABEL_54;
      }

      if (v48 == 3)
      {
        v56 = "Watch Accessibility";
        goto LABEL_46;
      }
    }

    else
    {
      if (!v48)
      {
        v64 = 0xEE00797274656D6FLL;
        v65 = 0x694220656E6F6850;
        goto LABEL_54;
      }

      if (v48 == 1)
      {
        v56 = "Phone Accessibility";
LABEL_46:
        v64 = (v56 - 32) | 0x8000000000000000;
        v65 = 0xD000000000000013;
LABEL_54:
        MEMORY[0x22AA6CE70](v65, v64);

        MEMORY[0x22AA6CE70](0x3A6567617375202CLL, 0xE900000000000020);
        v67 = 0x8000000225D0CCD0;
        v68 = 0xD000000000000015;
        v69 = 0xE700000000000000;
        v70 = 0x6E776F6E6B6E55;
        if (v47 == 1)
        {
          v70 = 0xD000000000000013;
          v69 = 0x8000000225D0CCF0;
        }

        if (v47 != 2)
        {
          v68 = v70;
          v67 = v69;
        }

        if (v47)
        {
          v71 = v68;
        }

        else
        {
          v71 = 0x6D746E6573657250;
        }

        if (v47)
        {
          v72 = v67;
        }

        else
        {
          v72 = 0xEB00000000746E65;
        }

        MEMORY[0x22AA6CE70](v71, v72);

        v74 = v143;
        v73 = v144;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 32) = 20;
        v76 = inited + 32;
        v77 = MEMORY[0x277D84CC0];
        *(inited + 16) = xmmword_225CD30F0;
        v78 = MEMORY[0x277D84D18];
        *(inited + 64) = v77;
        *(inited + 72) = v78;
        *(inited + 40) = v53;
        v79 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(v76, &qword_27D73B060, &unk_225CD3AE0);
        v141 = 0x8000000225D0CD70;
        v63 = 0x8000000225D0CDF0;
        sub_2259CB5EC();
        swift_allocError();
        v81 = v80;
        v82 = sub_225CCE954();
        v83 = *(v82 - 8);
        v84 = v136;
        (*(v83 + 56))(v136, 1, 1, v82);
        LODWORD(v82) = (*(v83 + 48))(v84, 1, v82);
        sub_2259CB640(v84, &unk_27D73B050, &unk_225CD3AD0);
        if (v82)
        {
          v85 = 325;
        }

        else
        {
          v85 = 23;
        }

        v86 = MEMORY[0x277D84F90];
        v87 = sub_225B2C374(MEMORY[0x277D84F90]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v143 = v87;
        sub_225B2C4A0(v79, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v143);

        v89 = v143;
        v90 = sub_225B29AA0(0, 1, 1, v86);
        v92 = *(v90 + 2);
        v91 = *(v90 + 3);
        if (v92 >= v91 >> 1)
        {
          v90 = sub_225B29AA0((v91 > 1), v92 + 1, 1, v90);
        }

        *(v90 + 2) = v92 + 1;
        v93 = &v90[56 * v92];
        *(v93 + 4) = v74;
        *(v93 + 5) = v73;
        v94 = v141;
        *(v93 + 6) = 0xD000000000000023;
        *(v93 + 7) = v94;
        *(v93 + 8) = 0xD000000000000025;
        *(v93 + 9) = 0x8000000225D0CDF0;
        *(v93 + 10) = 419;
        *v81 = v85;
        *(v81 + 8) = v90;
        *(v81 + 16) = v74;
        *(v81 + 24) = v73;
        *(v81 + 32) = v89;
        *(v81 + 40) = 0;
        swift_willThrow();

LABEL_70:
        v95 = v140;
        DIPSignpost.end(workflowID:isBackground:)(0, 2);
        sub_2259CB6A0(v95);
        return v63;
      }
    }

    v64 = 0xE700000000000000;
    v65 = 0x6E776F6E6B6E55;
    goto LABEL_54;
  }

  if (!v143)
  {
    v143 = 0;
    v144 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000012, 0x8000000225D0CE20);
    if (v48 > 1)
    {
      if (v48 == 2)
      {
        v98 = 0x6942206863746157;
        v97 = 0xEE00797274656D6FLL;
        goto LABEL_79;
      }

      if (v48 == 3)
      {
        v66 = "Watch Accessibility";
        goto LABEL_75;
      }
    }

    else
    {
      if (!v48)
      {
        v97 = 0xEE00797274656D6FLL;
        v98 = 0x694220656E6F6850;
        goto LABEL_79;
      }

      if (v48 == 1)
      {
        v66 = "Phone Accessibility";
LABEL_75:
        v97 = (v66 - 32) | 0x8000000000000000;
        v98 = 0xD000000000000013;
LABEL_79:
        MEMORY[0x22AA6CE70](v98, v97);

        MEMORY[0x22AA6CE70](0x3A6567617375202CLL, 0xE900000000000020);
        v99 = 0x8000000225D0CCD0;
        v100 = 0xD000000000000015;
        v101 = 0xE700000000000000;
        v102 = 0x6E776F6E6B6E55;
        if (v47 == 1)
        {
          v102 = 0xD000000000000013;
          v101 = 0x8000000225D0CCF0;
        }

        if (v47 != 2)
        {
          v100 = v102;
          v99 = v101;
        }

        if (v47)
        {
          v103 = v100;
        }

        else
        {
          v103 = 0x6D746E6573657250;
        }

        if (v47)
        {
          v104 = v99;
        }

        else
        {
          v104 = 0xEB00000000746E65;
        }

        MEMORY[0x22AA6CE70](v103, v104);

        MEMORY[0x22AA6CE70](0xD000000000000029, 0x8000000225D0CE40);
        v105 = v143;
        v63 = v144;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        v106 = swift_initStackObject();
        *(v106 + 32) = 20;
        v107 = v106 + 32;
        v108 = MEMORY[0x277D84CC0];
        *(v106 + 16) = xmmword_225CD30F0;
        v109 = MEMORY[0x277D84D18];
        *(v106 + 64) = v108;
        *(v106 + 72) = v109;
        *(v106 + 40) = 0;
        v110 = sub_225B2C374(v106);
        swift_setDeallocating();
        sub_2259CB640(v107, &qword_27D73B060, &unk_225CD3AE0);
        v142 = 0x8000000225D0CD70;
        sub_2259CB5EC();
        swift_allocError();
        v112 = v111;
        v113 = sub_225CCE954();
        v114 = *(v113 - 8);
        v115 = v136;
        (*(v114 + 56))(v136, 1, 1, v113);
        LODWORD(v113) = (*(v114 + 48))(v115, 1, v113);
        sub_2259CB640(v115, &unk_27D73B050, &unk_225CD3AD0);
        if (v113)
        {
          v116 = 325;
        }

        else
        {
          v116 = 23;
        }

        v117 = MEMORY[0x277D84F90];
        v118 = sub_225B2C374(MEMORY[0x277D84F90]);
        v119 = swift_isUniquelyReferenced_nonNull_native();
        v143 = v118;
        sub_225B2C4A0(v110, sub_225B2AC40, 0, v119, &v143);

        v120 = v143;
        v121 = sub_225B29AA0(0, 1, 1, v117);
        v123 = *(v121 + 2);
        v122 = *(v121 + 3);
        if (v123 >= v122 >> 1)
        {
          v121 = sub_225B29AA0((v122 > 1), v123 + 1, 1, v121);
        }

        *(v121 + 2) = v123 + 1;
        v124 = &v121[56 * v123];
        *(v124 + 4) = v105;
        *(v124 + 5) = v63;
        v125 = v142;
        *(v124 + 6) = 0xD000000000000023;
        *(v124 + 7) = v125;
        *(v124 + 8) = 0xD000000000000025;
        *(v124 + 9) = 0x8000000225D0CDF0;
        *(v124 + 10) = 424;
        *v112 = v116;
        *(v112 + 8) = v121;
        *(v112 + 16) = v105;
        *(v112 + 24) = v63;
        *(v112 + 32) = v120;
        *(v112 + 40) = 0;
        swift_willThrow();
        goto LABEL_70;
      }
    }

    v97 = 0xE700000000000000;
    v98 = 0x6E776F6E6B6E55;
    goto LABEL_79;
  }

  v57 = v143;
  v58 = v130;
  os_unfair_lock_lock(&v18[v130]);
  v59 = v131;
  v60 = v133;
  v127(v131, &v18[v129], v133);
  os_unfair_lock_unlock(&v18[v58]);
  v61 = v57;
  sub_225B409D4(v59, v61);

  v31(v59, v60);
  v62 = v61;
  v63 = sub_225CCCFA4();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v11);
  return v63;
}

uint64_t sub_2259CA420()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v0 - 8);
  v53 = &v50 - v1;
  v54 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v54);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v52 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v12 = off_28105B918;
  v13 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v14 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v14));
  v50 = *(v7 + 16);
  v51 = v13;
  v55 = v6;
  v50(v11, &v12[v13], v6);
  os_unfair_lock_unlock(&v12[v14]);
  v15 = sub_225CCD934();
  v16 = sub_225CCED04();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2259A7000, v15, v16, "AppleIDVManager credentialAuthenticationTokenStatus", v17, 2u);
    MEMORY[0x22AA6F950](v17, -1, -1);
  }

  v18 = *(v7 + 8);
  v19 = v55;
  v18(v11, v55);
  if (qword_27D73A708 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v54, qword_27D741778);
  sub_2259CB588(v20, v3);
  DIPSignpost.init(_:)(v3, v56);
  v21 = [objc_opt_self() appleIDVCredentialAuthenticationTokenStatus];
  if (v21)
  {
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v24 = inited + 32;
    v25 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v26 = MEMORY[0x277D84D18];
    *(inited + 64) = v25;
    *(inited + 72) = v26;
    *(inited + 40) = v22;
    v27 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v24, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    swift_allocError();
    v29 = v28;
    v30 = sub_225CCE954();
    v31 = *(v30 - 8);
    v32 = v53;
    (*(v31 + 56))(v53, 1, 1, v30);
    LODWORD(v30) = (*(v31 + 48))(v32, 1, v30);
    sub_2259CB640(v32, &unk_27D73B050, &unk_225CD3AD0);
    if (v30)
    {
      v33 = 326;
    }

    else
    {
      v33 = 23;
    }

    v34 = MEMORY[0x277D84F90];
    v35 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v35;
    sub_225B2C4A0(v27, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v57);

    v37 = v57;
    v38 = sub_225B29AA0(0, 1, 1, v34);
    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = sub_225B29AA0((v39 > 1), v40 + 1, 1, v38);
    }

    *(v38 + 2) = v40 + 1;
    v41 = &v38[56 * v40];
    *(v41 + 4) = 0xD00000000000002ELL;
    *(v41 + 5) = 0x8000000225D0CD40;
    *(v41 + 6) = 0xD000000000000023;
    *(v41 + 7) = 0x8000000225D0CD70;
    *(v41 + 8) = 0xD000000000000025;
    *(v41 + 9) = 0x8000000225D0CDA0;
    *(v41 + 10) = 447;
    *v29 = v33;
    *(v29 + 8) = v38;
    *(v29 + 16) = 0xD00000000000002ELL;
    *(v29 + 24) = 0x8000000225D0CD40;
    *(v29 + 32) = v37;
    *(v29 + 40) = 0;
    swift_willThrow();
    v42 = v56;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v42);
  }

  else
  {
    os_unfair_lock_lock(&v12[v14]);
    v44 = v52;
    v50(v52, &v12[v51], v19);
    os_unfair_lock_unlock(&v12[v14]);
    v45 = sub_225CCD934();
    v46 = sub_225CCED04();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2259A7000, v45, v46, "AppleIDVManager credentialAuthenticationTokenStatus returned successfully", v47, 2u);
      v48 = v47;
      v19 = v55;
      MEMORY[0x22AA6F950](v48, -1, -1);
    }

    v18(v44, v19);
    v49 = v56;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v49);
  }
}