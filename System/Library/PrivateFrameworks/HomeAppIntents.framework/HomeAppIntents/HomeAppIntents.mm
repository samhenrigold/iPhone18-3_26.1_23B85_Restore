uint64_t sub_2527128C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2528C0690();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_252712934(uint64_t a1, uint64_t a2)
{
  v4 = sub_2528C0690();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void *sub_252712A6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_OWORD *sub_252712E3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_252712EB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

void *sub_252713420@<X0>(void *a1@<X8>)
{
  result = sub_2528BE6B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_252713498@<X0>(void *a1@<X8>)
{
  type metadata accessor for SceneEntity(0);
  result = sub_2528BE6B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_2527134F0@<X0>(void *a1@<X8>)
{
  type metadata accessor for SceneEntity(0);
  result = sub_2528BE6B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252713568(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2528BECF0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_252713614(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2528BECF0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2527136BC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for HomeEntity(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_2528BECF0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2527137F0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for HomeEntity(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_2528BECF0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25271392C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE6D0();
  *a1 = result;
  return result;
}

uint64_t sub_252713958@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SceneEntity(0);
  result = sub_2528BE6D0();
  *a1 = result;
  return result;
}

uint64_t sub_25271399C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SceneEntity(0);
  result = sub_2528BE6D0();
  *a1 = result;
  return result;
}

uint64_t sub_252713AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2528BECF0();
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

uint64_t sub_252713BAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2528BECF0();
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

uint64_t sub_252713C64@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CameraClipEntity(0);
  result = sub_2528BE6D0();
  *a1 = result;
  return result;
}

uint64_t sub_252713CA8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CameraClipEntity(0);
  result = sub_2528BE6D0();
  *a1 = result;
  return result;
}

uint64_t sub_252713D88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252713E1C()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252713F10()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 35) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 48, v3 | 7);
}

uint64_t sub_252714028()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2527140C0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_2528C00D0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252714210()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 73) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_25272C15C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 48, v3 | 7);
}

uint64_t sub_25271433C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2527143D0()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2527144CC()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 35) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 56, v3 | 7);
}

uint64_t sub_25271461C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEE0, &qword_2528C6A78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2527146B0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_25271471C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2527147B0()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2527148B4()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252714A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2528BECF0();
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

uint64_t sub_252714B08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2528BECF0();
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

uint64_t sub_252714BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2528BF400();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_252714CBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2528BF400();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_252714E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2528BECF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 4)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_252714F10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2528BECF0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

uint64_t sub_2527153CC()
{
  v1 = sub_2528BECF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_2528C05D0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_252715898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2528BECF0();
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

uint64_t sub_252715954(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2528BECF0();
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

uint64_t sub_252715A0C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ZoneEntity(0);
  result = sub_2528BE6D0();
  *a1 = result;
  return result;
}

uint64_t sub_252715A50@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ZoneEntity(0);
  result = sub_2528BE6D0();
  *a1 = result;
  return result;
}

void *sub_252715A94@<X0>(void *a1@<X8>)
{
  type metadata accessor for ZoneEntity(0);
  result = sub_2528BE6B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_252715AEC@<X0>(void *a1@<X8>)
{
  type metadata accessor for ZoneEntity(0);
  result = sub_2528BE6B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252715B8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD858, &qword_2528C8FB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252715C20()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_252715D0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD948, &qword_2528C94A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252715DB8()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2527160B4()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_2528BE890();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

void *sub_252716278@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

uint64_t sub_252716324()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252716378@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F4FE868;
  return result;
}

uint64_t sub_2527163C4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F4FE868 = v1;
  return result;
}

uint64_t sub_25271655C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_2528BFDD0();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_252716608(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_2528BFDD0();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25271681C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2527F9FE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252716858(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_252716914(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2527169EC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_2527FDEA8(v13, v14) & 1;
}

void *sub_252716B68@<X0>(void *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

void *sub_252716BE0@<X0>(void *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

void *sub_252716C58@<X0>(void *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

void *sub_252716CD0@<X0>(void *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

void *sub_252716D48@<X0>(void *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

void *sub_252716DC0@<X0>(void *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

void *sub_252716E38@<X0>(void *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

uint64_t sub_252716F6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

uint64_t sub_252716F98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

uint64_t sub_252716FC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

uint64_t sub_252716FF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

uint64_t sub_252717024@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

uint64_t sub_252717050@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

uint64_t sub_252717080@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

uint64_t sub_2527170AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

uint64_t sub_2527170D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

uint64_t sub_25271751C()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_2528BE890();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

void *sub_2527176D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

void *sub_252717718@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

void *sub_252717758@<X0>(void *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

void *sub_252717798@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

uint64_t sub_252717870@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

uint64_t sub_25271789C()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_2528BE890();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

void *sub_252717A58@<X0>(void *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_252717A98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

uint64_t sub_252717D3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

uint64_t sub_252717D68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

uint64_t sub_252717D94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

uint64_t sub_252717DC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

uint64_t sub_252717DEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

uint64_t sub_252717E18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE7B0();
  *a1 = result;
  return result;
}

void *sub_252717EDC@<X0>(void *a1@<X8>)
{
  result = sub_2528BE6B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252717F54(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2528BECF0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_252718000(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2528BECF0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2527180F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE6D0();
  *a1 = result;
  return result;
}

uint64_t sub_252718120@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE6D0();
  *a1 = result;
  return result;
}

uint64_t sub_25271814C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE6D0();
  *a1 = result;
  return result;
}

uint64_t sub_252718178@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE6D0();
  *a1 = result;
  return result;
}

uint64_t sub_2527181A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE6D0();
  *a1 = result;
  return result;
}

uint64_t sub_2527181D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2528BE6D0();
  *a1 = result;
  return result;
}

void *sub_2527181FC@<X0>(void *a1@<X8>)
{
  result = sub_2528BE6B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_252718274@<X0>(void *a1@<X8>)
{
  result = sub_2528BE6B0();
  *a1 = v3;
  return result;
}

void *sub_252718300@<X0>(void *a1@<X8>)
{
  result = sub_2528BE6B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_252718378@<X0>(_WORD *a1@<X8>)
{
  result = sub_2528BE6B0();
  *a1 = v3;
  return result;
}

uint64_t sub_2527183EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252800748();
  *a1 = result;
  return result;
}

void *sub_252718428@<X0>(void *a1@<X8>)
{
  result = sub_2528BE6B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_2527184B8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25278D824(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_252718504()
{
  v1 = sub_2528BECF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2527185D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_252718618()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252718650()
{
  v1 = sub_2528BFB20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_252718840()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_2528BE890();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

void *sub_252718A0C@<X0>(void *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

void *sub_252718A84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

void *sub_252718AF8@<X0>(void *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

void *sub_252718B70@<X0>(void *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

void *sub_252718BE8@<X0>(void *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

void *sub_252718C60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

void *sub_252718CD4@<X0>(void *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

void *sub_252718D4C@<X0>(void *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

void *sub_252718DC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2528BE790();
  *a1 = v3;
  return result;
}

uint64_t sub_252718E38(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_252718EF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25271966C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFE78, &qword_2528D52B8);
  sub_2528BEC20();
  sub_2527D262C();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_252719720@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD90, &qword_2528D5290);
  sub_2528BEC20();
  sub_2527D0DA8();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_2527197D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD70, &qword_2528D5288);
  sub_2528BEC20();
  sub_2527D094C();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_252719880@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD58, &qword_2528D5280);
  sub_2528BEC20();
  sub_2527D1D74();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_252719930@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FFD30, &unk_2528D5270);
  sub_2528BEC20();
  sub_2527D21D0();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_252719AFC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252719E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2528BECF0();
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

uint64_t sub_252719F58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2528BECF0();
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

uint64_t sub_25271A010()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for HomeEntity(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_2528BECF0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25271A14C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RoomEntity(0);
  result = sub_2528BE6D0();
  *a1 = result;
  return result;
}

uint64_t sub_25271A190@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RoomEntity(0);
  result = sub_2528BE6D0();
  *a1 = result;
  return result;
}

uint64_t sub_25271A1D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RoomEntity(0);
  result = sub_2528BE6D0();
  *a1 = result;
  return result;
}

void *sub_25271A218@<X0>(void *a1@<X8>)
{
  type metadata accessor for RoomEntity(0);
  result = sub_2528BE6B0();
  *a1 = v3;
  return result;
}

void *sub_25271A28C@<X0>(void *a1@<X8>)
{
  type metadata accessor for RoomEntity(0);
  result = sub_2528BE6B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_25271A2E4@<X0>(void *a1@<X8>)
{
  type metadata accessor for RoomEntity(0);
  result = sub_2528BE6B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_25271A390()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25271A4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2528BECF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 8)
    {
      return v10 - 7;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25271A574(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2528BECF0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 7;
  }

  return result;
}

uint64_t sub_25271A63C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_25271A650(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25271A668(uint64_t a1, uint64_t a2)
{
  v3 = *v2;

  return v3;
}

uint64_t sub_25271A6D8()
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDC0, &qword_2528C23E8);
  v1 = MEMORY[0x28223BE20](v29);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - v4;
  v6 = sub_2528BEB10();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528BEC90();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TriggerEventType(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25271FF44(v0, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *v15;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDF8, &qword_2528C95D0);
      sub_25271FFFC(&v15[*(v18 + 48)], v5);
      v31[0] = 0;
      v31[1] = 0xE000000000000000;
      sub_2528C0E70();

      v31[0] = 0xD000000000000010;
      v31[1] = 0x80000002528E53C0;
      if (v17)
      {
        v19 = 0x7465736E7573;
      }

      else
      {
        v19 = 0x657369726E7573;
      }

      if (v17)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE700000000000000;
      }

      MEMORY[0x2530A80B0](v19, v20);

      MEMORY[0x2530A80B0](8236, 0xE200000000000000);
      sub_25272006C(v5, v3, &qword_27F4FBDC0, &qword_2528C23E8);
      v21 = sub_2528C0A10();
      MEMORY[0x2530A80B0](v21);

      MEMORY[0x2530A80B0](41, 0xE100000000000000);
      v22 = v31[0];
      sub_2527213D8(v5, &qword_27F4FBDC0, &qword_2528C23E8);
    }

    else
    {
      v25 = *v15;
      v31[0] = 0;
      v31[1] = 0xE000000000000000;
      sub_2528C0E70();

      v31[0] = 0xD000000000000014;
      v31[1] = 0x80000002528E53A0;
      if (v25)
      {
        v26 = 0x6F48657669727261;
      }

      else
      {
        v26 = 0x6D6F48657661656CLL;
      }

      if (v25)
      {
        v27 = 0xEA0000000000656DLL;
      }

      else
      {
        v27 = 0xE900000000000065;
      }

      MEMORY[0x2530A80B0](v26, v27);

      MEMORY[0x2530A80B0](41, 0xE100000000000000);
      return v31[0];
    }
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    sub_2528C0E70();

    strcpy(v31, "absoluteTime(");
    HIWORD(v31[1]) = -4864;
    sub_25271DA3C(&qword_27F4FBE80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v23 = sub_2528C1040();
    MEMORY[0x2530A80B0](v23);

    MEMORY[0x2530A80B0](0x203A656D6974202CLL, 0xE800000000000000);
    sub_25271AC24(v8);
    sub_25271DA3C(&qword_27F4FBE88, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
    v24 = sub_2528C1040();
    MEMORY[0x2530A80B0](v24);

    (*(v30 + 8))(v8, v6);
    MEMORY[0x2530A80B0](41, 0xE100000000000000);
    v22 = v31[0];
    (*(v10 + 8))(v12, v9);
  }

  return v22;
}

uint64_t sub_25271AC24@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = sub_2528BED20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2528BED60();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v4, *MEMORY[0x277CC9830], v1);
  sub_2528BED30();
  (*(v2 + 8))(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE90, &qword_2528C2580);
  v9 = sub_2528BED50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2528C17D0;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, *MEMORY[0x277CC9980], v9);
  v15(v14 + v11, *MEMORY[0x277CC99A0], v9);
  v15(v14 + 2 * v11, *MEMORY[0x277CC99A8], v9);
  sub_25274304C(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2528BED40();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25271AF10()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502758);
  __swift_project_value_buffer(v0, qword_27F502758);
  return sub_2528BE9D0();
}

uint64_t sub_25271AF74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBED8, &qword_2528C25A0);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBEE0, &qword_2528C25A8) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17E0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v5 = sub_25278C618(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F502770 = v5;
  return result;
}

void sub_25271B0D0(uint64_t *a1@<X8>)
{
  v2 = 0x657369726E7573;
  if (*v1)
  {
    v2 = 0x7465736E7573;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25271B10C()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_25271B18C(uint64_t a1)
{
  sub_2528C0A40();
}

uint64_t sub_25271B1F8(uint64_t a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_25271B274(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7465736E7573;
  }

  else
  {
    v3 = 0x657369726E7573;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x7465736E7573;
  }

  else
  {
    v5 = 0x657369726E7573;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
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
    v8 = sub_2528C1060();
  }

  return v8 & 1;
}

uint64_t sub_25271B34C(uint64_t a1)
{
  v2 = sub_25271C8F4();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_25271B3BC(uint64_t a1)
{
  v2 = sub_25271C888();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_25271B408()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502778);
  __swift_project_value_buffer(v0, qword_27F502778);
  return sub_2528BE9D0();
}

uint64_t sub_25271B46C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBEC8, &qword_2528C2590);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBED0, &qword_2528C2598) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17E0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v5 = sub_25278C800(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F502790 = v5;
  return result;
}

uint64_t sub_25271B5CC(uint64_t a1)
{
  v2 = sub_2528BEB10();
  v23 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v22 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDC0, &qword_2528C23E8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = sub_2528BEC90();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TriggerEventType(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25271FF44(v1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDF8, &qword_2528C95D0);
      sub_25271FFFC(&v16[*(v18 + 48)], v9);
      MEMORY[0x2530A87A0](1);
      sub_2528C0A40();

      sub_25272006C(v9, v7, &qword_27F4FBDC0, &qword_2528C23E8);
      v19 = v23;
      if ((*(v23 + 48))(v7, 1, v2) == 1)
      {
        sub_2528C1150();
      }

      else
      {
        v21 = v22;
        (*(v19 + 32))(v22, v7, v2);
        sub_2528C1150();
        sub_25271DA3C(&qword_27F4FBE58, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
        sub_2528C0910();
        (*(v19 + 8))(v21, v2);
      }

      return sub_2527213D8(v9, &qword_27F4FBDC0, &qword_2528C23E8);
    }

    else
    {
      MEMORY[0x2530A87A0](2);
      sub_2528C0A40();
    }
  }

  else
  {
    (*(v11 + 32))(v13, v16, v10);
    MEMORY[0x2530A87A0](0);
    sub_25271DA3C(&qword_27F4FBE60, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_2528C0910();
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_25271BA50@<X0>(char *a3@<X8>)
{
  v4 = sub_2528C0F30();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_25271BAAC(uint64_t *a1@<X8>)
{
  v2 = 0x6D6F48657661656CLL;
  if (*v1)
  {
    v2 = 0x6F48657669727261;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEA0000000000656DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25271BAF4()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_25271BB80(uint64_t a1)
{
  sub_2528C0A40();
}

uint64_t sub_25271BBF8(uint64_t a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_25271BC80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F48657669727261;
  }

  else
  {
    v3 = 0x6D6F48657661656CLL;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xEA0000000000656DLL;
  }

  if (*a2)
  {
    v5 = 0x6F48657669727261;
  }

  else
  {
    v5 = 0x6D6F48657661656CLL;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000656DLL;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2528C1060();
  }

  return v8 & 1;
}

uint64_t sub_25271BD64(uint64_t a1)
{
  v2 = sub_25271CD64();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_25271BDD4(uint64_t a1)
{
  v2 = sub_25271CCF8();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_25271BE20()
{
  sub_2528C1130();
  sub_25271B5CC(v1);
  return sub_2528C1180();
}

uint64_t sub_25271BE64(uint64_t a1)
{
  sub_2528C1130();
  sub_25271B5CC(v2);
  return sub_2528C1180();
}

uint64_t SceneType.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBBC0, &qword_2528C1800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_2528C0CD0();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1, v7) != 1)
  {
    sub_25272006C(a1, v6, &qword_27F4FBBC0, &qword_2528C1800);
    v10 = (*(v8 + 88))(v6, v7);
    if (v10 == *MEMORY[0x277D16EF0])
    {
      v9 = 0;
      goto LABEL_13;
    }

    if (v10 == *MEMORY[0x277D16F10])
    {
      v9 = 1;
      goto LABEL_13;
    }

    if (v10 == *MEMORY[0x277D16F38])
    {
      v9 = 2;
      goto LABEL_13;
    }

    if (v10 == *MEMORY[0x277D16F28])
    {
      v9 = 3;
      goto LABEL_13;
    }

    if (v10 == *MEMORY[0x277D16EF8])
    {
      v9 = 4;
      goto LABEL_13;
    }

    (*(v8 + 8))(v6, v7);
  }

  v9 = 5;
LABEL_13:
  result = sub_2527213D8(a1, &qword_27F4FBBC0, &qword_2528C1800);
  *a2 = v9;
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

uint64_t static SceneType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB580 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FB588);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25271C1D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBEE8, &qword_2528C25B0);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBEF0, &qword_2528C25B8) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C17F0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v5 = sub_25278C9E8(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FB5A8 = v5;
  return result;
}

uint64_t static SceneType.caseDisplayRepresentations.getter(uint64_t a1, uint64_t a2)
{
  if (qword_27F4FB5A0 != -1)
  {
    swift_once();
  }
}

uint64_t SceneType.description.getter()
{
  v1 = *v0;
  v2 = 0x69727241656D6F68;
  v3 = 0x7065656C73;
  v4 = 0x6966654472657375;
  if (v1 != 4)
  {
    v4 = 1701736302;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x61706544656D6F68;
  if (v1 != 1)
  {
    v5 = 0x7055656B6177;
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

HomeAppIntents::SceneType_optional __swiftcall SceneType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_25271C590()
{
  result = qword_27F4FBBC8;
  if (!qword_27F4FBBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBBC8);
  }

  return result;
}

unint64_t sub_25271C5E8()
{
  result = qword_27F4FBBD0;
  if (!qword_27F4FBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBBD0);
  }

  return result;
}

unint64_t sub_25271C640()
{
  result = qword_27F4FBBD8;
  if (!qword_27F4FBBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBBD8);
  }

  return result;
}

unint64_t sub_25271C698()
{
  result = qword_27F4FBBE0;
  if (!qword_27F4FBBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBBE0);
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

unint64_t sub_25271C788()
{
  result = qword_27F4FBBF8;
  if (!qword_27F4FBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBBF8);
  }

  return result;
}

unint64_t sub_25271C7DC()
{
  result = qword_27F4FBC00;
  if (!qword_27F4FBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC00);
  }

  return result;
}

unint64_t sub_25271C830()
{
  result = qword_27F4FBC08;
  if (!qword_27F4FBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC08);
  }

  return result;
}

unint64_t sub_25271C888()
{
  result = qword_27F4FBC10;
  if (!qword_27F4FBC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC10);
  }

  return result;
}

unint64_t sub_25271C8F4()
{
  result = qword_27F4FBC18;
  if (!qword_27F4FBC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC18);
  }

  return result;
}

unint64_t sub_25271C94C()
{
  result = qword_27F4FBC20;
  if (!qword_27F4FBC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC20);
  }

  return result;
}

unint64_t sub_25271C9A4()
{
  result = qword_27F4FBC28;
  if (!qword_27F4FBC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC28);
  }

  return result;
}

unint64_t sub_25271C9FC()
{
  result = qword_27F4FBC30;
  if (!qword_27F4FBC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC30);
  }

  return result;
}

unint64_t sub_25271CA54()
{
  result = qword_27F4FBC38;
  if (!qword_27F4FBC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC38);
  }

  return result;
}

