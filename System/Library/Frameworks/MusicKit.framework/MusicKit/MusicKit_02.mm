uint64_t sub_21722570C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  OUTLINED_FUNCTION_197();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_21722580C()
{
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_41_0();
  v3 = *(v2 - 8);
  OUTLINED_FUNCTION_61_9();
  v5(v0 + v4);
  (*(v3 + 8))(v0 + v1, v2);

  return MEMORY[0x2821FE8E8](v0);
}

__n128 sub_2172258F8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_2172259C0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_217225A54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

__n128 sub_217225AB4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_217225C28()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217225C60()
{

  if (*(v0 + 104))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217225CCC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217225D0C()
{

  if (*(v0 + 384))
  {
  }

  if (*(v0 + 512))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217225E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 72));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217225EF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 72)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217225FAC@<X0>(uint64_t *a1@<X8>)
{
  result = JSONDecoder.sharedRelatedItemStore.getter();
  *a1 = result;
  return result;
}

uint64_t sub_217225FDC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217226100()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217226148()
{
  OUTLINED_FUNCTION_953();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_21722618C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2172261C4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2172262A8()
{
  sub_21725CF00(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217226314()
{
  if (v0[3] != 1)
  {
  }

  if (v0[14])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217226394()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2172263D4()
{

  if (*(v0 + 104))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217226440()
{

  if (*(v0 + 384))
  {
  }

  if (*(v0 + 512))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217226530()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2172265BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C0, &unk_21775D480);
  OUTLINED_FUNCTION_79();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_79();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 72);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 104));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_2172266C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C0, &unk_21775D480);
  OUTLINED_FUNCTION_79();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    OUTLINED_FUNCTION_79();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 104)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 72);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