unint64_t sub_25271CAAC()
{
  result = qword_27F4FBC40;
  if (!qword_27F4FBC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC40);
  }

  return result;
}

unint64_t sub_25271CB04()
{
  result = qword_27F4FBC48;
  if (!qword_27F4FBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC48);
  }

  return result;
}

unint64_t sub_25271CB5C()
{
  result = qword_27F4FBC50;
  if (!qword_27F4FBC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC50);
  }

  return result;
}

unint64_t sub_25271CBF8()
{
  result = qword_27F4FBC68;
  if (!qword_27F4FBC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC68);
  }

  return result;
}

unint64_t sub_25271CC4C()
{
  result = qword_27F4FBC70;
  if (!qword_27F4FBC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC70);
  }

  return result;
}

unint64_t sub_25271CCA0()
{
  result = qword_27F4FBC78;
  if (!qword_27F4FBC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC78);
  }

  return result;
}

unint64_t sub_25271CCF8()
{
  result = qword_27F4FBC80;
  if (!qword_27F4FBC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC80);
  }

  return result;
}

unint64_t sub_25271CD64()
{
  result = qword_27F4FBC88;
  if (!qword_27F4FBC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC88);
  }

  return result;
}

unint64_t sub_25271CDBC()
{
  result = qword_27F4FBC90;
  if (!qword_27F4FBC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC90);
  }

  return result;
}

unint64_t sub_25271CE14()
{
  result = qword_27F4FBC98;
  if (!qword_27F4FBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBC98);
  }

  return result;
}

unint64_t sub_25271CE6C()
{
  result = qword_27F4FBCA0;
  if (!qword_27F4FBCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCA0);
  }

  return result;
}

void sub_25271CECC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006C6176;
  v4 = 0x69727241656D6F68;
  v5 = 0xE500000000000000;
  v6 = 0x7065656C73;
  v7 = 0xEB0000000064656ELL;
  v8 = 0x6966654472657375;
  if (v2 != 4)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED00006572757472;
  v10 = 0x61706544656D6F68;
  if (v2 != 1)
  {
    v10 = 0x7055656B6177;
    v9 = 0xE600000000000000;
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

unint64_t sub_25271CF9C()
{
  result = qword_27F4FBCA8;
  if (!qword_27F4FBCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCA8);
  }

  return result;
}

unint64_t sub_25271CFF4()
{
  result = qword_27F4FBCB0;
  if (!qword_27F4FBCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCB0);
  }

  return result;
}

unint64_t sub_25271D04C()
{
  result = qword_27F4FBCB8;
  if (!qword_27F4FBCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCB8);
  }

  return result;
}

unint64_t sub_25271D0A4()
{
  result = qword_27F4FBCC0;
  if (!qword_27F4FBCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCC0);
  }

  return result;
}

uint64_t sub_25271D100(uint64_t a1)
{
  sub_2528C0A40();
}

uint64_t sub_25271D210()
{
  v1 = *v0;
  v2 = 0x69727241656D6F68;
  v3 = 0x7065656C73;
  v4 = 0x6966654472657375;
  if (v1 != 4)
  {
    v4 = 1701736302;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x61706544656D6F68;
  if (v1 != 1)
  {
    v5 = 0x7055656B6177;
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

unint64_t sub_25271D2DC()
{
  result = qword_27F4FBCC8;
  if (!qword_27F4FBCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCC8);
  }

  return result;
}

unint64_t sub_25271D330()
{
  result = qword_27F4FBCD0;
  if (!qword_27F4FBCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCD0);
  }

  return result;
}

unint64_t sub_25271D384()
{
  result = qword_27F4FBCD8;
  if (!qword_27F4FBCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCD8);
  }

  return result;
}

unint64_t sub_25271D3DC()
{
  result = qword_27F4FBCE0;
  if (!qword_27F4FBCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCE0);
  }

  return result;
}

unint64_t sub_25271D4C0()
{
  result = qword_27F4FBCE8;
  if (!qword_27F4FBCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCE8);
  }

  return result;
}

uint64_t sub_25271D514(uint64_t a1)
{
  v2 = sub_25271D4C0();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_25271D564()
{
  result = qword_27F4FBCF0;
  if (!qword_27F4FBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCF0);
  }

  return result;
}

unint64_t sub_25271D5BC()
{
  result = qword_27F4FBCF8;
  if (!qword_27F4FBCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBCF8);
  }

  return result;
}

unint64_t sub_25271D614()
{
  result = qword_27F4FBD00;
  if (!qword_27F4FBD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBD00);
  }

  return result;
}

uint64_t sub_25271D68C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_25271D6F0(uint64_t a1)
{
  v2 = sub_25271D3DC();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_25271D794()
{
  result = qword_27F4FBD18;
  if (!qword_27F4FBD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBD18);
  }

  return result;
}

unint64_t sub_25271D7EC()
{
  result = qword_27F4FBD20;
  if (!qword_27F4FBD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBD20);
  }

  return result;
}

uint64_t sub_25271D860()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502798);
  __swift_project_value_buffer(v0, qword_27F502798);
  return sub_2528BE9D0();
}

uint64_t sub_25271D8C4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25271D8E8, 0, 0);
}

uint64_t sub_25271D8E8()
{
  v1 = *(v0 + 16);
  sub_2528C0680();
  v2 = type metadata accessor for TriggerRecurrenceWeekdaysEntity(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_25271D994()
{
  result = qword_27F4FBD30;
  if (!qword_27F4FBD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBD30);
  }

  return result;
}

uint64_t sub_25271DA3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25271DA84()
{
  sub_2528C1130();
  sub_2528C0690();
  sub_25271DA3C(&qword_27F4FBEC0, MEMORY[0x277D16C68], MEMORY[0x277D16C70]);
  sub_2528C0910();
  return sub_2528C1180();
}

uint64_t sub_25271DB0C(uint64_t a1)
{
  sub_2528C0690();
  sub_25271DA3C(&qword_27F4FBEC0, MEMORY[0x277D16C68], MEMORY[0x277D16C70]);

  return sub_2528C0910();
}

uint64_t sub_25271DB90(uint64_t a1)
{
  sub_2528C1130();
  sub_2528C0690();
  sub_25271DA3C(&qword_27F4FBEC0, MEMORY[0x277D16C68], MEMORY[0x277D16C70]);
  sub_2528C0910();
  return sub_2528C1180();
}

BOOL sub_25271DC14()
{
  sub_2528C0690();
  sub_25271DA3C(&qword_27F4FBEB8, MEMORY[0x277D16C68], MEMORY[0x277D16C80]);
  sub_2528C0AD0();
  sub_2528C0AD0();
  return v2 == v1;
}

uint64_t sub_25271DD04()
{
  sub_2528C0690();
  sub_25271DA3C(&qword_27F4FBEA0, MEMORY[0x277D16C68], MEMORY[0x277D16C88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBEA8, &qword_2528C2588);
  sub_25272275C(&qword_27F4FBEB0, &qword_27F4FBEA8, &qword_2528C2588, MEMORY[0x277D83970]);
  return sub_2528C0DF0();
}

uint64_t sub_25271DF18(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FBE98, type metadata accessor for TriggerRecurrenceWeekdaysEntity, &unk_2528C2120);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25271E024(uint64_t a1)
{
  sub_25271DA3C(&qword_27F4FBE98, type metadata accessor for TriggerRecurrenceWeekdaysEntity, &unk_2528C2120);

  return sub_2528BE550();
}

uint64_t sub_25271E108(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FBD40, type metadata accessor for TriggerRecurrenceWeekdaysEntity, &unk_2528C2158);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25271E1CC()
{
  sub_2528C0670();

  return sub_2528BE8C0();
}

uint64_t sub_25271E204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2527228B0;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_25271E2C8(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FBD80, type metadata accessor for TriggerRecurrenceWeekdaysEntity, &unk_2528C2308);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t getEnumTagSinglePayload for SceneType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SceneType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s38MatterAttributeExecutionTaskIdentifierOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s38MatterAttributeExecutionTaskIdentifierOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25271E684(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25271E6BC(uint64_t a1)
{
  sub_2528BEC90();
  if (v1 <= 0x3F)
  {
    sub_25271E738(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25271E738(uint64_t a1)
{
  if (!qword_27F4FBDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FBDC0, &qword_2528C23E8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4FBDB8);
    }
  }
}

uint64_t sub_25271E7D8(uint64_t a1)
{
  result = sub_2528C0690();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25271E8A8@<X0>(uint64_t *a1@<X8>)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDC0, &qword_2528C23E8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v38 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v38 - v6;
  MEMORY[0x28223BE20](v5);
  v39 = &v38 - v8;
  v9 = sub_2528BEC40();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_2528BEC90();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = type metadata accessor for TriggerEventType(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25271FF44(v1, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = *v22;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDF8, &qword_2528C95D0);
      v26 = v39;
      sub_25271FFFC(&v22[*(v25 + 48)], v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE00, &qword_2528C2540);
      sub_2528BEC20();
      sub_25271C8F4();
      v27 = sub_2528BE6E0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE08, &qword_2528C2548);
      sub_2528BEC20();
      v28 = sub_2528BE710();
      v41 = v24;
      sub_2528BE6C0();
      sub_25272006C(v26, v7, &qword_27F4FBDC0, &qword_2528C23E8);
      sub_25272006C(v7, v38, &qword_27F4FBDC0, &qword_2528C23E8);
      sub_2528BE6C0();
      sub_2527213D8(v7, &qword_27F4FBDC0, &qword_2528C23E8);
      v29 = v40;
      v40[3] = &type metadata for TriggerEventType.SignificantTimeCase;
      v29[4] = sub_2527200D4();
      *v29 = v27;
      v29[1] = v28;
      return sub_2527213D8(v26, &qword_27F4FBDC0, &qword_2528C23E8);
    }

    else
    {
      v35 = *v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDE8, &unk_2528C2530);
      sub_2528BEC20();
      sub_25271CD64();
      v36 = sub_2528BE6E0();
      v42 = v35;
      sub_2528BE6C0();
      v37 = v40;
      v40[3] = &type metadata for TriggerEventType.CurrentUserPresenceCase;
      result = sub_25271FFA8();
      v37[4] = result;
      *v37 = v36;
    }
  }

  else
  {
    (*(v11 + 32))(v19, v22, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE18, &unk_2528C2550);
    sub_2528BEC20();
    v31 = sub_2528BE720();
    v32 = *(v11 + 16);
    v32(v17, v19, v10);
    v32(v14, v17, v10);
    sub_2528BE6C0();
    v33 = *(v11 + 8);
    v33(v17, v10);
    v34 = v40;
    v40[3] = &type metadata for TriggerEventType.AbsoluteTimeCase;
    v34[4] = sub_252720128();
    *v34 = v31;
    return (v33)(v19, v10);
  }

  return result;
}

uint64_t sub_25271ED78@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE30, &qword_2528C2560);
  v12 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v2 = &v11 - v1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE38, &qword_2528C2568);
  v3 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TriggerEventType(0);
  v7 = sub_25272017C();
  MEMORY[0x2530A60E0](v7, v6, &type metadata for TriggerEventType.AbsoluteTimeCase.Resolver, v7);
  v8 = sub_2527201D0();
  MEMORY[0x2530A60E0](v8, v6, &type metadata for TriggerEventType.SignificantTimeCase.Resolver, v8);
  v9 = sub_252720224();
  MEMORY[0x2530A60E0](v9, v6, &type metadata for TriggerEventType.CurrentUserPresenceCase.Resolver, v9);
  sub_25271DA3C(&qword_27F4FBDE0, type metadata accessor for TriggerEventType, &unk_2528C24A0);
  sub_2528BEAA0();
  v19 = v7;
  v20 = &type metadata for TriggerEventType.AbsoluteTimeCase.Resolver;
  sub_2528BEA90();
  v17 = &type metadata for TriggerEventType.AbsoluteTimeCase.Resolver;
  v18 = &type metadata for TriggerEventType.SignificantTimeCase.Resolver;
  v15 = v7;
  v16 = v8;
  sub_2528BEA90();
  (*(v12 + 8))(v2, v14);
  return (*(v3 + 8))(v5, v11);
}

uint64_t sub_25271F03C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25271F060, 0, 0);
}

uint64_t sub_25271F060()
{
  v1 = *(v0 + 16);
  sub_2528BE6B0();
  v2 = type metadata accessor for TriggerEventType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25271F11C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE18, &unk_2528C2550);
  sub_2528BEC20();
  result = sub_2528BE720();
  *a1 = result;
  return result;
}

uint64_t sub_25271F1C4(uint64_t a1)
{
  v2 = sub_25272284C();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25271F210(uint64_t a1)
{
  sub_25272284C();

  return sub_2528BE550();
}

uint64_t sub_25271F29C(uint64_t a1)
{
  v2 = sub_2527218F4();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25271F2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25271F3AC;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_25271F3AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25271F4A0(uint64_t a1)
{
  v2 = sub_2527216A4();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25271F518(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2528BE9D0();
}

uint64_t sub_25271F578(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x2822009F8](sub_25271F5A0, 0, 0);
}

uint64_t sub_25271F5A0()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDF8, &qword_2528C95D0);
  sub_2528BE6B0();
  *v1 = *(v0 + 40);
  sub_2528BE6B0();
  v2 = type metadata accessor for TriggerEventType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25271F694@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE00, &qword_2528C2540);
  sub_2528BEC20();
  sub_25271C8F4();
  v3 = sub_2528BE6E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE08, &qword_2528C2548);
  sub_2528BEC20();
  result = sub_2528BE710();
  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t sub_25271F77C(uint64_t a1)
{
  v2 = sub_2527227F8();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25271F7C8(uint64_t a1)
{
  sub_2527227F8();

  return sub_2528BE550();
}

uint64_t sub_25271F854(uint64_t a1)
{
  v2 = sub_252721C4C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25271F8A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_2528BEC40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  sub_2528BEC20();
  (*(v7 + 56))(v5, 1, 1, v6);
  v8 = sub_2528BE8D0();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return sub_2528BE900();
}

uint64_t sub_25271FA68(uint64_t a1)
{
  v2 = sub_2527219FC();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25271FAB4()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F5027E0);
  __swift_project_value_buffer(v0, qword_27F5027E0);
  return sub_2528BE9D0();
}

uint64_t sub_25271FB18(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25271FB3C, 0, 0);
}

uint64_t sub_25271FB3C()
{
  v1 = *(v0 + 16);
  sub_2528BE6B0();
  *v1 = *(v0 + 32);
  v2 = type metadata accessor for TriggerEventType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25271FC00@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDE8, &unk_2528C2530);
  sub_2528BEC20();
  sub_25271CD64();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_25271FCB0(uint64_t a1)
{
  v2 = sub_2527227A4();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_25271FCFC(uint64_t a1)
{
  sub_2527227A4();

  return sub_2528BE550();
}

uint64_t sub_25271FD88@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2528BE9F0();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_25271FE24(uint64_t a1)
{
  v2 = sub_252721FA4();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25271FE70(uint64_t a1)
{
  v2 = sub_252721D54();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25271FEBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE28, &qword_2528C4730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2528C17D0;
  v1 = sub_252720128();
  *(v0 + 32) = &type metadata for TriggerEventType.AbsoluteTimeCase;
  *(v0 + 40) = v1;
  v2 = sub_2527200D4();
  *(v0 + 48) = &type metadata for TriggerEventType.SignificantTimeCase;
  *(v0 + 56) = v2;
  v3 = sub_25271FFA8();
  *(v0 + 64) = &type metadata for TriggerEventType.CurrentUserPresenceCase;
  *(v0 + 72) = v3;
  return v0;
}

uint64_t sub_25271FF44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TriggerEventType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25271FFA8()
{
  result = qword_27F4FBDF0;
  if (!qword_27F4FBDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBDF0);
  }

  return result;
}

uint64_t sub_25271FFFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDC0, &qword_2528C23E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25272006C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2527200D4()
{
  result = qword_27F4FBE10;
  if (!qword_27F4FBE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBE10);
  }

  return result;
}

unint64_t sub_252720128()
{
  result = qword_27F4FBE20;
  if (!qword_27F4FBE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBE20);
  }

  return result;
}

unint64_t sub_25272017C()
{
  result = qword_27F4FBE40;
  if (!qword_27F4FBE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBE40);
  }

  return result;
}

unint64_t sub_2527201D0()
{
  result = qword_27F4FBE48;
  if (!qword_27F4FBE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBE48);
  }

  return result;
}

unint64_t sub_252720224()
{
  result = qword_27F4FBE50;
  if (!qword_27F4FBE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBE50);
  }

  return result;
}

uint64_t sub_252720278()
{
  v1 = *v0;
  sub_2528C1130();
  MEMORY[0x2530A87A0](v1);
  return sub_2528C1180();
}

uint64_t sub_2527202EC(uint64_t a1)
{
  v2 = *v1;
  sub_2528C1130();
  MEMORY[0x2530A87A0](v2);
  return sub_2528C1180();
}

uint64_t sub_252720340(uint64_t a1)
{
  sub_25271DA3C(&qword_27F4FC0D0, type metadata accessor for HMError, &unk_2528C3258);

  return sub_2528BEC00();
}

uint64_t sub_2527203AC(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FC0D0, type metadata accessor for HMError, &unk_2528C3258);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_252720418(void *a1, uint64_t a2)
{
  v4 = sub_25271DA3C(&qword_27F4FC0D0, type metadata accessor for HMError, &unk_2528C3258);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2527204A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25271DA3C(&qword_27F4FC0D0, type metadata accessor for HMError, &unk_2528C3258);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_252720534(uint64_t a1)
{
  sub_25271DA3C(&qword_27F4FC090, type metadata accessor for MTRError, &unk_2528C3114);

  return sub_2528BEC00();
}

uint64_t sub_2527205A0(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FC090, type metadata accessor for MTRError, &unk_2528C3114);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_25272060C(void *a1, uint64_t a2)
{
  v4 = sub_25271DA3C(&qword_27F4FC090, type metadata accessor for MTRError, &unk_2528C3114);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_25272069C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25271DA3C(&qword_27F4FC090, type metadata accessor for MTRError, &unk_2528C3114);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_252720718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2528C1130();
  sub_2528C0910();
  return sub_2528C1180();
}

uint64_t sub_252720778(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FC0A0, type metadata accessor for HMError, &unk_2528C2F50);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2527207E4(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FC0A0, type metadata accessor for HMError, &unk_2528C2F50);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_252720850(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FC0D0, type metadata accessor for HMError, &unk_2528C3258);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2527208BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25271DA3C(&qword_27F4FC0D0, type metadata accessor for HMError, &unk_2528C3258);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_252720940(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FC058, type metadata accessor for MTRError, &unk_2528C30D4);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2527209AC(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FC058, type metadata accessor for MTRError, &unk_2528C30D4);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_252720A18(uint64_t a1)
{
  v2 = sub_25271DA3C(&qword_27F4FC090, type metadata accessor for MTRError, &unk_2528C3114);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_252720A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25271DA3C(&qword_27F4FC090, type metadata accessor for MTRError, &unk_2528C3114);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_252720B08(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v68 = sub_2528BEB10();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v62 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE68, &qword_2528C2570);
  MEMORY[0x28223BE20](v64);
  v67 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDC0, &qword_2528C23E8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v63 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v69 = &v61 - v9;
  MEMORY[0x28223BE20](v8);
  v65 = &v61 - v10;
  v11 = sub_2528BEC90();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TriggerEventType(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v61 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v61 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE70, &qword_2528C2578);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v61 - v26;
  v28 = &v61 + *(v25 + 56) - v26;
  sub_25271FF44(a1, &v61 - v26);
  sub_25271FF44(v70, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_25271FF44(v27, v21);
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDF8, &qword_2528C95D0) + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = *v21;
        v32 = *v28;
        v33 = v65;
        sub_25271FFFC(&v21[v30], v65);
        v34 = v69;
        sub_25271FFFC(&v28[v30], v69);
        if (v31)
        {
          v35 = 0x7465736E7573;
        }

        else
        {
          v35 = 0x657369726E7573;
        }

        if (v31)
        {
          v36 = 0xE600000000000000;
        }

        else
        {
          v36 = 0xE700000000000000;
        }

        if (v32)
        {
          v37 = 0x7465736E7573;
        }

        else
        {
          v37 = 0x657369726E7573;
        }

        if (v32)
        {
          v38 = 0xE600000000000000;
        }

        else
        {
          v38 = 0xE700000000000000;
        }

        if (v35 == v37 && v36 == v38)
        {

          v40 = v67;
          v39 = v68;
          v41 = v66;
        }

        else
        {
          v51 = sub_2528C1060();

          v40 = v67;
          v39 = v68;
          v41 = v66;
          if ((v51 & 1) == 0)
          {
            sub_2527213D8(v34, &qword_27F4FBDC0, &qword_2528C23E8);
            sub_2527213D8(v33, &qword_27F4FBDC0, &qword_2528C23E8);
            goto LABEL_54;
          }
        }

        v52 = *(v64 + 48);
        sub_25272006C(v33, v40, &qword_27F4FBDC0, &qword_2528C23E8);
        sub_25272006C(v34, v40 + v52, &qword_27F4FBDC0, &qword_2528C23E8);
        v53 = v34;
        v54 = *(v41 + 48);
        if (v54(v40, 1, v39) == 1)
        {
          sub_2527213D8(v53, &qword_27F4FBDC0, &qword_2528C23E8);
          sub_2527213D8(v33, &qword_27F4FBDC0, &qword_2528C23E8);
          if (v54(v40 + v52, 1, v39) == 1)
          {
            sub_2527213D8(v40, &qword_27F4FBDC0, &qword_2528C23E8);
            goto LABEL_48;
          }
        }

        else
        {
          v55 = v63;
          sub_25272006C(v40, v63, &qword_27F4FBDC0, &qword_2528C23E8);
          if (v54(v40 + v52, 1, v39) != 1)
          {
            v56 = v62;
            (*(v41 + 32))(v62, v40 + v52, v39);
            sub_25271DA3C(&qword_27F4FBE78, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
            v57 = v55;
            v58 = sub_2528C0930();
            v59 = *(v41 + 8);
            v59(v56, v39);
            sub_2527213D8(v69, &qword_27F4FBDC0, &qword_2528C23E8);
            sub_2527213D8(v33, &qword_27F4FBDC0, &qword_2528C23E8);
            v59(v57, v39);
            sub_2527213D8(v40, &qword_27F4FBDC0, &qword_2528C23E8);
            if (v58)
            {
              goto LABEL_48;
            }

            goto LABEL_54;
          }

          sub_2527213D8(v69, &qword_27F4FBDC0, &qword_2528C23E8);
          sub_2527213D8(v33, &qword_27F4FBDC0, &qword_2528C23E8);
          (*(v41 + 8))(v55, v39);
        }

        sub_2527213D8(v40, &qword_27F4FBE68, &qword_2528C2570);
LABEL_54:
        sub_25272137C(v27);
        goto LABEL_55;
      }

      sub_2527213D8(&v21[v30], &qword_27F4FBDC0, &qword_2528C23E8);
    }

    else
    {
      sub_25271FF44(v27, v18);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v42 = *v28;
        if (*v18)
        {
          v43 = 0x6F48657669727261;
        }

        else
        {
          v43 = 0x6D6F48657661656CLL;
        }

        if (*v18)
        {
          v44 = 0xEA0000000000656DLL;
        }

        else
        {
          v44 = 0xE900000000000065;
        }

        if (v42)
        {
          v45 = 0x6F48657669727261;
        }

        else
        {
          v45 = 0x6D6F48657661656CLL;
        }

        if (v42)
        {
          v46 = 0xEA0000000000656DLL;
        }

        else
        {
          v46 = 0xE900000000000065;
        }

        if (v43 == v45 && v44 == v46)
        {

          goto LABEL_48;
        }

        v48 = sub_2528C1060();

        if (v48)
        {
LABEL_48:
          sub_25272137C(v27);
          v49 = 1;
          return v49 & 1;
        }

        goto LABEL_54;
      }
    }

LABEL_41:
    sub_2527213D8(v27, &qword_27F4FBE70, &qword_2528C2578);
LABEL_55:
    v49 = 0;
    return v49 & 1;
  }

  sub_25271FF44(v27, v23);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v12 + 8))(v23, v11);
    goto LABEL_41;
  }

  (*(v12 + 32))(v14, v28, v11);
  v49 = sub_2528BEC70();
  v50 = *(v12 + 8);
  v50(v14, v11);
  v50(v23, v11);
  sub_25272137C(v27);
  return v49 & 1;
}

uint64_t sub_25272137C(uint64_t a1)
{
  v2 = type metadata accessor for TriggerEventType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2527213D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25272152C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_252721574(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2527215F4()
{
  result = qword_27F4FBF30;
  if (!qword_27F4FBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF30);
  }

  return result;
}

unint64_t sub_25272164C()
{
  result = qword_27F4FBF38;
  if (!qword_27F4FBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF38);
  }

  return result;
}

unint64_t sub_2527216A4()
{
  result = qword_27F4FBF40;
  if (!qword_27F4FBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF40);
  }

  return result;
}

unint64_t sub_2527216F8()
{
  result = qword_27F4FBF48;
  if (!qword_27F4FBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF48);
  }

  return result;
}

unint64_t sub_252721750()
{
  result = qword_27F4FBF50;
  if (!qword_27F4FBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF50);
  }

  return result;
}

unint64_t sub_2527217A8()
{
  result = qword_27F4FBF58;
  if (!qword_27F4FBF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF58);
  }

  return result;
}

unint64_t sub_252721800()
{
  result = qword_27F4FBF60;
  if (!qword_27F4FBF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF60);
  }

  return result;
}

unint64_t sub_252721858()
{
  result = qword_27F4FBF68;
  if (!qword_27F4FBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF68);
  }

  return result;
}

unint64_t sub_2527218F4()
{
  result = qword_27F4FBF80;
  if (!qword_27F4FBF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF80);
  }

  return result;
}

unint64_t sub_25272194C()
{
  result = qword_27F4FBF88;
  if (!qword_27F4FBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF88);
  }

  return result;
}

unint64_t sub_2527219A4()
{
  result = qword_27F4FBF90;
  if (!qword_27F4FBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF90);
  }

  return result;
}

unint64_t sub_2527219FC()
{
  result = qword_27F4FBF98;
  if (!qword_27F4FBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBF98);
  }

  return result;
}

unint64_t sub_252721A50()
{
  result = qword_27F4FBFA0;
  if (!qword_27F4FBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFA0);
  }

  return result;
}

unint64_t sub_252721AA8()
{
  result = qword_27F4FBFA8;
  if (!qword_27F4FBFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFA8);
  }

  return result;
}

unint64_t sub_252721B00()
{
  result = qword_27F4FBFB0;
  if (!qword_27F4FBFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFB0);
  }

  return result;
}

unint64_t sub_252721B58()
{
  result = qword_27F4FBFB8;
  if (!qword_27F4FBFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFB8);
  }

  return result;
}

unint64_t sub_252721BB0()
{
  result = qword_27F4FBFC0;
  if (!qword_27F4FBFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFC0);
  }

  return result;
}

unint64_t sub_252721C4C()
{
  result = qword_27F4FBFD8;
  if (!qword_27F4FBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFD8);
  }

  return result;
}

unint64_t sub_252721CA4()
{
  result = qword_27F4FBFE0;
  if (!qword_27F4FBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFE0);
  }

  return result;
}

unint64_t sub_252721CFC()
{
  result = qword_27F4FBFE8;
  if (!qword_27F4FBFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFE8);
  }

  return result;
}

unint64_t sub_252721D54()
{
  result = qword_27F4FBFF0;
  if (!qword_27F4FBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFF0);
  }

  return result;
}

unint64_t sub_252721DA8()
{
  result = qword_27F4FBFF8;
  if (!qword_27F4FBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FBFF8);
  }

  return result;
}

unint64_t sub_252721E00()
{
  result = qword_27F4FC000;
  if (!qword_27F4FC000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC000);
  }

  return result;
}

unint64_t sub_252721E58()
{
  result = qword_27F4FC008;
  if (!qword_27F4FC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC008);
  }

  return result;
}

unint64_t sub_252721EB0()
{
  result = qword_27F4FC010;
  if (!qword_27F4FC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC010);
  }

  return result;
}

unint64_t sub_252721F08()
{
  result = qword_27F4FC018;
  if (!qword_27F4FC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC018);
  }

  return result;
}

unint64_t sub_252721FA4()
{
  result = qword_27F4FC030;
  if (!qword_27F4FC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC030);
  }

  return result;
}

unint64_t sub_252722204()
{
  result = qword_27F4FC080;
  if (!qword_27F4FC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC080);
  }

  return result;
}

void sub_252722464(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_25272258C()
{
  result = qword_27F4FC0D8;
  if (!qword_27F4FC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC0D8);
  }

  return result;
}

unint64_t sub_2527225E4()
{
  result = qword_27F4FC0E0;
  if (!qword_27F4FC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC0E0);
  }

  return result;
}

unint64_t sub_25272263C()
{
  result = qword_27F4FC0E8;
  if (!qword_27F4FC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC0E8);
  }

  return result;
}

uint64_t sub_25272275C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_2527227A4()
{
  result = qword_27F4FC120;
  if (!qword_27F4FC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC120);
  }

  return result;
}

unint64_t sub_2527227F8()
{
  result = qword_27F4FC138;
  if (!qword_27F4FC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC138);
  }

  return result;
}

unint64_t sub_25272284C()
{
  result = qword_27F4FC140;
  if (!qword_27F4FC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC140);
  }

  return result;
}

uint64_t sub_252722934()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FC158);
  __swift_project_value_buffer(v0, qword_27F4FC158);
  return sub_2528BE9D0();
}

uint64_t static IntentNavigationDestination.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB5D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FC158);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_252722A48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC1E8, &qword_2528C38C0);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC1F0, &qword_2528C38C8) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C35E0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_2528BE8C0();
  v4[v1] = 1;
  sub_2528BE8C0();
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v5 = sub_25278CBD0(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FC170 = v5;
  return result;
}

uint64_t static IntentNavigationDestination.caseDisplayRepresentations.getter(uint64_t a1, uint64_t a2)
{
  if (qword_27F4FB5D8 != -1)
  {
    swift_once();
  }
}

HomeAppIntents::IntentNavigationDestination_optional __swiftcall IntentNavigationDestination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2528C0F30();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t IntentNavigationDestination.rawValue.getter()
{
  v1 = 0x726577736E61;
  v2 = 0x656369746F6ELL;
  if (*v0 != 2)
  {
    v2 = 0x686372616573;
  }

  if (*v0)
  {
    v1 = 0x6B6E694C70656564;
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

void sub_252722D44(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x726577736E61;
  v4 = 0x656369746F6ELL;
  if (*v1 != 2)
  {
    v4 = 0x686372616573;
  }

  if (*v1)
  {
    v3 = 0x6B6E694C70656564;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_252722DBC()
{
  result = qword_27F4FC178;
  if (!qword_27F4FC178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC178);
  }

  return result;
}

unint64_t sub_252722E14()
{
  result = qword_27F4FC180;
  if (!qword_27F4FC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC180);
  }

  return result;
}

unint64_t sub_252722E6C()
{
  result = qword_27F4FC188;
  if (!qword_27F4FC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC188);
  }

  return result;
}

unint64_t sub_252722EC4()
{
  result = qword_27F4FC190;
  if (!qword_27F4FC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC190);
  }

  return result;
}

uint64_t sub_252722F18()
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_252722FD0(uint64_t a1)
{
  sub_2528C0A40();
}

uint64_t sub_252723074(uint64_t a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  return sub_2528C1180();
}

unint64_t sub_25272312C()
{
  result = qword_27F4FC198;
  if (!qword_27F4FC198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FC1A0, &qword_2528C36D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC198);
  }

  return result;
}

unint64_t sub_2527231A4()
{
  result = qword_27F4FC1A8;
  if (!qword_27F4FC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC1A8);
  }

  return result;
}

unint64_t sub_2527231F8()
{
  result = qword_27F4FC1B0;
  if (!qword_27F4FC1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC1B0);
  }

  return result;
}

unint64_t sub_25272324C()
{
  result = qword_27F4FC1B8;
  if (!qword_27F4FC1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC1B8);
  }

  return result;
}

unint64_t sub_2527232A4()
{
  result = qword_27F4FC1C0;
  if (!qword_27F4FC1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC1C0);
  }

  return result;
}

uint64_t sub_2527232F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB5D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FC158);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_2527233F0()
{
  result = qword_27F4FC1C8;
  if (!qword_27F4FC1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC1C8);
  }

  return result;
}

uint64_t sub_252723444(uint64_t a1)
{
  v2 = sub_2527233F0();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_252723494()
{
  result = qword_27F4FC1D0;
  if (!qword_27F4FC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC1D0);
  }

  return result;
}

unint64_t sub_2527234EC()
{
  result = qword_27F4FC1D8;
  if (!qword_27F4FC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC1D8);
  }

  return result;
}

unint64_t sub_252723544()
{
  result = qword_27F4FC1E0;
  if (!qword_27F4FC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC1E0);
  }

  return result;
}