char *sub_217226864(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_217226884(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_2172268AC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_2172268D4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_2172268FC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[160 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_217226924(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_217226944(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_217226968(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_21722698C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[168 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_2172269B4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[112 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

uint64_t sub_217226BA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217513F64();
  *a1 = result & 1;
  return result;
}

uint64_t sub_217226C00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21751417C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_217226C58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217514530();
  *a1 = result & 1;
  return result;
}

uint64_t sub_217226DA4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217226DDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E10, &unk_217772C28);
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217226EA8()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217226F5C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217226FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_217227070(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_217227278(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudArtist.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_2172272F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudArtist.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722736C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_2172273FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722756C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2172275AC()
{

  if (*(v0 + 104))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217227618()
{

  if (*(v0 + 384))
  {
  }

  if (*(v0 + 512))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217227708()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217227758()
{

  if (v0[20])
  {
  }

  if (v0[24])
  {
  }

  if (v0[42])
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217227874(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_79();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[8];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_79();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[34];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[72]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_217227978(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_79();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[8];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_79();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[72]) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[34];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_217227EC0()
{
  sub_21725CF00(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217227F2C()
{

  if (*(v0 + 384))
  {
  }

  if (*(v0 + 512))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722801C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2172280A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 56));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217228164(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 56)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_217228268()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217228404(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudPlaylist.Collaborator.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21722847C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudPlaylist.Collaborator.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_2172284F8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 36));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_217228588(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 36));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_2172287C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_217228858(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2172289D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217228A40()
{
  if (v0[3] != 1)
  {
  }

  if (v0[14])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217228AC0()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217228B00()
{

  if (*(v0 + 104))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217228B6C()
{

  if (*(v0 + 384))
  {
  }

  if (*(v0 + 512))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217228C5C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217228CE8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_79();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_79();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[13];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[67]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_217228DEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_79();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_79();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[67]) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[13];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_217228F2C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_37_3();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217229124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22_41();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_217229198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_22_41();
  swift_getWitnessTable();

  return sub_217752638();
}

uint64_t sub_21722920C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22_41();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_217229284()
{
  if (*(v0 + 72) <= 8u)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  OUTLINED_FUNCTION_203_0();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2172292D4()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722930C()
{
  if (*(v0 + 72) <= 2u)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  OUTLINED_FUNCTION_203_0();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_217229354()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722939C()
{
  if (*(v0 + 72) <= 4u)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  OUTLINED_FUNCTION_203_0();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2172295A0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0);
}

BOOL sub_217229638(uint64_t a1, uint64_t a2)
{
  v2 = sub_217752DC8();

  return v2 != 0;
}

uint64_t sub_21722991C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_217229970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2172299F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 8))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

__n128 sub_217229A44(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_217229A84(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudCurator.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_217229AFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudCurator.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_217229B78(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 40));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_217229C08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 40));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_217229D0C()
{
  sub_21725CF00(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217229D78()
{

  if (*(v0 + 384))
  {
  }

  if (*(v0 + 512))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217229EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 60));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_217229F60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 60)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21722A080(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudRadioShow.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21722A0F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudRadioShow.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722A174(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 44));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_21722A204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 44));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722A34C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudGenre.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21722A3C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudGenre.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722A440(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 56));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_21722A4D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 56));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722A5D4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722A648()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722A680()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722A6D0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  OUTLINED_FUNCTION_197();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_21722A930@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2175FDA7C();
  *a1 = result;
  return result;
}

uint64_t sub_21722AE18()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722AE60()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722AE98()
{
  OUTLINED_FUNCTION_188_7();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_21722AEF0()
{
  if (*(v0 + 72) <= 8u)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  OUTLINED_FUNCTION_203_0();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_21722B0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_21722B16C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21722B25C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722B2E4()
{
  sub_21725CF00(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722B350()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722B390()
{

  if (*(v0 + 384))
  {
  }

  if (*(v0 + 512))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722B480()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722B50C(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_79();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[9];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_79();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[13];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[17]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_21722B610(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_79();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[9];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    OUTLINED_FUNCTION_79();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[17]) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[13];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_21722B81C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudRecordLabel.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21722B894(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudRecordLabel.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722B910(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 36));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_21722B9A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 36));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722BACC@<X0>(uint64_t *a1@<X8>)
{
  result = CloudStation.StreamingKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_21722BC00@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X8>)
{
  result = ApplicationMusicPlayer.Queue.Entries.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

Swift::Int sub_21722BC2C@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = ApplicationMusicPlayer.Queue.Entries.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = v6.value;
  *(a4 + 8) = v6.is_nil;
  return v6.value;
}

uint64_t sub_21722BCB0()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722BCF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B3E8, &qword_21778A5D8);
  OUTLINED_FUNCTION_43();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  v4 = *(v0 + v3 + 8);
  if (v4 >> 60 != 15)
  {
    sub_217275694(*(v0 + v3), v4);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722BDD0()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722BE08()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722BE44()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722BE84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2175FDA7C();
  *a1 = result;
  return result;
}

uint64_t sub_21722BEBC()
{

  OUTLINED_FUNCTION_37_3();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722BEF0()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722BF38()
{

  OUTLINED_FUNCTION_99_1();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722BF74()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_99_1();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722BFB8()
{

  OUTLINED_FUNCTION_28_6();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722BFEC()
{

  OUTLINED_FUNCTION_28_6();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722C028()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_37_3();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722C068()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722C0B8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722C3B8@<X0>(uint64_t *a1@<X8>)
{
  result = CloudAudioAnalysis.CloudVocalStrength.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21722C7D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21722C84C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722C8C8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25648, &qword_21775D598);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 32));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_21722C958(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25648, &qword_21775D598);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 32));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722CC08()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722CC50(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudSong.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21722CCC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudSong.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722CD44(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 28));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_21722CDD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 28));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

BOOL sub_21722CF24(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_21722CF54()
{
  OUTLINED_FUNCTION_2_122();
  v11 = MEMORY[0x277D84F90];
  v12 = v0;
  *&v10 = MEMORY[0x277D84F90];
  *(&v10 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_11_72();
  return sub_2173C381C(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12);
}

uint64_t sub_21722CF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = 0;
  *(v6 + 112) = 1;
  v17 = MEMORY[0x277D84F90];
  *&v16 = MEMORY[0x277D84F90];
  *(&v16 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_11_72();
  return sub_2173C381C(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17, a6);
}

uint64_t sub_21722CFF4()
{
  OUTLINED_FUNCTION_2_122();
  v11 = MEMORY[0x277D84F90];
  v12 = v0;
  *&v10 = MEMORY[0x277D84F90];
  *(&v10 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_11_72();
  return sub_2173C381C(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12);
}

uint64_t sub_21722D038()
{
  OUTLINED_FUNCTION_2_122();
  v11 = MEMORY[0x277D84F90];
  v12 = v0;
  *&v10 = MEMORY[0x277D84F90];
  *(&v10 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_11_72();
  return sub_2173C381C(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12);
}

unint64_t sub_21722D0B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_217752DC8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21722D0FC(char a1)
{
  if (!a1)
  {
    return 1954047342;
  }

  if (a1 == 1)
  {
    return 0x6E6572727563636FLL;
  }

  return 0x74657366666FLL;
}

uint64_t sub_21722D150()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722D218(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v2 + 1);
  }

  else
  {
    type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
    v4 = OUTLINED_FUNCTION_14_60();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

uint64_t sub_21722D28C(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
    v4 = OUTLINED_FUNCTION_14_60();

    return __swift_storeEnumTagSinglePayload(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_21722D304(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v3 = v2 - 1;
    if (v3 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v5 = OUTLINED_FUNCTION_14_60();

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

uint64_t sub_21722D390(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v4 = OUTLINED_FUNCTION_14_60();

    return __swift_storeEnumTagSinglePayload(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_21722D924()
{
  if (v0[3] != 1)
  {
  }

  if (v0[14])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722D9A4()
{

  if (*(v0 + 384))
  {
  }

  if (*(v0 + 512))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722DA94()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722DB20(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_79();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[6];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_79();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[22];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[45]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_21722DC24(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_79();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_79();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[45]) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[22];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t sub_21722DDDC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudStation.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21722DE60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudStation.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722DEDC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_195_0(*(a1 + 40));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v5 = OUTLINED_FUNCTION_217(*(a3 + 76));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

uint64_t sub_21722DF60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 76));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722E0F0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722E19C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0);
}

unint64_t sub_21722E1EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_217752DC8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21722E238(char a1)
{
  if (!a1)
  {
    return 1836213620;
  }

  if (a1 == 1)
  {
    return 1954047342;
  }

  return 0x7079742D6D657469;
}

uint64_t sub_21722E2B4()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722E2F4()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722E344()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722E3D4()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit23CloudResourceCollectionVyAA0cD0VyAA0C22PersonalRecommendationV7ContentOGGSg_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21722E5CC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_140();
    return (v3 + 1);
  }

  else
  {
    type metadata accessor for CloudSocialProfile.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_21722E644(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for CloudSocialProfile.Attributes(0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722E6C0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_140();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v7 = OUTLINED_FUNCTION_217(*(a3 + 36));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_21722E750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v6 = OUTLINED_FUNCTION_217(*(a4 + 36));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_21722E8F8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722EB68()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722EBC0(char a1)
{
  result = 0x737574617473;
  switch(a1)
  {
    case 1:
      result = 1701080931;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x6C6961746564;
      break;
    case 4:
      result = 25705;
      break;
    case 5:
      result = 0x656372756F73;
      break;
    case 6:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21722EE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return OUTLINED_FUNCTION_140_0();
  }

  else
  {
    return OUTLINED_FUNCTION_25_62(a1, a2, a3, a4);
  }
}

uint64_t sub_21722F1F0()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722F228()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722F328()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

unint64_t sub_21722F4B8(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_136(a1);
  result = sub_217710DFC(v3, v4, *v2);
  *v1 = result;
  return result;
}

uint64_t sub_21722F8F0()
{
  sub_21725CF00(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722F9A0(uint64_t result, uint64_t a2, char a3)
{
  if (!a3 || a3 == 2 || a3 == 1)
  {
    return sub_217751DE8();
  }

  return v3;
}

uint64_t sub_21722F9C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21722FA1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21722FB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = 0;
  *(v5 + 112) = 1;
  v14 = MEMORY[0x277D84F90];
  *&v13 = MEMORY[0x277D84F90];
  *(&v13 + 1) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  return sub_2173C381C(v6, v7, v8, v9, v11, v10, 0, 0, v13, v14, a5);
}

uint64_t sub_21722FD38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_21722FE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_21722FEC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

Swift::Int sub_21722FFCC@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X8>)
{
  result = MusicItemCollection.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

Swift::Int sub_21722FFF8@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = MusicItemCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = v6.value;
  *(a4 + 8) = v6.is_nil;
  return v6.value;
}

__n128 sub_217230044(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2172300B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24710, &unk_2177A28C0);
    v10 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_217230150(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24710, &unk_2177A28C0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

Swift::Int sub_2172302CC@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X8>)
{
  result = LegacySectionedCollectionItemLoader.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_2172302FC@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int a3@<X2>, uint64_t a4@<X8>)
{
  result = LegacySectionedCollectionItemLoader.index(_:offsetBy:limitedBy:)(*a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = 0;
  return result;
}

uint64_t sub_21723035C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_217230394()
{

  return MEMORY[0x2821FE8E8](v0);
}

char *sub_217230498(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_2172304B8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_2172304D8(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_66(a3, result, a2);
  }

  return result;
}

uint64_t sub_2172304FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21723051C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
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

  *(result + 41) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(uint64_t a1)
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

uint64_t sub_21723057C@<X0>(Swift::String *a1@<X0>, MusicKit::MusicItemID *a2@<X8>)
{
  v4 = MusicItemID.init(stringLiteral:)(*a1);
  result = v4.rawValue._countAndFlagsBits;
  *a2 = v4;
  return result;
}

uint64_t sub_2172305CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217366EC4(a2, a3);
  *a1 = result & 1;
  return result;
}

id getMPModelLibrarySearchScopeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibrarySearchScopeClass_softClass;
  v7 = getMPModelLibrarySearchScopeClass_softClass;
  if (!getMPModelLibrarySearchScopeClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibrarySearchScopeClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelLibrarySearchScopeClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2172308D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217230C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelRelationshipGenericSong()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelRelationshipGenericSongSymbolLoc_ptr;
  v8 = getMPModelRelationshipGenericSongSymbolLoc_ptr;
  if (!getMPModelRelationshipGenericSongSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary();
    v6[3] = dlsym(v1, "MPModelRelationshipGenericSong");
    getMPModelRelationshipGenericSongSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

Class __getMPModelLibrarySearchScopeClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  result = objc_getClass("MPModelLibrarySearchScope");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibrarySearchScopeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibrarySearchScopeClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getMPModelRelationshipGenericAlbumSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipGenericAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericAlbumSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipGenericArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericMovieSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipGenericMovie");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericMovieSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericSongSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipGenericSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericSongSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericPlaylistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipGenericPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericPlaylistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericTVEpisodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary();
  result = dlsym(v2, "MPModelRelationshipGenericTVEpisode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericTVEpisodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMPModelObjectClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelObjectClass_softClass;
  v7 = getMPModelObjectClass_softClass;
  if (!getMPModelObjectClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelObjectClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelObjectClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217231628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2172318A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelLibraryPinClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibraryPinClass_softClass;
  v7 = getMPModelLibraryPinClass_softClass;
  if (!getMPModelLibraryPinClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibraryPinClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelLibraryPinClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21723198C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelObjectClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_0();
  result = objc_getClass("MPModelObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelObjectClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelObjectClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_0(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getMPModelStoreBrowseContentItemClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_0();
  result = objc_getClass("MPModelStoreBrowseContentItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelStoreBrowseContentItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelStoreBrowseContentItemClass_block_invoke_cold_1();
    return __getMPModelLibraryPinClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelLibraryPinClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_0();
  result = objc_getClass("MPModelLibraryPin");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryPinClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPModelLibraryPinClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPModelCurator *)v3 kindForRawValue:v4, v5];
  }

  return result;
}

os_log_t MusicKit_Logging_Artwork()
{
  v0 = os_log_create("com.apple.MusicKit", "Artwork");

  return v0;
}

os_log_t MusicKit_Logging_Library()
{
  v0 = os_log_create("com.apple.MusicKit", "Library");

  return v0;
}

void sub_217232224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibrarySearchRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782296D0;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_1)
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
  result = objc_getClass("MPModelLibrarySearchRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibrarySearchRequestClass_block_invoke_cold_1();
  }

  getMPModelLibrarySearchRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void sub_21723282C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPStoreLibraryPersonalizationRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278229710;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_2)
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
  result = objc_getClass("MPStoreLibraryPersonalizationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPStoreLibraryPersonalizationRequestClass_block_invoke_cold_1();
  }

  getMPStoreLibraryPersonalizationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_2(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void sub_217232EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUIGraphicsImageRendererFormatClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIGraphicsImageRendererFormatClass_softClass;
  v7 = getUIGraphicsImageRendererFormatClass_softClass;
  if (!getUIGraphicsImageRendererFormatClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUIGraphicsImageRendererFormatClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getUIGraphicsImageRendererFormatClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217233334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUIGraphicsImageRendererClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIGraphicsImageRendererClass_softClass;
  v7 = getUIGraphicsImageRendererClass_softClass;
  if (!getUIGraphicsImageRendererClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUIGraphicsImageRendererClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getUIGraphicsImageRendererClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217233414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217233E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUIFontClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIFontClass_softClass;
  v7 = getUIFontClass_softClass;
  if (!getUIFontClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUIFontClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getUIFontClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217233F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUIColorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIColorClass_softClass;
  v7 = getUIColorClass_softClass;
  if (!getUIColorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUIColorClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getUIColorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217234000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21723520C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUIImageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v8 = getUIImageClass_softClass;
  v16 = getUIImageClass_softClass;
  if (!getUIImageClass_softClass)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __getUIImageClass_block_invoke;
    v12[3] = &unk_278229610;
    v12[4] = &v13;
    __getUIImageClass_block_invoke(v12, a2, a3, a4, a5, a6, a7, a8, v11);
    v8 = v14[3];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  return v9;
}

void sub_217235390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPArtworkRepresentationClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_3)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_3;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278229878;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_3 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_3)
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
  result = objc_getClass("MPArtworkRepresentation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPArtworkRepresentationClass_block_invoke_cold_1();
  }

  getMPArtworkRepresentationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_3(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_3 = result;
  return result;
}

Class __getUIGraphicsImageRendererFormatClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIGraphicsImageRendererFormat");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIGraphicsImageRendererFormatClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getUIGraphicsImageRendererFormatClass_block_invoke_cold_1();
    return UIKitLibrary();
  }

  return result;
}

uint64_t UIKitLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __UIKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278229890;
    v5 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = UIKitLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getEMFStringUtilitiesClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!EmojiFoundationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __EmojiFoundationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782298A8;
    v6 = 0;
    EmojiFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (EmojiFoundationLibraryCore_frameworkLibrary)
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
  result = objc_getClass("EMFStringUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getEMFStringUtilitiesClass_block_invoke_cold_1();
  }

  getEMFStringUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __EmojiFoundationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  EmojiFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getUIGraphicsImageRendererClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIGraphicsImageRenderer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIGraphicsImageRendererClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUIGraphicsImageRendererClass_block_invoke_cold_1();
    return __getUIFontWeightSemiboldSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getUIFontWeightSemiboldSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIFontWeightSemibold");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIFontWeightSemiboldSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUIFontClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIFont");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIFontClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUIFontClass_block_invoke_cold_1();
    return __getkCTFontIgnoreLegibilityWeightAttributeSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getkCTFontIgnoreLegibilityWeightAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "kCTFontIgnoreLegibilityWeightAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontIgnoreLegibilityWeightAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreTextLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoreTextLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoreTextLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2782298C0;
    v5 = 0;
    CoreTextLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreTextLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!CoreTextLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CoreTextLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreTextLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkCTFontOpticalSizeAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "kCTFontOpticalSizeAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontOpticalSizeAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getNSMutableParagraphStyleClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("NSMutableParagraphStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNSMutableParagraphStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getNSMutableParagraphStyleClass_block_invoke_cold_1();
    return __getUIColorClass_block_invoke(v3);
  }

  return result;
}

Class __getUIColorClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIColorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUIColorClass_block_invoke_cold_1();
    return __getNSFontAttributeNameSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getNSFontAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSFontAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSFontAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSForegroundColorAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSForegroundColorAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSForegroundColorAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSKernAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSKernAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSKernAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSParagraphStyleAttributeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "NSParagraphStyleAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSParagraphStyleAttributeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getJULanguageAwareStringClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!JetUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __JetUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782298D8;
    v6 = 0;
    JetUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (JetUILibraryCore_frameworkLibrary)
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
  result = objc_getClass("JULanguageAwareString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getJULanguageAwareStringClass_block_invoke_cold_1();
  }

  getJULanguageAwareStringClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __JetUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  JetUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCIImageClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreImageLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreImageLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2782298F0;
    v6 = 0;
    CoreImageLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreImageLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCIImageClass_block_invoke_cold_1();
  }

  getCIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreImageLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreImageLibraryCore_frameworkLibrary = result;
  return result;
}

MusicKit_SoftLinking_CoverArtworkRecipe *__getUIImageClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGColor *a9)
{
  UIKitLibrary();
  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v11 = __getUIImageClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_CoverArtworkRecipe *)v11 initWithExpression:v12 version:v13 backgroundColor:v14 primaryColor:v15 secondaryColor:v16 tertiaryColor:v17 textColor:v18, a9];
  }

  return result;
}

void sub_217238638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMusicPlayerPlayParametersQueueDescriptorClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_4)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_4;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278229948;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_4 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_4)
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
  result = objc_getClass("MPMusicPlayerPlayParametersQueueDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPMusicPlayerPlayParametersQueueDescriptorClass_block_invoke_cold_1();
  }

  getMPMusicPlayerPlayParametersQueueDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_4(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_4 = result;
  return result;
}

void sub_217239B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaPlayerLibraryCore_block_invoke_5(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_5 = result;
  return result;
}

void sub_21723A07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPNowPlayingInfoAudioFormatClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_6)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_6;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278229A08;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_6 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_6)
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
  result = objc_getClass("MPNowPlayingInfoAudioFormat");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPNowPlayingInfoAudioFormatClass_block_invoke_cold_1();
  }

  getMPNowPlayingInfoAudioFormatClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_6(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_6 = result;
  return result;
}

void sub_21723A3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibrarySDKAddToPlaylistChangeRequestClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_7)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_7;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278229A20;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_7 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_7)
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
  result = objc_getClass("MPModelLibrarySDKAddToPlaylistChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelLibrarySDKAddToPlaylistChangeRequestClass_block_invoke_cold_1();
  }

  getMPModelLibrarySDKAddToPlaylistChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_7(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_7 = result;
  return result;
}

id getMPIdentifierSetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPIdentifierSetClass_softClass;
  v7 = getMPIdentifierSetClass_softClass;
  if (!getMPIdentifierSetClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPIdentifierSetClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPIdentifierSetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21723A6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_MPStoreItemMetadataInt64NormalizeStoreIDValue(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_ptr;
  v10 = getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_ptr;
  if (!getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_ptr)
  {
    v3 = MediaPlayerLibrary_2();
    v8[3] = dlsym(v3, "MPStoreItemMetadataInt64NormalizeStoreIDValue");
    getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_ptr = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = v2(v1);

  return v4;
}

Class __getMPIdentifierSetClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPIdentifierSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPIdentifierSetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPIdentifierSetClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_8(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_8(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_8 = result;
  return result;
}

Class __getMPModelRadioStationKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPModelRadioStationKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelRadioStationKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelRadioStationKindClass_block_invoke_cold_1();
    return __getMPModelPlaylistKindClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelPlaylistKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPModelPlaylistKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistKindClass_block_invoke_cold_1();
    return __getMPModelSocialPersonKindClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelSocialPersonKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPModelSocialPersonKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSocialPersonKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelSocialPersonKindClass_block_invoke_cold_1();
    return __getMPModelForYouRecommendationGroupKindClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelForYouRecommendationGroupKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_2();
  result = objc_getClass("MPModelForYouRecommendationGroupKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelForYouRecommendationGroupKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelForYouRecommendationGroupKindClass_block_invoke_cold_1();
    return __getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_2();
  result = dlsym(v2, "MPStoreItemMetadataInt64NormalizeStoreIDValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPStoreItemMetadataInt64NormalizeStoreIDValueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPStoreItemMetadataNumberNormalizeStoreIDValueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_2();
  result = dlsym(v2, "MPStoreItemMetadataNumberNormalizeStoreIDValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPStoreItemMetadataNumberNormalizeStoreIDValueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21723D09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMusicPlayerPlayParametersClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_9)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_9;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278229C10;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_9 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_9)
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
  result = objc_getClass("MPMusicPlayerPlayParameters");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPMusicPlayerPlayParametersClass_block_invoke_cold_1();
  }

  getMPMusicPlayerPlayParametersClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_9(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_9 = result;
  return result;
}

void sub_21723D658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21723D938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose((v15 - 112), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getMPMediaItemPropertyStoreID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyStoreIDSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyStoreIDSymbolLoc_ptr;
  if (!getMPMediaItemPropertyStoreIDSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyStoreID");
    getMPMediaItemPropertyStoreIDSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertySubscriptionStoreItemID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertySubscriptionStoreItemIDSymbolLoc_ptr;
  v8 = getMPMediaItemPropertySubscriptionStoreItemIDSymbolLoc_ptr;
  if (!getMPMediaItemPropertySubscriptionStoreItemIDSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertySubscriptionStoreItemID");
    getMPMediaItemPropertySubscriptionStoreItemIDSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyStoreCloudUniversalLibraryID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyStoreCloudUniversalLibraryIDSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyStoreCloudUniversalLibraryIDSymbolLoc_ptr;
  if (!getMPMediaItemPropertyStoreCloudUniversalLibraryIDSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyStoreCloudUniversalLibraryID");
    getMPMediaItemPropertyStoreCloudUniversalLibraryIDSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyAlbumTitle()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr;
  if (!getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyAlbumTitle");
    getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyArtist()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyArtistSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyArtistSymbolLoc_ptr;
  if (!getMPMediaItemPropertyArtistSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyArtist");
    getMPMediaItemPropertyArtistSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyStoreGenreID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyStoreGenreIDSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyStoreGenreIDSymbolLoc_ptr;
  if (!getMPMediaItemPropertyStoreGenreIDSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyStoreGenreID");
    getMPMediaItemPropertyStoreGenreIDSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyGenre()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyGenreSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyGenreSymbolLoc_ptr;
  if (!getMPMediaItemPropertyGenreSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyGenre");
    getMPMediaItemPropertyGenreSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyPlaybackDuration()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyPlaybackDurationSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyPlaybackDurationSymbolLoc_ptr;
  if (!getMPMediaItemPropertyPlaybackDurationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyPlaybackDuration");
    getMPMediaItemPropertyPlaybackDurationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyAlbumTrackNumber()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyAlbumTrackNumberSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyAlbumTrackNumberSymbolLoc_ptr;
  if (!getMPMediaItemPropertyAlbumTrackNumberSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyAlbumTrackNumber");
    getMPMediaItemPropertyAlbumTrackNumberSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyDiscNumber()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyDiscNumberSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyDiscNumberSymbolLoc_ptr;
  if (!getMPMediaItemPropertyDiscNumberSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyDiscNumber");
    getMPMediaItemPropertyDiscNumberSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyReleaseDate()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyReleaseDateSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyReleaseDateSymbolLoc_ptr;
  if (!getMPMediaItemPropertyReleaseDateSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyReleaseDate");
    getMPMediaItemPropertyReleaseDateSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyIsExplicit()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyIsExplicitSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyIsExplicitSymbolLoc_ptr;
  if (!getMPMediaItemPropertyIsExplicitSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyIsExplicit");
    getMPMediaItemPropertyIsExplicitSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyIsMusicVideo()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyIsMusicVideoSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyIsMusicVideoSymbolLoc_ptr;
  if (!getMPMediaItemPropertyIsMusicVideoSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyIsMusicVideo");
    getMPMediaItemPropertyIsMusicVideoSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyVideoQuality()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyVideoQualitySymbolLoc_ptr;
  v8 = getMPMediaItemPropertyVideoQualitySymbolLoc_ptr;
  if (!getMPMediaItemPropertyVideoQualitySymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyVideoQuality");
    getMPMediaItemPropertyVideoQualitySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaItemPropertyColorCapability()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyColorCapabilitySymbolLoc_ptr;
  v8 = getMPMediaItemPropertyColorCapabilitySymbolLoc_ptr;
  if (!getMPMediaItemPropertyColorCapabilitySymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_3();
    v6[3] = dlsym(v1, "MPMediaItemPropertyColorCapability");
    getMPMediaItemPropertyColorCapabilitySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_10(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_10 = result;
  return result;
}

Class __getMPModelObjectMediaItemClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_3();
  result = objc_getClass("MPModelObjectMediaItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelObjectMediaItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelObjectMediaItemClass_block_invoke_cold_1();
    return __getMPModelObjectClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelObjectClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_3();
  result = objc_getClass("MPModelObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelObjectClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelObjectClass_block_invoke_cold_1();
    return __getMPMediaItemPropertyStoreIDSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPMediaItemPropertyStoreIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyStoreID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyStoreIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertySubscriptionStoreItemIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertySubscriptionStoreItemID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertySubscriptionStoreItemIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyStoreCloudUniversalLibraryIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyStoreCloudUniversalLibraryID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyStoreCloudUniversalLibraryIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyAlbumTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyAlbumTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyStoreGenreIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyStoreGenreID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyStoreGenreIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyGenreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyGenre");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyGenreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyPlaybackDurationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyPlaybackDuration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyPlaybackDurationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyAlbumTrackNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyAlbumTrackNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAlbumTrackNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyDiscNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyDiscNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyDiscNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyReleaseDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyReleaseDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyReleaseDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyIsExplicitSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyIsExplicit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyIsExplicitSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyIsMusicVideoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyIsMusicVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyIsMusicVideoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyVideoQualitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyVideoQuality");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyVideoQualitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyColorCapabilitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPMediaItemPropertyColorCapability");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyColorCapabilitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPStoreItemMetadataItemKindMusicVideoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPStoreItemMetadataItemKindMusicVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPStoreItemMetadataItemKindMusicVideoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPStoreItemMetadataItemKindSongSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_3();
  result = dlsym(v2, "MPStoreItemMetadataItemKindSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPStoreItemMetadataItemKindSongSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_217240CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelCuratorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelCuratorClass_softClass;
  v7 = getMPModelCuratorClass_softClass;
  if (!getMPModelCuratorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelCuratorClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelCuratorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217240E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPArtworkCatalogClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPArtworkCatalogClass_softClass;
  v7 = getMPArtworkCatalogClass_softClass;
  if (!getMPArtworkCatalogClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPArtworkCatalogClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPArtworkCatalogClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2172410C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217241388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaPlayerLibraryCore_block_invoke_11(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_11 = result;
  return result;
}

Class __getMPModelCuratorClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelCurator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelCuratorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelCuratorClass_block_invoke_cold_1();
    return __getMPModelArtistClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelArtistClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelArtistClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelArtistClass_block_invoke_cold_1();
    return __getMPModelComposerClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelComposerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelComposer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelComposerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelComposerClass_block_invoke_cold_1();
    return __getMPModelCreditsArtistClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelCreditsArtistClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelCreditsArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelCreditsArtistClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelCreditsArtistClass_block_invoke_cold_1();
    return __getMPModelFileAssetClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelFileAssetClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelFileAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelFileAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelFileAssetClass_block_invoke_cold_1();
    return __getMPModelGenreClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelGenreClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelGenre");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelGenreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelGenreClass_block_invoke_cold_1();
    return __getMPModelHomeSharingAssetClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelHomeSharingAssetClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelHomeSharingAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelHomeSharingAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelHomeSharingAssetClass_block_invoke_cold_1();
    return __getMPModelLyricsClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelLyricsClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelLyrics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLyricsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLyricsClass_block_invoke_cold_1();
    return __getMPModelLibraryPinClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelLibraryPinClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelLibraryPin");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryPinClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryPinClass_block_invoke_cold_1_0();
    return __getMPModelPlaylistAuthorClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelPlaylistAuthorClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelPlaylistAuthor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistAuthorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistAuthorClass_block_invoke_cold_1();
    return __getMPModelPlaylistEntryReactionClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelPlaylistEntryReactionClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelPlaylistEntryReaction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistEntryReactionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistEntryReactionClass_block_invoke_cold_1();
    return __getMPModelPlaybackPositionClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelPlaybackPositionClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelPlaybackPosition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaybackPositionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaybackPositionClass_block_invoke_cold_1();
    return __getMPModelRecordLabelClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelRecordLabelClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelRecordLabel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelRecordLabelClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelRecordLabelClass_block_invoke_cold_1();
    return __getMPModelSocialPersonClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelSocialPersonClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelSocialPerson");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSocialPersonClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelSocialPersonClass_block_invoke_cold_1();
    return __getMPModelRadioStationClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelRadioStationClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelRadioStation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelRadioStationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelRadioStationClass_block_invoke_cold_1();
    return __getMPModelStoreAssetClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelStoreAssetClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelStoreAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelStoreAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelStoreAssetClass_block_invoke_cold_1();
    return __getMPModelTVShowClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelTVShowClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelTVShow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelTVShowClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelTVShowClass_block_invoke_cold_1();
    return __getMPArtworkCatalogClass_block_invoke(v3);
  }

  return result;
}

Class __getMPArtworkCatalogClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPArtworkCatalog");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPArtworkCatalogClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPArtworkCatalogClass_block_invoke_cold_1();
    return __getMPModelObjectClass_block_invoke_1(v3);
  }

  return result;
}

Class __getMPModelObjectClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_4();
  result = objc_getClass("MPModelObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelObjectClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelObjectClass_block_invoke_cold_1();
    return [(MusicKit_SoftLinking_MPModelPlaylistEntry *)v3 typeForRawValue:v4, v5];
  }

  return result;
}

id getMPModelLibraryPlaylistEditChangeRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelLibraryPlaylistEditChangeRequestClass_softClass;
  v7 = getMPModelLibraryPlaylistEditChangeRequestClass_softClass;
  if (!getMPModelLibraryPlaylistEditChangeRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelLibraryPlaylistEditChangeRequestClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelLibraryPlaylistEditChangeRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217241E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMutableSectionedCollectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMutableSectionedCollectionClass_softClass;
  v7 = getMPMutableSectionedCollectionClass_softClass;
  if (!getMPMutableSectionedCollectionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPMutableSectionedCollectionClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPMutableSectionedCollectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217241F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelLibraryPlaylistEditChangeRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_5();
  result = objc_getClass("MPModelLibraryPlaylistEditChangeRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryPlaylistEditChangeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryPlaylistEditChangeRequestClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_12(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_12(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_12 = result;
  return result;
}

MusicKit_SoftLinking_MPModelRequest *__getMPMutableSectionedCollectionClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_5();
  result = objc_getClass("MPMutableSectionedCollection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMutableSectionedCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMutableSectionedCollectionClass_block_invoke_cold_1();
    return +[(MusicKit_SoftLinking_MPModelRequest *)v3];
  }

  return result;
}

void sub_217242DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21724312C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelPropertyAlbumCleanDownloadedTrackCount()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyAlbumCleanDownloadedTrackCountSymbolLoc_ptr;
  v8 = getMPModelPropertyAlbumCleanDownloadedTrackCountSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumCleanDownloadedTrackCountSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyAlbumCleanDownloadedTrackCount");
    getMPModelPropertyAlbumCleanDownloadedTrackCountSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_217243814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217243AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217243CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelPropertyLyricsHasLibraryLyrics()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyLyricsHasLibraryLyricsSymbolLoc_ptr;
  v8 = getMPModelPropertyLyricsHasLibraryLyricsSymbolLoc_ptr;
  if (!getMPModelPropertyLyricsHasLibraryLyricsSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyLyricsHasLibraryLyrics");
    getMPModelPropertyLyricsHasLibraryLyricsSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyLyricsHasStoreLyrics()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyLyricsHasStoreLyricsSymbolLoc_ptr;
  v8 = getMPModelPropertyLyricsHasStoreLyricsSymbolLoc_ptr;
  if (!getMPModelPropertyLyricsHasStoreLyricsSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyLyricsHasStoreLyrics");
    getMPModelPropertyLyricsHasStoreLyricsSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPModelPropertyLyricsHasTimeSyncedLyrics()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPModelPropertyLyricsHasTimeSyncedLyricsSymbolLoc_ptr;
  v8 = getMPModelPropertyLyricsHasTimeSyncedLyricsSymbolLoc_ptr;
  if (!getMPModelPropertyLyricsHasTimeSyncedLyricsSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_6();
    v6[3] = dlsym(v1, "MPModelPropertyLyricsHasTimeSyncedLyrics");
    getMPModelPropertyLyricsHasTimeSyncedLyricsSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_217244790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217244B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217245028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2172453B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217245954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2172471B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217248110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2172483D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelRequestClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_6();
  result = objc_getClass("MPModelRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelRequestClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_13(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_13(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_13 = result;
  return result;
}

Class __getMPModelKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_6();
  result = objc_getClass("MPModelKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelKindClass_block_invoke_cold_1();
    return __getMPModelStoreBrowseContentItemClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelStoreBrowseContentItemClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_6();
  result = objc_getClass("MPModelStoreBrowseContentItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelStoreBrowseContentItemClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelStoreBrowseContentItemClass_block_invoke_cold_1_0();
    return __getMPModelStoreBrowseContentItemPropertyItemTypeSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPModelStoreBrowseContentItemPropertyItemTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelStoreBrowseContentItemPropertyItemType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelStoreBrowseContentItemPropertyItemTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelStoreBrowseContentItemRelationshipAlbumSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelStoreBrowseContentItemRelationshipAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelStoreBrowseContentItemRelationshipAlbumSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelStoreBrowseContentItemRelationshipArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelStoreBrowseContentItemRelationshipArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelStoreBrowseContentItemRelationshipArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelStoreBrowseContentItemRelationshipSongSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelStoreBrowseContentItemRelationshipSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelStoreBrowseContentItemRelationshipSongSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelStoreBrowseContentItemRelationshipMovieSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelStoreBrowseContentItemRelationshipMovie");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelStoreBrowseContentItemRelationshipMovieSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelStoreBrowseContentItemRelationshipPlaylistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelStoreBrowseContentItemRelationshipPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelStoreBrowseContentItemRelationshipPlaylistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelStoreBrowseContentItemRelationshipTVEpisodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelStoreBrowseContentItemRelationshipTVEpisode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelStoreBrowseContentItemRelationshipTVEpisodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelStoreBrowseContentItemRelationshipTVSeasonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelStoreBrowseContentItemRelationshipTVSeason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelStoreBrowseContentItemRelationshipTVSeasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericAlbumSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipGenericAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericAlbumSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericPlaylistSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipGenericPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericPlaylistSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericRadioStationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipGenericRadioStation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericRadioStationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericTVSeasonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipGenericTVSeason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericTVSeasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericPlaylistEntrySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipGenericPlaylistEntry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericPlaylistEntrySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericSongSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipGenericSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericSongSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericMovieSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipGenericMovie");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericMovieSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericTVEpisodeSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipGenericTVEpisode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericTVEpisodeSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySectionTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySectionTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySectionTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumTrackCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumTrackCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumTrackCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumCleanDownloadedTrackCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumCleanDownloadedTrackCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumCleanDownloadedTrackCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumCleanSongCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumCleanSongCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumCleanSongCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumMaximumItemTrackNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumMaximumItemTrackNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumMaximumItemTrackNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumHasCleanContentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumHasCleanContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumHasCleanContentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumHasExplicitContentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumHasExplicitContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumHasExplicitContentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumIsCompilationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumIsCompilation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumIsCompilationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumIsClassicalSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumIsClassical");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumIsClassicalSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumIsFavoriteSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumIsFavorite");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumIsFavoriteSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumIsPinnedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumIsPinned");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumIsPinnedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumClassicalExperienceAvailableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumClassicalExperienceAvailable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumClassicalExperienceAvailableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumDateFavoritedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumDateFavorited");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumDateFavoritedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumReleaseDateComponents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumLastDevicePlaybackDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumLastDevicePlaybackDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumLastDevicePlaybackDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumLibraryAddEligibleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumLibraryAddEligible");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumLibraryAddEligibleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumDownloadedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumDownloadedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumYearSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumYear");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumYearSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumLibraryAddedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumLibraryAdded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumLibraryAddedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumLibraryAddedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumKeepLocalEnableStateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumKeepLocalEnableState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumKeepLocalEnableStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumKeepLocalManagedStatusSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumKeepLocalManagedStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumKeepLocalManagedStatusSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumKeepLocalManagedStatusReasonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumKeepLocalManagedStatusReason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumKeepLocalManagedStatusReasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumCopyrightTextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumCopyrightText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumCopyrightTextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumPreorderSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumPreorder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumPreorderSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumEditorNotesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumEditorNotes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumEditorNotesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumShortEditorNotesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumShortEditorNotes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumShortEditorNotesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumVolumeNormalizationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumVolumeNormalization");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumVolumeNormalizationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumTraitsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumTraits");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumTraitsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumIsStoreRedownloadableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumIsStoreRedownloadable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumIsStoreRedownloadableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumDownloadedTrackCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumDownloadedTrackCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumDownloadedTrackCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistCleanSongCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistCleanSongCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistCleanSongCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistCleanDownloadedSongCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistCleanDownloadedSongCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistCleanDownloadedSongCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistDownloadedSongCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistDownloadedSongCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistDownloadedSongCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistSongCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistSongCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistSongCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistAlbumCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistAlbumCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistAlbumCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistLibraryAddedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistLibraryAddedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistLibraryAddedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistIsFavoriteSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistIsFavorite");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistIsFavoriteSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistDateFavoritedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistDateFavorited");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistDateFavoritedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyAlbumIsDislikedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyAlbumIsDisliked");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyAlbumIsDislikedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistIsDislikedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistIsDisliked");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistIsDislikedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipAlbumArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipAlbumArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipAlbumArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipAlbumGenreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipAlbumGenre");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipAlbumGenreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipAlbumRepresentativeSongSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipAlbumRepresentativeSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipAlbumRepresentativeSongSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistClassicalExperienceAvailableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistClassicalExperienceAvailable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistClassicalExperienceAvailableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyArtistIsPinnedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyArtistIsPinned");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyArtistIsPinnedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyCuratorHandleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyCuratorHandle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyCuratorHandleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyCuratorKindSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyCuratorKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyCuratorKindSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyCuratorSubKindSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyCuratorSubKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyCuratorSubKindSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyCuratorNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyCuratorName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyCuratorNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyComposerNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyComposerName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyComposerNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyComposerLibraryAddedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyComposerLibraryAddedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyComposerLibraryAddedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyGenreNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyGenreName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyGenreNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyGenreLibraryAddedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyGenreLibraryAddedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyGenreLibraryAddedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyFileAssetNonPurgeableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyFileAssetNonPurgeable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyFileAssetNonPurgeableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyFileAssetProtectionTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyFileAssetProtectionType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyFileAssetProtectionTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyFileAssetTraitsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyFileAssetTraits");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyFileAssetTraitsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyLyricsHasLibraryLyricsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyLyricsHasLibraryLyrics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyLyricsHasLibraryLyricsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyLyricsHasStoreLyricsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyLyricsHasStoreLyrics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyLyricsHasStoreLyricsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyLyricsHasTimeSyncedLyricsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyLyricsHasTimeSyncedLyrics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyLyricsHasTimeSyncedLyricsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyLyricsTextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyLyricsText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyLyricsTextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieDownloadedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieDownloadedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieDurationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieDuration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieDurationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieHasCloudSyncSourceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieHasCloudSyncSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieHasCloudSyncSourceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieLibraryAddedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieLibraryAdded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieLibraryAddedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieLibraryAddEligibleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieLibraryAddEligible");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieLibraryAddEligibleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieKeepLocalEnableStateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieKeepLocalEnableState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieKeepLocalEnableStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieKeepLocalManagedStatusSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieKeepLocalManagedStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieKeepLocalManagedStatusSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieKeepLocalManagedStatusReasonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieKeepLocalManagedStatusReason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieKeepLocalManagedStatusReasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieLastDevicePlaybackDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieLastDevicePlaybackDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieLastDevicePlaybackDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieLibraryAddedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieLibraryAddedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieLibraryAddedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieInfoDictionarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieInfoDictionary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieInfoDictionarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieReleaseDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieReleaseDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieReleaseDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieDescriptionTextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieDescriptionText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieDescriptionTextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieTaglineSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieTagline");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieTaglineSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyMovieTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyMovieTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyMovieTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipMoviePlaybackPositionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipMoviePlaybackPosition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipMoviePlaybackPositionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipMovieLocalFileAssetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipMovieLocalFileAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipMovieLocalFileAssetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipMovieStoreAssetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipMovieStoreAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipMovieStoreAssetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyLibraryPinDefaultActionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyLibraryPinDefaultAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyLibraryPinDefaultActionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyLibraryPinEntityTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyLibraryPinEntityType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyLibraryPinEntityTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyLibraryPinPositionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyLibraryPinPosition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyLibraryPinPositionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyLibraryPinPositionUUIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyLibraryPinPositionUUID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyLibraryPinPositionUUIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipLibraryPinAlbumSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipLibraryPinAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipLibraryPinAlbumSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipLibraryPinArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipLibraryPinArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipLibraryPinArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipLibraryPinPlaylistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipLibraryPinPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipLibraryPinPlaylistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipLibraryPinSongSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipLibraryPinSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipLibraryPinSongSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistEditorNotesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistEditorNotes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistEditorNotesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistShortEditorNotesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistShortEditorNotes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistShortEditorNotesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistReleaseDateComponentsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistReleaseDateComponents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistReleaseDateComponentsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistLastModifiedDateComponents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistLastModifiedDateComponentsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistCoverArtworkRecipeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistCoverArtworkRecipe");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistCoverArtworkRecipeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistEditorialArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistEditorialArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistEditorialArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistTracksTiledArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistHasAnyCleanDownloadedTracksSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistHasAnyCleanDownloadedTracks");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistHasAnyCleanDownloadedTracksSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistHasAnyCleanTracksSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistHasAnyCleanTracks");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistHasAnyCleanTracksSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistHasCleanContentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistHasCleanContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistHasCleanContentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistHasExplicitContentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistHasExplicitContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistHasExplicitContentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistIsFavoriteSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistIsFavorite");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistIsFavoriteSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistIsPinnedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistIsPinned");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistIsPinnedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistDateFavoritedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistDateFavorited");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistDateFavoritedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistLibraryAddedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistLibraryAdded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistLibraryAddedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistLibraryAddedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistDownloadedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistDownloadedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistDownloadedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistLastDevicePlaybackDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistLastDevicePlaybackDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistLastDevicePlaybackDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistKeepLocalEnableStateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistKeepLocalEnableState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistKeepLocalEnableStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistKeepLocalManagedStatusSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistKeepLocalManagedStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistKeepLocalManagedStatusSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistKeepLocalManagedStatusReasonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistKeepLocalManagedStatusReason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistKeepLocalManagedStatusReasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistIsOwnerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistIsOwner");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistIsOwnerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistIsCollaborativeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistIsCollaborative");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistIsCollaborativeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistCuratorPlaylistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistCuratorPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistCuratorPlaylistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistPublicPlaylistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistPublicPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistPublicPlaylistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistVisiblePlaylistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistVisiblePlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistVisiblePlaylistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistSubscribedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistSubscribed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistSubscribedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistUserEditableComponentsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistUserEditableComponents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistUserEditableComponentsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistShareURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistShareURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistShareURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistDescriptionTextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistDescriptionText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistDescriptionTextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistCloudVersionHashSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistCloudVersionHash");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistCloudVersionHashSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistTraitsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistTraits");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistTraitsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistCollaborationInvitationURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistCollaborationInvitationURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistCollaborationInvitationURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistCollaborationInvitationURLExpirationDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistCollaborationInvitationURLExpirationDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistCollaborationInvitationURLExpirationDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistCollaboratorStatusSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistCollaboratorStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistCollaboratorStatusSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistCollaborationSharingModeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistCollaborationSharingMode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistCollaborationSharingModeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistEditSessionIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistEditSessionID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistEditSessionIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistParentPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistParentPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistParentPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistDownloadedTrackCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistDownloadedTrackCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistDownloadedTrackCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistIsDislikedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistIsDisliked");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistIsDislikedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipPlaylistCuratorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipPlaylistCurator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipPlaylistCuratorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistAuthorIsPendingApprovalSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistAuthorIsPendingApproval");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistAuthorIsPendingApprovalSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistAuthorRoleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistAuthorRole");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistAuthorRoleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipPlaylistAuthorSocialProfileSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipPlaylistAuthorSocialProfile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipPlaylistAuthorSocialProfileSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistEntryPositionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistEntryPosition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistEntryPositionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistEntryUniversalIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistEntryUniversalIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistEntryUniversalIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistEntryPositionUniversalIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistEntryPositionUniversalIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistEntryPositionUniversalIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipPlaylistEntrySongSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipPlaylistEntrySong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipPlaylistEntrySongSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipPlaylistEntryMovieSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipPlaylistEntryMovie");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipPlaylistEntryMovieSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipPlaylistEntryTVEpisodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipPlaylistEntryTVEpisode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipPlaylistEntryTVEpisodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipPlaylistEntrySocialContributorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipPlaylistEntrySocialContributor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipPlaylistEntrySocialContributorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistEntryReactionTextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistEntryReactionText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistEntryReactionTextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistEntryReactionDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaylistEntryReactionDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistEntryReactionDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipPlaylistEntryReactionSocialProfileSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipPlaylistEntryReactionSocialProfile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipPlaylistEntryReactionSocialProfileSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaybackPositionBookmarkTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaybackPositionBookmarkTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaybackPositionBookmarkTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaybackPositionShouldRememberBookmarkTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaybackPositionShouldRememberBookmarkTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaybackPositionShouldRememberBookmarkTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaybackPositionHasBeenPlayedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaybackPositionHasBeenPlayed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaybackPositionHasBeenPlayedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaybackPositionUserPlayCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaybackPositionUserPlayCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaybackPositionUserPlayCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaybackPositionStartTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaybackPositionStartTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaybackPositionStartTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaybackPositionStopTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyPlaybackPositionStopTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaybackPositionStopTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyRadioStationNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyRadioStationName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyRadioStationNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyRadioStationAttributionLabelSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyRadioStationAttributionLabel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyRadioStationAttributionLabelSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyRadioStationTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyRadioStationType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyRadioStationTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyRadioStationSubtypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyRadioStationSubtype");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyRadioStationSubtypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyRadioStationProviderUniversalLinkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyRadioStationProviderUniversalLink");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyRadioStationProviderUniversalLinkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyRadioStationProviderBundleIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyRadioStationProviderBundleIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyRadioStationProviderBundleIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyRadioStationProviderIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyRadioStationProviderID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyRadioStationProviderIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyRadioStationArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyRadioStationArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyRadioStationArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongArtistUploadedContentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongArtistUploadedContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongArtistUploadedContentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongCloudStatusSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongCloudStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongCloudStatusSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongDurationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongDuration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongDurationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongExplicitSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongExplicit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongExplicitSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongHasVideoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongHasVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongHasVideoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongIsFavoriteSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongIsFavorite");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongIsFavoriteSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongDateFavoritedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongDateFavorited");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongDateFavoritedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongKeepLocalEnableStateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongKeepLocalEnableState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongKeepLocalEnableStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongKeepLocalManagedStatusSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongKeepLocalManagedStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongKeepLocalManagedStatusSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongKeepLocalManagedStatusReasonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongKeepLocalManagedStatusReason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongKeepLocalManagedStatusReasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongLibraryAddedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongLibraryAdded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongLibraryAddedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongLibraryAddEligibleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongLibraryAddEligible");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongLibraryAddEligibleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongShouldShowComposerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongShouldShowComposer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongShouldShowComposerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongTrackNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongTrackNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongTrackNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongTraitsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongTraits");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongTraitsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongUserRatingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongUserRating");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongUserRatingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongIsDislikedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongIsDisliked");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongIsDislikedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipSongLocalFileAssetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipSongLocalFileAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipSongLocalFileAssetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipSongStoreAssetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipSongStoreAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipSongStoreAssetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyStoreAssetRedownloadableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyStoreAssetRedownloadable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyStoreAssetRedownloadableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyStoreAssetSubscriptionRequiredSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyStoreAssetSubscriptionRequired");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyStoreAssetSubscriptionRequiredSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyStoreAssetNeedsUserUploadSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyStoreAssetNeedsUserUpload");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyStoreAssetNeedsUserUploadSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyStoreAssetEndpointTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyStoreAssetEndpointType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyStoreAssetEndpointTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipSongHomeSharingAssetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipSongHomeSharingAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipSongHomeSharingAssetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyHomeSharingAssetAvailableSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyHomeSharingAssetAvailable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyHomeSharingAssetAvailableSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipSongArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipSongArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipSongArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySocialPersonArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySocialPersonArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySocialPersonArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySocialPersonHandleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySocialPersonHandle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySocialPersonHandleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySocialPersonHasLightweightProfileSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySocialPersonHasLightweightProfile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySocialPersonHasLightweightProfileSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySocialPersonIsPrivateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySocialPersonIsPrivate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySocialPersonIsPrivateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySocialPersonIsVerifiedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySocialPersonIsVerified");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySocialPersonIsVerifiedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySocialPersonNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySocialPersonName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySocialPersonNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongDiscNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongDiscNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongDiscNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongGroupingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongGrouping");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongGroupingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongCopyrightTextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongCopyrightText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongCopyrightTextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongVolumeNormalizationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongVolumeNormalization");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongVolumeNormalizationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongIsPinnedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongIsPinned");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongIsPinnedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongDateReleasedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongDateReleased");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongDateReleasedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongLastDevicePlaybackDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongLastDevicePlaybackDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongLastDevicePlaybackDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongLibraryAddedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongLibraryAddedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongLibraryAddedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongPlayCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongPlayCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongPlayCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongClassicalMovementSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongClassicalMovement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongClassicalMovementSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongClassicalMovementCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongClassicalMovementCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongClassicalMovementCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongClassicalMovementNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongClassicalMovementNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongClassicalMovementNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongClassicalWorkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongClassicalWork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongClassicalWorkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongHasCloudSyncSourceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongHasCloudSyncSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongHasCloudSyncSourceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongYearSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongYear");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongYearSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongGaplessInfoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongGaplessInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongGaplessInfoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongVolumeAdjustmentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongVolumeAdjustment");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongVolumeAdjustmentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongSupportsExtendedLyricsAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongSupportsExtendedLyricsAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongSupportsExtendedLyricsAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertySongImmersiveDeeplinkURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertySongImmersiveDeeplinkURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertySongImmersiveDeeplinkURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipSongAlbumSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipSongAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipSongAlbumSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipSongComposerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipSongComposer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipSongComposerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipSongLyricsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipSongLyrics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipSongLyricsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeDurationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeDuration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeDurationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeTypeDisplayNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeTypeDisplayName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeTypeDisplayNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeDownloadedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeDownloadedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeDownloadedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeExplicitRatingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeExplicitRating");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeExplicitRatingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeHasCloudSyncSourceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeHasCloudSyncSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeHasCloudSyncSourceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeLibraryAddedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeLibraryAdded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeLibraryAddedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeLibraryAddEligibleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeLibraryAddEligible");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeLibraryAddEligibleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeMusicShowSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeMusicShow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeMusicShowSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeKeepLocalEnableStateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeKeepLocalEnableState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeKeepLocalEnableStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeKeepLocalManagedStatusSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeKeepLocalManagedStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeKeepLocalManagedStatusSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeKeepLocalManagedStatusReasonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeKeepLocalManagedStatusReason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeKeepLocalManagedStatusReasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeLastDevicePlaybackDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeLastDevicePlaybackDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeLastDevicePlaybackDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeLibraryAddedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeLibraryAddedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeLibraryAddedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeReleaseDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeReleaseDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeReleaseDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeDescriptionTextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeDescriptionText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeDescriptionTextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVEpisodeTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVEpisodeType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVEpisodeTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipTVEpisodePlaybackPositionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipTVEpisodePlaybackPosition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipTVEpisodePlaybackPositionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipTVEpisodeStoreAssetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipTVEpisodeStoreAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipTVEpisodeStoreAssetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipTVEpisodeLocalFileAssetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipTVEpisodeLocalFileAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipTVEpisodeLocalFileAssetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipTVEpisodeSeasonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipTVEpisodeSeason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipTVEpisodeSeasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVSeasonNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVSeasonNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVSeasonNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipTVEpisodeShowSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipTVEpisodeShow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipTVEpisodeShowSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVShowTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVShowTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVShowTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVSeasonArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVSeasonArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVSeasonArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVSeasonDownloadedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVSeasonEpisodesCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVSeasonEpisodesCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVSeasonEpisodesCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVSeasonHasCleanContentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVSeasonHasCleanContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVSeasonHasCleanContentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVSeasonHasExplicitContentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVSeasonHasExplicitContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVSeasonHasExplicitContentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVSeasonLibraryAddedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVSeasonLibraryAdded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVSeasonLibraryAddedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVSeasonLibraryAddEligibleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVSeasonLibraryAddEligible");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVSeasonLibraryAddEligibleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVSeasonLibraryAddedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVSeasonSortTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVSeasonSortType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVSeasonSortTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVSeasonDescriptionTextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVSeasonDescriptionText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVSeasonDescriptionTextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVSeasonYearSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVSeasonYear");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVSeasonYearSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipTVSeasonShowSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelRelationshipTVSeasonShow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipTVSeasonShowSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVShowArtworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVShowArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVShowArtworkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyTVShowEpisodeCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_6();
  result = dlsym(v2, "MPModelPropertyTVShowEpisodeCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyTVShowEpisodeCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21724E814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaPropertyPredicateClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaPropertyPredicateClass_softClass;
  v7 = getMPMediaPropertyPredicateClass_softClass;
  if (!getMPMediaPropertyPredicateClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaPropertyPredicateClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPMediaPropertyPredicateClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21724E918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPMediaItemPropertyFileSize()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaItemPropertyFileSizeSymbolLoc_ptr;
  v8 = getMPMediaItemPropertyFileSizeSymbolLoc_ptr;
  if (!getMPMediaItemPropertyFileSizeSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_7();
    v6[3] = dlsym(v1, "MPMediaItemPropertyFileSize");
    getMPMediaItemPropertyFileSizeSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMediaLibraryAvailableMediaLibrariesDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMediaLibraryAvailableMediaLibrariesDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPMediaLibraryAvailableMediaLibrariesDidChangeNotificationSymbolLoc_ptr;
  if (!getMPMediaLibraryAvailableMediaLibrariesDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_7();
    v6[3] = dlsym(v1, "MPMediaLibraryAvailableMediaLibrariesDidChangeNotification");
    getMPMediaLibraryAvailableMediaLibrariesDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_14(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_14 = result;
  return result;
}

void *__getMPMediaLibraryDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_7();
  result = dlsym(v2, "MPMediaLibraryDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaLibraryDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaLibraryDynamicPropertiesDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_7();
  result = dlsym(v2, "MPMediaLibraryDynamicPropertiesDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaLibraryDynamicPropertiesDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaLibraryConnectionProgressDidChangeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_7();
  result = dlsym(v2, "MPMediaLibraryConnectionProgressDidChange");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaLibraryConnectionProgressDidChangeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaLibraryStatusDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_7();
  result = dlsym(v2, "MPMediaLibraryStatusDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaLibraryStatusDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelAlbumKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_7();
  result = objc_getClass("MPModelAlbumKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelAlbumKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelAlbumKindClass_block_invoke_cold_1();
    return __getMPMediaPropertyPredicateClass_block_invoke(v3);
  }

  return result;
}

Class __getMPMediaPropertyPredicateClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_7();
  result = objc_getClass("MPMediaPropertyPredicate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPropertyPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMediaPropertyPredicateClass_block_invoke_cold_1();
    return __getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_7();
  result = dlsym(v2, "MPMediaItemPropertyAlbumPersistentID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPMediaQueryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_7();
  result = objc_getClass("MPMediaQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMediaQueryClass_block_invoke_cold_1();
    return __getMPModelPlaylistKindClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelPlaylistKindClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_7();
  result = objc_getClass("MPModelPlaylistKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistKindClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistKindClass_block_invoke_cold_1_0();
    return __getMPMediaCompoundAllPredicateClass_block_invoke(v3);
  }

  return result;
}

Class __getMPMediaCompoundAllPredicateClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_7();
  result = objc_getClass("MPMediaCompoundAllPredicate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaCompoundAllPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPMediaCompoundAllPredicateClass_block_invoke_cold_1();
    return __getMPMediaEntityPropertyKeepLocalSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPMediaEntityPropertyKeepLocalSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_7();
  result = dlsym(v2, "MPMediaEntityPropertyKeepLocal");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaEntityPropertyKeepLocalSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaEntityPropertyKeepLocalStatusSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_7();
  result = dlsym(v2, "MPMediaEntityPropertyKeepLocalStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaEntityPropertyKeepLocalStatusSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaQueryAggregateFunctionTotalSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_7();
  result = dlsym(v2, "MPMediaQueryAggregateFunctionTotal");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaQueryAggregateFunctionTotalSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyFileSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_7();
  result = dlsym(v2, "MPMediaItemPropertyFileSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyFileSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaItemPropertyRatingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_7();
  result = dlsym(v2, "MPMediaItemPropertyRating");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyRatingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMediaLibraryAvailableMediaLibrariesDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_7();
  result = dlsym(v2, "MPMediaLibraryAvailableMediaLibrariesDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaLibraryAvailableMediaLibrariesDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPSectionedCollectionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_15)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_15;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278229F38;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_15 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_15)
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
  result = objc_getClass("MPSectionedCollection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPSectionedCollectionClass_block_invoke_cold_1();
  }

  getMPSectionedCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_15(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_15 = result;
  return result;
}

void sub_21725073C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPPlaybackUserDefaultsPreferredResolutionsDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPPlaybackUserDefaultsPreferredResolutionsDidChangeNotificationSymbolLoc_ptr;
  if (!getMPPlaybackUserDefaultsPreferredResolutionsDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_8();
    v6[3] = dlsym(v1, "MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification");
    getMPPlaybackUserDefaultsPreferredResolutionsDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

Class __getMPPlaybackUserDefaultsClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_8();
  result = objc_getClass("MPPlaybackUserDefaults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPPlaybackUserDefaultsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPPlaybackUserDefaultsClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_16(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_16(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_16 = result;
  return result;
}

void *__getMPPlaybackUserDefaultsPreferredResolutionsDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_8();
  result = dlsym(v2, "MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPPlaybackUserDefaultsPreferredResolutionsDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPMutableSectionedCollectionClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_17)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_17;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278229F88;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_17 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_17)
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
  result = objc_getClass("MPMutableSectionedCollection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPMutableSectionedCollectionClass_block_invoke_cold_1_0();
  }

  getMPMutableSectionedCollectionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_17(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_17 = result;
  return result;
}

id getMPMusicPlayerControllerNowPlayingItemDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMusicPlayerControllerNowPlayingItemDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPMusicPlayerControllerNowPlayingItemDidChangeNotificationSymbolLoc_ptr;
  if (!getMPMusicPlayerControllerNowPlayingItemDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_9();
    v6[3] = dlsym(v1, "MPMusicPlayerControllerNowPlayingItemDidChangeNotification");
    getMPMusicPlayerControllerNowPlayingItemDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getMPMusicPlayerControllerPlaybackStateDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMPMusicPlayerControllerPlaybackStateDidChangeNotificationSymbolLoc_ptr;
  v8 = getMPMusicPlayerControllerPlaybackStateDidChangeNotificationSymbolLoc_ptr;
  if (!getMPMusicPlayerControllerPlaybackStateDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_9();
    v6[3] = dlsym(v1, "MPMusicPlayerControllerPlaybackStateDidChangeNotification");
    getMPMusicPlayerControllerPlaybackStateDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id get_MPMusicPlayerControllerQueueDidChangeNotification()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = get_MPMusicPlayerControllerQueueDidChangeNotificationSymbolLoc_ptr;
  v8 = get_MPMusicPlayerControllerQueueDidChangeNotificationSymbolLoc_ptr;
  if (!get_MPMusicPlayerControllerQueueDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = MediaPlayerLibrary_9();
    v6[3] = dlsym(v1, "_MPMusicPlayerControllerQueueDidChangeNotification");
    get_MPMusicPlayerControllerQueueDidChangeNotificationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

Class __getMPMusicPlayerSystemControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_9();
  result = objc_getClass("MPMusicPlayerSystemController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMusicPlayerSystemControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMusicPlayerSystemControllerClass_block_invoke_cold_1();
    return __MediaPlayerLibraryCore_block_invoke_18(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_18(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_18 = result;
  return result;
}

Class __getMPMusicPlayerApplicationControllerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_9();
  result = objc_getClass("MPMusicPlayerApplicationController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMusicPlayerApplicationControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPMusicPlayerApplicationControllerClass_block_invoke_cold_1();
    return __get_MPMusicPlayerControllerClientIdentifierMusicKitApplicationPlayerSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMPMusicPlayerControllerNowPlayingItemDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_9();
  result = dlsym(v2, "MPMusicPlayerControllerNowPlayingItemDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMusicPlayerControllerNowPlayingItemDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPMusicPlayerControllerPlaybackStateDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaPlayerLibrary_9();
  result = dlsym(v2, "MPMusicPlayerControllerPlaybackStateDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMusicPlayerControllerPlaybackStateDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2172527C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPStoreArtworkRequestTokenClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_19)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_19;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27822A000;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_19 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_19)
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
  result = objc_getClass("MPStoreArtworkRequestToken");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPStoreArtworkRequestTokenClass_block_invoke_cold_1();
  }

  getMPStoreArtworkRequestTokenClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_19(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_19 = result;
  return result;
}

id getMPModelPlaylistKindClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelPlaylistKindClass_softClass_1;
  v7 = getMPModelPlaylistKindClass_softClass_1;
  if (!getMPModelPlaylistKindClass_softClass_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelPlaylistKindClass_block_invoke_1;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelPlaylistKindClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217252B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelArtistClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelArtistClass_softClass_0;
  v7 = getMPModelArtistClass_softClass_0;
  if (!getMPModelArtistClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelArtistClass_block_invoke_0;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelArtistClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217252F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217253080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217253168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217253250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217253338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2172535BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2172536A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21725378C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2172538E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2172539C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217253DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217253EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217253FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2172540C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217254208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217254720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPModelSongKindClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPModelSongKindClass_softClass;
  v7 = getMPModelSongKindClass_softClass;
  if (!getMPModelSongKindClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPModelSongKindClass_block_invoke;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPModelSongKindClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21725487C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2172550F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPModelPlaylistKindClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelPlaylistKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistKindClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistKindClass_block_invoke_cold_1_0();
    return __MediaPlayerLibraryCore_block_invoke_20(v3);
  }

  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_20(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_20 = result;
  return result;
}

Class __getMPModelArtistClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelArtistClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelArtistClass_block_invoke_cold_1_0();
    return __getMPModelComposerClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelComposerClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelComposer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelComposerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelComposerClass_block_invoke_cold_1_0();
    return __getMPModelCreditsArtistClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelCreditsArtistClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelCreditsArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelCreditsArtistClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelCreditsArtistClass_block_invoke_cold_1_0();
    return __getMPModelCuratorActualKindClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelCuratorActualKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelCuratorActualKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelCuratorActualKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelCuratorActualKindClass_block_invoke_cold_1();
    return __getMPModelFileAssetClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelFileAssetClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelFileAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelFileAssetClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelFileAssetClass_block_invoke_cold_1_0();
    return __getMPModelRelationshipGenericAlbumSymbolLoc_block_invoke_1(v3);
  }

  return result;
}

void *__getMPModelRelationshipGenericAlbumSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = MediaPlayerLibrary_10();
  result = dlsym(v2, "MPModelRelationshipGenericAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericAlbumSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericMovieSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = MediaPlayerLibrary_10();
  result = dlsym(v2, "MPModelRelationshipGenericMovie");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericMovieSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericPlaylistSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = MediaPlayerLibrary_10();
  result = dlsym(v2, "MPModelRelationshipGenericPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericPlaylistSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelRelationshipGenericTVSeasonSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_10();
  result = dlsym(v2, "MPModelRelationshipGenericTVSeason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelRelationshipGenericTVSeasonSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelGenreClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelGenre");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelGenreClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelGenreClass_block_invoke_cold_1_0();
    return __getMPModelLyricsClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelLyricsClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelLyrics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLyricsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLyricsClass_block_invoke_cold_1_0();
    return __getMPModelLibraryPinKindClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelLibraryPinKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelLibraryPinKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelLibraryPinKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelLibraryPinKindClass_block_invoke_cold_1();
    return __getMPModelPlaylistAuthorKindClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelPlaylistAuthorKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelPlaylistAuthorKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistAuthorKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistAuthorKindClass_block_invoke_cold_1();
    return __getMPModelPlaylistEntryReactionKindClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelPlaylistEntryReactionKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelPlaylistEntryReactionKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistEntryReactionKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistEntryReactionKindClass_block_invoke_cold_1();
    return __getMPModelRadioStationKindClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelRadioStationKindClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelRadioStationKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelRadioStationKindClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelRadioStationKindClass_block_invoke_cold_1_0();
    return __getMPModelRecordLabelKindClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelRecordLabelKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelRecordLabelKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelRecordLabelKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelRecordLabelKindClass_block_invoke_cold_1();
    return __getMPModelSocialPersonClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelSocialPersonClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelSocialPerson");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSocialPersonClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelSocialPersonClass_block_invoke_cold_1_0();
    return __getMPModelTVShowClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelTVShowClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelTVShow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelTVShowClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelTVShowClass_block_invoke_cold_1_0();
    return __getMPModelCuratorClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelCuratorClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelCurator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelCuratorClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelCuratorClass_block_invoke_cold_1_0();
    return __getMPModelSongKindClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelSongKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelSongKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelSongKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelSongKindClass_block_invoke_cold_1();
    return __getMPModelAlbumKindClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMPModelAlbumKindClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelAlbumKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelAlbumKindClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelAlbumKindClass_block_invoke_cold_1_0();
    return __getMPModelPlaylistEntryKindClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelPlaylistEntryKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelPlaylistEntryKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistEntryKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistEntryKindClass_block_invoke_cold_1();
    return __getMPModelGenericObjectKindClass_block_invoke(v3);
  }

  return result;
}

Class __getMPModelGenericObjectKindClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelGenericObjectKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelGenericObjectKindClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelGenericObjectKindClass_block_invoke_cold_1();
    return __getMPModelPlaylistAuthorClass_block_invoke_0(v3);
  }

  return result;
}

MusicKit_SoftLinking_DeviceLocalID *__getMPModelPlaylistAuthorClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_10();
  result = objc_getClass("MPModelPlaylistAuthor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelPlaylistAuthorClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelPlaylistAuthorClass_block_invoke_cold_1_0();
    return [(MusicKit_SoftLinking_DeviceLocalID *)v3 initWithValue:v4 databaseID:v5, v6];
  }

  return result;
}

void sub_217256130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPStoreLibraryPersonalizationContentDescriptorClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_21)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_21;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27822A070;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_21 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_21)
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
  result = objc_getClass("MPStoreLibraryPersonalizationContentDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPStoreLibraryPersonalizationContentDescriptorClass_block_invoke_cold_1();
  }

  getMPStoreLibraryPersonalizationContentDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_21(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_21 = result;
  return result;
}

void sub_217256400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMPArtworkCatalogClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPArtworkCatalogClass_softClass_0;
  v7 = getMPArtworkCatalogClass_softClass_0;
  if (!getMPArtworkCatalogClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPArtworkCatalogClass_block_invoke_0;
    v3[3] = &unk_278229610;
    v3[4] = &v4;
    __getMPArtworkCatalogClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_217256680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217256968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217257074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPArtworkColorAnalysisClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPArtworkColorAnalysis");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPArtworkColorAnalysisClass_block_invoke_cold_1();
  }

  getMPArtworkColorAnalysisClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_22(uint64_t a1)
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_22 = result;
  return result;
}

Class __getMPArtworkCatalogClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPArtworkCatalog");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPArtworkCatalogClass_block_invoke_cold_1_0();
  }

  getMPArtworkCatalogClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPStoreArtworkRequestTokenClass_block_invoke_0(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPStoreArtworkRequestToken");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPStoreArtworkRequestTokenClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMPStoreArtworkRequestTokenClass_block_invoke_cold_1();
    return __getUIImagePNGRepresentationSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getUIImagePNGRepresentationSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __UIKitLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27822A0F0;
    v7 = 0;
    UIKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v5[0];
    v2 = UIKitLibraryCore_frameworkLibrary_0;
    if (UIKitLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = UIKitLibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "UIImagePNGRepresentation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIImagePNGRepresentationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getMPStoreArtworkDataSourceClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPStoreArtworkDataSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPStoreArtworkDataSourceClass_block_invoke_cold_1();
  }

  getMPStoreArtworkDataSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMPModelObjectClass_block_invoke_2(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPModelObject");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPModelObjectClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMPModelObjectClass_block_invoke_cold_1();
    return __getMPModelStoreBrowseContentItemClass_block_invoke_1(v3);
  }

  return result;
}

Class __getMPModelStoreBrowseContentItemClass_block_invoke_1(uint64_t a1)
{
  MediaPlayerLibrary_11();
  result = objc_getClass("MPModelStoreBrowseContentItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMPModelStoreBrowseContentItemClass_block_invoke_cold_1_1();
  }

  getMPModelStoreBrowseContentItemClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MediaPlayerLibrary_11();
  result = dlsym(v2, "MPModelPropertyPlaylistTracksTiledArtwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getUISColorLuminanceSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!UIKitServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __UIKitServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27822A108;
    v7 = 0;
    UIKitServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = UIKitServicesLibraryCore_frameworkLibrary;
    if (UIKitServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = UIKitServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "UISColorLuminance");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUISColorLuminanceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}