uint64_t sub_252723598(uint64_t a1, uint64_t a2)
{
  if (qword_27F4FB5D8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2527235F4(uint64_t a1)
{
  v2 = sub_2527232A4();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t getEnumTagSinglePayload for IntentNavigationDestination(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IntentNavigationDestination(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_252723798(uint64_t a1@<X0>, char *a2@<X8>)
{
  v272 = a2;
  v263 = sub_2528C03B0();
  v267 = *(v263 - 8);
  v3 = MEMORY[0x28223BE20](v263);
  v5 = &v252 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v252 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v252 - v10);
  v12 = MEMORY[0x28223BE20](v9);
  v260 = &v252 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v256 = &v252 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v259 = &v252 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v257 = &v252 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v258 = &v252 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v252 - v23;
  MEMORY[0x28223BE20](v22);
  v262 = (&v252 - v25);
  v265 = sub_2528C03F0();
  v269 = *(v265 - 8);
  v26 = MEMORY[0x28223BE20](v265);
  v28 = &v252 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v264 = &v252 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC208, &qword_2528C6B40);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = &v252 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v252 - v34;
  v271 = sub_2528C04F0();
  v273 = *(v271 - 8);
  MEMORY[0x28223BE20](v271);
  v37 = MEMORY[0x28223BE20](&v252 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = MEMORY[0x28223BE20](v37);
  v39 = MEMORY[0x28223BE20](v38);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v252 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v44 = MEMORY[0x28223BE20](v43);
  v266 = &v252 - v49;
  v50 = *a1;
  v268 = *(a1 + 8);
  v51 = *(a1 + 16);
  v52 = *(a1 + 32);
  if (v52 >> 1 == 49)
  {
    v255 = *(a1 + 24);
    v70 = v51;
    v260 = v44;
    v261 = v50;
    v71 = v5;
    v266 = v46;
    sub_2528BFB20();
    sub_2528BFA40();
    v72 = v273;
    v73 = v271;
    if ((*(v273 + 48))(v33, 1, v271) == 1)
    {
      sub_2527213D8(v33, &qword_27F4FC208, &qword_2528C6B40);
      v74 = v268;
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v75 = sub_2528C08B0();
      __swift_project_value_buffer(v75, qword_27F5025C8);
      v76 = v70;

      v77 = sub_2528C0890();
      v78 = sub_2528C0CF0();
      v79 = v261;
      v80 = v70;
      v81 = v255;
      sub_25272C15C(v261, v74, v80, v255, v52);
      if (os_log_type_enabled(v77, v78))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v280 = v83;
        *v82 = 136315394;
        *(v82 + 4) = sub_2527389AC(0xD000000000000015, 0x80000002528E5530, &v280);
        *(v82 + 12) = 2082;
        v275 = v79;
        v276 = v74;
        v277 = v76;
        v278 = v81;
        v279 = v52;

        v86 = sub_252873604(v84, v85);
        v88 = v87;
        sub_25272C15C(v275, v276, v277, v278, v279);
        v89 = sub_2527389AC(v86, v88, &v280);

        *(v82 + 14) = v89;
        _os_log_impl(&dword_252711000, v77, v78, "%s: No RVC Cluster found for RVC command (%{public}s)", v82, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2530A8D80](v83, -1, -1);
        MEMORY[0x2530A8D80](v82, -1, -1);
      }

      v90 = 4;
      goto LABEL_114;
    }

    v107 = v266;
    (*(v72 + 32))();
    sub_2528C0400();
    sub_2528784C8(&v280);
    v108 = (v267 + 8);
    v109 = *(v267 + 1);
    v110 = v8;
    v111 = v263;
    v109(v110, v263);
    v112 = v280;
    if (v280 == 27)
    {
      v113 = v264;
      sub_2528C0410();
      sub_2528788D0(&v275);
      (*(v269 + 8))(v113, v265);
      v112 = v275;
    }

    if (v261 <= 1u)
    {
      if (v261)
      {
        if (v261 != 1 || v112 != 1)
        {
          goto LABEL_47;
        }
      }

      else if (v112)
      {
        goto LABEL_47;
      }
    }

    else if (v261 == 2)
    {
      if (v112 != 2)
      {
        goto LABEL_47;
      }
    }

    else if (v261 != 4 && v261 != 6 || (v112 | 2) != 6)
    {
LABEL_47:
      v267 = v109;
      v135 = v264;
      sub_2528C0410();
      v136 = v107;
      v137 = v269;
      v138 = v265;
      (*(v269 + 104))(v28, *MEMORY[0x277D16868], v265);
      v139 = sub_2528C03E0();
      v140 = *(v137 + 8);
      v140(v28, v138);
      v140(v135, v138);
      v141 = v268;
      if ((v139 & 1) != 0 && (v142 = v262, sub_2528C0400(), sub_252725AC0(v142, v141, &v275), v267(v142, v111), v143 = v275, v275 != 20))
      {
        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v148 = sub_2528C08B0();
        __swift_project_value_buffer(v148, qword_27F5025C8);
        v149 = sub_2528C0890();
        v150 = sub_2528C0CF0();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v275 = v153;
          *v151 = 136315394;
          *(v151 + 4) = sub_2527389AC(0xD000000000000015, 0x80000002528E5530, &v275);
          *(v151 + 12) = 2114;
          sub_25272C1A8();
          swift_allocError();
          *v154 = v143;
          v155 = _swift_stdlib_bridgeErrorToNSError();
          *(v151 + 14) = v155;
          *v152 = v155;
          _os_log_impl(&dword_252711000, v149, v150, "%s: Device has an existing error state: (%{public}@)", v151, 0x16u);
          sub_2527213D8(v152, &qword_27F4FC230, &qword_2528C3928);
          MEMORY[0x2530A8D80](v152, -1, -1);
          __swift_destroy_boxed_opaque_existential_0Tm(v153);
          MEMORY[0x2530A8D80](v153, -1, -1);
          MEMORY[0x2530A8D80](v151, -1, -1);
        }

        (*(v273 + 8))(v136, v271);
        *v272 = v143;
      }

      else
      {
        isa = v141[2].isa;
        if (!isa)
        {
LABEL_112:
          (*(v273 + 8))(v266, v271);
          goto LABEL_113;
        }

        v145 = v268 + 4;
        v146 = v268 + 4;
        while (2)
        {
          if (isa)
          {
            switch(LOBYTE(v146->isa))
            {
              case 1:
              case 2:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              case 8:
              case 9:
              case 0xA:
              case 0xB:
              case 0xC:
              case 0xD:
                v147 = sub_2528C1060();

                v146 = (v146 + 1);
                isa = (isa - 1);
                if ((v147 & 1) == 0)
                {
                  continue;
                }

                goto LABEL_112;
              default:
                goto LABEL_111;
            }
          }

          break;
        }

        v156 = v268[2].isa;
        v157 = v145;
        while (2)
        {
          if (v156)
          {
            switch(*v157)
            {
              case 1:
                goto LABEL_111;
              default:
                v158 = sub_2528C1060();

                ++v157;
                v156 = (v156 - 1);
                if ((v158 & 1) == 0)
                {
                  continue;
                }

                goto LABEL_112;
            }
          }

          break;
        }

        v178 = v268[2].isa;
        while (2)
        {
          if (v178)
          {
            switch(LOBYTE(v145->isa))
            {
              case 2:
LABEL_111:

                goto LABEL_112;
              default:
                v179 = sub_2528C1060();

                v145 = (v145 + 1);
                v178 = (v178 - 1);
                if ((v179 & 1) == 0)
                {
                  continue;
                }

                goto LABEL_112;
            }
          }

          break;
        }

        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v193 = sub_2528C08B0();
        __swift_project_value_buffer(v193, qword_27F5025C8);
        v194 = v268;

        v195 = sub_2528C0890();
        v196 = sub_2528C0CF0();

        v197 = os_log_type_enabled(v195, v196);
        v198 = v266;
        if (v197)
        {
          v199 = swift_slowAlloc();
          v200 = swift_slowAlloc();
          v275 = v200;
          *v199 = 136315394;
          *(v199 + 4) = sub_2527389AC(0xD000000000000015, 0x80000002528E5530, &v275);
          *(v199 + 12) = 2082;
          v201 = MEMORY[0x2530A81A0](v194, &type metadata for RobotVacuumCleanerCleanMode);
          v203 = sub_2527389AC(v201, v202, &v275);

          *(v199 + 14) = v203;
          _os_log_impl(&dword_252711000, v195, v196, "%s: Clean Mode contains neither vacuum or mop: (%{public}s)", v199, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v200, -1, -1);
          MEMORY[0x2530A8D80](v199, -1, -1);
        }

        v204 = v271;
        type metadata accessor for HomeAppIntentError(0);
        sub_25272C1FC(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
        swift_allocError();
        *v205 = 45;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v273 + 8))(v198, v204);
      }

      return;
    }

    v267 = v108;
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v127 = sub_2528C08B0();
    __swift_project_value_buffer(v127, qword_27F5025C8);
    v128 = v273;
    v129 = v260;
    (*(v273 + 16))(v260, v107, v73);
    v130 = sub_2528C0890();
    LODWORD(v270) = sub_2528C0CF0();
    if (os_log_type_enabled(v130, v270))
    {
      v131 = swift_slowAlloc();
      v268 = swift_slowAlloc();
      v275 = v268;
      *v131 = 136315394;
      *(v131 + 4) = sub_2527389AC(0xD000000000000015, 0x80000002528E5530, &v275);
      *(v131 + 12) = 2082;
      sub_2528C0400();
      sub_2528784C8(&v280);
      v109(v71, v111);
      v132 = v280;
      if (v280 == 27)
      {
        v133 = v264;
        sub_2528C0410();
        sub_2528788D0(&v280);
        (*(v269 + 8))(v133, v265);
        v132 = v280;
      }

      v274 = v132;
      v159 = RobotVacuumCleanerRunState.rawValue.getter();
      v161 = v160;
      v162 = *(v273 + 8);
      v163 = v129;
      v164 = v271;
      v162(v163, v271);
      v165 = sub_2527389AC(v159, v161, &v275);

      *(v131 + 14) = v165;
      _os_log_impl(&dword_252711000, v130, v270, "%s: Device is already in requested state: (%{public}s) ", v131, 0x16u);
      v166 = v268;
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v166, -1, -1);
      MEMORY[0x2530A8D80](v131, -1, -1);

      v162(v266, v164);
    }

    else
    {

      v134 = *(v128 + 8);
      v134(v129, v73);
      v134(v107, v73);
    }

    *v272 = 0;
    return;
  }

  if (v52 >> 1 != 48)
  {
    goto LABEL_113;
  }

  v255 = *(a1 + 24);
  v53 = v51;
  v54 = v45;
  v253 = v42;
  v254 = v48;
  v252 = v47;
  v261 = v50;
  sub_2528BFB20();
  sub_2528BFA40();
  v55 = v273;
  v56 = v271;
  if ((*(v273 + 48))(v35, 1, v271) == 1)
  {
    sub_2527213D8(v35, &qword_27F4FC208, &qword_2528C6B40);
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v57 = sub_2528C08B0();
    __swift_project_value_buffer(v57, qword_27F5025C8);
    v58 = sub_2528C0890();
    v59 = sub_2528C0CF0();
    v60 = os_log_type_enabled(v58, v59);
    v61 = v268;
    if (v60)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v280 = v63;
      *v62 = 136315394;
      v64 = sub_2527389AC(0xD000000000000015, 0x80000002528E5530, &v280);
      *(v62 + 4) = v64;
      *(v62 + 12) = 2082;
      v275 = v261;
      v276 = v61;
      v277 = v53;
      v278 = v255;
      v279 = v52;
      v66 = sub_252873604(v64, v65);
      v68 = v67;
      sub_25272C15C(v275, v276, v277, v278, v279);
      v69 = sub_2527389AC(v66, v68, &v280);

      *(v62 + 14) = v69;
      _os_log_impl(&dword_252711000, v58, v59, "%s: No RVC Cluster found for RVC command (%{public}s)", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v63, -1, -1);
      MEMORY[0x2530A8D80](v62, -1, -1);
    }

    *v272 = 4;
    return;
  }

  v270 = v11;
  (*(v55 + 32))(v266, v35, v56);
  v91 = v264;
  sub_2528C0410();
  v92 = v269;
  v93 = v265;
  (*(v269 + 104))(v28, *MEMORY[0x277D16868], v265);
  sub_25272C1FC(&qword_27F4FC2C0, MEMORY[0x277D168A0], MEMORY[0x277D168A8]);
  v94 = sub_2528C0930();
  v95 = *(v92 + 8);
  v95(v28, v93);
  v269 = v92 + 8;
  v95(v91, v93);
  v96 = v56;
  if ((v94 & 1) == 0)
  {
    v97 = v262;
    sub_2528C0400();
    sub_2528C0370();
    v98 = MEMORY[0x2530A79E0](v97, v24);
    v99 = (v267 + 8);
    v100 = *(v267 + 1);
    v101 = v263;
    v100(v24, v263);
    v267 = v99;
    v100(v97, v101);
    if (v98)
    {
      if (!v261)
      {
        v167 = v259;
        v102 = v266;
        sub_2528C0400();
        sub_2528784C8(&v275);
        v168 = v263;
        v100(v167, v263);
        v169 = v275;
        if (v275 == 27)
        {
          v170 = v264;
          sub_2528C0410();
          sub_2528788D0(&v275);
          v95(v170, v265);
          v169 = v275;
        }

        if (v169 == 4 || v169 == 1)
        {
          v171 = v273;
LABEL_83:
          (*(v171 + 8))(v102, v96);
          goto LABEL_113;
        }

        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v206 = sub_2528C08B0();
        __swift_project_value_buffer(v206, qword_27F5025C8);
        v207 = v273;
        v208 = v253;
        (*(v273 + 16))(v253, v102, v96);
        v209 = sub_2528C0890();
        v210 = v102;
        v211 = sub_2528C0CF0();
        if (os_log_type_enabled(v209, v211))
        {
          v212 = swift_slowAlloc();
          v270 = swift_slowAlloc();
          v275 = v270;
          *v212 = 136315394;
          *(v212 + 4) = sub_2527389AC(0xD000000000000015, 0x80000002528E5530, &v275);
          *(v212 + 12) = 2082;
          v213 = v256;
          sub_2528C0400();
          sub_2528784C8(&v280);
          v100(v213, v168);
          v214 = v280;
          if (v280 == 27)
          {
            v215 = v264;
            sub_2528C0410();
            sub_2528788D0(&v280);
            v95(v215, v265);
            v214 = v280;
          }

          v236 = v208;
          v274 = v214;
          v237 = RobotVacuumCleanerRunState.rawValue.getter();
          v239 = v238;
          v240 = *(v273 + 8);
          v241 = v236;
          v242 = v271;
          v240(v241, v271);
          v243 = sub_2527389AC(v237, v239, &v275);

          *(v212 + 14) = v243;
          _os_log_impl(&dword_252711000, v209, v211, "%s: Cannot pause. Current state (%{public}s) is not an active state", v212, 0x16u);
          v244 = v270;
          goto LABEL_109;
        }

LABEL_104:

        v221 = *(v207 + 8);
        v221(v208, v96);
        v221(v210, v96);
LABEL_110:
        v90 = 1;
        v251 = v272;
LABEL_115:
        *v251 = v90;
        return;
      }

      v102 = v266;
      if (v261 == 1)
      {
        v103 = v260;
        sub_2528C0400();
        sub_2528784C8(&v280);
        v104 = v263;
        v100(v103, v263);
        v105 = v280;
        if (v280 == 27)
        {
          v106 = v264;
          sub_2528C0410();
          sub_2528788D0(&v275);
          v95(v106, v265);
          v105 = v275;
        }

        else
        {
          LOBYTE(v275) = v280;
        }

        LOBYTE(v280) = v105;
        if (RobotVacuumCleanerRunState.rawValue.getter() == 0x646573756170 && v180 == 0xE600000000000000)
        {

          v171 = v273;
          goto LABEL_83;
        }

        v181 = sub_2528C1060();

        v171 = v273;
        if (v181)
        {
          goto LABEL_83;
        }

        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v216 = sub_2528C08B0();
        __swift_project_value_buffer(v216, qword_27F5025C8);
        v207 = v273;
        v208 = v252;
        (*(v273 + 16))(v252, v102, v96);
        v209 = sub_2528C0890();
        v210 = v102;
        v217 = sub_2528C0CF0();
        if (os_log_type_enabled(v209, v217))
        {
          v212 = swift_slowAlloc();
          v268 = swift_slowAlloc();
          v275 = v268;
          *v212 = 136315394;
          *(v212 + 4) = sub_2527389AC(0xD000000000000015, 0x80000002528E5530, &v275);
          *(v212 + 12) = 2082;
          v218 = v270;
          sub_2528C0400();
          sub_2528784C8(&v280);
          v100(v218, v104);
          v219 = v280;
          if (v280 == 27)
          {
            v220 = v264;
            sub_2528C0410();
            sub_2528788D0(&v280);
            v95(v220, v265);
            v219 = v280;
          }

          v245 = v208;
          v274 = v219;
          v246 = RobotVacuumCleanerRunState.rawValue.getter();
          v248 = v247;
          v240 = *(v273 + 8);
          v249 = v245;
          v242 = v271;
          v240(v249, v271);
          v250 = sub_2527389AC(v246, v248, &v275);

          *(v212 + 14) = v250;
          _os_log_impl(&dword_252711000, v209, v217, "%s: Cannot resume. Current state (%{public}s) is not paused", v212, 0x16u);
          v244 = v268;
LABEL_109:
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v244, -1, -1);
          MEMORY[0x2530A8D80](v212, -1, -1);

          v240(v266, v242);
          goto LABEL_110;
        }

        goto LABEL_104;
      }

      v172 = sub_25274336C(&unk_286493A98);
      v173 = v258;
      sub_2528C0400();
      sub_2528784C8(&v275);
      v174 = v100;
      v175 = v263;
      v270 = v174;
      (v174)(v173, v263);
      v176 = v275;
      if (v275 == 27)
      {
        v177 = v264;
        sub_2528C0410();
        sub_2528788D0(&v275);
        v95(v177, v265);
        v176 = v275;
      }

      if ((sub_252818A28(v176, v172) & 1) == 0)
      {
        if (qword_27F4FBB40 != -1)
        {
          swift_once();
        }

        v182 = sub_2528C08B0();
        __swift_project_value_buffer(v182, qword_27F5025C8);
        v183 = v273;
        v184 = v254;
        v185 = v266;
        (*(v273 + 16))(v254, v266, v96);

        v186 = sub_2528C0890();
        v187 = v96;
        v188 = sub_2528C0CF0();

        if (os_log_type_enabled(v186, v188))
        {
          v268 = v186;
          v189 = swift_slowAlloc();
          v262 = swift_slowAlloc();
          v275 = v262;
          *v189 = 136315650;
          *(v189 + 4) = sub_2527389AC(0xD000000000000015, 0x80000002528E5530, &v275);
          *(v189 + 12) = 2082;
          v190 = v257;
          sub_2528C0400();
          sub_2528784C8(&v280);
          (v270)(v190, v175);
          v191 = v280;
          if (v280 == 27)
          {
            v192 = v264;
            sub_2528C0410();
            sub_2528788D0(&v280);
            v95(v192, v265);
            v191 = v280;
          }

          v274 = v191;
          v223 = RobotVacuumCleanerRunState.rawValue.getter();
          v225 = v224;
          v226 = *(v273 + 8);
          v227 = v184;
          v228 = v271;
          v226(v227, v271);
          v229 = sub_2527389AC(v223, v225, &v275);

          *(v189 + 14) = v229;
          *(v189 + 22) = 2082;
          sub_25272C244();
          v230 = sub_2528C0C80();
          v232 = v231;

          v233 = sub_2527389AC(v230, v232, &v275);

          *(v189 + 24) = v233;
          v234 = v268;
          _os_log_impl(&dword_252711000, v268, v188, "%s: Cannot cancel. Current state (%{public}s) is not an allowed states (%{public}s)", v189, 0x20u);
          v235 = v262;
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v235, -1, -1);
          MEMORY[0x2530A8D80](v189, -1, -1);

          v226(v266, v228);
        }

        else
        {

          v222 = *(v183 + 8);
          v222(v184, v187);
          v222(v185, v187);
        }

        goto LABEL_110;
      }

      (*(v273 + 8))(v102, v96);

LABEL_113:
      v90 = 20;
LABEL_114:
      v251 = v272;
      goto LABEL_115;
    }
  }

  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v114 = sub_2528C08B0();
  __swift_project_value_buffer(v114, qword_27F5025C8);
  v115 = v273;
  v116 = v266;
  (*(v273 + 16))(v54, v266, v96);
  v117 = sub_2528C0890();
  v118 = v96;
  v119 = sub_2528C0CF0();
  if (os_log_type_enabled(v117, v119))
  {
    v120 = swift_slowAlloc();
    v269 = swift_slowAlloc();
    v270 = swift_slowAlloc();
    v275 = v270;
    *v120 = 136315394;
    *(v120 + 4) = sub_2527389AC(0xD000000000000015, 0x80000002528E5530, &v275);
    *(v120 + 12) = 2114;
    sub_25272C1FC(&qword_27F4FC2C8, MEMORY[0x277D16828], MEMORY[0x277D16838]);
    swift_allocError();
    sub_2528C0400();
    v121 = _swift_stdlib_bridgeErrorToNSError();
    v122 = *(v115 + 8);
    v122(v54, v118);
    *(v120 + 14) = v121;
    v123 = v269;
    *v269 = v121;
    _os_log_impl(&dword_252711000, v117, v119, "%s: Device has an existing error state: (%{public}@)", v120, 0x16u);
    sub_2527213D8(v123, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v123, -1, -1);
    v124 = v270;
    __swift_destroy_boxed_opaque_existential_0Tm(v270);
    MEMORY[0x2530A8D80](v124, -1, -1);
    v125 = v120;
    v116 = v266;
    MEMORY[0x2530A8D80](v125, -1, -1);
  }

  else
  {

    v122 = *(v115 + 8);
    v122(v54, v118);
  }

  v126 = v262;
  sub_2528C0400();
  sub_25279F404(v126, v272);
  v122(v116, v118);
}

uint64_t sub_252725AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v58 = a1;
  v5 = sub_2528C0390();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2528C03B0();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v52 = &v52 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v59 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v57 = &v52 - v14;
  v15 = *(a2 + 16);
  v16 = (a2 + 32);
  v17 = v15;
  v18 = (a2 + 32);
  v62 = a3;
  while (2)
  {
    if (v17)
    {
      switch(*v18)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
        case 0xD:
          v19 = sub_2528C1060();

          ++v18;
          --v17;
          if ((v19 & 1) == 0)
          {
            continue;
          }

          goto LABEL_14;
        default:
          goto LABEL_13;
      }
    }

    break;
  }

  v20 = v15;
  v21 = (a2 + 32);
  while (2)
  {
    v23 = v20-- != 0;
    v24 = v23;
    if (v23)
    {
      switch(*v21)
      {
        case 2:
LABEL_13:

LABEL_14:
          v24 = 1;
          break;
        default:
          v22 = sub_2528C1060();

          ++v21;
          if ((v22 & 1) == 0)
          {
            continue;
          }

          break;
      }
    }

    break;
  }

  v25 = v15;
  v26 = (a2 + 32);
  while (2)
  {
    if (v25)
    {
      switch(*v26)
      {
        case 1:
          v28 = v57;
          goto LABEL_53;
        default:
          v27 = sub_2528C1060();

          ++v26;
          --v25;
          if ((v27 & 1) == 0)
          {
            continue;
          }

          v31 = 1;
          v28 = v57;
          break;
      }
    }

    else
    {
      v28 = v57;
      while (2)
      {
        v30 = v15-- != 0;
        v31 = v30;
        if (v30)
        {
          switch(*v16)
          {
            case 2:
LABEL_53:

              v31 = 1;
              break;
            default:
              v29 = sub_2528C1060();

              ++v16;
              if ((v29 & 1) == 0)
              {
                continue;
              }

              break;
          }
        }

        break;
      }
    }

    break;
  }

  v33 = v60;
  v32 = v61;
  v34 = *(v60 + 16);
  v35 = v58;
  v34(v28, v58, v61);
  sub_25279F404(v28, &v63);
  v36 = v63;
  v37 = v59;
  v34(v59, v35, v32);
  v38 = (*(v33 + 88))(v37, v32);
  if (v38 != *MEMORY[0x277D16818])
  {
    if (v38 == *MEMORY[0x277D167F0])
    {
      v44 = v52;
      v34(v52, v37, v32);
      (*(v33 + 96))(v44, v32);
      v46 = v53;
      v45 = v54;
      v47 = v55;
      (*(v54 + 32))(v53, v44, v55);
      v48 = (*(v45 + 88))(v46, v47);
      if (v48 == *MEMORY[0x277D16798] || v48 == *MEMORY[0x277D16788])
      {
        v50 = v24 == 0;
      }

      else
      {
        if (v48 != *MEMORY[0x277D167A0] && v48 != *MEMORY[0x277D167B0] && v48 != *MEMORY[0x277D167A8] && v48 != *MEMORY[0x277D167D0] && v48 != *MEMORY[0x277D167B8] && v48 != *MEMORY[0x277D167C8])
        {
          (*(v45 + 8))(v46, v47);
          goto LABEL_50;
        }

        v50 = v31 == 0;
      }

      if (v50)
      {
        v36 = 20;
      }
    }

LABEL_50:
    v43 = v62;
    goto LABEL_51;
  }

  v39 = v56;
  v34(v56, v37, v32);
  (*(v33 + 96))(v39, v32);
  v40 = sub_2528C03A0();
  v41 = *(v40 - 8);
  v42 = (*(v41 + 88))(v39, v40);
  v43 = v62;
  if (v42 == *MEMORY[0x277D16800])
  {
    v36 = 20;
  }

  else
  {
    (*(v41 + 8))(v39, v40);
  }

LABEL_51:
  result = (*(v33 + 8))(v37, v32);
  *v43 = v36;
  return result;
}

void sub_252726504(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v94 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC200, &qword_2528C3920);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = &v73 - v6;
  v81 = sub_2528BFE20();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2528C03B0();
  v74 = *(v75 - 8);
  v8 = MEMORY[0x28223BE20](v75);
  v73 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v89 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC208, &qword_2528C6B40);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v90 = (&v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v78 = &v73 - v14;
  v15 = sub_2528C04F0();
  v92 = *(v15 - 8);
  v93 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v80 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v76 = &v73 - v18;
  v19 = sub_2528BF0B0();
  v87 = *(v19 - 8);
  v88 = v19;
  MEMORY[0x28223BE20](v19);
  v86 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2528BF0F0();
  v84 = *(v21 - 8);
  v85 = v21;
  MEMORY[0x28223BE20](v21);
  v83 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2528BFE00();
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2528BFE50();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v73 - v31;
  v33 = *(a1 + 32);
  swift_getErrorValue();
  v34 = sub_252727198(v97[2]);
  v97[0] = a2;
  v35 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC210, &qword_2528C6230);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  v27[4](v30, v32, v26);
  sub_2528BFE40();
  sub_25279FC6C(v25, &v96);
  v36 = v96;
  if (v96 != 20)
  {
    v41 = v83;
    sub_2528BFE30();
    v42 = v86;
    sub_2528BF0D0();
    (*(v84 + 8))(v41, v85);
    LOBYTE(v41) = sub_2528BF080();
    (*(v87 + 8))(v42, v88);
    if (v41)
    {
      sub_2528BFB20();
      v43 = v78;
      sub_2528BFA40();
      v45 = v92;
      v44 = v93;
      if ((*(v92 + 48))(v43, 1, v93) == 1)
      {
        (v27[1])(v30, v26);
        sub_2527213D8(v43, &qword_27F4FC208, &qword_2528C6B40);
      }

      else
      {
        v91 = v26;
        v65 = v76;
        (*(v45 + 32))(v76, v43, v44);
        LOBYTE(v96) = v36;
        if (DeviceError.rawValue.getter() == 0xD00000000000001DLL && 0x80000002528E4A90 == v66)
        {

          v67 = v89;
        }

        else
        {
          v68 = sub_2528C1060();

          v67 = v89;
          if ((v68 & 1) == 0)
          {
            (*(v45 + 8))(v65, v44);
            (v27[1])(v30, v91);
            goto LABEL_20;
          }
        }

        v89 = v30;
        v90 = v27;
        sub_2528C0400();
        v69 = v73;
        sub_2528C0370();
        sub_25272C1FC(&qword_27F4FC218, MEMORY[0x277D16828], MEMORY[0x277D16830]);
        v70 = v75;
        v71 = sub_2528C0930();
        v72 = *(v74 + 8);
        v72(v69, v70);
        v72(v67, v70);
        if (v71)
        {
          (*(v45 + 8))(v65, v44);
          v90[1](v89, v91);
        }

        else
        {
          sub_2528C0400();
          sub_25279F404(v67, &v96);
          (*(v45 + 8))(v65, v44);
          v90[1](v89, v91);
          if (v96 != 20)
          {
            v58 = v94;
            *v94 = v96;
            goto LABEL_21;
          }
        }
      }
    }

    else
    {
      (v27[1])(v30, v26);
    }

LABEL_20:
    v58 = v94;
    *v94 = v36;
LABEL_21:
    v58[1] = 0;
    v58[2] = 0;
    v58[3] = 0;
    *(v58 + 16) = 512;

    return;
  }

  (v27[1])(v30, v26);
LABEL_4:

  if ((v34 & ((v33 & 0xFC) == 96)) == 1)
  {
    sub_2528BFB20();
    v37 = v90;
    sub_2528BFA40();
    v39 = v92;
    v38 = v93;
    if ((*(v92 + 48))(v37, 1, v93) == 1)
    {
      sub_2527213D8(v37, &qword_27F4FC208, &qword_2528C6B40);
      v40 = v94;
      *v94 = 0u;
      *(v40 + 1) = 0u;
LABEL_51:
      v52 = 256;
      goto LABEL_52;
    }

    v46 = v80;
    (*(v39 + 32))(v80, v37, v38);
    v47 = v89;
    sub_2528C0400();
    sub_25279F404(v47, v97);
    (*(v39 + 8))(v46, v38);
    if (LOBYTE(v97[0]) != 20)
    {
      v40 = v94;
      *v94 = LOBYTE(v97[0]);
      v40[1] = 0;
      v40[2] = 0;
      v40[3] = 0;
      v52 = 512;
      goto LABEL_52;
    }
  }

  v97[0] = a2;
  v48 = a2;
  type metadata accessor for HMError(0);
  if (!swift_dynamicCast())
  {
    v97[0] = a2;
    v53 = a2;
    type metadata accessor for MTRError(0);
    if (swift_dynamicCast())
    {
      v54 = v96;
      v97[0] = v96;
      sub_25272C1FC(&qword_27F4FC090, type metadata accessor for MTRError, &unk_2528C3114);
      sub_2528BEBE0();

      v55 = v96;
      if (v96 > 17)
      {
        v57 = v81;
        v56 = v82;
        if (v96 == 18)
        {
          goto LABEL_41;
        }

        if (v96 == 19)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v57 = v81;
        v56 = v82;
        if (v96 == 9)
        {
LABEL_49:
          v40 = v94;
          *v94 = v55;
          goto LABEL_50;
        }

        if (v96 == 17)
        {
LABEL_28:
          v55 = 15;
          goto LABEL_49;
        }
      }
    }

    else
    {
      v57 = v81;
      v56 = v82;
    }

    v97[0] = a2;
    v59 = a2;
    v60 = swift_dynamicCast();
    v61 = *(v79 + 56);
    if ((v60 & 1) == 0)
    {
      v61(v56, 1, 1, v57);
      sub_2527213D8(v56, &qword_27F4FC200, &qword_2528C3920);
      goto LABEL_31;
    }

    v62 = v79;
    v61(v56, 0, 1, v57);
    v63 = v77;
    (*(v62 + 32))(v77, v56, v57);
    v64 = sub_2528BFE10();
    (*(v62 + 8))(v63, v57);
    if (v64 <= 17)
    {
      if (v64 == 9)
      {
        v55 = 9;
        goto LABEL_49;
      }

      if (v64 == 17)
      {
        goto LABEL_28;
      }

LABEL_31:
      v55 = 2;
      goto LABEL_49;
    }

    if (v64 != 18)
    {
      if (v64 != 19)
      {
        goto LABEL_31;
      }

LABEL_40:
      v55 = 1;
      goto LABEL_49;
    }

LABEL_41:
    v55 = 8;
    goto LABEL_49;
  }

  v49 = v96;
  v97[0] = v96;
  sub_25272C1FC(&qword_27F4FC0D0, type metadata accessor for HMError, &unk_2528C3258);
  sub_2528BEBE0();
  sub_2527A0688(v96, &v95);
  v50 = v95;
  if (v95 != 20)
  {

    v40 = v94;
    *v94 = v50;
LABEL_50:
    v40[1] = 0;
    v40[2] = 0;
    v40[3] = 0;
    goto LABEL_51;
  }

  v97[0] = v49;
  v51 = sub_2528BEC00();

  v40 = v94;
  *v94 = v51;
  v40[1] = 0;
  v40[2] = 0;
  v40[3] = 0;
  v52 = 768;
LABEL_52:
  *(v40 + 16) = v52;
}

uint64_t sub_252727198(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2528BFE20();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  v12 = *(a1 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v2, a1);
  type metadata accessor for HMError(0);
  if (swift_dynamicCast())
  {
    v15 = v24;
    v23 = v24;
    sub_25272C1FC(&qword_27F4FC0D0, type metadata accessor for HMError, &unk_2528C3258);
    sub_2528BEBE0();
    if (v22 == 8)
    {

      v16 = 1;
      goto LABEL_12;
    }

    v23 = v15;
    sub_2528BEBE0();

    v18 = v22 == 100;
  }

  else
  {
    type metadata accessor for MTRError(0);
    if (swift_dynamicCast())
    {
      v17 = v24;
      v23 = v24;
      sub_25272C1FC(&qword_27F4FC090, type metadata accessor for MTRError, &unk_2528C3114);
      sub_2528BEBE0();

      v18 = v22 == 9;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        v16 = 0;
        goto LABEL_12;
      }

      (*(v5 + 32))(v8, v11, v4);
      v19 = sub_2528BFE10();
      (*(v5 + 8))(v8, v4);
      v18 = v19 == 9;
    }
  }

  v16 = v18;
LABEL_12:
  (*(v12 + 8))(v14, a1);
  return v16;
}

uint64_t sub_2527274C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC208, &qword_2528C6B40);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v40 = sub_2528C04F0();
  v10 = *(v40 - 8);
  v11 = MEMORY[0x28223BE20](v40);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = sub_2528BF290();
  v41 = *(v16 - 8);
  v42 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2528C0260();
  v20 = *(v19 - 8);
  v44 = v19;
  v45 = v20;
  MEMORY[0x28223BE20](v19);
  v43 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  LODWORD(a1) = *(a1 + 32);
  v46 = a2;
  result = sub_2528C0250();
  v24 = a1 >> 1;
  if (a1 >> 1 == 49)
  {
    sub_2528BFB20();
    sub_2528BFA40();
    v28 = v40;
    if ((*(v10 + 48))(v7, 1, v40) == 1)
    {
      v29 = v7;
      return sub_2527213D8(v29, &qword_27F4FC208, &qword_2528C6B40);
    }

    (*(v10 + 32))(v13, v7, v28);
    LOBYTE(v47[0]) = v22;
    if (RobotVacuumCleanerRunState.rawValue.getter() == 0x676E696E6E7572 && v30 == 0xE700000000000000)
    {
    }

    else
    {
      v33 = sub_2528C1060();

      if ((v33 & 1) == 0)
      {
        LOBYTE(v47[0]) = v22;
        if (RobotVacuumCleanerRunState.rawValue.getter() == 0x646570706F7473 && v36 == 0xE700000000000000)
        {
        }

        else
        {
          v37 = sub_2528C1060();

          if ((v37 & 1) == 0)
          {
            LOBYTE(v47[0]) = v22;
            if (RobotVacuumCleanerRunState.rawValue.getter() == 0x646573756170 && v38 == 0xE600000000000000)
            {
            }

            else
            {
              v39 = sub_2528C1060();

              if ((v39 & 1) == 0)
              {
                return (*(v10 + 8))(v13, v28);
              }
            }

            v34 = v43;
            sub_2528C0340();
LABEL_22:
            sub_2528C0230();
            (*(v45 + 8))(v34, v44);
            return (*(v10 + 8))(v13, v28);
          }
        }

        v34 = v43;
        sub_2528C0270();
        goto LABEL_22;
      }
    }

    v34 = v43;
    sub_2528C0350();
    goto LABEL_22;
  }

  if (v24 == 48)
  {
    if (!v22)
    {
      v25 = sub_2528C0460();
      v48 = v25;
      v49 = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8], MEMORY[0x277D169D8]);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v47);
      v27 = MEMORY[0x277D168D8];
      goto LABEL_16;
    }

    if (v22 == 1)
    {
      v25 = sub_2528C0460();
      v48 = v25;
      v49 = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8], MEMORY[0x277D169D8]);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v47);
      v27 = MEMORY[0x277D168E0];
LABEL_16:
      (*(*(v25 - 8) + 104))(boxed_opaque_existential_0Tm, *v27, v25);
      sub_2528BFAB0();
      sub_2528BF250();
      (*(v41 + 8))(v18, v42);
      v31 = v43;
      sub_2528C0220();
      (*(v45 + 8))(v31, v44);
      return __swift_destroy_boxed_opaque_existential_0Tm(v47);
    }

    sub_2528BFB20();
    sub_2528BFA40();
    v32 = v40;
    if ((*(v10 + 48))(v9, 1, v40) != 1)
    {
      (*(v10 + 32))(v15, v9, v32);
      v35 = v43;
      sub_2528C0270();
      sub_2528C0230();
      (*(v45 + 8))(v35, v44);
      return (*(v10 + 8))(v15, v32);
    }

    v29 = v9;
    return sub_2527213D8(v29, &qword_27F4FC208, &qword_2528C6B40);
  }

  if (v24 == 44)
  {
    v25 = sub_2528BFFB0();
    v48 = v25;
    v49 = sub_25272C1FC(&qword_27F4FC2A0, MEMORY[0x277D16490], MEMORY[0x277D16480]);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v47);
    if (v22)
    {
      v27 = MEMORY[0x277D16470];
    }

    else
    {
      v27 = MEMORY[0x277D16478];
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t sub_252727C6C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2528BED90();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void *sub_252727CD8(uint64_t *a1)
{
  v2 = sub_2528C03F0();
  v170 = *(v2 - 8);
  v171 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v168 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v169 = &v156 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC288, &qword_2528C3950);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v174 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v172 = &v156 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v173 = &v156 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v175 = &v156 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v156 - v16;
  MEMORY[0x28223BE20](v15);
  v167 = &v156 - v18;
  v19 = sub_2528C0460();
  v176 = *(v19 - 8);
  v177 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v156 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v156 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v156 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v156 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v156 - v36;
  MEMORY[0x28223BE20](v35);
  v166 = &v156 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC208, &qword_2528C6B40);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v42 = &v156 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v44 = &v156 - v43;
  v180 = sub_2528C04F0();
  v45 = MEMORY[0x28223BE20](v180);
  MEMORY[0x28223BE20](v45);
  v179 = *a1;
  v49 = *(a1 + 32);
  v50 = v49 >> 1;
  if (v49 >> 1 != 49)
  {
    if (v50 != 48)
    {
      if (v50 == 44)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC290, &qword_2528C4810);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_2528C3910;
        v52 = sub_2528BFFB0();
        *(v51 + 56) = v52;
        *(v51 + 64) = sub_25272C1FC(&qword_27F4FC2A0, MEMORY[0x277D16490], MEMORY[0x277D16480]);
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v51 + 32));
        if (v179)
        {
          v54 = MEMORY[0x277D16470];
        }

        else
        {
          v54 = MEMORY[0x277D16478];
        }

        (*(*(v52 - 8) + 104))(boxed_opaque_existential_0Tm, *v54, v52);
        v64 = sub_252737A38(0, 1, 1, MEMORY[0x277D84F90]);
        v75 = v64[2];
        v74 = v64[3];
        v76 = v75 + 1;
        if (v75 >= v74 >> 1)
        {
          v64 = sub_252737A38((v74 > 1), v75 + 1, 1, v64);
        }

        goto LABEL_106;
      }

      return MEMORY[0x277D84F90];
    }

    v55 = &v156 - v46;
    v56 = v47;
    sub_2528BFB20();
    sub_2528BFA40();
    v57 = v180;
    if ((*(v56 + 48))(v44, 1, v180) == 1)
    {
      v58 = v44;
LABEL_10:
      sub_2527213D8(v58, &qword_27F4FC208, &qword_2528C6B40);
      return MEMORY[0x277D84F90];
    }

    v65 = v56;
    (*(v56 + 32))(v55, v44, v57);
    if (v179)
    {
      v66 = v177;
      if (v179 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC290, &qword_2528C4810);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_2528C3910;
        *(v51 + 56) = v66;
        *(v51 + 64) = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8], MEMORY[0x277D169D8]);
        __swift_allocate_boxed_opaque_existential_0Tm((v51 + 32));
        sub_2528C0300();
        goto LABEL_49;
      }

      v104 = v167;
      sub_2528C0280();
      v105 = v176;
      if ((*(v176 + 48))(v104, 1, v66) != 1)
      {
        v141 = v166;
        (*(v105 + 32))(v166, v104, v66);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC290, &qword_2528C4810);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_2528C3910;
        *(v51 + 56) = v66;
        *(v51 + 64) = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8], MEMORY[0x277D169D8]);
        v142 = __swift_allocate_boxed_opaque_existential_0Tm((v51 + 32));
        (*(v105 + 16))(v142, v141, v66);
        v64 = sub_252737A38(0, 1, 1, MEMORY[0x277D84F90]);
        v75 = v64[2];
        v143 = v64[3];
        v76 = v75 + 1;
        if (v75 >= v143 >> 1)
        {
          v64 = sub_252737A38((v143 > 1), v75 + 1, 1, v64);
        }

        (*(v105 + 8))(v141, v66);
        goto LABEL_51;
      }

      sub_2527213D8(v104, &qword_27F4FC288, &qword_2528C3950);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC290, &qword_2528C4810);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_2528C3910;
      *(v51 + 56) = v66;
      *(v51 + 64) = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8], MEMORY[0x277D169D8]);
      __swift_allocate_boxed_opaque_existential_0Tm((v51 + 32));
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC290, &qword_2528C4810);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_2528C3910;
      *(v51 + 56) = v177;
      *(v51 + 64) = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8], MEMORY[0x277D169D8]);
      __swift_allocate_boxed_opaque_existential_0Tm((v51 + 32));
    }

    sub_2528C02E0();
LABEL_49:
    v64 = sub_252737A38(0, 1, 1, MEMORY[0x277D84F90]);
    v75 = v64[2];
    v106 = v64[3];
    v76 = v75 + 1;
    if (v75 >= v106 >> 1)
    {
      v64 = sub_252737A38((v106 > 1), v75 + 1, 1, v64);
    }

LABEL_51:
    (*(v65 + 8))(v55, v180);
LABEL_106:
    v64[2] = v76;
    v64[v75 + 4] = v51;
    return v64;
  }

  v159 = v17;
  v160 = v37;
  LODWORD(v166) = v49;
  v162 = v34;
  v163 = v31;
  v161 = v28;
  v164 = v25;
  v165 = v22;
  v167 = v48;
  v59 = a1[2];
  v60 = a1[3];
  v61 = a1[1];
  v62 = v47;
  sub_2528BFB20();
  sub_2528BFA40();
  v63 = v180;
  if ((*(v62 + 48))(v42, 1, v180) == 1)
  {
    v58 = v42;
    goto LABEL_10;
  }

  v158 = v62;
  v67 = *(v62 + 32);
  v68 = v167;
  v67(v167, v42, v63);
  LOBYTE(v181) = v179;
  if (RobotVacuumCleanerRunState.rawValue.getter() == 0x676E696E6E7572 && v69 == 0xE700000000000000)
  {

    v70 = v175;
    v72 = v170;
    v71 = v171;
    v73 = v169;
  }

  else
  {
    v77 = sub_2528C1060();

    v70 = v175;
    v72 = v170;
    v71 = v171;
    v73 = v169;
    if ((v77 & 1) == 0)
    {
      v64 = MEMORY[0x277D84F90];
      v108 = v176;
      v83 = v177;
      v109 = v165;
      v110 = v174;
      goto LABEL_84;
    }
  }

  *&v178 = v59;
  sub_2528C0410();
  v78 = v68;
  v79 = v168;
  (*(v72 + 104))(v168, *MEMORY[0x277D16878], v71);
  v80 = sub_2528C03E0();
  v81 = *(v72 + 8);
  v81(v79, v71);
  v81(v73, v71);
  v157 = v61;
  v156 = v60;
  if ((v80 & 1) == 0)
  {
    v64 = MEMORY[0x277D84F90];
    v84 = v176;
    v83 = v177;
    v86 = v166;
    v68 = v78;
    v87 = v178;
    if (!v178)
    {
      goto LABEL_60;
    }

    goto LABEL_27;
  }

  v82 = v159;
  sub_2528C02B0();
  v84 = v176;
  v83 = v177;
  v85 = (*(v176 + 48))(v82, 1, v177);
  v86 = v166;
  v68 = v78;
  if (v85 == 1)
  {
    sub_2527213D8(v82, &qword_27F4FC288, &qword_2528C3950);
    v64 = MEMORY[0x277D84F90];
    v87 = v178;
    if (!v178)
    {
      goto LABEL_60;
    }

LABEL_27:
    v88 = *(v87 + 16);
    v89 = MEMORY[0x277D84F90];
    if (v88)
    {
      *&v181 = MEMORY[0x277D84F90];
      sub_25282EEDC(0, v88, 0);
      v89 = v181;
      v90 = (v87 + 32);
      *&v91 = 134217984;
      v178 = v91;
      do
      {
        v93 = *v90++;
        v92 = v93;
        if (v93 < 0x100000000)
        {
          if (v92 < 0)
          {
            if (qword_27F4FBB40 != -1)
            {
              swift_once();
            }

            v98 = sub_2528C08B0();
            __swift_project_value_buffer(v98, qword_27F5025C8);
            v99 = sub_2528C0890();
            v100 = sub_2528C0D00();
            if (os_log_type_enabled(v99, v100))
            {
              v101 = swift_slowAlloc();
              *v101 = v178;
              *(v101 + 4) = v92;
              _os_log_impl(&dword_252711000, v99, v100, "Tried to convert a Int lower than 0 to UInt32: %ld", v101, 0xCu);
              MEMORY[0x2530A8D80](v101, -1, -1);
            }

            LODWORD(v92) = 0;
          }
        }

        else
        {
          if (qword_27F4FBB40 != -1)
          {
            swift_once();
          }

          v94 = sub_2528C08B0();
          __swift_project_value_buffer(v94, qword_27F5025C8);
          v95 = sub_2528C0890();
          v96 = sub_2528C0D00();
          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            *v97 = v178;
            *(v97 + 4) = v92;
            _os_log_impl(&dword_252711000, v95, v96, "Tried to convert a Int larger than max to UInt32: %ld", v97, 0xCu);
            MEMORY[0x2530A8D80](v97, -1, -1);
          }

          LODWORD(v92) = -1;
        }

        *&v181 = v89;
        v103 = *(v89 + 16);
        v102 = *(v89 + 24);
        if (v103 >= v102 >> 1)
        {
          sub_25282EEDC((v102 > 1), v103 + 1, 1);
          v89 = v181;
        }

        *(v89 + 16) = v103 + 1;
        *(v89 + 4 * v103 + 32) = v92;
        --v88;
      }

      while (v88);
      v84 = v176;
      v83 = v177;
      v68 = v167;
      v107 = v173;
      v86 = v166;
    }

    else
    {
      v107 = v173;
    }

    v70 = v175;
    if ((v86 & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_64:
    v120 = 0;
    goto LABEL_65;
  }

  (*(v84 + 32))(v160, v82, v83);
  v87 = v178;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v111 = sub_2528C08B0();
  __swift_project_value_buffer(v111, qword_27F5025C8);
  v112 = sub_2528C0890();
  v113 = sub_2528C0D10();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 0;
    _os_log_impl(&dword_252711000, v112, v113, "Handling request to start rvc while paused. Stopping current run first.", v114, 2u);
    MEMORY[0x2530A8D80](v114, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC290, &qword_2528C4810);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_2528C3910;
  *(v115 + 56) = v83;
  *(v115 + 64) = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8], MEMORY[0x277D169D8]);
  v116 = __swift_allocate_boxed_opaque_existential_0Tm((v115 + 32));
  v117 = v160;
  (*(v84 + 16))(v116, v160, v83);
  v64 = sub_252737A38(0, 1, 1, MEMORY[0x277D84F90]);
  v119 = v64[2];
  v118 = v64[3];
  if (v119 >= v118 >> 1)
  {
    v64 = sub_252737A38((v118 > 1), v119 + 1, 1, v64);
  }

  (*(v84 + 8))(v117, v83);
  v64[2] = v119 + 1;
  v64[v119 + 4] = v115;
  v70 = v175;
  if (v87)
  {
    goto LABEL_27;
  }

LABEL_60:
  v89 = 0;
  v107 = v173;
  if (v86)
  {
    goto LABEL_64;
  }

LABEL_61:
  v120 = Int.uint32.getter(v156);
LABEL_65:
  LOBYTE(v181) = v86 & 1;
  sub_252729508(v89, v120 | ((v86 & 1) << 32), v70);

  v121 = *(v84 + 48);
  if (v121(v70, 1, v83) == 1)
  {
    sub_2527213D8(v70, &qword_27F4FC288, &qword_2528C3950);
    v122 = MEMORY[0x277D84F90];
  }

  else
  {
    v123 = v162;
    (*(v84 + 32))(v162, v70, v83);
    v124 = *(v84 + 16);
    v124(v163, v123, v83);
    v122 = sub_252737A14(0, 1, 1, MEMORY[0x277D84F90]);
    v126 = v122[2];
    v125 = v122[3];
    *&v178 = v124;
    v175 = (v126 + 1);
    if (v126 >= v125 >> 1)
    {
      v122 = sub_252737A14((v125 > 1), v126 + 1, 1, v122);
    }

    v127 = *(v84 + 8);
    v83 = v177;
    v127(v162, v177);
    v182 = v83;
    v183 = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8], MEMORY[0x277D169D8]);
    v128 = __swift_allocate_boxed_opaque_existential_0Tm(&v181);
    v129 = v163;
    (v178)(v128, v163, v83);
    v122[2] = v175;
    sub_25271A650(&v181, &v122[5 * v126 + 4]);
    v127(v129, v83);
    v68 = v167;
    v107 = v173;
  }

  sub_25272972C(v157, v107);
  if (v121(v107, 1, v83) == 1)
  {
    sub_2527213D8(v107, &qword_27F4FC288, &qword_2528C3950);
    v108 = v176;
  }

  else
  {
    v108 = v176;
    v130 = v161;
    (*(v176 + 32))(v161, v107, v83);
    v131 = *(v108 + 16);
    v131(v164, v130, v83);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v178 = v131;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v122 = sub_252737A14(0, v122[2] + 1, 1, v122);
    }

    v134 = v122[2];
    v133 = v122[3];
    if (v134 >= v133 >> 1)
    {
      v122 = sub_252737A14((v133 > 1), v134 + 1, 1, v122);
    }

    v135 = *(v108 + 8);
    v135(v130, v83);
    v182 = v83;
    v183 = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8], MEMORY[0x277D169D8]);
    v136 = __swift_allocate_boxed_opaque_existential_0Tm(&v181);
    v137 = v164;
    (v178)(v136, v164, v83);
    v122[2] = v134 + 1;
    sub_25271A650(&v181, &v122[5 * v134 + 4]);
    v135(v137, v83);
    v68 = v167;
  }

  v109 = v165;
  v110 = v174;
  if (v122[2])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_252737A38(0, v64[2] + 1, 1, v64);
    }

    v139 = v64[2];
    v138 = v64[3];
    if (v139 >= v138 >> 1)
    {
      v64 = sub_252737A38((v138 > 1), v139 + 1, 1, v64);
    }

    v64[2] = v139 + 1;
    v64[v139 + 4] = v122;
    v110 = v174;
  }

  else
  {
  }

LABEL_84:
  v140 = v172;
  if (v179 > 3u)
  {
    if (v179 - 4 >= 3)
    {
LABEL_94:
      (*(v108 + 56))(v110, 1, 1, v83);
      goto LABEL_96;
    }

LABEL_90:
    sub_2528C0280();
    goto LABEL_96;
  }

  if (!v179)
  {
    goto LABEL_90;
  }

  if (v179 == 1)
  {
    sub_2528C02F0();
    goto LABEL_96;
  }

  if (v179 != 2)
  {
    goto LABEL_94;
  }

  sub_2528C02E0();
  (*(v108 + 56))(v110, 0, 1, v83);
LABEL_96:
  sub_25272C03C(v110, v140);
  if ((*(v108 + 48))(v140, 1, v83) != 1)
  {
    (*(v108 + 32))(v109, v140, v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC290, &qword_2528C4810);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_2528C3910;
    *(v51 + 56) = v83;
    *(v51 + 64) = sub_25272C1FC(&qword_27F4FC298, MEMORY[0x277D169E8], MEMORY[0x277D169D8]);
    v153 = __swift_allocate_boxed_opaque_existential_0Tm((v51 + 32));
    (*(v108 + 16))(v153, v109, v83);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_252737A38(0, v64[2] + 1, 1, v64);
    }

    v75 = v64[2];
    v154 = v64[3];
    v76 = v75 + 1;
    if (v75 >= v154 >> 1)
    {
      v64 = sub_252737A38((v154 > 1), v75 + 1, 1, v64);
    }

    (*(v108 + 8))(v109, v83);
    (*(v158 + 8))(v68, v180);
    goto LABEL_106;
  }

  sub_2527213D8(v140, &qword_27F4FC288, &qword_2528C3950);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v144 = sub_2528C08B0();
  __swift_project_value_buffer(v144, qword_27F5025C8);
  v145 = sub_2528C0890();
  v146 = sub_2528C0CF0();
  if (os_log_type_enabled(v145, v146))
  {
    v147 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    *&v181 = v148;
    *v147 = 136446210;
    v184 = v179;
    v149 = RobotVacuumCleanerRunState.rawValue.getter();
    v151 = v68;
    v152 = sub_2527389AC(v149, v150, &v181);

    *(v147 + 4) = v152;
    _os_log_impl(&dword_252711000, v145, v146, "Unexpected run state %{public}s. Not changing run mode", v147, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v148);
    MEMORY[0x2530A8D80](v148, -1, -1);
    MEMORY[0x2530A8D80](v147, -1, -1);

    (*(v158 + 8))(v151, v180);
  }

  else
  {

    (*(v158 + 8))(v68, v180);
  }

  return v64;
}

uint64_t sub_252729508@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC2A8, &qword_2528C3958);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-v7];
  v9 = sub_2528BF1E0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2528C02A0();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2527213D8(v8, &qword_27F4FC2A8, &qword_2528C3958);
    v13 = 1;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_25284C2E4(a1, a2 | ((HIDWORD(a2) & 1) << 32));
    sub_2528C0310();

    (*(v10 + 8))(v12, v9);
    v13 = 0;
  }

  v14 = sub_2528C0460();
  return (*(*(v14 - 8) + 56))(a3, v13, 1, v14);
}

uint64_t sub_25272972C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2528BF290();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2528C04F0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2528C0570();
  v107 = *(v85 - 8);
  v12 = MEMORY[0x28223BE20](v85);
  v106 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v105 = &v71 - v14;
  v15 = sub_2528C04E0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v83 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC1F8, &unk_2528D5510);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v84 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v108 = a1;
  v22 = *(a1 + 16);
  if (v22)
  {
    v79 = v16;
    v80 = v15;
    v75 = v11;
    v81 = &v71 - v21;
    v76 = v9;
    v77 = v8;
    v74 = v4;
    v82 = a2;
    v23 = 0;
    v24 = v22;
    v25 = v108;
    v103 = v22;
    while (2)
    {
      v27 = v23;
      if (v22 != v23)
      {
        switch(*(v25 + v23 + 32))
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
          case 0xD:
            v26 = sub_2528C1060();

            v23 = v27 + 1;
            v22 = v103;
            if ((v26 & 1) == 0)
            {
              continue;
            }

            break;
          default:

            v22 = v103;
            break;
        }
      }

      break;
    }

    v78 = v27;
    v72 = v7;
    v31 = 0;
    while (2)
    {
      v33 = v31;
      if (v22 != v31)
      {
        switch(*(v25 + v31 + 32))
        {
          case 1:

            break;
          default:
            v32 = sub_2528C1060();

            v31 = v33 + 1;
            v22 = v103;
            if ((v32 & 1) == 0)
            {
              continue;
            }

            break;
        }
      }

      break;
    }

    v73 = v5;
    v109 = MEMORY[0x277D84F90];
    sub_25282EF40(0, v24, 0);
    v34 = v109;
    v100 = *MEMORY[0x277D16A18];
    v102 = *MEMORY[0x277D16A60];
    v104 = (v107 + 104);
    v99 = *MEMORY[0x277D16A20];
    v98 = *MEMORY[0x277D16A10];
    v97 = *MEMORY[0x277D16A30];
    v96 = *MEMORY[0x277D16A50];
    v95 = *MEMORY[0x277D16A58];
    v94 = *MEMORY[0x277D16A48];
    v93 = *MEMORY[0x277D16A40];
    v92 = *MEMORY[0x277D16A38];
    v91 = *MEMORY[0x277D16A28];
    v90 = *MEMORY[0x277D16A98];
    v101 = *MEMORY[0x277D16AA8];
    v89 = *MEMORY[0x277D16A70];
    v88 = *MEMORY[0x277D16A78];
    v35 = (v107 + 32);
    v36 = 32;
    v87 = *MEMORY[0x277D16A88];
    v37 = v85;
    v38 = v105;
    do
    {
      switch(*(v108 + v36))
      {
        case 1:
          v39 = sub_2528C0550();
          v40 = v88;
          v41 = v101;
          break;
        case 2:
          v39 = sub_2528C0550();
          v40 = v89;
          v41 = v101;
          break;
        case 3:
          v39 = sub_2528C0550();
          v40 = v90;
          v41 = v101;
          break;
        case 4:
          v39 = sub_2528C0540();
          v40 = v91;
          goto LABEL_31;
        case 5:
          v39 = sub_2528C0540();
          v40 = v93;
          goto LABEL_31;
        case 6:
          v39 = sub_2528C0540();
          v40 = v92;
          goto LABEL_31;
        case 7:
          v39 = sub_2528C0540();
          v40 = v94;
          goto LABEL_31;
        case 8:
          v39 = sub_2528C0540();
          v40 = v95;
          goto LABEL_31;
        case 9:
          v39 = sub_2528C0540();
          v40 = v96;
          goto LABEL_31;
        case 0xA:
          v39 = sub_2528C0540();
          v40 = v97;
          goto LABEL_31;
        case 0xB:
          v39 = sub_2528C0540();
          v40 = v98;
          goto LABEL_31;
        case 0xC:
          v39 = sub_2528C0540();
          v40 = v99;
          goto LABEL_31;
        case 0xD:
          v39 = sub_2528C0540();
          v40 = v100;
LABEL_31:
          v41 = v102;
          break;
        default:
          v39 = sub_2528C0550();
          v40 = v87;
          v41 = v101;
          break;
      }

      v42 = v106;
      (*(*(v39 - 8) + 104))(v106, v40);
      (*v104)(v42, v41, v37);
      v43 = *v35;
      (*v35)(v38, v42, v37);
      v109 = v34;
      v44 = v37;
      v46 = *(v34 + 16);
      v45 = *(v34 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_25282EF40((v45 > 1), v46 + 1, 1);
        v34 = v109;
      }

      *(v34 + 16) = v46 + 1;
      v43((v34 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v46), v38, v44);
      ++v36;
      --v24;
      v37 = v44;
    }

    while (v24);
    sub_252743BB8(v34);

    v47 = v81;
    v48 = v86;
    sub_2528C03D0();

    v49 = v84;
    sub_25272006C(v47, v84, &qword_27F4FC1F8, &unk_2528D5510);
    v50 = v79;
    v51 = v80;
    if ((*(v79 + 48))(v49, 1, v80) == 1)
    {
      sub_2527213D8(v49, &qword_27F4FC1F8, &unk_2528D5510);
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v52 = sub_2528C08B0();
      __swift_project_value_buffer(v52, qword_27F5025C8);
      v53 = v76;
      v54 = v75;
      v55 = v77;
      (*(v76 + 16))(v75, v48, v77);
      v56 = v108;

      v57 = sub_2528C0890();
      v58 = sub_2528C0CF0();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = v56;
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v109 = v61;
        *v60 = 136446466;
        v62 = MEMORY[0x2530A81A0](v59, &type metadata for RobotVacuumCleanerCleanMode);
        v64 = sub_2527389AC(v62, v63, &v109);

        *(v60 + 4) = v64;
        *(v60 + 12) = 2048;
        v65 = v72;
        sub_2528C02D0();
        v66 = sub_2528BF0E0();
        (*(v73 + 8))(v65, v74);
        (*(v53 + 8))(v54, v55);
        *(v60 + 14) = v66;
        _os_log_impl(&dword_252711000, v57, v58, "Failed to find cleanMode for %{public}s in rvc clusters on %llu", v60, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v61);
        MEMORY[0x2530A8D80](v61, -1, -1);
        MEMORY[0x2530A8D80](v60, -1, -1);
      }

      else
      {
        (*(v53 + 8))(v54, v55);
      }

      sub_2527213D8(v47, &qword_27F4FC1F8, &unk_2528D5510);
      v70 = sub_2528C0460();
      return (*(*(v70 - 8) + 56))(v82, 1, 1, v70);
    }

    else
    {
      v67 = v83;
      (*(v50 + 32))(v83, v49, v51);
      sub_2528C04B0();
      v68 = v82;
      sub_2528C03C0();
      (*(v50 + 8))(v67, v51);
      sub_2527213D8(v47, &qword_27F4FC1F8, &unk_2528D5510);
      v69 = sub_2528C0460();
      return (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
    }
  }

  else
  {
    v28 = sub_2528C0460();
    v29 = *(*(v28 - 8) + 56);

    return v29(a2, 1, 1, v28);
  }
}

void sub_25272A4F8(uint64_t a1, _BYTE *a2)
{
  v170 = a2;
  v3 = sub_2528BF290();
  v159 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v157 = &v152[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v154 = &v152[-v7];
  MEMORY[0x28223BE20](v6);
  v156 = &v152[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC220, &qword_2528D1AB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v152[-v10];
  v163 = sub_2528BF0B0();
  v12 = *(v163 - 8);
  v13 = MEMORY[0x28223BE20](v163);
  v155 = &v152[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v160 = &v152[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v161 = &v152[-v18];
  MEMORY[0x28223BE20](v17);
  v20 = &v152[-v19];
  v21 = sub_2528C09F0();
  if (*(a1 + 16))
  {
    v23 = sub_252785B30(v21, v22);
    v25 = v24;

    v26 = v170;
    if (v25)
    {
      sub_25272BF98(*(a1 + 56) + 32 * v23, &v168);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC228, &qword_2528D4320);
      sub_25272BFF4(0, &qword_27F4FC278, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v162 = v166;
        swift_willThrow();
        return;
      }
    }
  }

  else
  {

    v26 = v170;
  }

  v27 = [v26 cluster];
  [v27 unsignedIntValue];

  sub_2528BF0A0();
  v28 = v163;
  if ((*(v12 + 48))(v11, 1, v163) != 1)
  {
    (*(v12 + 32))(v20, v11, v28);
    v40 = [v26 command];
    v153 = [v40 unsignedIntValue];

    v41 = sub_2528C09F0();
    if (*(a1 + 16))
    {
      v43 = v3;
      v44 = sub_252785B30(v41, v42);
      v46 = v45;

      if (v46)
      {
        sub_25272BF98(*(a1 + 56) + 32 * v44, &v168);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC228, &qword_2528D4320);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC270, &qword_2528C3948);
        if (swift_dynamicCast())
        {
          v47 = v166;
        }

        else
        {
          v47 = 0;
        }

LABEL_19:
        v48 = v12;
        sub_25272BFF4(0, &qword_27F4FC238, 0x277CD51C8);
        v49 = sub_2528C0D20();
        if (*(a1 + 16))
        {
          v51 = sub_252785B30(v49, v50);
          v53 = v52;

          if (v53)
          {
            sub_25272BF98(*(a1 + 56) + 32 * v51, &v168);
            v54 = *(&v169 + 1) == 0;
            v55 = v163;
            if (v47)
            {
              goto LABEL_31;
            }

            goto LABEL_25;
          }
        }

        else
        {
        }

        v168 = 0u;
        v169 = 0u;
        v54 = 1;
        v55 = v163;
        if (v47)
        {
          goto LABEL_31;
        }

LABEL_25:
        if (v54)
        {
          if (qword_27F4FBB40 != -1)
          {
            swift_once();
          }

          v56 = sub_2528C08B0();
          __swift_project_value_buffer(v56, qword_27F5025C8);
          v57 = v170;

          v58 = sub_2528C0890();
          v59 = sub_2528C0D10();

          if (!os_log_type_enabled(v58, v59))
          {

LABEL_77:
            (*(v48 + 8))(v20, v55);
            goto LABEL_78;
          }

          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v62 = v20;
          v63 = swift_slowAlloc();
          *&v166 = v63;
          *v60 = 138543618;
          *(v60 + 4) = v57;
          *v61 = v57;
          *(v60 + 12) = 2080;
          v64 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC228, &qword_2528D4320);
          v65 = sub_2528C08E0();
          v67 = v48;
          v68 = sub_2527389AC(v65, v66, &v166);

          *(v60 + 14) = v68;
          _os_log_impl(&dword_252711000, v58, v59, "Response has no data. command path: (%{public}@) %s", v60, 0x16u);
          sub_2527213D8(v61, &qword_27F4FC230, &qword_2528C3928);
          MEMORY[0x2530A8D80](v61, -1, -1);
          __swift_destroy_boxed_opaque_existential_0Tm(v63);
          goto LABEL_30;
        }

LABEL_31:
        v69 = *(v12 + 16);
        v70 = v161;
        v69(v161, v20, v55);
        v71 = (*(v48 + 88))(v70, v55);
        if (v71 == *MEMORY[0x277D15548])
        {
          if (qword_27F4FBB40 != -1)
          {
            swift_once();
          }

          v72 = sub_2528C08B0();
          __swift_project_value_buffer(v72, qword_27F5025C8);
          v73 = v160;
          v69(v160, v20, v55);

          v74 = sub_2528C0890();
          v75 = v20;
          v76 = sub_2528C0D10();

          if (os_log_type_enabled(v74, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v159 = v47;
            v161 = v78;
            *&v166 = v78;
            *v77 = 136446722;
            v170 = v75;
            v79 = sub_2528BF090();
            v80 = v48;
            v82 = v81;
            v83 = *(v80 + 8);
            v83(v73, v55);
            v84 = sub_2527389AC(v79, v82, &v166);

            *(v77 + 4) = v84;
            *(v77 + 12) = 2082;
            LODWORD(v164[0]) = v153;
            type metadata accessor for MTRCommandIDType(0);
            v85 = sub_2528C0A10();
            v87 = sub_2527389AC(v85, v86, &v166);

            *(v77 + 14) = v87;
            *(v77 + 22) = 2082;
            v164[0] = v159;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC248, &qword_2528C3938);
            v88 = sub_2528C0A10();
            v90 = sub_2527389AC(v88, v89, &v166);

            *(v77 + 24) = v90;
            _os_log_impl(&dword_252711000, v74, v76, "We don't have any validation for on/off command results, allowing to proceed unchecked. clusterKind:%{public}s commandID:%{public}s: %{public}s)", v77, 0x20u);
            v91 = v161;
            swift_arrayDestroy();
            MEMORY[0x2530A8D80](v91, -1, -1);
            MEMORY[0x2530A8D80](v77, -1, -1);

            v83(v170, v163);
          }

          else
          {

            v96 = *(v48 + 8);
            v96(v73, v55);
            v96(v75, v55);
          }

          goto LABEL_78;
        }

        if (v71 == *MEMORY[0x277D15540])
        {
          v92 = sub_25272BB10(a1);
          sub_25272006C(&v168, v164, &qword_27F4FC240, &qword_2528C3930);
          v93 = v165;
          if (v165)
          {
            v94 = __swift_project_boxed_opaque_existential_0(v164, v165);
            *(&v167 + 1) = v93;
            boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v166);
            (*(*(v93 - 8) + 16))(boxed_opaque_existential_0Tm, v94, v93);
            __swift_destroy_boxed_opaque_existential_0Tm(v164);
          }

          else
          {
            sub_2527213D8(v164, &qword_27F4FC240, &qword_2528C3930);
            v166 = 0u;
            v167 = 0u;
          }

          sub_25272BFF4(0, &qword_27F4FC250, 0x277CD54B8);
          v105 = sub_25272BD9C(v92, &v166);

          sub_2527213D8(&v166, &qword_27F4FC258, &qword_2528C3940);
          if (v105)
          {

            v106 = v157;
            sub_2528BFAB0();
            v107 = v162;
            sub_2528C0470();
LABEL_70:
            v162 = v107;

            (*(v159 + 8))(v106, v43);
            goto LABEL_77;
          }

          if (qword_27F4FBB40 != -1)
          {
            swift_once();
          }

          v108 = sub_2528C08B0();
          __swift_project_value_buffer(v108, qword_27F5025C8);

          v58 = sub_2528C0890();
          v109 = sub_2528C0CF0();

          if (os_log_type_enabled(v58, v109))
          {
            v60 = swift_slowAlloc();
            v62 = v20;
            v63 = swift_slowAlloc();
            *&v166 = v63;
            *v60 = 136315394;
            LODWORD(v164[0]) = v153;
            type metadata accessor for MTRCommandIDType(0);
            v110 = sub_2528C0A10();
            v67 = v48;
            v112 = v47;
            v113 = sub_2527389AC(v110, v111, &v166);

            *(v60 + 4) = v113;
            *(v60 + 12) = 2082;
            v164[0] = v112;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC248, &qword_2528C3938);
            v114 = sub_2528C0A10();
            v116 = sub_2527389AC(v114, v115, &v166);

            *(v60 + 14) = v116;
            _os_log_impl(&dword_252711000, v58, v109, "Failed to parse response for RVCOperationalState/%s: %{public}s)", v60, 0x16u);
            swift_arrayDestroy();
LABEL_30:
            MEMORY[0x2530A8D80](v63, -1, -1);
            MEMORY[0x2530A8D80](v60, -1, -1);

            (*(v67 + 8))(v62, v163);
LABEL_78:
            sub_2527213D8(&v168, &qword_27F4FC240, &qword_2528C3930);
            return;
          }

LABEL_76:

          goto LABEL_77;
        }

        if (v71 == *MEMORY[0x277D15520])
        {
          v97 = sub_25272BB10(a1);
          sub_25272006C(&v168, v164, &qword_27F4FC240, &qword_2528C3930);
          v98 = v165;
          if (v165)
          {
            v99 = __swift_project_boxed_opaque_existential_0(v164, v165);
            *(&v167 + 1) = v98;
            v100 = __swift_allocate_boxed_opaque_existential_0Tm(&v166);
            (*(*(v98 - 8) + 16))(v100, v99, v98);
            __swift_destroy_boxed_opaque_existential_0Tm(v164);
          }

          else
          {
            sub_2527213D8(v164, &qword_27F4FC240, &qword_2528C3930);
            v166 = 0u;
            v167 = 0u;
          }

          sub_25272BFF4(0, &qword_27F4FC268, 0x277CD54C8);
          v105 = sub_25272BD9C(v97, &v166);

          sub_2527213D8(&v166, &qword_27F4FC258, &qword_2528C3940);
          if (v105)
          {

            v106 = v156;
            sub_2528BFAB0();
            v107 = v162;
            sub_2528C0480();
            goto LABEL_70;
          }

          if (qword_27F4FBB40 != -1)
          {
            swift_once();
          }

          v137 = sub_2528C08B0();
          __swift_project_value_buffer(v137, qword_27F5025C8);

          v58 = sub_2528C0890();
          v138 = sub_2528C0CF0();

          if (!os_log_type_enabled(v58, v138))
          {
            goto LABEL_76;
          }

          v139 = swift_slowAlloc();
          v140 = v20;
          v141 = swift_slowAlloc();
          *&v166 = v141;
          *v139 = 136446210;
          v164[0] = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC248, &qword_2528C3938);
          v142 = sub_2528C0A10();
          v143 = v48;
          v144 = v55;
          v146 = sub_2527389AC(v142, v145, &v166);

          *(v139 + 4) = v146;
          v147 = "Failed to parse response for RVCRunMode/ChangeToMode: %{public}s";
        }

        else
        {
          if (v71 != *MEMORY[0x277D15538])
          {
            if (qword_27F4FBB40 != -1)
            {
              swift_once();
            }

            v117 = sub_2528C08B0();
            __swift_project_value_buffer(v117, qword_27F5025C8);
            v118 = v155;
            v69(v155, v20, v55);

            v119 = sub_2528C0890();
            v120 = sub_2528C0D10();

            if (os_log_type_enabled(v119, v120))
            {
              v121 = swift_slowAlloc();
              v160 = swift_slowAlloc();
              *&v166 = v160;
              *v121 = 136446722;
              LODWORD(v159) = v120;
              v122 = sub_2528BF090();
              v158 = v119;
              v123 = v48;
              v125 = v124;
              v126 = *(v123 + 8);
              v126(v118, v55);
              v127 = sub_2527389AC(v122, v125, &v166);

              *(v121 + 4) = v127;
              *(v121 + 12) = 2082;
              LODWORD(v164[0]) = v153;
              type metadata accessor for MTRCommandIDType(0);
              v128 = sub_2528C0A10();
              v130 = sub_2527389AC(v128, v129, &v166);
              v170 = v20;
              v131 = v130;

              *(v121 + 14) = v131;
              *(v121 + 22) = 2082;
              v164[0] = v47;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC248, &qword_2528C3938);
              v132 = sub_2528C0A10();
              v134 = sub_2527389AC(v132, v133, &v166);

              *(v121 + 24) = v134;
              v135 = v158;
              _os_log_impl(&dword_252711000, v158, v159, "We don't have any validation for command results, allowing to proceed unchecked. clusterKind:%{public}s commandID:%{public}s: %{public}s)", v121, 0x20u);
              v136 = v160;
              swift_arrayDestroy();
              MEMORY[0x2530A8D80](v136, -1, -1);
              MEMORY[0x2530A8D80](v121, -1, -1);

              v126(v170, v55);
            }

            else
            {

              v126 = *(v48 + 8);
              v126(v118, v55);
              v126(v20, v55);
            }

            v126(v161, v55);
            goto LABEL_78;
          }

          v101 = sub_25272BB10(a1);
          sub_25272006C(&v168, v164, &qword_27F4FC240, &qword_2528C3930);
          v102 = v165;
          if (v165)
          {
            v103 = __swift_project_boxed_opaque_existential_0(v164, v165);
            *(&v167 + 1) = v102;
            v104 = __swift_allocate_boxed_opaque_existential_0Tm(&v166);
            (*(*(v102 - 8) + 16))(v104, v103, v102);
            __swift_destroy_boxed_opaque_existential_0Tm(v164);
          }

          else
          {
            sub_2527213D8(v164, &qword_27F4FC240, &qword_2528C3930);
            v166 = 0u;
            v167 = 0u;
          }

          sub_25272BFF4(0, &qword_27F4FC260, 0x277CD5498);
          v105 = sub_25272BD9C(v101, &v166);

          sub_2527213D8(&v166, &qword_27F4FC258, &qword_2528C3940);
          if (v105)
          {

            v106 = v154;
            sub_2528BFAB0();
            v107 = v162;
            sub_2528C0490();
            goto LABEL_70;
          }

          if (qword_27F4FBB40 != -1)
          {
            swift_once();
          }

          v148 = sub_2528C08B0();
          __swift_project_value_buffer(v148, qword_27F5025C8);

          v58 = sub_2528C0890();
          v138 = sub_2528C0CF0();

          if (!os_log_type_enabled(v58, v138))
          {
            goto LABEL_76;
          }

          v139 = swift_slowAlloc();
          v140 = v20;
          v141 = swift_slowAlloc();
          *&v166 = v141;
          *v139 = 136446210;
          v164[0] = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC248, &qword_2528C3938);
          v149 = sub_2528C0A10();
          v143 = v48;
          v144 = v55;
          v151 = sub_2527389AC(v149, v150, &v166);

          *(v139 + 4) = v151;
          v147 = "Failed to parse response for RVCCleanMode/ChangeToMode: %{public}s";
        }

        _os_log_impl(&dword_252711000, v58, v138, v147, v139, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v141);
        MEMORY[0x2530A8D80](v141, -1, -1);
        MEMORY[0x2530A8D80](v139, -1, -1);

        (*(v143 + 8))(v140, v144);
        goto LABEL_78;
      }
    }

    else
    {
      v43 = v3;
    }

    v47 = 0;
    goto LABEL_19;
  }

  sub_2527213D8(v11, &qword_27F4FC220, &qword_2528D1AB0);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v29 = sub_2528C08B0();
  __swift_project_value_buffer(v29, qword_27F5025C8);
  v30 = v170;

  v31 = sub_2528C0890();
  v32 = sub_2528C0CF0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v168 = v35;
    *v33 = 136315650;
    *(v33 + 4) = sub_2527389AC(0xD000000000000034, 0x80000002528E54F0, &v168);
    *(v33 + 12) = 2114;
    v36 = [v30 cluster];
    *(v33 + 14) = v36;
    *v34 = v36;
    *(v33 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC228, &qword_2528D4320);
    v37 = sub_2528C08E0();
    v39 = sub_2527389AC(v37, v38, &v168);

    *(v33 + 24) = v39;
    _os_log_impl(&dword_252711000, v31, v32, "%s: Unknown cluster ID %{public}@ in result %s", v33, 0x20u);
    sub_2527213D8(v34, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v34, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v35, -1, -1);
    MEMORY[0x2530A8D80](v33, -1, -1);
  }
}

unint64_t sub_25272BB10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC280, &unk_2528CE050);
    v2 = sub_2528C0F20();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_2528BEA50();

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_25272BF98(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        sub_252712E3C(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC228, &qword_2528D4320);
        swift_dynamicCast();
        sub_252712E3C(&v23, v25);
        sub_252712E3C(v25, v26);
        sub_252712E3C(v26, &v24);
        result = sub_252785B30(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0Tm(v10);
          result = sub_252712E3C(&v24, v10);
          v8 = v11;
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
          *(v2[6] + 16 * result) = v17;
          result = sub_252712E3C(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
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

id sub_25272BD9C(uint64_t a1, uint64_t a2)
{
  sub_25272006C(a2, v7, &qword_27F4FC258, &qword_2528C3940);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_2527213D8(v7, &qword_27F4FC258, &qword_2528C3940);
  }

  if (!a1)
  {
    return 0;
  }

  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return sub_25272BE6C(v5);
}

id sub_25272BE6C(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2528C08C0();

  v7[0] = 0;
  v3 = [v1 initWithResponseValue:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_2528BEC10();

    swift_willThrow();
  }

  return v3;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25272BF98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25272BFF4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25272C03C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC288, &qword_2528C3950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

void sub_25272C15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 0xFE) == 0x62)
  {
  }
}

unint64_t sub_25272C1A8()
{
  result = qword_27F4FC2B8;
  if (!qword_27F4FC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC2B8);
  }

  return result;
}

uint64_t sub_25272C1FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25272C244()
{
  result = qword_27F4FC2D0;
  if (!qword_27F4FC2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC2D0);
  }

  return result;
}

unint64_t sub_25272C2A4()
{
  result = qword_27F4FC2D8;
  if (!qword_27F4FC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC2D8);
  }

  return result;
}

uint64_t sub_25272C2F8(uint64_t a1)
{
  v3 = sub_2528BEC40();
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_25282EF84(0, v5, 0);
    v36 = v39;
    v7 = a1 + 64;
    v8 = sub_2528C0E00();
    v37 = *(a1 + 36);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3C8, &qword_2528C3EE0);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3D0, &qword_2528C3EE8);
    v9 = 0;
    v32 = "SupportedAttributes";
    v33 = result;
    v28 = a1 + 72;
    v29 = v5;
    v30 = a1 + 64;
    v31 = a1;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      if (v37 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v12 = *(*(a1 + 48) + v8);
      v13 = *(*(a1 + 56) + 8 * v8);

      sub_2528BEC20();
      sub_25272E944();
      v14 = sub_2528BE6E0();
      sub_2528BEA50();
      sub_2528BEC20();
      sub_25272E998();
      v15 = sub_2528BE700();
      LOBYTE(v38) = v12;
      sub_2528BEA50();
      sub_2528BE6C0();
      v38 = v13;
      sub_2528BE6C0();

      v16 = v36;
      v39 = v36;
      v18 = *(v36 + 16);
      v17 = *(v36 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_25282EF84((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v15;
      a1 = v31;
      v10 = 1 << *(v31 + 32);
      if (v8 >= v10)
      {
        goto LABEL_25;
      }

      v7 = v30;
      v20 = *(v30 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      v36 = v16;
      if (v37 != *(v31 + 36))
      {
        goto LABEL_27;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_25271A63C(v8, v37, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_25271A63C(v8, v37, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v36;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_25272C67C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_2528BEC40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = type metadata accessor for DeviceEntity(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2528C09B0();
  MEMORY[0x28223BE20](v11 - 8);
  sub_2528C09A0();
  sub_2528C0990();
  sub_2528BE6B0();
  sub_2528BE6B0();
  sub_25272E840(v10);
  sub_2528C0970();

  sub_2528C0990();
  sub_2528BEC30();
  (*(v7 + 56))(v5, 1, 1, v6);
  v12 = sub_2528BE8D0();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  return sub_2528BE900();
}

uint64_t sub_25272C958()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F5027F8);
  __swift_project_value_buffer(v0, qword_27F5027F8);
  return sub_2528BE9D0();
}

uint64_t sub_25272C9BC()
{
  v0 = type metadata accessor for DeviceEntity(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2528BE6B0();
  sub_2528BE6B0();
  v3 = v12;
  v4 = v13;
  sub_25272E840(v2);
  v12 = v3;
  v13 = v4;
  MEMORY[0x2530A80B0](2108704, 0xE300000000000000);
  sub_2528BE6B0();
  sub_2528BE6B0();
  sub_25272E840(v2);
  v11 = v10;
  v5 = DeviceType.description.getter();
  MEMORY[0x2530A80B0](v5);

  MEMORY[0x2530A80B0](8250, 0xE200000000000000);
  sub_2528BE6B0();
  v6 = MEMORY[0x2530A81A0](v10, &type metadata for SupportedAttributeInfo);
  v8 = v7;

  MEMORY[0x2530A80B0](v6, v8);

  return v12;
}

uint64_t sub_25272CB14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25272E2C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_25272CB48()
{
  result = qword_27F4FC2E0;
  if (!qword_27F4FC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC2E0);
  }

  return result;
}

unint64_t sub_25272CBA0()
{
  result = qword_27F4FC2E8;
  if (!qword_27F4FC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC2E8);
  }

  return result;
}

unint64_t sub_25272CBF8()
{
  result = qword_27F4FC2F0;
  if (!qword_27F4FC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC2F0);
  }

  return result;
}

uint64_t sub_25272CC90(uint64_t a1)
{
  v2 = sub_25272EA94();

  return MEMORY[0x28210B2E8](a1, v2);
}

unint64_t sub_25272CCE0()
{
  result = qword_27F4FC308;
  if (!qword_27F4FC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC308);
  }

  return result;
}

unint64_t sub_25272CD34()
{
  result = qword_27F4FC310;
  if (!qword_27F4FC310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC310);
  }

  return result;
}

unint64_t sub_25272CD88()
{
  result = qword_27F4FC318;
  if (!qword_27F4FC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC318);
  }

  return result;
}

unint64_t sub_25272CDE0()
{
  result = qword_27F4FC320;
  if (!qword_27F4FC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC320);
  }

  return result;
}

uint64_t sub_25272CE34(uint64_t a1)
{
  sub_25272EA94();

  return sub_2528BE550();
}

uint64_t sub_25272CEE8(uint64_t a1)
{
  v2 = sub_25272C2A4();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_25272CF38()
{
  result = qword_27F4FC338;
  if (!qword_27F4FC338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC338);
  }

  return result;
}

uint64_t sub_25272CF94(uint64_t a1)
{
  v2 = sub_25272CDE0();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_25272CFE4()
{
  result = qword_27F4FC340;
  if (!qword_27F4FC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC340);
  }

  return result;
}

uint64_t sub_25272D038()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-v4];
  v6 = sub_2528BEC40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2528C09B0();
  MEMORY[0x28223BE20](v8 - 8);
  sub_2528C09A0();
  sub_2528C0990();
  sub_2528BE6B0();
  v11[14] = v11[15];
  sub_25272E9EC();
  sub_2528C0980();
  sub_2528C0990();
  sub_2528BEC30();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_2528BE8D0();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_2528BE900();
}

uint64_t sub_25272D2C4()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502810);
  __swift_project_value_buffer(v0, qword_27F502810);
  return sub_2528BE9D0();
}

uint64_t sub_25272D328()
{
  sub_2528BE6B0();
  sub_2528C0ED0();
  MEMORY[0x2530A80B0](8250, 0xE200000000000000);
  sub_2528BE6B0();
  v0 = MEMORY[0x2530A81A0](v4, &type metadata for PossibleValuesForAttribute);
  v2 = v1;

  MEMORY[0x2530A80B0](v0, v2);

  return 0;
}

uint64_t sub_25272D3F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25272E4C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_25272D428()
{
  result = qword_27F4FC348;
  if (!qword_27F4FC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC348);
  }

  return result;
}

unint64_t sub_25272D480()
{
  result = qword_27F4FC350;
  if (!qword_27F4FC350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC350);
  }

  return result;
}

unint64_t sub_25272D4D8()
{
  result = qword_27F4FC358;
  if (!qword_27F4FC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC358);
  }

  return result;
}

uint64_t sub_25272D570(uint64_t a1)
{
  v2 = sub_25272EA40();

  return MEMORY[0x28210B2E8](a1, v2);
}

unint64_t sub_25272D5C0()
{
  result = qword_27F4FC370;
  if (!qword_27F4FC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC370);
  }

  return result;
}

unint64_t sub_25272D614()
{
  result = qword_27F4FC378;
  if (!qword_27F4FC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC378);
  }

  return result;
}

unint64_t sub_25272D668()
{
  result = qword_27F4FC380;
  if (!qword_27F4FC380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC380);
  }

  return result;
}

unint64_t sub_25272D6C0()
{
  result = qword_27F4FC388;
  if (!qword_27F4FC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC388);
  }

  return result;
}

uint64_t sub_25272D714(uint64_t a1)
{
  sub_25272EA40();

  return sub_2528BE550();
}

uint64_t sub_25272D7C8(uint64_t a1)
{
  v2 = sub_25272CFE4();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_25272D818()
{
  result = qword_27F4FC3A0;
  if (!qword_27F4FC3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC3A0);
  }

  return result;
}

uint64_t sub_25272D874(uint64_t a1)
{
  v2 = sub_25272D6C0();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25272D8E0(char **a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DeviceEntity(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 16) && (v11 = sub_252785BD4(a2), (v12 & 1) != 0))
  {
    v13 = *(*(a3 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v14 = sub_25278CDB8(MEMORY[0x277D84F90]);
  v61 = v14;
  v58 = v13[2];
  if (!v58)
  {
    v42 = v14;

LABEL_33:
    v43 = sub_25272C2F8(v42);
    sub_25272E7DC(a2, v10);
    v4 = sub_25272E0B0(v10, v43);
    a2 = v44;
    v10 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  v51 = v10;
  v52 = v3;
  v53 = a2;
  v54 = a1;
  v15 = 0;
  v16 = (v13 + 8);
  v57 = xmmword_2528C3910;
  a1 = v13;
  v55 = v13;
  while (v15 < a1[2])
  {
    v10 = *(v16 - 4);
    v4 = *(v16 - 3);
    v17 = *(v16 - 2);
    a2 = *(v16 - 1);
    v18 = v61;
    v19 = v61[2];
    v59 = *v16;
    sub_25272E89C(v10, v4, v17, a2, v59);
    if (v19)
    {
      sub_252785BA8(45);
      if (v20)
      {
        v56 = sub_25272DD50(v60, 45);
        v22 = *v21;
        if (*v21)
        {
          v23 = v21;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v23 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = sub_252737A78(0, *(v22 + 2) + 1, 1, v22);
            *v23 = v22;
          }

          v26 = *(v22 + 2);
          v25 = *(v22 + 3);
          v27 = v26 + 1;
          if (v26 >= v25 >> 1)
          {
            v50 = v26 + 1;
            v41 = sub_252737A78((v25 > 1), v26 + 1, 1, v22);
            v27 = v50;
            v22 = v41;
            *v23 = v41;
          }

          *(v22 + 2) = v27;
          v28 = &v22[40 * v26];
          *(v28 + 4) = v10;
          *(v28 + 5) = v4;
          *(v28 + 6) = v17;
          *(v28 + 7) = a2;
          v28[64] = v59;
        }

        else
        {
          sub_25272E8CC(v10, v4, v17, a2, v59);
        }

        (v56)(v60, 0);
        a1 = v55;
        goto LABEL_9;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3A8, &qword_2528D3CD0);
    v29 = swift_allocObject();
    *(v29 + 16) = v57;
    *(v29 + 32) = v10;
    *(v29 + 40) = v4;
    *(v29 + 48) = v17;
    *(v29 + 56) = a2;
    *(v29 + 64) = v59;
    v4 = swift_isUniquelyReferenced_nonNull_native();
    v60[0] = v18;
    v30 = sub_252785BA8(45);
    v32 = v18[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_38;
    }

    v36 = v31;
    if (v18[3] < v35)
    {
      sub_2527DCFD8(v35, v4);
      v30 = sub_252785BA8(45);
      if ((v36 & 1) != (v37 & 1))
      {
        result = sub_2528C10A0();
        __break(1u);
        return result;
      }

LABEL_24:
      v38 = v60[0];
      if ((v36 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      goto LABEL_24;
    }

    v4 = v30;
    sub_2527E08F0();
    v30 = v4;
    v38 = v60[0];
    if ((v36 & 1) == 0)
    {
LABEL_25:
      v38[(v30 >> 6) + 8] |= 1 << v30;
      *(v38[6] + v30) = 45;
      *(v38[7] + 8 * v30) = v29;
      v39 = v38[2];
      v34 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v34)
      {
        goto LABEL_39;
      }

      v38[2] = v40;
      goto LABEL_8;
    }

LABEL_7:
    *(v38[7] + 8 * v30) = v29;

LABEL_8:
    v61 = v38;
LABEL_9:
    ++v15;
    v16 += 40;
    if (v58 == v15)
    {

      v42 = v61;
      a2 = v53;
      a1 = v54;
      v10 = v51;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  v10 = sub_252737A5C(0, *(v10 + 2) + 1, 1, v10);
LABEL_34:
  v46 = *(v10 + 2);
  v45 = *(v10 + 3);
  if (v46 >= v45 >> 1)
  {
    v10 = sub_252737A5C((v45 > 1), v46 + 1, 1, v10);
  }

  *(v10 + 2) = v46 + 1;
  v47 = &v10[16 * v46];
  *(v47 + 4) = v4;
  *(v47 + 5) = a2;

  *a1 = v10;
  return result;
}

uint64_t (*sub_25272DD50(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_25272DE14(v4, a2);
  return sub_25272DDC8;
}

void sub_25272DDC8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void (*sub_25272DE14(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_25272E07C(v5);
  v5[9] = sub_25272DF18((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_25272DEB8;
}

void sub_25272DEB8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

unint64_t (*sub_25272DF18(uint64_t a1, uint64_t a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_252785BA8(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_2527E08F0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_2527DCFD8(v14, a3 & 1);
    v9 = sub_252785BA8(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_2528C10A0();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_25272E034;
}

unint64_t sub_25272E034(unint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_25278B5E8(*(result + 16), *(result + 24), v1, v2);
    }
  }

  else if (*(result + 25))
  {
    return sub_25284602C(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_25272E07C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25272E0A4;
}

uint64_t sub_25272E0B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceEntity(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v10 = sub_2528BEC40();
  MEMORY[0x28223BE20](v10 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3B0, &qword_2528C3ED0);
  sub_2528BEC20();
  sub_25272E8FC(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  v11 = sub_2528BE6F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3C0, &qword_2528C3ED8);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_25272CFE4();
  sub_2528BE6F0();
  sub_25272E7DC(a1, v9);
  sub_25272E7DC(v9, v7);
  sub_2528BEA50();
  sub_2528BE6C0();
  sub_25272E840(v9);
  v13[1] = a2;
  sub_2528BE6C0();
  sub_25272E840(a1);

  return v11;
}

uint64_t sub_25272E2C8()
{
  v0 = type metadata accessor for DeviceEntity(0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = (v9 - v4);
  v6 = sub_2528BEC40();
  MEMORY[0x28223BE20](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3B0, &qword_2528C3ED0);
  sub_2528BEC20();
  sub_25272E8FC(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  v7 = sub_2528BE6F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3C0, &qword_2528C3ED8);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_25272CFE4();
  sub_2528BE6F0();
  sub_2528BEA50();
  sub_252826AC0(v5);
  sub_25272E7DC(v5, v3);
  sub_2528BE6C0();
  sub_25272E840(v5);
  v9[1] = MEMORY[0x277D84F90];
  sub_2528BE6C0();

  return v7;
}